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

-- DATE "12/02/2025 19:31:30"

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
-- Y[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Shift|ra4[62]~0_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~8_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Shift|rl2[37]~39_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Shift|rl2[36]~40_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~5_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Shift|rl2[32]~37_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Shift|rl2[33]~36_combout\ : std_logic;
SIGNAL \Shift|rl2[32]~38_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Shift|rl2[40]~34_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Shift|rl2[41]~33_combout\ : std_logic;
SIGNAL \Shift|rl2[40]~35_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~4_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Shift|rl2[44]~42_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Shift|rl2[44]~41_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~7_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Shift|rl2[52]~23_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Shift|rl2[53]~22_combout\ : std_logic;
SIGNAL \Shift|rl2[52]~24_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Shift|rl2[48]~26_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Shift|rl2[49]~25_combout\ : std_logic;
SIGNAL \Shift|rl2[48]~27_combout\ : std_logic;
SIGNAL \Shift|rl4[48]~2_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Shift|rl2[60]~28_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Shift|rl1[62]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[60]~29_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Shift|rl2[56]~31_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Shift|rl2[57]~30_combout\ : std_logic;
SIGNAL \Shift|rl2[56]~32_combout\ : std_logic;
SIGNAL \Shift|rl3[56]~2_combout\ : std_logic;
SIGNAL \Shift|rl4[48]~3_combout\ : std_logic;
SIGNAL \Shift|rl5[32]~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Shift|rl2[28]~11_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Shift|rl2[29]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~12_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Shift|rl2[24]~14_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Shift|rl2[25]~13_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~15_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Shift|rl2[21]~16_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Shift|rl2[20]~17_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~18_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Shift|rl2[16]~20_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Shift|rl2[17]~19_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~21_combout\ : std_logic;
SIGNAL \Shift|rl3[16]~1_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~1_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|rl2[12]~5_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Shift|rl2[13]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Shift|rl2[8]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Shift|rl2[9]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~9_combout\ : std_logic;
SIGNAL \Shift|rl3[8]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|rl1[4]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Shift|rl2[4]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Shift|rl1[2]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~9_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
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
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add|C[32]~31_combout\ : std_logic;
SIGNAL \Add|C[33]~32_combout\ : std_logic;
SIGNAL \Add|C[34]~33_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Add|C[35]~34_combout\ : std_logic;
SIGNAL \Add|C[36]~35_combout\ : std_logic;
SIGNAL \Add|C[37]~36_combout\ : std_logic;
SIGNAL \Add|C[38]~37_combout\ : std_logic;
SIGNAL \Add|C[39]~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \Add|C[40]~39_combout\ : std_logic;
SIGNAL \Add|C[41]~40_combout\ : std_logic;
SIGNAL \Add|C[42]~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \Add|C[43]~42_combout\ : std_logic;
SIGNAL \Add|C[44]~43_combout\ : std_logic;
SIGNAL \Add|C[45]~44_combout\ : std_logic;
SIGNAL \Add|C[46]~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Add|C[47]~46_combout\ : std_logic;
SIGNAL \Add|C[48]~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Add|C[49]~48_combout\ : std_logic;
SIGNAL \Add|C[50]~49_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Add|C[51]~50_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Add|C[52]~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Add|C[53]~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Add|C[54]~53_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Add|C[55]~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Add|C[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Add|C[57]~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Add|C[58]~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Add|C[59]~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Add|C[60]~59_combout\ : std_logic;
SIGNAL \Add|C[61]~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \Add|C[62]~61_combout\ : std_logic;
SIGNAL \Add|C[63]~62_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Logic|Mux62~0_combout\ : std_logic;
SIGNAL \Shift|rl2[30]~64_combout\ : std_logic;
SIGNAL \Shift|rl2[29]~65_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~66_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~67_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~11_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~68_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~69_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~70_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~71_combout\ : std_logic;
SIGNAL \Shift|rl3[17]~4_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[34]~62_combout\ : std_logic;
SIGNAL \Shift|rl2[33]~63_combout\ : std_logic;
SIGNAL \Shift|rl2[41]~60_combout\ : std_logic;
SIGNAL \Shift|rl2[42]~61_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~9_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[38]~58_combout\ : std_logic;
SIGNAL \Shift|rl2[37]~59_combout\ : std_logic;
SIGNAL \Shift|rl2[45]~56_combout\ : std_logic;
SIGNAL \Shift|rl2[46]~55_combout\ : std_logic;
SIGNAL \Shift|rl2[45]~57_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~53_combout\ : std_logic;
SIGNAL \Y_R[1]~19_combout\ : std_logic;
SIGNAL \Shift|rl2[61]~54_combout\ : std_logic;
SIGNAL \Y_R[1]~21_combout\ : std_logic;
SIGNAL \Y_R[1]~20_combout\ : std_logic;
SIGNAL \Y_R[1]~22_combout\ : std_logic;
SIGNAL \Shift|rl2[54]~49_combout\ : std_logic;
SIGNAL \Shift|rl2[53]~50_combout\ : std_logic;
SIGNAL \Shift|rl2[49]~52_combout\ : std_logic;
SIGNAL \Shift|rl2[49]~51_combout\ : std_logic;
SIGNAL \Y_R[1]~18_combout\ : std_logic;
SIGNAL \Y_R[1]~23_combout\ : std_logic;
SIGNAL \Y_R[1]~24_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~17_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~47_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~48_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~45_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~46_combout\ : std_logic;
SIGNAL \Shift|rl3[9]~3_combout\ : std_logic;
SIGNAL \Shift|rl1[3]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~13_combout\ : std_logic;
SIGNAL \Shift|rl1[5]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~43_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~44_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll1[1]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~27_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~11_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~16_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Add|S[2]~0_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~83_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~84_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~85_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~86_combout\ : std_logic;
SIGNAL \Shift|rl3[18]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[31]~79_combout\ : std_logic;
SIGNAL \Shift|rl2[30]~80_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~81_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~82_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~13_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~14_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~73_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~72_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~74_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~75_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~76_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~77_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~78_combout\ : std_logic;
SIGNAL \Shift|rl3[10]~5_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~1_combout\ : std_logic;
SIGNAL \Shift|ll5[2]~37_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~100_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~101_combout\ : std_logic;
SIGNAL \Y_R[1]~26_combout\ : std_logic;
SIGNAL \Y_R[1]~27_combout\ : std_logic;
SIGNAL \Y_R[1]~28_combout\ : std_logic;
SIGNAL \Shift|rl2[50]~98_combout\ : std_logic;
SIGNAL \Shift|rl2[51]~97_combout\ : std_logic;
SIGNAL \Shift|rl2[50]~99_combout\ : std_logic;
SIGNAL \Shift|rl2[55]~95_combout\ : std_logic;
SIGNAL \Shift|rl2[54]~96_combout\ : std_logic;
SIGNAL \Y_R[1]~25_combout\ : std_logic;
SIGNAL \Shift|rl2[35]~93_combout\ : std_logic;
SIGNAL \Shift|rl2[34]~94_combout\ : std_logic;
SIGNAL \Shift|rl2[43]~91_combout\ : std_logic;
SIGNAL \Shift|rl2[42]~92_combout\ : std_logic;
SIGNAL \Shift|rl4[34]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[47]~87_combout\ : std_logic;
SIGNAL \Shift|rl2[46]~88_combout\ : std_logic;
SIGNAL \Shift|rl2[39]~89_combout\ : std_logic;
SIGNAL \Shift|rl2[38]~90_combout\ : std_logic;
SIGNAL \Shift|rl4[38]~15_combout\ : std_logic;
SIGNAL \Shift|rl4[34]~17_combout\ : std_logic;
SIGNAL \Y_R[1]~29_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~107_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~108_combout\ : std_logic;
SIGNAL \Shift|rl3[19]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[31]~105_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~106_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~18_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~19_combout\ : std_logic;
SIGNAL \Shift|rl2[35]~117_combout\ : std_logic;
SIGNAL \Shift|rl2[44]~115_combout\ : std_logic;
SIGNAL \Shift|rl2[43]~116_combout\ : std_logic;
SIGNAL \Shift|rl4[35]~21_combout\ : std_logic;
SIGNAL \Shift|rl2[39]~114_combout\ : std_logic;
SIGNAL \Shift|rl2[47]~113_combout\ : std_logic;
SIGNAL \Shift|rl4[39]~20_combout\ : std_logic;
SIGNAL \Shift|rl4[35]~22_combout\ : std_logic;
SIGNAL \Y_R[1]~31_combout\ : std_logic;
SIGNAL \Shift|rl1[61]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[59]~111_combout\ : std_logic;
SIGNAL \Shift|rl2[59]~112_combout\ : std_logic;
SIGNAL \Y_R[1]~32_combout\ : std_logic;
SIGNAL \Shift|rl2[51]~110_combout\ : std_logic;
SIGNAL \Shift|rl2[55]~109_combout\ : std_logic;
SIGNAL \Y_R[1]~30_combout\ : std_logic;
SIGNAL \Y_R[1]~33_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~3_combout\ : std_logic;
SIGNAL \Shift|ll5[3]~38_combout\ : std_logic;
SIGNAL \Mux60~8_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~102_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~103_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~104_combout\ : std_logic;
SIGNAL \Shift|rl3[11]~7_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Mux60~9_combout\ : std_logic;
SIGNAL \Add|S[3]~1_combout\ : std_logic;
SIGNAL \Mux60~10_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Mux60~11_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~6_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~7_combout\ : std_logic;
SIGNAL \Shift|ll3[4]~0_combout\ : std_logic;
SIGNAL \Shift|ll5[4]~39_combout\ : std_logic;
SIGNAL \Mux59~5_combout\ : std_logic;
SIGNAL \Mux59~6_combout\ : std_logic;
SIGNAL \Add|S[4]~2_combout\ : std_logic;
SIGNAL \Mux59~7_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Shift|rl3[12]~9_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~23_combout\ : std_logic;
SIGNAL \Shift|rl3[20]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~24_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Shift|rl4[40]~25_combout\ : std_logic;
SIGNAL \Shift|rl2[36]~119_combout\ : std_logic;
SIGNAL \Shift|rl2[44]~118_combout\ : std_logic;
SIGNAL \Shift|rl4[36]~26_combout\ : std_logic;
SIGNAL \Shift|rl4[36]~27_combout\ : std_logic;
SIGNAL \Y_R[1]~34_combout\ : std_logic;
SIGNAL \Y_R[1]~35_combout\ : std_logic;
SIGNAL \Y_R[1]~36_combout\ : std_logic;
SIGNAL \Y_R[1]~37_combout\ : std_logic;
SIGNAL \Mux59~8_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~9_combout\ : std_logic;
SIGNAL \Shift|rl3[13]~11_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~28_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~12_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~29_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Shift|rl2[41]~122_combout\ : std_logic;
SIGNAL \Shift|rl2[49]~121_combout\ : std_logic;
SIGNAL \Shift|rl4[41]~30_combout\ : std_logic;
SIGNAL \Shift|rl4[37]~31_combout\ : std_logic;
SIGNAL \Shift|rl4[37]~32_combout\ : std_logic;
SIGNAL \Shift|rl2[57]~120_combout\ : std_logic;
SIGNAL \Y_R[1]~38_combout\ : std_logic;
SIGNAL \Shift|ra3[61]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[61]~123_combout\ : std_logic;
SIGNAL \Y_R[1]~39_combout\ : std_logic;
SIGNAL \Y_R[1]~40_combout\ : std_logic;
SIGNAL \Y_R[1]~41_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~8_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~9_combout\ : std_logic;
SIGNAL \Shift|ll3[5]~1_combout\ : std_logic;
SIGNAL \Shift|ll5[5]~40_combout\ : std_logic;
SIGNAL \Add|S[5]~3_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Shift|rl3[14]~13_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~33_combout\ : std_logic;
SIGNAL \Shift|rl3[22]~14_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~34_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~10_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~11_combout\ : std_logic;
SIGNAL \Shift|ll5[6]~8_combout\ : std_logic;
SIGNAL \Add|S[6]~4_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Y_R[1]~43_combout\ : std_logic;
SIGNAL \Shift|ll3[0]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~44_combout\ : std_logic;
SIGNAL \Y_R[1]~42_combout\ : std_logic;
SIGNAL \Y_R[1]~45_combout\ : std_logic;
SIGNAL \Shift|rl4[42]~35_combout\ : std_logic;
SIGNAL \Shift|rl4[38]~36_combout\ : std_logic;
SIGNAL \Y_R[1]~46_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Shift|rl3[15]~15_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Shift|rl3[23]~16_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~37_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~38_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Shift|rl4[43]~39_combout\ : std_logic;
SIGNAL \Shift|rl4[39]~40_combout\ : std_logic;
SIGNAL \Y_R[1]~47_combout\ : std_logic;
SIGNAL \Y_R[1]~48_combout\ : std_logic;
SIGNAL \Y_R[1]~49_combout\ : std_logic;
SIGNAL \Y_R[1]~50_combout\ : std_logic;
SIGNAL \Add|S[7]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~12_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~13_combout\ : std_logic;
SIGNAL \Shift|ll5[7]~9_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Add|S[8]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~42_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~41_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~43_combout\ : std_logic;
SIGNAL \Y_R[1]~51_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~44_combout\ : std_logic;
SIGNAL \Shift|rl4[40]~45_combout\ : std_logic;
SIGNAL \Y_R[1]~52_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~14_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~2_combout\ : std_logic;
SIGNAL \Shift|ll5[8]~10_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~46_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~47_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~48_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Y_R[1]~54_combout\ : std_logic;
SIGNAL \Shift|ra3[57]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~53_combout\ : std_logic;
SIGNAL \Y_R[1]~55_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~49_combout\ : std_logic;
SIGNAL \Shift|rl4[41]~50_combout\ : std_logic;
SIGNAL \Y_R[1]~56_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Mux54~7_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~16_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~17_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~4_combout\ : std_logic;
SIGNAL \Shift|ll5[9]~11_combout\ : std_logic;
SIGNAL \Add|S[9]~7_combout\ : std_logic;
SIGNAL \Mux54~8_combout\ : std_logic;
SIGNAL \Mux54~9_combout\ : std_logic;
SIGNAL \Add|S[10]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~54_combout\ : std_logic;
SIGNAL \Shift|rl4[42]~55_combout\ : std_logic;
SIGNAL \Y_R[1]~58_combout\ : std_logic;
SIGNAL \Shift|ra3[58]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~57_combout\ : std_logic;
SIGNAL \Y_R[1]~59_combout\ : std_logic;
SIGNAL \Y_R[1]~60_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~52_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~51_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~53_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~18_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~19_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~5_combout\ : std_logic;
SIGNAL \Shift|ll5[10]~12_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux53~5_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~7_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~20_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~21_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~8_combout\ : std_logic;
SIGNAL \Shift|ll5[11]~13_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~56_combout\ : std_logic;
SIGNAL \Shift|rl4[31]~57_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~58_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~60_combout\ : std_logic;
SIGNAL \Shift|rl4[43]~61_combout\ : std_logic;
SIGNAL \Y_R[1]~61_combout\ : std_logic;
SIGNAL \Shift|rl4[59]~59_combout\ : std_logic;
SIGNAL \Y_R[1]~62_combout\ : std_logic;
SIGNAL \Y_R[1]~63_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Add|S[11]~9_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Add|S[12]~10_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~22_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~23_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~9_combout\ : std_logic;
SIGNAL \Shift|ll5[12]~14_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~63_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~64_combout\ : std_logic;
SIGNAL \Y_R[1]~64_combout\ : std_logic;
SIGNAL \Y_R[1]~65_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~62_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \Add|S[13]~11_combout\ : std_logic;
SIGNAL \Y_R[1]~66_combout\ : std_logic;
SIGNAL \Y_R[1]~67_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~67_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~68_combout\ : std_logic;
SIGNAL \Y_R[1]~68_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~65_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~66_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~24_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~25_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~10_combout\ : std_logic;
SIGNAL \Shift|ll5[13]~15_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~26_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~27_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~11_combout\ : std_logic;
SIGNAL \Shift|ll3[6]~3_combout\ : std_logic;
SIGNAL \Shift|ll5[14]~16_combout\ : std_logic;
SIGNAL \Add|S[14]~12_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~69_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~70_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~71_combout\ : std_logic;
SIGNAL \Shift|ra4[62]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~69_combout\ : std_logic;
SIGNAL \Y_R[1]~70_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Add|S[15]~13_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Shift|rl4[31]~72_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~73_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~74_combout\ : std_logic;
SIGNAL \Y_R[1]~71_combout\ : std_logic;
SIGNAL \Y_R[1]~72_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~28_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~29_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~12_combout\ : std_logic;
SIGNAL \Shift|ll3[7]~4_combout\ : std_logic;
SIGNAL \Shift|ll5[15]~17_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \Y_R[1]~82_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~30_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~31_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~14_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~15_combout\ : std_logic;
SIGNAL \Shift|ll5[16]~18_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Add|S[16]~14_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~4_combout\ : std_logic;
SIGNAL \Y_R[1]~73_combout\ : std_logic;
SIGNAL \Y_R[1]~74_combout\ : std_logic;
SIGNAL \Y_R[1]~75_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~32_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~33_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~17_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~16_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~18_combout\ : std_logic;
SIGNAL \Shift|ll5[17]~19_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~75_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Add|S[17]~15_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~34_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~35_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~20_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~19_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~21_combout\ : std_logic;
SIGNAL \Shift|ll5[18]~20_combout\ : std_logic;
SIGNAL \Y_R[1]~76_combout\ : std_logic;
SIGNAL \Y_R[1]~77_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Add|S[18]~16_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Y_R[1]~78_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~22_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~36_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~37_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~23_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~24_combout\ : std_logic;
SIGNAL \Shift|ll5[19]~21_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Add|S[19]~17_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Y_R[1]~79_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~38_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[20]~25_combout\ : std_logic;
SIGNAL \Shift|ll4[20]~26_combout\ : std_logic;
SIGNAL \Shift|ll5[20]~22_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Add|S[20]~18_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~40_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[21]~27_combout\ : std_logic;
SIGNAL \Shift|ll4[21]~28_combout\ : std_logic;
SIGNAL \Shift|ll5[21]~23_combout\ : std_logic;
SIGNAL \Y_R[1]~83_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Add|S[21]~19_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~42_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~43_combout\ : std_logic;
SIGNAL \Shift|ll4[22]~29_combout\ : std_logic;
SIGNAL \Shift|ll4[22]~30_combout\ : std_logic;
SIGNAL \Shift|ll5[22]~24_combout\ : std_logic;
SIGNAL \Y_R[1]~84_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Add|S[22]~20_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Add|S[23]~21_combout\ : std_logic;
SIGNAL \Y_R[1]~85_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~44_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~45_combout\ : std_logic;
SIGNAL \Shift|ll4[23]~31_combout\ : std_logic;
SIGNAL \Shift|ll4[23]~32_combout\ : std_logic;
SIGNAL \Shift|ll5[23]~25_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~46_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~47_combout\ : std_logic;
SIGNAL \Shift|ll4[24]~33_combout\ : std_logic;
SIGNAL \Shift|ll4[24]~34_combout\ : std_logic;
SIGNAL \Shift|ll5[24]~26_combout\ : std_logic;
SIGNAL \Y_R[1]~80_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Add|S[24]~22_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Y_R[1]~86_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~48_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~49_combout\ : std_logic;
SIGNAL \Shift|ll4[25]~35_combout\ : std_logic;
SIGNAL \Shift|ll4[25]~36_combout\ : std_logic;
SIGNAL \Shift|ll5[25]~27_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Add|S[25]~23_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Add|S[26]~24_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~50_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~51_combout\ : std_logic;
SIGNAL \Shift|ll4[26]~37_combout\ : std_logic;
SIGNAL \Shift|ll4[26]~38_combout\ : std_logic;
SIGNAL \Shift|ll5[26]~28_combout\ : std_logic;
SIGNAL \Y_R[1]~87_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Shift|ll2[28]~52_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~53_combout\ : std_logic;
SIGNAL \Shift|ll4[27]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[27]~40_combout\ : std_logic;
SIGNAL \Shift|ll5[27]~29_combout\ : std_logic;
SIGNAL \Y_R[1]~88_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Add|S[27]~25_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Shift|ll5[28]~30_combout\ : std_logic;
SIGNAL \Shift|ll2[29]~54_combout\ : std_logic;
SIGNAL \Shift|ll2[28]~55_combout\ : std_logic;
SIGNAL \Shift|ll4[28]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[28]~42_combout\ : std_logic;
SIGNAL \Shift|ll5[28]~31_combout\ : std_logic;
SIGNAL \Y_R[1]~81_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Add|S[28]~26_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Y_R[1]~89_combout\ : std_logic;
SIGNAL \Shift|ll2[30]~56_combout\ : std_logic;
SIGNAL \Shift|ll2[29]~57_combout\ : std_logic;
SIGNAL \Shift|ll4[29]~44_combout\ : std_logic;
SIGNAL \Shift|ll4[29]~45_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~43_combout\ : std_logic;
SIGNAL \Shift|ll5[29]~32_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Add|S[29]~27_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Add|S[30]~28_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~58_combout\ : std_logic;
SIGNAL \Shift|ll2[30]~59_combout\ : std_logic;
SIGNAL \Shift|ll4[30]~46_combout\ : std_logic;
SIGNAL \Shift|ll4[30]~47_combout\ : std_logic;
SIGNAL \Shift|ll5[30]~33_combout\ : std_logic;
SIGNAL \Shift|ll5[30]~34_combout\ : std_logic;
SIGNAL \Y_R[1]~90_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Add|S[31]~29_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~18_combout\ : std_logic;
SIGNAL \Shift|ll2[32]~60_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~61_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~49_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~50_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~48_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~19_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~21_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~22_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~23_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~24_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Shift|ll5[0]~35_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Shift|ll2[33]~62_combout\ : std_logic;
SIGNAL \Shift|ll2[32]~63_combout\ : std_logic;
SIGNAL \Shift|ll4[32]~51_combout\ : std_logic;
SIGNAL \Shift|ll4[32]~52_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Add|S[32]~30_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add|S[33]~31_combout\ : std_logic;
SIGNAL \Shift|ll5[1]~36_combout\ : std_logic;
SIGNAL \Shift|ll2[34]~64_combout\ : std_logic;
SIGNAL \Shift|ll2[33]~65_combout\ : std_logic;
SIGNAL \Shift|ll4[33]~53_combout\ : std_logic;
SIGNAL \Shift|ll4[33]~54_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Shift|ll2[35]~66_combout\ : std_logic;
SIGNAL \Shift|ll2[34]~67_combout\ : std_logic;
SIGNAL \Shift|ll4[34]~55_combout\ : std_logic;
SIGNAL \Shift|ll4[34]~56_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Add|S[34]~32_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Add|S[35]~33_combout\ : std_logic;
SIGNAL \Shift|ll2[36]~68_combout\ : std_logic;
SIGNAL \Shift|ll2[35]~69_combout\ : std_logic;
SIGNAL \Shift|ll4[35]~57_combout\ : std_logic;
SIGNAL \Shift|ll4[35]~58_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Shift|ll2[37]~70_combout\ : std_logic;
SIGNAL \Shift|ll2[36]~71_combout\ : std_logic;
SIGNAL \Shift|ll4[36]~59_combout\ : std_logic;
SIGNAL \Shift|ll4[36]~60_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Add|S[36]~34_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Add|S[37]~35_combout\ : std_logic;
SIGNAL \Shift|ll2[38]~72_combout\ : std_logic;
SIGNAL \Shift|ll2[37]~73_combout\ : std_logic;
SIGNAL \Shift|ll4[37]~61_combout\ : std_logic;
SIGNAL \Shift|ll4[37]~62_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add|S[38]~36_combout\ : std_logic;
SIGNAL \Shift|ll2[39]~74_combout\ : std_logic;
SIGNAL \Shift|ll2[38]~75_combout\ : std_logic;
SIGNAL \Shift|ll4[38]~63_combout\ : std_logic;
SIGNAL \Shift|ll4[38]~64_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Shift|ll2[40]~76_combout\ : std_logic;
SIGNAL \Shift|ll2[39]~77_combout\ : std_logic;
SIGNAL \Shift|ll4[39]~65_combout\ : std_logic;
SIGNAL \Shift|ll4[39]~66_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Add|S[39]~37_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add|S[40]~38_combout\ : std_logic;
SIGNAL \Shift|ll4[40]~67_combout\ : std_logic;
SIGNAL \Shift|ll2[41]~78_combout\ : std_logic;
SIGNAL \Shift|ll2[40]~79_combout\ : std_logic;
SIGNAL \Shift|ll3[40]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[40]~68_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Add|S[41]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[41]~69_combout\ : std_logic;
SIGNAL \Shift|ll2[42]~80_combout\ : std_logic;
SIGNAL \Shift|ll2[41]~81_combout\ : std_logic;
SIGNAL \Shift|ll3[41]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[41]~70_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Shift|ll2[43]~82_combout\ : std_logic;
SIGNAL \Shift|ll2[42]~83_combout\ : std_logic;
SIGNAL \Shift|ll3[42]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[42]~71_combout\ : std_logic;
SIGNAL \Shift|ll4[42]~72_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Add|S[42]~40_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add|S[43]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[43]~73_combout\ : std_logic;
SIGNAL \Shift|ll2[44]~84_combout\ : std_logic;
SIGNAL \Shift|ll2[43]~85_combout\ : std_logic;
SIGNAL \Shift|ll3[43]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[43]~74_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Add|S[44]~42_combout\ : std_logic;
SIGNAL \Shift|ll4[44]~75_combout\ : std_logic;
SIGNAL \Shift|ll2[45]~86_combout\ : std_logic;
SIGNAL \Shift|ll2[44]~87_combout\ : std_logic;
SIGNAL \Shift|ll3[44]~9_combout\ : std_logic;
SIGNAL \Shift|ll4[44]~76_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add|S[45]~43_combout\ : std_logic;
SIGNAL \Shift|ll2[46]~88_combout\ : std_logic;
SIGNAL \Shift|ll2[45]~89_combout\ : std_logic;
SIGNAL \Shift|ll3[45]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[45]~77_combout\ : std_logic;
SIGNAL \Shift|ll4[45]~78_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Shift|ll4[46]~79_combout\ : std_logic;
SIGNAL \Shift|ll2[47]~90_combout\ : std_logic;
SIGNAL \Shift|ll2[46]~91_combout\ : std_logic;
SIGNAL \Shift|ll3[46]~11_combout\ : std_logic;
SIGNAL \Shift|ll4[46]~80_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add|S[46]~44_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Shift|ll2[48]~92_combout\ : std_logic;
SIGNAL \Shift|ll2[47]~93_combout\ : std_logic;
SIGNAL \Shift|ll3[47]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[47]~81_combout\ : std_logic;
SIGNAL \Shift|ll4[47]~82_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Add|S[47]~45_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Add|S[48]~46_combout\ : std_logic;
SIGNAL \Shift|ll2[49]~94_combout\ : std_logic;
SIGNAL \Shift|ll2[48]~95_combout\ : std_logic;
SIGNAL \Shift|ll3[48]~13_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Add|S[49]~47_combout\ : std_logic;
SIGNAL \Shift|ll2[50]~96_combout\ : std_logic;
SIGNAL \Shift|ll2[49]~97_combout\ : std_logic;
SIGNAL \Shift|ll3[49]~14_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Shift|ll2[51]~98_combout\ : std_logic;
SIGNAL \Shift|ll2[50]~99_combout\ : std_logic;
SIGNAL \Shift|ll3[50]~15_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Add|S[50]~48_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Add|S[51]~49_combout\ : std_logic;
SIGNAL \Shift|ll2[52]~100_combout\ : std_logic;
SIGNAL \Shift|ll2[51]~101_combout\ : std_logic;
SIGNAL \Shift|ll3[51]~16_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Shift|ll2[53]~102_combout\ : std_logic;
SIGNAL \Shift|ll2[52]~103_combout\ : std_logic;
SIGNAL \Shift|ll3[52]~17_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add|S[52]~50_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Add|S[53]~51_combout\ : std_logic;
SIGNAL \Shift|ll2[54]~104_combout\ : std_logic;
SIGNAL \Shift|ll2[53]~105_combout\ : std_logic;
SIGNAL \Shift|ll3[53]~18_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Shift|ll2[55]~106_combout\ : std_logic;
SIGNAL \Shift|ll2[54]~107_combout\ : std_logic;
SIGNAL \Shift|ll3[54]~19_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Add|S[54]~52_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Shift|ll2[56]~108_combout\ : std_logic;
SIGNAL \Shift|ll2[55]~109_combout\ : std_logic;
SIGNAL \Shift|ll3[55]~20_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add|S[55]~53_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~110_combout\ : std_logic;
SIGNAL \Shift|ll2[56]~111_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add|S[56]~54_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~112_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~113_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add|S[57]~55_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Shift|ll1[58]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[58]~114_combout\ : std_logic;
SIGNAL \Shift|ll2[58]~115_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add|S[58]~56_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Add|S[59]~57_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Shift|ll2[59]~116_combout\ : std_logic;
SIGNAL \Shift|ll1[59]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[59]~117_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add|S[60]~58_combout\ : std_logic;
SIGNAL \Shift|ll1[60]~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Shift|ll1[61]~4_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Add|S[61]~59_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Add|S[62]~60_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~3_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~4_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~5_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~6_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~1_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~2_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~7_combout\ : std_logic;
SIGNAL \Add|S[63]~61_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~25_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~26_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Add|S[62]~62_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Logic|xor_result\ : std_logic_vector(63 DOWNTO 0);
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y49_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~6_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~11_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X94_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~5_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~5_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
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

-- Location: IOOBUF_X54_Y0_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~9_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
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

-- Location: IOOBUF_X81_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~5_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~5_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~5_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~5_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~5_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
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

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X0_Y52_N23
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

-- Location: IOOBUF_X16_Y73_N23
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X33_Y73_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~4_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X54_Y0_N23
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~5_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X0_Y48_N9
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X67_Y0_N9
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~8_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X115_Y36_N16
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X74_Y0_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~5_combout\,
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X115_Y60_N16
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~7_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~7_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~7_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~7_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~7_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~7_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~7_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~7_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~7_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~7_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~11_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X115_Y41_N9
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~20_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOIBUF_X72_Y73_N22
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X67_Y46_N16
\Logic|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = (\B[0]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[0]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

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

-- Location: IOIBUF_X65_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X66_Y45_N8
\Shift|ra4[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~0_combout\ = (!\B[0]~input_o\ & (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

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
	combout => \Shift|ra4[62]~0_combout\);

-- Location: LCCOMB_X63_Y46_N26
\Shift|Y_LL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = (\B[4]~input_o\) # ((\B[5]~input_o\) # (!\Shift|ra4[62]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datad => \Shift|ra4[62]~0_combout\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: LCCOMB_X63_Y46_N20
\Y_ShiftOrArith[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~8_combout\ = (\ShiftFN[0]~input_o\ & (((\A[0]~input_o\ & !\Shift|Y_LL[0]~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|Y_LL[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~8_combout\);

-- Location: IOIBUF_X60_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X62_Y49_N24
\Shift|rl2[37]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[37]~39_combout\ = (\B[1]~input_o\ & (\A[39]~input_o\)) # (!\B[1]~input_o\ & ((\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[37]~39_combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X62_Y49_N2
\Shift|rl2[36]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[36]~40_combout\ = (\B[1]~input_o\ & ((\A[38]~input_o\))) # (!\B[1]~input_o\ & (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[36]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|rl2[36]~40_combout\);

-- Location: LCCOMB_X62_Y49_N12
\Shift|rl4[32]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~5_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & (\Shift|rl2[37]~39_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[36]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[37]~39_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[36]~40_combout\,
	combout => \Shift|rl4[32]~5_combout\);

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

-- Location: IOIBUF_X0_Y48_N1
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X60_Y48_N10
\Shift|rl2[32]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[32]~37_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	combout => \Shift|rl2[32]~37_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X60_Y48_N0
\Shift|rl2[33]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[33]~36_combout\ = (\B[1]~input_o\ & ((\A[35]~input_o\))) # (!\B[1]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[33]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Shift|rl2[33]~36_combout\);

-- Location: LCCOMB_X60_Y48_N20
\Shift|rl2[32]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[32]~38_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[33]~36_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[32]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[32]~37_combout\,
	datab => \Shift|rl2[33]~36_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[32]~38_combout\);

-- Location: IOIBUF_X0_Y47_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X65_Y44_N22
\Shift|rl2[40]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[40]~34_combout\ = (\B[1]~input_o\ & (\A[42]~input_o\)) # (!\B[1]~input_o\ & ((\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Shift|rl2[40]~34_combout\);

-- Location: IOIBUF_X0_Y50_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X61_Y50_N24
\Shift|rl2[41]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~33_combout\ = (\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[41]~33_combout\);

-- Location: LCCOMB_X61_Y50_N26
\Shift|rl2[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[40]~35_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[41]~33_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[40]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[40]~34_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[41]~33_combout\,
	combout => \Shift|rl2[40]~35_combout\);

-- Location: LCCOMB_X63_Y45_N22
\Shift|rl4[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~4_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[40]~35_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[32]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[32]~38_combout\,
	datac => \Shift|rl2[40]~35_combout\,
	combout => \Shift|rl4[32]~4_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X62_Y50_N30
\Shift|rl2[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~42_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[44]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[44]~42_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X62_Y50_N4
\Shift|rl2[44]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~41_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[47]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[44]~41_combout\);

-- Location: LCCOMB_X61_Y46_N8
\Shift|rl4[32]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~6_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[44]~42_combout\) # (\Shift|rl2[44]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[44]~42_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[44]~41_combout\,
	combout => \Shift|rl4[32]~6_combout\);

-- Location: LCCOMB_X63_Y49_N30
\Shift|rl4[32]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~7_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[32]~5_combout\) # ((\Shift|rl4[32]~6_combout\)))) # (!\B[2]~input_o\ & (((\Shift|rl4[32]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[32]~5_combout\,
	datab => \Shift|rl4[32]~4_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[32]~6_combout\,
	combout => \Shift|rl4[32]~7_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X67_Y51_N10
\Shift|rl2[52]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[52]~23_combout\ = (\B[1]~input_o\ & (\A[54]~input_o\)) # (!\B[1]~input_o\ & ((\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Shift|rl2[52]~23_combout\);

-- Location: IOIBUF_X115_Y57_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X67_Y51_N24
\Shift|rl2[53]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[53]~22_combout\ = (\B[1]~input_o\ & ((\A[55]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|rl2[53]~22_combout\);

-- Location: LCCOMB_X67_Y51_N4
\Shift|rl2[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[52]~24_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[53]~22_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[52]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[52]~23_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[53]~22_combout\,
	combout => \Shift|rl2[52]~24_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X62_Y50_N8
\Shift|rl2[48]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[48]~26_combout\ = (\B[1]~input_o\ & (\A[50]~input_o\)) # (!\B[1]~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|rl2[48]~26_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X65_Y50_N16
\Shift|rl2[49]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~25_combout\ = (\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|rl2[49]~25_combout\);

-- Location: LCCOMB_X62_Y50_N2
\Shift|rl2[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[48]~27_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[49]~25_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[48]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[48]~26_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[49]~25_combout\,
	combout => \Shift|rl2[48]~27_combout\);

-- Location: LCCOMB_X62_Y47_N16
\Shift|rl4[48]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[48]~2_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[52]~24_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[48]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[52]~24_combout\,
	datad => \Shift|rl2[48]~27_combout\,
	combout => \Shift|rl4[48]~2_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X68_Y51_N0
\Shift|rl2[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[60]~28_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[61]~input_o\))) # (!\B[0]~input_o\ & (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|rl2[60]~28_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X70_Y49_N16
\Shift|rl1[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[62]~2_combout\ = (\B[0]~input_o\ & ((\A[63]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Shift|rl1[62]~2_combout\);

-- Location: LCCOMB_X70_Y49_N2
\Shift|rl2[60]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[60]~29_combout\ = (\Shift|rl2[60]~28_combout\) # ((\B[1]~input_o\ & \Shift|rl1[62]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~28_combout\,
	datab => \B[1]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Shift|rl2[60]~29_combout\);

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

-- Location: IOIBUF_X87_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X66_Y51_N18
\Shift|rl2[56]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[56]~31_combout\ = (\B[1]~input_o\ & (\A[58]~input_o\)) # (!\B[1]~input_o\ & ((\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|rl2[56]~31_combout\);

-- Location: IOIBUF_X115_Y58_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X66_Y51_N24
\Shift|rl2[57]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[57]~30_combout\ = (\B[1]~input_o\ & (\A[59]~input_o\)) # (!\B[1]~input_o\ & ((\A[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shift|rl2[57]~30_combout\);

-- Location: LCCOMB_X66_Y51_N4
\Shift|rl2[56]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[56]~32_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[57]~30_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[56]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[56]~31_combout\,
	datad => \Shift|rl2[57]~30_combout\,
	combout => \Shift|rl2[56]~32_combout\);

-- Location: LCCOMB_X62_Y47_N2
\Shift|rl3[56]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[56]~2_combout\ = (\B[2]~input_o\ & (\Shift|rl2[60]~29_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[56]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datab => \Shift|rl2[56]~32_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl3[56]~2_combout\);

-- Location: LCCOMB_X62_Y47_N4
\Shift|rl4[48]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[48]~3_combout\ = (\Shift|rl4[48]~2_combout\) # ((\B[3]~input_o\ & \Shift|rl3[56]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[48]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[56]~2_combout\,
	combout => \Shift|rl4[48]~3_combout\);

-- Location: LCCOMB_X63_Y49_N8
\Shift|rl5[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl5[32]~0_combout\ = (\B[4]~input_o\ & ((\Shift|rl4[48]~3_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[32]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shift|rl4[32]~7_combout\,
	datad => \Shift|rl4[48]~3_combout\,
	combout => \Shift|rl5[32]~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X61_Y48_N2
\Shift|rl2[28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~11_combout\ = (\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[28]~11_combout\);

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

-- Location: IOIBUF_X115_Y36_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X61_Y48_N8
\Shift|rl2[29]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~10_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|rl2[29]~10_combout\);

-- Location: LCCOMB_X61_Y48_N12
\Shift|rl2[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~12_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[29]~10_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[28]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[28]~11_combout\,
	datac => \Shift|rl2[29]~10_combout\,
	combout => \Shift|rl2[28]~12_combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X61_Y47_N8
\Shift|rl2[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~14_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[24]~14_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X62_Y45_N24
\Shift|rl2[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~13_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[27]~input_o\,
	combout => \Shift|rl2[25]~13_combout\);

-- Location: LCCOMB_X62_Y45_N10
\Shift|rl2[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~15_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[25]~13_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[24]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[24]~14_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[25]~13_combout\,
	combout => \Shift|rl2[24]~15_combout\);

-- Location: LCCOMB_X63_Y45_N2
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

-- Location: IOIBUF_X20_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X62_Y52_N16
\Shift|rl2[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~16_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[23]~input_o\,
	combout => \Shift|rl2[21]~16_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X63_Y44_N8
\Shift|rl2[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~17_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[20]~17_combout\);

-- Location: LCCOMB_X63_Y44_N26
\Shift|rl2[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~18_combout\ = (\B[0]~input_o\ & (\Shift|rl2[21]~16_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[20]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[21]~16_combout\,
	datac => \Shift|rl2[20]~17_combout\,
	combout => \Shift|rl2[20]~18_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X67_Y44_N10
\Shift|rl2[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~20_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[16]~20_combout\);

-- Location: IOIBUF_X115_Y33_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X67_Y44_N24
\Shift|rl2[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~19_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|rl2[17]~19_combout\);

-- Location: LCCOMB_X67_Y44_N4
\Shift|rl2[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~21_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[17]~19_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[16]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[16]~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[17]~19_combout\,
	combout => \Shift|rl2[16]~21_combout\);

-- Location: LCCOMB_X63_Y45_N28
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

-- Location: LCCOMB_X63_Y49_N10
\Shift|rl4[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~1_combout\ = (\Shift|rl4[16]~0_combout\) # ((\Shift|rl3[16]~1_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[16]~0_combout\,
	datac => \Shift|rl3[16]~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[16]~1_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X68_Y44_N10
\Shift|rl2[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~5_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|rl2[12]~5_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X68_Y44_N24
\Shift|rl2[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~4_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Shift|rl2[13]~4_combout\);

-- Location: LCCOMB_X68_Y44_N4
\Shift|rl2[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~6_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[13]~4_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[13]~4_combout\,
	combout => \Shift|rl2[12]~6_combout\);

-- Location: IOIBUF_X115_Y45_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X70_Y44_N18
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

-- Location: IOIBUF_X69_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X70_Y44_N24
\Shift|rl2[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~7_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|rl2[9]~7_combout\);

-- Location: LCCOMB_X70_Y44_N20
\Shift|rl2[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~9_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[9]~7_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[8]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[9]~7_combout\,
	combout => \Shift|rl2[8]~9_combout\);

-- Location: LCCOMB_X63_Y45_N16
\Shift|rl3[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[8]~0_combout\ = (\B[2]~input_o\ & (\Shift|rl2[12]~6_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[12]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[8]~9_combout\,
	combout => \Shift|rl3[8]~0_combout\);

-- Location: IOIBUF_X52_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X69_Y48_N8
\Shift|rl1[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[4]~1_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|rl1[4]~1_combout\);

-- Location: IOIBUF_X98_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X70_Y48_N0
\Shift|rl2[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~2_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|rl2[4]~2_combout\);

-- Location: LCCOMB_X69_Y47_N6
\Shift|rl2[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~3_combout\ = (\Shift|rl2[4]~2_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|rl1[4]~1_combout\,
	datad => \Shift|rl2[4]~2_combout\,
	combout => \Shift|rl2[4]~3_combout\);

-- Location: IOIBUF_X115_Y51_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X69_Y47_N18
\Shift|rl1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[2]~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|rl1[2]~0_combout\);

-- Location: IOIBUF_X115_Y54_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X69_Y47_N24
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[0]~input_o\)))))

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
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: LCCOMB_X69_Y47_N20
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\Shift|rl1[2]~0_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[2]~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[0]~2_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: LCCOMB_X69_Y47_N0
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[0]~3_combout\) # ((\Shift|rl2[4]~3_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[4]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[0]~3_combout\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: LCCOMB_X63_Y49_N16
\Y_ShiftOrArith[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = (!\B[4]~input_o\ & ((\Y_ShiftOrArith[0]~4_combout\) # ((\Shift|rl3[8]~0_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[8]~0_combout\,
	datab => \Y_ShiftOrArith[0]~4_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: LCCOMB_X63_Y49_N4
\Y_ShiftOrArith[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~6_combout\ = (!\B[5]~input_o\ & ((\Y_ShiftOrArith[0]~5_combout\) # ((\Shift|rl4[16]~1_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[16]~1_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Y_ShiftOrArith[0]~5_combout\,
	combout => \Y_ShiftOrArith[0]~6_combout\);

-- Location: LCCOMB_X63_Y46_N16
\Y_ShiftOrArith[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~7_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~6_combout\) # ((\Shift|rl5[32]~0_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl5[32]~0_combout\,
	datab => \Y_ShiftOrArith[0]~6_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[0]~7_combout\);

-- Location: LCCOMB_X63_Y46_N22
\Y_ShiftOrArith[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~9_combout\ = (\Y_ShiftOrArith[0]~7_combout\) # ((\Y_ShiftOrArith[0]~8_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_ShiftOrArith[0]~8_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[0]~7_combout\,
	combout => \Y_ShiftOrArith[0]~9_combout\);

-- Location: IOIBUF_X74_Y73_N22
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

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

-- Location: IOIBUF_X29_Y73_N1
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

-- Location: IOIBUF_X35_Y73_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

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

-- Location: IOIBUF_X58_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

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

-- Location: LCCOMB_X69_Y47_N8
\Add|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: LCCOMB_X69_Y47_N10
\Add|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (\Add|C[1]~0_combout\ & ((\A[1]~input_o\) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\Add|C[1]~0_combout\ & (\A[1]~input_o\ & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[1]~input_o\,
	datac => \Add|C[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LCCOMB_X69_Y47_N12
\Add|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = (\A[2]~input_o\ & ((\Add|C[2]~1_combout\) # (\AddnSub~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\Add|C[2]~1_combout\ & (\AddnSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Add|C[2]~1_combout\,
	combout => \Add|C[3]~2_combout\);

-- Location: LCCOMB_X69_Y47_N22
\Add|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = (\A[3]~input_o\ & ((\Add|C[3]~2_combout\) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\Add|C[3]~2_combout\ & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|C[3]~2_combout\,
	combout => \Add|C[4]~3_combout\);

-- Location: LCCOMB_X70_Y48_N8
\Add|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = (\A[4]~input_o\ & ((\Add|C[4]~3_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|C[4]~3_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[4]~input_o\,
	datad => \Add|C[4]~3_combout\,
	combout => \Add|C[5]~4_combout\);

-- Location: LCCOMB_X70_Y48_N10
\Add|C[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (\A[5]~input_o\ & ((\Add|C[5]~4_combout\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Add|C[5]~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: IOIBUF_X115_Y48_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X70_Y48_N28
\Add|C[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = (\Add|C[6]~5_combout\ & ((\A[6]~input_o\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\Add|C[6]~5_combout\ & (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[6]~5_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X98_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X70_Y48_N30
\Add|C[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = (\A[7]~input_o\ & ((\Add|C[7]~6_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[7]~input_o\ & (\Add|C[7]~6_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: IOIBUF_X72_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X69_Y45_N16
\Add|C[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (\Add|C[8]~7_combout\ & ((\A[8]~input_o\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\Add|C[8]~7_combout\ & (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[8]~7_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: LCCOMB_X69_Y44_N8
\Add|C[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = (\A[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & (\Add|C[9]~8_combout\ & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[9]~input_o\,
	datad => \Add|C[9]~8_combout\,
	combout => \Add|C[10]~9_combout\);

-- Location: LCCOMB_X69_Y44_N10
\Add|C[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = (\Add|C[10]~9_combout\ & ((\A[10]~input_o\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\Add|C[10]~9_combout\ & (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[10]~input_o\,
	datac => \Add|C[10]~9_combout\,
	datad => \A[10]~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X74_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X69_Y44_N4
\Add|C[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = (\Add|C[11]~10_combout\ & ((\A[11]~input_o\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\Add|C[11]~10_combout\ & (\A[11]~input_o\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: LCCOMB_X69_Y45_N18
\Add|C[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = (\Add|C[12]~11_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[12]~11_combout\ & (\A[12]~input_o\ & (\B[12]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[12]~11_combout\,
	datad => \A[12]~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: LCCOMB_X68_Y45_N16
\Add|C[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = (\A[13]~input_o\ & ((\Add|C[13]~12_combout\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\A[13]~input_o\ & (\Add|C[13]~12_combout\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \Add|C[13]~12_combout\,
	combout => \Add|C[14]~13_combout\);

-- Location: LCCOMB_X68_Y45_N10
\Add|C[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = (\A[14]~input_o\ & ((\Add|C[14]~13_combout\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\Add|C[14]~13_combout\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	datad => \Add|C[14]~13_combout\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X68_Y45_N4
\Add|C[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = (\Add|C[15]~14_combout\ & ((\A[15]~input_o\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\Add|C[15]~14_combout\ & (\A[15]~input_o\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[15]~14_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|C[16]~15_combout\);

-- Location: IOIBUF_X115_Y49_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X67_Y49_N0
\Add|C[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = (\Add|C[16]~15_combout\ & ((\A[16]~input_o\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\Add|C[16]~15_combout\ & (\A[16]~input_o\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[16]~15_combout\,
	datab => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: IOIBUF_X91_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X67_Y49_N10
\Add|C[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = (\A[17]~input_o\ & ((\Add|C[17]~16_combout\) # (\AddnSub~input_o\ $ (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\Add|C[17]~16_combout\ & (\AddnSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add|C[17]~16_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|C[18]~17_combout\);

-- Location: LCCOMB_X68_Y49_N24
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

-- Location: LCCOMB_X67_Y49_N20
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

-- Location: LCCOMB_X62_Y52_N0
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

-- Location: LCCOMB_X62_Y52_N10
\Add|C[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = (\A[21]~input_o\ & ((\Add|C[21]~20_combout\) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[21]~input_o\ & (\Add|C[21]~20_combout\ & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[21]~20_combout\,
	combout => \Add|C[22]~21_combout\);

-- Location: LCCOMB_X62_Y52_N12
\Add|C[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = (\A[22]~input_o\ & ((\Add|C[22]~21_combout\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[22]~input_o\ & (\Add|C[22]~21_combout\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[22]~21_combout\,
	combout => \Add|C[23]~22_combout\);

-- Location: LCCOMB_X62_Y52_N22
\Add|C[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = (\A[23]~input_o\ & ((\Add|C[23]~22_combout\) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[23]~input_o\ & (\Add|C[23]~22_combout\ & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[23]~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|C[24]~23_combout\);

-- Location: LCCOMB_X62_Y51_N8
\Add|C[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = (\A[24]~input_o\ & ((\Add|C[24]~23_combout\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[24]~input_o\ & (\Add|C[24]~23_combout\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \Add|C[24]~23_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[25]~24_combout\);

-- Location: LCCOMB_X62_Y51_N18
\Add|C[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = (\Add|C[25]~24_combout\ & ((\A[25]~input_o\) # (\B[25]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[25]~24_combout\ & (\A[25]~input_o\ & (\B[25]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[25]~24_combout\,
	datad => \A[25]~input_o\,
	combout => \Add|C[26]~25_combout\);

-- Location: LCCOMB_X61_Y51_N16
\Add|C[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = (\A[26]~input_o\ & ((\Add|C[26]~25_combout\) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\A[26]~input_o\ & (\Add|C[26]~25_combout\ & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \Add|C[26]~25_combout\,
	combout => \Add|C[27]~26_combout\);

-- Location: LCCOMB_X61_Y51_N26
\Add|C[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = (\A[27]~input_o\ & ((\Add|C[27]~26_combout\) # (\B[27]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[27]~input_o\ & (\Add|C[27]~26_combout\ & (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[27]~26_combout\,
	combout => \Add|C[28]~27_combout\);

-- Location: IOIBUF_X18_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X60_Y50_N16
\Add|C[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = (\Add|C[28]~27_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[28]~27_combout\ & (\A[28]~input_o\ & (\B[28]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[28]~27_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[29]~28_combout\);

-- Location: LCCOMB_X60_Y50_N2
\Add|C[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = (\A[29]~input_o\ & ((\Add|C[29]~28_combout\) # (\AddnSub~input_o\ $ (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\Add|C[29]~28_combout\ & (\AddnSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[29]~input_o\,
	datad => \Add|C[29]~28_combout\,
	combout => \Add|C[30]~29_combout\);

-- Location: LCCOMB_X60_Y50_N4
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

-- Location: LCCOMB_X70_Y47_N24
\Add|C[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[32]~31_combout\ = (\Add|C[31]~30_combout\ & ((\A[31]~input_o\) # (\B[31]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[31]~30_combout\ & (\A[31]~input_o\ & (\B[31]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[31]~30_combout\,
	datab => \B[31]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[31]~input_o\,
	combout => \Add|C[32]~31_combout\);

-- Location: LCCOMB_X63_Y47_N24
\Add|C[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[33]~32_combout\ = (\A[32]~input_o\ & ((\Add|C[32]~31_combout\) # (\B[32]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[32]~input_o\ & (\Add|C[32]~31_combout\ & (\B[32]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[32]~input_o\,
	datad => \Add|C[32]~31_combout\,
	combout => \Add|C[33]~32_combout\);

-- Location: LCCOMB_X63_Y47_N10
\Add|C[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[34]~33_combout\ = (\A[33]~input_o\ & ((\Add|C[33]~32_combout\) # (\B[33]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[33]~input_o\ & (\Add|C[33]~32_combout\ & (\B[33]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[33]~input_o\,
	datad => \Add|C[33]~32_combout\,
	combout => \Add|C[34]~33_combout\);

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

-- Location: LCCOMB_X63_Y47_N12
\Add|C[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[35]~34_combout\ = (\Add|C[34]~33_combout\ & ((\A[34]~input_o\) # (\AddnSub~input_o\ $ (\B[34]~input_o\)))) # (!\Add|C[34]~33_combout\ & (\A[34]~input_o\ & (\AddnSub~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[34]~33_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Add|C[35]~34_combout\);

-- Location: LCCOMB_X63_Y47_N30
\Add|C[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[36]~35_combout\ = (\A[35]~input_o\ & ((\Add|C[35]~34_combout\) # (\B[35]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[35]~input_o\ & (\Add|C[35]~34_combout\ & (\B[35]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[35]~input_o\,
	datad => \Add|C[35]~34_combout\,
	combout => \Add|C[36]~35_combout\);

-- Location: LCCOMB_X70_Y47_N2
\Add|C[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[37]~36_combout\ = (\A[36]~input_o\ & ((\Add|C[36]~35_combout\) # (\B[36]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[36]~input_o\ & (\Add|C[36]~35_combout\ & (\B[36]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[36]~35_combout\,
	combout => \Add|C[37]~36_combout\);

-- Location: LCCOMB_X66_Y43_N0
\Add|C[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[38]~37_combout\ = (\A[37]~input_o\ & ((\Add|C[37]~36_combout\) # (\B[37]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[37]~input_o\ & (\Add|C[37]~36_combout\ & (\B[37]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[37]~36_combout\,
	combout => \Add|C[38]~37_combout\);

-- Location: LCCOMB_X66_Y43_N18
\Add|C[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[39]~38_combout\ = (\A[38]~input_o\ & ((\Add|C[38]~37_combout\) # (\AddnSub~input_o\ $ (\B[38]~input_o\)))) # (!\A[38]~input_o\ & (\Add|C[38]~37_combout\ & (\AddnSub~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[38]~input_o\,
	datad => \Add|C[38]~37_combout\,
	combout => \Add|C[39]~38_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X66_Y43_N28
\Add|C[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[40]~39_combout\ = (\A[39]~input_o\ & ((\Add|C[39]~38_combout\) # (\AddnSub~input_o\ $ (\B[39]~input_o\)))) # (!\A[39]~input_o\ & (\Add|C[39]~38_combout\ & (\AddnSub~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \Add|C[39]~38_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[39]~input_o\,
	combout => \Add|C[40]~39_combout\);

-- Location: LCCOMB_X66_Y43_N6
\Add|C[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[41]~40_combout\ = (\A[40]~input_o\ & ((\Add|C[40]~39_combout\) # (\B[40]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[40]~input_o\ & (\Add|C[40]~39_combout\ & (\B[40]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[40]~39_combout\,
	combout => \Add|C[41]~40_combout\);

-- Location: LCCOMB_X65_Y44_N8
\Add|C[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[42]~41_combout\ = (\Add|C[41]~40_combout\ & ((\A[41]~input_o\) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[41]~40_combout\ & (\A[41]~input_o\ & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[41]~40_combout\,
	datad => \A[41]~input_o\,
	combout => \Add|C[42]~41_combout\);

-- Location: IOIBUF_X115_Y36_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X65_Y44_N10
\Add|C[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[43]~42_combout\ = (\A[42]~input_o\ & ((\Add|C[42]~41_combout\) # (\AddnSub~input_o\ $ (\B[42]~input_o\)))) # (!\A[42]~input_o\ & (\Add|C[42]~41_combout\ & (\AddnSub~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[42]~41_combout\,
	datad => \B[42]~input_o\,
	combout => \Add|C[43]~42_combout\);

-- Location: LCCOMB_X65_Y44_N12
\Add|C[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[44]~43_combout\ = (\A[43]~input_o\ & ((\Add|C[43]~42_combout\) # (\B[43]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[43]~input_o\ & (\Add|C[43]~42_combout\ & (\B[43]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[43]~input_o\,
	datad => \Add|C[43]~42_combout\,
	combout => \Add|C[44]~43_combout\);

-- Location: LCCOMB_X66_Y46_N16
\Add|C[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[45]~44_combout\ = (\Add|C[44]~43_combout\ & ((\A[44]~input_o\) # (\AddnSub~input_o\ $ (\B[44]~input_o\)))) # (!\Add|C[44]~43_combout\ & (\A[44]~input_o\ & (\AddnSub~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[44]~input_o\,
	datac => \Add|C[44]~43_combout\,
	datad => \A[44]~input_o\,
	combout => \Add|C[45]~44_combout\);

-- Location: LCCOMB_X66_Y46_N2
\Add|C[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[46]~45_combout\ = (\A[45]~input_o\ & ((\Add|C[45]~44_combout\) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\A[45]~input_o\ & (\Add|C[45]~44_combout\ & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \Add|C[45]~44_combout\,
	combout => \Add|C[46]~45_combout\);

-- Location: IOIBUF_X115_Y55_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X70_Y47_N28
\Add|C[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[47]~46_combout\ = (\Add|C[46]~45_combout\ & ((\A[46]~input_o\) # (\AddnSub~input_o\ $ (\B[46]~input_o\)))) # (!\Add|C[46]~45_combout\ & (\A[46]~input_o\ & (\AddnSub~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \Add|C[47]~46_combout\);

-- Location: LCCOMB_X70_Y47_N14
\Add|C[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[48]~47_combout\ = (\A[47]~input_o\ & ((\Add|C[47]~46_combout\) # (\B[47]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[47]~input_o\ & (\Add|C[47]~46_combout\ & (\B[47]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[47]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[47]~46_combout\,
	combout => \Add|C[48]~47_combout\);

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

-- Location: LCCOMB_X73_Y53_N0
\Add|C[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[49]~48_combout\ = (\Add|C[48]~47_combout\ & ((\A[48]~input_o\) # (\B[48]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[48]~47_combout\ & (\A[48]~input_o\ & (\B[48]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[48]~47_combout\,
	datab => \B[48]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[48]~input_o\,
	combout => \Add|C[49]~48_combout\);

-- Location: LCCOMB_X73_Y53_N10
\Add|C[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[50]~49_combout\ = (\A[49]~input_o\ & ((\Add|C[49]~48_combout\) # (\B[49]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[49]~input_o\ & (\Add|C[49]~48_combout\ & (\B[49]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|C[49]~48_combout\,
	combout => \Add|C[50]~49_combout\);

-- Location: IOIBUF_X115_Y53_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X73_Y53_N12
\Add|C[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[51]~50_combout\ = (\Add|C[50]~49_combout\ & ((\A[50]~input_o\) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\Add|C[50]~49_combout\ & (\A[50]~input_o\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[50]~49_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Add|C[51]~50_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X73_Y53_N6
\Add|C[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[52]~51_combout\ = (\Add|C[51]~50_combout\ & ((\A[51]~input_o\) # (\AddnSub~input_o\ $ (\B[51]~input_o\)))) # (!\Add|C[51]~50_combout\ & (\A[51]~input_o\ & (\AddnSub~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[51]~50_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Add|C[52]~51_combout\);

-- Location: IOIBUF_X89_Y73_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X73_Y53_N24
\Add|C[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[53]~52_combout\ = (\Add|C[52]~51_combout\ & ((\A[52]~input_o\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[52]~51_combout\ & (\A[52]~input_o\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[52]~51_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[53]~52_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X67_Y53_N16
\Add|C[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[54]~53_combout\ = (\Add|C[53]~52_combout\ & ((\A[53]~input_o\) # (\AddnSub~input_o\ $ (\B[53]~input_o\)))) # (!\Add|C[53]~52_combout\ & (\A[53]~input_o\ & (\AddnSub~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Add|C[54]~53_combout\);

-- Location: IOIBUF_X96_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X67_Y53_N18
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

-- Location: IOIBUF_X67_Y73_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X67_Y53_N4
\Add|C[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[56]~55_combout\ = (\Add|C[55]~54_combout\ & ((\A[55]~input_o\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\Add|C[55]~54_combout\ & (\A[55]~input_o\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[55]~54_combout\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Add|C[56]~55_combout\);

-- Location: IOIBUF_X105_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X68_Y52_N24
\Add|C[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[57]~56_combout\ = (\Add|C[56]~55_combout\ & ((\A[56]~input_o\) # (\AddnSub~input_o\ $ (\B[56]~input_o\)))) # (!\Add|C[56]~55_combout\ & (\A[56]~input_o\ & (\AddnSub~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[56]~55_combout\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Add|C[57]~56_combout\);

-- Location: IOIBUF_X79_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X68_Y52_N10
\Add|C[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[58]~57_combout\ = (\Add|C[57]~56_combout\ & ((\A[57]~input_o\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\Add|C[57]~56_combout\ & (\A[57]~input_o\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[57]~56_combout\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|C[58]~57_combout\);

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

-- Location: LCCOMB_X68_Y52_N28
\Add|C[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[59]~58_combout\ = (\Add|C[58]~57_combout\ & ((\A[58]~input_o\) # (\AddnSub~input_o\ $ (\B[58]~input_o\)))) # (!\Add|C[58]~57_combout\ & (\A[58]~input_o\ & (\AddnSub~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[58]~57_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Add|C[59]~58_combout\);

-- Location: IOIBUF_X115_Y52_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X68_Y52_N6
\Add|C[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[60]~59_combout\ = (\Add|C[59]~58_combout\ & ((\A[59]~input_o\) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\Add|C[59]~58_combout\ & (\A[59]~input_o\ & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[59]~58_combout\,
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Add|C[60]~59_combout\);

-- Location: LCCOMB_X65_Y53_N24
\Add|C[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[61]~60_combout\ = (\A[60]~input_o\ & ((\Add|C[60]~59_combout\) # (\B[60]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[60]~input_o\ & (\Add|C[60]~59_combout\ & (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[60]~59_combout\,
	combout => \Add|C[61]~60_combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X65_Y53_N10
\Add|C[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[62]~61_combout\ = (\Add|C[61]~60_combout\ & ((\A[61]~input_o\) # (\AddnSub~input_o\ $ (\B[61]~input_o\)))) # (!\Add|C[61]~60_combout\ & (\A[61]~input_o\ & (\AddnSub~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[61]~60_combout\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Add|C[62]~61_combout\);

-- Location: LCCOMB_X65_Y53_N12
\Add|C[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[63]~62_combout\ = (\A[62]~input_o\ & ((\Add|C[62]~61_combout\) # (\B[62]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[62]~input_o\ & (\Add|C[62]~61_combout\ & (\B[62]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[62]~61_combout\,
	combout => \Add|C[63]~62_combout\);

-- Location: LCCOMB_X65_Y53_N22
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

-- Location: LCCOMB_X62_Y51_N4
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\FuncClass[0]~input_o\ & (((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & ((\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_ShiftOrArith[0]~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X65_Y53_N0
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

-- Location: LCCOMB_X62_Y51_N30
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\FuncClass[0]~input_o\ & ((\Mux63~0_combout\ & ((!\Add|Cout~0_combout\))) # (!\Mux63~0_combout\ & (\Logic|Mux63~0_combout\)))) # (!\FuncClass[0]~input_o\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Logic|Mux63~0_combout\,
	datac => \Mux63~0_combout\,
	datad => \Add|Cout~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X68_Y52_N0
\Logic|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux62~0_combout\ = (\B[1]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Logic|Mux62~0_combout\);

-- Location: LCCOMB_X61_Y48_N22
\Shift|rl2[30]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[30]~64_combout\ = (\B[1]~input_o\ & ((\A[32]~input_o\))) # (!\B[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[30]~64_combout\);

-- Location: LCCOMB_X61_Y48_N0
\Shift|rl2[29]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~65_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[30]~64_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[29]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[29]~10_combout\,
	datac => \Shift|rl2[30]~64_combout\,
	combout => \Shift|rl2[29]~65_combout\);

-- Location: LCCOMB_X61_Y47_N26
\Shift|rl2[26]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~66_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[26]~66_combout\);

-- Location: LCCOMB_X62_Y45_N12
\Shift|rl2[25]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~67_combout\ = (\B[0]~input_o\ & (\Shift|rl2[26]~66_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[25]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[26]~66_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[25]~13_combout\,
	combout => \Shift|rl2[25]~67_combout\);

-- Location: LCCOMB_X67_Y48_N24
\Shift|rl4[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~11_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[29]~65_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[25]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[29]~65_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[25]~67_combout\,
	combout => \Shift|rl4[17]~11_combout\);

-- Location: LCCOMB_X61_Y47_N28
\Shift|rl2[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~68_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[22]~68_combout\);

-- Location: LCCOMB_X63_Y44_N20
\Shift|rl2[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~69_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[22]~68_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[21]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[21]~16_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[22]~68_combout\,
	combout => \Shift|rl2[21]~69_combout\);

-- Location: LCCOMB_X63_Y44_N6
\Shift|rl2[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~70_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[18]~70_combout\);

-- Location: LCCOMB_X67_Y44_N26
\Shift|rl2[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~71_combout\ = (\B[0]~input_o\ & (\Shift|rl2[18]~70_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[17]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[18]~70_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[17]~19_combout\,
	combout => \Shift|rl2[17]~71_combout\);

-- Location: LCCOMB_X67_Y48_N18
\Shift|rl3[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[17]~4_combout\ = (\B[2]~input_o\ & (\Shift|rl2[21]~69_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[17]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[21]~69_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[17]~71_combout\,
	combout => \Shift|rl3[17]~4_combout\);

-- Location: LCCOMB_X67_Y48_N4
\Shift|rl4[17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~12_combout\ = (\Shift|rl4[17]~11_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[17]~11_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[17]~4_combout\,
	combout => \Shift|rl4[17]~12_combout\);

-- Location: LCCOMB_X60_Y48_N6
\Shift|rl2[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[34]~62_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Shift|rl2[34]~62_combout\);

-- Location: LCCOMB_X60_Y48_N8
\Shift|rl2[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[33]~63_combout\ = (\B[0]~input_o\ & (\Shift|rl2[34]~62_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[33]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[34]~62_combout\,
	datab => \Shift|rl2[33]~36_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[33]~63_combout\);

-- Location: LCCOMB_X61_Y50_N4
\Shift|rl2[41]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~60_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[41]~60_combout\);

-- Location: LCCOMB_X61_Y50_N6
\Shift|rl2[42]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[42]~61_combout\ = (\B[1]~input_o\ & (\A[44]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[42]~61_combout\);

-- Location: LCCOMB_X61_Y50_N16
\Shift|rl4[29]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~9_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[41]~60_combout\) # ((\B[0]~input_o\ & \Shift|rl2[42]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[41]~60_combout\,
	datad => \Shift|rl2[42]~61_combout\,
	combout => \Shift|rl4[29]~9_combout\);

-- Location: LCCOMB_X66_Y50_N18
\Shift|rl4[33]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~10_combout\ = (!\B[2]~input_o\ & ((\Shift|rl4[29]~9_combout\) # ((\Shift|rl2[33]~63_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[33]~63_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[29]~9_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[33]~10_combout\);

-- Location: LCCOMB_X62_Y49_N6
\Shift|rl2[38]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[38]~58_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|rl2[38]~58_combout\);

-- Location: LCCOMB_X62_Y49_N0
\Shift|rl2[37]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[37]~59_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[38]~58_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[37]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[37]~39_combout\,
	datad => \Shift|rl2[38]~58_combout\,
	combout => \Shift|rl2[37]~59_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Shift|rl2[45]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[45]~56_combout\ = (\B[1]~input_o\ & ((\A[47]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[45]~56_combout\);

-- Location: LCCOMB_X62_Y50_N24
\Shift|rl2[46]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[46]~55_combout\ = (\B[1]~input_o\ & ((\A[48]~input_o\))) # (!\B[1]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|rl2[46]~55_combout\);

-- Location: LCCOMB_X62_Y50_N20
\Shift|rl2[45]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[45]~57_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[46]~55_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[45]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[45]~56_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[46]~55_combout\,
	combout => \Shift|rl2[45]~57_combout\);

-- Location: LCCOMB_X66_Y50_N16
\Shift|rl4[33]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~8_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[45]~57_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[37]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[37]~59_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[45]~57_combout\,
	combout => \Shift|rl4[33]~8_combout\);

-- Location: LCCOMB_X66_Y51_N6
\Shift|rl2[58]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~53_combout\ = (\B[1]~input_o\ & (\A[60]~input_o\)) # (!\B[1]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|rl2[58]~53_combout\);

-- Location: LCCOMB_X66_Y51_N0
\Y_R[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~19_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\Shift|rl2[58]~53_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[57]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[57]~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[58]~53_combout\,
	combout => \Y_R[1]~19_combout\);

-- Location: LCCOMB_X67_Y50_N12
\Shift|rl2[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[61]~54_combout\ = (\A[63]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[61]~54_combout\);

-- Location: LCCOMB_X67_Y50_N18
\Y_R[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~21_combout\ = (\ShiftFN[0]~input_o\) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_R[1]~21_combout\);

-- Location: LCCOMB_X68_Y51_N2
\Y_R[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~20_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Y_R[1]~20_combout\);

-- Location: LCCOMB_X67_Y50_N14
\Y_R[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~22_combout\ = (\B[2]~input_o\ & ((\Y_R[1]~20_combout\) # ((\Shift|rl2[61]~54_combout\ & \Y_R[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[61]~54_combout\,
	datab => \Y_R[1]~21_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~20_combout\,
	combout => \Y_R[1]~22_combout\);

-- Location: LCCOMB_X67_Y51_N6
\Shift|rl2[54]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[54]~49_combout\ = (\B[1]~input_o\ & (\A[56]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|rl2[54]~49_combout\);

-- Location: LCCOMB_X67_Y51_N16
\Shift|rl2[53]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[53]~50_combout\ = (\B[0]~input_o\ & (\Shift|rl2[54]~49_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[53]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[54]~49_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[53]~22_combout\,
	combout => \Shift|rl2[53]~50_combout\);

-- Location: LCCOMB_X65_Y50_N4
\Shift|rl2[49]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~52_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|rl2[49]~52_combout\);

-- Location: LCCOMB_X65_Y50_N10
\Shift|rl2[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~51_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Shift|rl2[49]~51_combout\);

-- Location: LCCOMB_X67_Y50_N16
\Y_R[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~18_combout\ = (\B[2]~input_o\ & (\Shift|rl2[53]~50_combout\)) # (!\B[2]~input_o\ & (((\Shift|rl2[49]~52_combout\) # (\Shift|rl2[49]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[53]~50_combout\,
	datab => \Shift|rl2[49]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[49]~51_combout\,
	combout => \Y_R[1]~18_combout\);

-- Location: LCCOMB_X67_Y50_N24
\Y_R[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~23_combout\ = (\B[3]~input_o\ & ((\Y_R[1]~19_combout\) # ((\Y_R[1]~22_combout\)))) # (!\B[3]~input_o\ & (((\Y_R[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~19_combout\,
	datac => \Y_R[1]~22_combout\,
	datad => \Y_R[1]~18_combout\,
	combout => \Y_R[1]~23_combout\);

-- Location: LCCOMB_X66_Y50_N28
\Y_R[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~24_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~23_combout\)))) # (!\B[4]~input_o\ & ((\Shift|rl4[33]~10_combout\) # ((\Shift|rl4[33]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[33]~10_combout\,
	datab => \Shift|rl4[33]~8_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~23_combout\,
	combout => \Y_R[1]~24_combout\);

-- Location: LCCOMB_X68_Y47_N22
\Y_ShiftOrArith[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~17_combout\ = (\B[5]~input_o\ & (((\Y_R[1]~24_combout\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\Shift|rl4[17]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Shift|rl4[17]~12_combout\,
	datad => \Y_R[1]~24_combout\,
	combout => \Y_ShiftOrArith[1]~17_combout\);

-- Location: LCCOMB_X70_Y44_N22
\Shift|rl2[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~47_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|rl2[10]~47_combout\);

-- Location: LCCOMB_X70_Y44_N8
\Shift|rl2[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~48_combout\ = (\B[0]~input_o\ & (\Shift|rl2[10]~47_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~47_combout\,
	datab => \Shift|rl2[9]~7_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[9]~48_combout\);

-- Location: LCCOMB_X68_Y44_N22
\Shift|rl2[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~45_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|rl2[14]~45_combout\);

-- Location: LCCOMB_X67_Y44_N22
\Shift|rl2[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~46_combout\ = (\B[0]~input_o\ & (\Shift|rl2[14]~45_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[14]~45_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[13]~4_combout\,
	combout => \Shift|rl2[13]~46_combout\);

-- Location: LCCOMB_X67_Y44_N16
\Shift|rl3[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[9]~3_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[13]~46_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[9]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[9]~48_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[13]~46_combout\,
	combout => \Shift|rl3[9]~3_combout\);

-- Location: LCCOMB_X69_Y48_N26
\Shift|rl1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[3]~3_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl1[3]~3_combout\);

-- Location: LCCOMB_X69_Y47_N14
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

-- Location: LCCOMB_X69_Y48_N12
\Y_ShiftOrArith[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~13_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[1]~12_combout\) # ((\B[1]~input_o\ & \Shift|rl1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl1[3]~3_combout\,
	datad => \Y_ShiftOrArith[1]~12_combout\,
	combout => \Y_ShiftOrArith[1]~13_combout\);

-- Location: LCCOMB_X70_Y48_N4
\Shift|rl1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[5]~4_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|rl1[5]~4_combout\);

-- Location: LCCOMB_X70_Y48_N18
\Shift|rl2[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~43_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[8]~input_o\))) # (!\B[0]~input_o\ & (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|rl2[5]~43_combout\);

-- Location: LCCOMB_X69_Y48_N6
\Shift|rl2[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~44_combout\ = (\Shift|rl2[5]~43_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Shift|rl1[5]~4_combout\,
	datad => \Shift|rl2[5]~43_combout\,
	combout => \Shift|rl2[5]~44_combout\);

-- Location: LCCOMB_X69_Y48_N0
\Y_ShiftOrArith[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~14_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[1]~13_combout\) # ((\B[2]~input_o\ & \Shift|rl2[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~13_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[5]~44_combout\,
	combout => \Y_ShiftOrArith[1]~14_combout\);

-- Location: LCCOMB_X68_Y47_N10
\Y_ShiftOrArith[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~15_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~14_combout\) # ((\B[3]~input_o\ & \Shift|rl3[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|rl3[9]~3_combout\,
	datad => \Y_ShiftOrArith[1]~14_combout\,
	combout => \Y_ShiftOrArith[1]~15_combout\);

-- Location: LCCOMB_X69_Y46_N8
\Shift|ll4[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~0_combout\ = (\B[2]~input_o\) # ((\B[3]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll4[1]~0_combout\);

-- Location: LCCOMB_X69_Y47_N4
\Shift|ll1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[1]~0_combout\);

-- Location: LCCOMB_X68_Y47_N14
\Y_ShiftOrArith[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~27_combout\ = (\ShiftFN[0]~input_o\ & (!\Shift|ll4[1]~0_combout\ & (\Shift|ll1[1]~0_combout\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ll4[1]~0_combout\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~27_combout\);

-- Location: LCCOMB_X66_Y49_N8
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

-- Location: LCCOMB_X69_Y47_N2
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \AddnSub~input_o\ $ (\B[1]~input_o\ $ (\Add|C[1]~0_combout\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[1]~input_o\,
	datac => \Add|C[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Add|S\(1));

-- Location: LCCOMB_X68_Y47_N24
\Y_ShiftOrArith[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~10_combout\ = (\Add|S\(1) & (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[1]~10_combout\);

-- Location: LCCOMB_X68_Y47_N12
\Y_ShiftOrArith[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~16_combout\ = (\Y_ShiftOrArith[1]~10_combout\) # ((\Y_ShiftOrArith[1]~11_combout\ & ((\Y_ShiftOrArith[1]~15_combout\) # (\Y_ShiftOrArith[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~15_combout\,
	datab => \Y_ShiftOrArith[1]~27_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Y_ShiftOrArith[1]~10_combout\,
	combout => \Y_ShiftOrArith[1]~16_combout\);

-- Location: LCCOMB_X68_Y47_N8
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~16_combout\) # ((\ShiftFN[1]~input_o\ & \Y_ShiftOrArith[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_ShiftOrArith[1]~17_combout\,
	datad => \Y_ShiftOrArith[1]~16_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X68_Y47_N18
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux62~0_combout\) # ((\Logic|Mux62~0_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux62~0_combout\,
	datab => \Mux62~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X69_Y47_N28
\Add|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[2]~0_combout\ = \AddnSub~input_o\ $ (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add|C[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Add|C[2]~1_combout\,
	combout => \Add|S[2]~0_combout\);

-- Location: LCCOMB_X65_Y47_N0
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\B[5]~input_o\) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X61_Y47_N6
\Shift|rl2[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~83_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[23]~83_combout\);

-- Location: LCCOMB_X61_Y47_N16
\Shift|rl2[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~84_combout\ = (\B[0]~input_o\ & (\Shift|rl2[23]~83_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[22]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~83_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[22]~68_combout\,
	combout => \Shift|rl2[22]~84_combout\);

-- Location: LCCOMB_X63_Y44_N0
\Shift|rl2[19]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~85_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[19]~85_combout\);

-- Location: LCCOMB_X63_Y44_N18
\Shift|rl2[18]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~86_combout\ = (\B[0]~input_o\ & (\Shift|rl2[19]~85_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[18]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[19]~85_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[18]~70_combout\,
	combout => \Shift|rl2[18]~86_combout\);

-- Location: LCCOMB_X61_Y45_N28
\Shift|rl3[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[18]~6_combout\ = (\B[2]~input_o\ & (\Shift|rl2[22]~84_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[18]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[22]~84_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[18]~86_combout\,
	combout => \Shift|rl3[18]~6_combout\);

-- Location: LCCOMB_X60_Y48_N2
\Shift|rl2[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[31]~79_combout\ = (\B[1]~input_o\ & (\A[33]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[31]~79_combout\);

-- Location: LCCOMB_X61_Y48_N26
\Shift|rl2[30]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[30]~80_combout\ = (\B[0]~input_o\ & (\Shift|rl2[31]~79_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[30]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[31]~79_combout\,
	datac => \Shift|rl2[30]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[30]~80_combout\);

-- Location: LCCOMB_X61_Y48_N4
\Shift|rl2[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~81_combout\ = (\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[27]~81_combout\);

-- Location: LCCOMB_X62_Y45_N22
\Shift|rl2[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~82_combout\ = (\B[0]~input_o\ & (\Shift|rl2[27]~81_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[26]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[27]~81_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[26]~66_combout\,
	combout => \Shift|rl2[26]~82_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Shift|rl4[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~13_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[30]~80_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[26]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[30]~80_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[26]~82_combout\,
	combout => \Shift|rl4[18]~13_combout\);

-- Location: LCCOMB_X61_Y45_N22
\Shift|rl4[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~14_combout\ = (\Shift|rl4[18]~13_combout\) # ((\Shift|rl3[18]~6_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl3[18]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[18]~13_combout\,
	combout => \Shift|rl4[18]~14_combout\);

-- Location: LCCOMB_X69_Y48_N10
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X67_Y45_N8
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X70_Y44_N4
\Shift|rl2[7]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~73_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|rl2[7]~73_combout\);

-- Location: LCCOMB_X70_Y44_N2
\Shift|rl2[6]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~72_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[6]~72_combout\);

-- Location: LCCOMB_X69_Y48_N28
\Shift|rl2[6]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~74_combout\ = (\Shift|rl2[6]~72_combout\) # ((\Shift|rl2[7]~73_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[7]~73_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[6]~72_combout\,
	combout => \Shift|rl2[6]~74_combout\);

-- Location: LCCOMB_X69_Y48_N14
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & ((\Shift|rl2[6]~74_combout\))) # (!\Mux60~1_combout\ & (\Shift|rl1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Shift|rl1[2]~0_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|rl2[6]~74_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X67_Y44_N28
\Shift|rl2[15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~75_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Shift|rl2[15]~75_combout\);

-- Location: LCCOMB_X67_Y44_N30
\Shift|rl2[14]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~76_combout\ = (\B[0]~input_o\ & (\Shift|rl2[15]~75_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[14]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[15]~75_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[14]~45_combout\,
	combout => \Shift|rl2[14]~76_combout\);

-- Location: LCCOMB_X68_Y44_N0
\Shift|rl2[11]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~77_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|rl2[11]~77_combout\);

-- Location: LCCOMB_X68_Y44_N26
\Shift|rl2[10]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~78_combout\ = (\B[0]~input_o\ & (\Shift|rl2[11]~77_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[10]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[11]~77_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[10]~47_combout\,
	combout => \Shift|rl2[10]~78_combout\);

-- Location: LCCOMB_X61_Y45_N16
\Shift|rl3[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[10]~5_combout\ = (\B[2]~input_o\ & (\Shift|rl2[14]~76_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[10]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[14]~76_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[10]~78_combout\,
	combout => \Shift|rl3[10]~5_combout\);

-- Location: LCCOMB_X69_Y48_N16
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux60~0_combout\ & ((\Mux61~1_combout\ & (\Shift|rl3[10]~5_combout\)) # (!\Mux61~1_combout\ & ((\Shift|rl1[4]~1_combout\))))) # (!\Mux60~0_combout\ & (\Mux61~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux61~1_combout\,
	datac => \Shift|rl3[10]~5_combout\,
	datad => \Shift|rl1[4]~1_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X69_Y45_N12
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = \B[5]~input_o\ $ (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X67_Y46_N2
\Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux60~4_combout\);

-- Location: LCCOMB_X69_Y47_N16
\Shift|ll2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: LCCOMB_X69_Y47_N26
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

-- Location: LCCOMB_X67_Y47_N22
\Shift|ll5[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[2]~37_combout\ = (\Shift|ll2[2]~1_combout\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll5[2]~37_combout\);

-- Location: LCCOMB_X68_Y51_N12
\Shift|rl2[58]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~100_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[61]~input_o\))) # (!\B[1]~input_o\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|rl2[58]~100_combout\);

-- Location: LCCOMB_X68_Y51_N22
\Shift|rl2[58]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~101_combout\ = (\Shift|rl2[58]~100_combout\) # ((\Shift|rl2[58]~53_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[58]~53_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[58]~100_combout\,
	combout => \Shift|rl2[58]~101_combout\);

-- Location: LCCOMB_X70_Y49_N28
\Y_R[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~26_combout\ = (\B[1]~input_o\ & (((\A[63]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[63]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~26_combout\);

-- Location: LCCOMB_X70_Y49_N6
\Y_R[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~27_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_R[1]~26_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[1]~input_o\ & ((\Shift|rl1[62]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Y_R[1]~26_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~27_combout\);

-- Location: LCCOMB_X70_Y49_N24
\Y_R[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~28_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Y_R[1]~27_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[58]~101_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~27_combout\,
	combout => \Y_R[1]~28_combout\);

-- Location: LCCOMB_X65_Y50_N24
\Shift|rl2[50]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[50]~98_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Shift|rl2[50]~98_combout\);

-- Location: LCCOMB_X65_Y50_N6
\Shift|rl2[51]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[51]~97_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|rl2[51]~97_combout\);

-- Location: LCCOMB_X65_Y50_N18
\Shift|rl2[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[50]~99_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[51]~97_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[50]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[50]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[51]~97_combout\,
	combout => \Shift|rl2[50]~99_combout\);

-- Location: LCCOMB_X67_Y51_N18
\Shift|rl2[55]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[55]~95_combout\ = (\B[1]~input_o\ & ((\A[57]~input_o\))) # (!\B[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shift|rl2[55]~95_combout\);

-- Location: LCCOMB_X67_Y51_N12
\Shift|rl2[54]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[54]~96_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[55]~95_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[54]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[54]~49_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[55]~95_combout\,
	combout => \Shift|rl2[54]~96_combout\);

-- Location: LCCOMB_X61_Y49_N6
\Y_R[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~25_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[54]~96_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[50]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[50]~99_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[54]~96_combout\,
	combout => \Y_R[1]~25_combout\);

-- Location: LCCOMB_X60_Y48_N28
\Shift|rl2[35]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[35]~93_combout\ = (\B[1]~input_o\ & (\A[37]~input_o\)) # (!\B[1]~input_o\ & ((\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Shift|rl2[35]~93_combout\);

-- Location: LCCOMB_X60_Y48_N14
\Shift|rl2[34]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[34]~94_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[35]~93_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[34]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[34]~62_combout\,
	datab => \Shift|rl2[35]~93_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[34]~94_combout\);

-- Location: LCCOMB_X61_Y50_N12
\Shift|rl2[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[43]~91_combout\ = (\B[1]~input_o\ & (\A[45]~input_o\)) # (!\B[1]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[43]~91_combout\);

-- Location: LCCOMB_X61_Y50_N30
\Shift|rl2[42]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[42]~92_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[43]~91_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[42]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[42]~61_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[43]~91_combout\,
	combout => \Shift|rl2[42]~92_combout\);

-- Location: LCCOMB_X61_Y49_N10
\Shift|rl4[34]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[34]~16_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[42]~92_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[34]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[34]~94_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[42]~92_combout\,
	combout => \Shift|rl4[34]~16_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Shift|rl2[47]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[47]~87_combout\ = (\B[1]~input_o\ & (\A[49]~input_o\)) # (!\B[1]~input_o\ & ((\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	combout => \Shift|rl2[47]~87_combout\);

-- Location: LCCOMB_X61_Y50_N18
\Shift|rl2[46]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[46]~88_combout\ = (\B[0]~input_o\ & (\Shift|rl2[47]~87_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[46]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[47]~87_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[46]~55_combout\,
	combout => \Shift|rl2[46]~88_combout\);

-- Location: LCCOMB_X62_Y49_N18
\Shift|rl2[39]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[39]~89_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[39]~89_combout\);

-- Location: LCCOMB_X62_Y49_N4
\Shift|rl2[38]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[38]~90_combout\ = (\B[0]~input_o\ & (\Shift|rl2[39]~89_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[38]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[39]~89_combout\,
	datad => \Shift|rl2[38]~58_combout\,
	combout => \Shift|rl2[38]~90_combout\);

-- Location: LCCOMB_X61_Y49_N16
\Shift|rl4[38]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[38]~15_combout\ = (\B[3]~input_o\ & (\Shift|rl2[46]~88_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[38]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[46]~88_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[38]~90_combout\,
	combout => \Shift|rl4[38]~15_combout\);

-- Location: LCCOMB_X61_Y49_N12
\Shift|rl4[34]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[34]~17_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[38]~15_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[34]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[34]~16_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl4[38]~15_combout\,
	combout => \Shift|rl4[34]~17_combout\);

-- Location: LCCOMB_X69_Y49_N0
\Y_R[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~29_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~28_combout\) # ((\Y_R[1]~25_combout\)))) # (!\B[4]~input_o\ & (((\Shift|rl4[34]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~28_combout\,
	datac => \Y_R[1]~25_combout\,
	datad => \Shift|rl4[34]~17_combout\,
	combout => \Y_R[1]~29_combout\);

-- Location: LCCOMB_X69_Y49_N18
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\Mux60~3_combout\ & (\Mux60~4_combout\)) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~29_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Mux60~4_combout\,
	datac => \Shift|ll5[2]~37_combout\,
	datad => \Y_R[1]~29_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X68_Y49_N12
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\Mux60~2_combout\ & (((\Mux61~3_combout\)))) # (!\Mux60~2_combout\ & ((\Mux61~3_combout\ & (\Shift|rl4[18]~14_combout\)) # (!\Mux61~3_combout\ & ((\Mux61~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[18]~14_combout\,
	datac => \Mux61~2_combout\,
	datad => \Mux61~3_combout\,
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X68_Y49_N22
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux61~4_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux61~4_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[2]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux61~4_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X68_Y49_N10
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\B[2]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[2]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X68_Y49_N8
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux61~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux61~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux61~5_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux61~0_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X61_Y47_N2
\Shift|rl2[23]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~107_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[24]~14_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[23]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~83_combout\,
	datab => \Shift|rl2[24]~14_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[23]~107_combout\);

-- Location: LCCOMB_X63_Y44_N12
\Shift|rl2[19]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~108_combout\ = (\B[0]~input_o\ & (\Shift|rl2[20]~17_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[19]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[20]~17_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[19]~85_combout\,
	combout => \Shift|rl2[19]~108_combout\);

-- Location: LCCOMB_X63_Y48_N26
\Shift|rl3[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[19]~8_combout\ = (\B[2]~input_o\ & (\Shift|rl2[23]~107_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[19]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~107_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[19]~108_combout\,
	combout => \Shift|rl3[19]~8_combout\);

-- Location: LCCOMB_X60_Y48_N24
\Shift|rl2[31]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[31]~105_combout\ = (\B[0]~input_o\ & (\Shift|rl2[32]~37_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[31]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[32]~37_combout\,
	datab => \Shift|rl2[31]~79_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[31]~105_combout\);

-- Location: LCCOMB_X61_Y48_N6
\Shift|rl2[27]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~106_combout\ = (\B[0]~input_o\ & (\Shift|rl2[28]~11_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[27]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[28]~11_combout\,
	datac => \Shift|rl2[27]~81_combout\,
	combout => \Shift|rl2[27]~106_combout\);

-- Location: LCCOMB_X63_Y48_N8
\Shift|rl4[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~18_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[31]~105_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[27]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[31]~105_combout\,
	datac => \Shift|rl2[27]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[19]~18_combout\);

-- Location: LCCOMB_X63_Y48_N28
\Shift|rl4[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~19_combout\ = (\Shift|rl4[19]~18_combout\) # ((\Shift|rl3[19]~8_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[19]~8_combout\,
	datac => \Shift|rl4[19]~18_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[19]~19_combout\);

-- Location: LCCOMB_X62_Y49_N8
\Shift|rl2[35]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[35]~117_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[36]~40_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[35]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|rl2[35]~93_combout\,
	datad => \Shift|rl2[36]~40_combout\,
	combout => \Shift|rl2[35]~117_combout\);

-- Location: LCCOMB_X62_Y50_N18
\Shift|rl2[44]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~115_combout\ = (\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[44]~115_combout\);

-- Location: LCCOMB_X62_Y50_N12
\Shift|rl2[43]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[43]~116_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[44]~115_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[43]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[43]~91_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[44]~115_combout\,
	combout => \Shift|rl2[43]~116_combout\);

-- Location: LCCOMB_X63_Y51_N22
\Shift|rl4[35]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[35]~21_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[43]~116_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[35]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[35]~117_combout\,
	datac => \Shift|rl2[43]~116_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[35]~21_combout\);

-- Location: LCCOMB_X62_Y49_N22
\Shift|rl2[39]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[39]~114_combout\ = (\B[0]~input_o\ & (\Shift|rl2[40]~34_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[39]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|rl2[40]~34_combout\,
	datad => \Shift|rl2[39]~89_combout\,
	combout => \Shift|rl2[39]~114_combout\);

-- Location: LCCOMB_X62_Y50_N0
\Shift|rl2[47]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[47]~113_combout\ = (\B[0]~input_o\ & (\Shift|rl2[48]~26_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[47]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[48]~26_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[47]~87_combout\,
	combout => \Shift|rl2[47]~113_combout\);

-- Location: LCCOMB_X63_Y51_N4
\Shift|rl4[39]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[39]~20_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[47]~113_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[39]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[39]~114_combout\,
	datad => \Shift|rl2[47]~113_combout\,
	combout => \Shift|rl4[39]~20_combout\);

-- Location: LCCOMB_X63_Y51_N16
\Shift|rl4[35]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[35]~22_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[39]~20_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[35]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[35]~21_combout\,
	datab => \Shift|rl4[39]~20_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl4[35]~22_combout\);

-- Location: LCCOMB_X67_Y45_N6
\Y_R[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~31_combout\ = (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_R[1]~31_combout\);

-- Location: LCCOMB_X68_Y51_N18
\Shift|rl1[61]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[61]~5_combout\ = (\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|rl1[61]~5_combout\);

-- Location: LCCOMB_X68_Y51_N24
\Shift|rl2[59]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[59]~111_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[60]~input_o\)) # (!\B[0]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[59]~111_combout\);

-- Location: LCCOMB_X68_Y51_N20
\Shift|rl2[59]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[59]~112_combout\ = (\Shift|rl2[59]~111_combout\) # ((\Shift|rl1[61]~5_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl1[61]~5_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl2[59]~111_combout\,
	combout => \Shift|rl2[59]~112_combout\);

-- Location: LCCOMB_X63_Y51_N26
\Y_R[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~32_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Y_R[1]~31_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[59]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~31_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[59]~112_combout\,
	combout => \Y_R[1]~32_combout\);

-- Location: LCCOMB_X67_Y51_N22
\Shift|rl2[51]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[51]~110_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[52]~23_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[51]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[51]~97_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[52]~23_combout\,
	combout => \Shift|rl2[51]~110_combout\);

-- Location: LCCOMB_X66_Y51_N26
\Shift|rl2[55]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[55]~109_combout\ = (\B[0]~input_o\ & (\Shift|rl2[56]~31_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[55]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[56]~31_combout\,
	datad => \Shift|rl2[55]~95_combout\,
	combout => \Shift|rl2[55]~109_combout\);

-- Location: LCCOMB_X63_Y51_N24
\Y_R[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~30_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[55]~109_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[51]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[51]~110_combout\,
	datac => \Shift|rl2[55]~109_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~30_combout\);

-- Location: LCCOMB_X63_Y51_N2
\Y_R[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~33_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~32_combout\) # (\Y_R[1]~30_combout\)))) # (!\B[4]~input_o\ & (\Shift|rl4[35]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[35]~22_combout\,
	datac => \Y_R[1]~32_combout\,
	datad => \Y_R[1]~30_combout\,
	combout => \Y_R[1]~33_combout\);

-- Location: LCCOMB_X67_Y45_N10
\Shift|ll2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ll2[3]~2_combout\);

-- Location: LCCOMB_X67_Y45_N20
\Shift|ll2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~3_combout\ = (\Shift|ll2[3]~2_combout\) # ((\B[1]~input_o\ & \Shift|ll1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[3]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll1[1]~0_combout\,
	combout => \Shift|ll2[3]~3_combout\);

-- Location: LCCOMB_X66_Y44_N22
\Shift|ll5[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[3]~38_combout\ = (!\B[2]~input_o\ & (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shift|ll2[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll5[3]~38_combout\);

-- Location: LCCOMB_X66_Y48_N24
\Mux60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~8_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~33_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((\Shift|ll5[3]~38_combout\ & !\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~33_combout\,
	datab => \Shift|ll5[3]~38_combout\,
	datac => \Mux60~4_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux60~8_combout\);

-- Location: LCCOMB_X69_Y48_N2
\Shift|rl2[7]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~102_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[8]~8_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[7]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[7]~73_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[8]~8_combout\,
	combout => \Shift|rl2[7]~102_combout\);

-- Location: LCCOMB_X69_Y48_N4
\Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = (\Mux60~1_combout\ & ((\Shift|rl2[7]~102_combout\) # ((\Mux60~0_combout\)))) # (!\Mux60~1_combout\ & (((\Shift|rl1[3]~3_combout\ & !\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Shift|rl2[7]~102_combout\,
	datac => \Shift|rl1[3]~3_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~6_combout\);

-- Location: LCCOMB_X67_Y44_N0
\Shift|rl2[15]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~103_combout\ = (\B[0]~input_o\ & (\Shift|rl2[16]~20_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[15]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[16]~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[15]~75_combout\,
	combout => \Shift|rl2[15]~103_combout\);

-- Location: LCCOMB_X68_Y44_N12
\Shift|rl2[11]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~104_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[12]~5_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[11]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[11]~77_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[12]~5_combout\,
	combout => \Shift|rl2[11]~104_combout\);

-- Location: LCCOMB_X65_Y48_N24
\Shift|rl3[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[11]~7_combout\ = (\B[2]~input_o\ & (\Shift|rl2[15]~103_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[11]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[15]~103_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[11]~104_combout\,
	combout => \Shift|rl3[11]~7_combout\);

-- Location: LCCOMB_X69_Y48_N22
\Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = (\Mux60~0_combout\ & ((\Mux60~6_combout\ & ((\Shift|rl3[11]~7_combout\))) # (!\Mux60~6_combout\ & (\Shift|rl1[5]~4_combout\)))) # (!\Mux60~0_combout\ & (\Mux60~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux60~6_combout\,
	datac => \Shift|rl1[5]~4_combout\,
	datad => \Shift|rl3[11]~7_combout\,
	combout => \Mux60~7_combout\);

-- Location: LCCOMB_X66_Y48_N18
\Mux60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~9_combout\ = (\Mux60~8_combout\ & ((\Shift|rl4[19]~19_combout\) # ((\Mux60~2_combout\)))) # (!\Mux60~8_combout\ & (((!\Mux60~2_combout\ & \Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[19]~19_combout\,
	datab => \Mux60~8_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux60~7_combout\,
	combout => \Mux60~9_combout\);

-- Location: LCCOMB_X69_Y47_N30
\Add|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[3]~1_combout\ = \AddnSub~input_o\ $ (\B[3]~input_o\ $ (\A[3]~input_o\ $ (\Add|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|C[3]~2_combout\,
	combout => \Add|S[3]~1_combout\);

-- Location: LCCOMB_X68_Y49_N4
\Mux60~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~10_combout\ = (\ShiftFN[1]~input_o\ & (\Mux60~9_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux60~9_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~9_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[3]~1_combout\,
	combout => \Mux60~10_combout\);

-- Location: LCCOMB_X68_Y49_N18
\Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = (\B[3]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[3]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux60~5_combout\);

-- Location: LCCOMB_X68_Y49_N30
\Mux60~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~11_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux60~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux60~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux60~10_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux60~5_combout\,
	combout => \Mux60~11_combout\);

-- Location: LCCOMB_X67_Y45_N18
\Shift|ll2[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: LCCOMB_X67_Y45_N24
\Shift|ll2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~4_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ll2[4]~4_combout\);

-- Location: LCCOMB_X67_Y45_N4
\Shift|ll2[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~6_combout\ = (\Shift|ll2[4]~4_combout\) # ((\Shift|ll2[4]~5_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[4]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[4]~4_combout\,
	combout => \Shift|ll2[4]~6_combout\);

-- Location: LCCOMB_X67_Y45_N22
\Shift|ll2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~7_combout\ = (\B[1]~input_o\) # (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[0]~7_combout\);

-- Location: LCCOMB_X66_Y45_N10
\Shift|ll3[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[4]~0_combout\ = (\B[2]~input_o\ & (((\A[0]~input_o\ & !\Shift|ll2[0]~7_combout\)))) # (!\B[2]~input_o\ & (\Shift|ll2[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[4]~6_combout\,
	datab => \A[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[0]~7_combout\,
	combout => \Shift|ll3[4]~0_combout\);

-- Location: LCCOMB_X62_Y46_N6
\Shift|ll5[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[4]~39_combout\ = (\Shift|ll3[4]~0_combout\ & (!\B[4]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[4]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll5[4]~39_combout\);

-- Location: LCCOMB_X66_Y48_N4
\Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~5_combout\ = (!\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux59~5_combout\);

-- Location: LCCOMB_X69_Y49_N20
\Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~6_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\))) # (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux59~6_combout\);

-- Location: LCCOMB_X70_Y48_N14
\Add|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[4]~2_combout\ = \A[4]~input_o\ $ (\AddnSub~input_o\ $ (\B[4]~input_o\ $ (\Add|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[4]~input_o\,
	datad => \Add|C[4]~3_combout\,
	combout => \Add|S[4]~2_combout\);

-- Location: LCCOMB_X62_Y46_N20
\Mux59~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~7_combout\ = (\Mux59~5_combout\ & ((\Mux59~6_combout\ & ((\Add|S[4]~2_combout\))) # (!\Mux59~6_combout\ & (\Shift|ll5[4]~39_combout\)))) # (!\Mux59~5_combout\ & (((\Mux59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[4]~39_combout\,
	datab => \Mux59~5_combout\,
	datac => \Mux59~6_combout\,
	datad => \Add|S[4]~2_combout\,
	combout => \Mux59~7_combout\);

-- Location: LCCOMB_X67_Y47_N8
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\B[4]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X65_Y48_N2
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X63_Y45_N24
\Shift|rl3[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[12]~9_combout\ = (\B[2]~input_o\ & (\Shift|rl2[16]~21_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[16]~21_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[12]~6_combout\,
	combout => \Shift|rl3[12]~9_combout\);

-- Location: LCCOMB_X63_Y45_N10
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux59~2_combout\ & (((\Mux59~1_combout\) # (\Shift|rl3[12]~9_combout\)))) # (!\Mux59~2_combout\ & (\Shift|rl2[4]~3_combout\ & (!\Mux59~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[4]~3_combout\,
	datab => \Mux59~2_combout\,
	datac => \Mux59~1_combout\,
	datad => \Shift|rl3[12]~9_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X63_Y45_N12
\Shift|rl4[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~23_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[32]~38_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[28]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[32]~38_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[28]~12_combout\,
	combout => \Shift|rl4[20]~23_combout\);

-- Location: LCCOMB_X63_Y45_N14
\Shift|rl3[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[20]~10_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[24]~15_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[20]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[20]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[24]~15_combout\,
	combout => \Shift|rl3[20]~10_combout\);

-- Location: LCCOMB_X63_Y45_N0
\Shift|rl4[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~24_combout\ = (\Shift|rl4[20]~23_combout\) # ((\Shift|rl3[20]~10_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[20]~23_combout\,
	datab => \Shift|rl3[20]~10_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|rl4[20]~24_combout\);

-- Location: LCCOMB_X63_Y45_N26
\Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = (\Mux59~3_combout\ & (((\Shift|rl4[20]~24_combout\) # (!\Mux59~1_combout\)))) # (!\Mux59~3_combout\ & (\Shift|rl2[8]~9_combout\ & (\Mux59~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~3_combout\,
	datab => \Shift|rl2[8]~9_combout\,
	datac => \Mux59~1_combout\,
	datad => \Shift|rl4[20]~24_combout\,
	combout => \Mux59~4_combout\);

-- Location: LCCOMB_X61_Y50_N8
\Shift|rl4[40]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[40]~25_combout\ = (\B[3]~input_o\ & (\Shift|rl2[48]~27_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[40]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[48]~27_combout\,
	datac => \Shift|rl2[40]~35_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[40]~25_combout\);

-- Location: LCCOMB_X62_Y49_N26
\Shift|rl2[36]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[36]~119_combout\ = (\B[0]~input_o\ & (\Shift|rl2[37]~39_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[36]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[37]~39_combout\,
	datad => \Shift|rl2[36]~40_combout\,
	combout => \Shift|rl2[36]~119_combout\);

-- Location: LCCOMB_X61_Y50_N10
\Shift|rl2[44]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~118_combout\ = (\B[0]~input_o\ & (\Shift|rl2[45]~56_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[44]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[45]~56_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[44]~115_combout\,
	combout => \Shift|rl2[44]~118_combout\);

-- Location: LCCOMB_X61_Y50_N20
\Shift|rl4[36]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[36]~26_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[44]~118_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[36]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl2[36]~119_combout\,
	datad => \Shift|rl2[44]~118_combout\,
	combout => \Shift|rl4[36]~26_combout\);

-- Location: LCCOMB_X61_Y50_N22
\Shift|rl4[36]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[36]~27_combout\ = (\B[2]~input_o\ & (\Shift|rl4[40]~25_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[36]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[40]~25_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[36]~26_combout\,
	combout => \Shift|rl4[36]~27_combout\);

-- Location: LCCOMB_X62_Y47_N30
\Y_R[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~34_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[56]~32_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[52]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[56]~32_combout\,
	datac => \Shift|rl2[52]~24_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~34_combout\);

-- Location: LCCOMB_X66_Y52_N0
\Y_R[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~35_combout\ = (\ShiftFN[0]~input_o\ & \A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \A[63]~input_o\,
	combout => \Y_R[1]~35_combout\);

-- Location: LCCOMB_X62_Y47_N8
\Y_R[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~36_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Y_R[1]~35_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[60]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~35_combout\,
	combout => \Y_R[1]~36_combout\);

-- Location: LCCOMB_X62_Y46_N18
\Y_R[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~37_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~34_combout\) # (\Y_R[1]~36_combout\)))) # (!\B[4]~input_o\ & (\Shift|rl4[36]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[36]~27_combout\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~34_combout\,
	datad => \Y_R[1]~36_combout\,
	combout => \Y_R[1]~37_combout\);

-- Location: LCCOMB_X62_Y46_N22
\Mux59~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux59~7_combout\ & ((\Y_R[1]~37_combout\))) # (!\Mux59~7_combout\ & (\Mux59~4_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux59~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux59~7_combout\,
	datac => \Mux59~4_combout\,
	datad => \Y_R[1]~37_combout\,
	combout => \Mux59~8_combout\);

-- Location: LCCOMB_X62_Y46_N16
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X62_Y46_N24
\Mux59~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~9_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux59~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux59~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux59~8_combout\,
	datad => \Mux59~0_combout\,
	combout => \Mux59~9_combout\);

-- Location: LCCOMB_X67_Y44_N18
\Shift|rl3[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[13]~11_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[17]~71_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[13]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[13]~46_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[17]~71_combout\,
	combout => \Shift|rl3[13]~11_combout\);

-- Location: LCCOMB_X65_Y48_N28
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux59~2_combout\ & ((\Shift|rl3[13]~11_combout\) # ((\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & (((\Shift|rl2[5]~44_combout\ & !\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~2_combout\,
	datab => \Shift|rl3[13]~11_combout\,
	datac => \Shift|rl2[5]~44_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X67_Y48_N14
\Shift|rl4[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~28_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[33]~63_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[29]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[29]~65_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[33]~63_combout\,
	combout => \Shift|rl4[21]~28_combout\);

-- Location: LCCOMB_X67_Y48_N0
\Shift|rl3[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~12_combout\ = (\B[2]~input_o\ & (\Shift|rl2[25]~67_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[21]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[25]~67_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[21]~69_combout\,
	combout => \Shift|rl3[21]~12_combout\);

-- Location: LCCOMB_X67_Y48_N2
\Shift|rl4[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~29_combout\ = (\Shift|rl4[21]~28_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[21]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[21]~28_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[21]~12_combout\,
	combout => \Shift|rl4[21]~29_combout\);

-- Location: LCCOMB_X65_Y48_N6
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux58~1_combout\ & (((\Shift|rl4[21]~29_combout\) # (!\Mux59~1_combout\)))) # (!\Mux58~1_combout\ & (\Shift|rl2[9]~48_combout\ & ((\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[9]~48_combout\,
	datab => \Mux58~1_combout\,
	datac => \Shift|rl4[21]~29_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X61_Y50_N0
\Shift|rl2[41]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~122_combout\ = (\B[0]~input_o\ & (\Shift|rl2[42]~61_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[41]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[42]~61_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[41]~33_combout\,
	combout => \Shift|rl2[41]~122_combout\);

-- Location: LCCOMB_X65_Y50_N12
\Shift|rl2[49]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~121_combout\ = (\B[0]~input_o\ & (\Shift|rl2[50]~98_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[49]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[50]~98_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[49]~25_combout\,
	combout => \Shift|rl2[49]~121_combout\);

-- Location: LCCOMB_X66_Y50_N10
\Shift|rl4[41]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[41]~30_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[49]~121_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[41]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl2[41]~122_combout\,
	datad => \Shift|rl2[49]~121_combout\,
	combout => \Shift|rl4[41]~30_combout\);

-- Location: LCCOMB_X66_Y50_N12
\Shift|rl4[37]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[37]~31_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[45]~57_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[37]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[37]~59_combout\,
	datad => \Shift|rl2[45]~57_combout\,
	combout => \Shift|rl4[37]~31_combout\);

-- Location: LCCOMB_X66_Y50_N30
\Shift|rl4[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[37]~32_combout\ = (\B[2]~input_o\ & (\Shift|rl4[41]~30_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[37]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[41]~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[37]~31_combout\,
	combout => \Shift|rl4[37]~32_combout\);

-- Location: LCCOMB_X66_Y51_N12
\Shift|rl2[57]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[57]~120_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[58]~53_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[57]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[57]~30_combout\,
	datad => \Shift|rl2[58]~53_combout\,
	combout => \Shift|rl2[57]~120_combout\);

-- Location: LCCOMB_X66_Y50_N6
\Y_R[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~38_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[57]~120_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[53]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[53]~50_combout\,
	datad => \Shift|rl2[57]~120_combout\,
	combout => \Y_R[1]~38_combout\);

-- Location: LCCOMB_X67_Y50_N26
\Shift|ra3[61]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[61]~0_combout\ = (\B[1]~input_o\ & (((\A[63]~input_o\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\A[63]~input_o\))) # (!\B[2]~input_o\ & (\Shift|rl1[61]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|rl1[61]~5_combout\,
	datac => \A[63]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ra3[61]~0_combout\);

-- Location: LCCOMB_X67_Y50_N6
\Shift|rl2[61]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[61]~123_combout\ = (\Y_R[1]~20_combout\) # ((\B[1]~input_o\ & (\A[63]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Y_R[1]~20_combout\,
	datac => \A[63]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[61]~123_combout\);

-- Location: LCCOMB_X67_Y50_N4
\Y_R[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~39_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ra3[61]~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & ((\Shift|rl2[61]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ra3[61]~0_combout\,
	datad => \Shift|rl2[61]~123_combout\,
	combout => \Y_R[1]~39_combout\);

-- Location: LCCOMB_X66_Y50_N8
\Y_R[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~40_combout\ = (\Y_R[1]~38_combout\) # ((\B[3]~input_o\ & \Y_R[1]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~38_combout\,
	datab => \B[3]~input_o\,
	datad => \Y_R[1]~39_combout\,
	combout => \Y_R[1]~40_combout\);

-- Location: LCCOMB_X67_Y46_N22
\Y_R[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~41_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~40_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[37]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[37]~32_combout\,
	datac => \Y_R[1]~40_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~41_combout\);

-- Location: LCCOMB_X67_Y45_N0
\Shift|ll2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~8_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ll2[5]~8_combout\);

-- Location: LCCOMB_X67_Y45_N2
\Shift|ll2[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~9_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[4]~5_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[5]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[4]~5_combout\,
	combout => \Shift|ll2[5]~9_combout\);

-- Location: LCCOMB_X69_Y46_N2
\Shift|ll3[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[5]~1_combout\ = (\B[2]~input_o\ & (\Shift|ll1[1]~0_combout\ & ((!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|ll2[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[1]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[5]~9_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll3[5]~1_combout\);

-- Location: LCCOMB_X67_Y48_N30
\Shift|ll5[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[5]~40_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \Shift|ll3[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll3[5]~1_combout\,
	combout => \Shift|ll5[5]~40_combout\);

-- Location: LCCOMB_X70_Y48_N24
\Add|S[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[5]~3_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\Add|C[5]~4_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Add|C[5]~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[5]~3_combout\);

-- Location: LCCOMB_X67_Y46_N24
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux59~6_combout\ & (((\Add|S[5]~3_combout\) # (!\Mux59~5_combout\)))) # (!\Mux59~6_combout\ & (\Shift|ll5[5]~40_combout\ & ((\Mux59~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~6_combout\,
	datab => \Shift|ll5[5]~40_combout\,
	datac => \Add|S[5]~3_combout\,
	datad => \Mux59~5_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X67_Y46_N26
\Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux58~3_combout\ & ((\Y_R[1]~41_combout\))) # (!\Mux58~3_combout\ & (\Mux58~2_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux58~2_combout\,
	datac => \Y_R[1]~41_combout\,
	datad => \Mux58~3_combout\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X67_Y46_N28
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\B[5]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[5]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X67_Y46_N20
\Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux58~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux58~4_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X70_Y48_N2
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\B[6]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[6]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X61_Y45_N0
\Shift|rl3[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[14]~13_combout\ = (\B[2]~input_o\ & (\Shift|rl2[18]~86_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[14]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[18]~86_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[14]~76_combout\,
	combout => \Shift|rl3[14]~13_combout\);

-- Location: LCCOMB_X65_Y48_N8
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux59~2_combout\ & (((\Shift|rl3[14]~13_combout\) # (\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & (\Shift|rl2[6]~74_combout\ & ((!\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[6]~74_combout\,
	datab => \Shift|rl3[14]~13_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X61_Y45_N2
\Shift|rl4[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~33_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[34]~94_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[30]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[30]~80_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[34]~94_combout\,
	combout => \Shift|rl4[22]~33_combout\);

-- Location: LCCOMB_X61_Y45_N20
\Shift|rl3[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[22]~14_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[26]~82_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[22]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[22]~84_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[26]~82_combout\,
	combout => \Shift|rl3[22]~14_combout\);

-- Location: LCCOMB_X61_Y45_N14
\Shift|rl4[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~34_combout\ = (\Shift|rl4[22]~33_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[22]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[22]~33_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[22]~14_combout\,
	combout => \Shift|rl4[22]~34_combout\);

-- Location: LCCOMB_X65_Y48_N26
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux57~1_combout\ & (((\Shift|rl4[22]~34_combout\) # (!\Mux59~1_combout\)))) # (!\Mux57~1_combout\ & (\Shift|rl2[10]~78_combout\ & ((\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~78_combout\,
	datab => \Mux57~1_combout\,
	datac => \Shift|rl4[22]~34_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X67_Y45_N12
\Shift|ll2[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~10_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[6]~10_combout\);

-- Location: LCCOMB_X67_Y45_N30
\Shift|ll2[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~11_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[5]~8_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~10_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[5]~8_combout\,
	combout => \Shift|ll2[6]~11_combout\);

-- Location: LCCOMB_X67_Y47_N10
\Shift|ll5[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[6]~8_combout\ = (!\Mux59~2_combout\ & ((\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~11_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[2]~1_combout\,
	datad => \Mux59~2_combout\,
	combout => \Shift|ll5[6]~8_combout\);

-- Location: LCCOMB_X70_Y48_N12
\Add|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[6]~4_combout\ = \Add|C[6]~5_combout\ $ (\AddnSub~input_o\ $ (\B[6]~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[6]~5_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Add|S[6]~4_combout\);

-- Location: LCCOMB_X66_Y48_N16
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux59~6_combout\ & (((\Add|S[6]~4_combout\) # (!\Mux59~5_combout\)))) # (!\Mux59~6_combout\ & (\Shift|ll5[6]~8_combout\ & (\Mux59~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~6_combout\,
	datab => \Shift|ll5[6]~8_combout\,
	datac => \Mux59~5_combout\,
	datad => \Add|S[6]~4_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X70_Y49_N20
\Y_R[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~43_combout\ = (!\B[2]~input_o\ & (!\B[1]~input_o\ & (!\ShiftFN[0]~input_o\ & \Shift|rl1[62]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~43_combout\);

-- Location: LCCOMB_X66_Y45_N4
\Shift|ll3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[0]~2_combout\ = (\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll3[0]~2_combout\);

-- Location: LCCOMB_X70_Y49_N22
\Y_R[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~44_combout\ = (\ShiftFN[0]~input_o\ & ((\Shift|ll3[0]~2_combout\ & ((\A[63]~input_o\))) # (!\Shift|ll3[0]~2_combout\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ll3[0]~2_combout\,
	datac => \A[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~44_combout\);

-- Location: LCCOMB_X70_Y49_N10
\Y_R[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~42_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[58]~101_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[54]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[54]~96_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[58]~101_combout\,
	combout => \Y_R[1]~42_combout\);

-- Location: LCCOMB_X70_Y49_N8
\Y_R[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~45_combout\ = (\Y_R[1]~42_combout\) # ((\B[3]~input_o\ & ((\Y_R[1]~43_combout\) # (\Y_R[1]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~43_combout\,
	datac => \Y_R[1]~44_combout\,
	datad => \Y_R[1]~42_combout\,
	combout => \Y_R[1]~45_combout\);

-- Location: LCCOMB_X61_Y49_N8
\Shift|rl4[42]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[42]~35_combout\ = (\B[3]~input_o\ & (\Shift|rl2[50]~99_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[42]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[50]~99_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[42]~92_combout\,
	combout => \Shift|rl4[42]~35_combout\);

-- Location: LCCOMB_X61_Y49_N26
\Shift|rl4[38]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[38]~36_combout\ = (\B[2]~input_o\ & (\Shift|rl4[42]~35_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[38]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[42]~35_combout\,
	datad => \Shift|rl4[38]~15_combout\,
	combout => \Shift|rl4[38]~36_combout\);

-- Location: LCCOMB_X66_Y48_N30
\Y_R[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~46_combout\ = (\B[4]~input_o\ & (\Y_R[1]~45_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[38]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~45_combout\,
	datac => \Shift|rl4[38]~36_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~46_combout\);

-- Location: LCCOMB_X66_Y48_N10
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\Mux57~3_combout\ & (((\Y_R[1]~46_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux57~3_combout\ & (\Mux57~2_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~2_combout\,
	datab => \Mux57~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_R[1]~46_combout\,
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X66_Y48_N20
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux57~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux57~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux57~4_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X63_Y48_N6
\Shift|rl3[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[15]~15_combout\ = (\B[2]~input_o\ & (\Shift|rl2[19]~108_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[15]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[19]~108_combout\,
	datab => \Shift|rl2[15]~103_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl3[15]~15_combout\);

-- Location: LCCOMB_X65_Y48_N20
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux59~2_combout\ & ((\Shift|rl3[15]~15_combout\) # ((\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & (((\Shift|rl2[7]~102_combout\ & !\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[15]~15_combout\,
	datab => \Shift|rl2[7]~102_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X63_Y48_N10
\Shift|rl3[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[23]~16_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[27]~106_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[23]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~107_combout\,
	datab => \Shift|rl2[27]~106_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl3[23]~16_combout\);

-- Location: LCCOMB_X63_Y48_N24
\Shift|rl4[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~37_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[35]~117_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[31]~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[35]~117_combout\,
	datab => \Shift|rl2[31]~105_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[23]~37_combout\);

-- Location: LCCOMB_X63_Y48_N20
\Shift|rl4[23]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~38_combout\ = (\Shift|rl4[23]~37_combout\) # ((\Shift|rl3[23]~16_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[23]~16_combout\,
	datab => \Shift|rl4[23]~37_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[23]~38_combout\);

-- Location: LCCOMB_X65_Y48_N14
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux56~1_combout\ & (((\Shift|rl4[23]~38_combout\) # (!\Mux59~1_combout\)))) # (!\Mux56~1_combout\ & (\Shift|rl2[11]~104_combout\ & ((\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[11]~104_combout\,
	datab => \Mux56~1_combout\,
	datac => \Shift|rl4[23]~38_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X63_Y51_N18
\Shift|rl4[43]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[43]~39_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[51]~110_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[43]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[43]~116_combout\,
	datac => \Shift|rl2[51]~110_combout\,
	combout => \Shift|rl4[43]~39_combout\);

-- Location: LCCOMB_X63_Y51_N12
\Shift|rl4[39]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[39]~40_combout\ = (\B[2]~input_o\ & (\Shift|rl4[43]~39_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[39]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[43]~39_combout\,
	datac => \Shift|rl4[39]~20_combout\,
	combout => \Shift|rl4[39]~40_combout\);

-- Location: LCCOMB_X63_Y51_N28
\Y_R[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~47_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[59]~112_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[55]~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[59]~112_combout\,
	datac => \Shift|rl2[55]~109_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~47_combout\);

-- Location: LCCOMB_X63_Y51_N6
\Y_R[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~48_combout\ = (\ShiftFN[0]~input_o\) # ((!\B[2]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~48_combout\);

-- Location: LCCOMB_X63_Y51_N0
\Y_R[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~49_combout\ = (\Y_R[1]~47_combout\) # ((\B[3]~input_o\ & (\A[63]~input_o\ & \Y_R[1]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~47_combout\,
	datac => \A[63]~input_o\,
	datad => \Y_R[1]~48_combout\,
	combout => \Y_R[1]~49_combout\);

-- Location: LCCOMB_X66_Y52_N26
\Y_R[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~50_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~49_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[39]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|rl4[39]~40_combout\,
	datad => \Y_R[1]~49_combout\,
	combout => \Y_R[1]~50_combout\);

-- Location: LCCOMB_X70_Y48_N26
\Add|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[7]~5_combout\ = \A[7]~input_o\ $ (\Add|C[7]~6_combout\ $ (\B[7]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[7]~5_combout\);

-- Location: LCCOMB_X70_Y48_N16
\Shift|ll2[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~12_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ll2[7]~12_combout\);

-- Location: LCCOMB_X67_Y45_N16
\Shift|ll2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~13_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[6]~10_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~12_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[6]~10_combout\,
	combout => \Shift|ll2[7]~13_combout\);

-- Location: LCCOMB_X66_Y44_N8
\Shift|ll5[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[7]~9_combout\ = (!\Mux59~2_combout\ & ((\B[2]~input_o\ & ((\Shift|ll2[3]~3_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~13_combout\,
	datab => \B[2]~input_o\,
	datac => \Mux59~2_combout\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll5[7]~9_combout\);

-- Location: LCCOMB_X66_Y48_N6
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux59~5_combout\ & ((\Mux59~6_combout\ & (\Add|S[7]~5_combout\)) # (!\Mux59~6_combout\ & ((\Shift|ll5[7]~9_combout\))))) # (!\Mux59~5_combout\ & (((\Mux59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[7]~5_combout\,
	datab => \Mux59~5_combout\,
	datac => \Mux59~6_combout\,
	datad => \Shift|ll5[7]~9_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X66_Y48_N8
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux56~3_combout\ & ((\Y_R[1]~50_combout\))) # (!\Mux56~3_combout\ & (\Mux56~2_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_R[1]~50_combout\,
	datad => \Mux56~3_combout\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X70_Y48_N22
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X66_Y48_N2
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux56~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux56~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X69_Y45_N6
\Add|S[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[8]~6_combout\ = \Add|C[8]~7_combout\ $ (\AddnSub~input_o\ $ (\B[8]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[8]~7_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|S[8]~6_combout\);

-- Location: LCCOMB_X63_Y45_N30
\Shift|rl4[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~42_combout\ = (\B[3]~input_o\ & (\Shift|rl2[36]~119_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[28]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[36]~119_combout\,
	datad => \Shift|rl2[28]~12_combout\,
	combout => \Shift|rl4[28]~42_combout\);

-- Location: LCCOMB_X63_Y45_N4
\Shift|rl4[24]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~41_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[32]~38_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[24]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[32]~38_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[24]~15_combout\,
	combout => \Shift|rl4[24]~41_combout\);

-- Location: LCCOMB_X63_Y45_N8
\Shift|rl4[24]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~43_combout\ = (\Shift|rl4[24]~41_combout\) # ((\Shift|rl4[28]~42_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[28]~42_combout\,
	datab => \Shift|rl4[24]~41_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl4[24]~43_combout\);

-- Location: LCCOMB_X62_Y47_N18
\Y_R[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~51_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[56]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~35_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[56]~2_combout\,
	combout => \Y_R[1]~51_combout\);

-- Location: LCCOMB_X62_Y47_N12
\Shift|rl4[44]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~44_combout\ = (\B[3]~input_o\ & (((\Shift|rl2[52]~24_combout\)))) # (!\B[3]~input_o\ & ((\Shift|rl2[44]~42_combout\) # ((\Shift|rl2[44]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[44]~42_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[52]~24_combout\,
	datad => \Shift|rl2[44]~41_combout\,
	combout => \Shift|rl4[44]~44_combout\);

-- Location: LCCOMB_X62_Y47_N6
\Shift|rl4[40]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[40]~45_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[44]~44_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[40]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[40]~25_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[44]~44_combout\,
	combout => \Shift|rl4[40]~45_combout\);

-- Location: LCCOMB_X62_Y47_N0
\Y_R[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~52_combout\ = (\Y_R[1]~51_combout\) # ((!\B[4]~input_o\ & \Shift|rl4[40]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~51_combout\,
	datad => \Shift|rl4[40]~45_combout\,
	combout => \Y_R[1]~52_combout\);

-- Location: LCCOMB_X66_Y49_N2
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\B[5]~input_o\) # ((!\B[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X63_Y49_N18
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux54~1_combout\ & (((\Shift|rl3[16]~1_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (\Shift|rl3[8]~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[8]~0_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|rl3[16]~1_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X63_Y49_N28
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux55~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux55~0_combout\ & ((\Y_R[1]~52_combout\))) # (!\Mux55~0_combout\ & (\Shift|rl4[24]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|rl4[24]~43_combout\,
	datac => \Y_R[1]~52_combout\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X69_Y45_N2
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\B[8]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[8]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X69_Y45_N30
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X69_Y45_N28
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X69_Y45_N24
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux54~3_combout\ & (((\Mux55~2_combout\) # (!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (\Mux55~1_combout\ & ((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \Mux55~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X69_Y45_N8
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (!\ShiftFN[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X70_Y44_N14
\Shift|ll2[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~14_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	combout => \Shift|ll2[8]~14_combout\);

-- Location: LCCOMB_X66_Y45_N14
\Shift|ll2[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~15_combout\ = (\B[0]~input_o\ & (\Shift|ll2[7]~12_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[7]~12_combout\,
	datac => \Shift|ll2[8]~14_combout\,
	combout => \Shift|ll2[8]~15_combout\);

-- Location: LCCOMB_X66_Y45_N24
\Shift|ll4[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~1_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[4]~6_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[8]~15_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[4]~6_combout\,
	combout => \Shift|ll4[8]~1_combout\);

-- Location: LCCOMB_X66_Y45_N18
\Shift|ll4[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~2_combout\ = (\Shift|ll4[8]~1_combout\) # ((!\Shift|ll3[0]~2_combout\ & (\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[0]~2_combout\,
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[8]~1_combout\,
	combout => \Shift|ll4[8]~2_combout\);

-- Location: LCCOMB_X65_Y45_N24
\Shift|ll5[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[8]~10_combout\ = (!\B[4]~input_o\ & \Shift|ll4[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[8]~2_combout\,
	combout => \Shift|ll5[8]~10_combout\);

-- Location: LCCOMB_X69_Y45_N10
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\Mux55~3_combout\ & ((\Add|S[8]~6_combout\) # ((!\Mux54~0_combout\)))) # (!\Mux55~3_combout\ & (((\Mux54~0_combout\ & \Shift|ll5[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[8]~6_combout\,
	datab => \Mux55~3_combout\,
	datac => \Mux54~0_combout\,
	datad => \Shift|ll5[8]~10_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X69_Y45_N20
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux55~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux55~4_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X67_Y48_N28
\Shift|rl4[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~46_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[33]~63_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[25]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[33]~63_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[25]~67_combout\,
	combout => \Shift|rl4[25]~46_combout\);

-- Location: LCCOMB_X67_Y48_N6
\Shift|rl4[29]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~47_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[37]~59_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[29]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[29]~65_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[37]~59_combout\,
	combout => \Shift|rl4[29]~47_combout\);

-- Location: LCCOMB_X67_Y48_N8
\Shift|rl4[25]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~48_combout\ = (\Shift|rl4[25]~46_combout\) # ((\B[2]~input_o\ & \Shift|rl4[29]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[25]~46_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[29]~47_combout\,
	combout => \Shift|rl4[25]~48_combout\);

-- Location: LCCOMB_X68_Y47_N20
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\Mux54~1_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[9]~3_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[25]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[9]~3_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl4[25]~48_combout\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X67_Y50_N2
\Y_R[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~54_combout\ = (\Y_R[1]~19_combout\) # ((\B[2]~input_o\ & \Shift|rl2[61]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_R[1]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[61]~123_combout\,
	combout => \Y_R[1]~54_combout\);

-- Location: LCCOMB_X67_Y50_N30
\Shift|ra3[57]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[57]~1_combout\ = (\Y_R[1]~19_combout\) # ((\B[2]~input_o\ & ((\Shift|rl2[61]~54_combout\) # (\Y_R[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[61]~54_combout\,
	datab => \Y_R[1]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~20_combout\,
	combout => \Shift|ra3[57]~1_combout\);

-- Location: LCCOMB_X67_Y50_N0
\Y_R[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~53_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ra3[57]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ra3[57]~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~53_combout\);

-- Location: LCCOMB_X67_Y50_N20
\Y_R[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~55_combout\ = (\Y_R[1]~53_combout\) # ((!\B[3]~input_o\ & (\Y_R[1]~54_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~54_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~53_combout\,
	combout => \Y_R[1]~55_combout\);

-- Location: LCCOMB_X66_Y50_N0
\Shift|rl4[45]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~49_combout\ = (\B[3]~input_o\ & (\Shift|rl2[53]~50_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[45]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl2[53]~50_combout\,
	datad => \Shift|rl2[45]~57_combout\,
	combout => \Shift|rl4[45]~49_combout\);

-- Location: LCCOMB_X66_Y50_N2
\Shift|rl4[41]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[41]~50_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[45]~49_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[41]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[41]~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[45]~49_combout\,
	combout => \Shift|rl4[41]~50_combout\);

-- Location: LCCOMB_X68_Y47_N6
\Y_R[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~56_combout\ = (\B[4]~input_o\ & (\Y_R[1]~55_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[41]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~55_combout\,
	datac => \Shift|rl4[41]~50_combout\,
	combout => \Y_R[1]~56_combout\);

-- Location: LCCOMB_X68_Y47_N16
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (\Mux54~4_combout\ & (((\Y_R[1]~56_combout\) # (!\Mux54~1_combout\)))) # (!\Mux54~4_combout\ & (\Shift|rl3[17]~4_combout\ & (\Mux54~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[17]~4_combout\,
	datab => \Mux54~4_combout\,
	datac => \Mux54~1_combout\,
	datad => \Y_R[1]~56_combout\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X69_Y44_N0
\Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (\B[9]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[9]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X69_Y44_N26
\Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~7_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & ((\Mux54~6_combout\))) # (!\Mux54~3_combout\ & (\Mux54~5_combout\)))) # (!\Mux54~2_combout\ & (((\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Mux54~5_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux54~6_combout\,
	combout => \Mux54~7_combout\);

-- Location: LCCOMB_X70_Y44_N0
\Shift|ll2[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~16_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|ll2[9]~16_combout\);

-- Location: LCCOMB_X70_Y44_N10
\Shift|ll2[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~17_combout\ = (\B[0]~input_o\ & (\Shift|ll2[8]~14_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[8]~14_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[9]~16_combout\,
	combout => \Shift|ll2[9]~17_combout\);

-- Location: LCCOMB_X69_Y46_N12
\Shift|ll4[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~3_combout\ = (\B[3]~input_o\ & (!\B[1]~input_o\ & (\Shift|ll1[1]~0_combout\))) # (!\B[3]~input_o\ & (((\Shift|ll2[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \Shift|ll2[9]~17_combout\,
	combout => \Shift|ll4[9]~3_combout\);

-- Location: LCCOMB_X69_Y46_N30
\Shift|ll4[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~4_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ll2[5]~9_combout\))) # (!\B[2]~input_o\ & (((\Shift|ll4[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[5]~9_combout\,
	datad => \Shift|ll4[9]~3_combout\,
	combout => \Shift|ll4[9]~4_combout\);

-- Location: LCCOMB_X65_Y45_N26
\Shift|ll5[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[9]~11_combout\ = (!\B[4]~input_o\ & \Shift|ll4[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[9]~4_combout\,
	combout => \Shift|ll5[9]~11_combout\);

-- Location: LCCOMB_X69_Y44_N22
\Add|S[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[9]~7_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\ $ (\A[9]~input_o\ $ (\Add|C[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[9]~input_o\,
	datad => \Add|C[9]~8_combout\,
	combout => \Add|S[9]~7_combout\);

-- Location: LCCOMB_X69_Y44_N28
\Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~8_combout\ = (\Mux54~7_combout\ & (((\Add|S[9]~7_combout\) # (!\Mux54~0_combout\)))) # (!\Mux54~7_combout\ & (\Shift|ll5[9]~11_combout\ & ((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~7_combout\,
	datab => \Shift|ll5[9]~11_combout\,
	datac => \Add|S[9]~7_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~8_combout\);

-- Location: LCCOMB_X62_Y45_N0
\Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux54~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux54~8_combout\,
	combout => \Mux54~9_combout\);

-- Location: LCCOMB_X69_Y44_N6
\Add|S[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[10]~8_combout\ = \AddnSub~input_o\ $ (\B[10]~input_o\ $ (\Add|C[10]~9_combout\ $ (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[10]~input_o\,
	datac => \Add|C[10]~9_combout\,
	datad => \A[10]~input_o\,
	combout => \Add|S[10]~8_combout\);

-- Location: LCCOMB_X61_Y49_N22
\Shift|rl4[46]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~54_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[54]~96_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[46]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[46]~88_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[54]~96_combout\,
	combout => \Shift|rl4[46]~54_combout\);

-- Location: LCCOMB_X61_Y49_N24
\Shift|rl4[42]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[42]~55_combout\ = (\B[2]~input_o\ & (\Shift|rl4[46]~54_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[42]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[46]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[42]~35_combout\,
	combout => \Shift|rl4[42]~55_combout\);

-- Location: LCCOMB_X70_Y49_N14
\Y_R[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~58_combout\ = (\B[2]~input_o\ & (((!\B[1]~input_o\ & \Shift|rl1[62]~2_combout\)))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[58]~101_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~58_combout\);

-- Location: LCCOMB_X70_Y49_N26
\Shift|ra3[58]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[58]~2_combout\ = (\B[2]~input_o\ & ((\Y_R[1]~26_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[58]~101_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~26_combout\,
	combout => \Shift|ra3[58]~2_combout\);

-- Location: LCCOMB_X70_Y49_N12
\Y_R[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~57_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ra3[58]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ra3[58]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~57_combout\);

-- Location: LCCOMB_X70_Y49_N0
\Y_R[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~59_combout\ = (\Y_R[1]~57_combout\) # ((!\B[3]~input_o\ & (\Y_R[1]~58_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~58_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~57_combout\,
	combout => \Y_R[1]~59_combout\);

-- Location: LCCOMB_X65_Y49_N8
\Y_R[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~60_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~59_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[42]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[42]~55_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~59_combout\,
	combout => \Y_R[1]~60_combout\);

-- Location: LCCOMB_X61_Y49_N28
\Shift|rl4[30]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~52_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[38]~90_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[30]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[30]~80_combout\,
	datad => \Shift|rl2[38]~90_combout\,
	combout => \Shift|rl4[30]~52_combout\);

-- Location: LCCOMB_X61_Y45_N8
\Shift|rl4[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~51_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[34]~94_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[26]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[26]~82_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[34]~94_combout\,
	combout => \Shift|rl4[26]~51_combout\);

-- Location: LCCOMB_X61_Y45_N18
\Shift|rl4[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~53_combout\ = (\Shift|rl4[26]~51_combout\) # ((\B[2]~input_o\ & \Shift|rl4[30]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[30]~52_combout\,
	datac => \Shift|rl4[26]~51_combout\,
	combout => \Shift|rl4[26]~53_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux54~1_combout\ & (((\Shift|rl3[18]~6_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (\Shift|rl3[10]~5_combout\ & (\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|rl3[10]~5_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl3[18]~6_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X61_Y45_N30
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux53~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux53~0_combout\ & (\Y_R[1]~60_combout\)) # (!\Mux53~0_combout\ & ((\Shift|rl4[26]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~60_combout\,
	datab => \Shift|rl4[26]~53_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X69_Y44_N16
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\B[10]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[10]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X69_Y44_N2
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux54~3_combout\ & (((\Mux53~2_combout\) # (!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (\Mux53~1_combout\ & ((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~1_combout\,
	datab => \Mux53~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X70_Y44_N12
\Shift|ll2[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~18_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ll2[10]~18_combout\);

-- Location: LCCOMB_X70_Y44_N30
\Shift|ll2[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~19_combout\ = (\B[0]~input_o\ & (\Shift|ll2[9]~16_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[9]~16_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[10]~18_combout\,
	combout => \Shift|ll2[10]~19_combout\);

-- Location: LCCOMB_X67_Y47_N14
\Shift|ll4[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~6_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[2]~1_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[10]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[10]~19_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[10]~6_combout\);

-- Location: LCCOMB_X67_Y47_N12
\Shift|ll4[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~5_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & \Shift|ll2[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[6]~11_combout\,
	combout => \Shift|ll4[10]~5_combout\);

-- Location: LCCOMB_X67_Y47_N16
\Shift|ll5[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[10]~12_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[10]~6_combout\) # (\Shift|ll4[10]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[10]~6_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[10]~5_combout\,
	combout => \Shift|ll5[10]~12_combout\);

-- Location: LCCOMB_X69_Y44_N20
\Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux53~3_combout\ & ((\Add|S[10]~8_combout\) # ((!\Mux54~0_combout\)))) # (!\Mux53~3_combout\ & (((\Shift|ll5[10]~12_combout\ & \Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[10]~8_combout\,
	datab => \Mux53~3_combout\,
	datac => \Shift|ll5[10]~12_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux53~4_combout\);

-- Location: LCCOMB_X62_Y45_N26
\Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~5_combout\ = (\Mux53~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux53~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux53~5_combout\);

-- Location: LCCOMB_X66_Y44_N2
\Shift|ll4[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~7_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & \Shift|ll2[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[7]~13_combout\,
	combout => \Shift|ll4[11]~7_combout\);

-- Location: LCCOMB_X70_Y44_N16
\Shift|ll2[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~20_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|ll2[12]~20_combout\);

-- Location: LCCOMB_X70_Y44_N26
\Shift|ll2[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~21_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[10]~18_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[12]~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[10]~18_combout\,
	combout => \Shift|ll2[11]~21_combout\);

-- Location: LCCOMB_X66_Y44_N28
\Shift|ll4[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~8_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[3]~3_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[11]~21_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll4[11]~8_combout\);

-- Location: LCCOMB_X68_Y48_N18
\Shift|ll5[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[11]~13_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[11]~7_combout\) # (\Shift|ll4[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[11]~7_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[11]~8_combout\,
	combout => \Shift|ll5[11]~13_combout\);

-- Location: LCCOMB_X63_Y48_N30
\Shift|rl4[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~56_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[35]~117_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[27]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[27]~106_combout\,
	datac => \Shift|rl2[35]~117_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[27]~56_combout\);

-- Location: LCCOMB_X63_Y48_N16
\Shift|rl4[31]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[31]~57_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[39]~114_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[31]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[31]~105_combout\,
	datac => \Shift|rl2[39]~114_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[31]~57_combout\);

-- Location: LCCOMB_X63_Y48_N2
\Shift|rl4[27]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~58_combout\ = (\Shift|rl4[27]~56_combout\) # ((\Shift|rl4[31]~57_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[27]~56_combout\,
	datab => \Shift|rl4[31]~57_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl4[27]~58_combout\);

-- Location: LCCOMB_X63_Y48_N4
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Shift|rl3[11]~7_combout\ & !\Mux54~1_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[27]~58_combout\) # ((\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|rl4[27]~58_combout\,
	datac => \Shift|rl3[11]~7_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X63_Y51_N14
\Shift|rl4[47]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~60_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[55]~109_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[47]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[47]~113_combout\,
	datac => \Shift|rl2[55]~109_combout\,
	combout => \Shift|rl4[47]~60_combout\);

-- Location: LCCOMB_X63_Y51_N8
\Shift|rl4[43]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[43]~61_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[47]~60_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[43]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[43]~39_combout\,
	datac => \Shift|rl4[47]~60_combout\,
	combout => \Shift|rl4[43]~61_combout\);

-- Location: LCCOMB_X67_Y45_N26
\Y_R[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~61_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux60~1_combout\ & (\A[63]~input_o\)) # (!\Mux60~1_combout\ & ((\Shift|rl2[59]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux60~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl2[59]~112_combout\,
	combout => \Y_R[1]~61_combout\);

-- Location: LCCOMB_X67_Y45_N28
\Shift|rl4[59]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[59]~59_combout\ = (\B[2]~input_o\ & (!\Shift|ll2[0]~7_combout\ & ((\A[63]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|rl2[59]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[0]~7_combout\,
	datab => \Shift|rl2[59]~112_combout\,
	datac => \A[63]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[59]~59_combout\);

-- Location: LCCOMB_X67_Y45_N14
\Y_R[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~62_combout\ = (\Y_R[1]~61_combout\) # ((!\B[3]~input_o\ & (!\ShiftFN[0]~input_o\ & \Shift|rl4[59]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~61_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl4[59]~59_combout\,
	combout => \Y_R[1]~62_combout\);

-- Location: LCCOMB_X67_Y48_N10
\Y_R[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~63_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~62_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[43]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[43]~61_combout\,
	datac => \Y_R[1]~62_combout\,
	combout => \Y_R[1]~63_combout\);

-- Location: LCCOMB_X63_Y48_N22
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux52~0_combout\ & (((\Y_R[1]~63_combout\)) # (!\Mux54~1_combout\))) # (!\Mux52~0_combout\ & (\Mux54~1_combout\ & (\Shift|rl3[19]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|rl3[19]~8_combout\,
	datad => \Y_R[1]~63_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X69_Y44_N24
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\B[11]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[11]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X69_Y44_N18
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & ((\Mux52~2_combout\))) # (!\Mux54~3_combout\ & (\Mux52~1_combout\)))) # (!\Mux54~2_combout\ & (((\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Mux52~1_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux52~2_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X69_Y44_N14
\Add|S[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[11]~9_combout\ = \Add|C[11]~10_combout\ $ (\A[11]~input_o\ $ (\AddnSub~input_o\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add|S[11]~9_combout\);

-- Location: LCCOMB_X69_Y44_N12
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\Mux52~3_combout\ & (((\Add|S[11]~9_combout\) # (!\Mux54~0_combout\)))) # (!\Mux52~3_combout\ & (\Shift|ll5[11]~13_combout\ & ((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[11]~13_combout\,
	datab => \Mux52~3_combout\,
	datac => \Add|S[11]~9_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X73_Y54_N0
\Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux52~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux52~4_combout\,
	combout => \Mux52~5_combout\);

-- Location: LCCOMB_X69_Y45_N22
\Add|S[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[12]~10_combout\ = \B[12]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[12]~11_combout\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[12]~11_combout\,
	datad => \A[12]~input_o\,
	combout => \Add|S[12]~10_combout\);

-- Location: LCCOMB_X70_Y44_N28
\Shift|ll2[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~22_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ll2[13]~22_combout\);

-- Location: LCCOMB_X70_Y44_N6
\Shift|ll2[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~23_combout\ = (\B[0]~input_o\ & (\Shift|ll2[12]~20_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[13]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[12]~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[13]~22_combout\,
	combout => \Shift|ll2[12]~23_combout\);

-- Location: LCCOMB_X66_Y45_N28
\Shift|ll4[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~9_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[8]~15_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[12]~23_combout\,
	datac => \Shift|ll2[8]~15_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[12]~9_combout\);

-- Location: LCCOMB_X66_Y46_N28
\Shift|ll5[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[12]~14_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[12]~9_combout\) # ((\B[3]~input_o\ & \Shift|ll3[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[4]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[12]~9_combout\,
	combout => \Shift|ll5[12]~14_combout\);

-- Location: LCCOMB_X62_Y47_N28
\Shift|rl4[44]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~63_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[56]~32_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[48]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[56]~32_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[48]~27_combout\,
	combout => \Shift|rl4[44]~63_combout\);

-- Location: LCCOMB_X62_Y47_N14
\Shift|rl4[44]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~64_combout\ = (\Shift|rl4[44]~63_combout\) # ((!\B[2]~input_o\ & \Shift|rl4[44]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[44]~63_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[44]~44_combout\,
	combout => \Shift|rl4[44]~64_combout\);

-- Location: LCCOMB_X62_Y47_N26
\Y_R[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~64_combout\ = (\B[4]~input_o\ & ((\Mux60~1_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux60~1_combout\ & ((\Shift|rl2[60]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Shift|rl2[60]~29_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~64_combout\);

-- Location: LCCOMB_X62_Y47_N24
\Y_R[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~65_combout\ = (\Y_R[1]~64_combout\) # ((!\B[4]~input_o\ & \Shift|rl4[44]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[44]~64_combout\,
	datac => \Y_R[1]~64_combout\,
	combout => \Y_R[1]~65_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Shift|rl4[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~62_combout\ = (\B[2]~input_o\ & (\Shift|rl4[32]~4_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[28]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[32]~4_combout\,
	datac => \Shift|rl4[28]~42_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[28]~62_combout\);

-- Location: LCCOMB_X63_Y45_N20
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux54~1_combout\ & (\Shift|rl3[20]~10_combout\)) # (!\Mux54~1_combout\ & ((\Shift|rl3[12]~9_combout\))))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Mux54~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|rl3[20]~10_combout\,
	datad => \Shift|rl3[12]~9_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X63_Y45_N6
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux51~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux51~0_combout\ & (\Y_R[1]~65_combout\)) # (!\Mux51~0_combout\ & ((\Shift|rl4[28]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~65_combout\,
	datab => \Shift|rl4[28]~62_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X69_Y45_N0
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\B[12]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[12]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X69_Y45_N26
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux54~3_combout\ & (((\Mux51~2_combout\) # (!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (\Mux51~1_combout\ & ((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~1_combout\,
	datab => \Mux51~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X69_Y45_N4
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (\Mux54~0_combout\ & ((\Mux51~3_combout\ & (\Add|S[12]~10_combout\)) # (!\Mux51~3_combout\ & ((\Shift|ll5[12]~14_combout\))))) # (!\Mux54~0_combout\ & (((\Mux51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[12]~10_combout\,
	datab => \Shift|ll5[12]~14_combout\,
	datac => \Mux54~0_combout\,
	datad => \Mux51~3_combout\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X62_Y45_N4
\Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux51~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux51~4_combout\,
	combout => \Mux51~5_combout\);

-- Location: LCCOMB_X68_Y45_N6
\Add|S[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[13]~11_combout\ = \A[13]~input_o\ $ (\AddnSub~input_o\ $ (\B[13]~input_o\ $ (\Add|C[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \Add|C[13]~12_combout\,
	combout => \Add|S[13]~11_combout\);

-- Location: LCCOMB_X67_Y50_N22
\Y_R[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~66_combout\ = (\ShiftFN[0]~input_o\ & ((\Shift|ll4[1]~0_combout\ & (\A[63]~input_o\)) # (!\Shift|ll4[1]~0_combout\ & ((\Shift|rl1[61]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ll4[1]~0_combout\,
	datad => \Shift|rl1[61]~5_combout\,
	combout => \Y_R[1]~66_combout\);

-- Location: LCCOMB_X67_Y50_N8
\Y_R[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~67_combout\ = (\Y_R[1]~66_combout\) # ((!\ShiftFN[0]~input_o\ & (!\Mux60~1_combout\ & \Shift|rl2[61]~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~66_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux60~1_combout\,
	datad => \Shift|rl2[61]~123_combout\,
	combout => \Y_R[1]~67_combout\);

-- Location: LCCOMB_X66_Y50_N24
\Shift|rl4[45]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~67_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[57]~120_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[49]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[57]~120_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[49]~121_combout\,
	combout => \Shift|rl4[45]~67_combout\);

-- Location: LCCOMB_X66_Y50_N26
\Shift|rl4[45]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~68_combout\ = (\Shift|rl4[45]~67_combout\) # ((\Shift|rl4[45]~49_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[45]~49_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[45]~67_combout\,
	combout => \Shift|rl4[45]~68_combout\);

-- Location: LCCOMB_X68_Y46_N10
\Y_R[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~68_combout\ = (\B[4]~input_o\ & (\Y_R[1]~67_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[45]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~67_combout\,
	datac => \Shift|rl4[45]~68_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~68_combout\);

-- Location: LCCOMB_X66_Y50_N4
\Shift|rl4[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~65_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[41]~122_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[33]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[33]~63_combout\,
	datac => \Shift|rl2[41]~122_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[33]~65_combout\);

-- Location: LCCOMB_X66_Y50_N22
\Shift|rl4[29]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~66_combout\ = (\B[2]~input_o\ & (\Shift|rl4[33]~65_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[29]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[33]~65_combout\,
	datad => \Shift|rl4[29]~47_combout\,
	combout => \Shift|rl4[29]~66_combout\);

-- Location: LCCOMB_X68_Y46_N24
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux54~1_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl3[13]~11_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl4[29]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[29]~66_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl3[13]~11_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X68_Y46_N20
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux54~1_combout\ & ((\Mux50~0_combout\ & (\Y_R[1]~68_combout\)) # (!\Mux50~0_combout\ & ((\Shift|rl3[21]~12_combout\))))) # (!\Mux54~1_combout\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~68_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|rl3[21]~12_combout\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X68_Y45_N24
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X68_Y45_N26
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux54~3_combout\ & (((\Mux50~2_combout\) # (!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (\Mux50~1_combout\ & ((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~1_combout\,
	datab => \Mux50~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X68_Y44_N6
\Shift|ll2[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~24_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|ll2[14]~24_combout\);

-- Location: LCCOMB_X68_Y44_N16
\Shift|ll2[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~25_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[13]~22_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[14]~24_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[13]~22_combout\,
	combout => \Shift|ll2[13]~25_combout\);

-- Location: LCCOMB_X69_Y46_N24
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

-- Location: LCCOMB_X69_Y46_N18
\Shift|ll5[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[13]~15_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[13]~10_combout\) # ((\Shift|ll3[5]~1_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll3[5]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[13]~10_combout\,
	combout => \Shift|ll5[13]~15_combout\);

-- Location: LCCOMB_X68_Y45_N28
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (\Mux54~0_combout\ & ((\Mux50~3_combout\ & (\Add|S[13]~11_combout\)) # (!\Mux50~3_combout\ & ((\Shift|ll5[13]~15_combout\))))) # (!\Mux54~0_combout\ & (((\Mux50~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[13]~11_combout\,
	datab => \Mux54~0_combout\,
	datac => \Mux50~3_combout\,
	datad => \Shift|ll5[13]~15_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux50~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux50~4_combout\,
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X68_Y44_N18
\Shift|ll2[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~26_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ll2[15]~26_combout\);

-- Location: LCCOMB_X68_Y44_N28
\Shift|ll2[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~27_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[14]~24_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[15]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[15]~26_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[14]~24_combout\,
	combout => \Shift|ll2[14]~27_combout\);

-- Location: LCCOMB_X67_Y47_N26
\Shift|ll4[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~11_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[10]~19_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[14]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[10]~19_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[14]~27_combout\,
	combout => \Shift|ll4[14]~11_combout\);

-- Location: LCCOMB_X67_Y47_N28
\Shift|ll3[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[6]~3_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~11_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll3[6]~3_combout\);

-- Location: LCCOMB_X67_Y47_N6
\Shift|ll5[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[14]~16_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[14]~11_combout\) # ((\B[3]~input_o\ & \Shift|ll3[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll4[14]~11_combout\,
	datad => \Shift|ll3[6]~3_combout\,
	combout => \Shift|ll5[14]~16_combout\);

-- Location: LCCOMB_X68_Y45_N14
\Add|S[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[14]~12_combout\ = \A[14]~input_o\ $ (\AddnSub~input_o\ $ (\B[14]~input_o\ $ (\Add|C[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	datad => \Add|C[14]~13_combout\,
	combout => \Add|S[14]~12_combout\);

-- Location: LCCOMB_X61_Y49_N18
\Shift|rl4[30]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~69_combout\ = (\B[2]~input_o\ & (\Shift|rl4[34]~16_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[30]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[34]~16_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl4[30]~52_combout\,
	combout => \Shift|rl4[30]~69_combout\);

-- Location: LCCOMB_X61_Y49_N4
\Shift|rl4[46]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~70_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[58]~101_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[50]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[50]~99_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[58]~101_combout\,
	combout => \Shift|rl4[46]~70_combout\);

-- Location: LCCOMB_X61_Y49_N14
\Shift|rl4[46]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~71_combout\ = (\Shift|rl4[46]~70_combout\) # ((\Shift|rl4[46]~54_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[46]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[46]~70_combout\,
	combout => \Shift|rl4[46]~71_combout\);

-- Location: LCCOMB_X70_Y49_N18
\Shift|ra4[62]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~1_combout\ = (\B[3]~input_o\ & (((\A[63]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|ll3[0]~2_combout\ & ((\A[63]~input_o\))) # (!\Shift|ll3[0]~2_combout\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[0]~2_combout\,
	datac => \A[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Shift|ra4[62]~1_combout\);

-- Location: LCCOMB_X70_Y49_N4
\Y_R[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~69_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ra4[62]~1_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\Shift|ll4[1]~0_combout\ & ((\Shift|rl1[62]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[1]~0_combout\,
	datab => \Shift|ra4[62]~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~69_combout\);

-- Location: LCCOMB_X63_Y49_N14
\Y_R[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~70_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~69_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[46]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[46]~71_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~69_combout\,
	combout => \Y_R[1]~70_combout\);

-- Location: LCCOMB_X61_Y45_N24
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux54~1_combout\ & (((\Shift|rl3[22]~14_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (\Shift|rl3[14]~13_combout\ & (\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|rl3[14]~13_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl3[22]~14_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X61_Y45_N26
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux49~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux49~0_combout\ & ((\Y_R[1]~70_combout\))) # (!\Mux49~0_combout\ & (\Shift|rl4[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[30]~69_combout\,
	datab => \Y_R[1]~70_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X68_Y45_N8
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\B[14]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[14]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[14]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X68_Y45_N18
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux54~3_combout\ & (((\Mux49~2_combout\) # (!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (\Mux49~1_combout\ & ((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~3_combout\,
	datab => \Mux49~1_combout\,
	datac => \Mux49~2_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X68_Y45_N20
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (\Mux54~0_combout\ & ((\Mux49~3_combout\ & ((\Add|S[14]~12_combout\))) # (!\Mux49~3_combout\ & (\Shift|ll5[14]~16_combout\)))) # (!\Mux54~0_combout\ & (((\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[14]~16_combout\,
	datab => \Add|S[14]~12_combout\,
	datac => \Mux54~0_combout\,
	datad => \Mux49~3_combout\,
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X62_Y45_N8
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\Mux49~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X68_Y45_N30
\Add|S[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[15]~13_combout\ = \Add|C[15]~14_combout\ $ (\AddnSub~input_o\ $ (\A[15]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[15]~14_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|S[15]~13_combout\);

-- Location: LCCOMB_X68_Y45_N0
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\B[15]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[15]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X63_Y48_N0
\Shift|rl4[31]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[31]~72_combout\ = (\B[2]~input_o\ & (\Shift|rl4[35]~21_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[31]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[35]~21_combout\,
	datab => \Shift|rl4[31]~57_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl4[31]~72_combout\);

-- Location: LCCOMB_X63_Y48_N18
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[15]~15_combout\ & ((!\Mux54~1_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Shift|rl4[31]~72_combout\) # (\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[15]~15_combout\,
	datab => \Shift|rl4[31]~72_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X63_Y51_N10
\Shift|rl4[47]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~73_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[59]~112_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[51]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[59]~112_combout\,
	datac => \Shift|rl2[51]~110_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[47]~73_combout\);

-- Location: LCCOMB_X63_Y51_N20
\Shift|rl4[47]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~74_combout\ = (\Shift|rl4[47]~73_combout\) # ((\Shift|rl4[47]~60_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[47]~60_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[47]~73_combout\,
	combout => \Shift|rl4[47]~74_combout\);

-- Location: LCCOMB_X63_Y46_N0
\Y_R[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~71_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\) # (\Shift|ra4[62]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ra4[62]~0_combout\,
	combout => \Y_R[1]~71_combout\);

-- Location: LCCOMB_X63_Y46_N2
\Y_R[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~72_combout\ = (\Y_R[1]~71_combout\) # ((!\B[4]~input_o\ & \Shift|rl4[47]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[47]~74_combout\,
	datad => \Y_R[1]~71_combout\,
	combout => \Y_R[1]~72_combout\);

-- Location: LCCOMB_X63_Y48_N12
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Mux48~0_combout\ & (((\Y_R[1]~72_combout\) # (!\Mux54~1_combout\)))) # (!\Mux48~0_combout\ & (\Shift|rl3[23]~16_combout\ & ((\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[23]~16_combout\,
	datab => \Mux48~0_combout\,
	datac => \Y_R[1]~72_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X68_Y45_N2
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux54~3_combout\ & ((\Mux48~2_combout\) # ((!\Mux54~2_combout\)))) # (!\Mux54~3_combout\ & (((\Mux48~1_combout\ & \Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~3_combout\,
	datab => \Mux48~2_combout\,
	datac => \Mux48~1_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X68_Y44_N30
\Shift|ll2[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~28_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Shift|ll2[16]~28_combout\);

-- Location: LCCOMB_X68_Y44_N8
\Shift|ll2[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~29_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[15]~26_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~28_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[15]~26_combout\,
	combout => \Shift|ll2[15]~29_combout\);

-- Location: LCCOMB_X66_Y44_N6
\Shift|ll4[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~12_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[11]~21_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[15]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[15]~29_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[11]~21_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[15]~12_combout\);

-- Location: LCCOMB_X66_Y44_N16
\Shift|ll3[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[7]~4_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[3]~3_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~13_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll3[7]~4_combout\);

-- Location: LCCOMB_X62_Y44_N0
\Shift|ll5[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[15]~17_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[15]~12_combout\) # ((\B[3]~input_o\ & \Shift|ll3[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[15]~12_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[7]~4_combout\,
	combout => \Shift|ll5[15]~17_combout\);

-- Location: LCCOMB_X68_Y45_N12
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (\Mux48~3_combout\ & ((\Add|S[15]~13_combout\) # ((!\Mux54~0_combout\)))) # (!\Mux48~3_combout\ & (((\Mux54~0_combout\ & \Shift|ll5[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[15]~13_combout\,
	datab => \Mux48~3_combout\,
	datac => \Mux54~0_combout\,
	datad => \Shift|ll5[15]~17_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X75_Y50_N16
\Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = (\Mux48~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux48~4_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux48~5_combout\);

-- Location: LCCOMB_X63_Y49_N2
\Y_R[1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~82_combout\ = (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) # (!\B[4]~input_o\ & (\Shift|rl4[48]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[48]~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~82_combout\);

-- Location: LCCOMB_X68_Y44_N2
\Shift|ll2[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~30_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ll2[17]~30_combout\);

-- Location: LCCOMB_X68_Y44_N20
\Shift|ll2[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~31_combout\ = (\B[0]~input_o\ & (\Shift|ll2[16]~28_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[17]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~28_combout\,
	datab => \Shift|ll2[17]~30_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[16]~31_combout\);

-- Location: LCCOMB_X66_Y45_N16
\Shift|ll4[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~14_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[8]~15_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[16]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~31_combout\,
	datab => \Shift|ll2[8]~15_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[16]~14_combout\);

-- Location: LCCOMB_X66_Y45_N6
\Shift|ll4[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~13_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[4]~6_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[12]~23_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[4]~6_combout\,
	combout => \Shift|ll4[16]~13_combout\);

-- Location: LCCOMB_X66_Y45_N2
\Shift|ll4[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~15_combout\ = (\Shift|ll4[16]~13_combout\) # ((\Shift|ll4[16]~14_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[16]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[16]~13_combout\,
	combout => \Shift|ll4[16]~15_combout\);

-- Location: LCCOMB_X66_Y45_N12
\Shift|ll5[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[16]~18_combout\ = (\B[4]~input_o\ & (\Shift|ra4[62]~0_combout\ & (\A[0]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[62]~0_combout\,
	datab => \A[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[16]~15_combout\,
	combout => \Shift|ll5[16]~18_combout\);

-- Location: LCCOMB_X63_Y49_N0
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~82_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((\Shift|ll5[16]~18_combout\ & !\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Y_R[1]~82_combout\,
	datac => \Shift|ll5[16]~18_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X63_Y49_N26
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux47~1_combout\ & ((\Shift|rl4[32]~7_combout\) # ((\Mux60~2_combout\)))) # (!\Mux47~1_combout\ & (((!\Mux60~2_combout\ & \Shift|rl4[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[32]~7_combout\,
	datab => \Mux47~1_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[16]~1_combout\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X67_Y49_N16
\Add|S[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[16]~14_combout\ = \Add|C[16]~15_combout\ $ (\A[16]~input_o\ $ (\AddnSub~input_o\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[16]~15_combout\,
	datab => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|S[16]~14_combout\);

-- Location: LCCOMB_X63_Y49_N12
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux47~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux47~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[16]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[16]~14_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X67_Y49_N6
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\B[16]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[16]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[16]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X67_Y49_N18
\Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux47~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux47~3_combout\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~4_combout\);

-- Location: LCCOMB_X66_Y50_N14
\Y_R[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~73_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[53]~50_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[49]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[53]~50_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[49]~121_combout\,
	combout => \Y_R[1]~73_combout\);

-- Location: LCCOMB_X67_Y50_N10
\Y_R[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~74_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|ra3[57]~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Y_R[1]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra3[57]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~54_combout\,
	combout => \Y_R[1]~74_combout\);

-- Location: LCCOMB_X67_Y50_N28
\Y_R[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~75_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~35_combout\)))) # (!\B[4]~input_o\ & ((\Y_R[1]~73_combout\) # ((\Y_R[1]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~73_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~74_combout\,
	combout => \Y_R[1]~75_combout\);

-- Location: LCCOMB_X67_Y44_N12
\Shift|ll2[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~32_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Shift|ll2[18]~32_combout\);

-- Location: LCCOMB_X68_Y44_N14
\Shift|ll2[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~33_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[17]~30_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[18]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[18]~32_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[17]~30_combout\,
	combout => \Shift|ll2[17]~33_combout\);

-- Location: LCCOMB_X69_Y46_N6
\Shift|ll4[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~17_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[9]~17_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[17]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[17]~33_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[9]~17_combout\,
	combout => \Shift|ll4[17]~17_combout\);

-- Location: LCCOMB_X69_Y46_N4
\Shift|ll4[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~16_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[5]~9_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[13]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[5]~9_combout\,
	datad => \Shift|ll2[13]~25_combout\,
	combout => \Shift|ll4[17]~16_combout\);

-- Location: LCCOMB_X69_Y46_N0
\Shift|ll4[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~18_combout\ = (\Shift|ll4[17]~16_combout\) # ((\Shift|ll4[17]~17_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[17]~17_combout\,
	datab => \Shift|ll4[17]~16_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[17]~18_combout\);

-- Location: LCCOMB_X68_Y47_N2
\Shift|ll5[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[17]~19_combout\ = (\B[4]~input_o\ & (((\Shift|ll1[1]~0_combout\ & !\Shift|ll4[1]~0_combout\)))) # (!\B[4]~input_o\ & (\Shift|ll4[17]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[17]~18_combout\,
	datab => \Shift|ll1[1]~0_combout\,
	datac => \Shift|ll4[1]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[17]~19_combout\);

-- Location: LCCOMB_X68_Y47_N28
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~75_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((!\Mux60~3_combout\ & \Shift|ll5[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Y_R[1]~75_combout\,
	datac => \Mux60~3_combout\,
	datad => \Shift|ll5[17]~19_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X66_Y50_N20
\Shift|rl4[33]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~75_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[37]~31_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[33]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[33]~65_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[37]~31_combout\,
	combout => \Shift|rl4[33]~75_combout\);

-- Location: LCCOMB_X67_Y49_N14
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux46~1_combout\ & ((\Shift|rl4[33]~75_combout\) # ((\Mux60~2_combout\)))) # (!\Mux46~1_combout\ & (((!\Mux60~2_combout\ & \Shift|rl4[17]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~1_combout\,
	datab => \Shift|rl4[33]~75_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[17]~12_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X67_Y49_N8
\Add|S[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[17]~15_combout\ = \A[17]~input_o\ $ (\Add|C[17]~16_combout\ $ (\AddnSub~input_o\ $ (\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add|C[17]~16_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|S[17]~15_combout\);

-- Location: LCCOMB_X67_Y49_N26
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux46~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux46~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[17]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux46~2_combout\,
	datac => \Add|S[17]~15_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X67_Y49_N28
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\B[17]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[17]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X67_Y49_N4
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux46~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux46~3_combout\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X67_Y44_N6
\Shift|ll2[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~34_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[19]~34_combout\);

-- Location: LCCOMB_X67_Y44_N8
\Shift|ll2[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~35_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[18]~32_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[19]~34_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[18]~32_combout\,
	combout => \Shift|ll2[18]~35_combout\);

-- Location: LCCOMB_X66_Y47_N8
\Shift|ll4[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~20_combout\ = (\B[3]~input_o\ & (\Shift|ll2[10]~19_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[18]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[10]~19_combout\,
	datad => \Shift|ll2[18]~35_combout\,
	combout => \Shift|ll4[18]~20_combout\);

-- Location: LCCOMB_X67_Y47_N24
\Shift|ll4[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~19_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[6]~11_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[14]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~11_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[14]~27_combout\,
	combout => \Shift|ll4[18]~19_combout\);

-- Location: LCCOMB_X67_Y47_N2
\Shift|ll4[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~21_combout\ = (\Shift|ll4[18]~19_combout\) # ((\Shift|ll4[18]~20_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[18]~20_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[18]~19_combout\,
	combout => \Shift|ll4[18]~21_combout\);

-- Location: LCCOMB_X66_Y49_N20
\Shift|ll5[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[18]~20_combout\ = (\B[4]~input_o\ & (\Shift|ll2[2]~1_combout\ & ((!\Mux60~1_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[18]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~1_combout\,
	datab => \Shift|ll4[18]~21_combout\,
	datac => \Mux60~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[18]~20_combout\);

-- Location: LCCOMB_X70_Y49_N30
\Y_R[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~76_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|ra3[58]~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\Y_R[1]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_R[1]~58_combout\,
	datac => \Shift|ra3[58]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~76_combout\);

-- Location: LCCOMB_X69_Y49_N22
\Y_R[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~77_combout\ = (\B[4]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[4]~input_o\ & (((\Y_R[1]~25_combout\) # (\Y_R[1]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Y_R[1]~25_combout\,
	datac => \Y_R[1]~76_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~77_combout\);

-- Location: LCCOMB_X69_Y49_N16
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux60~4_combout\ & (((\Y_R[1]~77_combout\) # (\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[18]~20_combout\ & ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[18]~20_combout\,
	datab => \Mux60~4_combout\,
	datac => \Y_R[1]~77_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X68_Y49_N26
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux60~2_combout\ & (((\Mux45~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux45~1_combout\ & ((\Shift|rl4[34]~17_combout\))) # (!\Mux45~1_combout\ & (\Shift|rl4[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[18]~14_combout\,
	datac => \Mux45~1_combout\,
	datad => \Shift|rl4[34]~17_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X68_Y49_N20
\Add|S[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[18]~16_combout\ = \A[18]~input_o\ $ (\AddnSub~input_o\ $ (\B[18]~input_o\ $ (\Add|C[18]~17_combout\)))

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
	combout => \Add|S[18]~16_combout\);

-- Location: LCCOMB_X68_Y49_N14
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux45~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux45~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[18]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[18]~16_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X68_Y49_N0
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\B[18]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[18]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X68_Y49_N16
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux45~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux45~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X67_Y49_N22
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\B[19]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[19]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X63_Y51_N30
\Y_R[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~78_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~35_combout\)))) # (!\B[4]~input_o\ & ((\Y_R[1]~30_combout\) # ((\Y_R[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~30_combout\,
	datac => \Y_R[1]~32_combout\,
	datad => \Y_R[1]~35_combout\,
	combout => \Y_R[1]~78_combout\);

-- Location: LCCOMB_X66_Y44_N10
\Shift|ll4[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~22_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[7]~13_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[15]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~13_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[15]~29_combout\,
	combout => \Shift|ll4[19]~22_combout\);

-- Location: LCCOMB_X63_Y44_N30
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

-- Location: LCCOMB_X63_Y44_N24
\Shift|ll2[19]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~37_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[19]~34_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[20]~36_combout\,
	datab => \Shift|ll2[19]~34_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[19]~37_combout\);

-- Location: LCCOMB_X66_Y44_N20
\Shift|ll4[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~23_combout\ = (\B[3]~input_o\ & (\Shift|ll2[11]~21_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[19]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[11]~21_combout\,
	datab => \Shift|ll2[19]~37_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[19]~23_combout\);

-- Location: LCCOMB_X66_Y44_N14
\Shift|ll4[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~24_combout\ = (\Shift|ll4[19]~22_combout\) # ((!\B[2]~input_o\ & \Shift|ll4[19]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[19]~22_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[19]~23_combout\,
	combout => \Shift|ll4[19]~24_combout\);

-- Location: LCCOMB_X66_Y44_N24
\Shift|ll5[19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[19]~21_combout\ = (\B[4]~input_o\ & (!\Mux60~1_combout\ & ((\Shift|ll2[3]~3_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[19]~24_combout\))))

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
	combout => \Shift|ll5[19]~21_combout\);

-- Location: LCCOMB_X69_Y49_N26
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~78_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((\Shift|ll5[19]~21_combout\ & !\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~78_combout\,
	datab => \Shift|ll5[19]~21_combout\,
	datac => \Mux60~4_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X67_Y49_N24
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux60~2_combout\ & (((\Mux44~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux44~1_combout\ & ((\Shift|rl4[35]~22_combout\))) # (!\Mux44~1_combout\ & (\Shift|rl4[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[19]~19_combout\,
	datac => \Shift|rl4[35]~22_combout\,
	datad => \Mux44~1_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X67_Y49_N2
\Add|S[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~17_combout\ = \AddnSub~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\ $ (\Add|C[19]~18_combout\)))

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
	combout => \Add|S[19]~17_combout\);

-- Location: LCCOMB_X67_Y49_N12
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux44~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux44~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[19]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux44~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[19]~17_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X67_Y49_N30
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux44~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux44~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux44~0_combout\,
	datad => \Mux44~3_combout\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X62_Y52_N2
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\B[20]~input_o\ & ((\A[20]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X62_Y46_N12
\Y_R[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~79_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~35_combout\)))) # (!\B[4]~input_o\ & ((\Y_R[1]~34_combout\) # ((\Y_R[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~36_combout\,
	combout => \Y_R[1]~79_combout\);

-- Location: LCCOMB_X63_Y44_N10
\Shift|ll2[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~38_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[21]~38_combout\);

-- Location: LCCOMB_X63_Y44_N28
\Shift|ll2[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~39_combout\ = (\B[0]~input_o\ & (\Shift|ll2[20]~36_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[21]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[20]~36_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[21]~38_combout\,
	combout => \Shift|ll2[20]~39_combout\);

-- Location: LCCOMB_X66_Y45_N30
\Shift|ll4[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[20]~25_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[12]~23_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[20]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[20]~39_combout\,
	datac => \Shift|ll2[12]~23_combout\,
	combout => \Shift|ll4[20]~25_combout\);

-- Location: LCCOMB_X66_Y45_N0
\Shift|ll4[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[20]~26_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[16]~14_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[20]~25_combout\,
	datab => \Shift|ll4[16]~14_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[20]~26_combout\);

-- Location: LCCOMB_X62_Y46_N10
\Shift|ll5[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[20]~22_combout\ = (\B[4]~input_o\ & (\Shift|ll3[4]~0_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[4]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[20]~26_combout\,
	combout => \Shift|ll5[20]~22_combout\);

-- Location: LCCOMB_X62_Y46_N14
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~79_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((!\Mux60~3_combout\ & \Shift|ll5[20]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~79_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux60~3_combout\,
	datad => \Shift|ll5[20]~22_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X62_Y46_N0
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux60~2_combout\ & (\Mux43~1_combout\)) # (!\Mux60~2_combout\ & ((\Mux43~1_combout\ & (\Shift|rl4[36]~27_combout\)) # (!\Mux43~1_combout\ & ((\Shift|rl4[20]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Mux43~1_combout\,
	datac => \Shift|rl4[36]~27_combout\,
	datad => \Shift|rl4[20]~24_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X62_Y52_N28
\Add|S[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[20]~18_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[20]~19_combout\)))

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
	combout => \Add|S[20]~18_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux43~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux43~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[20]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux43~2_combout\,
	datad => \Add|S[20]~18_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X62_Y51_N26
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux43~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux43~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux43~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux43~3_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X63_Y44_N14
\Shift|ll2[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~40_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[22]~40_combout\);

-- Location: LCCOMB_X63_Y44_N16
\Shift|ll2[21]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~41_combout\ = (\B[0]~input_o\ & (\Shift|ll2[21]~38_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[22]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[21]~38_combout\,
	datab => \Shift|ll2[22]~40_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[21]~41_combout\);

-- Location: LCCOMB_X69_Y46_N10
\Shift|ll4[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[21]~27_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[13]~25_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[21]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[21]~41_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[13]~25_combout\,
	combout => \Shift|ll4[21]~27_combout\);

-- Location: LCCOMB_X69_Y46_N28
\Shift|ll4[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[21]~28_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[17]~17_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[21]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[21]~27_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[17]~17_combout\,
	combout => \Shift|ll4[21]~28_combout\);

-- Location: LCCOMB_X67_Y48_N12
\Shift|ll5[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[21]~23_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ll3[5]~1_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[21]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll4[21]~28_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll3[5]~1_combout\,
	combout => \Shift|ll5[21]~23_combout\);

-- Location: LCCOMB_X66_Y52_N10
\Y_R[1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~83_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[63]~input_o\))) # (!\B[4]~input_o\ & (((\Y_R[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Y_R[1]~40_combout\,
	combout => \Y_R[1]~83_combout\);

-- Location: LCCOMB_X66_Y52_N20
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\) # (\Y_R[1]~83_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[21]~23_combout\ & (!\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[21]~23_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux60~3_combout\,
	datad => \Y_R[1]~83_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X66_Y52_N22
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux60~2_combout\ & (((\Mux42~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux42~1_combout\ & ((\Shift|rl4[37]~32_combout\))) # (!\Mux42~1_combout\ & (\Shift|rl4[21]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[21]~29_combout\,
	datab => \Mux60~2_combout\,
	datac => \Shift|rl4[37]~32_combout\,
	datad => \Mux42~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X62_Y52_N24
\Add|S[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[21]~19_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[21]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[21]~20_combout\,
	combout => \Add|S[21]~19_combout\);

-- Location: LCCOMB_X66_Y52_N16
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\ShiftFN[0]~input_o\ & (((\Mux42~2_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Mux42~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Add|S[21]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux42~2_combout\,
	datad => \Add|S[21]~19_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X62_Y52_N6
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X62_Y52_N26
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux42~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux42~3_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X63_Y44_N2
\Shift|ll2[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~42_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[23]~42_combout\);

-- Location: LCCOMB_X63_Y44_N4
\Shift|ll2[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~43_combout\ = (\B[0]~input_o\ & (\Shift|ll2[22]~40_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[23]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[22]~40_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[23]~42_combout\,
	combout => \Shift|ll2[22]~43_combout\);

-- Location: LCCOMB_X66_Y47_N10
\Shift|ll4[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[22]~29_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[14]~27_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[22]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[22]~43_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ll2[14]~27_combout\,
	combout => \Shift|ll4[22]~29_combout\);

-- Location: LCCOMB_X66_Y47_N12
\Shift|ll4[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[22]~30_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[18]~20_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[22]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[22]~29_combout\,
	datab => \Shift|ll4[18]~20_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[22]~30_combout\);

-- Location: LCCOMB_X67_Y47_N4
\Shift|ll5[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[22]~24_combout\ = (\B[4]~input_o\ & (\Shift|ll3[6]~3_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[22]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll3[6]~3_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[22]~30_combout\,
	combout => \Shift|ll5[22]~24_combout\);

-- Location: LCCOMB_X66_Y48_N14
\Y_R[1]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~84_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[63]~input_o\)))) # (!\B[4]~input_o\ & (((\Y_R[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~45_combout\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~84_combout\);

-- Location: LCCOMB_X66_Y48_N28
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux60~4_combout\ & (((\Y_R[1]~84_combout\) # (\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[22]~24_combout\ & ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[22]~24_combout\,
	datab => \Mux60~4_combout\,
	datac => \Y_R[1]~84_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X66_Y48_N22
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux60~2_combout\ & (((\Mux41~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux41~1_combout\ & ((\Shift|rl4[38]~36_combout\))) # (!\Mux41~1_combout\ & (\Shift|rl4[22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[22]~34_combout\,
	datab => \Shift|rl4[38]~36_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X62_Y52_N14
\Add|S[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[22]~20_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[22]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[22]~21_combout\,
	combout => \Add|S[22]~20_combout\);

-- Location: LCCOMB_X66_Y48_N0
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux41~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux41~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[22]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Add|S[22]~20_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X62_Y52_N4
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X66_Y48_N26
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux41~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux41~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux41~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X62_Y52_N8
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[23]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X62_Y52_N18
\Add|S[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~21_combout\ = \B[23]~input_o\ $ (\AddnSub~input_o\ $ (\A[23]~input_o\ $ (\Add|C[23]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[23]~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|S[23]~21_combout\);

-- Location: LCCOMB_X66_Y52_N4
\Y_R[1]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~85_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & (\A[63]~input_o\))) # (!\B[4]~input_o\ & (((\Y_R[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Y_R[1]~49_combout\,
	combout => \Y_R[1]~85_combout\);

-- Location: LCCOMB_X61_Y47_N20
\Shift|ll2[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~44_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[24]~44_combout\);

-- Location: LCCOMB_X62_Y44_N2
\Shift|ll2[23]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~45_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[23]~42_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[24]~44_combout\,
	datad => \Shift|ll2[23]~42_combout\,
	combout => \Shift|ll2[23]~45_combout\);

-- Location: LCCOMB_X66_Y44_N26
\Shift|ll4[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[23]~31_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[15]~29_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[23]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[23]~45_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[15]~29_combout\,
	combout => \Shift|ll4[23]~31_combout\);

-- Location: LCCOMB_X66_Y44_N12
\Shift|ll4[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[23]~32_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[19]~23_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[23]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[23]~31_combout\,
	datad => \Shift|ll4[19]~23_combout\,
	combout => \Shift|ll4[23]~32_combout\);

-- Location: LCCOMB_X66_Y44_N30
\Shift|ll5[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[23]~25_combout\ = (\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shift|ll3[7]~4_combout\)))) # (!\B[4]~input_o\ & (\Shift|ll4[23]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[23]~32_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[7]~4_combout\,
	combout => \Shift|ll5[23]~25_combout\);

-- Location: LCCOMB_X66_Y52_N18
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux60~3_combout\ & (\Mux60~4_combout\)) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~85_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[23]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Mux60~4_combout\,
	datac => \Y_R[1]~85_combout\,
	datad => \Shift|ll5[23]~25_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X66_Y52_N12
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux60~2_combout\ & (((\Mux40~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux40~1_combout\ & ((\Shift|rl4[39]~40_combout\))) # (!\Mux40~1_combout\ & (\Shift|rl4[23]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[23]~38_combout\,
	datab => \Mux60~2_combout\,
	datac => \Shift|rl4[39]~40_combout\,
	datad => \Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X66_Y52_N6
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\ShiftFN[0]~input_o\ & (((\Mux40~2_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Mux40~2_combout\))) # (!\ShiftFN[1]~input_o\ & (\Add|S[23]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|S[23]~21_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X62_Y52_N20
\Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux40~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux40~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux40~0_combout\,
	datad => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X62_Y51_N28
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X61_Y47_N14
\Shift|ll2[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~46_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[25]~46_combout\);

-- Location: LCCOMB_X61_Y47_N24
\Shift|ll2[24]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~47_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[24]~44_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[25]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[25]~46_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[24]~44_combout\,
	combout => \Shift|ll2[24]~47_combout\);

-- Location: LCCOMB_X66_Y45_N26
\Shift|ll4[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[24]~33_combout\ = (\B[3]~input_o\ & (\Shift|ll2[16]~31_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[24]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~31_combout\,
	datab => \Shift|ll2[24]~47_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[24]~33_combout\);

-- Location: LCCOMB_X66_Y45_N20
\Shift|ll4[24]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[24]~34_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[20]~25_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[24]~33_combout\,
	datac => \Shift|ll4[20]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[24]~34_combout\);

-- Location: LCCOMB_X65_Y45_N20
\Shift|ll5[24]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[24]~26_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[8]~2_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[24]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[24]~34_combout\,
	datab => \Shift|ll4[8]~2_combout\,
	datac => \B[4]~input_o\,
	combout => \Shift|ll5[24]~26_combout\);

-- Location: LCCOMB_X62_Y47_N10
\Y_R[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~80_combout\ = (\B[4]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[56]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~35_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[56]~2_combout\,
	combout => \Y_R[1]~80_combout\);

-- Location: LCCOMB_X68_Y48_N4
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\) # (\Y_R[1]~80_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[24]~26_combout\ & (!\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Shift|ll5[24]~26_combout\,
	datac => \Mux60~3_combout\,
	datad => \Y_R[1]~80_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X62_Y47_N20
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux60~2_combout\ & (((\Mux39~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux39~1_combout\ & ((\Shift|rl4[40]~45_combout\))) # (!\Mux39~1_combout\ & (\Shift|rl4[24]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[24]~43_combout\,
	datac => \Mux39~1_combout\,
	datad => \Shift|rl4[40]~45_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X62_Y51_N6
\Add|S[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[24]~22_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\Add|C[24]~23_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \Add|C[24]~23_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[24]~22_combout\);

-- Location: LCCOMB_X62_Y51_N0
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux39~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux39~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[24]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux39~2_combout\,
	datad => \Add|S[24]~22_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux39~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux39~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux39~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux39~3_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X68_Y48_N26
\Y_R[1]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~86_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[63]~input_o\)))) # (!\B[4]~input_o\ & (((\Y_R[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_R[1]~55_combout\,
	datac => \B[4]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~86_combout\);

-- Location: LCCOMB_X61_Y47_N10
\Shift|ll2[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~48_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[26]~48_combout\);

-- Location: LCCOMB_X61_Y47_N4
\Shift|ll2[25]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~49_combout\ = (\B[0]~input_o\ & (\Shift|ll2[25]~46_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[25]~46_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[26]~48_combout\,
	combout => \Shift|ll2[25]~49_combout\);

-- Location: LCCOMB_X69_Y46_N14
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

-- Location: LCCOMB_X69_Y46_N16
\Shift|ll4[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[25]~36_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[21]~27_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[25]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[25]~35_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[21]~27_combout\,
	combout => \Shift|ll4[25]~36_combout\);

-- Location: LCCOMB_X65_Y45_N6
\Shift|ll5[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[25]~27_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[9]~4_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[25]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[25]~36_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[9]~4_combout\,
	combout => \Shift|ll5[25]~27_combout\);

-- Location: LCCOMB_X68_Y48_N22
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux60~4_combout\ & ((\Mux60~3_combout\) # ((\Y_R[1]~86_combout\)))) # (!\Mux60~4_combout\ & (!\Mux60~3_combout\ & ((\Shift|ll5[25]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Mux60~3_combout\,
	datac => \Y_R[1]~86_combout\,
	datad => \Shift|ll5[25]~27_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X62_Y51_N14
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux38~1_combout\ & ((\Shift|rl4[41]~50_combout\) # ((\Mux60~2_combout\)))) # (!\Mux38~1_combout\ & (((!\Mux60~2_combout\ & \Shift|rl4[25]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[41]~50_combout\,
	datab => \Mux38~1_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[25]~48_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X62_Y51_N24
\Add|S[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[25]~23_combout\ = \B[25]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[25]~24_combout\ $ (\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[25]~24_combout\,
	datad => \A[25]~input_o\,
	combout => \Add|S[25]~23_combout\);

-- Location: LCCOMB_X62_Y51_N10
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux38~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux38~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[25]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux38~2_combout\,
	datad => \Add|S[25]~23_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X62_Y51_N12
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\B[25]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[25]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X62_Y51_N20
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux38~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux38~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X61_Y51_N12
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X61_Y51_N30
\Add|S[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[26]~24_combout\ = \AddnSub~input_o\ $ (\B[26]~input_o\ $ (\A[26]~input_o\ $ (\Add|C[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \Add|C[26]~25_combout\,
	combout => \Add|S[26]~24_combout\);

-- Location: LCCOMB_X61_Y47_N22
\Shift|ll2[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~50_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[27]~50_combout\);

-- Location: LCCOMB_X61_Y47_N0
\Shift|ll2[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~51_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[26]~48_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[27]~50_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[26]~48_combout\,
	combout => \Shift|ll2[26]~51_combout\);

-- Location: LCCOMB_X66_Y47_N30
\Shift|ll4[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[26]~37_combout\ = (\B[3]~input_o\ & (\Shift|ll2[18]~35_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[26]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[18]~35_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[26]~51_combout\,
	combout => \Shift|ll4[26]~37_combout\);

-- Location: LCCOMB_X66_Y47_N24
\Shift|ll4[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[26]~38_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[22]~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[26]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[26]~37_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[22]~29_combout\,
	combout => \Shift|ll4[26]~38_combout\);

-- Location: LCCOMB_X67_Y47_N30
\Shift|ll5[26]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[26]~28_combout\ = (\B[4]~input_o\ & (((\Shift|ll4[10]~6_combout\) # (\Shift|ll4[10]~5_combout\)))) # (!\B[4]~input_o\ & (\Shift|ll4[26]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll4[26]~38_combout\,
	datac => \Shift|ll4[10]~6_combout\,
	datad => \Shift|ll4[10]~5_combout\,
	combout => \Shift|ll5[26]~28_combout\);

-- Location: LCCOMB_X65_Y49_N18
\Y_R[1]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~87_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\ & (\ShiftFN[0]~input_o\))) # (!\B[4]~input_o\ & (((\Y_R[1]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~59_combout\,
	combout => \Y_R[1]~87_combout\);

-- Location: LCCOMB_X65_Y49_N2
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~87_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[26]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[26]~28_combout\,
	datab => \Mux60~3_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~87_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X65_Y49_N12
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux60~2_combout\ & (((\Mux37~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux37~1_combout\ & ((\Shift|rl4[42]~55_combout\))) # (!\Mux37~1_combout\ & (\Shift|rl4[26]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[26]~53_combout\,
	datab => \Mux60~2_combout\,
	datac => \Mux37~1_combout\,
	datad => \Shift|rl4[42]~55_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X61_Y51_N0
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux37~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux37~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S[26]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[26]~24_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X61_Y51_N10
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux37~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux37~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux37~3_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X61_Y51_N4
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X61_Y47_N18
\Shift|ll2[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[28]~52_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[28]~52_combout\);

-- Location: LCCOMB_X61_Y47_N12
\Shift|ll2[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~53_combout\ = (\B[0]~input_o\ & (\Shift|ll2[27]~50_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[27]~50_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[28]~52_combout\,
	combout => \Shift|ll2[27]~53_combout\);

-- Location: LCCOMB_X66_Y44_N0
\Shift|ll4[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[27]~39_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[19]~37_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[27]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[27]~53_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[19]~37_combout\,
	combout => \Shift|ll4[27]~39_combout\);

-- Location: LCCOMB_X66_Y44_N18
\Shift|ll4[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[27]~40_combout\ = (\B[2]~input_o\ & (\Shift|ll4[23]~31_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[27]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[23]~31_combout\,
	datad => \Shift|ll4[27]~39_combout\,
	combout => \Shift|ll4[27]~40_combout\);

-- Location: LCCOMB_X68_Y48_N0
\Shift|ll5[27]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[27]~29_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[11]~8_combout\) # ((\Shift|ll4[11]~7_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[11]~8_combout\,
	datab => \Shift|ll4[27]~40_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[11]~7_combout\,
	combout => \Shift|ll5[27]~29_combout\);

-- Location: LCCOMB_X68_Y48_N12
\Y_R[1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~88_combout\ = (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~62_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~88_combout\);

-- Location: LCCOMB_X68_Y48_N10
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\) # (\Y_R[1]~88_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[27]~29_combout\ & (!\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Shift|ll5[27]~29_combout\,
	datac => \Mux60~3_combout\,
	datad => \Y_R[1]~88_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X61_Y51_N6
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux60~2_combout\ & (((\Mux36~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux36~1_combout\ & (\Shift|rl4[43]~61_combout\)) # (!\Mux36~1_combout\ & ((\Shift|rl4[27]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[43]~61_combout\,
	datab => \Mux60~2_combout\,
	datac => \Shift|rl4[27]~58_combout\,
	datad => \Mux36~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X61_Y51_N24
\Add|S[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~25_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[27]~26_combout\,
	combout => \Add|S[27]~25_combout\);

-- Location: LCCOMB_X61_Y51_N18
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux36~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux36~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[27]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[27]~25_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X61_Y51_N28
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux36~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux36~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux36~0_combout\,
	datad => \Mux36~3_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X61_Y51_N22
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X66_Y46_N30
\Shift|ll5[28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[28]~30_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[12]~9_combout\) # ((\B[3]~input_o\ & \Shift|ll3[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[4]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[12]~9_combout\,
	combout => \Shift|ll5[28]~30_combout\);

-- Location: LCCOMB_X61_Y47_N30
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

-- Location: LCCOMB_X61_Y46_N2
\Shift|ll2[28]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[28]~55_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[28]~52_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[29]~54_combout\,
	datad => \Shift|ll2[28]~52_combout\,
	combout => \Shift|ll2[28]~55_combout\);

-- Location: LCCOMB_X61_Y46_N28
\Shift|ll4[28]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[28]~41_combout\ = (\B[3]~input_o\ & (\Shift|ll2[20]~39_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[28]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ll2[20]~39_combout\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[28]~41_combout\);

-- Location: LCCOMB_X66_Y45_N22
\Shift|ll4[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[28]~42_combout\ = (\B[2]~input_o\ & (\Shift|ll4[24]~33_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[28]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[24]~33_combout\,
	datab => \Shift|ll4[28]~41_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[28]~42_combout\);

-- Location: LCCOMB_X66_Y46_N24
\Shift|ll5[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[28]~31_combout\ = (\Shift|ll5[28]~30_combout\) # ((!\B[4]~input_o\ & \Shift|ll4[28]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[28]~30_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[28]~42_combout\,
	combout => \Shift|ll5[28]~31_combout\);

-- Location: LCCOMB_X66_Y46_N18
\Y_R[1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~81_combout\ = (\Mux60~1_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux60~1_combout\ & ((\B[4]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl2[60]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Mux60~1_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|rl2[60]~29_combout\,
	combout => \Y_R[1]~81_combout\);

-- Location: LCCOMB_X66_Y46_N12
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux60~4_combout\ & (((\Y_R[1]~81_combout\) # (\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[28]~31_combout\ & ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[28]~31_combout\,
	datab => \Y_R[1]~81_combout\,
	datac => \Mux60~4_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X62_Y47_N22
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux60~2_combout\ & (((\Mux35~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux35~1_combout\ & ((\Shift|rl4[44]~64_combout\))) # (!\Mux35~1_combout\ & (\Shift|rl4[28]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[28]~62_combout\,
	datac => \Mux35~1_combout\,
	datad => \Shift|rl4[44]~64_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X60_Y50_N22
\Add|S[28]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[28]~26_combout\ = \Add|C[28]~27_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[28]~27_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[28]~26_combout\);

-- Location: LCCOMB_X61_Y51_N8
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux35~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux35~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[28]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[28]~26_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X61_Y51_N2
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux35~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux35~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux35~3_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X68_Y46_N22
\Y_R[1]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~89_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\ & (\ShiftFN[0]~input_o\))) # (!\B[4]~input_o\ & (((\Y_R[1]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~67_combout\,
	combout => \Y_R[1]~89_combout\);

-- Location: LCCOMB_X61_Y48_N16
\Shift|ll2[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[30]~56_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[30]~56_combout\);

-- Location: LCCOMB_X61_Y48_N18
\Shift|ll2[29]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[29]~57_combout\ = (\B[0]~input_o\ & (\Shift|ll2[29]~54_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[29]~54_combout\,
	datad => \Shift|ll2[30]~56_combout\,
	combout => \Shift|ll2[29]~57_combout\);

-- Location: LCCOMB_X69_Y46_N20
\Shift|ll4[29]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[29]~44_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[21]~41_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[29]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[29]~57_combout\,
	datac => \Shift|ll2[21]~41_combout\,
	combout => \Shift|ll4[29]~44_combout\);

-- Location: LCCOMB_X69_Y46_N22
\Shift|ll4[29]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[29]~45_combout\ = (\B[2]~input_o\ & (\Shift|ll4[25]~35_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[29]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[25]~35_combout\,
	datad => \Shift|ll4[29]~44_combout\,
	combout => \Shift|ll4[29]~45_combout\);

-- Location: LCCOMB_X69_Y46_N26
\Shift|ll4[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~43_combout\ = (\Shift|ll4[13]~10_combout\) # ((\Shift|ll3[5]~1_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[5]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[13]~10_combout\,
	combout => \Shift|ll4[13]~43_combout\);

-- Location: LCCOMB_X68_Y46_N6
\Shift|ll5[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[29]~32_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[13]~43_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[29]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll4[29]~45_combout\,
	datad => \Shift|ll4[13]~43_combout\,
	combout => \Shift|ll5[29]~32_combout\);

-- Location: LCCOMB_X68_Y46_N0
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~89_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[29]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~89_combout\,
	datab => \Mux60~3_combout\,
	datac => \Mux60~4_combout\,
	datad => \Shift|ll5[29]~32_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X68_Y46_N26
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux60~2_combout\ & (((\Mux34~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux34~1_combout\ & (\Shift|rl4[45]~68_combout\)) # (!\Mux34~1_combout\ & ((\Shift|rl4[29]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[45]~68_combout\,
	datab => \Mux60~2_combout\,
	datac => \Shift|rl4[29]~66_combout\,
	datad => \Mux34~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X60_Y50_N10
\Add|S[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[29]~27_combout\ = \A[29]~input_o\ $ (\AddnSub~input_o\ $ (\B[29]~input_o\ $ (\Add|C[29]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[29]~input_o\,
	datad => \Add|C[29]~28_combout\,
	combout => \Add|S[29]~27_combout\);

-- Location: LCCOMB_X60_Y50_N20
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\ShiftFN[1]~input_o\ & (\Mux34~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Mux34~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[29]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux34~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[29]~27_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X60_Y50_N24
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\B[29]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[29]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[29]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X60_Y50_N6
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux34~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux34~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X60_Y50_N26
\Add|S[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[30]~28_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\ $ (\A[30]~input_o\ $ (\Add|C[30]~29_combout\)))

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
	combout => \Add|S[30]~28_combout\);

-- Location: LCCOMB_X61_Y48_N28
\Shift|ll2[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~58_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[31]~58_combout\);

-- Location: LCCOMB_X61_Y48_N14
\Shift|ll2[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[30]~59_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[30]~56_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[31]~58_combout\,
	datad => \Shift|ll2[30]~56_combout\,
	combout => \Shift|ll2[30]~59_combout\);

-- Location: LCCOMB_X66_Y47_N18
\Shift|ll4[30]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[30]~46_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[22]~43_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[30]~59_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[22]~43_combout\,
	combout => \Shift|ll4[30]~46_combout\);

-- Location: LCCOMB_X66_Y47_N20
\Shift|ll4[30]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[30]~47_combout\ = (\B[2]~input_o\ & (\Shift|ll4[26]~37_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[30]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[26]~37_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[30]~46_combout\,
	combout => \Shift|ll4[30]~47_combout\);

-- Location: LCCOMB_X67_Y47_N0
\Shift|ll5[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[30]~33_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[14]~11_combout\) # ((\B[3]~input_o\ & \Shift|ll3[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll4[14]~11_combout\,
	datad => \Shift|ll3[6]~3_combout\,
	combout => \Shift|ll5[30]~33_combout\);

-- Location: LCCOMB_X67_Y47_N18
\Shift|ll5[30]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[30]~34_combout\ = (\Shift|ll5[30]~33_combout\) # ((\Shift|ll4[30]~47_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[30]~47_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll5[30]~33_combout\,
	combout => \Shift|ll5[30]~34_combout\);

-- Location: LCCOMB_X63_Y49_N20
\Y_R[1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~90_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\ & (\ShiftFN[0]~input_o\))) # (!\B[4]~input_o\ & (((\Y_R[1]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~69_combout\,
	combout => \Y_R[1]~90_combout\);

-- Location: LCCOMB_X65_Y49_N30
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~90_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[30]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[30]~34_combout\,
	datab => \Mux60~3_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~90_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X65_Y49_N0
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux60~2_combout\ & (((\Mux33~1_combout\)))) # (!\Mux60~2_combout\ & ((\Mux33~1_combout\ & (\Shift|rl4[46]~71_combout\)) # (!\Mux33~1_combout\ & ((\Shift|rl4[30]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[46]~71_combout\,
	datab => \Mux60~2_combout\,
	datac => \Mux33~1_combout\,
	datad => \Shift|rl4[30]~69_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X60_Y50_N28
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux33~2_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux33~2_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S[30]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S[30]~28_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X60_Y50_N0
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X60_Y50_N14
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux33~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux33~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X70_Y47_N26
\Add|S[31]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[31]~29_combout\ = \Add|C[31]~30_combout\ $ (\B[31]~input_o\ $ (\AddnSub~input_o\ $ (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[31]~30_combout\,
	datab => \B[31]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[31]~input_o\,
	combout => \Add|S[31]~29_combout\);

-- Location: LCCOMB_X65_Y49_N26
\Y_ShiftOrArith[31]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~18_combout\ = (\ShiftFN[0]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[31]~18_combout\);

-- Location: LCCOMB_X61_Y48_N24
\Shift|ll2[32]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[32]~60_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ll2[32]~60_combout\);

-- Location: LCCOMB_X61_Y48_N10
\Shift|ll2[31]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~61_combout\ = (\B[0]~input_o\ & (\Shift|ll2[31]~58_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[32]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[31]~58_combout\,
	datad => \Shift|ll2[32]~60_combout\,
	combout => \Shift|ll2[31]~61_combout\);

-- Location: LCCOMB_X62_Y44_N14
\Shift|ll4[31]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~49_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[23]~45_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[31]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ll2[31]~61_combout\,
	datad => \Shift|ll2[23]~45_combout\,
	combout => \Shift|ll4[31]~49_combout\);

-- Location: LCCOMB_X62_Y44_N8
\Shift|ll4[31]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~50_combout\ = (\B[2]~input_o\ & (\Shift|ll4[27]~39_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[31]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[27]~39_combout\,
	datab => \Shift|ll4[31]~49_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[31]~50_combout\);

-- Location: LCCOMB_X62_Y44_N20
\Shift|ll4[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~48_combout\ = (\Shift|ll4[15]~12_combout\) # ((\B[3]~input_o\ & \Shift|ll3[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[7]~4_combout\,
	datad => \Shift|ll4[15]~12_combout\,
	combout => \Shift|ll4[15]~48_combout\);

-- Location: LCCOMB_X62_Y44_N26
\Y_ShiftOrArith[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~19_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & ((\B[4]~input_o\ & ((\Shift|ll4[15]~48_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[31]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[31]~50_combout\,
	datad => \Shift|ll4[15]~48_combout\,
	combout => \Y_ShiftOrArith[31]~19_combout\);

-- Location: LCCOMB_X60_Y50_N8
\Y_ShiftOrArith[31]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~20_combout\ = (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[31]~19_combout\) # ((!\ShiftFN[0]~input_o\ & \Add|S[31]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S[31]~29_combout\,
	datad => \Y_ShiftOrArith[31]~19_combout\,
	combout => \Y_ShiftOrArith[31]~20_combout\);

-- Location: LCCOMB_X63_Y46_N4
\Y_ShiftOrArith[31]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~21_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Shift|rl4[47]~74_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[31]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Shift|rl4[31]~72_combout\,
	datad => \Shift|rl4[47]~74_combout\,
	combout => \Y_ShiftOrArith[31]~21_combout\);

-- Location: LCCOMB_X63_Y46_N14
\Y_ShiftOrArith[31]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~22_combout\ = (\A[63]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[63]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[31]~22_combout\);

-- Location: LCCOMB_X63_Y46_N24
\Y_ShiftOrArith[31]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~23_combout\ = (\Y_ShiftOrArith[31]~22_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[4]~input_o\ & \Shift|ra4[62]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_ShiftOrArith[31]~22_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ra4[62]~0_combout\,
	combout => \Y_ShiftOrArith[31]~23_combout\);

-- Location: LCCOMB_X63_Y46_N18
\Y_ShiftOrArith[31]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~24_combout\ = (\Y_ShiftOrArith[31]~20_combout\) # ((\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[31]~21_combout\) # (\Y_ShiftOrArith[31]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~20_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_ShiftOrArith[31]~21_combout\,
	datad => \Y_ShiftOrArith[31]~23_combout\,
	combout => \Y_ShiftOrArith[31]~24_combout\);

-- Location: LCCOMB_X70_Y47_N0
\Logic|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = (\B[31]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[31]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: LCCOMB_X70_Y47_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux32~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux32~0_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X63_Y47_N8
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \A[32]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X65_Y47_N2
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X63_Y46_N28
\Shift|ll5[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[0]~35_combout\ = (!\B[4]~input_o\ & (\A[0]~input_o\ & \Shift|ra4[62]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|ra4[62]~0_combout\,
	combout => \Shift|ll5[0]~35_combout\);

-- Location: LCCOMB_X69_Y45_N14
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ((!\B[5]~input_o\ & \B[4]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X61_Y48_N20
\Shift|ll2[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[33]~62_combout\ = (\B[1]~input_o\ & (\A[30]~input_o\)) # (!\B[1]~input_o\ & ((\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \A[32]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[33]~62_combout\);

-- Location: LCCOMB_X61_Y48_N30
\Shift|ll2[32]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[32]~63_combout\ = (\B[0]~input_o\ & (\Shift|ll2[32]~60_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[33]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[32]~60_combout\,
	datad => \Shift|ll2[33]~62_combout\,
	combout => \Shift|ll2[32]~63_combout\);

-- Location: LCCOMB_X61_Y46_N14
\Shift|ll4[32]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[32]~51_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[24]~47_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[32]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ll2[32]~63_combout\,
	datad => \Shift|ll2[24]~47_combout\,
	combout => \Shift|ll4[32]~51_combout\);

-- Location: LCCOMB_X61_Y46_N16
\Shift|ll4[32]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[32]~52_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[28]~41_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[32]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[32]~51_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[28]~41_combout\,
	combout => \Shift|ll4[32]~52_combout\);

-- Location: LCCOMB_X63_Y46_N30
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & ((\Mux26~2_combout\ & (\Shift|ll4[16]~15_combout\)) # (!\Mux26~2_combout\ & ((\Shift|ll4[32]~52_combout\))))) # (!\Y_ShiftOrArith[31]~18_combout\ & (\Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Mux26~2_combout\,
	datac => \Shift|ll4[16]~15_combout\,
	datad => \Shift|ll4[32]~52_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X63_Y47_N18
\Add|S[32]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[32]~30_combout\ = \B[32]~input_o\ $ (\AddnSub~input_o\ $ (\A[32]~input_o\ $ (\Add|C[32]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[32]~input_o\,
	datad => \Add|C[32]~31_combout\,
	combout => \Add|S[32]~30_combout\);

-- Location: LCCOMB_X63_Y46_N8
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Mux31~1_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux31~1_combout\ & ((\Add|S[32]~30_combout\))) # (!\Mux31~1_combout\ & (\Shift|ll5[0]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Shift|ll5[0]~35_combout\,
	datac => \Mux31~1_combout\,
	datad => \Add|S[32]~30_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X65_Y47_N28
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X63_Y46_N10
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & (\Shift|rl5[32]~0_combout\)) # (!\Mux26~1_combout\ & ((\Mux31~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl5[32]~0_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X65_Y46_N24
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux26~0_combout\ & ((\Mux31~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux31~3_combout\ & (\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X60_Y43_N8
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux31~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux31~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X63_Y47_N4
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[33]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X63_Y47_N14
\Add|S[33]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[33]~31_combout\ = \B[33]~input_o\ $ (\AddnSub~input_o\ $ (\A[33]~input_o\ $ (\Add|C[33]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[33]~input_o\,
	datad => \Add|C[33]~32_combout\,
	combout => \Add|S[33]~31_combout\);

-- Location: LCCOMB_X68_Y47_N30
\Shift|ll5[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[1]~36_combout\ = (!\B[4]~input_o\ & (\Shift|ll1[1]~0_combout\ & !\Shift|ll4[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll1[1]~0_combout\,
	datac => \Shift|ll4[1]~0_combout\,
	combout => \Shift|ll5[1]~36_combout\);

-- Location: LCCOMB_X60_Y48_N18
\Shift|ll2[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[34]~64_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[34]~64_combout\);

-- Location: LCCOMB_X63_Y50_N16
\Shift|ll2[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[33]~65_combout\ = (\B[0]~input_o\ & (\Shift|ll2[33]~62_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[34]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[33]~62_combout\,
	datab => \Shift|ll2[34]~64_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[33]~65_combout\);

-- Location: LCCOMB_X63_Y50_N18
\Shift|ll4[33]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[33]~53_combout\ = (\B[3]~input_o\ & (\Shift|ll2[25]~49_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[33]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[25]~49_combout\,
	datad => \Shift|ll2[33]~65_combout\,
	combout => \Shift|ll4[33]~53_combout\);

-- Location: LCCOMB_X63_Y50_N4
\Shift|ll4[33]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[33]~54_combout\ = (\B[2]~input_o\ & (\Shift|ll4[29]~44_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[33]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[29]~44_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[33]~53_combout\,
	combout => \Shift|ll4[33]~54_combout\);

-- Location: LCCOMB_X68_Y47_N0
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (!\Mux26~2_combout\ & ((\Shift|ll4[33]~54_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux26~2_combout\) # ((\Shift|ll5[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Mux26~2_combout\,
	datac => \Shift|ll5[1]~36_combout\,
	datad => \Shift|ll4[33]~54_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X68_Y47_N26
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux26~2_combout\ & ((\Mux30~1_combout\ & (\Add|S[33]~31_combout\)) # (!\Mux30~1_combout\ & ((\Shift|ll4[17]~18_combout\))))) # (!\Mux26~2_combout\ & (((\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[33]~31_combout\,
	datab => \Mux26~2_combout\,
	datac => \Shift|ll4[17]~18_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X65_Y47_N30
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & ((\Mux26~0_combout\ & ((\Y_ShiftOrArith[31]~24_combout\))) # (!\Mux26~0_combout\ & (\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X65_Y47_N24
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~3_combout\ & ((\Y_R[1]~35_combout\) # ((!\Mux26~1_combout\)))) # (!\Mux30~3_combout\ & (((\Y_R[1]~24_combout\ & \Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Y_R[1]~24_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X63_Y47_N16
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux30~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux30~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X60_Y48_N12
\Shift|ll2[35]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[35]~66_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	combout => \Shift|ll2[35]~66_combout\);

-- Location: LCCOMB_X60_Y48_N30
\Shift|ll2[34]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[34]~67_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[34]~64_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[35]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~66_combout\,
	datab => \Shift|ll2[34]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[34]~67_combout\);

-- Location: LCCOMB_X66_Y47_N6
\Shift|ll4[34]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[34]~55_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[26]~51_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[34]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[34]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[26]~51_combout\,
	combout => \Shift|ll4[34]~55_combout\);

-- Location: LCCOMB_X66_Y47_N0
\Shift|ll4[34]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[34]~56_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[30]~46_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[34]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[34]~55_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[30]~46_combout\,
	combout => \Shift|ll4[34]~56_combout\);

-- Location: LCCOMB_X66_Y47_N26
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux26~2_combout\ & ((\Shift|ll4[18]~21_combout\) # ((!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & (((\Shift|ll4[34]~56_combout\ & \Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[18]~21_combout\,
	datab => \Shift|ll4[34]~56_combout\,
	datac => \Mux26~2_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X63_Y47_N28
\Add|S[34]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[34]~32_combout\ = \Add|C[34]~33_combout\ $ (\AddnSub~input_o\ $ (\B[34]~input_o\ $ (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[34]~33_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Add|S[34]~32_combout\);

-- Location: LCCOMB_X66_Y47_N28
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux29~1_combout\ & ((\Y_ShiftOrArith[31]~18_combout\) # ((\Add|S[34]~32_combout\)))) # (!\Mux29~1_combout\ & (!\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll5[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll5[2]~37_combout\,
	datad => \Add|S[34]~32_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X65_Y46_N10
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & (\Y_R[1]~29_combout\)) # (!\Mux26~1_combout\ & ((\Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Y_R[1]~29_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X65_Y46_N20
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux26~0_combout\ & ((\Mux29~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux29~3_combout\ & (\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (((\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X63_Y47_N26
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X63_Y47_N6
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux29~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux29~4_combout\,
	datac => \Mux29~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X63_Y47_N2
\Add|S[35]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[35]~33_combout\ = \B[35]~input_o\ $ (\AddnSub~input_o\ $ (\A[35]~input_o\ $ (\Add|C[35]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[35]~input_o\,
	datad => \Add|C[35]~34_combout\,
	combout => \Add|S[35]~33_combout\);

-- Location: LCCOMB_X60_Y48_N16
\Shift|ll2[36]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[36]~68_combout\ = (\B[1]~input_o\ & (\A[33]~input_o\)) # (!\B[1]~input_o\ & ((\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[33]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Shift|ll2[36]~68_combout\);

-- Location: LCCOMB_X60_Y48_N26
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

-- Location: LCCOMB_X62_Y48_N16
\Shift|ll4[35]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[35]~57_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[27]~53_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[35]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[35]~69_combout\,
	datac => \Shift|ll2[27]~53_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[35]~57_combout\);

-- Location: LCCOMB_X62_Y48_N26
\Shift|ll4[35]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[35]~58_combout\ = (\B[2]~input_o\ & (\Shift|ll4[31]~49_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[35]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[31]~49_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[35]~57_combout\,
	combout => \Shift|ll4[35]~58_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Shift|ll4[35]~58_combout\ & !\Mux26~2_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll5[3]~38_combout\) # ((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[3]~38_combout\,
	datab => \Shift|ll4[35]~58_combout\,
	datac => \Y_ShiftOrArith[31]~18_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X66_Y44_N4
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux28~1_combout\ & ((\Add|S[35]~33_combout\) # ((!\Mux26~2_combout\)))) # (!\Mux28~1_combout\ & (((\Shift|ll4[19]~24_combout\ & \Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[35]~33_combout\,
	datab => \Mux28~1_combout\,
	datac => \Shift|ll4[19]~24_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X65_Y47_N26
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux26~0_combout\ & ((\Y_ShiftOrArith[31]~24_combout\) # ((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (((\Mux28~2_combout\ & !\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Mux28~2_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X65_Y47_N20
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux28~3_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux26~1_combout\)))) # (!\Mux28~3_combout\ & (\Y_R[1]~33_combout\ & ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~33_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux28~3_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X63_Y47_N0
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X63_Y47_N20
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux28~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux28~4_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X60_Y48_N4
\Shift|ll2[37]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[37]~70_combout\ = (\B[1]~input_o\ & (\A[34]~input_o\)) # (!\B[1]~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Shift|ll2[37]~70_combout\);

-- Location: LCCOMB_X60_Y48_N22
\Shift|ll2[36]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[36]~71_combout\ = (\B[0]~input_o\ & (\Shift|ll2[36]~68_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[37]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[36]~68_combout\,
	datac => \Shift|ll2[37]~70_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[36]~71_combout\);

-- Location: LCCOMB_X61_Y46_N10
\Shift|ll4[36]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[36]~59_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[28]~55_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[36]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[36]~71_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[36]~59_combout\);

-- Location: LCCOMB_X61_Y46_N12
\Shift|ll4[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[36]~60_combout\ = (\Shift|ll4[36]~59_combout\) # ((\Shift|ll4[32]~51_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[36]~59_combout\,
	datab => \Shift|ll4[32]~51_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[36]~60_combout\);

-- Location: LCCOMB_X62_Y46_N2
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux26~2_combout\ & ((\Shift|ll4[20]~26_combout\) # ((!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & (((\Shift|ll4[36]~60_combout\ & \Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Shift|ll4[20]~26_combout\,
	datac => \Shift|ll4[36]~60_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X70_Y47_N8
\Add|S[36]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[36]~34_combout\ = \B[36]~input_o\ $ (\A[36]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[36]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[36]~35_combout\,
	combout => \Add|S[36]~34_combout\);

-- Location: LCCOMB_X62_Y46_N28
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (\Mux27~1_combout\)) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux27~1_combout\ & (\Add|S[36]~34_combout\)) # (!\Mux27~1_combout\ & ((\Shift|ll5[4]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Mux27~1_combout\,
	datac => \Add|S[36]~34_combout\,
	datad => \Shift|ll5[4]~39_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X65_Y46_N30
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & ((\Y_R[1]~37_combout\))) # (!\Mux26~1_combout\ & (\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~2_combout\,
	datac => \Mux26~1_combout\,
	datad => \Y_R[1]~37_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X65_Y46_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux26~0_combout\ & ((\Mux27~3_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux27~3_combout\ & ((\Y_ShiftOrArith[31]~24_combout\))))) # (!\Mux26~0_combout\ & (((\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux27~3_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X70_Y47_N6
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\B[36]~input_o\ & ((\A[36]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X70_Y47_N18
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux27~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X66_Y43_N16
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\B[37]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[37]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X66_Y43_N10
\Add|S[37]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[37]~35_combout\ = \B[37]~input_o\ $ (\A[37]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[37]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[37]~36_combout\,
	combout => \Add|S[37]~35_combout\);

-- Location: LCCOMB_X63_Y50_N6
\Shift|ll2[38]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[38]~72_combout\ = (\B[1]~input_o\ & ((\A[35]~input_o\))) # (!\B[1]~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Shift|ll2[38]~72_combout\);

-- Location: LCCOMB_X63_Y50_N0
\Shift|ll2[37]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[37]~73_combout\ = (\B[0]~input_o\ & (\Shift|ll2[37]~70_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[38]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[37]~70_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[38]~72_combout\,
	combout => \Shift|ll2[37]~73_combout\);

-- Location: LCCOMB_X63_Y50_N10
\Shift|ll4[37]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[37]~61_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[29]~57_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[37]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[29]~57_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[37]~73_combout\,
	combout => \Shift|ll4[37]~61_combout\);

-- Location: LCCOMB_X63_Y50_N12
\Shift|ll4[37]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[37]~62_combout\ = (\Shift|ll4[37]~61_combout\) # ((\B[2]~input_o\ & \Shift|ll4[33]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[37]~61_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[33]~53_combout\,
	combout => \Shift|ll4[37]~62_combout\);

-- Location: LCCOMB_X67_Y46_N30
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((!\Mux26~2_combout\ & \Shift|ll4[37]~62_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll5[5]~40_combout\) # ((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Shift|ll5[5]~40_combout\,
	datac => \Mux26~2_combout\,
	datad => \Shift|ll4[37]~62_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X67_Y46_N8
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~2_combout\ & ((\Mux26~4_combout\ & (\Add|S[37]~35_combout\)) # (!\Mux26~4_combout\ & ((\Shift|ll4[21]~28_combout\))))) # (!\Mux26~2_combout\ & (((\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[37]~35_combout\,
	datab => \Mux26~2_combout\,
	datac => \Mux26~4_combout\,
	datad => \Shift|ll4[21]~28_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X67_Y46_N10
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & ((\Mux26~0_combout\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\Mux26~0_combout\ & ((\Mux26~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~5_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X67_Y46_N12
\Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~1_combout\ & ((\Mux26~6_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux26~6_combout\ & (\Y_R[1]~41_combout\)))) # (!\Mux26~1_combout\ & (((\Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~41_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux26~6_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X67_Y46_N6
\Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux26~3_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux26~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux26~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux26~7_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X66_Y43_N4
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\B[38]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[38]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X66_Y43_N14
\Add|S[38]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[38]~36_combout\ = \A[38]~input_o\ $ (\AddnSub~input_o\ $ (\B[38]~input_o\ $ (\Add|C[38]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[38]~input_o\,
	datad => \Add|C[38]~37_combout\,
	combout => \Add|S[38]~36_combout\);

-- Location: LCCOMB_X62_Y49_N28
\Shift|ll2[39]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[39]~74_combout\ = (\B[1]~input_o\ & (\A[36]~input_o\)) # (!\B[1]~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[36]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|ll2[39]~74_combout\);

-- Location: LCCOMB_X63_Y50_N14
\Shift|ll2[38]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[38]~75_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[38]~72_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[39]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[39]~74_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[38]~72_combout\,
	combout => \Shift|ll2[38]~75_combout\);

-- Location: LCCOMB_X66_Y47_N22
\Shift|ll4[38]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[38]~63_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[30]~59_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[38]~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[30]~59_combout\,
	datad => \Shift|ll2[38]~75_combout\,
	combout => \Shift|ll4[38]~63_combout\);

-- Location: LCCOMB_X66_Y47_N16
\Shift|ll4[38]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[38]~64_combout\ = (\Shift|ll4[38]~63_combout\) # ((\B[2]~input_o\ & \Shift|ll4[34]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[38]~63_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[34]~55_combout\,
	combout => \Shift|ll4[38]~64_combout\);

-- Location: LCCOMB_X66_Y47_N2
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & ((\Mux26~2_combout\ & ((\Shift|ll4[22]~30_combout\))) # (!\Mux26~2_combout\ & (\Shift|ll4[38]~64_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Shift|ll4[38]~64_combout\,
	datac => \Shift|ll4[22]~30_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X67_Y47_N20
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Mux25~1_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux25~1_combout\ & ((\Add|S[38]~36_combout\))) # (!\Mux25~1_combout\ & (\Shift|ll5[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[6]~8_combout\,
	datab => \Add|S[38]~36_combout\,
	datac => \Y_ShiftOrArith[31]~18_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X65_Y46_N18
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux26~0_combout\ & (\Mux26~1_combout\)) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & (\Y_R[1]~46_combout\)) # (!\Mux26~1_combout\ & ((\Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~1_combout\,
	datac => \Y_R[1]~46_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X65_Y46_N28
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux26~0_combout\ & ((\Mux25~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux25~3_combout\ & (\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (((\Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X66_Y43_N24
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux25~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux25~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux25~0_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X66_Y43_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[39]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X62_Y49_N30
\Shift|ll2[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[40]~76_combout\ = (\B[1]~input_o\ & ((\A[37]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[40]~76_combout\);

-- Location: LCCOMB_X62_Y49_N16
\Shift|ll2[39]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[39]~77_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[39]~74_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[40]~76_combout\,
	datad => \Shift|ll2[39]~74_combout\,
	combout => \Shift|ll2[39]~77_combout\);

-- Location: LCCOMB_X62_Y48_N20
\Shift|ll4[39]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[39]~65_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[31]~61_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[39]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[39]~77_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[31]~61_combout\,
	combout => \Shift|ll4[39]~65_combout\);

-- Location: LCCOMB_X62_Y48_N14
\Shift|ll4[39]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[39]~66_combout\ = (\Shift|ll4[39]~65_combout\) # ((\B[2]~input_o\ & \Shift|ll4[35]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[39]~65_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[35]~57_combout\,
	combout => \Shift|ll4[39]~66_combout\);

-- Location: LCCOMB_X65_Y45_N0
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll4[39]~66_combout\ & ((!\Mux26~2_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & (((\Shift|ll5[7]~9_combout\) # (\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[39]~66_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll5[7]~9_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X66_Y43_N12
\Add|S[39]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[39]~37_combout\ = \A[39]~input_o\ $ (\Add|C[39]~38_combout\ $ (\AddnSub~input_o\ $ (\B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \Add|C[39]~38_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[39]~input_o\,
	combout => \Add|S[39]~37_combout\);

-- Location: LCCOMB_X65_Y45_N2
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux26~2_combout\ & ((\Mux24~1_combout\ & ((\Add|S[39]~37_combout\))) # (!\Mux24~1_combout\ & (\Shift|ll4[23]~32_combout\)))) # (!\Mux26~2_combout\ & (\Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Mux24~1_combout\,
	datac => \Shift|ll4[23]~32_combout\,
	datad => \Add|S[39]~37_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X65_Y47_N22
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux26~0_combout\ & (((\Y_ShiftOrArith[31]~24_combout\) # (\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (\Mux24~2_combout\ & ((!\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X65_Y47_N16
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux24~3_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux26~1_combout\)))) # (!\Mux24~3_combout\ & (\Y_R[1]~50_combout\ & ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Y_R[1]~50_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X66_Y43_N22
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux24~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux24~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux24~0_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X66_Y43_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X66_Y43_N2
\Add|S[40]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[40]~38_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[40]~39_combout\,
	combout => \Add|S[40]~38_combout\);

-- Location: LCCOMB_X61_Y46_N22
\Shift|ll4[40]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[40]~67_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[28]~55_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[32]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[32]~63_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[40]~67_combout\);

-- Location: LCCOMB_X62_Y49_N10
\Shift|ll2[41]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[41]~78_combout\ = (\B[1]~input_o\ & ((\A[38]~input_o\))) # (!\B[1]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|ll2[41]~78_combout\);

-- Location: LCCOMB_X62_Y49_N20
\Shift|ll2[40]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[40]~79_combout\ = (\B[0]~input_o\ & (\Shift|ll2[40]~76_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[41]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[40]~76_combout\,
	datad => \Shift|ll2[41]~78_combout\,
	combout => \Shift|ll2[40]~79_combout\);

-- Location: LCCOMB_X61_Y46_N0
\Shift|ll3[40]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[40]~5_combout\ = (\B[2]~input_o\ & (\Shift|ll2[36]~71_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[40]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[36]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[40]~79_combout\,
	combout => \Shift|ll3[40]~5_combout\);

-- Location: LCCOMB_X61_Y46_N26
\Shift|ll4[40]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[40]~68_combout\ = (\Shift|ll4[40]~67_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[40]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[40]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[40]~5_combout\,
	combout => \Shift|ll4[40]~68_combout\);

-- Location: LCCOMB_X65_Y45_N4
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux26~2_combout\ & (((\Shift|ll4[24]~34_combout\)) # (!\Y_ShiftOrArith[31]~18_combout\))) # (!\Mux26~2_combout\ & (\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll4[40]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll4[24]~34_combout\,
	datad => \Shift|ll4[40]~68_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X65_Y45_N30
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Mux23~1_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux23~1_combout\ & (\Add|S[40]~38_combout\)) # (!\Mux23~1_combout\ & ((\Shift|ll5[8]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[40]~38_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Mux23~1_combout\,
	datad => \Shift|ll5[8]~10_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X65_Y46_N14
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\) # (\Y_R[1]~52_combout\)))) # (!\Mux26~1_combout\ & (\Mux23~2_combout\ & (!\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Y_R[1]~52_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X65_Y46_N8
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux26~0_combout\ & ((\Mux23~3_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux23~3_combout\ & ((\Y_ShiftOrArith[31]~24_combout\))))) # (!\Mux26~0_combout\ & (((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux23~3_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X66_Y43_N20
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux23~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux23~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X65_Y44_N26
\Add|S[41]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[41]~39_combout\ = \B[41]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[41]~40_combout\ $ (\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[41]~40_combout\,
	datad => \A[41]~input_o\,
	combout => \Add|S[41]~39_combout\);

-- Location: LCCOMB_X63_Y50_N24
\Shift|ll4[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[41]~69_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[29]~57_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[33]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[29]~57_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[33]~65_combout\,
	combout => \Shift|ll4[41]~69_combout\);

-- Location: LCCOMB_X62_Y49_N14
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

-- Location: LCCOMB_X63_Y50_N26
\Shift|ll2[41]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[41]~81_combout\ = (\B[0]~input_o\ & (\Shift|ll2[41]~78_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[42]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[41]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[42]~80_combout\,
	combout => \Shift|ll2[41]~81_combout\);

-- Location: LCCOMB_X63_Y50_N28
\Shift|ll3[41]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[41]~6_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[37]~73_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[41]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[41]~81_combout\,
	datad => \Shift|ll2[37]~73_combout\,
	combout => \Shift|ll3[41]~6_combout\);

-- Location: LCCOMB_X63_Y50_N30
\Shift|ll4[41]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[41]~70_combout\ = (\Shift|ll4[41]~69_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[41]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[41]~69_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[41]~6_combout\,
	combout => \Shift|ll4[41]~70_combout\);

-- Location: LCCOMB_X65_Y45_N8
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux26~2_combout\ & (((!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & ((\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll4[41]~70_combout\)) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll5[9]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Shift|ll4[41]~70_combout\,
	datac => \Shift|ll5[9]~11_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X65_Y45_N10
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux26~2_combout\ & ((\Mux22~1_combout\ & (\Add|S[41]~39_combout\)) # (!\Mux22~1_combout\ & ((\Shift|ll4[25]~36_combout\))))) # (!\Mux26~2_combout\ & (((\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Add|S[41]~39_combout\,
	datac => \Mux22~1_combout\,
	datad => \Shift|ll4[25]~36_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X65_Y47_N10
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux26~0_combout\ & (((\Y_ShiftOrArith[31]~24_combout\) # (\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (\Mux22~2_combout\ & ((!\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X65_Y47_N12
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~3_combout\ & (((\Y_R[1]~35_combout\)) # (!\Mux26~1_combout\))) # (!\Mux22~3_combout\ & (\Mux26~1_combout\ & ((\Y_R[1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux26~1_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Y_R[1]~56_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X65_Y44_N24
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\B[41]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[41]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X65_Y44_N4
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux22~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X65_Y44_N16
\Shift|ll2[43]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[43]~82_combout\ = (\B[1]~input_o\ & ((\A[40]~input_o\))) # (!\B[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Shift|ll2[43]~82_combout\);

-- Location: LCCOMB_X68_Y52_N2
\Shift|ll2[42]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[42]~83_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[42]~80_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[43]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[43]~82_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[42]~80_combout\,
	combout => \Shift|ll2[42]~83_combout\);

-- Location: LCCOMB_X66_Y49_N16
\Shift|ll3[42]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[42]~7_combout\ = (\B[2]~input_o\ & (\Shift|ll2[38]~75_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[42]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[38]~75_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[42]~83_combout\,
	combout => \Shift|ll3[42]~7_combout\);

-- Location: LCCOMB_X66_Y49_N6
\Shift|ll4[42]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[42]~71_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[30]~59_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[34]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[30]~59_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[34]~67_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[42]~71_combout\);

-- Location: LCCOMB_X66_Y49_N10
\Shift|ll4[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[42]~72_combout\ = (\Shift|ll4[42]~71_combout\) # ((\Shift|ll3[42]~7_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[42]~7_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[42]~71_combout\,
	combout => \Shift|ll4[42]~72_combout\);

-- Location: LCCOMB_X65_Y45_N28
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux26~2_combout\ & (((\Shift|ll4[26]~38_combout\) # (!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & (\Shift|ll4[42]~72_combout\ & ((\Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Shift|ll4[42]~72_combout\,
	datac => \Shift|ll4[26]~38_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X65_Y44_N18
\Add|S[42]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[42]~40_combout\ = \A[42]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[42]~41_combout\ $ (\B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[42]~41_combout\,
	datad => \B[42]~input_o\,
	combout => \Add|S[42]~40_combout\);

-- Location: LCCOMB_X65_Y45_N22
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux21~1_combout\ & ((\Y_ShiftOrArith[31]~18_combout\) # ((\Add|S[42]~40_combout\)))) # (!\Mux21~1_combout\ & (!\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll5[10]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll5[10]~12_combout\,
	datad => \Add|S[42]~40_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X65_Y46_N26
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\) # (\Y_R[1]~60_combout\)))) # (!\Mux26~1_combout\ & (\Mux21~2_combout\ & (!\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Y_R[1]~60_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X65_Y46_N4
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux26~0_combout\ & ((\Mux21~3_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux21~3_combout\ & ((\Y_ShiftOrArith[31]~24_combout\))))) # (!\Mux26~0_combout\ & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux21~3_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X65_Y44_N6
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X65_Y44_N20
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux21~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux21~4_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X65_Y44_N30
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X65_Y44_N2
\Add|S[43]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[43]~41_combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\ $ (\A[43]~input_o\ $ (\Add|C[43]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[43]~input_o\,
	datad => \Add|C[43]~42_combout\,
	combout => \Add|S[43]~41_combout\);

-- Location: LCCOMB_X62_Y48_N24
\Shift|ll4[43]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[43]~73_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[31]~61_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[35]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[31]~61_combout\,
	datab => \Shift|ll2[35]~69_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[43]~73_combout\);

-- Location: LCCOMB_X65_Y44_N0
\Shift|ll2[44]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[44]~84_combout\ = (\B[1]~input_o\ & (\A[41]~input_o\)) # (!\B[1]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[41]~input_o\,
	datac => \A[43]~input_o\,
	combout => \Shift|ll2[44]~84_combout\);

-- Location: LCCOMB_X68_Y52_N4
\Shift|ll2[43]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[43]~85_combout\ = (\B[0]~input_o\ & (\Shift|ll2[43]~82_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[44]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[43]~82_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[44]~84_combout\,
	combout => \Shift|ll2[43]~85_combout\);

-- Location: LCCOMB_X62_Y48_N2
\Shift|ll3[43]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[43]~8_combout\ = (\B[2]~input_o\ & (\Shift|ll2[39]~77_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[43]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[39]~77_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[43]~85_combout\,
	combout => \Shift|ll3[43]~8_combout\);

-- Location: LCCOMB_X62_Y48_N28
\Shift|ll4[43]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[43]~74_combout\ = (\Shift|ll4[43]~73_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[43]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll4[43]~73_combout\,
	datad => \Shift|ll3[43]~8_combout\,
	combout => \Shift|ll4[43]~74_combout\);

-- Location: LCCOMB_X65_Y45_N16
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux26~2_combout\ & (!\Y_ShiftOrArith[31]~18_combout\)) # (!\Mux26~2_combout\ & ((\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll4[43]~74_combout\))) # (!\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll5[11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll5[11]~13_combout\,
	datad => \Shift|ll4[43]~74_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X65_Y45_N18
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux26~2_combout\ & ((\Mux20~1_combout\ & ((\Add|S[43]~41_combout\))) # (!\Mux20~1_combout\ & (\Shift|ll4[27]~40_combout\)))) # (!\Mux26~2_combout\ & (((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Shift|ll4[27]~40_combout\,
	datac => \Add|S[43]~41_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X65_Y47_N14
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux26~0_combout\ & (((\Y_ShiftOrArith[31]~24_combout\) # (\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (\Mux20~2_combout\ & ((!\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X65_Y47_N8
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux26~1_combout\)))) # (!\Mux20~3_combout\ & (\Y_R[1]~63_combout\ & ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~63_combout\,
	datab => \Mux20~3_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X65_Y44_N28
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux20~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux20~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X66_Y46_N10
\Add|S[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[44]~42_combout\ = \AddnSub~input_o\ $ (\B[44]~input_o\ $ (\Add|C[44]~43_combout\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[44]~input_o\,
	datac => \Add|C[44]~43_combout\,
	datad => \A[44]~input_o\,
	combout => \Add|S[44]~42_combout\);

-- Location: LCCOMB_X61_Y46_N20
\Shift|ll4[44]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[44]~75_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[32]~63_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[36]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[36]~71_combout\,
	datab => \Shift|ll2[32]~63_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[44]~75_combout\);

-- Location: LCCOMB_X61_Y50_N2
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

-- Location: LCCOMB_X65_Y44_N14
\Shift|ll2[44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[44]~87_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[44]~84_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[45]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[45]~86_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[44]~84_combout\,
	combout => \Shift|ll2[44]~87_combout\);

-- Location: LCCOMB_X61_Y46_N6
\Shift|ll3[44]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[44]~9_combout\ = (\B[2]~input_o\ & (\Shift|ll2[40]~79_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[44]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[40]~79_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[44]~87_combout\,
	combout => \Shift|ll3[44]~9_combout\);

-- Location: LCCOMB_X61_Y46_N24
\Shift|ll4[44]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[44]~76_combout\ = (\Shift|ll4[44]~75_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[44]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[44]~75_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[44]~9_combout\,
	combout => \Shift|ll4[44]~76_combout\);

-- Location: LCCOMB_X66_Y46_N0
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & ((\Mux26~2_combout\ & ((\Shift|ll4[28]~42_combout\))) # (!\Mux26~2_combout\ & (\Shift|ll4[44]~76_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[44]~76_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Shift|ll4[28]~42_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X66_Y46_N4
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Mux19~1_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux19~1_combout\ & (\Add|S[44]~42_combout\)) # (!\Mux19~1_combout\ & ((\Shift|ll5[12]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[44]~42_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Mux19~1_combout\,
	datad => \Shift|ll5[12]~14_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X65_Y46_N6
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux26~0_combout\ & (\Mux26~1_combout\)) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & (\Y_R[1]~65_combout\)) # (!\Mux26~1_combout\ & ((\Mux19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~1_combout\,
	datac => \Y_R[1]~65_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X65_Y46_N16
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux26~0_combout\ & ((\Mux19~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux19~3_combout\ & (\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (((\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X66_Y46_N14
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\B[44]~input_o\ & ((\A[44]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X67_Y46_N0
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux19~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux19~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X67_Y46_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[45]~input_o\ & (\A[45]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[45]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X66_Y46_N6
\Add|S[45]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[45]~43_combout\ = \AddnSub~input_o\ $ (\A[45]~input_o\ $ (\B[45]~input_o\ $ (\Add|C[45]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \Add|C[45]~44_combout\,
	combout => \Add|S[45]~43_combout\);

-- Location: LCCOMB_X61_Y50_N28
\Shift|ll2[46]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[46]~88_combout\ = (\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[46]~88_combout\);

-- Location: LCCOMB_X61_Y50_N14
\Shift|ll2[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[45]~89_combout\ = (\B[0]~input_o\ & (\Shift|ll2[45]~86_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[46]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[45]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[46]~88_combout\,
	combout => \Shift|ll2[45]~89_combout\);

-- Location: LCCOMB_X63_Y50_N2
\Shift|ll3[45]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[45]~10_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[41]~81_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[45]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[45]~89_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[41]~81_combout\,
	combout => \Shift|ll3[45]~10_combout\);

-- Location: LCCOMB_X63_Y50_N8
\Shift|ll4[45]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[45]~77_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[33]~65_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[37]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[33]~65_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[37]~73_combout\,
	combout => \Shift|ll4[45]~77_combout\);

-- Location: LCCOMB_X68_Y46_N12
\Shift|ll4[45]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[45]~78_combout\ = (\Shift|ll4[45]~77_combout\) # ((\Shift|ll3[45]~10_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[45]~10_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[45]~77_combout\,
	combout => \Shift|ll4[45]~78_combout\);

-- Location: LCCOMB_X68_Y46_N30
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux26~2_combout\ & (((!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & ((\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll4[45]~78_combout\)) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll5[13]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Shift|ll4[45]~78_combout\,
	datac => \Y_ShiftOrArith[31]~18_combout\,
	datad => \Shift|ll5[13]~15_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X68_Y46_N16
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux26~2_combout\ & ((\Mux18~1_combout\ & (\Add|S[45]~43_combout\)) # (!\Mux18~1_combout\ & ((\Shift|ll4[29]~45_combout\))))) # (!\Mux26~2_combout\ & (((\Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Add|S[45]~43_combout\,
	datac => \Mux18~1_combout\,
	datad => \Shift|ll4[29]~45_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X68_Y46_N2
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux26~0_combout\ & ((\Y_ShiftOrArith[31]~24_combout\) # ((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (((!\Mux26~1_combout\ & \Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux26~1_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X68_Y46_N4
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux26~1_combout\ & ((\Mux18~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux18~3_combout\ & (\Y_R[1]~68_combout\)))) # (!\Mux26~1_combout\ & (((\Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~68_combout\,
	datab => \Mux26~1_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X67_Y46_N4
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux18~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux18~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux18~4_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X66_Y49_N4
\Shift|ll4[46]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[46]~79_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[34]~67_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[38]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[38]~75_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[34]~67_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[46]~79_combout\);

-- Location: LCCOMB_X66_Y51_N14
\Shift|ll2[47]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[47]~90_combout\ = (\B[1]~input_o\ & (\A[44]~input_o\)) # (!\B[1]~input_o\ & ((\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[47]~90_combout\);

-- Location: LCCOMB_X66_Y51_N8
\Shift|ll2[46]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[46]~91_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[46]~88_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[47]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[47]~90_combout\,
	datac => \Shift|ll2[46]~88_combout\,
	combout => \Shift|ll2[46]~91_combout\);

-- Location: LCCOMB_X66_Y49_N22
\Shift|ll3[46]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[46]~11_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[42]~83_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[46]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[46]~91_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[42]~83_combout\,
	combout => \Shift|ll3[46]~11_combout\);

-- Location: LCCOMB_X66_Y49_N0
\Shift|ll4[46]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[46]~80_combout\ = (\Shift|ll4[46]~79_combout\) # ((\Shift|ll3[46]~11_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[46]~79_combout\,
	datac => \Shift|ll3[46]~11_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[46]~80_combout\);

-- Location: LCCOMB_X66_Y47_N4
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & ((\Mux26~2_combout\ & ((\Shift|ll4[30]~47_combout\))) # (!\Mux26~2_combout\ & (\Shift|ll4[46]~80_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & (\Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Mux26~2_combout\,
	datac => \Shift|ll4[46]~80_combout\,
	datad => \Shift|ll4[30]~47_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X70_Y47_N30
\Add|S[46]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[46]~44_combout\ = \Add|C[46]~45_combout\ $ (\A[46]~input_o\ $ (\AddnSub~input_o\ $ (\B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \Add|S[46]~44_combout\);

-- Location: LCCOMB_X66_Y47_N14
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (((\Mux17~1_combout\)))) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Mux17~1_combout\ & ((\Add|S[46]~44_combout\))) # (!\Mux17~1_combout\ & (\Shift|ll5[14]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[14]~16_combout\,
	datab => \Y_ShiftOrArith[31]~18_combout\,
	datac => \Mux17~1_combout\,
	datad => \Add|S[46]~44_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X65_Y46_N2
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux26~1_combout\ & ((\Y_R[1]~70_combout\) # ((\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & (((!\Mux26~0_combout\ & \Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~70_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X65_Y46_N12
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux26~0_combout\ & ((\Mux17~3_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux17~3_combout\ & (\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X70_Y47_N12
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\B[46]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[46]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[46]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X70_Y47_N16
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux17~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X62_Y50_N22
\Shift|ll2[48]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[48]~92_combout\ = (\B[1]~input_o\ & (\A[45]~input_o\)) # (!\B[1]~input_o\ & ((\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[48]~92_combout\);

-- Location: LCCOMB_X66_Y51_N2
\Shift|ll2[47]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[47]~93_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[47]~90_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[48]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[48]~92_combout\,
	datac => \Shift|ll2[47]~90_combout\,
	combout => \Shift|ll2[47]~93_combout\);

-- Location: LCCOMB_X62_Y48_N8
\Shift|ll3[47]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[47]~12_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[43]~85_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[47]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[47]~93_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[43]~85_combout\,
	combout => \Shift|ll3[47]~12_combout\);

-- Location: LCCOMB_X62_Y48_N30
\Shift|ll4[47]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[47]~81_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[35]~69_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[39]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[39]~77_combout\,
	datab => \Shift|ll2[35]~69_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[47]~81_combout\);

-- Location: LCCOMB_X62_Y48_N18
\Shift|ll4[47]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[47]~82_combout\ = (\Shift|ll4[47]~81_combout\) # ((\Shift|ll3[47]~12_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[47]~12_combout\,
	datac => \Shift|ll4[47]~81_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[47]~82_combout\);

-- Location: LCCOMB_X62_Y44_N12
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Y_ShiftOrArith[31]~18_combout\ & (\Shift|ll4[47]~82_combout\ & (!\Mux26~2_combout\))) # (!\Y_ShiftOrArith[31]~18_combout\ & (((\Mux26~2_combout\) # (\Shift|ll5[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~18_combout\,
	datab => \Shift|ll4[47]~82_combout\,
	datac => \Mux26~2_combout\,
	datad => \Shift|ll5[15]~17_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X70_Y47_N4
\Add|S[47]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[47]~45_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[47]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \B[47]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[47]~46_combout\,
	combout => \Add|S[47]~45_combout\);

-- Location: LCCOMB_X62_Y44_N22
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\ & (((\Add|S[47]~45_combout\) # (!\Mux26~2_combout\)))) # (!\Mux16~1_combout\ & (\Shift|ll4[31]~50_combout\ & (\Mux26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Shift|ll4[31]~50_combout\,
	datac => \Mux26~2_combout\,
	datad => \Add|S[47]~45_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X65_Y47_N18
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux26~0_combout\ & (((\Y_ShiftOrArith[31]~24_combout\) # (\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & (\Mux16~2_combout\ & ((!\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X65_Y47_N4
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~3_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux26~1_combout\)))) # (!\Mux16~3_combout\ & (\Y_R[1]~72_combout\ & ((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~72_combout\,
	datab => \Mux16~3_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X70_Y47_N10
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[47]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X70_Y47_N22
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux16~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X73_Y53_N2
\Add|S[48]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[48]~46_combout\ = \Add|C[48]~47_combout\ $ (\B[48]~input_o\ $ (\AddnSub~input_o\ $ (\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[48]~47_combout\,
	datab => \B[48]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[48]~input_o\,
	combout => \Add|S[48]~46_combout\);

-- Location: LCCOMB_X62_Y50_N16
\Shift|ll2[49]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[49]~94_combout\ = (\B[1]~input_o\ & (\A[46]~input_o\)) # (!\B[1]~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|ll2[49]~94_combout\);

-- Location: LCCOMB_X62_Y50_N10
\Shift|ll2[48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[48]~95_combout\ = (\B[0]~input_o\ & (\Shift|ll2[48]~92_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[49]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[48]~92_combout\,
	datab => \Shift|ll2[49]~94_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[48]~95_combout\);

-- Location: LCCOMB_X61_Y46_N18
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

-- Location: LCCOMB_X61_Y46_N4
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux54~1_combout\ & (((\Shift|ll3[40]~5_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (\Shift|ll3[48]~13_combout\ & (\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[48]~13_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[40]~5_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X63_Y49_N6
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & ((\Shift|ll5[16]~18_combout\) # ((\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux15~2_combout\ & (((\Shift|ll4[32]~52_combout\ & !\Y_ShiftOrArith[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[16]~18_combout\,
	datab => \Shift|ll4[32]~52_combout\,
	datac => \Mux15~2_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X63_Y49_N24
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux59~6_combout\) # (\Y_R[1]~82_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux15~3_combout\ & (!\Mux59~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux59~6_combout\,
	datad => \Y_R[1]~82_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X69_Y49_N4
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux59~6_combout\ & ((\Mux15~4_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux15~4_combout\ & ((\Add|S[48]~46_combout\))))) # (!\Mux59~6_combout\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Mux59~6_combout\,
	datac => \Add|S[48]~46_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X72_Y53_N18
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux15~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X73_Y53_N4
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\B[48]~input_o\ & ((\A[48]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[48]~input_o\ & (\A[48]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[48]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X72_Y53_N16
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux15~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux15~8_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X73_Y53_N16
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\B[49]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[49]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[49]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X73_Y53_N22
\Add|S[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[49]~47_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\ $ (\A[49]~input_o\ $ (\Add|C[49]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|C[49]~48_combout\,
	combout => \Add|S[49]~47_combout\);

-- Location: LCCOMB_X62_Y50_N28
\Shift|ll2[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[50]~96_combout\ = (\B[1]~input_o\ & ((\A[47]~input_o\))) # (!\B[1]~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	combout => \Shift|ll2[50]~96_combout\);

-- Location: LCCOMB_X62_Y50_N14
\Shift|ll2[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[49]~97_combout\ = (\B[0]~input_o\ & (\Shift|ll2[49]~94_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[50]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[49]~94_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[50]~96_combout\,
	combout => \Shift|ll2[49]~97_combout\);

-- Location: LCCOMB_X63_Y50_N20
\Shift|ll3[49]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[49]~14_combout\ = (\B[2]~input_o\ & (\Shift|ll2[45]~89_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[49]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[45]~89_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll2[49]~97_combout\,
	combout => \Shift|ll3[49]~14_combout\);

-- Location: LCCOMB_X68_Y47_N4
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux54~1_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll3[49]~14_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll4[33]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|ll3[49]~14_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll4[33]~54_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X72_Y53_N2
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux54~1_combout\ & ((\Mux14~2_combout\ & (\Shift|ll5[17]~19_combout\)) # (!\Mux14~2_combout\ & ((\Shift|ll3[41]~6_combout\))))) # (!\Mux54~1_combout\ & (\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Mux14~2_combout\,
	datac => \Shift|ll5[17]~19_combout\,
	datad => \Shift|ll3[41]~6_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X72_Y53_N20
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux59~6_combout\) # ((\Y_R[1]~75_combout\)))) # (!\ShiftFN[1]~input_o\ & (!\Mux59~6_combout\ & ((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux59~6_combout\,
	datac => \Y_R[1]~75_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X72_Y53_N22
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux59~6_combout\)))) # (!\Mux14~4_combout\ & (\Add|S[49]~47_combout\ & ((\Mux59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[49]~47_combout\,
	datab => \Mux14~4_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux59~6_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X72_Y53_N4
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux14~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X72_Y53_N24
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux14~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux14~6_combout\,
	datac => \Mux14~8_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X73_Y53_N20
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[50]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X65_Y50_N30
\Shift|ll2[51]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[51]~98_combout\ = (\B[1]~input_o\ & (\A[48]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Shift|ll2[51]~98_combout\);

-- Location: LCCOMB_X65_Y50_N8
\Shift|ll2[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[50]~99_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[50]~96_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[51]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[51]~98_combout\,
	datab => \Shift|ll2[50]~96_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[50]~99_combout\);

-- Location: LCCOMB_X66_Y49_N26
\Shift|ll3[50]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[50]~15_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[46]~91_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[50]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[50]~99_combout\,
	datac => \Shift|ll2[46]~91_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[50]~15_combout\);

-- Location: LCCOMB_X66_Y49_N28
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux54~1_combout\ & (((\Shift|ll3[42]~7_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (\Shift|ll3[50]~15_combout\ & (\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[50]~15_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[42]~7_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X66_Y49_N14
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\Y_ShiftOrArith[1]~11_combout\) # (\Shift|ll5[18]~20_combout\)))) # (!\Mux13~2_combout\ & (\Shift|ll4[34]~56_combout\ & (!\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[34]~56_combout\,
	datab => \Mux13~2_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll5[18]~20_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X69_Y49_N30
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux59~6_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\Mux59~6_combout\ & ((\ShiftFN[1]~input_o\ & ((\Y_R[1]~77_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux59~6_combout\,
	datac => \Y_R[1]~77_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X73_Y53_N26
\Add|S[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[50]~48_combout\ = \Add|C[50]~49_combout\ $ (\AddnSub~input_o\ $ (\A[50]~input_o\ $ (\B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[50]~49_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Add|S[50]~48_combout\);

-- Location: LCCOMB_X69_Y49_N24
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux59~6_combout\ & ((\Mux13~4_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux13~4_combout\ & ((\Add|S[50]~48_combout\))))) # (!\Mux59~6_combout\ & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Mux59~6_combout\,
	datac => \Mux13~4_combout\,
	datad => \Add|S[50]~48_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X72_Y53_N14
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux13~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X72_Y53_N10
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux13~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux13~6_combout\,
	datac => \Mux13~8_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X73_Y53_N30
\Add|S[51]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[51]~49_combout\ = \Add|C[51]~50_combout\ $ (\AddnSub~input_o\ $ (\B[51]~input_o\ $ (\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[51]~50_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Add|S[51]~49_combout\);

-- Location: LCCOMB_X65_Y50_N26
\Shift|ll2[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[52]~100_combout\ = (\B[1]~input_o\ & (\A[49]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|ll2[52]~100_combout\);

-- Location: LCCOMB_X65_Y50_N28
\Shift|ll2[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[51]~101_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[51]~98_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[52]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[52]~100_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[51]~98_combout\,
	combout => \Shift|ll2[51]~101_combout\);

-- Location: LCCOMB_X62_Y48_N12
\Shift|ll3[51]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[51]~16_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[47]~93_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[51]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[51]~101_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[47]~93_combout\,
	combout => \Shift|ll3[51]~16_combout\);

-- Location: LCCOMB_X62_Y48_N22
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux54~1_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll3[51]~16_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll4[35]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[35]~58_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[51]~16_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X62_Y48_N0
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\Shift|ll5[19]~21_combout\) # (!\Mux54~1_combout\)))) # (!\Mux12~2_combout\ & (\Shift|ll3[43]~8_combout\ & ((\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[43]~8_combout\,
	datab => \Shift|ll5[19]~21_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X69_Y49_N10
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_R[1]~78_combout\) # (\Mux59~6_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux12~3_combout\ & ((!\Mux59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux12~3_combout\,
	datac => \Y_R[1]~78_combout\,
	datad => \Mux59~6_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X69_Y49_N28
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux59~6_combout\ & ((\Mux12~4_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux12~4_combout\ & ((\Add|S[51]~49_combout\))))) # (!\Mux59~6_combout\ & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Mux59~6_combout\,
	datac => \Add|S[51]~49_combout\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X72_Y53_N0
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux12~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X73_Y53_N8
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\B[51]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[51]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[51]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X72_Y53_N12
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux12~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux12~8_combout\,
	datac => \Mux12~6_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X73_Y53_N28
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\B[52]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[52]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X65_Y50_N22
\Shift|ll2[53]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[53]~102_combout\ = (\B[1]~input_o\ & ((\A[50]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Shift|ll2[53]~102_combout\);

-- Location: LCCOMB_X65_Y50_N0
\Shift|ll2[52]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[52]~103_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[52]~100_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[53]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[53]~102_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[52]~100_combout\,
	combout => \Shift|ll2[52]~103_combout\);

-- Location: LCCOMB_X61_Y46_N30
\Shift|ll3[52]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[52]~17_combout\ = (\B[2]~input_o\ & (\Shift|ll2[48]~95_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[52]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[48]~95_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[52]~103_combout\,
	combout => \Shift|ll3[52]~17_combout\);

-- Location: LCCOMB_X62_Y46_N30
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux54~1_combout\ & (\Shift|ll3[44]~9_combout\)) # (!\Mux54~1_combout\ & ((\Shift|ll3[52]~17_combout\))))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Mux54~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ll3[44]~9_combout\,
	datad => \Shift|ll3[52]~17_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X62_Y46_N8
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux11~2_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux11~2_combout\ & ((\Shift|ll5[20]~22_combout\))) # (!\Mux11~2_combout\ & (\Shift|ll4[36]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll4[36]~60_combout\,
	datac => \Mux11~2_combout\,
	datad => \Shift|ll5[20]~22_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X62_Y46_N26
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\ShiftFN[1]~input_o\ & (((\Mux59~6_combout\) # (\Y_R[1]~79_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux11~3_combout\ & (!\Mux59~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux11~3_combout\,
	datac => \Mux59~6_combout\,
	datad => \Y_R[1]~79_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X73_Y53_N18
\Add|S[52]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[52]~50_combout\ = \Add|C[52]~51_combout\ $ (\B[52]~input_o\ $ (\A[52]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[52]~51_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[52]~50_combout\);

-- Location: LCCOMB_X72_Y53_N30
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux59~6_combout\ & ((\Mux11~4_combout\ & (\Y_R[1]~35_combout\)) # (!\Mux11~4_combout\ & ((\Add|S[52]~50_combout\))))) # (!\Mux59~6_combout\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~35_combout\,
	datab => \Mux59~6_combout\,
	datac => \Mux11~4_combout\,
	datad => \Add|S[52]~50_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X72_Y53_N26
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux11~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X72_Y53_N8
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux11~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux11~6_combout\,
	datac => \Mux11~8_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X67_Y53_N30
\Add|S[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[53]~51_combout\ = \AddnSub~input_o\ $ (\Add|C[53]~52_combout\ $ (\A[53]~input_o\ $ (\B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Add|S[53]~51_combout\);

-- Location: LCCOMB_X65_Y50_N2
\Shift|ll2[54]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[54]~104_combout\ = (\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|ll2[54]~104_combout\);

-- Location: LCCOMB_X65_Y50_N20
\Shift|ll2[53]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[53]~105_combout\ = (\B[0]~input_o\ & (\Shift|ll2[53]~102_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[54]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[53]~102_combout\,
	datab => \Shift|ll2[54]~104_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[53]~105_combout\);

-- Location: LCCOMB_X63_Y50_N22
\Shift|ll3[53]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[53]~18_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[49]~97_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[53]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[53]~105_combout\,
	datad => \Shift|ll2[49]~97_combout\,
	combout => \Shift|ll3[53]~18_combout\);

-- Location: LCCOMB_X66_Y49_N24
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux54~1_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll3[53]~18_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll4[37]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[37]~62_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[53]~18_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X66_Y52_N8
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\Shift|ll5[21]~23_combout\) # (!\Mux54~1_combout\)))) # (!\Mux10~2_combout\ & (\Shift|ll3[45]~10_combout\ & (\Mux54~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[45]~10_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ll5[21]~23_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X66_Y52_N2
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux59~6_combout\) # ((\Y_R[1]~83_combout\)))) # (!\ShiftFN[1]~input_o\ & (!\Mux59~6_combout\ & (\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux59~6_combout\,
	datac => \Mux10~3_combout\,
	datad => \Y_R[1]~83_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X66_Y52_N28
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux59~6_combout\ & ((\Mux10~4_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux10~4_combout\ & (\Add|S[53]~51_combout\)))) # (!\Mux59~6_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[53]~51_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux59~6_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X67_Y53_N12
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X67_Y53_N8
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\B[53]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[53]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X67_Y53_N26
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux10~8_combout\) # ((\Mux10~6_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~8_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux10~6_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X67_Y51_N8
\Shift|ll2[55]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[55]~106_combout\ = (\B[1]~input_o\ & ((\A[52]~input_o\))) # (!\B[1]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Shift|ll2[55]~106_combout\);

-- Location: LCCOMB_X65_Y50_N14
\Shift|ll2[54]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[54]~107_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[54]~104_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[55]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[55]~106_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[54]~104_combout\,
	combout => \Shift|ll2[54]~107_combout\);

-- Location: LCCOMB_X66_Y49_N18
\Shift|ll3[54]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[54]~19_combout\ = (\B[2]~input_o\ & (\Shift|ll2[50]~99_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[54]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ll2[50]~99_combout\,
	datad => \Shift|ll2[54]~107_combout\,
	combout => \Shift|ll3[54]~19_combout\);

-- Location: LCCOMB_X66_Y49_N12
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux54~1_combout\ & ((\Shift|ll3[46]~11_combout\) # ((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux54~1_combout\ & (((\Y_ShiftOrArith[1]~11_combout\ & \Shift|ll3[54]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[46]~11_combout\,
	datab => \Mux54~1_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[54]~19_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X66_Y49_N30
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux9~2_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux9~2_combout\ & ((\Shift|ll5[22]~24_combout\))) # (!\Mux9~2_combout\ & (\Shift|ll4[38]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll4[38]~64_combout\,
	datac => \Shift|ll5[22]~24_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X66_Y48_N12
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux59~6_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\Mux59~6_combout\ & ((\ShiftFN[1]~input_o\ & (\Y_R[1]~84_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~6_combout\,
	datab => \Y_R[1]~84_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X67_Y53_N28
\Add|S[54]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[54]~52_combout\ = \AddnSub~input_o\ $ (\Add|C[54]~53_combout\ $ (\A[54]~input_o\ $ (\B[54]~input_o\)))

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
	combout => \Add|S[54]~52_combout\);

-- Location: LCCOMB_X67_Y53_N22
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & ((\Y_R[1]~35_combout\) # ((!\Mux59~6_combout\)))) # (!\Mux9~4_combout\ & (((\Mux59~6_combout\ & \Add|S[54]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux59~6_combout\,
	datad => \Add|S[54]~52_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X67_Y53_N6
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Mux9~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X67_Y53_N0
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\B[54]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[54]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X67_Y53_N10
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux9~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~8_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X67_Y51_N26
\Shift|ll2[56]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[56]~108_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ll2[56]~108_combout\);

-- Location: LCCOMB_X67_Y51_N20
\Shift|ll2[55]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[55]~109_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[55]~106_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[56]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[56]~108_combout\,
	datab => \Shift|ll2[55]~106_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[55]~109_combout\);

-- Location: LCCOMB_X62_Y48_N10
\Shift|ll3[55]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[55]~20_combout\ = (\B[2]~input_o\ & (\Shift|ll2[51]~101_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[55]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[51]~101_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[55]~109_combout\,
	combout => \Shift|ll3[55]~20_combout\);

-- Location: LCCOMB_X62_Y48_N4
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll3[55]~20_combout\ & ((!\Mux54~1_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Shift|ll4[39]~66_combout\) # (\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[55]~20_combout\,
	datab => \Shift|ll4[39]~66_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X62_Y48_N6
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & ((\Shift|ll5[23]~25_combout\) # ((!\Mux54~1_combout\)))) # (!\Mux8~2_combout\ & (((\Shift|ll3[47]~12_combout\ & \Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[23]~25_combout\,
	datab => \Shift|ll3[47]~12_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X66_Y52_N30
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_R[1]~85_combout\) # ((\Mux59~6_combout\)))) # (!\ShiftFN[1]~input_o\ & (((!\Mux59~6_combout\ & \Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_R[1]~85_combout\,
	datac => \Mux59~6_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X67_Y53_N20
\Add|S[55]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[55]~53_combout\ = \AddnSub~input_o\ $ (\Add|C[55]~54_combout\ $ (\A[55]~input_o\ $ (\B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[55]~54_combout\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Add|S[55]~53_combout\);

-- Location: LCCOMB_X66_Y52_N24
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & ((\Y_R[1]~35_combout\) # ((!\Mux59~6_combout\)))) # (!\Mux8~4_combout\ & (((\Mux59~6_combout\ & \Add|S[55]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux59~6_combout\,
	datad => \Add|S[55]~53_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X66_Y52_N14
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X67_Y53_N14
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\B[55]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[55]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X67_Y53_N24
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux8~8_combout\) # ((\Mux8~6_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux8~6_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X68_Y52_N8
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\B[56]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[56]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X69_Y52_N10
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X65_Y49_N28
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X67_Y51_N30
\Shift|ll2[57]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~110_combout\ = (\B[1]~input_o\ & ((\A[54]~input_o\))) # (!\B[1]~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|ll2[57]~110_combout\);

-- Location: LCCOMB_X67_Y51_N0
\Shift|ll2[56]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[56]~111_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[56]~108_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[57]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[57]~110_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[56]~108_combout\,
	combout => \Shift|ll2[56]~111_combout\);

-- Location: LCCOMB_X65_Y48_N16
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux59~2_combout\ & (((\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & ((\Mux59~1_combout\ & (\Shift|ll2[52]~103_combout\)) # (!\Mux59~1_combout\ & ((\Shift|ll2[56]~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[52]~103_combout\,
	datab => \Shift|ll2[56]~111_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X65_Y48_N18
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (((\Shift|ll4[40]~68_combout\) # (!\Mux59~2_combout\)))) # (!\Mux7~3_combout\ & (\Shift|ll3[48]~13_combout\ & (\Mux59~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[48]~13_combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux59~2_combout\,
	datad => \Shift|ll4[40]~68_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X68_Y48_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X68_Y52_N30
\Add|S[56]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[56]~54_combout\ = \AddnSub~input_o\ $ (\Add|C[56]~55_combout\ $ (\B[56]~input_o\ $ (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[56]~55_combout\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Add|S[56]~54_combout\);

-- Location: LCCOMB_X68_Y48_N28
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~0_combout\ & ((\Mux7~4_combout\) # ((\Mux7~2_combout\)))) # (!\Mux7~0_combout\ & (((!\Mux7~2_combout\ & \Add|S[56]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \Add|S[56]~54_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X68_Y48_N30
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux7~2_combout\ & ((\Mux7~5_combout\ & ((\Shift|ll5[24]~26_combout\))) # (!\Mux7~5_combout\ & (\Y_R[1]~80_combout\)))) # (!\Mux7~2_combout\ & (((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~80_combout\,
	datab => \Shift|ll5[24]~26_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X69_Y52_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ExtWord~input_o\ & !\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X69_Y52_N28
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux7~1_combout\ & (((\Y_R[1]~35_combout\) # (!\Mux1~0_combout\)))) # (!\Mux7~1_combout\ & (\Mux7~6_combout\ & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~6_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X69_Y52_N6
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux7~7_combout\ & ((\Mux7~8_combout\) # ((\Mux1~0_combout\)))) # (!\Mux7~7_combout\ & (((\Y_ShiftOrArith[31]~24_combout\ & !\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \Mux7~7_combout\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X69_Y52_N0
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (!\FuncClass[1]~input_o\ & \Mux7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X68_Y52_N12
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\B[57]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[57]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X67_Y51_N2
\Shift|ll2[57]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~112_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[55]~input_o\)) # (!\B[1]~input_o\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shift|ll2[57]~112_combout\);

-- Location: LCCOMB_X67_Y51_N28
\Shift|ll2[57]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~113_combout\ = (\Shift|ll2[57]~112_combout\) # ((\Shift|ll2[57]~110_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[57]~110_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[57]~112_combout\,
	combout => \Shift|ll2[57]~113_combout\);

-- Location: LCCOMB_X65_Y48_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux59~2_combout\ & ((\Mux59~1_combout\) # ((\Shift|ll3[49]~14_combout\)))) # (!\Mux59~2_combout\ & (!\Mux59~1_combout\ & ((\Shift|ll2[57]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~2_combout\,
	datab => \Mux59~1_combout\,
	datac => \Shift|ll3[49]~14_combout\,
	datad => \Shift|ll2[57]~113_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X65_Y48_N30
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\Shift|ll4[41]~70_combout\) # (!\Mux59~1_combout\)))) # (!\Mux6~0_combout\ & (\Shift|ll2[53]~105_combout\ & ((\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[53]~105_combout\,
	datab => \Shift|ll4[41]~70_combout\,
	datac => \Mux6~0_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X68_Y52_N26
\Add|S[57]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[57]~55_combout\ = \AddnSub~input_o\ $ (\Add|C[57]~56_combout\ $ (\A[57]~input_o\ $ (\B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[57]~56_combout\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|S[57]~55_combout\);

-- Location: LCCOMB_X68_Y48_N16
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux7~0_combout\ & (((\Mux7~2_combout\)))) # (!\Mux7~0_combout\ & ((\Mux7~2_combout\ & (\Y_R[1]~86_combout\)) # (!\Mux7~2_combout\ & ((\Add|S[57]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~86_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \Add|S[57]~55_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X68_Y48_N2
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux7~0_combout\ & ((\Mux6~2_combout\ & ((\Shift|ll5[25]~27_combout\))) # (!\Mux6~2_combout\ & (\Mux6~1_combout\)))) # (!\Mux7~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Shift|ll5[25]~27_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X69_Y52_N18
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux1~0_combout\ & (\Mux6~3_combout\ & ((!\Mux7~1_combout\)))) # (!\Mux1~0_combout\ & (((\Y_ShiftOrArith[31]~24_combout\) # (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux1~0_combout\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X69_Y52_N4
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~4_combout\ & ((\Mux6~5_combout\) # ((!\Mux7~1_combout\)))) # (!\Mux6~4_combout\ & (((\Y_R[1]~35_combout\ & \Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux6~4_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X69_Y52_N14
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~6_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X68_Y52_N16
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\B[58]~input_o\ & ((\A[58]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[58]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X66_Y51_N20
\Shift|ll1[58]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[58]~1_combout\ = (\B[0]~input_o\ & (\A[57]~input_o\)) # (!\B[0]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[57]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ll1[58]~1_combout\);

-- Location: LCCOMB_X67_Y51_N14
\Shift|ll2[58]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[58]~114_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[55]~input_o\))) # (!\B[0]~input_o\ & (\A[56]~input_o\))))

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
	combout => \Shift|ll2[58]~114_combout\);

-- Location: LCCOMB_X68_Y51_N14
\Shift|ll2[58]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[58]~115_combout\ = (\Shift|ll2[58]~114_combout\) # ((!\B[1]~input_o\ & \Shift|ll1[58]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[58]~1_combout\,
	datad => \Shift|ll2[58]~114_combout\,
	combout => \Shift|ll2[58]~115_combout\);

-- Location: LCCOMB_X65_Y48_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux59~2_combout\ & (((\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & ((\Mux59~1_combout\ & ((\Shift|ll2[54]~107_combout\))) # (!\Mux59~1_combout\ & (\Shift|ll2[58]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[58]~115_combout\,
	datab => \Shift|ll2[54]~107_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X65_Y48_N10
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\Shift|ll4[42]~72_combout\) # (!\Mux59~2_combout\)))) # (!\Mux5~0_combout\ & (\Shift|ll3[50]~15_combout\ & (\Mux59~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[50]~15_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux59~2_combout\,
	datad => \Shift|ll4[42]~72_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X68_Y52_N22
\Add|S[58]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[58]~56_combout\ = \Add|C[58]~57_combout\ $ (\AddnSub~input_o\ $ (\A[58]~input_o\ $ (\B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[58]~57_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Add|S[58]~56_combout\);

-- Location: LCCOMB_X68_Y48_N20
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux7~2_combout\ & (((\Mux7~0_combout\)))) # (!\Mux7~2_combout\ & ((\Mux7~0_combout\ & (\Mux5~1_combout\)) # (!\Mux7~0_combout\ & ((\Add|S[58]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux7~2_combout\,
	datac => \Mux7~0_combout\,
	datad => \Add|S[58]~56_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X65_Y49_N14
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux7~2_combout\ & ((\Mux5~2_combout\ & (\Shift|ll5[26]~28_combout\)) # (!\Mux5~2_combout\ & ((\Y_R[1]~87_combout\))))) # (!\Mux7~2_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[26]~28_combout\,
	datab => \Mux7~2_combout\,
	datac => \Mux5~2_combout\,
	datad => \Y_R[1]~87_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X69_Y52_N16
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux1~0_combout\ & ((\Mux7~1_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux7~1_combout\ & (\Mux5~3_combout\)))) # (!\Mux1~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux1~0_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X69_Y52_N26
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~4_combout\ & ((\Mux5~5_combout\) # ((\Mux1~0_combout\)))) # (!\Mux5~4_combout\ & (((\Y_ShiftOrArith[31]~24_combout\ & !\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux5~4_combout\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X69_Y52_N12
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X68_Y52_N18
\Add|S[59]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[59]~57_combout\ = \AddnSub~input_o\ $ (\Add|C[59]~58_combout\ $ (\B[59]~input_o\ $ (\A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[59]~58_combout\,
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Add|S[59]~57_combout\);

-- Location: LCCOMB_X68_Y48_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux7~0_combout\ & (((\Mux7~2_combout\)))) # (!\Mux7~0_combout\ & ((\Mux7~2_combout\ & (\Y_R[1]~88_combout\)) # (!\Mux7~2_combout\ & ((\Add|S[59]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~88_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \Add|S[59]~57_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X66_Y51_N30
\Shift|ll2[59]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[59]~116_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[56]~input_o\))) # (!\B[0]~input_o\ & (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|ll2[59]~116_combout\);

-- Location: LCCOMB_X66_Y51_N16
\Shift|ll1[59]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[59]~2_combout\ = (\B[0]~input_o\ & ((\A[58]~input_o\))) # (!\B[0]~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ll1[59]~2_combout\);

-- Location: LCCOMB_X66_Y51_N10
\Shift|ll2[59]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[59]~117_combout\ = (\Shift|ll2[59]~116_combout\) # ((!\B[1]~input_o\ & \Shift|ll1[59]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|ll2[59]~116_combout\,
	datad => \Shift|ll1[59]~2_combout\,
	combout => \Shift|ll2[59]~117_combout\);

-- Location: LCCOMB_X65_Y48_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux59~2_combout\ & ((\Shift|ll3[51]~16_combout\) # ((\Mux59~1_combout\)))) # (!\Mux59~2_combout\ & (((\Shift|ll2[59]~117_combout\ & !\Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[51]~16_combout\,
	datab => \Shift|ll2[59]~117_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X65_Y48_N22
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\Shift|ll4[43]~74_combout\) # ((!\Mux59~1_combout\)))) # (!\Mux4~0_combout\ & (((\Shift|ll2[55]~109_combout\ & \Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll4[43]~74_combout\,
	datac => \Shift|ll2[55]~109_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X68_Y48_N24
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\Shift|ll5[27]~29_combout\)) # (!\Mux7~0_combout\))) # (!\Mux4~2_combout\ & (\Mux7~0_combout\ & (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux4~1_combout\,
	datad => \Shift|ll5[27]~29_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X69_Y52_N22
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux7~1_combout\ & (((!\Mux1~0_combout\)))) # (!\Mux7~1_combout\ & ((\Mux1~0_combout\ & (\Mux4~3_combout\)) # (!\Mux1~0_combout\ & ((\Y_ShiftOrArith[31]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux4~3_combout\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X68_Y52_N20
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\B[59]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[59]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X69_Y52_N8
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~4_combout\ & ((\Mux4~5_combout\) # ((!\Mux7~1_combout\)))) # (!\Mux4~4_combout\ & (((\Y_R[1]~35_combout\ & \Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Mux4~5_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X69_Y52_N2
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~6_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X65_Y53_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\B[60]~input_o\ & ((\A[60]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[60]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\Add|S[60]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[60]~58_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[60]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[60]~59_combout\,
	combout => \Add|S[60]~58_combout\);

-- Location: LCCOMB_X68_Y51_N16
\Shift|ll1[60]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[60]~3_combout\ = (\B[0]~input_o\ & ((\A[59]~input_o\))) # (!\B[0]~input_o\ & (\A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	combout => \Shift|ll1[60]~3_combout\);

-- Location: LCCOMB_X69_Y48_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & (\Shift|ll2[56]~111_combout\)) # (!\Mux60~1_combout\ & ((\Shift|ll1[60]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Shift|ll2[56]~111_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ll1[60]~3_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X69_Y48_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & ((\Shift|ll3[52]~17_combout\) # ((!\Mux60~0_combout\)))) # (!\Mux3~1_combout\ & (((\Shift|ll1[58]~1_combout\ & \Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[52]~17_combout\,
	datab => \Mux3~1_combout\,
	datac => \Shift|ll1[58]~1_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X66_Y46_N8
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux26~2_combout\ & (((\Shift|ll4[44]~76_combout\) # (!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & (\Mux3~2_combout\ & ((\Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux26~2_combout\,
	datac => \Shift|ll4[44]~76_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X66_Y46_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\Add|S[60]~58_combout\) # (\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux3~3_combout\ & (\Shift|ll5[28]~31_combout\ & ((!\Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[28]~31_combout\,
	datab => \Add|S[60]~58_combout\,
	datac => \Mux3~3_combout\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X66_Y46_N20
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux26~1_combout\ & ((\Mux26~0_combout\) # ((\Y_R[1]~81_combout\)))) # (!\Mux26~1_combout\ & (!\Mux26~0_combout\ & (\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~0_combout\,
	datac => \Mux3~4_combout\,
	datad => \Y_R[1]~81_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X65_Y46_N22
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & ((\Y_R[1]~35_combout\) # ((!\Mux26~0_combout\)))) # (!\Mux3~5_combout\ & (((\Mux26~0_combout\ & \Y_ShiftOrArith[31]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Y_R[1]~35_combout\,
	datac => \Mux26~0_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X62_Y46_N4
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux3~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X68_Y51_N26
\Shift|ll1[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[61]~4_combout\ = (\B[0]~input_o\ & (\A[60]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|ll1[61]~4_combout\);

-- Location: LCCOMB_X69_Y48_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & (\Shift|ll2[57]~113_combout\)) # (!\Mux60~1_combout\ & ((\Shift|ll1[61]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Shift|ll2[57]~113_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ll1[61]~4_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X69_Y48_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & (((\Shift|ll3[53]~18_combout\) # (!\Mux60~0_combout\)))) # (!\Mux2~1_combout\ & (\Shift|ll1[59]~2_combout\ & ((\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[59]~2_combout\,
	datab => \Mux2~1_combout\,
	datac => \Shift|ll3[53]~18_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X68_Y46_N14
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux26~2_combout\ & (((!\Y_ShiftOrArith[31]~18_combout\)))) # (!\Mux26~2_combout\ & ((\Y_ShiftOrArith[31]~18_combout\ & (\Mux2~2_combout\)) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ll5[29]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Mux2~2_combout\,
	datac => \Y_ShiftOrArith[31]~18_combout\,
	datad => \Shift|ll5[29]~32_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X65_Y53_N16
\Add|S[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[61]~59_combout\ = \AddnSub~input_o\ $ (\Add|C[61]~60_combout\ $ (\B[61]~input_o\ $ (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[61]~60_combout\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Add|S[61]~59_combout\);

-- Location: LCCOMB_X68_Y46_N8
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux26~2_combout\ & ((\Mux2~3_combout\ & (\Add|S[61]~59_combout\)) # (!\Mux2~3_combout\ & ((\Shift|ll4[45]~78_combout\))))) # (!\Mux26~2_combout\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Mux2~3_combout\,
	datac => \Add|S[61]~59_combout\,
	datad => \Shift|ll4[45]~78_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X68_Y46_N18
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux26~0_combout\ & ((\Mux26~1_combout\) # ((\Y_ShiftOrArith[31]~24_combout\)))) # (!\Mux26~0_combout\ & (!\Mux26~1_combout\ & (\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux2~4_combout\,
	datad => \Y_ShiftOrArith[31]~24_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X68_Y46_N28
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux26~1_combout\ & ((\Mux2~5_combout\ & ((\Y_R[1]~35_combout\))) # (!\Mux2~5_combout\ & (\Y_R[1]~89_combout\)))) # (!\Mux26~1_combout\ & (((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~89_combout\,
	datab => \Mux26~1_combout\,
	datac => \Y_R[1]~35_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X65_Y53_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\B[61]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[61]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux2~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux2~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X65_Y53_N18
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[62]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[62]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y52_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\FuncClass[0]~input_o\ & (((\Logic|Mux1~0_combout\)))) # (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[31]~24_combout\,
	datad => \Logic|Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X68_Y51_N4
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[61]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X68_Y51_N6
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\B[2]~input_o\ & ((\Mux1~4_combout\) # ((\B[1]~input_o\ & \Shift|ll1[60]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Mux1~4_combout\,
	datad => \Shift|ll1[60]~3_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X68_Y51_N8
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\B[3]~input_o\ & ((\Mux1~5_combout\) # ((\B[2]~input_o\ & \Shift|ll2[58]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[58]~115_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X65_Y49_N10
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!\B[4]~input_o\ & ((\Mux1~6_combout\) # ((\B[3]~input_o\ & \Shift|ll3[54]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll3[54]~19_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X65_Y49_N20
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (!\B[5]~input_o\ & ((\Mux1~7_combout\) # ((\Shift|ll4[46]~80_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ll4[46]~80_combout\,
	datac => \B[4]~input_o\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X65_Y49_N6
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\ShiftFN[0]~input_o\ & ((\Mux1~8_combout\) # ((\Shift|ll5[30]~34_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[30]~34_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X65_Y49_N16
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\ & (\Y_R[1]~35_combout\)) # (!\B[5]~input_o\ & ((\Y_R[1]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_R[1]~35_combout\,
	datac => \B[5]~input_o\,
	datad => \Y_R[1]~90_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X65_Y53_N4
\Add|S[62]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[62]~60_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datac => \A[62]~input_o\,
	combout => \Add|S[62]~60_combout\);

-- Location: LCCOMB_X65_Y53_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\ShiftFN[0]~input_o\ & (\AddnSub~input_o\ $ (\Add|S[62]~60_combout\ $ (\Add|C[62]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|S[62]~60_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|C[62]~61_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X65_Y49_N24
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\Mux1~2_combout\) # ((!\ShiftFN[1]~input_o\ & ((\Mux1~9_combout\) # (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux1~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X69_Y52_N30
\Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux1~1_combout\) # ((\Mux1~10_combout\ & \Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \Mux1~10_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X68_Y51_N10
\Shift|Y_LL[63]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~3_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[62]~input_o\))) # (!\B[0]~input_o\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|Y_LL[63]~3_combout\);

-- Location: LCCOMB_X68_Y51_N28
\Shift|Y_LL[63]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~4_combout\ = (!\B[2]~input_o\ & ((\Shift|Y_LL[63]~3_combout\) # ((\B[1]~input_o\ & \Shift|ll1[61]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[63]~3_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[61]~4_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|Y_LL[63]~4_combout\);

-- Location: LCCOMB_X62_Y44_N28
\Shift|Y_LL[63]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~5_combout\ = (!\B[3]~input_o\ & ((\Shift|Y_LL[63]~4_combout\) # ((\B[2]~input_o\ & \Shift|ll2[59]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[59]~117_combout\,
	datad => \Shift|Y_LL[63]~4_combout\,
	combout => \Shift|Y_LL[63]~5_combout\);

-- Location: LCCOMB_X62_Y44_N6
\Shift|Y_LL[63]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~6_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_LL[63]~5_combout\) # ((\B[3]~input_o\ & \Shift|ll3[55]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Shift|ll3[55]~20_combout\,
	datad => \Shift|Y_LL[63]~5_combout\,
	combout => \Shift|Y_LL[63]~6_combout\);

-- Location: LCCOMB_X62_Y44_N24
\Shift|Y_LL[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~1_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & (\Shift|ll4[15]~48_combout\)) # (!\B[5]~input_o\ & ((\Shift|ll4[47]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[15]~48_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ll4[47]~82_combout\,
	combout => \Shift|Y_LL[63]~1_combout\);

-- Location: LCCOMB_X62_Y44_N10
\Shift|Y_LL[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~2_combout\ = (\B[5]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll4[27]~39_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[31]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[27]~39_combout\,
	datab => \Shift|ll4[31]~49_combout\,
	datac => \B[5]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|Y_LL[63]~2_combout\);

-- Location: LCCOMB_X62_Y44_N16
\Shift|Y_LL[63]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~7_combout\ = (\Shift|Y_LL[63]~1_combout\) # ((!\B[4]~input_o\ & ((\Shift|Y_LL[63]~6_combout\) # (\Shift|Y_LL[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[63]~6_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|Y_LL[63]~1_combout\,
	datad => \Shift|Y_LL[63]~2_combout\,
	combout => \Shift|Y_LL[63]~7_combout\);

-- Location: LCCOMB_X65_Y53_N8
\Add|S[63]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[63]~61_combout\ = \AddnSub~input_o\ $ (\A[63]~input_o\ $ (\B[63]~input_o\ $ (\Add|C[63]~62_combout\)))

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
	combout => \Add|S[63]~61_combout\);

-- Location: LCCOMB_X63_Y46_N12
\Y_ShiftOrArith[31]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~25_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|Y_LL[63]~7_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[63]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[63]~7_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[63]~61_combout\,
	combout => \Y_ShiftOrArith[31]~25_combout\);

-- Location: LCCOMB_X63_Y46_N6
\Y_ShiftOrArith[31]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~26_combout\ = (\ShiftFN[1]~input_o\ & (\A[63]~input_o\ & ((\Y_ShiftOrArith[31]~25_combout\) # (!\Shift|Y_LL[0]~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[31]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[0]~0_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Y_ShiftOrArith[31]~26_combout\);

-- Location: LCCOMB_X72_Y53_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\FuncClass[1]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~24_combout\)) # (!\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~24_combout\,
	datab => \Y_ShiftOrArith[31]~26_combout\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X65_Y53_N2
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\B[63]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[63]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[63]~input_o\ & (\A[63]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X72_Y53_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux0~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \Logic|Mux0~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X69_Y49_N12
\Logic|xor_result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(0) = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Logic|xor_result\(0));

-- Location: LCCOMB_X68_Y52_N14
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!\Add|S[57]~55_combout\ & (!\Add|S[59]~57_combout\ & (!\Add|S[58]~56_combout\ & !\Add|S[56]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[57]~55_combout\,
	datab => \Add|S[59]~57_combout\,
	datac => \Add|S[58]~56_combout\,
	datad => \Add|S[56]~54_combout\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X65_Y53_N20
\Add|S[62]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[62]~62_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[62]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[62]~61_combout\,
	combout => \Add|S[62]~62_combout\);

-- Location: LCCOMB_X65_Y53_N14
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\Add|S[62]~62_combout\ & (!\Add|S[61]~59_combout\ & (!\Add|S[63]~61_combout\ & !\Add|S[60]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[62]~62_combout\,
	datab => \Add|S[61]~59_combout\,
	datac => \Add|S[63]~61_combout\,
	datad => \Add|S[60]~58_combout\,
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X69_Y49_N8
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (!\Add|S[51]~49_combout\ & (!\Add|S[50]~48_combout\ & (!\Add|S[48]~46_combout\ & !\Add|S[49]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[51]~49_combout\,
	datab => \Add|S[50]~48_combout\,
	datac => \Add|S[48]~46_combout\,
	datad => \Add|S[49]~47_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X67_Y53_N2
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\Add|S[53]~51_combout\ & (!\Add|S[54]~52_combout\ & (!\Add|S[55]~53_combout\ & !\Add|S[52]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[53]~51_combout\,
	datab => \Add|S[54]~52_combout\,
	datac => \Add|S[55]~53_combout\,
	datad => \Add|S[52]~50_combout\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X69_Y49_N2
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Equal0~17_combout\ & (\Equal0~18_combout\ & (\Equal0~15_combout\ & \Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~17_combout\,
	datab => \Equal0~18_combout\,
	datac => \Equal0~15_combout\,
	datad => \Equal0~16_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X65_Y45_N12
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Add|S[40]~38_combout\ & (!\Add|S[41]~39_combout\ & (!\Add|S[43]~41_combout\ & !\Add|S[42]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[40]~38_combout\,
	datab => \Add|S[41]~39_combout\,
	datac => \Add|S[43]~41_combout\,
	datad => \Add|S[42]~40_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X63_Y47_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Add|S[34]~32_combout\ & (!\Add|S[35]~33_combout\ & (!\Add|S[33]~31_combout\ & !\Add|S[32]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[34]~32_combout\,
	datab => \Add|S[35]~33_combout\,
	datac => \Add|S[33]~31_combout\,
	datad => \Add|S[32]~30_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X66_Y43_N30
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\Add|S[39]~37_combout\ & (!\Add|S[36]~34_combout\ & (!\Add|S[38]~36_combout\ & !\Add|S[37]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[39]~37_combout\,
	datab => \Add|S[36]~34_combout\,
	datac => \Add|S[38]~36_combout\,
	datad => \Add|S[37]~35_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X66_Y46_N22
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\Add|S[45]~43_combout\ & (!\Add|S[46]~44_combout\ & (!\Add|S[47]~45_combout\ & !\Add|S[44]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[45]~43_combout\,
	datab => \Add|S[46]~44_combout\,
	datac => \Add|S[47]~45_combout\,
	datad => \Add|S[44]~42_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X65_Y45_N14
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~12_combout\ & (\Equal0~10_combout\ & (\Equal0~11_combout\ & \Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~13_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X69_Y44_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add|S[9]~7_combout\ & (!\Add|S[11]~9_combout\ & (!\Add|S[8]~6_combout\ & !\Add|S[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[9]~7_combout\,
	datab => \Add|S[11]~9_combout\,
	datac => \Add|S[8]~6_combout\,
	datad => \Add|S[10]~8_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X68_Y45_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add|S[13]~11_combout\ & (!\Add|S[14]~12_combout\ & (!\Add|S[15]~13_combout\ & !\Add|S[12]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[13]~11_combout\,
	datab => \Add|S[14]~12_combout\,
	datac => \Add|S[15]~13_combout\,
	datad => \Add|S[12]~10_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X68_Y49_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Add|S[19]~17_combout\ & (!\Add|S[18]~16_combout\ & (!\Add|S[16]~14_combout\ & !\Add|S[17]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[19]~17_combout\,
	datab => \Add|S[18]~16_combout\,
	datac => \Add|S[16]~14_combout\,
	datad => \Add|S[17]~15_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X60_Y50_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add|S[30]~28_combout\ & (!\Add|S[31]~29_combout\ & (!\Add|S[28]~26_combout\ & !\Add|S[29]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[30]~28_combout\,
	datab => \Add|S[31]~29_combout\,
	datac => \Add|S[28]~26_combout\,
	datad => \Add|S[29]~27_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X62_Y52_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add|S[23]~21_combout\ & (!\Add|S[20]~18_combout\ & (!\Add|S[22]~20_combout\ & !\Add|S[21]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[23]~21_combout\,
	datab => \Add|S[20]~18_combout\,
	datac => \Add|S[22]~20_combout\,
	datad => \Add|S[21]~19_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X61_Y51_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add|S[24]~22_combout\ & (!\Add|S[27]~25_combout\ & (!\Add|S[26]~24_combout\ & !\Add|S[25]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[24]~22_combout\,
	datab => \Add|S[27]~25_combout\,
	datac => \Add|S[26]~24_combout\,
	datad => \Add|S[25]~23_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X61_Y51_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X70_Y48_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add|S[6]~4_combout\ & (!\Add|S[4]~2_combout\ & (!\Add|S[7]~5_combout\ & !\Add|S[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[6]~4_combout\,
	datab => \Add|S[4]~2_combout\,
	datac => \Add|S[7]~5_combout\,
	datad => \Add|S[5]~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X68_Y49_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add|S[2]~0_combout\ & (!\Add|S[3]~1_combout\ & (!\Add|S\(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[2]~0_combout\,
	datab => \Add|S[3]~1_combout\,
	datac => \Add|S\(1),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X69_Y49_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~8_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X69_Y49_N14
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (!\Logic|xor_result\(0) & (\Equal0~19_combout\ & (\Equal0~14_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result\(0),
	datab => \Equal0~19_combout\,
	datac => \Equal0~14_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~20_combout\);

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


