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

-- DATE "12/02/2025 19:29:47"

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
-- Y[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~54_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~55_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~51_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~56_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~45_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~46_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~57_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~68_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~70_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~66_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~65_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~67_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~71_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~62_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~61_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~63_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~59_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~64_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~72_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~73_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~40_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~41_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~37_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~42_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~30_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~31_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~33_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~43_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~23_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~25_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~27_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[14]~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~4_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~5_combout\ : std_logic;
SIGNAL \Add|block_carry_in[13]~7_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[12]~45_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~46_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~47_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[8]~38_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[8]~39_combout\ : std_logic;
SIGNAL \Add|block_carry_in[8]~40_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~15_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~14_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~16_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~17_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[6]~33_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[6]~34_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~35_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~36_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~30_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~31_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~18_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~19_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~20_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~22_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~21_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~23_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~24_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~25_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~26_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~66_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~67_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~64_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~65_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[4]~27_combout\ : std_logic;
SIGNAL \Add|P[15]~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~28_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~29_combout\ : std_logic;
SIGNAL \Add|P[23]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~32_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~37_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[8]~62_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[8]~63_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~12_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~13_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~41_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~9_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~8_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~10_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~11_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~42_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~43_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~44_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~60_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~61_combout\ : std_logic;
SIGNAL \Add|block_carry_in[13]~58_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~59_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~56_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Add|P[59]~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[15]~48_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[15]~49_combout\ : std_logic;
SIGNAL \Add|block_carry_in[15]~50_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\ : std_logic;
SIGNAL \Add|Cout~2_combout\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Logic|Mux62~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~91_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~90_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~92_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~94_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~93_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~96_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~97_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~98_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~99_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~101_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~100_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~102_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~103_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~30_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~87_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~86_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~88_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~84_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~83_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~85_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~89_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~76_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~77_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~74_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~75_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~78_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~80_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~79_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~82_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~5_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~279_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~9_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~43_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~45_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~46_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~108_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~41_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~42_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~107_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~109_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~51_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~111_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~112_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~110_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~113_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~54_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~56_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~57_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~59_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~114_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~61_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~62_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~63_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~37_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~105_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~104_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~106_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Mux61~10_combout\ : std_logic;
SIGNAL \Mux61~11_combout\ : std_logic;
SIGNAL \Mux61~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~72_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~73_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~121_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~71_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~70_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~119_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~68_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~69_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~118_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~120_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~74_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~75_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~79_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~80_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~122_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~123_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~124_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~77_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~78_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~125_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~76_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~67_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~66_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~116_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~65_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~64_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~115_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~117_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Add|P[3]~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~280_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~132_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~81_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~130_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~131_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~82_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~127_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~128_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~129_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~126_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux59~5_combout\ : std_logic;
SIGNAL \Mux59~6_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~133_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~134_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~135_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~51_combout\ : std_logic;
SIGNAL \Mux59~7_combout\ : std_logic;
SIGNAL \Mux59~8_combout\ : std_logic;
SIGNAL \Mux59~11_combout\ : std_logic;
SIGNAL \Mux59~9_combout\ : std_logic;
SIGNAL \Mux59~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~141_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~143_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~142_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~144_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~138_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~139_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~136_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~137_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~140_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~83_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~84_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~85_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~6_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~151_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~152_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~149_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~150_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~153_combout\ : std_logic;
SIGNAL \Mux57~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~86_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~87_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~147_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~146_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~148_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~145_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Mux57~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Mux57~9_combout\ : std_logic;
SIGNAL \Mux57~10_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~160_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~161_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~162_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~159_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~156_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~157_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~154_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~155_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~158_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~88_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~89_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux56~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~163_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~164_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~90_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~91_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~167_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~166_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~168_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~214_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~169_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~170_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~165_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~171_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~172_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~173_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~174_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~175_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~92_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~93_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~176_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~177_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~94_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~95_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~215_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~179_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~178_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~180_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~96_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~181_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~182_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~97_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~216_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~184_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~183_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~185_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~186_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~187_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~188_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~189_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~98_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~99_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~190_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~191_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~192_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~193_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~100_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~101_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~194_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~195_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~102_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~103_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Mux49~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~197_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~196_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Mux49~6_combout\ : std_logic;
SIGNAL \Mux49~8_combout\ : std_logic;
SIGNAL \Mux49~9_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~198_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~104_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~105_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~199_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~200_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~281_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~201_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~106_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Mux47~4_combout\ : std_logic;
SIGNAL \Mux47~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~202_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~107_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~108_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~203_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~109_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~204_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~282_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~110_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~205_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~52_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[1]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~206_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~111_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~283_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~207_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~112_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~284_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~285_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[3]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[3]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~208_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~117_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Mux40~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~209_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~118_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~119_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~210_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~217_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~120_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Add|P[27]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~218_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~113_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~219_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~114_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~115_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~220_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~144_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~145_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~146_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~147_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~148_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~150_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~151_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~152_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~153_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~149_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~154_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~211_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~155_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~116_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~212_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~156_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~157_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~158_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~159_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~160_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~11_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~161_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~162_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~163_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~164_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~15_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~17_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~166_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~167_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~168_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~169_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~165_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~170_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~171_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~172_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~173_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~174_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~175_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~176_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~177_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~178_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~179_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~180_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~181_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~286_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~54_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~287_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~182_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~183_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~184_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~185_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~186_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~187_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~188_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~189_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~190_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~191_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~192_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~193_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~194_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~195_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~196_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~197_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~198_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~199_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~200_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~55_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~201_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~202_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~203_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~204_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~205_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~206_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~207_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~208_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~209_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~210_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~211_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~212_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~213_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~214_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~215_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~216_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~217_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~218_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~219_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~220_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~221_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~222_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~223_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~224_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~225_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~226_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~227_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~228_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~229_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~230_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~231_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~232_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~233_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~234_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~235_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~236_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~237_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~238_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~239_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~240_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~241_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~242_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~243_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~244_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~245_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~246_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~247_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~248_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~249_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~250_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~251_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~252_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~253_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~254_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~255_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~256_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~257_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~258_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~259_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~260_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~261_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~262_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~263_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~265_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~264_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~266_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~268_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~267_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~269_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~270_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~271_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~274_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~275_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~276_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~277_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~273_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~272_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~278_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~213_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~18_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~19_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~23_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~24_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~25_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~26_combout\ : std_logic;
SIGNAL \Equal0~27_combout\ : std_logic;
SIGNAL \Equal0~28_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~29_combout\ : std_logic;
SIGNAL \Add|G\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|P\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|ALT_INV_Cout~2_combout\ : std_logic;
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
\Add|ALT_INV_Cout~2_combout\ <= NOT \Add|Cout~2_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~12_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~7_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~10_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~6_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~10_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X115_Y50_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X65_Y0_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~9_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X49_Y0_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~5_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~5_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~5_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~5_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~5_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~5_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~5_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~5_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~5_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~5_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~5_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~5_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~5_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~5_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~5_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~11_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~6_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~6_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~6_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~6_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~6_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~6_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~6_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~6_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~6_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~6_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~6_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~6_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~6_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X13_Y73_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~10_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X18_Y73_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~7_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~10_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X60_Y0_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~10_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X49_Y0_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~29_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X115_Y45_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~2_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

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

-- Location: IOIBUF_X69_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X55_Y49_N4
\Shift|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X59_Y45_N0
\Shift|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = (!\B[3]~input_o\ & (!\B[5]~input_o\ & (!\B[4]~input_o\ & !\Shift|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~18_combout\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: LCCOMB_X56_Y45_N10
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\ShiftFN[0]~input_o\ & (((\A[0]~input_o\ & \Shift|ShiftRight0~14_combout\)))) # (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|ShiftRight0~14_combout\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X61_Y49_N8
\Shift|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~54_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftRight0~54_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X55_Y45_N12
\Shift|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~53_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~53_combout\);

-- Location: LCCOMB_X55_Y45_N6
\Shift|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~55_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~53_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~54_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~53_combout\,
	combout => \Shift|ShiftRight0~55_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X55_Y45_N16
\Shift|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~51_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight0~51_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X63_Y48_N16
\Shift|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~50_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight0~50_combout\);

-- Location: LCCOMB_X55_Y45_N18
\Shift|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~52_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~50_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~51_combout\,
	datac => \Shift|ShiftRight0~50_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~52_combout\);

-- Location: LCCOMB_X55_Y45_N0
\Shift|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~56_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~52_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~55_combout\,
	datab => \Shift|ShiftRight0~52_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~56_combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X55_Y49_N6
\Shift|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = (\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: IOIBUF_X96_Y73_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X56_Y49_N4
\Shift|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~45_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[1]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftRight0~45_combout\);

-- Location: LCCOMB_X58_Y49_N8
\Shift|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~46_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~45_combout\) # ((\Shift|ShiftRight1~9_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~9_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~45_combout\,
	combout => \Shift|ShiftRight0~46_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X58_Y49_N12
\Shift|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X58_Y49_N10
\Shift|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~47_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ShiftRight0~47_combout\);

-- Location: LCCOMB_X58_Y49_N30
\Shift|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~48_combout\ = (\Shift|ShiftRight0~47_combout\) # ((\Shift|ShiftRight1~10_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~10_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~47_combout\,
	combout => \Shift|ShiftRight0~48_combout\);

-- Location: LCCOMB_X58_Y49_N0
\Shift|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~49_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~46_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~46_combout\,
	datac => \Shift|ShiftRight0~48_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~49_combout\);

-- Location: LCCOMB_X60_Y49_N24
\Shift|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~57_combout\ = (!\B[5]~input_o\ & ((\Shift|ShiftRight0~49_combout\) # ((\Shift|ShiftRight0~56_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~56_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~49_combout\,
	combout => \Shift|ShiftRight0~57_combout\);

-- Location: IOIBUF_X96_Y73_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X59_Y52_N10
\Shift|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~68_combout\ = (\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftRight0~68_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X58_Y53_N24
\Shift|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~69_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftRight0~69_combout\);

-- Location: LCCOMB_X58_Y53_N10
\Shift|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~70_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~68_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~68_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~69_combout\,
	combout => \Shift|ShiftRight0~70_combout\);

-- Location: IOIBUF_X67_Y0_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X60_Y52_N4
\Shift|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~66_combout\ = (\B[1]~input_o\ & ((\A[42]~input_o\))) # (!\B[1]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|ShiftRight0~66_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X60_Y52_N18
\Shift|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~65_combout\ = (\B[1]~input_o\ & (\A[43]~input_o\)) # (!\B[1]~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Shift|ShiftRight0~65_combout\);

-- Location: LCCOMB_X60_Y52_N14
\Shift|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~67_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~65_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~66_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~65_combout\,
	combout => \Shift|ShiftRight0~67_combout\);

-- Location: LCCOMB_X60_Y50_N22
\Shift|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~71_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~67_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~70_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~67_combout\,
	combout => \Shift|ShiftRight0~71_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X57_Y52_N8
\Shift|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~62_combout\ = (\B[1]~input_o\ & (\A[38]~input_o\)) # (!\B[1]~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~62_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X60_Y52_N24
\Shift|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~61_combout\ = (\B[1]~input_o\ & ((\A[39]~input_o\))) # (!\B[1]~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Shift|ShiftRight0~61_combout\);

-- Location: LCCOMB_X59_Y52_N0
\Shift|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~63_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~61_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~62_combout\,
	datad => \Shift|ShiftRight0~61_combout\,
	combout => \Shift|ShiftRight0~63_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X54_Y51_N14
\Shift|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~59_combout\ = (\B[1]~input_o\ & (\A[46]~input_o\)) # (!\B[1]~input_o\ & ((\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[44]~input_o\,
	combout => \Shift|ShiftRight0~59_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X62_Y51_N8
\Shift|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~58_combout\ = (\B[1]~input_o\ & ((\A[47]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~58_combout\);

-- Location: LCCOMB_X59_Y51_N28
\Shift|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~60_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~58_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~59_combout\,
	datad => \Shift|ShiftRight0~58_combout\,
	combout => \Shift|ShiftRight0~60_combout\);

-- Location: LCCOMB_X60_Y50_N12
\Shift|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~64_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~60_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~63_combout\,
	datad => \Shift|ShiftRight0~60_combout\,
	combout => \Shift|ShiftRight0~64_combout\);

-- Location: LCCOMB_X60_Y50_N8
\Shift|ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~72_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~64_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~71_combout\,
	datad => \Shift|ShiftRight0~64_combout\,
	combout => \Shift|ShiftRight0~72_combout\);

-- Location: LCCOMB_X60_Y49_N26
\Shift|ShiftRight0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~73_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~57_combout\) # ((\B[5]~input_o\ & \Shift|ShiftRight0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~57_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~72_combout\,
	combout => \Shift|ShiftRight0~73_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X55_Y46_N10
\Shift|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~40_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~40_combout\);

-- Location: IOIBUF_X0_Y52_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X50_Y47_N28
\Shift|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~39_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Shift|ShiftRight0~39_combout\);

-- Location: LCCOMB_X55_Y46_N28
\Shift|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~41_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~39_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~40_combout\,
	datab => \Shift|ShiftRight0~39_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~41_combout\);

-- Location: IOIBUF_X13_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X49_Y50_N18
\Shift|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~37_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~37_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X50_Y47_N16
\Shift|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~36_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftRight0~36_combout\);

-- Location: LCCOMB_X50_Y47_N2
\Shift|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~38_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~36_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~37_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~36_combout\,
	combout => \Shift|ShiftRight0~38_combout\);

-- Location: LCCOMB_X55_Y46_N6
\Shift|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~42_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~38_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~41_combout\,
	datac => \Shift|ShiftRight0~38_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~42_combout\);

-- Location: IOIBUF_X0_Y47_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X54_Y51_N10
\Shift|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~30_combout\ = (\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[30]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~30_combout\);

-- Location: IOIBUF_X38_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X54_Y51_N0
\Shift|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~29_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~29_combout\);

-- Location: LCCOMB_X54_Y51_N20
\Shift|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~31_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~29_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~30_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~29_combout\,
	combout => \Shift|ShiftRight0~31_combout\);

-- Location: IOIBUF_X0_Y52_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X53_Y51_N10
\Shift|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~33_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[26]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftRight0~33_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X53_Y51_N24
\Shift|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~32_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[25]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|ShiftRight0~32_combout\);

-- Location: LCCOMB_X53_Y51_N20
\Shift|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~34_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~32_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~33_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~32_combout\,
	combout => \Shift|ShiftRight0~34_combout\);

-- Location: LCCOMB_X55_Y46_N8
\Shift|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~35_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~31_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~31_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~34_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~35_combout\);

-- Location: LCCOMB_X55_Y46_N24
\Shift|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~43_combout\ = (\Shift|ShiftRight0~35_combout\) # ((\Shift|ShiftRight0~42_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~42_combout\,
	datac => \Shift|ShiftRight0~35_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~43_combout\);

-- Location: IOIBUF_X0_Y44_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X57_Y47_N16
\Shift|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = (\B[0]~input_o\ & ((\A[63]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X59_Y49_N0
\Shift|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~22_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[61]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftRight0~22_combout\);

-- Location: LCCOMB_X61_Y50_N0
\Shift|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~23_combout\ = (\Shift|ShiftRight0~22_combout\) # ((\Shift|ShiftRight1~8_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~8_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftRight0~22_combout\,
	combout => \Shift|ShiftRight0~23_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X59_Y50_N26
\Shift|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~25_combout\ = (\B[1]~input_o\ & (\A[58]~input_o\)) # (!\B[1]~input_o\ & ((\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|ShiftRight0~25_combout\);

-- Location: IOIBUF_X0_Y51_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X59_Y49_N2
\Shift|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~24_combout\ = (\B[1]~input_o\ & ((\A[59]~input_o\))) # (!\B[1]~input_o\ & (\A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~24_combout\);

-- Location: LCCOMB_X59_Y50_N12
\Shift|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~26_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~24_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~25_combout\,
	datab => \Shift|ShiftRight0~24_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~26_combout\);

-- Location: LCCOMB_X61_Y50_N2
\Shift|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~27_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~23_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~26_combout\,
	combout => \Shift|ShiftRight0~27_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X60_Y51_N2
\Shift|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = (\B[1]~input_o\ & (\A[50]~input_o\)) # (!\B[1]~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X60_Y51_N24
\Shift|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = (\B[1]~input_o\ & (\A[51]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LCCOMB_X60_Y51_N4
\Shift|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~18_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~19_combout\,
	datad => \Shift|ShiftRight0~18_combout\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: IOIBUF_X0_Y49_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X59_Y50_N0
\Shift|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = (\B[1]~input_o\ & ((\A[55]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X59_Y51_N8
\Shift|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = (\B[1]~input_o\ & (\A[54]~input_o\)) # (!\B[1]~input_o\ & ((\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[54]~input_o\,
	datac => \A[52]~input_o\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: LCCOMB_X59_Y51_N26
\Shift|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~15_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~15_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: LCCOMB_X60_Y50_N0
\Shift|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~21_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~17_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~20_combout\,
	datad => \Shift|ShiftRight0~17_combout\,
	combout => \Shift|ShiftRight0~21_combout\);

-- Location: LCCOMB_X60_Y50_N26
\Shift|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~28_combout\ = (\Shift|ShiftRight0~21_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~27_combout\,
	datad => \Shift|ShiftRight0~21_combout\,
	combout => \Shift|ShiftRight0~28_combout\);

-- Location: LCCOMB_X57_Y46_N24
\Shift|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~44_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~28_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~43_combout\,
	datac => \Shift|ShiftRight0~28_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~44_combout\);

-- Location: IOIBUF_X81_Y73_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X56_Y45_N20
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight0~73_combout\) # (\Shift|ShiftRight0~44_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~0_combout\,
	datab => \Shift|ShiftRight0~73_combout\,
	datac => \Shift|ShiftRight0~44_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: IOIBUF_X65_Y73_N22
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X57_Y45_N22
\Add|P[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(61) = \A[61]~input_o\ $ (\AddnSub~input_o\ $ (\B[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	combout => \Add|P\(61));

-- Location: LCCOMB_X57_Y45_N8
\Add|G[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(61) = (\A[61]~input_o\ & (\AddnSub~input_o\ $ (\B[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	combout => \Add|G\(61));

-- Location: IOIBUF_X0_Y44_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X57_Y45_N18
\Add|GEN_BLOCKS:15:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ = (\A[62]~input_o\ & ((\Add|G\(61)) # (\AddnSub~input_o\ $ (\B[62]~input_o\)))) # (!\A[62]~input_o\ & (\Add|G\(61) & (\AddnSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \Add|G\(61),
	datac => \AddnSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X57_Y45_N4
\Add|P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(62) = \A[62]~input_o\ $ (\B[62]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(62));

-- Location: IOIBUF_X60_Y0_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X57_Y45_N0
\Add|G[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(60) = (\A[60]~input_o\ & (\AddnSub~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Add|G\(60));

-- Location: LCCOMB_X57_Y45_N10
\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\) # ((\Add|P\(61) & (\Add|P\(62) & \Add|G\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(61),
	datab => \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\,
	datac => \Add|P\(62),
	datad => \Add|G\(60),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\);

-- Location: IOIBUF_X16_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X52_Y53_N2
\Add|P[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(53) = \B[53]~input_o\ $ (\A[53]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(53));

-- Location: IOIBUF_X45_Y73_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X52_Y53_N28
\Add|GEN_BLOCKS:13:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ = (\Add|P\(53) & (\A[52]~input_o\ $ (\AddnSub~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Add|P\(53),
	datac => \AddnSub~input_o\,
	datad => \B[52]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X52_Y53_N24
\Add|P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(54) = \A[54]~input_o\ $ (\AddnSub~input_o\ $ (\B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|P\(54));

-- Location: LCCOMB_X52_Y53_N30
\Add|block_carry_in[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~2_combout\ = (\A[54]~input_o\ & (\AddnSub~input_o\ $ (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|block_carry_in[14]~2_combout\);

-- Location: LCCOMB_X52_Y53_N0
\Add|G[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(52) = (\A[52]~input_o\ & (\AddnSub~input_o\ $ (\B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[52]~input_o\,
	combout => \Add|G\(52));

-- Location: LCCOMB_X52_Y53_N18
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

-- Location: LCCOMB_X52_Y53_N4
\Add|block_carry_in[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~4_combout\ = (\Add|P\(54) & (!\Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[14]~2_combout\) # (\Add|block_carry_in[14]~3_combout\)))) # (!\Add|P\(54) & (((\Add|block_carry_in[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(54),
	datac => \Add|block_carry_in[14]~2_combout\,
	datad => \Add|block_carry_in[14]~3_combout\,
	combout => \Add|block_carry_in[14]~4_combout\);

-- Location: IOIBUF_X98_Y73_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X53_Y54_N16
\Add|G[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(48) = (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|G\(48));

-- Location: LCCOMB_X53_Y54_N10
\Add|block_carry_in[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~6_combout\ = (\A[49]~input_o\ & ((\Add|G\(48)) # (\B[49]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[49]~input_o\ & (\Add|G\(48) & (\B[49]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|G\(48),
	combout => \Add|block_carry_in[13]~6_combout\);

-- Location: LCCOMB_X53_Y54_N18
\Add|P[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(49) = \B[49]~input_o\ $ (\A[49]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(49));

-- Location: LCCOMB_X53_Y54_N28
\Add|GEN_BLOCKS:12:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ = (\Add|P\(49) & (\AddnSub~input_o\ $ (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(49),
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X53_Y54_N22
\Add|block_carry_in[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~5_combout\ = (\A[50]~input_o\ & (\B[50]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[50]~input_o\,
	datac => \A[50]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[13]~5_combout\);

-- Location: LCCOMB_X53_Y54_N24
\Add|P[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(50) = \B[50]~input_o\ $ (\A[50]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[50]~input_o\,
	datac => \A[50]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(50));

-- Location: LCCOMB_X53_Y54_N12
\Add|block_carry_in[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~7_combout\ = (\Add|P\(50) & (!\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[13]~6_combout\) # (\Add|block_carry_in[13]~5_combout\)))) # (!\Add|P\(50) & (((\Add|block_carry_in[13]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~6_combout\,
	datab => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[13]~5_combout\,
	datad => \Add|P\(50),
	combout => \Add|block_carry_in[13]~7_combout\);

-- Location: IOIBUF_X11_Y73_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X55_Y51_N10
\Add|P[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(45) = \AddnSub~input_o\ $ (\A[45]~input_o\ $ (\B[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Add|P\(45));

-- Location: IOIBUF_X60_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X55_Y51_N12
\Add|GEN_BLOCKS:11:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ = (\Add|P\(45) & (\AddnSub~input_o\ $ (\B[44]~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(45),
	datab => \AddnSub~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X31_Y73_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X55_Y51_N20
\Add|G[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(45) = (\A[45]~input_o\ & (\AddnSub~input_o\ $ (\B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Add|G\(45));

-- Location: LCCOMB_X55_Y51_N14
\Add|block_carry_in[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~45_combout\ = (\A[44]~input_o\ & (\AddnSub~input_o\ $ (\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Add|block_carry_in[12]~45_combout\);

-- Location: LCCOMB_X55_Y51_N24
\Add|P[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(46) = \A[46]~input_o\ $ (\AddnSub~input_o\ $ (\B[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \Add|P\(46));

-- Location: LCCOMB_X55_Y51_N16
\Add|block_carry_in[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~46_combout\ = (\Add|P\(46) & ((\Add|G\(45)) # ((\Add|P\(45) & \Add|block_carry_in[12]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(45),
	datab => \Add|G\(45),
	datac => \Add|block_carry_in[12]~45_combout\,
	datad => \Add|P\(46),
	combout => \Add|block_carry_in[12]~46_combout\);

-- Location: LCCOMB_X55_Y51_N18
\Add|block_carry_in[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~47_combout\ = (\Add|block_carry_in[12]~46_combout\) # ((\A[46]~input_o\ & (\B[46]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \Add|block_carry_in[12]~46_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[46]~input_o\,
	combout => \Add|block_carry_in[12]~47_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X54_Y52_N12
\Add|P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(38) = \B[38]~input_o\ $ (\A[38]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(38));

-- Location: LCCOMB_X54_Y52_N6
\Add|GEN_BLOCKS:9:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ = (\Add|P\(38) & (\AddnSub~input_o\ $ (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Add|P\(38),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X115_Y52_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X54_Y52_N24
\Add|P[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(37) = \AddnSub~input_o\ $ (\A[37]~input_o\ $ (\B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Add|P\(37));

-- Location: LCCOMB_X54_Y52_N2
\Add|GEN_BLOCKS:9:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ = (\Add|P\(37) & (\AddnSub~input_o\ $ (\B[36]~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[36]~input_o\,
	datad => \Add|P\(37),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X57_Y48_N16
\Add|GEN_BLOCKS:9:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X53_Y48_N12
\Add|P[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(34) = \B[34]~input_o\ $ (\AddnSub~input_o\ $ (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[34]~input_o\,
	combout => \Add|P\(34));

-- Location: LCCOMB_X53_Y48_N30
\Add|GEN_BLOCKS:8:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ = (\Add|P\(34) & (\AddnSub~input_o\ $ (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \Add|P\(34),
	combout => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X0_Y42_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X53_Y48_N0
\Add|P[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(33) = \AddnSub~input_o\ $ (\B[33]~input_o\ $ (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Add|P\(33));

-- Location: IOIBUF_X94_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X54_Y48_N20
\Add|GEN_BLOCKS:8:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ = (\Add|P\(33) & (\AddnSub~input_o\ $ (\A[32]~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[32]~input_o\,
	datac => \Add|P\(33),
	datad => \B[32]~input_o\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X54_Y48_N0
\Add|GEN_BLOCKS:8:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X49_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X49_Y49_N6
\Add|block_carry_in[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~38_combout\ = (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	combout => \Add|block_carry_in[8]~38_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X49_Y49_N20
\Add|G[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(29) = (\A[29]~input_o\ & (\B[29]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(29));

-- Location: LCCOMB_X49_Y49_N0
\Add|P[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(30) = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(30));

-- Location: LCCOMB_X49_Y49_N2
\Add|P[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(29) = \A[29]~input_o\ $ (\B[29]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(29));

-- Location: LCCOMB_X49_Y49_N8
\Add|block_carry_in[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~39_combout\ = (\Add|P\(30) & ((\Add|G\(29)) # ((\Add|block_carry_in[8]~38_combout\ & \Add|P\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[8]~38_combout\,
	datab => \Add|G\(29),
	datac => \Add|P\(30),
	datad => \Add|P\(29),
	combout => \Add|block_carry_in[8]~39_combout\);

-- Location: LCCOMB_X49_Y49_N10
\Add|block_carry_in[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~40_combout\ = (\Add|block_carry_in[8]~39_combout\) # ((\A[30]~input_o\ & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[30]~input_o\,
	datac => \Add|block_carry_in[8]~39_combout\,
	datad => \A[30]~input_o\,
	combout => \Add|block_carry_in[8]~40_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X48_Y52_N16
\Add|P[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(25) = \A[25]~input_o\ $ (\AddnSub~input_o\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	combout => \Add|P\(25));

-- Location: LCCOMB_X48_Y52_N26
\Add|GEN_BLOCKS:6:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = (\Add|P\(25) & (\A[24]~input_o\ $ (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(25),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X49_Y52_N8
\Add|P[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(26) = \AddnSub~input_o\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add|P\(26));

-- Location: IOIBUF_X13_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X49_Y48_N20
\Add|GEN_BLOCKS:6:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ = (\Add|P\(26) & (\A[27]~input_o\ $ (\AddnSub~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(26),
	datad => \B[27]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X49_Y48_N22
\Add|GEN_BLOCKS:6:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & \Add|GEN_BLOCKS:6:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|Pout~1_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X48_Y52_N12
\Add|G[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(24) = (\A[24]~input_o\ & (\AddnSub~input_o\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \Add|G\(24));

-- Location: LCCOMB_X48_Y52_N6
\Add|block_carry_in[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~15_combout\ = (\A[25]~input_o\ & ((\Add|G\(24)) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\Add|G\(24) & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Add|G\(24),
	combout => \Add|block_carry_in[7]~15_combout\);

-- Location: LCCOMB_X49_Y52_N26
\Add|block_carry_in[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~14_combout\ = (\A[26]~input_o\ & (\AddnSub~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add|block_carry_in[7]~14_combout\);

-- Location: LCCOMB_X49_Y48_N16
\Add|block_carry_in[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~16_combout\ = (\Add|P\(26) & (!\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[7]~15_combout\) # (\Add|block_carry_in[7]~14_combout\)))) # (!\Add|P\(26) & (((\Add|block_carry_in[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~15_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(26),
	datad => \Add|block_carry_in[7]~14_combout\,
	combout => \Add|block_carry_in[7]~16_combout\);

-- Location: LCCOMB_X49_Y48_N18
\Add|block_carry_in[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~17_combout\ = (\A[27]~input_o\ & ((\Add|block_carry_in[7]~16_combout\) # (\B[27]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[27]~input_o\ & (\Add|block_carry_in[7]~16_combout\ & (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[27]~input_o\,
	datad => \Add|block_carry_in[7]~16_combout\,
	combout => \Add|block_carry_in[7]~17_combout\);

-- Location: IOIBUF_X56_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X48_Y48_N0
\Add|block_carry_in[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~33_combout\ = (\A[22]~input_o\ & (\B[22]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[6]~33_combout\);

-- Location: IOIBUF_X23_Y73_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X48_Y48_N18
\Add|G[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(20) = (\A[20]~input_o\ & (\B[20]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(20));

-- Location: LCCOMB_X48_Y48_N20
\Add|block_carry_in[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~34_combout\ = (\A[21]~input_o\ & ((\Add|G\(20)) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[21]~input_o\ & (\Add|G\(20) & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \Add|G\(20),
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[6]~34_combout\);

-- Location: LCCOMB_X48_Y48_N16
\Add|P[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(21) = \AddnSub~input_o\ $ (\B[21]~input_o\ $ (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Add|P\(21));

-- Location: LCCOMB_X48_Y48_N4
\Add|GEN_BLOCKS:5:LACG_INST|Pout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\ = (\Add|P\(21) & (\AddnSub~input_o\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))))

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
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\);

-- Location: LCCOMB_X48_Y48_N2
\Add|P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(22) = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(22));

-- Location: LCCOMB_X48_Y48_N14
\Add|block_carry_in[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~35_combout\ = (\Add|P\(22) & (!\Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\ & ((\Add|block_carry_in[6]~33_combout\) # (\Add|block_carry_in[6]~34_combout\)))) # (!\Add|P\(22) & (\Add|block_carry_in[6]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~33_combout\,
	datab => \Add|block_carry_in[6]~34_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\,
	datad => \Add|P\(22),
	combout => \Add|block_carry_in[6]~35_combout\);

-- Location: LCCOMB_X49_Y48_N30
\Add|block_carry_in[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~36_combout\ = (\A[23]~input_o\ & ((\Add|block_carry_in[6]~35_combout\) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[23]~input_o\ & (\Add|block_carry_in[6]~35_combout\ & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[6]~35_combout\,
	combout => \Add|block_carry_in[6]~36_combout\);

-- Location: IOIBUF_X0_Y44_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X49_Y48_N2
\Add|P[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(16) = \B[16]~input_o\ $ (\A[16]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(16));

-- Location: IOIBUF_X20_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X50_Y48_N20
\Add|P[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(17) = \A[17]~input_o\ $ (\AddnSub~input_o\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|P\(17));

-- Location: IOIBUF_X0_Y47_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X50_Y48_N28
\Add|P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(18) = \AddnSub~input_o\ $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add|P\(18));

-- Location: LCCOMB_X50_Y48_N6
\Add|GEN_BLOCKS:4:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = (\Add|P\(18) & (\AddnSub~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Add|P\(18),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X50_Y48_N22
\Add|GEN_BLOCKS:4:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ = (\Add|P\(16) & (\Add|P\(17) & \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(16),
	datab => \Add|P\(17),
	datad => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X49_Y48_N8
\Add|G[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(16) = (\A[16]~input_o\ & (\B[16]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|G\(16));

-- Location: LCCOMB_X50_Y48_N8
\Add|block_carry_in[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~30_combout\ = (\A[17]~input_o\ & ((\Add|G\(16)) # (\AddnSub~input_o\ $ (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\Add|G\(16) & (\AddnSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add|G\(16),
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|block_carry_in[5]~30_combout\);

-- Location: LCCOMB_X50_Y48_N24
\Add|G[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(18) = (\A[18]~input_o\ & (\AddnSub~input_o\ $ (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add|G\(18));

-- Location: LCCOMB_X50_Y48_N10
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

-- Location: LCCOMB_X50_Y48_N18
\Add|block_carry_in[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~31_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\) # ((\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[5]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[5]~30_combout\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\,
	combout => \Add|block_carry_in[5]~31_combout\);

-- Location: IOIBUF_X56_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X55_Y52_N6
\Add|block_carry_in[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~18_combout\ = (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[3]~18_combout\);

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

-- Location: LCCOMB_X55_Y52_N0
\Add|G[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (\B[8]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(8));

-- Location: IOIBUF_X56_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X55_Y52_N18
\Add|block_carry_in[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~19_combout\ = (\A[9]~input_o\ & ((\Add|G\(8)) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\Add|G\(8) & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|G\(8),
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|block_carry_in[3]~19_combout\);

-- Location: LCCOMB_X55_Y52_N2
\Add|P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(9) = \A[9]~input_o\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|P\(9));

-- Location: LCCOMB_X55_Y52_N4
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = (\Add|P\(9) & (\B[8]~input_o\ $ (\AddnSub~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[8]~input_o\,
	datad => \Add|P\(9),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X55_Y52_N24
\Add|P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(10) = \A[10]~input_o\ $ (\B[10]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(10));

-- Location: LCCOMB_X55_Y52_N12
\Add|block_carry_in[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~20_combout\ = (\Add|P\(10) & (!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[3]~18_combout\) # (\Add|block_carry_in[3]~19_combout\)))) # (!\Add|P\(10) & (\Add|block_carry_in[3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~18_combout\,
	datab => \Add|block_carry_in[3]~19_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(10),
	combout => \Add|block_carry_in[3]~20_combout\);

-- Location: IOIBUF_X100_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X56_Y52_N24
\Add|P[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(5) = \AddnSub~input_o\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|P\(5));

-- Location: LCCOMB_X56_Y52_N10
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = (\Add|P\(5) & (\AddnSub~input_o\ $ (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|P\(5),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X55_Y49_N24
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

-- Location: LCCOMB_X56_Y52_N16
\Add|block_carry_in[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~22_combout\ = (\Add|G\(4) & ((\A[5]~input_o\) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\Add|G\(4) & (\A[5]~input_o\ & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(4),
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|block_carry_in[2]~22_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X56_Y52_N14
\Add|block_carry_in[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~21_combout\ = (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|block_carry_in[2]~21_combout\);

-- Location: LCCOMB_X56_Y52_N12
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

-- Location: LCCOMB_X56_Y52_N2
\Add|block_carry_in[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~23_combout\ = (\Add|P\(6) & (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[2]~22_combout\) # (\Add|block_carry_in[2]~21_combout\)))) # (!\Add|P\(6) & (((\Add|block_carry_in[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[2]~22_combout\,
	datac => \Add|block_carry_in[2]~21_combout\,
	datad => \Add|P\(6),
	combout => \Add|block_carry_in[2]~23_combout\);

-- Location: LCCOMB_X56_Y49_N22
\Add|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(2) = \AddnSub~input_o\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Add|P\(2));

-- Location: LCCOMB_X55_Y49_N10
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = (\Add|P\(2) & (\AddnSub~input_o\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(2),
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X56_Y49_N2
\Add|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(1) = \AddnSub~input_o\ $ (\B[1]~input_o\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Add|P\(1));

-- Location: LCCOMB_X56_Y49_N28
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = (\Add|P\(1) & (\B[0]~input_o\ $ (\AddnSub~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \Add|P\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X55_Y49_N20
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

-- Location: LCCOMB_X55_Y49_N30
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = (\Add|G\(2) & ((\A[3]~input_o\) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\Add|G\(2) & (\A[3]~input_o\ & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(2),
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X56_Y49_N24
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

-- Location: LCCOMB_X56_Y49_N18
\Add|block_carry_in[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~24_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

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
	combout => \Add|block_carry_in[1]~24_combout\);

-- Location: LCCOMB_X55_Y49_N0
\Add|block_carry_in[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~25_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[1]~24_combout\)))) # 
-- (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\,
	datad => \Add|block_carry_in[1]~24_combout\,
	combout => \Add|block_carry_in[1]~25_combout\);

-- Location: LCCOMB_X55_Y49_N26
\Add|block_carry_in[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~26_combout\ = (\Add|block_carry_in[1]~25_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datab => \Add|block_carry_in[1]~25_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[2]~26_combout\);

-- Location: LCCOMB_X56_Y52_N20
\Add|block_carry_in[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~66_combout\ = (\Add|block_carry_in[2]~23_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[2]~26_combout\ & \Add|P\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[2]~23_combout\,
	datac => \Add|block_carry_in[2]~26_combout\,
	datad => \Add|P\(6),
	combout => \Add|block_carry_in[2]~66_combout\);

-- Location: LCCOMB_X56_Y52_N6
\Add|block_carry_in[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~67_combout\ = (\A[7]~input_o\ & ((\Add|block_carry_in[2]~66_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[7]~input_o\ & (\Add|block_carry_in[2]~66_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[2]~66_combout\,
	combout => \Add|block_carry_in[2]~67_combout\);

-- Location: LCCOMB_X55_Y52_N22
\Add|block_carry_in[3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~64_combout\ = (\Add|block_carry_in[3]~20_combout\) # ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[2]~67_combout\ & \Add|P\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~20_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[2]~67_combout\,
	datad => \Add|P\(10),
	combout => \Add|block_carry_in[3]~64_combout\);

-- Location: LCCOMB_X55_Y53_N14
\Add|block_carry_in[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~65_combout\ = (\Add|block_carry_in[3]~64_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[3]~64_combout\ & (\A[11]~input_o\ & (\B[11]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Add|block_carry_in[3]~64_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[11]~input_o\,
	combout => \Add|block_carry_in[3]~65_combout\);

-- Location: IOIBUF_X65_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X56_Y53_N24
\Add|G[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(14) = (\A[14]~input_o\ & (\AddnSub~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Add|G\(14));

-- Location: LCCOMB_X56_Y53_N10
\Add|GEN_BLOCKS:3:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ = (\A[15]~input_o\ & ((\Add|G\(14)) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\Add|G\(14) & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Add|G\(14),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\);

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

-- Location: LCCOMB_X55_Y53_N8
\Add|G[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|G\(12));

-- Location: IOIBUF_X81_Y73_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X56_Y53_N0
\Add|block_carry_in[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~27_combout\ = (\Add|G\(12) & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(12) & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(12),
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[4]~27_combout\);

-- Location: LCCOMB_X56_Y53_N4
\Add|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(14) = \AddnSub~input_o\ $ (\B[14]~input_o\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Add|P\(14));

-- Location: LCCOMB_X56_Y53_N6
\Add|P[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[15]~1_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P[15]~1_combout\);

-- Location: LCCOMB_X56_Y53_N2
\Add|block_carry_in[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~28_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\) # ((\Add|block_carry_in[4]~27_combout\ & (\Add|P\(14) & \Add|P[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\,
	datab => \Add|block_carry_in[4]~27_combout\,
	datac => \Add|P\(14),
	datad => \Add|P[15]~1_combout\,
	combout => \Add|block_carry_in[4]~28_combout\);

-- Location: LCCOMB_X56_Y53_N22
\Add|GEN_BLOCKS:3:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ = (\Add|P\(14) & (\AddnSub~input_o\ $ (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[15]~input_o\,
	datac => \Add|P\(14),
	datad => \B[15]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X56_Y53_N20
\Add|P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(13) = \AddnSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Add|P\(13));

-- Location: LCCOMB_X55_Y53_N2
\Add|GEN_BLOCKS:3:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = (\Add|P\(13) & (\AddnSub~input_o\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(13),
	datab => \AddnSub~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X56_Y53_N8
\Add|block_carry_in[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~29_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[3]~65_combout\)) # (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & 
-- ((\Add|block_carry_in[4]~28_combout\))))) # (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & (((\Add|block_carry_in[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~65_combout\,
	datab => \Add|block_carry_in[4]~28_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[4]~29_combout\);

-- Location: LCCOMB_X49_Y50_N16
\Add|P[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(20) = \A[20]~input_o\ $ (\B[20]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(20));

-- Location: LCCOMB_X48_Y48_N28
\Add|P[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[23]~0_combout\ = \AddnSub~input_o\ $ (\B[23]~input_o\ $ (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	combout => \Add|P[23]~0_combout\);

-- Location: LCCOMB_X48_Y48_N6
\Add|GEN_BLOCKS:5:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ = (\Add|P\(20) & (\Add|P\(21) & (\Add|P[23]~0_combout\ & \Add|P\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(20),
	datab => \Add|P\(21),
	datac => \Add|P[23]~0_combout\,
	datad => \Add|P\(22),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X49_Y48_N28
\Add|block_carry_in[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~32_combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ((\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[4]~29_combout\))) # (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (\Add|block_carry_in[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\,
	datab => \Add|block_carry_in[5]~31_combout\,
	datac => \Add|block_carry_in[4]~29_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\,
	combout => \Add|block_carry_in[6]~32_combout\);

-- Location: LCCOMB_X49_Y48_N0
\Add|block_carry_in[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~37_combout\ = (\Add|block_carry_in[7]~17_combout\) # ((\Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[6]~36_combout\) # (\Add|block_carry_in[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\,
	datab => \Add|block_carry_in[7]~17_combout\,
	datac => \Add|block_carry_in[6]~36_combout\,
	datad => \Add|block_carry_in[6]~32_combout\,
	combout => \Add|block_carry_in[7]~37_combout\);

-- Location: LCCOMB_X49_Y49_N28
\Add|GEN_BLOCKS:7:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ = (\Add|P\(29) & (\AddnSub~input_o\ $ (\B[28]~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Add|P\(29),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X49_Y49_N30
\Add|block_carry_in[8]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~62_combout\ = (\Add|P\(30) & ((\Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[7]~37_combout\))) # (!\Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[8]~40_combout\)))) # (!\Add|P\(30) & 
-- (\Add|block_carry_in[8]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[8]~40_combout\,
	datab => \Add|P\(30),
	datac => \Add|block_carry_in[7]~37_combout\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[8]~62_combout\);

-- Location: IOIBUF_X0_Y48_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X54_Y48_N30
\Add|block_carry_in[8]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~63_combout\ = (\A[31]~input_o\ & ((\Add|block_carry_in[8]~62_combout\) # (\AddnSub~input_o\ $ (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\Add|block_carry_in[8]~62_combout\ & (\AddnSub~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Add|block_carry_in[8]~62_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add|block_carry_in[8]~63_combout\);

-- Location: LCCOMB_X53_Y48_N8
\Add|G[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(34) = (\A[34]~input_o\ & (\B[34]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[34]~input_o\,
	combout => \Add|G\(34));

-- Location: LCCOMB_X53_Y48_N10
\Add|GEN_BLOCKS:8:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\ = (\A[35]~input_o\ & ((\Add|G\(34)) # (\B[35]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[35]~input_o\ & (\Add|G\(34) & (\B[35]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[35]~input_o\,
	datac => \Add|G\(34),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X54_Y48_N8
\Add|G[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(32) = (\A[32]~input_o\ & (\AddnSub~input_o\ $ (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Add|G\(32));

-- Location: LCCOMB_X54_Y48_N26
\Add|block_carry_in[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~12_combout\ = (\Add|G\(32) & ((\A[33]~input_o\) # (\AddnSub~input_o\ $ (\B[33]~input_o\)))) # (!\Add|G\(32) & (\A[33]~input_o\ & (\AddnSub~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[33]~input_o\,
	datac => \Add|G\(32),
	datad => \A[33]~input_o\,
	combout => \Add|block_carry_in[9]~12_combout\);

-- Location: LCCOMB_X54_Y48_N6
\Add|block_carry_in[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~13_combout\ = (\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & (!\Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ((\Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[9]~12_combout\)))) # 
-- (!\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & (\Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:8:LACG_INST|g_int~0_combout\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[9]~12_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[9]~13_combout\);

-- Location: LCCOMB_X54_Y48_N10
\Add|block_carry_in[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~41_combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[9]~13_combout\) # ((\Add|GEN_BLOCKS:8:LACG_INST|Pout~combout\ & \Add|block_carry_in[8]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~combout\,
	datac => \Add|block_carry_in[8]~63_combout\,
	datad => \Add|block_carry_in[9]~13_combout\,
	combout => \Add|block_carry_in[10]~41_combout\);

-- Location: IOIBUF_X115_Y46_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X54_Y49_N12
\Add|P[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(40) = \AddnSub~input_o\ $ (\A[40]~input_o\ $ (\B[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|P\(40));

-- Location: IOIBUF_X65_Y0_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X53_Y49_N0
\Add|P[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(42) = \A[42]~input_o\ $ (\AddnSub~input_o\ $ (\B[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \Add|P\(42));

-- Location: LCCOMB_X54_Y49_N14
\Add|GEN_BLOCKS:10:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ = (\Add|P\(42) & (\B[43]~input_o\ $ (\A[43]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[43]~input_o\,
	datac => \Add|P\(42),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X53_Y49_N16
\Add|P[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(41) = \A[41]~input_o\ $ (\AddnSub~input_o\ $ (\B[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \Add|P\(41));

-- Location: LCCOMB_X54_Y49_N8
\Add|GEN_BLOCKS:10:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ = (\Add|P\(40) & (\Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & \Add|P\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(40),
	datab => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(41),
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X54_Y49_N24
\Add|G[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(40) = (\A[40]~input_o\ & (\AddnSub~input_o\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|G\(40));

-- Location: LCCOMB_X53_Y49_N12
\Add|block_carry_in[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~9_combout\ = (\A[41]~input_o\ & ((\Add|G\(40)) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[41]~input_o\ & (\Add|G\(40) & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(40),
	combout => \Add|block_carry_in[11]~9_combout\);

-- Location: LCCOMB_X53_Y49_N26
\Add|block_carry_in[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~8_combout\ = (\A[42]~input_o\ & (\AddnSub~input_o\ $ (\B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \Add|block_carry_in[11]~8_combout\);

-- Location: LCCOMB_X53_Y49_N14
\Add|block_carry_in[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~10_combout\ = (\Add|block_carry_in[11]~8_combout\) # ((\Add|block_carry_in[11]~9_combout\ & \Add|P\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[11]~9_combout\,
	datac => \Add|block_carry_in[11]~8_combout\,
	datad => \Add|P\(42),
	combout => \Add|block_carry_in[11]~10_combout\);

-- Location: LCCOMB_X54_Y49_N26
\Add|block_carry_in[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~11_combout\ = (\A[43]~input_o\ & ((\Add|block_carry_in[11]~10_combout\) # (\AddnSub~input_o\ $ (\B[43]~input_o\)))) # (!\A[43]~input_o\ & (\Add|block_carry_in[11]~10_combout\ & (\AddnSub~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Add|block_carry_in[11]~10_combout\,
	combout => \Add|block_carry_in[11]~11_combout\);

-- Location: LCCOMB_X49_Y52_N20
\Add|G[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(38) = (\A[38]~input_o\ & (\B[38]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(38));

-- Location: LCCOMB_X54_Y52_N16
\Add|GEN_BLOCKS:9:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\ = (\A[39]~input_o\ & ((\Add|G\(38)) # (\AddnSub~input_o\ $ (\B[39]~input_o\)))) # (!\A[39]~input_o\ & (\Add|G\(38) & (\AddnSub~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Add|G\(38),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X54_Y52_N10
\Add|G[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(36) = (\A[36]~input_o\ & (\AddnSub~input_o\ $ (\B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => \Add|G\(36));

-- Location: LCCOMB_X54_Y52_N28
\Add|block_carry_in[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~42_combout\ = (\A[37]~input_o\ & ((\Add|G\(36)) # (\AddnSub~input_o\ $ (\B[37]~input_o\)))) # (!\A[37]~input_o\ & (\Add|G\(36) & (\AddnSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \Add|G\(36),
	combout => \Add|block_carry_in[10]~42_combout\);

-- Location: LCCOMB_X54_Y49_N10
\Add|block_carry_in[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~43_combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & ((\Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[10]~42_combout\)))) # 
-- (!\Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (\Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[10]~42_combout\,
	combout => \Add|block_carry_in[10]~43_combout\);

-- Location: LCCOMB_X54_Y49_N28
\Add|block_carry_in[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~44_combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[10]~41_combout\) # ((\Add|block_carry_in[10]~43_combout\)))) # (!\Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ & 
-- (((\Add|block_carry_in[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[10]~41_combout\,
	datab => \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\,
	datac => \Add|block_carry_in[11]~11_combout\,
	datad => \Add|block_carry_in[10]~43_combout\,
	combout => \Add|block_carry_in[11]~44_combout\);

-- Location: LCCOMB_X55_Y51_N22
\Add|block_carry_in[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~60_combout\ = (\Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & ((\Add|P\(46) & ((\Add|block_carry_in[11]~44_combout\))) # (!\Add|P\(46) & (\Add|block_carry_in[12]~47_combout\)))) # (!\Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & 
-- (\Add|block_carry_in[12]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[12]~47_combout\,
	datac => \Add|block_carry_in[11]~44_combout\,
	datad => \Add|P\(46),
	combout => \Add|block_carry_in[12]~60_combout\);

-- Location: LCCOMB_X54_Y54_N22
\Add|block_carry_in[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~61_combout\ = (\A[47]~input_o\ & ((\Add|block_carry_in[12]~60_combout\) # (\AddnSub~input_o\ $ (\B[47]~input_o\)))) # (!\A[47]~input_o\ & (\Add|block_carry_in[12]~60_combout\ & (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Add|block_carry_in[12]~60_combout\,
	combout => \Add|block_carry_in[12]~61_combout\);

-- Location: LCCOMB_X53_Y54_N30
\Add|block_carry_in[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~58_combout\ = (\Add|block_carry_in[13]~7_combout\) # ((\Add|P\(50) & (\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[12]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~7_combout\,
	datab => \Add|P\(50),
	datac => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[12]~61_combout\,
	combout => \Add|block_carry_in[13]~58_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X53_Y53_N22
\Add|block_carry_in[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~59_combout\ = (\Add|block_carry_in[13]~58_combout\ & ((\A[51]~input_o\) # (\AddnSub~input_o\ $ (\B[51]~input_o\)))) # (!\Add|block_carry_in[13]~58_combout\ & (\A[51]~input_o\ & (\AddnSub~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~58_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Add|block_carry_in[13]~59_combout\);

-- Location: LCCOMB_X52_Y53_N14
\Add|block_carry_in[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~56_combout\ = (\Add|block_carry_in[14]~4_combout\) # ((\Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ & (\Add|P\(54) & \Add|block_carry_in[13]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(54),
	datac => \Add|block_carry_in[14]~4_combout\,
	datad => \Add|block_carry_in[13]~59_combout\,
	combout => \Add|block_carry_in[14]~56_combout\);

-- Location: LCCOMB_X53_Y53_N28
\Add|block_carry_in[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~57_combout\ = (\A[55]~input_o\ & ((\Add|block_carry_in[14]~56_combout\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\A[55]~input_o\ & (\Add|block_carry_in[14]~56_combout\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	datad => \Add|block_carry_in[14]~56_combout\,
	combout => \Add|block_carry_in[14]~57_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X49_Y52_N30
\Add|P[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(57) = \A[57]~input_o\ $ (\B[57]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(57));

-- Location: IOIBUF_X20_Y73_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X52_Y49_N24
\Add|GEN_BLOCKS:14:LACG_INST|Pout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\ = (\Add|P\(57) & (\A[56]~input_o\ $ (\B[56]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(57),
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\);

-- Location: LCCOMB_X52_Y49_N20
\Add|GEN_BLOCKS:14:LACG_INST|Pout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\ & (\AddnSub~input_o\ $ (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\);

-- Location: LCCOMB_X52_Y49_N8
\Add|P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(58) = \AddnSub~input_o\ $ (\A[58]~input_o\ $ (\B[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	combout => \Add|P\(58));

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

-- Location: LCCOMB_X53_Y49_N22
\Add|P[59]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[59]~2_combout\ = \B[59]~input_o\ $ (\AddnSub~input_o\ $ (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[59]~input_o\,
	combout => \Add|P[59]~2_combout\);

-- Location: LCCOMB_X52_Y49_N10
\Add|G[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(56) = (\A[56]~input_o\ & (\AddnSub~input_o\ $ (\B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	combout => \Add|G\(56));

-- Location: LCCOMB_X52_Y49_N4
\Add|block_carry_in[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~48_combout\ = (\A[57]~input_o\ & ((\Add|G\(56)) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\A[57]~input_o\ & (\Add|G\(56) & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \Add|G\(56),
	combout => \Add|block_carry_in[15]~48_combout\);

-- Location: LCCOMB_X53_Y49_N10
\Add|G[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(58) = (\A[58]~input_o\ & (\B[58]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(58));

-- Location: LCCOMB_X53_Y49_N28
\Add|GEN_BLOCKS:14:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ = (\A[59]~input_o\ & ((\Add|G\(58)) # (\B[59]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[59]~input_o\ & (\Add|G\(58) & (\B[59]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[59]~input_o\,
	datad => \Add|G\(58),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X52_Y49_N22
\Add|block_carry_in[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~49_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\) # ((\Add|P\(58) & (\Add|P[59]~2_combout\ & \Add|block_carry_in[15]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(58),
	datab => \Add|P[59]~2_combout\,
	datac => \Add|block_carry_in[15]~48_combout\,
	datad => \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\,
	combout => \Add|block_carry_in[15]~49_combout\);

-- Location: LCCOMB_X52_Y49_N18
\Add|block_carry_in[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~50_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\ & ((\Add|P[59]~2_combout\ & (\Add|block_carry_in[14]~57_combout\)) # (!\Add|P[59]~2_combout\ & ((\Add|block_carry_in[15]~49_combout\))))) # 
-- (!\Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\ & (((\Add|block_carry_in[15]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[14]~57_combout\,
	datab => \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\,
	datac => \Add|block_carry_in[15]~49_combout\,
	datad => \Add|P[59]~2_combout\,
	combout => \Add|block_carry_in[15]~50_combout\);

-- Location: LCCOMB_X57_Y45_N20
\Add|GEN_BLOCKS:15:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\ = (\Add|P\(61) & (\A[60]~input_o\ $ (\AddnSub~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(61),
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X57_Y45_N6
\Add|GEN_BLOCKS:15:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C\(3) = (\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\) # ((\Add|block_carry_in[15]~50_combout\ & (\Add|P\(62) & \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\,
	datab => \Add|block_carry_in[15]~50_combout\,
	datac => \Add|P\(62),
	datad => \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C\(3));

-- Location: LCCOMB_X56_Y45_N24
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\A[63]~input_o\ & (\Add|GEN_BLOCKS:15:LACG_INST|C\(3) & (\B[63]~input_o\ $ (!\AddnSub~input_o\)))) # (!\A[63]~input_o\ & ((\Add|GEN_BLOCKS:15:LACG_INST|C\(3)) # (\B[63]~input_o\ $ (!\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[63]~input_o\,
	datad => \Add|GEN_BLOCKS:15:LACG_INST|C\(3),
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X56_Y45_N6
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\FuncClass[1]~input_o\ & (((\FuncClass[0]~input_o\) # (!\AltB~0_combout\)))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~1_combout\ & (!\FuncClass[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X56_Y45_N12
\Add|P[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(63) = \B[63]~input_o\ $ (\AddnSub~input_o\ $ (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[63]~input_o\,
	combout => \Add|P\(63));

-- Location: LCCOMB_X56_Y45_N0
\Add|G[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(62) = (\A[62]~input_o\ & (\AddnSub~input_o\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Add|G\(62));

-- Location: LCCOMB_X56_Y45_N18
\Add|GEN_BLOCKS:15:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ = (\A[63]~input_o\ & ((\Add|G\(62)) # (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[63]~input_o\ & (\Add|G\(62) & (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[63]~input_o\,
	datad => \Add|G\(62),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X57_Y45_N24
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\Add|P\(62) & ((\Add|G\(61)) # ((\Add|P\(61) & \Add|G\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(61),
	datab => \Add|P\(62),
	datac => \Add|G\(61),
	datad => \Add|G\(60),
	combout => \Add|Cout~0_combout\);

-- Location: LCCOMB_X56_Y45_N30
\Add|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\) # ((\Add|P\(63) & \Add|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(63),
	datab => \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\,
	datad => \Add|Cout~0_combout\,
	combout => \Add|Cout~1_combout\);

-- Location: LCCOMB_X56_Y45_N2
\Add|GEN_BLOCKS:15:LACG_INST|Pout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\ & (\B[62]~input_o\ $ (\AddnSub~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\,
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[62]~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\);

-- Location: LCCOMB_X56_Y45_N16
\Add|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~2_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\ & ((\Add|P\(63) & ((\Add|block_carry_in[15]~50_combout\))) # (!\Add|P\(63) & (\Add|Cout~1_combout\)))) # (!\Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\ & (\Add|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~1_combout\,
	datab => \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\,
	datac => \Add|block_carry_in[15]~50_combout\,
	datad => \Add|P\(63),
	combout => \Add|Cout~2_combout\);

-- Location: IOIBUF_X45_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

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

-- Location: LCCOMB_X56_Y49_N16
\Logic|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = (\B[0]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[0]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: LCCOMB_X56_Y45_N26
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\Mux63~0_combout\ & (((!\FuncClass[0]~input_o\)) # (!\Add|Cout~2_combout\))) # (!\Mux63~0_combout\ & (((\FuncClass[0]~input_o\ & \Logic|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~0_combout\,
	datab => \Add|Cout~2_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X53_Y45_N16
\Logic|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux62~0_combout\ = (\B[1]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Logic|Mux62~0_combout\);

-- Location: LCCOMB_X56_Y49_N14
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \Add|P\(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \Add|P\(1),
	combout => \Add|S\(1));

-- Location: LCCOMB_X61_Y51_N8
\Shift|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X55_Y47_N4
\Shift|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = (\B[2]~input_o\) # ((\B[3]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X61_Y51_N2
\Shift|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = (!\B[5]~input_o\ & (!\B[4]~input_o\ & (\Shift|ShiftLeft0~19_combout\ & !\Shift|ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~19_combout\,
	datad => \Shift|ShiftLeft0~20_combout\,
	combout => \Shift|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X56_Y47_N30
\Y_ShiftOrArith[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~3_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\) # ((\Shift|ShiftLeft0~21_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (\Add|S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Add|S\(1),
	datad => \Shift|ShiftLeft0~21_combout\,
	combout => \Y_ShiftOrArith[1]~3_combout\);

-- Location: LCCOMB_X60_Y52_N0
\Shift|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: LCCOMB_X60_Y52_N10
\Shift|ShiftRight0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~91_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~20_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~61_combout\,
	combout => \Shift|ShiftRight0~91_combout\);

-- Location: LCCOMB_X60_Y51_N14
\Shift|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = (\B[1]~input_o\ & (\A[48]~input_o\)) # (!\B[1]~input_o\ & ((\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[48]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: LCCOMB_X60_Y51_N8
\Shift|ShiftRight0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~90_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~19_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~58_combout\,
	datac => \Shift|ShiftRight1~19_combout\,
	combout => \Shift|ShiftRight0~90_combout\);

-- Location: LCCOMB_X53_Y47_N12
\Shift|ShiftRight0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~92_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~90_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~91_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~90_combout\,
	combout => \Shift|ShiftRight0~92_combout\);

-- Location: LCCOMB_X59_Y52_N28
\Shift|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = (\B[1]~input_o\ & (\A[36]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: LCCOMB_X59_Y52_N22
\Shift|ShiftRight0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~94_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~22_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~22_combout\,
	datad => \Shift|ShiftRight0~68_combout\,
	combout => \Shift|ShiftRight0~94_combout\);

-- Location: LCCOMB_X62_Y51_N10
\Shift|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = (\B[1]~input_o\ & ((\A[44]~input_o\))) # (!\B[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LCCOMB_X59_Y51_N22
\Shift|ShiftRight0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~93_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~21_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~65_combout\,
	datad => \Shift|ShiftRight1~21_combout\,
	combout => \Shift|ShiftRight0~93_combout\);

-- Location: LCCOMB_X53_Y47_N14
\Shift|ShiftRight0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~95_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~93_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~94_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~93_combout\,
	combout => \Shift|ShiftRight0~95_combout\);

-- Location: LCCOMB_X53_Y47_N8
\Shift|ShiftRight0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~96_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~92_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~92_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~95_combout\,
	combout => \Shift|ShiftRight0~96_combout\);

-- Location: LCCOMB_X59_Y50_N30
\Shift|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = (\B[1]~input_o\ & ((\A[56]~input_o\))) # (!\B[1]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LCCOMB_X59_Y50_N16
\Shift|ShiftRight0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~97_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~23_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~23_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~15_combout\,
	combout => \Shift|ShiftRight0~97_combout\);

-- Location: LCCOMB_X59_Y51_N24
\Shift|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LCCOMB_X59_Y51_N2
\Shift|ShiftRight0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~98_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~24_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~24_combout\,
	datad => \Shift|ShiftRight0~18_combout\,
	combout => \Shift|ShiftRight0~98_combout\);

-- Location: LCCOMB_X54_Y47_N8
\Shift|ShiftRight0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~99_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~97_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~97_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~98_combout\,
	combout => \Shift|ShiftRight0~99_combout\);

-- Location: LCCOMB_X59_Y49_N30
\Shift|ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~26_combout\ = (\B[1]~input_o\ & (\A[60]~input_o\)) # (!\B[1]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ShiftRight1~26_combout\);

-- Location: LCCOMB_X59_Y49_N16
\Shift|ShiftRight0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~101_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~26_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~26_combout\,
	datad => \Shift|ShiftRight0~24_combout\,
	combout => \Shift|ShiftRight0~101_combout\);

-- Location: LCCOMB_X59_Y49_N20
\Shift|ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~25_combout\ = (\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[61]~input_o\,
	combout => \Shift|ShiftRight1~25_combout\);

-- Location: LCCOMB_X55_Y47_N24
\Shift|ShiftRight0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~100_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[63]~input_o\)))) # (!\B[1]~input_o\ & (((\Shift|ShiftRight1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~25_combout\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~100_combout\);

-- Location: LCCOMB_X54_Y47_N18
\Shift|ShiftRight0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~102_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~100_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~101_combout\,
	datab => \Shift|ShiftRight0~100_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~102_combout\);

-- Location: LCCOMB_X56_Y47_N24
\Shift|ShiftRight0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~103_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~99_combout\) # (\Shift|ShiftRight0~102_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~96_combout\,
	datab => \Shift|ShiftRight0~99_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~102_combout\,
	combout => \Shift|ShiftRight0~103_combout\);

-- Location: LCCOMB_X55_Y47_N2
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

-- Location: LCCOMB_X54_Y47_N28
\Shift|ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~28_combout\ = (\Shift|ShiftRight1~27_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~27_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~101_combout\,
	combout => \Shift|ShiftRight1~28_combout\);

-- Location: LCCOMB_X56_Y47_N10
\Shift|ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~29_combout\ = (\Shift|ShiftRight0~99_combout\) # ((\Shift|ShiftRight1~28_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~28_combout\,
	datac => \Shift|ShiftRight0~99_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~29_combout\);

-- Location: LCCOMB_X56_Y47_N12
\Shift|ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~30_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~29_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~96_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~29_combout\,
	combout => \Shift|ShiftRight1~30_combout\);

-- Location: LCCOMB_X56_Y47_N0
\Y_ShiftOrArith[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~4_combout\ = (\Y_ShiftOrArith[1]~3_combout\ & (((\Shift|ShiftRight1~30_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Y_ShiftOrArith[1]~3_combout\ & (\Shift|ShiftRight0~103_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~3_combout\,
	datab => \Shift|ShiftRight0~103_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~30_combout\,
	combout => \Y_ShiftOrArith[1]~4_combout\);

-- Location: LCCOMB_X49_Y50_N4
\Shift|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: LCCOMB_X55_Y46_N2
\Shift|ShiftRight0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~87_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~18_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~18_combout\,
	datab => \Shift|ShiftRight0~39_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~87_combout\);

-- Location: LCCOMB_X53_Y51_N0
\Shift|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: LCCOMB_X50_Y47_N6
\Shift|ShiftRight0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~86_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~17_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~36_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~17_combout\,
	combout => \Shift|ShiftRight0~86_combout\);

-- Location: LCCOMB_X53_Y47_N18
\Shift|ShiftRight0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~88_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~86_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~87_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~86_combout\,
	combout => \Shift|ShiftRight0~88_combout\);

-- Location: LCCOMB_X54_Y51_N18
\Shift|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: LCCOMB_X53_Y51_N6
\Shift|ShiftRight0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~84_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~16_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~32_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~16_combout\,
	combout => \Shift|ShiftRight0~84_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Shift|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LCCOMB_X54_Y51_N24
\Shift|ShiftRight0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~83_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~15_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~15_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~29_combout\,
	combout => \Shift|ShiftRight0~83_combout\);

-- Location: LCCOMB_X53_Y47_N16
\Shift|ShiftRight0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~85_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~83_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~84_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~83_combout\,
	combout => \Shift|ShiftRight0~85_combout\);

-- Location: LCCOMB_X53_Y45_N0
\Shift|ShiftRight0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~89_combout\ = (\Shift|ShiftRight0~85_combout\) # ((\Shift|ShiftRight0~88_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~88_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~85_combout\,
	combout => \Shift|ShiftRight0~89_combout\);

-- Location: LCCOMB_X53_Y45_N14
\Shift|ShiftRight0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~76_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

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
	combout => \Shift|ShiftRight0~76_combout\);

-- Location: LCCOMB_X58_Y46_N16
\Shift|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LCCOMB_X53_Y45_N8
\Shift|ShiftRight0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~77_combout\ = (\Shift|ShiftRight0~76_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight0~76_combout\,
	datac => \Shift|ShiftRight1~12_combout\,
	combout => \Shift|ShiftRight0~77_combout\);

-- Location: LCCOMB_X53_Y45_N2
\Shift|ShiftRight0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~74_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftRight0~74_combout\);

-- Location: LCCOMB_X55_Y49_N8
\Shift|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LCCOMB_X53_Y45_N20
\Shift|ShiftRight0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~75_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~74_combout\) # ((\Shift|ShiftRight1~11_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~74_combout\,
	datac => \Shift|ShiftRight1~11_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~75_combout\);

-- Location: LCCOMB_X53_Y45_N10
\Shift|ShiftRight0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~78_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~75_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~77_combout\,
	datad => \Shift|ShiftRight0~75_combout\,
	combout => \Shift|ShiftRight0~78_combout\);

-- Location: LCCOMB_X55_Y45_N30
\Shift|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LCCOMB_X55_Y45_N8
\Shift|ShiftRight0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~80_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~14_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~53_combout\,
	datac => \Shift|ShiftRight1~14_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~80_combout\);

-- Location: LCCOMB_X55_Y45_N2
\Shift|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LCCOMB_X55_Y45_N20
\Shift|ShiftRight0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~79_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~13_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~13_combout\,
	datac => \Shift|ShiftRight0~50_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~79_combout\);

-- Location: LCCOMB_X53_Y45_N12
\Shift|ShiftRight0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~81_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~79_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~80_combout\,
	datab => \Shift|ShiftRight0~79_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~81_combout\);

-- Location: LCCOMB_X53_Y45_N6
\Shift|ShiftRight0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~82_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~78_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~78_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~81_combout\,
	combout => \Shift|ShiftRight0~82_combout\);

-- Location: LCCOMB_X53_Y45_N26
\Y_ShiftOrArith[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~2_combout\ = (\Shift|ShiftRight0~82_combout\) # ((\Shift|ShiftRight0~89_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~89_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~82_combout\,
	combout => \Y_ShiftOrArith[1]~2_combout\);

-- Location: LCCOMB_X53_Y45_N28
\Y_ShiftOrArith[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~5_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\ & (\Y_ShiftOrArith[1]~4_combout\)) # (!\B[5]~input_o\ & ((\Y_ShiftOrArith[1]~2_combout\))))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_ShiftOrArith[1]~2_combout\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[1]~5_combout\);

-- Location: LCCOMB_X53_Y45_N30
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux62~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Logic|Mux62~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[1]~5_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X56_Y49_N8
\Shift|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

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
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X56_Y49_N26
\Shift|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = (\Shift|ShiftLeft0~22_combout\) # ((\A[1]~input_o\ & (!\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~22_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X56_Y48_N28
\Shift|ShiftLeft0~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~279_combout\ = (!\B[3]~input_o\ & (\Shift|ShiftLeft0~23_combout\ & (!\B[4]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~279_combout\);

-- Location: LCCOMB_X57_Y49_N16
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X56_Y49_N20
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

-- Location: LCCOMB_X56_Y49_N30
\Add|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(2) = \Add|P\(2) $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(2),
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\,
	combout => \Add|S\(2));

-- Location: LCCOMB_X57_Y52_N10
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X55_Y50_N24
\Mux61~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~9_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux61~9_combout\);

-- Location: LCCOMB_X54_Y50_N8
\Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = (\FuncClass[0]~input_o\) # (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux61~8_combout\);

-- Location: LCCOMB_X60_Y49_N20
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\B[5]~input_o\ & ((\ShiftFN[0]~input_o\))) # (!\B[5]~input_o\ & (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X62_Y51_N4
\Shift|ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~43_combout\ = (\B[1]~input_o\ & ((\A[45]~input_o\))) # (!\B[1]~input_o\ & (\A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[43]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~43_combout\);

-- Location: LCCOMB_X59_Y51_N20
\Shift|ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~44_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~43_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~43_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~21_combout\,
	combout => \Shift|ShiftRight1~44_combout\);

-- Location: LCCOMB_X59_Y52_N24
\Shift|ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~45_combout\ = (\B[1]~input_o\ & ((\A[37]~input_o\))) # (!\B[1]~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Shift|ShiftRight1~45_combout\);

-- Location: LCCOMB_X59_Y52_N18
\Shift|ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~46_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~45_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~45_combout\,
	datad => \Shift|ShiftRight1~22_combout\,
	combout => \Shift|ShiftRight1~46_combout\);

-- Location: LCCOMB_X58_Y51_N4
\Shift|ShiftRight0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~108_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~44_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~44_combout\,
	datad => \Shift|ShiftRight1~46_combout\,
	combout => \Shift|ShiftRight0~108_combout\);

-- Location: LCCOMB_X60_Y52_N28
\Shift|ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~41_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Shift|ShiftRight1~41_combout\);

-- Location: LCCOMB_X60_Y52_N6
\Shift|ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~42_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~41_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~41_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~20_combout\,
	combout => \Shift|ShiftRight1~42_combout\);

-- Location: LCCOMB_X60_Y51_N10
\Shift|ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~39_combout\ = (\B[1]~input_o\ & ((\A[49]~input_o\))) # (!\B[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~39_combout\);

-- Location: LCCOMB_X60_Y51_N28
\Shift|ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~40_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~19_combout\,
	datad => \Shift|ShiftRight1~39_combout\,
	combout => \Shift|ShiftRight1~40_combout\);

-- Location: LCCOMB_X58_Y51_N10
\Shift|ShiftRight0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~107_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~40_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~42_combout\,
	datad => \Shift|ShiftRight1~40_combout\,
	combout => \Shift|ShiftRight0~107_combout\);

-- Location: LCCOMB_X58_Y51_N6
\Shift|ShiftRight0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~109_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~107_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~108_combout\,
	datad => \Shift|ShiftRight0~107_combout\,
	combout => \Shift|ShiftRight0~109_combout\);

-- Location: LCCOMB_X59_Y49_N10
\Shift|ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~51_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[61]~input_o\)) # (!\B[1]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~51_combout\);

-- Location: LCCOMB_X59_Y49_N12
\Shift|ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~52_combout\ = (\Shift|ShiftRight1~51_combout\) # ((!\B[0]~input_o\ & \Shift|ShiftRight1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~51_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~26_combout\,
	combout => \Shift|ShiftRight1~52_combout\);

-- Location: LCCOMB_X61_Y50_N20
\Shift|ShiftRight0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~111_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~8_combout\ & ((!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~8_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~52_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~111_combout\);

-- Location: LCCOMB_X58_Y52_N2
\Shift|ShiftRight0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~112_combout\ = (\Shift|ShiftRight0~111_combout\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ShiftRight0~111_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~112_combout\);

-- Location: LCCOMB_X59_Y50_N10
\Shift|ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~47_combout\ = (\B[1]~input_o\ & ((\A[57]~input_o\))) # (!\B[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~47_combout\);

-- Location: LCCOMB_X59_Y50_N28
\Shift|ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~48_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~47_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~23_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~47_combout\,
	combout => \Shift|ShiftRight1~48_combout\);

-- Location: LCCOMB_X53_Y53_N8
\Shift|ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~49_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~49_combout\);

-- Location: LCCOMB_X59_Y51_N6
\Shift|ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~50_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~49_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~49_combout\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Shift|ShiftRight1~50_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Shift|ShiftRight0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~110_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~48_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~50_combout\)))))

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
	combout => \Shift|ShiftRight0~110_combout\);

-- Location: LCCOMB_X58_Y52_N28
\Shift|ShiftRight0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~113_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~112_combout\) # (\Shift|ShiftRight0~110_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~109_combout\,
	datab => \Shift|ShiftRight0~112_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~113_combout\);

-- Location: LCCOMB_X61_Y49_N10
\Shift|ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~53_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftRight1~53_combout\);

-- Location: LCCOMB_X61_Y49_N20
\Shift|ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~54_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ShiftRight1~54_combout\);

-- Location: LCCOMB_X61_Y49_N14
\Shift|ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~55_combout\ = (\Shift|ShiftRight1~53_combout\) # ((\B[0]~input_o\ & \Shift|ShiftRight1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~53_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~54_combout\,
	combout => \Shift|ShiftRight1~55_combout\);

-- Location: LCCOMB_X58_Y50_N16
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X57_Y46_N26
\Shift|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X58_Y49_N26
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\Mux61~3_combout\ & (((\Shift|ShiftLeft0~24_combout\)))) # (!\Mux61~3_combout\ & ((\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftRight1~55_combout\)) # (!\Shift|ShiftLeft0~24_combout\ & ((\Shift|ShiftRight1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~55_combout\,
	datab => \Mux61~3_combout\,
	datac => \Shift|ShiftRight1~9_combout\,
	datad => \Shift|ShiftLeft0~24_combout\,
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X55_Y46_N22
\Shift|ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~56_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Shift|ShiftRight1~56_combout\);

-- Location: LCCOMB_X55_Y46_N0
\Shift|ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~57_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~56_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~13_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~56_combout\,
	combout => \Shift|ShiftRight1~57_combout\);

-- Location: LCCOMB_X55_Y45_N10
\Shift|ShiftRight1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~58_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight1~58_combout\);

-- Location: LCCOMB_X55_Y45_N28
\Shift|ShiftRight1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~59_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~58_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~58_combout\,
	datac => \Shift|ShiftRight1~14_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~59_combout\);

-- Location: LCCOMB_X58_Y49_N4
\Shift|ShiftRight0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~114_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~57_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~57_combout\,
	datab => \Shift|ShiftRight1~59_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~114_combout\);

-- Location: LCCOMB_X58_Y49_N6
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\Mux61~4_combout\ & (((\Shift|ShiftRight0~114_combout\)) # (!\Mux61~3_combout\))) # (!\Mux61~4_combout\ & (\Mux61~3_combout\ & ((\Shift|ShiftRight1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~4_combout\,
	datab => \Mux61~3_combout\,
	datac => \Shift|ShiftRight0~114_combout\,
	datad => \Shift|ShiftRight1~10_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X57_Y52_N6
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (\Mux61~2_combout\ & (\B[5]~input_o\)) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & (\Shift|ShiftRight0~113_combout\)) # (!\B[5]~input_o\ & ((\Mux61~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftRight0~113_combout\,
	datad => \Mux61~5_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X59_Y49_N22
\Shift|ShiftRight1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~60_combout\ = (\B[1]~input_o\ & (((\A[63]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[63]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~60_combout\);

-- Location: LCCOMB_X59_Y52_N4
\Shift|ShiftRight1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~61_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~60_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~52_combout\,
	datad => \Shift|ShiftRight1~60_combout\,
	combout => \Shift|ShiftRight1~61_combout\);

-- Location: LCCOMB_X58_Y52_N6
\Shift|ShiftRight1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~62_combout\ = (\Shift|ShiftRight0~110_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~110_combout\,
	datad => \Shift|ShiftRight1~61_combout\,
	combout => \Shift|ShiftRight1~62_combout\);

-- Location: LCCOMB_X57_Y52_N0
\Shift|ShiftRight1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~63_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~62_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~109_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~62_combout\,
	combout => \Shift|ShiftRight1~63_combout\);

-- Location: LCCOMB_X50_Y47_N8
\Shift|ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~37_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftRight1~37_combout\);

-- Location: LCCOMB_X55_Y46_N12
\Shift|ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~38_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~37_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~18_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~37_combout\,
	combout => \Shift|ShiftRight1~38_combout\);

-- Location: LCCOMB_X53_Y51_N28
\Shift|ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~35_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~35_combout\);

-- Location: LCCOMB_X53_Y51_N30
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

-- Location: LCCOMB_X55_Y47_N22
\Shift|ShiftRight0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~105_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~36_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~38_combout\,
	datac => \Shift|ShiftRight1~36_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~105_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Shift|ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~31_combout\ = (\B[1]~input_o\ & ((\A[33]~input_o\))) # (!\B[1]~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[33]~input_o\,
	combout => \Shift|ShiftRight1~31_combout\);

-- Location: LCCOMB_X58_Y53_N16
\Shift|ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~32_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~31_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~15_combout\,
	datac => \Shift|ShiftRight1~31_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~32_combout\);

-- Location: LCCOMB_X54_Y51_N4
\Shift|ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~33_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~33_combout\);

-- Location: LCCOMB_X53_Y51_N18
\Shift|ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~34_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~33_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~33_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~16_combout\,
	combout => \Shift|ShiftRight1~34_combout\);

-- Location: LCCOMB_X58_Y51_N0
\Shift|ShiftRight0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~104_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~32_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~32_combout\,
	datad => \Shift|ShiftRight1~34_combout\,
	combout => \Shift|ShiftRight0~104_combout\);

-- Location: LCCOMB_X57_Y52_N12
\Shift|ShiftRight0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~106_combout\ = (\Shift|ShiftRight0~104_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftRight0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~105_combout\,
	datad => \Shift|ShiftRight0~104_combout\,
	combout => \Shift|ShiftRight0~106_combout\);

-- Location: LCCOMB_X57_Y52_N2
\Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = (\Mux61~6_combout\ & ((\Shift|ShiftRight1~63_combout\) # ((!\Mux61~2_combout\)))) # (!\Mux61~6_combout\ & (((\Mux61~2_combout\ & \Shift|ShiftRight0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~6_combout\,
	datab => \Shift|ShiftRight1~63_combout\,
	datac => \Mux61~2_combout\,
	datad => \Shift|ShiftRight0~106_combout\,
	combout => \Mux61~7_combout\);

-- Location: LCCOMB_X57_Y52_N20
\Mux61~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~10_combout\ = (\Mux61~9_combout\ & (\Mux61~1_combout\ & (\Mux61~8_combout\))) # (!\Mux61~9_combout\ & (((\Mux61~7_combout\) # (!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux61~7_combout\,
	combout => \Mux61~10_combout\);

-- Location: LCCOMB_X57_Y48_N26
\Mux61~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~11_combout\ = (\Mux61~0_combout\ & ((\Mux61~10_combout\ & ((\Add|S\(2)))) # (!\Mux61~10_combout\ & (\Shift|ShiftLeft0~279_combout\)))) # (!\Mux61~0_combout\ & (((\Mux61~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~279_combout\,
	datab => \Mux61~0_combout\,
	datac => \Add|S\(2),
	datad => \Mux61~10_combout\,
	combout => \Mux61~11_combout\);

-- Location: LCCOMB_X57_Y48_N4
\Mux61~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~12_combout\ = (!\FuncClass[1]~input_o\ & \Mux61~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux61~11_combout\,
	combout => \Mux61~12_combout\);

-- Location: LCCOMB_X59_Y50_N6
\Shift|ShiftRight1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~72_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~25_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~25_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~47_combout\,
	combout => \Shift|ShiftRight1~72_combout\);

-- Location: LCCOMB_X59_Y51_N10
\Shift|ShiftRight1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~73_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~16_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~49_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~73_combout\);

-- Location: LCCOMB_X59_Y47_N0
\Shift|ShiftRight0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~121_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~72_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~72_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~73_combout\,
	combout => \Shift|ShiftRight0~121_combout\);

-- Location: LCCOMB_X59_Y52_N14
\Shift|ShiftRight1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~71_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~62_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~62_combout\,
	datad => \Shift|ShiftRight1~45_combout\,
	combout => \Shift|ShiftRight1~71_combout\);

-- Location: LCCOMB_X59_Y51_N16
\Shift|ShiftRight1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~70_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~59_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~59_combout\,
	datad => \Shift|ShiftRight1~43_combout\,
	combout => \Shift|ShiftRight1~70_combout\);

-- Location: LCCOMB_X59_Y46_N12
\Shift|ShiftRight0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~119_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~70_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~71_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~70_combout\,
	combout => \Shift|ShiftRight0~119_combout\);

-- Location: LCCOMB_X60_Y51_N22
\Shift|ShiftRight1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~68_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~19_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~19_combout\,
	datad => \Shift|ShiftRight1~39_combout\,
	combout => \Shift|ShiftRight1~68_combout\);

-- Location: LCCOMB_X60_Y52_N8
\Shift|ShiftRight1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~69_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~66_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~66_combout\,
	datad => \Shift|ShiftRight1~41_combout\,
	combout => \Shift|ShiftRight1~69_combout\);

-- Location: LCCOMB_X59_Y46_N10
\Shift|ShiftRight0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~118_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~68_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~68_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~69_combout\,
	combout => \Shift|ShiftRight0~118_combout\);

-- Location: LCCOMB_X59_Y46_N14
\Shift|ShiftRight0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~120_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~118_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~119_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~118_combout\,
	combout => \Shift|ShiftRight0~120_combout\);

-- Location: LCCOMB_X59_Y49_N24
\Shift|ShiftRight1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~74_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[60]~input_o\)) # (!\B[0]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~74_combout\);

-- Location: LCCOMB_X59_Y49_N26
\Shift|ShiftRight1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~75_combout\ = (\Shift|ShiftRight1~74_combout\) # ((\Shift|ShiftRight1~25_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~25_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight1~74_combout\,
	combout => \Shift|ShiftRight1~75_combout\);

-- Location: LCCOMB_X59_Y47_N14
\Shift|ShiftRight1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~79_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[63]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~75_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~79_combout\);

-- Location: LCCOMB_X58_Y48_N6
\Shift|ShiftRight1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~80_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~121_combout\) # ((\Shift|ShiftRight1~79_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~121_combout\,
	datac => \Shift|ShiftRight0~120_combout\,
	datad => \Shift|ShiftRight1~79_combout\,
	combout => \Shift|ShiftRight1~80_combout\);

-- Location: LCCOMB_X55_Y49_N12
\Shift|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X59_Y47_N26
\Shift|ShiftRight0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~122_combout\ = (\B[2]~input_o\ & (\A[63]~input_o\ & ((\Shift|ShiftLeft0~27_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~75_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~27_combout\,
	combout => \Shift|ShiftRight0~122_combout\);

-- Location: LCCOMB_X59_Y47_N12
\Shift|ShiftRight0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~123_combout\ = (\B[3]~input_o\ & \Shift|ShiftRight0~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~122_combout\,
	combout => \Shift|ShiftRight0~123_combout\);

-- Location: LCCOMB_X58_Y48_N10
\Shift|ShiftRight0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~124_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~123_combout\) # ((\Shift|ShiftRight0~121_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~123_combout\,
	datac => \Shift|ShiftRight0~120_combout\,
	datad => \Shift|ShiftRight0~121_combout\,
	combout => \Shift|ShiftRight0~124_combout\);

-- Location: LCCOMB_X55_Y46_N26
\Shift|ShiftRight1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~77_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~40_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~40_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~56_combout\,
	combout => \Shift|ShiftRight1~77_combout\);

-- Location: LCCOMB_X55_Y45_N22
\Shift|ShiftRight1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~78_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~51_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~58_combout\,
	datab => \Shift|ShiftRight0~51_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~78_combout\);

-- Location: LCCOMB_X58_Y46_N0
\Shift|ShiftRight0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~125_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~77_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~77_combout\,
	datab => \Shift|ShiftRight1~78_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~125_combout\);

-- Location: LCCOMB_X61_Y49_N0
\Shift|ShiftRight1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~76_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~54_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~54_combout\,
	datad => \Shift|ShiftRight1~54_combout\,
	combout => \Shift|ShiftRight1~76_combout\);

-- Location: LCCOMB_X58_Y46_N22
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\Mux61~3_combout\ & (((\Shift|ShiftLeft0~24_combout\)))) # (!\Mux61~3_combout\ & ((\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftRight1~76_combout\)) # (!\Shift|ShiftLeft0~24_combout\ & ((\Shift|ShiftRight1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~76_combout\,
	datab => \Mux61~3_combout\,
	datac => \Shift|ShiftRight1~11_combout\,
	datad => \Shift|ShiftLeft0~24_combout\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X58_Y46_N2
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\Mux60~1_combout\ & (((\Shift|ShiftRight0~125_combout\) # (!\Mux61~3_combout\)))) # (!\Mux60~1_combout\ & (\Shift|ShiftRight1~12_combout\ & ((\Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~12_combout\,
	datab => \Shift|ShiftRight0~125_combout\,
	datac => \Mux60~1_combout\,
	datad => \Mux61~3_combout\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X58_Y48_N20
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftRight0~124_combout\) # ((\Mux61~2_combout\)))) # (!\B[5]~input_o\ & (((\Mux60~2_combout\ & !\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~124_combout\,
	datab => \Mux60~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Mux61~2_combout\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X50_Y47_N18
\Shift|ShiftRight1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~67_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~37_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~37_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~37_combout\,
	combout => \Shift|ShiftRight1~67_combout\);

-- Location: LCCOMB_X53_Y51_N16
\Shift|ShiftRight1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~66_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~33_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~33_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~35_combout\,
	combout => \Shift|ShiftRight1~66_combout\);

-- Location: LCCOMB_X58_Y46_N10
\Shift|ShiftRight0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~116_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~66_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~67_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~66_combout\,
	combout => \Shift|ShiftRight0~116_combout\);

-- Location: LCCOMB_X54_Y51_N30
\Shift|ShiftRight1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~65_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~30_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~30_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~33_combout\,
	combout => \Shift|ShiftRight1~65_combout\);

-- Location: LCCOMB_X58_Y53_N26
\Shift|ShiftRight1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~64_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~69_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~31_combout\,
	datad => \Shift|ShiftRight0~69_combout\,
	combout => \Shift|ShiftRight1~64_combout\);

-- Location: LCCOMB_X59_Y46_N16
\Shift|ShiftRight0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~115_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight1~64_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~65_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~64_combout\,
	combout => \Shift|ShiftRight0~115_combout\);

-- Location: LCCOMB_X58_Y46_N28
\Shift|ShiftRight0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~117_combout\ = (\Shift|ShiftRight0~115_combout\) # ((\Shift|ShiftRight0~116_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~116_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~115_combout\,
	combout => \Shift|ShiftRight0~117_combout\);

-- Location: LCCOMB_X58_Y48_N8
\Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (\Mux60~3_combout\ & ((\Shift|ShiftRight1~80_combout\) # ((!\Mux61~2_combout\)))) # (!\Mux60~3_combout\ & (((\Shift|ShiftRight0~117_combout\ & \Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~80_combout\,
	datab => \Mux60~3_combout\,
	datac => \Shift|ShiftRight0~117_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux60~4_combout\);

-- Location: LCCOMB_X58_Y48_N24
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\B[3]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[3]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X58_Y48_N2
\Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = (\Mux61~8_combout\ & ((\Mux61~9_combout\ & ((\Mux60~0_combout\))) # (!\Mux61~9_combout\ & (\Mux60~4_combout\)))) # (!\Mux61~8_combout\ & (!\Mux61~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~8_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux60~4_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~5_combout\);

-- Location: LCCOMB_X55_Y49_N2
\Add|P[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[3]~3_combout\ = \AddnSub~input_o\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Add|P[3]~3_combout\);

-- Location: LCCOMB_X56_Y49_N0
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = (\Add|P\(2) & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(2),
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X56_Y49_N10
\Add|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(1) = (\A[1]~input_o\ & (\AddnSub~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Add|G\(1));

-- Location: LCCOMB_X56_Y49_N12
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = (\A[2]~input_o\ & ((\Add|G\(1)) # (\AddnSub~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\Add|G\(1) & (\AddnSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	datad => \Add|G\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X56_Y49_N6
\Add|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(3) = \Add|P[3]~3_combout\ $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) # ((\Add|P\(1) & \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P[3]~3_combout\,
	datab => \Add|P\(1),
	datac => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\,
	combout => \Add|S\(3));

-- Location: LCCOMB_X61_Y51_N12
\Shift|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

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
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X61_Y51_N6
\Shift|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = (\Shift|ShiftLeft0~25_combout\) # ((\Shift|ShiftLeft0~19_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~25_combout\,
	datab => \Shift|ShiftLeft0~19_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X61_Y48_N28
\Shift|ShiftLeft0~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~280_combout\ = (!\B[4]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~280_combout\);

-- Location: LCCOMB_X57_Y48_N22
\Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = (\Mux60~5_combout\ & (((\Add|S\(3))) # (!\Mux61~0_combout\))) # (!\Mux60~5_combout\ & (\Mux61~0_combout\ & ((\Shift|ShiftLeft0~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~5_combout\,
	datab => \Mux61~0_combout\,
	datac => \Add|S\(3),
	datad => \Shift|ShiftLeft0~280_combout\,
	combout => \Mux60~6_combout\);

-- Location: LCCOMB_X57_Y48_N0
\Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux60~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux60~6_combout\,
	combout => \Mux60~7_combout\);

-- Location: LCCOMB_X57_Y54_N8
\Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = (\B[4]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[4]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux59~4_combout\);

-- Location: LCCOMB_X57_Y49_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X61_Y51_N24
\Shift|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X61_Y51_N10
\Shift|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X61_Y51_N20
\Shift|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = (\Shift|ShiftLeft0~28_combout\) # ((!\B[0]~input_o\ & \Shift|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~28_combout\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X59_Y47_N24
\Shift|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~27_combout\ & (\A[0]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~27_combout\,
	datac => \A[0]~input_o\,
	datad => \Shift|ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X60_Y50_N24
\Shift|ShiftRight0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~132_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~26_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~26_combout\,
	combout => \Shift|ShiftRight0~132_combout\);

-- Location: LCCOMB_X56_Y50_N26
\Shift|ShiftRight1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~81_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[63]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight0~23_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~81_combout\);

-- Location: LCCOMB_X60_Y50_N28
\Shift|ShiftRight0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~130_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~20_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~20_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~67_combout\,
	combout => \Shift|ShiftRight0~130_combout\);

-- Location: LCCOMB_X60_Y50_N6
\Shift|ShiftRight0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~131_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~130_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~64_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~130_combout\,
	combout => \Shift|ShiftRight0~131_combout\);

-- Location: LCCOMB_X56_Y50_N4
\Shift|ShiftRight1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~82_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~132_combout\) # ((\Shift|ShiftRight1~81_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~132_combout\,
	datac => \Shift|ShiftRight1~81_combout\,
	datad => \Shift|ShiftRight0~131_combout\,
	combout => \Shift|ShiftRight1~82_combout\);

-- Location: LCCOMB_X55_Y46_N20
\Shift|ShiftRight0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~127_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~70_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~70_combout\,
	datac => \Shift|ShiftRight0~31_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~127_combout\);

-- Location: LCCOMB_X55_Y46_N14
\Shift|ShiftRight0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~128_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~34_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~38_combout\,
	datac => \Shift|ShiftRight0~34_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~128_combout\);

-- Location: LCCOMB_X55_Y46_N16
\Shift|ShiftRight0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~129_combout\ = (\Shift|ShiftRight0~127_combout\) # ((\Shift|ShiftRight0~128_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~127_combout\,
	datac => \Shift|ShiftRight0~128_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~129_combout\);

-- Location: LCCOMB_X61_Y50_N22
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X55_Y45_N24
\Shift|ShiftRight0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~126_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~41_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~52_combout\,
	datad => \Shift|ShiftRight0~41_combout\,
	combout => \Shift|ShiftRight0~126_combout\);

-- Location: LCCOMB_X60_Y50_N18
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X58_Y49_N16
\Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~5_combout\ = (\Mux57~1_combout\ & (((\Mux57~0_combout\)))) # (!\Mux57~1_combout\ & ((\Mux57~0_combout\ & (\Shift|ShiftRight0~126_combout\)) # (!\Mux57~0_combout\ & ((\Shift|ShiftRight0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~126_combout\,
	datab => \Mux57~1_combout\,
	datac => \Shift|ShiftRight0~48_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux59~5_combout\);

-- Location: LCCOMB_X57_Y49_N20
\Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~6_combout\ = (\Mux57~1_combout\ & ((\Mux59~5_combout\ & (\Shift|ShiftRight0~129_combout\)) # (!\Mux59~5_combout\ & ((\Shift|ShiftRight0~55_combout\))))) # (!\Mux57~1_combout\ & (((\Mux59~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~129_combout\,
	datab => \Shift|ShiftRight0~55_combout\,
	datac => \Mux57~1_combout\,
	datad => \Mux59~5_combout\,
	combout => \Mux59~6_combout\);

-- Location: LCCOMB_X57_Y49_N14
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X59_Y48_N16
\Shift|ShiftRight0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~133_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~133_combout\);

-- Location: LCCOMB_X61_Y50_N8
\Shift|ShiftRight0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~134_combout\ = (\Shift|ShiftRight0~133_combout\ & ((\Shift|ShiftRight0~22_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~133_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftRight0~22_combout\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight0~134_combout\);

-- Location: LCCOMB_X56_Y50_N0
\Shift|ShiftRight0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~135_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~132_combout\) # ((\Shift|ShiftRight0~134_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~132_combout\,
	datac => \Shift|ShiftRight0~134_combout\,
	datad => \Shift|ShiftRight0~131_combout\,
	combout => \Shift|ShiftRight0~135_combout\);

-- Location: LCCOMB_X57_Y49_N8
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\B[5]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X55_Y49_N14
\Add|block_carry_in[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~51_combout\ = (\Add|block_carry_in[1]~25_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datab => \Add|block_carry_in[1]~25_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[1]~51_combout\);

-- Location: LCCOMB_X56_Y52_N28
\Add|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(4) = \AddnSub~input_o\ $ (\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Add|block_carry_in[1]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|block_carry_in[1]~51_combout\,
	combout => \Add|S\(4));

-- Location: LCCOMB_X57_Y49_N2
\Mux59~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~7_combout\ = (\Mux57~2_combout\ & (((\Mux57~3_combout\)))) # (!\Mux57~2_combout\ & ((\Mux57~3_combout\ & (\Shift|ShiftRight0~135_combout\)) # (!\Mux57~3_combout\ & ((\Add|S\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~135_combout\,
	datab => \Mux57~2_combout\,
	datac => \Mux57~3_combout\,
	datad => \Add|S\(4),
	combout => \Mux59~7_combout\);

-- Location: LCCOMB_X57_Y49_N12
\Mux59~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~8_combout\ = (\Mux57~2_combout\ & ((\Mux59~7_combout\ & (\Shift|ShiftRight1~82_combout\)) # (!\Mux59~7_combout\ & ((\Mux59~6_combout\))))) # (!\Mux57~2_combout\ & (((\Mux59~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~82_combout\,
	datab => \Mux59~6_combout\,
	datac => \Mux57~2_combout\,
	datad => \Mux59~7_combout\,
	combout => \Mux59~8_combout\);

-- Location: LCCOMB_X57_Y54_N6
\Mux59~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~11_combout\ = (!\B[5]~input_o\ & (!\Mux57~0_combout\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux59~11_combout\);

-- Location: LCCOMB_X57_Y54_N2
\Mux59~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~9_combout\ = (\Mux6~0_combout\ & (\Shift|ShiftLeft0~31_combout\ & ((\Mux59~11_combout\)))) # (!\Mux6~0_combout\ & ((\Mux59~8_combout\) # ((\Shift|ShiftLeft0~31_combout\ & \Mux59~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Shift|ShiftLeft0~31_combout\,
	datac => \Mux59~8_combout\,
	datad => \Mux59~11_combout\,
	combout => \Mux59~9_combout\);

-- Location: LCCOMB_X57_Y54_N28
\Mux59~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~10_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux59~4_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux59~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~4_combout\,
	datab => \Mux59~9_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux59~10_combout\);

-- Location: LCCOMB_X61_Y51_N30
\Shift|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X61_Y51_N0
\Shift|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~29_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~32_combout\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X61_Y51_N18
\Shift|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\Shift|ShiftLeft0~19_combout\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~19_combout\,
	datad => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X56_Y52_N30
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~51_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~51_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|block_carry_in[1]~51_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\Add|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(5) = \A[5]~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add|S\(5));

-- Location: LCCOMB_X53_Y45_N24
\Shift|ShiftRight0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~141_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~87_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~79_combout\,
	datad => \Shift|ShiftRight0~87_combout\,
	combout => \Shift|ShiftRight0~141_combout\);

-- Location: LCCOMB_X53_Y45_N18
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux57~1_combout\ & (\Mux57~0_combout\)) # (!\Mux57~1_combout\ & ((\Mux57~0_combout\ & ((\Shift|ShiftRight0~141_combout\))) # (!\Mux57~0_combout\ & (\Shift|ShiftRight0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Mux57~0_combout\,
	datac => \Shift|ShiftRight0~77_combout\,
	datad => \Shift|ShiftRight0~141_combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X53_Y47_N0
\Shift|ShiftRight0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~143_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~84_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~86_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~84_combout\,
	combout => \Shift|ShiftRight0~143_combout\);

-- Location: LCCOMB_X53_Y47_N6
\Shift|ShiftRight0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~142_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~94_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~94_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~83_combout\,
	combout => \Shift|ShiftRight0~142_combout\);

-- Location: LCCOMB_X53_Y47_N10
\Shift|ShiftRight0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~144_combout\ = (\Shift|ShiftRight0~142_combout\) # ((\Shift|ShiftRight0~143_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~143_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~142_combout\,
	combout => \Shift|ShiftRight0~144_combout\);

-- Location: LCCOMB_X53_Y45_N4
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux58~1_combout\ & (((\Shift|ShiftRight0~144_combout\) # (!\Mux57~1_combout\)))) # (!\Mux58~1_combout\ & (\Shift|ShiftRight0~80_combout\ & (\Mux57~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~80_combout\,
	datab => \Mux58~1_combout\,
	datac => \Mux57~1_combout\,
	datad => \Shift|ShiftRight0~144_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X53_Y50_N10
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux57~2_combout\ & (((\Mux58~2_combout\) # (\Mux57~3_combout\)))) # (!\Mux57~2_combout\ & (\Add|S\(5) & ((!\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(5),
	datab => \Mux57~2_combout\,
	datac => \Mux58~2_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X53_Y47_N2
\Shift|ShiftRight0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~138_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~98_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~93_combout\,
	datab => \Shift|ShiftRight0~98_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~138_combout\);

-- Location: LCCOMB_X53_Y47_N4
\Shift|ShiftRight0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~139_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~138_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~92_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~138_combout\,
	combout => \Shift|ShiftRight0~139_combout\);

-- Location: LCCOMB_X54_Y47_N14
\Shift|ShiftRight0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~136_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~101_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~97_combout\,
	datab => \Shift|ShiftRight0~101_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~136_combout\);

-- Location: LCCOMB_X54_Y47_N16
\Shift|ShiftRight0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~137_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~136_combout\) # ((\Shift|ShiftRight0~133_combout\ & \Shift|ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~133_combout\,
	datac => \Shift|ShiftRight0~136_combout\,
	datad => \Shift|ShiftRight0~100_combout\,
	combout => \Shift|ShiftRight0~137_combout\);

-- Location: LCCOMB_X53_Y50_N0
\Shift|ShiftRight0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~140_combout\ = (\Shift|ShiftRight0~137_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~139_combout\,
	datad => \Shift|ShiftRight0~137_combout\,
	combout => \Shift|ShiftRight0~140_combout\);

-- Location: LCCOMB_X54_Y47_N10
\Shift|ShiftRight1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~83_combout\ = (\B[2]~input_o\ & (((\A[63]~input_o\)))) # (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[63]~input_o\))) # (!\B[1]~input_o\ & (\Shift|ShiftRight1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~25_combout\,
	datac => \B[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~83_combout\);

-- Location: LCCOMB_X54_Y47_N4
\Shift|ShiftRight1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~84_combout\ = (\Shift|ShiftRight0~136_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight1~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~136_combout\,
	datad => \Shift|ShiftRight1~83_combout\,
	combout => \Shift|ShiftRight1~84_combout\);

-- Location: LCCOMB_X53_Y50_N4
\Shift|ShiftRight1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~85_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~84_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~139_combout\,
	datad => \Shift|ShiftRight1~84_combout\,
	combout => \Shift|ShiftRight1~85_combout\);

-- Location: LCCOMB_X53_Y50_N14
\Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (\Mux58~3_combout\ & (((\Shift|ShiftRight1~85_combout\) # (!\Mux57~3_combout\)))) # (!\Mux58~3_combout\ & (\Shift|ShiftRight0~140_combout\ & ((\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Shift|ShiftRight0~140_combout\,
	datac => \Shift|ShiftRight1~85_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X57_Y54_N0
\Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (\Mux6~0_combout\ & (\Shift|ShiftLeft0~34_combout\ & ((\Mux59~11_combout\)))) # (!\Mux6~0_combout\ & ((\Mux58~4_combout\) # ((\Shift|ShiftLeft0~34_combout\ & \Mux59~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Shift|ShiftLeft0~34_combout\,
	datac => \Mux58~4_combout\,
	datad => \Mux59~11_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X57_Y54_N14
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\B[5]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[5]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X57_Y54_N18
\Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux58~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux58~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux58~5_combout\,
	datac => \Mux58~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux58~6_combout\);

-- Location: LCCOMB_X57_Y54_N12
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[6]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X56_Y52_N8
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(4) & ((\A[5]~input_o\) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\Add|G\(4) & (\A[5]~input_o\ & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(4),
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X56_Y52_N26
\Add|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(6) = \Add|P\(6) $ (((\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[1]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[1]~51_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|P\(6),
	combout => \Add|S\(6));

-- Location: LCCOMB_X58_Y51_N12
\Shift|ShiftRight0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~151_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~50_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~44_combout\,
	datad => \Shift|ShiftRight1~50_combout\,
	combout => \Shift|ShiftRight0~151_combout\);

-- Location: LCCOMB_X58_Y51_N30
\Shift|ShiftRight0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~152_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~151_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~151_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~107_combout\,
	combout => \Shift|ShiftRight0~152_combout\);

-- Location: LCCOMB_X58_Y51_N18
\Shift|ShiftRight0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~149_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight1~52_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~48_combout\))))

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
	combout => \Shift|ShiftRight0~149_combout\);

-- Location: LCCOMB_X61_Y50_N10
\Shift|ShiftRight0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~150_combout\ = (\Shift|ShiftRight0~149_combout\) # ((\Shift|ShiftRight0~133_combout\ & (!\B[1]~input_o\ & \Shift|ShiftRight1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~133_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftRight1~8_combout\,
	datad => \Shift|ShiftRight0~149_combout\,
	combout => \Shift|ShiftRight0~150_combout\);

-- Location: LCCOMB_X57_Y50_N0
\Shift|ShiftRight0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~153_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~150_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~152_combout\,
	datad => \Shift|ShiftRight0~150_combout\,
	combout => \Shift|ShiftRight0~153_combout\);

-- Location: LCCOMB_X57_Y49_N6
\Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~7_combout\ = (\Mux57~3_combout\ & (((\Mux57~2_combout\) # (\Shift|ShiftRight0~153_combout\)))) # (!\Mux57~3_combout\ & (\Add|S\(6) & (!\Mux57~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~3_combout\,
	datab => \Add|S\(6),
	datac => \Mux57~2_combout\,
	datad => \Shift|ShiftRight0~153_combout\,
	combout => \Mux57~7_combout\);

-- Location: LCCOMB_X59_Y45_N2
\Shift|ShiftRight1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~86_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~18_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~18_combout\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~18_combout\,
	datab => \A[63]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Shift|ShiftRight1~86_combout\);

-- Location: LCCOMB_X57_Y50_N2
\Shift|ShiftRight1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~87_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~86_combout\) # ((\Shift|ShiftRight0~149_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~86_combout\,
	datab => \Shift|ShiftRight0~152_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~149_combout\,
	combout => \Shift|ShiftRight1~87_combout\);

-- Location: LCCOMB_X55_Y47_N8
\Shift|ShiftRight0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~147_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~34_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~34_combout\,
	datac => \Shift|ShiftRight1~36_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~147_combout\);

-- Location: LCCOMB_X58_Y51_N8
\Shift|ShiftRight0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~146_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight1~46_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~32_combout\,
	datad => \Shift|ShiftRight1~46_combout\,
	combout => \Shift|ShiftRight0~146_combout\);

-- Location: LCCOMB_X55_Y47_N26
\Shift|ShiftRight0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~148_combout\ = (\Shift|ShiftRight0~146_combout\) # ((\Shift|ShiftRight0~147_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~147_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~146_combout\,
	combout => \Shift|ShiftRight0~148_combout\);

-- Location: LCCOMB_X55_Y46_N18
\Shift|ShiftRight0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~145_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~38_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~38_combout\,
	datab => \Shift|ShiftRight1~57_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~145_combout\);

-- Location: LCCOMB_X58_Y49_N2
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\Mux57~0_combout\ & ((\Shift|ShiftRight0~145_combout\) # ((\Mux57~1_combout\)))) # (!\Mux57~0_combout\ & (((!\Mux57~1_combout\ & \Shift|ShiftRight1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Shift|ShiftRight0~145_combout\,
	datac => \Mux57~1_combout\,
	datad => \Shift|ShiftRight1~55_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X58_Y49_N28
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\Mux57~1_combout\ & ((\Mux57~5_combout\ & (\Shift|ShiftRight0~148_combout\)) # (!\Mux57~5_combout\ & ((\Shift|ShiftRight1~59_combout\))))) # (!\Mux57~1_combout\ & (((\Mux57~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~148_combout\,
	datab => \Shift|ShiftRight1~59_combout\,
	datac => \Mux57~1_combout\,
	datad => \Mux57~5_combout\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X57_Y49_N0
\Mux57~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~8_combout\ = (\Mux57~7_combout\ & ((\Shift|ShiftRight1~87_combout\) # ((!\Mux57~2_combout\)))) # (!\Mux57~7_combout\ & (((\Mux57~2_combout\ & \Mux57~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~7_combout\,
	datab => \Shift|ShiftRight1~87_combout\,
	datac => \Mux57~2_combout\,
	datad => \Mux57~6_combout\,
	combout => \Mux57~8_combout\);

-- Location: LCCOMB_X61_Y49_N2
\Shift|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X61_Y51_N28
\Shift|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~32_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~35_combout\,
	datac => \Shift|ShiftLeft0~32_combout\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X56_Y48_N24
\Shift|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~23_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X57_Y54_N22
\Mux57~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~9_combout\ = (\Mux6~0_combout\ & (((\Shift|ShiftLeft0~37_combout\ & \Mux59~11_combout\)))) # (!\Mux6~0_combout\ & ((\Mux57~8_combout\) # ((\Shift|ShiftLeft0~37_combout\ & \Mux59~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux57~8_combout\,
	datac => \Shift|ShiftLeft0~37_combout\,
	datad => \Mux59~11_combout\,
	combout => \Mux57~9_combout\);

-- Location: LCCOMB_X57_Y54_N16
\Mux57~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~10_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux57~4_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux57~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux57~9_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux57~10_combout\);

-- Location: LCCOMB_X57_Y54_N10
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\B[7]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[7]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X56_Y46_N0
\Add|G[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(5) = (\A[5]~input_o\ & (\AddnSub~input_o\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add|G\(5));

-- Location: LCCOMB_X56_Y52_N4
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = (\Add|G\(5) & ((\A[6]~input_o\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\Add|G\(5) & (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(5),
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X56_Y52_N22
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~51_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~51_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|block_carry_in[1]~51_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X56_Y52_N0
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # ((\Add|P\(6) & (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & \Add|P\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(5),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X56_Y52_N18
\Add|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(7) = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(7));

-- Location: LCCOMB_X59_Y46_N26
\Shift|ShiftRight0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~160_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~71_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~71_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~64_combout\,
	combout => \Shift|ShiftRight0~160_combout\);

-- Location: LCCOMB_X59_Y46_N4
\Shift|ShiftRight0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~161_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~65_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~66_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~65_combout\,
	combout => \Shift|ShiftRight0~161_combout\);

-- Location: LCCOMB_X59_Y46_N22
\Shift|ShiftRight0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~162_combout\ = (\Shift|ShiftRight0~160_combout\) # ((\Shift|ShiftRight0~161_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~160_combout\,
	datab => \Shift|ShiftRight0~161_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~162_combout\);

-- Location: LCCOMB_X58_Y46_N4
\Shift|ShiftRight0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~159_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~67_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~77_combout\,
	datab => \Shift|ShiftRight1~67_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~159_combout\);

-- Location: LCCOMB_X57_Y49_N18
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux57~1_combout\ & (((\Mux57~0_combout\)))) # (!\Mux57~1_combout\ & ((\Mux57~0_combout\ & ((\Shift|ShiftRight0~159_combout\))) # (!\Mux57~0_combout\ & (\Shift|ShiftRight1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Shift|ShiftRight1~76_combout\,
	datac => \Shift|ShiftRight0~159_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X57_Y49_N4
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux57~1_combout\ & ((\Mux56~1_combout\ & ((\Shift|ShiftRight0~162_combout\))) # (!\Mux56~1_combout\ & (\Shift|ShiftRight1~78_combout\)))) # (!\Mux57~1_combout\ & (((\Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Shift|ShiftRight1~78_combout\,
	datac => \Shift|ShiftRight0~162_combout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X57_Y49_N22
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux57~2_combout\ & (((\Mux56~2_combout\) # (\Mux57~3_combout\)))) # (!\Mux57~2_combout\ & (\Add|S\(7) & ((!\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(7),
	datab => \Mux56~2_combout\,
	datac => \Mux57~2_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X59_Y47_N20
\Shift|ShiftRight0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~156_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~73_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~73_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~70_combout\,
	combout => \Shift|ShiftRight0~156_combout\);

-- Location: LCCOMB_X59_Y46_N8
\Shift|ShiftRight0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~157_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~156_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~118_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~156_combout\,
	combout => \Shift|ShiftRight0~157_combout\);

-- Location: LCCOMB_X59_Y47_N10
\Shift|ShiftRight0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~154_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~75_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~75_combout\,
	datad => \Shift|ShiftRight1~72_combout\,
	combout => \Shift|ShiftRight0~154_combout\);

-- Location: LCCOMB_X60_Y46_N16
\Shift|ShiftRight0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~155_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\ & (!\Shift|ShiftLeft0~18_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftLeft0~18_combout\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight0~155_combout\);

-- Location: LCCOMB_X60_Y46_N2
\Shift|ShiftRight0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~158_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~155_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~157_combout\,
	datab => \Shift|ShiftRight0~155_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~158_combout\);

-- Location: LCCOMB_X60_Y46_N20
\Shift|ShiftRight1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~88_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~154_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight1~88_combout\);

-- Location: LCCOMB_X60_Y46_N6
\Shift|ShiftRight1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~89_combout\ = (\Shift|ShiftRight1~88_combout\) # ((\Shift|ShiftRight0~157_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~157_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~88_combout\,
	combout => \Shift|ShiftRight1~89_combout\);

-- Location: LCCOMB_X57_Y49_N24
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\Mux56~3_combout\ & (((\Shift|ShiftRight1~89_combout\) # (!\Mux57~3_combout\)))) # (!\Mux56~3_combout\ & (\Shift|ShiftRight0~158_combout\ & (\Mux57~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \Shift|ShiftRight0~158_combout\,
	datac => \Mux57~3_combout\,
	datad => \Shift|ShiftRight1~89_combout\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X61_Y49_N4
\Shift|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X61_Y49_N30
\Shift|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~38_combout\,
	datad => \Shift|ShiftLeft0~35_combout\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X61_Y48_N0
\Shift|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~39_combout\,
	datad => \Shift|ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X57_Y54_N20
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\Mux6~0_combout\ & (((\Shift|ShiftLeft0~40_combout\ & \Mux59~11_combout\)))) # (!\Mux6~0_combout\ & ((\Mux56~4_combout\) # ((\Shift|ShiftLeft0~40_combout\ & \Mux59~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux56~4_combout\,
	datac => \Shift|ShiftLeft0~40_combout\,
	datad => \Mux59~11_combout\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X57_Y54_N30
\Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux56~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux56~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux56~5_combout\,
	combout => \Mux56~6_combout\);

-- Location: LCCOMB_X60_Y50_N10
\Shift|ShiftRight0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~163_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~17_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~60_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~17_combout\,
	combout => \Shift|ShiftRight0~163_combout\);

-- Location: LCCOMB_X60_Y50_N20
\Shift|ShiftRight0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~164_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~163_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~163_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~130_combout\,
	combout => \Shift|ShiftRight0~164_combout\);

-- Location: LCCOMB_X54_Y46_N24
\Shift|ShiftRight1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~90_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~27_combout\,
	datab => \A[63]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~90_combout\);

-- Location: LCCOMB_X54_Y46_N10
\Shift|ShiftRight1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~91_combout\ = (\Shift|ShiftRight1~90_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~164_combout\,
	datad => \Shift|ShiftRight1~90_combout\,
	combout => \Shift|ShiftRight1~91_combout\);

-- Location: LCCOMB_X55_Y52_N16
\Add|S[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(8) = \A[8]~input_o\ $ (\AddnSub~input_o\ $ (\Add|block_carry_in[2]~67_combout\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[2]~67_combout\,
	datad => \B[8]~input_o\,
	combout => \Add|S\(8));

-- Location: LCCOMB_X54_Y50_N26
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (!\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X55_Y50_N10
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X61_Y49_N24
\Shift|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X61_Y49_N18
\Shift|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~38_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~38_combout\,
	datad => \Shift|ShiftLeft0~41_combout\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X59_Y47_N22
\Shift|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~30_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~42_combout\,
	datad => \Shift|ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X59_Y47_N8
\Shift|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = (!\B[1]~input_o\ & (\A[0]~input_o\ & (!\B[2]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X59_Y47_N18
\Shift|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~43_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~43_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~44_combout\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X54_Y46_N16
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & ((\Shift|ShiftLeft0~45_combout\))) # (!\Mux49~3_combout\ & (\Add|S\(8))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(8),
	datab => \Mux49~2_combout\,
	datac => \Mux49~3_combout\,
	datad => \Shift|ShiftLeft0~45_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X60_Y50_N14
\Shift|ShiftRight0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~167_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~63_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~31_combout\,
	datac => \Shift|ShiftRight0~63_combout\,
	combout => \Shift|ShiftRight0~167_combout\);

-- Location: LCCOMB_X55_Y46_N4
\Shift|ShiftRight0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~166_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~70_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~70_combout\,
	datac => \Shift|ShiftRight0~34_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~166_combout\);

-- Location: LCCOMB_X55_Y46_N30
\Shift|ShiftRight0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~168_combout\ = (\Shift|ShiftRight0~166_combout\) # ((\Shift|ShiftRight0~167_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~167_combout\,
	datac => \Shift|ShiftRight0~166_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~168_combout\);

-- Location: LCCOMB_X56_Y47_N18
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X54_Y46_N28
\Shift|ShiftRight0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~214_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight0~27_combout\ & ((!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~27_combout\,
	datab => \Shift|ShiftRight0~164_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~214_combout\);

-- Location: LCCOMB_X60_Y48_N16
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\B[4]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X54_Y46_N4
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux49~1_combout\ & ((\Shift|ShiftRight0~214_combout\) # ((\Mux49~0_combout\)))) # (!\Mux49~1_combout\ & (((\Shift|ShiftRight0~56_combout\ & !\Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~214_combout\,
	datab => \Shift|ShiftRight0~56_combout\,
	datac => \Mux49~1_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X54_Y46_N30
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux49~0_combout\ & ((\Mux55~1_combout\ & (\Shift|ShiftRight0~168_combout\)) # (!\Mux55~1_combout\ & ((\Shift|ShiftRight0~42_combout\))))) # (!\Mux49~0_combout\ & (((\Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~168_combout\,
	datab => \Mux49~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \Shift|ShiftRight0~42_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X54_Y46_N18
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\Mux55~3_combout\ & (((\Mux55~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux55~3_combout\ & (\Shift|ShiftRight1~91_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~91_combout\,
	datab => \Mux55~3_combout\,
	datac => \Mux55~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X55_Y52_N30
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\B[8]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[8]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X56_Y45_N4
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux55~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux55~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~4_combout\,
	datab => \Mux55~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X54_Y50_N28
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\B[9]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[9]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X54_Y47_N22
\Shift|ShiftRight0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~169_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~97_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~90_combout\,
	datac => \Shift|ShiftRight0~97_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~169_combout\);

-- Location: LCCOMB_X53_Y47_N20
\Shift|ShiftRight0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~170_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~169_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~138_combout\,
	datad => \Shift|ShiftRight0~169_combout\,
	combout => \Shift|ShiftRight0~170_combout\);

-- Location: LCCOMB_X60_Y46_N0
\Shift|ShiftRight0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~165_combout\ = (!\B[3]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~165_combout\);

-- Location: LCCOMB_X54_Y47_N0
\Shift|ShiftRight0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~171_combout\ = (\Shift|ShiftRight0~165_combout\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~100_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~165_combout\,
	datab => \Shift|ShiftRight0~100_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~101_combout\,
	combout => \Shift|ShiftRight0~171_combout\);

-- Location: LCCOMB_X53_Y46_N10
\Shift|ShiftRight0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~172_combout\ = (\Shift|ShiftRight0~171_combout\) # ((\Shift|ShiftRight0~170_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~170_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~171_combout\,
	combout => \Shift|ShiftRight0~172_combout\);

-- Location: LCCOMB_X53_Y46_N12
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\Mux49~1_combout\ & ((\Shift|ShiftRight0~172_combout\) # ((\Mux49~0_combout\)))) # (!\Mux49~1_combout\ & (((\Shift|ShiftRight0~81_combout\ & !\Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~172_combout\,
	datab => \Shift|ShiftRight0~81_combout\,
	datac => \Mux49~1_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X53_Y47_N30
\Shift|ShiftRight0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~173_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~94_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~94_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~84_combout\,
	combout => \Shift|ShiftRight0~173_combout\);

-- Location: LCCOMB_X53_Y47_N24
\Shift|ShiftRight0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~174_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~91_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~91_combout\,
	datad => \Shift|ShiftRight0~83_combout\,
	combout => \Shift|ShiftRight0~174_combout\);

-- Location: LCCOMB_X53_Y47_N26
\Shift|ShiftRight0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~175_combout\ = (\Shift|ShiftRight0~173_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~173_combout\,
	datad => \Shift|ShiftRight0~174_combout\,
	combout => \Shift|ShiftRight0~175_combout\);

-- Location: LCCOMB_X53_Y46_N14
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux54~1_combout\ & (((\Shift|ShiftRight0~175_combout\)) # (!\Mux49~0_combout\))) # (!\Mux54~1_combout\ & (\Mux49~0_combout\ & (\Shift|ShiftRight0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Mux49~0_combout\,
	datac => \Shift|ShiftRight0~88_combout\,
	datad => \Shift|ShiftRight0~175_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X56_Y47_N4
\Shift|ShiftRight1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~92_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~28_combout\,
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~92_combout\);

-- Location: LCCOMB_X53_Y46_N16
\Shift|ShiftRight1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~93_combout\ = (\Shift|ShiftRight1~92_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight1~92_combout\,
	datad => \Shift|ShiftRight0~170_combout\,
	combout => \Shift|ShiftRight1~93_combout\);

-- Location: LCCOMB_X61_Y49_N28
\Shift|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~46_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X61_Y49_N22
\Shift|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~47_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~41_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~46_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~41_combout\,
	combout => \Shift|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X61_Y51_N14
\Shift|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~48_combout\ = (\B[3]~input_o\ & (!\B[1]~input_o\ & (\Shift|ShiftLeft0~19_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~19_combout\,
	datad => \Shift|ShiftLeft0~47_combout\,
	combout => \Shift|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X61_Y51_N16
\Shift|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~49_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~33_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~48_combout\,
	datad => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X60_Y49_N6
\Shift|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~50_combout\ = (!\B[4]~input_o\ & \Shift|ShiftLeft0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~49_combout\,
	combout => \Shift|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X55_Y52_N26
\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~67_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~67_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[2]~67_combout\,
	datad => \B[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X54_Y50_N14
\Add|S[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(9) = \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ $ (\A[9]~input_o\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\,
	datab => \A[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|S\(9));

-- Location: LCCOMB_X54_Y50_N6
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & (\Shift|ShiftLeft0~50_combout\)) # (!\Mux49~3_combout\ & ((\Add|S\(9)))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~2_combout\,
	datab => \Shift|ShiftLeft0~50_combout\,
	datac => \Add|S\(9),
	datad => \Mux49~3_combout\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X54_Y50_N0
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux54~3_combout\ & (\Mux54~2_combout\)) # (!\Mux54~3_combout\ & ((\Shift|ShiftRight1~93_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftRight1~93_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux54~3_combout\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X54_Y50_N2
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux54~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux54~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux54~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux54~4_combout\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Shift|ShiftRight0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~176_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~48_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~48_combout\,
	datad => \Shift|ShiftRight1~40_combout\,
	combout => \Shift|ShiftRight0~176_combout\);

-- Location: LCCOMB_X58_Y51_N2
\Shift|ShiftRight0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~177_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~176_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~151_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~176_combout\,
	combout => \Shift|ShiftRight0~177_combout\);

-- Location: LCCOMB_X58_Y52_N0
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

-- Location: LCCOMB_X58_Y52_N10
\Shift|ShiftRight1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~95_combout\ = (\Shift|ShiftRight1~94_combout\) # ((\Shift|ShiftRight0~177_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~177_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~94_combout\,
	combout => \Shift|ShiftRight1~95_combout\);

-- Location: LCCOMB_X55_Y52_N20
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = (\A[9]~input_o\ & ((\Add|G\(8)) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\Add|G\(8) & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|G\(8),
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X55_Y52_N14
\Add|S[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(10) = \Add|P\(10) $ (((\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(10),
	datac => \Add|block_carry_in[2]~67_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\,
	combout => \Add|S\(10));

-- Location: LCCOMB_X61_Y49_N16
\Shift|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~52_combout\ = (\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X61_Y49_N26
\Shift|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~53_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~46_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~52_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~46_combout\,
	combout => \Shift|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X56_Y48_N12
\Shift|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~54_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~23_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~53_combout\,
	combout => \Shift|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X56_Y48_N10
\Shift|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~51_combout\ = (!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X56_Y48_N22
\Shift|ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~55_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~54_combout\) # (\Shift|ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~54_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~51_combout\,
	combout => \Shift|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X55_Y48_N8
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux49~3_combout\ & (\Mux49~2_combout\ & ((\Shift|ShiftLeft0~55_combout\)))) # (!\Mux49~3_combout\ & (((\Add|S\(10))) # (!\Mux49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~3_combout\,
	datab => \Mux49~2_combout\,
	datac => \Add|S\(10),
	datad => \Shift|ShiftLeft0~55_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X58_Y52_N26
\Shift|ShiftRight0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~215_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftRight0~111_combout\))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~111_combout\,
	datad => \Shift|ShiftRight0~177_combout\,
	combout => \Shift|ShiftRight0~215_combout\);

-- Location: LCCOMB_X58_Y49_N14
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux49~0_combout\ & (((\Mux49~1_combout\)))) # (!\Mux49~0_combout\ & ((\Mux49~1_combout\ & ((\Shift|ShiftRight0~215_combout\))) # (!\Mux49~1_combout\ & (\Shift|ShiftRight0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Shift|ShiftRight0~114_combout\,
	datac => \Mux49~1_combout\,
	datad => \Shift|ShiftRight0~215_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X58_Y51_N14
\Shift|ShiftRight0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~179_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~42_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~32_combout\,
	datad => \Shift|ShiftRight1~42_combout\,
	combout => \Shift|ShiftRight0~179_combout\);

-- Location: LCCOMB_X58_Y51_N28
\Shift|ShiftRight0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~178_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight1~46_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~34_combout\,
	datad => \Shift|ShiftRight1~46_combout\,
	combout => \Shift|ShiftRight0~178_combout\);

-- Location: LCCOMB_X58_Y51_N16
\Shift|ShiftRight0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~180_combout\ = (\Shift|ShiftRight0~178_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~179_combout\,
	datad => \Shift|ShiftRight0~178_combout\,
	combout => \Shift|ShiftRight0~180_combout\);

-- Location: LCCOMB_X58_Y49_N24
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux49~0_combout\ & ((\Mux53~1_combout\ & ((\Shift|ShiftRight0~180_combout\))) # (!\Mux53~1_combout\ & (\Shift|ShiftRight0~105_combout\)))) # (!\Mux49~0_combout\ & (\Mux53~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux53~1_combout\,
	datac => \Shift|ShiftRight0~105_combout\,
	datad => \Shift|ShiftRight0~180_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X58_Y52_N12
\Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux53~3_combout\ & (((\Mux53~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux53~3_combout\ & (\Shift|ShiftRight1~95_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~95_combout\,
	datab => \Mux53~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux53~2_combout\,
	combout => \Mux53~4_combout\);

-- Location: LCCOMB_X57_Y54_N24
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\B[10]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[10]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

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
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X57_Y54_N26
\Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux53~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux53~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~5_combout\);

-- Location: LCCOMB_X55_Y52_N10
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~67_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~67_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[2]~67_combout\,
	datad => \B[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X54_Y50_N20
\Add|G[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(9) = (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|G\(9));

-- Location: LCCOMB_X55_Y52_N8
\Add|GEN_BLOCKS:2:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = (\A[10]~input_o\ & ((\Add|G\(9)) # (\B[10]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[10]~input_o\ & (\Add|G\(9) & (\B[10]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \Add|G\(9),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X55_Y52_N28
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ & (\Add|P\(10) & \Add|P\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\,
	datab => \Add|P\(10),
	datac => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\,
	datad => \Add|P\(9),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X55_Y53_N6
\Add|S[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(11) = \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ $ (\AddnSub~input_o\ $ (\B[11]~input_o\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Add|S\(11));

-- Location: LCCOMB_X61_Y49_N12
\Shift|ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~56_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X61_Y49_N6
\Shift|ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~57_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~52_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~56_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~52_combout\,
	combout => \Shift|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X61_Y48_N18
\Shift|ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~58_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~26_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~26_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~57_combout\,
	combout => \Shift|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X61_Y48_N20
\Shift|ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~59_combout\ = (\Shift|ShiftLeft0~58_combout\) # ((\Shift|ShiftLeft0~39_combout\ & (\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~39_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~58_combout\,
	combout => \Shift|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X55_Y48_N10
\Shift|ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~60_combout\ = (\Shift|ShiftLeft0~59_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ShiftLeft0~59_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X55_Y48_N20
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\Mux49~3_combout\ & (\Mux49~2_combout\ & ((\Shift|ShiftLeft0~60_combout\)))) # (!\Mux49~3_combout\ & (((\Add|S\(11))) # (!\Mux49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~3_combout\,
	datab => \Mux49~2_combout\,
	datac => \Add|S\(11),
	datad => \Shift|ShiftLeft0~60_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X58_Y46_N6
\Shift|ShiftRight1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~96_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~24_combout\ & ((\A[63]~input_o\))) # (!\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftRight1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~75_combout\,
	datab => \Shift|ShiftLeft0~24_combout\,
	datac => \A[63]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~96_combout\);

-- Location: LCCOMB_X59_Y47_N28
\Shift|ShiftRight0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~181_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight1~72_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~72_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~68_combout\,
	combout => \Shift|ShiftRight0~181_combout\);

-- Location: LCCOMB_X59_Y47_N30
\Shift|ShiftRight0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~182_combout\ = (\Shift|ShiftRight0~181_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~181_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~156_combout\,
	combout => \Shift|ShiftRight0~182_combout\);

-- Location: LCCOMB_X58_Y46_N24
\Shift|ShiftRight1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~97_combout\ = (\Shift|ShiftRight1~96_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~96_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~182_combout\,
	combout => \Shift|ShiftRight1~97_combout\);

-- Location: LCCOMB_X58_Y46_N30
\Shift|ShiftRight0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~216_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight0~122_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~122_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~182_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~216_combout\);

-- Location: LCCOMB_X58_Y46_N18
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux49~1_combout\ & ((\Shift|ShiftRight0~216_combout\) # ((\Mux49~0_combout\)))) # (!\Mux49~1_combout\ & (((!\Mux49~0_combout\ & \Shift|ShiftRight0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~216_combout\,
	datab => \Mux49~1_combout\,
	datac => \Mux49~0_combout\,
	datad => \Shift|ShiftRight0~125_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X59_Y46_N18
\Shift|ShiftRight0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~184_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~64_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~69_combout\,
	combout => \Shift|ShiftRight0~184_combout\);

-- Location: LCCOMB_X59_Y46_N24
\Shift|ShiftRight0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~183_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight1~71_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~65_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~71_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~183_combout\);

-- Location: LCCOMB_X58_Y46_N12
\Shift|ShiftRight0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~185_combout\ = (\Shift|ShiftRight0~183_combout\) # ((\Shift|ShiftRight0~184_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~184_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~183_combout\,
	combout => \Shift|ShiftRight0~185_combout\);

-- Location: LCCOMB_X58_Y46_N14
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux52~1_combout\ & (((\Shift|ShiftRight0~185_combout\) # (!\Mux49~0_combout\)))) # (!\Mux52~1_combout\ & (\Shift|ShiftRight0~116_combout\ & (\Mux49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~116_combout\,
	datab => \Mux52~1_combout\,
	datac => \Mux49~0_combout\,
	datad => \Shift|ShiftRight0~185_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X58_Y46_N8
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\Mux52~3_combout\ & (((\Mux52~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux52~3_combout\ & (\Shift|ShiftRight1~97_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \Shift|ShiftRight1~97_combout\,
	datac => \Mux52~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X55_Y53_N12
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X55_Y53_N16
\Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux52~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux52~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux52~0_combout\,
	combout => \Mux52~5_combout\);

-- Location: LCCOMB_X60_Y50_N16
\Shift|ShiftRight0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~186_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~26_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~20_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~26_combout\,
	combout => \Shift|ShiftRight0~186_combout\);

-- Location: LCCOMB_X60_Y50_N2
\Shift|ShiftRight0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~187_combout\ = (\Shift|ShiftRight0~186_combout\) # ((\Shift|ShiftRight0~163_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~163_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~186_combout\,
	combout => \Shift|ShiftRight0~187_combout\);

-- Location: LCCOMB_X57_Y46_N16
\Shift|ShiftRight0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~188_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight0~23_combout\ & ((!\Shift|ShiftLeft0~24_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~23_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~187_combout\,
	datad => \Shift|ShiftLeft0~24_combout\,
	combout => \Shift|ShiftRight0~188_combout\);

-- Location: LCCOMB_X58_Y49_N18
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux49~0_combout\ & (\Mux49~1_combout\)) # (!\Mux49~0_combout\ & ((\Mux49~1_combout\ & ((\Shift|ShiftRight0~188_combout\))) # (!\Mux49~1_combout\ & (\Shift|ShiftRight0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux49~1_combout\,
	datac => \Shift|ShiftRight0~126_combout\,
	datad => \Shift|ShiftRight0~188_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X60_Y50_N4
\Shift|ShiftRight0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~189_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~71_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~71_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~167_combout\,
	combout => \Shift|ShiftRight0~189_combout\);

-- Location: LCCOMB_X58_Y49_N20
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux49~0_combout\ & ((\Mux51~1_combout\ & (\Shift|ShiftRight0~189_combout\)) # (!\Mux51~1_combout\ & ((\Shift|ShiftRight0~128_combout\))))) # (!\Mux49~0_combout\ & (\Mux51~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux51~1_combout\,
	datac => \Shift|ShiftRight0~189_combout\,
	datad => \Shift|ShiftRight0~128_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X55_Y53_N4
\Add|S[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(12) = \B[12]~input_o\ $ (\AddnSub~input_o\ $ (\Add|block_carry_in[3]~65_combout\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[3]~65_combout\,
	datad => \A[12]~input_o\,
	combout => \Add|S\(12));

-- Location: LCCOMB_X63_Y48_N26
\Shift|ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~61_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X63_Y48_N4
\Shift|ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~62_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~56_combout\,
	datac => \Shift|ShiftLeft0~61_combout\,
	combout => \Shift|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X60_Y47_N16
\Shift|ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~63_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~42_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~42_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~62_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X56_Y50_N22
\Shift|ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~64_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~63_combout\) # ((\Shift|ShiftLeft0~31_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~31_combout\,
	datac => \Shift|ShiftLeft0~63_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X55_Y48_N6
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & ((\Shift|ShiftLeft0~64_combout\))) # (!\Mux49~3_combout\ & (\Add|S\(12))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(12),
	datab => \Mux49~2_combout\,
	datac => \Mux49~3_combout\,
	datad => \Shift|ShiftLeft0~64_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X57_Y46_N12
\Shift|ShiftRight1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~98_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~24_combout\ & ((\A[63]~input_o\))) # (!\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~23_combout\,
	datab => \Shift|ShiftLeft0~24_combout\,
	datac => \A[63]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~98_combout\);

-- Location: LCCOMB_X57_Y46_N30
\Shift|ShiftRight1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~99_combout\ = (\Shift|ShiftRight1~98_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~98_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~187_combout\,
	combout => \Shift|ShiftRight1~99_combout\);

-- Location: LCCOMB_X56_Y45_N22
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (\Mux51~3_combout\ & ((\Mux51~2_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux51~3_combout\ & (((\Shift|ShiftRight1~99_combout\ & \ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \Mux51~3_combout\,
	datac => \Shift|ShiftRight1~99_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X55_Y53_N10
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\B[12]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[12]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X55_Y53_N22
\Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux51~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux51~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux51~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~5_combout\);

-- Location: LCCOMB_X54_Y47_N26
\Shift|ShiftRight0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~190_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~101_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~98_combout\,
	datab => \Shift|ShiftRight0~101_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~190_combout\);

-- Location: LCCOMB_X54_Y47_N12
\Shift|ShiftRight0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~191_combout\ = (\Shift|ShiftRight0~190_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~169_combout\,
	datad => \Shift|ShiftRight0~190_combout\,
	combout => \Shift|ShiftRight0~191_combout\);

-- Location: LCCOMB_X54_Y47_N30
\Shift|ShiftRight0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~192_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~100_combout\ & !\Shift|ShiftLeft0~24_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~191_combout\,
	datab => \Shift|ShiftRight0~100_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~24_combout\,
	combout => \Shift|ShiftRight0~192_combout\);

-- Location: LCCOMB_X54_Y47_N24
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux49~1_combout\ & ((\Mux49~0_combout\) # ((\Shift|ShiftRight0~192_combout\)))) # (!\Mux49~1_combout\ & (!\Mux49~0_combout\ & ((\Shift|ShiftRight0~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Mux49~0_combout\,
	datac => \Shift|ShiftRight0~192_combout\,
	datad => \Shift|ShiftRight0~141_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X53_Y47_N28
\Shift|ShiftRight0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~193_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~95_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~95_combout\,
	datad => \Shift|ShiftRight0~174_combout\,
	combout => \Shift|ShiftRight0~193_combout\);

-- Location: LCCOMB_X53_Y47_N22
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux50~1_combout\ & ((\Shift|ShiftRight0~193_combout\) # ((!\Mux49~0_combout\)))) # (!\Mux50~1_combout\ & (((\Mux49~0_combout\ & \Shift|ShiftRight0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~1_combout\,
	datab => \Shift|ShiftRight0~193_combout\,
	datac => \Mux49~0_combout\,
	datad => \Shift|ShiftRight0~143_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X55_Y47_N20
\Shift|ShiftRight1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~100_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~20_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~20_combout\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~20_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight1~100_combout\);

-- Location: LCCOMB_X55_Y47_N6
\Shift|ShiftRight1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~101_combout\ = (\Shift|ShiftRight1~100_combout\) # ((\Shift|ShiftRight0~191_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~191_combout\,
	datab => \Shift|ShiftRight1~100_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~101_combout\);

-- Location: LCCOMB_X55_Y53_N26
\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[3]~65_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[3]~65_combout\ & (\A[12]~input_o\ & (\B[12]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[3]~65_combout\,
	datad => \A[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\Add|S[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(13) = \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|S\(13));

-- Location: LCCOMB_X63_Y48_N6
\Shift|ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~65_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X63_Y48_N0
\Shift|ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~66_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~61_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~61_combout\,
	datad => \Shift|ShiftLeft0~65_combout\,
	combout => \Shift|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Shift|ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~67_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~47_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~47_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~66_combout\,
	combout => \Shift|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X56_Y51_N16
\Shift|ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~68_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~67_combout\) # ((\Shift|ShiftLeft0~34_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~34_combout\,
	datab => \Shift|ShiftLeft0~67_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X54_Y50_N22
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & ((\Shift|ShiftLeft0~68_combout\))) # (!\Mux49~3_combout\ & (\Add|S\(13))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(13),
	datab => \Shift|ShiftLeft0~68_combout\,
	datac => \Mux49~2_combout\,
	datad => \Mux49~3_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X54_Y54_N0
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux50~3_combout\ & (\Mux50~2_combout\)) # (!\Mux50~3_combout\ & ((\Shift|ShiftRight1~101_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux50~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~2_combout\,
	datab => \Shift|ShiftRight1~101_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux50~3_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X55_Y53_N24
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\B[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux50~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux50~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X56_Y53_N18
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (\B[14]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[14]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X58_Y51_N26
\Shift|ShiftRight0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~194_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight1~52_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~52_combout\,
	datad => \Shift|ShiftRight1~50_combout\,
	combout => \Shift|ShiftRight0~194_combout\);

-- Location: LCCOMB_X58_Y51_N20
\Shift|ShiftRight0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~195_combout\ = (\Shift|ShiftRight0~194_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~194_combout\,
	datad => \Shift|ShiftRight0~176_combout\,
	combout => \Shift|ShiftRight0~195_combout\);

-- Location: LCCOMB_X59_Y45_N12
\Shift|ShiftRight1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~102_combout\ = (\Shift|ShiftLeft0~18_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~18_combout\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~18_combout\,
	datab => \A[63]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Shift|ShiftRight1~102_combout\);

-- Location: LCCOMB_X59_Y45_N22
\Shift|ShiftRight1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~103_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~102_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~195_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~102_combout\,
	combout => \Shift|ShiftRight1~103_combout\);

-- Location: LCCOMB_X56_Y53_N28
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(12) & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(12) & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(12),
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X56_Y53_N30
\Add|S[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(14) = \Add|P\(14) $ (((\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[3]~65_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~65_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	combout => \Add|S\(14));

-- Location: LCCOMB_X63_Y48_N10
\Shift|ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~69_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X63_Y48_N12
\Shift|ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~70_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~65_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~69_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~65_combout\,
	combout => \Shift|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X56_Y48_N16
\Shift|ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~71_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~53_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~53_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~70_combout\,
	combout => \Shift|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X56_Y48_N18
\Shift|ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~72_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~71_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~71_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~37_combout\,
	combout => \Shift|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X55_Y48_N24
\Mux49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~7_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & ((\Shift|ShiftLeft0~72_combout\))) # (!\Mux49~3_combout\ & (\Add|S\(14))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(14),
	datab => \Mux49~2_combout\,
	datac => \Mux49~3_combout\,
	datad => \Shift|ShiftLeft0~72_combout\,
	combout => \Mux49~7_combout\);

-- Location: LCCOMB_X58_Y51_N22
\Shift|ShiftRight0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~197_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~108_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~179_combout\,
	datac => \Shift|ShiftRight0~108_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~197_combout\);

-- Location: LCCOMB_X57_Y47_N2
\Shift|ShiftRight0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~196_combout\ = (\B[4]~input_o\ & (((!\Shift|ShiftLeft0~20_combout\ & \Shift|ShiftRight1~8_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~195_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~20_combout\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight0~196_combout\);

-- Location: LCCOMB_X52_Y50_N24
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\Mux49~0_combout\ & (((\Mux49~1_combout\)))) # (!\Mux49~0_combout\ & ((\Mux49~1_combout\ & (\Shift|ShiftRight0~196_combout\)) # (!\Mux49~1_combout\ & ((\Shift|ShiftRight0~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Shift|ShiftRight0~196_combout\,
	datac => \Shift|ShiftRight0~145_combout\,
	datad => \Mux49~1_combout\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X52_Y50_N2
\Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~6_combout\ = (\Mux49~0_combout\ & ((\Mux49~5_combout\ & (\Shift|ShiftRight0~197_combout\)) # (!\Mux49~5_combout\ & ((\Shift|ShiftRight0~147_combout\))))) # (!\Mux49~0_combout\ & (((\Mux49~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Shift|ShiftRight0~197_combout\,
	datac => \Shift|ShiftRight0~147_combout\,
	datad => \Mux49~5_combout\,
	combout => \Mux49~6_combout\);

-- Location: LCCOMB_X52_Y50_N28
\Mux49~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux49~7_combout\ & ((\Mux49~6_combout\))) # (!\Mux49~7_combout\ & (\Shift|ShiftRight1~103_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux49~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~103_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux49~7_combout\,
	datad => \Mux49~6_combout\,
	combout => \Mux49~8_combout\);

-- Location: LCCOMB_X52_Y50_N22
\Mux49~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~9_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux49~4_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux49~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux49~8_combout\,
	combout => \Mux49~9_combout\);

-- Location: LCCOMB_X55_Y45_N26
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\B[15]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[15]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X59_Y47_N16
\Shift|ShiftRight0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~198_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~73_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~73_combout\,
	datad => \Shift|ShiftRight1~68_combout\,
	combout => \Shift|ShiftRight0~198_combout\);

-- Location: LCCOMB_X60_Y46_N18
\Shift|ShiftRight1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~104_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~198_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~198_combout\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight1~104_combout\);

-- Location: LCCOMB_X60_Y46_N4
\Shift|ShiftRight1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~105_combout\ = (\Shift|ShiftRight1~104_combout\) # ((\B[4]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~104_combout\,
	combout => \Shift|ShiftRight1~105_combout\);

-- Location: LCCOMB_X56_Y53_N16
\Add|G[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(13) = (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Add|G\(13));

-- Location: LCCOMB_X56_Y53_N26
\Add|GEN_BLOCKS:3:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = (\A[14]~input_o\ & ((\Add|G\(13)) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\Add|G\(13) & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

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
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X55_Y53_N30
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[3]~65_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[3]~65_combout\ & (\A[12]~input_o\ & (\B[12]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[3]~65_combout\,
	datad => \A[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X56_Y53_N12
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) # ((\Add|P\(13) & (\Add|P\(14) & \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\,
	datab => \Add|P\(13),
	datac => \Add|P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X56_Y53_N14
\Add|S[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(15) = \AddnSub~input_o\ $ (\B[15]~input_o\ $ (\A[15]~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(15));

-- Location: LCCOMB_X63_Y48_N22
\Shift|ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~73_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X63_Y48_N8
\Shift|ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~74_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~69_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~73_combout\,
	datad => \Shift|ShiftLeft0~69_combout\,
	combout => \Shift|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X61_Y48_N30
\Shift|ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~75_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~57_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~74_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~57_combout\,
	combout => \Shift|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X61_Y48_N24
\Shift|ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~76_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~75_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~75_combout\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Shift|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X55_Y48_N26
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~3_combout\ & ((\Shift|ShiftLeft0~76_combout\))) # (!\Mux49~3_combout\ & (\Add|S\(15))))) # (!\Mux49~2_combout\ & (((!\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(15),
	datab => \Mux49~2_combout\,
	datac => \Mux49~3_combout\,
	datad => \Shift|ShiftLeft0~76_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X60_Y46_N22
\Shift|ShiftRight0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~199_combout\ = (\Shift|ShiftRight1~104_combout\) # ((!\Shift|ShiftLeft0~18_combout\ & (\A[63]~input_o\ & \Shift|ShiftRight0~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~18_combout\,
	datab => \Shift|ShiftRight1~104_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight0~165_combout\,
	combout => \Shift|ShiftRight0~199_combout\);

-- Location: LCCOMB_X59_Y46_N28
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Mux49~1_combout\ & (((\Mux49~0_combout\) # (\Shift|ShiftRight0~199_combout\)))) # (!\Mux49~1_combout\ & (\Shift|ShiftRight0~159_combout\ & (!\Mux49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Shift|ShiftRight0~159_combout\,
	datac => \Mux49~0_combout\,
	datad => \Shift|ShiftRight0~199_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X59_Y46_N6
\Shift|ShiftRight0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~200_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~119_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~119_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~184_combout\,
	combout => \Shift|ShiftRight0~200_combout\);

-- Location: LCCOMB_X59_Y46_N0
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux49~0_combout\ & ((\Mux48~1_combout\ & ((\Shift|ShiftRight0~200_combout\))) # (!\Mux48~1_combout\ & (\Shift|ShiftRight0~161_combout\)))) # (!\Mux49~0_combout\ & (\Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~0_combout\,
	datab => \Mux48~1_combout\,
	datac => \Shift|ShiftRight0~161_combout\,
	datad => \Shift|ShiftRight0~200_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X59_Y46_N2
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (\Mux48~3_combout\ & (((\Mux48~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux48~3_combout\ & (\Shift|ShiftRight1~105_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~105_combout\,
	datab => \Mux48~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux48~2_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X59_Y46_N20
\Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux48~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux48~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux48~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux48~4_combout\,
	combout => \Mux48~5_combout\);

-- Location: LCCOMB_X63_Y48_N2
\Shift|ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~78_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[16]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X63_Y48_N20
\Shift|ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~79_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~78_combout\,
	datac => \Shift|ShiftLeft0~73_combout\,
	combout => \Shift|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X60_Y47_N12
\Shift|ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~80_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~42_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~79_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~42_combout\,
	combout => \Shift|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X60_Y47_N10
\Shift|ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~77_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~30_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~30_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~62_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X60_Y47_N14
\Shift|ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~81_combout\ = (\Shift|ShiftLeft0~77_combout\) # ((\Shift|ShiftLeft0~80_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~80_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~77_combout\,
	combout => \Shift|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X60_Y48_N20
\Shift|ShiftLeft0~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~281_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~44_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~81_combout\,
	datad => \Shift|ShiftLeft0~44_combout\,
	combout => \Shift|ShiftLeft0~281_combout\);

-- Location: LCCOMB_X50_Y49_N8
\Add|S[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(16) = \A[16]~input_o\ $ (\AddnSub~input_o\ $ (\Add|block_carry_in[4]~29_combout\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[4]~29_combout\,
	datad => \B[16]~input_o\,
	combout => \Add|S\(16));

-- Location: LCCOMB_X60_Y50_N30
\Shift|ShiftRight0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~201_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~21_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~27_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~21_combout\,
	combout => \Shift|ShiftRight0~201_combout\);

-- Location: LCCOMB_X57_Y46_N10
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\B[5]~input_o\ & ((\Mux61~2_combout\) # ((\Shift|ShiftRight0~201_combout\)))) # (!\B[5]~input_o\ & (!\Mux61~2_combout\ & (\Shift|ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~43_combout\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X57_Y50_N20
\Shift|ShiftRight1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~106_combout\ = (\Shift|ShiftRight0~201_combout\) # ((\A[63]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Shift|ShiftRight1~106_combout\);

-- Location: LCCOMB_X57_Y46_N4
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux47~1_combout\ & (((\Shift|ShiftRight1~106_combout\)) # (!\Mux61~2_combout\))) # (!\Mux47~1_combout\ & (\Mux61~2_combout\ & ((\Shift|ShiftRight0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~1_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight1~106_combout\,
	datad => \Shift|ShiftRight0~72_combout\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X50_Y49_N10
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\B[16]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[16]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X50_Y49_N28
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\Mux61~8_combout\ & ((\Mux61~9_combout\ & ((\Mux47~0_combout\))) # (!\Mux61~9_combout\ & (\Mux47~2_combout\)))) # (!\Mux61~8_combout\ & (((!\Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~2_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux61~9_combout\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X50_Y49_N22
\Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~4_combout\ = (\Mux61~0_combout\ & ((\Mux47~3_combout\ & ((\Add|S\(16)))) # (!\Mux47~3_combout\ & (\Shift|ShiftLeft0~281_combout\)))) # (!\Mux61~0_combout\ & (((\Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Shift|ShiftLeft0~281_combout\,
	datac => \Add|S\(16),
	datad => \Mux47~3_combout\,
	combout => \Mux47~4_combout\);

-- Location: LCCOMB_X50_Y49_N24
\Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~5_combout\ = (\Mux47~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux47~5_combout\);

-- Location: LCCOMB_X56_Y47_N6
\Shift|ShiftRight0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~202_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~99_combout\) # (\Shift|ShiftRight0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~99_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~102_combout\,
	combout => \Shift|ShiftRight0~202_combout\);

-- Location: LCCOMB_X56_Y47_N16
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\B[5]~input_o\ & (((\Mux61~2_combout\) # (\Shift|ShiftRight0~202_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~89_combout\ & (!\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~89_combout\,
	datab => \B[5]~input_o\,
	datac => \Mux61~2_combout\,
	datad => \Shift|ShiftRight0~202_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X56_Y47_N2
\Shift|ShiftRight1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~107_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~29_combout\,
	combout => \Shift|ShiftRight1~107_combout\);

-- Location: LCCOMB_X56_Y47_N20
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux46~1_combout\ & (((\Shift|ShiftRight1~107_combout\) # (!\Mux61~2_combout\)))) # (!\Mux46~1_combout\ & (\Shift|ShiftRight0~96_combout\ & (\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~96_combout\,
	datab => \Mux46~1_combout\,
	datac => \Mux61~2_combout\,
	datad => \Shift|ShiftRight1~107_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X50_Y49_N6
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\B[17]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[17]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X50_Y49_N16
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux61~8_combout\ & ((\Mux61~9_combout\ & ((\Mux46~0_combout\))) # (!\Mux61~9_combout\ & (\Mux46~2_combout\)))) # (!\Mux61~8_combout\ & (((!\Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~2_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux61~9_combout\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X61_Y51_N26
\Shift|ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~82_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~33_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~66_combout\,
	datad => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X63_Y48_N30
\Shift|ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~83_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X63_Y48_N24
\Shift|ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~84_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~78_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~78_combout\,
	datac => \Shift|ShiftLeft0~83_combout\,
	combout => \Shift|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X57_Y51_N26
\Shift|ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~85_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~47_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~47_combout\,
	datad => \Shift|ShiftLeft0~84_combout\,
	combout => \Shift|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X61_Y51_N4
\Shift|ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~86_combout\ = (\Shift|ShiftLeft0~82_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~82_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~85_combout\,
	combout => \Shift|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X61_Y51_N22
\Shift|ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~87_combout\ = (\B[4]~input_o\ & (!\Shift|ShiftLeft0~20_combout\ & ((\Shift|ShiftLeft0~19_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~20_combout\,
	datab => \Shift|ShiftLeft0~86_combout\,
	datac => \Shift|ShiftLeft0~19_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X50_Y49_N26
\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ = (\A[16]~input_o\ & ((\Add|block_carry_in[4]~29_combout\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\Add|block_carry_in[4]~29_combout\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[4]~29_combout\,
	datad => \B[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X50_Y49_N20
\Add|S[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(17) = \B[17]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ $ (\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\,
	datad => \A[17]~input_o\,
	combout => \Add|S\(17));

-- Location: LCCOMB_X50_Y49_N2
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux61~0_combout\ & ((\Mux46~3_combout\ & ((\Add|S\(17)))) # (!\Mux46~3_combout\ & (\Shift|ShiftLeft0~87_combout\)))) # (!\Mux61~0_combout\ & (\Mux46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Mux46~3_combout\,
	datac => \Shift|ShiftLeft0~87_combout\,
	datad => \Add|S\(17),
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X49_Y52_N24
\Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux46~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux46~4_combout\,
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X50_Y48_N26
\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ = (\A[17]~input_o\ & ((\Add|G\(16)) # (\AddnSub~input_o\ $ (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\Add|G\(16) & (\AddnSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Add|G\(16),
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X50_Y48_N0
\Add|GEN_BLOCKS:4:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ = (\Add|P\(16) & (\B[17]~input_o\ $ (\A[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(16),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X50_Y48_N4
\Add|S[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(18) = \Add|P\(18) $ (((\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[4]~29_combout\ & \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(18),
	datab => \Add|block_carry_in[4]~29_combout\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\,
	combout => \Add|S\(18));

-- Location: LCCOMB_X56_Y48_N20
\Shift|ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~88_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~36_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~36_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~70_combout\,
	combout => \Shift|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X63_Y48_N18
\Shift|ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~89_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X63_Y48_N28
\Shift|ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~90_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~83_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~89_combout\,
	datac => \Shift|ShiftLeft0~83_combout\,
	combout => \Shift|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X56_Y48_N6
\Shift|ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~91_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~53_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~53_combout\,
	datad => \Shift|ShiftLeft0~90_combout\,
	combout => \Shift|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X56_Y48_N8
\Shift|ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~92_combout\ = (\Shift|ShiftLeft0~88_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftLeft0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~88_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~91_combout\,
	combout => \Shift|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X56_Y48_N26
\Shift|ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~93_combout\ = (\B[4]~input_o\ & (!\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftLeft0~23_combout\))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~24_combout\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~92_combout\,
	combout => \Shift|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X50_Y48_N30
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X57_Y52_N24
\Shift|ShiftRight1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~108_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~62_combout\,
	combout => \Shift|ShiftRight1~108_combout\);

-- Location: LCCOMB_X58_Y52_N14
\Shift|ShiftRight0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~203_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~110_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~111_combout\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~203_combout\);

-- Location: LCCOMB_X57_Y52_N22
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux61~2_combout\ & (\B[5]~input_o\)) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & (\Shift|ShiftRight0~203_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftRight0~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftRight0~203_combout\,
	datad => \Shift|ShiftRight0~106_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux61~2_combout\ & ((\Mux45~1_combout\ & (\Shift|ShiftRight1~108_combout\)) # (!\Mux45~1_combout\ & ((\Shift|ShiftRight0~109_combout\))))) # (!\Mux61~2_combout\ & (((\Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Shift|ShiftRight1~108_combout\,
	datac => \Mux45~1_combout\,
	datad => \Shift|ShiftRight0~109_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X57_Y52_N28
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux61~8_combout\ & ((\Mux61~9_combout\ & (\Mux45~0_combout\)) # (!\Mux61~9_combout\ & ((\Mux45~2_combout\))))) # (!\Mux61~8_combout\ & (((!\Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux61~9_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X57_Y48_N2
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (\Mux61~0_combout\ & ((\Mux45~3_combout\ & (\Add|S\(18))) # (!\Mux45~3_combout\ & ((\Shift|ShiftLeft0~93_combout\))))) # (!\Mux61~0_combout\ & (((\Mux45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(18),
	datab => \Mux61~0_combout\,
	datac => \Shift|ShiftLeft0~93_combout\,
	datad => \Mux45~3_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X57_Y48_N28
\Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux45~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux45~4_combout\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X50_Y47_N12
\Shift|ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~95_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Shift|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X63_Y48_N14
\Shift|ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~96_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~89_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~95_combout\,
	datad => \Shift|ShiftLeft0~89_combout\,
	combout => \Shift|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X61_Y48_N12
\Shift|ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~97_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~57_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~96_combout\,
	datad => \Shift|ShiftLeft0~57_combout\,
	combout => \Shift|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X61_Y48_N10
\Shift|ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~94_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~39_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~39_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~74_combout\,
	combout => \Shift|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X61_Y48_N14
\Shift|ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~98_combout\ = (\Shift|ShiftLeft0~94_combout\) # ((\Shift|ShiftLeft0~97_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~97_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~94_combout\,
	combout => \Shift|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X61_Y48_N16
\Shift|ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~99_combout\ = (\B[4]~input_o\ & (((!\Shift|ShiftLeft0~24_combout\ & \Shift|ShiftLeft0~26_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~98_combout\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Shift|ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X58_Y48_N0
\Shift|ShiftRight1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~109_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\)))) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~121_combout\) # ((\Shift|ShiftRight1~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~121_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~79_combout\,
	combout => \Shift|ShiftRight1~109_combout\);

-- Location: LCCOMB_X58_Y48_N4
\Shift|ShiftRight0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~204_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~121_combout\) # ((\Shift|ShiftRight0~122_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~122_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~121_combout\,
	combout => \Shift|ShiftRight0~204_combout\);

-- Location: LCCOMB_X58_Y48_N30
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\B[5]~input_o\ & (((\Shift|ShiftRight0~204_combout\) # (\Mux61~2_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~117_combout\ & ((!\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~117_combout\,
	datac => \Shift|ShiftRight0~204_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X58_Y48_N18
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux44~1_combout\ & (((\Shift|ShiftRight1~109_combout\) # (!\Mux61~2_combout\)))) # (!\Mux44~1_combout\ & (\Shift|ShiftRight0~120_combout\ & ((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~120_combout\,
	datab => \Shift|ShiftRight1~109_combout\,
	datac => \Mux44~1_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X50_Y47_N22
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\B[19]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[19]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X52_Y48_N24
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux44~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux44~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux44~2_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux44~0_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X50_Y48_N16
\Add|G[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(17) = (\A[17]~input_o\ & (\AddnSub~input_o\ $ (\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|G\(17));

-- Location: LCCOMB_X50_Y48_N2
\Add|GEN_BLOCKS:4:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ = (\A[18]~input_o\ & ((\Add|G\(17)) # (\AddnSub~input_o\ $ (\B[18]~input_o\)))) # (!\A[18]~input_o\ & (\Add|G\(17) & (\AddnSub~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[18]~input_o\,
	datac => \A[18]~input_o\,
	datad => \Add|G\(17),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X50_Y49_N4
\Add|GEN_BLOCKS:4:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ = (\A[16]~input_o\ & ((\Add|block_carry_in[4]~29_combout\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\Add|block_carry_in[4]~29_combout\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[4]~29_combout\,
	datad => \B[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X50_Y48_N12
\Add|GEN_BLOCKS:4:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\) # ((\Add|P\(17) & (\Add|P\(18) & \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\,
	datab => \Add|P\(17),
	datac => \Add|P\(18),
	datad => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X50_Y48_N14
\Add|S[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(19) = \AddnSub~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\ $ (\Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(19));

-- Location: LCCOMB_X52_Y48_N18
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (\Mux44~3_combout\ & (((\Add|S\(19)) # (!\Mux61~0_combout\)))) # (!\Mux44~3_combout\ & (\Shift|ShiftLeft0~99_combout\ & ((\Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~99_combout\,
	datab => \Mux44~3_combout\,
	datac => \Add|S\(19),
	datad => \Mux61~0_combout\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X52_Y50_N0
\Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (\Mux44~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux44~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X49_Y48_N10
\Add|S[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(20) = \Add|P\(20) $ (((\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (\Add|block_carry_in[4]~29_combout\)) # (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[5]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[4]~29_combout\,
	datab => \Add|block_carry_in[5]~31_combout\,
	datac => \Add|P\(20),
	datad => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\,
	combout => \Add|S\(20));

-- Location: LCCOMB_X49_Y50_N30
\Shift|ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~100_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X50_Y47_N0
\Shift|ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~101_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~95_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~95_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~100_combout\,
	combout => \Shift|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X60_Y47_N8
\Shift|ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~102_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~62_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~101_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~62_combout\,
	combout => \Shift|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X60_Y47_N26
\Shift|ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~103_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~80_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~80_combout\,
	datab => \Shift|ShiftLeft0~102_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X56_Y50_N20
\Shift|ShiftLeft0~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~282_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~31_combout\ & ((!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~31_combout\,
	datac => \Shift|ShiftLeft0~103_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~282_combout\);

-- Location: LCCOMB_X56_Y50_N8
\Shift|ShiftRight1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~110_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~132_combout\) # (\Shift|ShiftRight1~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight0~132_combout\,
	datac => \Shift|ShiftRight1~81_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~110_combout\);

-- Location: LCCOMB_X61_Y50_N28
\Shift|ShiftRight0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~205_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~132_combout\) # ((\Shift|ShiftRight0~133_combout\ & \Shift|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~133_combout\,
	datab => \Shift|ShiftRight0~23_combout\,
	datac => \Shift|ShiftRight0~132_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~205_combout\);

-- Location: LCCOMB_X57_Y50_N14
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux61~2_combout\ & (((\B[5]~input_o\)))) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~205_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~129_combout\,
	datab => \Mux61~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~205_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X57_Y50_N16
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux43~1_combout\ & ((\Shift|ShiftRight1~110_combout\) # ((!\Mux61~2_combout\)))) # (!\Mux43~1_combout\ & (((\Shift|ShiftRight0~131_combout\ & \Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~110_combout\,
	datab => \Mux43~1_combout\,
	datac => \Shift|ShiftRight0~131_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X49_Y50_N0
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\B[20]~input_o\ & ((\A[20]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X49_Y50_N2
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux43~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux43~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux43~2_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux43~0_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X49_Y50_N20
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux61~0_combout\ & ((\Mux43~3_combout\ & (\Add|S\(20))) # (!\Mux43~3_combout\ & ((\Shift|ShiftLeft0~282_combout\))))) # (!\Mux61~0_combout\ & (((\Mux43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(20),
	datab => \Shift|ShiftLeft0~282_combout\,
	datac => \Mux61~0_combout\,
	datad => \Mux43~3_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X49_Y50_N22
\Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux43~4_combout\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X49_Y48_N12
\Add|block_carry_in[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~52_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[4]~29_combout\))) # (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (\Add|block_carry_in[5]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|block_carry_in[5]~31_combout\,
	datac => \Add|block_carry_in[4]~29_combout\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\,
	combout => \Add|block_carry_in[5]~52_combout\);

-- Location: LCCOMB_X49_Y50_N8
\Add|GEN_BLOCKS:5:LACG_INST|C[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[1]~4_combout\ = (\A[20]~input_o\ & ((\Add|block_carry_in[5]~52_combout\) # (\B[20]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[20]~input_o\ & (\Add|block_carry_in[5]~52_combout\ & (\B[20]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[5]~52_combout\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~4_combout\);

-- Location: LCCOMB_X49_Y50_N14
\Add|S[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(21) = \A[21]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:5:LACG_INST|C[1]~4_combout\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~4_combout\,
	datad => \B[21]~input_o\,
	combout => \Add|S\(21));

-- Location: LCCOMB_X54_Y47_N2
\Shift|ShiftRight0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~206_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~136_combout\) # ((\Shift|ShiftRight0~133_combout\ & \Shift|ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~133_combout\,
	datac => \Shift|ShiftRight0~136_combout\,
	datad => \Shift|ShiftRight0~100_combout\,
	combout => \Shift|ShiftRight0~206_combout\);

-- Location: LCCOMB_X53_Y50_N2
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\B[5]~input_o\ & (((\Mux61~2_combout\) # (\Shift|ShiftRight0~206_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~144_combout\ & (!\Mux61~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~144_combout\,
	datac => \Mux61~2_combout\,
	datad => \Shift|ShiftRight0~206_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X53_Y50_N20
\Shift|ShiftRight1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~111_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~84_combout\,
	combout => \Shift|ShiftRight1~111_combout\);

-- Location: LCCOMB_X53_Y50_N30
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux61~2_combout\ & ((\Mux42~1_combout\ & ((\Shift|ShiftRight1~111_combout\))) # (!\Mux42~1_combout\ & (\Shift|ShiftRight0~139_combout\)))) # (!\Mux61~2_combout\ & (\Mux42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~2_combout\,
	datab => \Mux42~1_combout\,
	datac => \Shift|ShiftRight0~139_combout\,
	datad => \Shift|ShiftRight1~111_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X53_Y50_N16
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\B[21]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[21]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X53_Y50_N24
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux61~8_combout\ & ((\Mux61~9_combout\ & ((\Mux42~0_combout\))) # (!\Mux61~9_combout\ & (\Mux42~2_combout\)))) # (!\Mux61~8_combout\ & (((!\Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~2_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux61~9_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X50_Y47_N10
\Shift|ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~104_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X50_Y47_N4
\Shift|ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~105_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~100_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~100_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~104_combout\,
	combout => \Shift|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X57_Y51_N12
\Shift|ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~106_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~66_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~105_combout\,
	datad => \Shift|ShiftLeft0~66_combout\,
	combout => \Shift|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X57_Y51_N22
\Shift|ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~107_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~85_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~106_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~85_combout\,
	combout => \Shift|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X53_Y50_N28
\Shift|ShiftLeft0~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~283_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~34_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~107_combout\,
	combout => \Shift|ShiftLeft0~283_combout\);

-- Location: LCCOMB_X52_Y50_N10
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\Mux61~0_combout\ & ((\Mux42~3_combout\ & (\Add|S\(21))) # (!\Mux42~3_combout\ & ((\Shift|ShiftLeft0~283_combout\))))) # (!\Mux61~0_combout\ & (((\Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(21),
	datab => \Mux61~0_combout\,
	datac => \Mux42~3_combout\,
	datad => \Shift|ShiftLeft0~283_combout\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X52_Y50_N4
\Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux42~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux42~4_combout\,
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Shift|ShiftRight0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~207_combout\ = (!\B[4]~input_o\ & \Shift|ShiftRight0~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~150_combout\,
	combout => \Shift|ShiftRight0~207_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux61~2_combout\ & (((\B[5]~input_o\)))) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~207_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~148_combout\,
	datab => \Mux61~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~207_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X57_Y50_N6
\Shift|ShiftRight1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~112_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\)))) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~86_combout\) # ((\Shift|ShiftRight0~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~86_combout\,
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~149_combout\,
	combout => \Shift|ShiftRight1~112_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux41~1_combout\ & (((\Shift|ShiftRight1~112_combout\)) # (!\Mux61~2_combout\))) # (!\Mux41~1_combout\ & (\Mux61~2_combout\ & (\Shift|ShiftRight0~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~1_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~152_combout\,
	datad => \Shift|ShiftRight1~112_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X49_Y50_N28
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X52_Y48_N20
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux61~9_combout\ & (\Mux61~8_combout\ & ((\Mux41~0_combout\)))) # (!\Mux61~9_combout\ & (((\Mux41~2_combout\)) # (!\Mux61~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux41~2_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X49_Y50_N26
\Shift|ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~108_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X50_Y47_N30
\Shift|ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~109_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~104_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~108_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~104_combout\,
	combout => \Shift|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X59_Y48_N10
\Shift|ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~110_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~70_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~109_combout\,
	datac => \Shift|ShiftLeft0~70_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X56_Y48_N4
\Shift|ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~111_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~91_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~91_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~110_combout\,
	combout => \Shift|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X56_Y48_N30
\Shift|ShiftLeft0~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~284_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~37_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~111_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~37_combout\,
	combout => \Shift|ShiftLeft0~284_combout\);

-- Location: LCCOMB_X48_Y48_N8
\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ = (\A[21]~input_o\ & ((\Add|G\(20)) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[21]~input_o\ & (\Add|G\(20) & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \Add|G\(20),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X48_Y48_N26
\Add|S[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(22) = \Add|P\(22) $ (((\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[5]~52_combout\ & \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\,
	datab => \Add|block_carry_in[5]~52_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|Pout~4_combout\,
	datad => \Add|P\(22),
	combout => \Add|S\(22));

-- Location: LCCOMB_X52_Y48_N14
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Mux41~3_combout\ & (((\Add|S\(22)) # (!\Mux61~0_combout\)))) # (!\Mux41~3_combout\ & (\Shift|ShiftLeft0~284_combout\ & (\Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~3_combout\,
	datab => \Shift|ShiftLeft0~284_combout\,
	datac => \Mux61~0_combout\,
	datad => \Add|S\(22),
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X52_Y54_N8
\Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux41~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux41~4_combout\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X50_Y47_N24
\Shift|ShiftLeft0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~112_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X50_Y47_N26
\Shift|ShiftLeft0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~113_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~108_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~108_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~112_combout\,
	combout => \Shift|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X62_Y48_N24
\Shift|ShiftLeft0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~114_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~74_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~113_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~74_combout\,
	combout => \Shift|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X61_Y48_N2
\Shift|ShiftLeft0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~115_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~97_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~97_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~114_combout\,
	combout => \Shift|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X61_Y48_N22
\Shift|ShiftLeft0~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~285_combout\ = (\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~40_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~115_combout\))

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
	combout => \Shift|ShiftLeft0~285_combout\);

-- Location: LCCOMB_X48_Y48_N12
\Add|GEN_BLOCKS:5:LACG_INST|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[3]~5_combout\ = (\A[20]~input_o\ & ((\Add|block_carry_in[5]~52_combout\) # (\B[20]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[20]~input_o\ & (\Add|block_carry_in[5]~52_combout\ & (\B[20]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datac => \Add|block_carry_in[5]~52_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~5_combout\);

-- Location: LCCOMB_X48_Y48_N22
\Add|GEN_BLOCKS:5:LACG_INST|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[3]~6_combout\ = (\Add|P\(22) & (\A[21]~input_o\ $ (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Add|P\(22),
	datac => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~6_combout\);

-- Location: LCCOMB_X48_Y48_N30
\Add|G[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(21) = (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Add|G\(21));

-- Location: LCCOMB_X48_Y48_N24
\Add|GEN_BLOCKS:5:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ = (\A[22]~input_o\ & ((\Add|G\(21)) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[22]~input_o\ & (\Add|G\(21) & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \Add|G\(21),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X48_Y48_N10
\Add|S[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(23) = \Add|P[23]~0_combout\ $ (((\Add|GEN_BLOCKS:5:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:5:LACG_INST|C[3]~5_combout\ & \Add|GEN_BLOCKS:5:LACG_INST|C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~5_combout\,
	datab => \Add|P[23]~0_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~6_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|g_int~1_combout\,
	combout => \Add|S\(23));

-- Location: LCCOMB_X50_Y47_N20
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\B[23]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[23]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X53_Y46_N0
\Shift|ShiftRight0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~208_combout\ = (\Shift|ShiftRight0~155_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~155_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~208_combout\);

-- Location: LCCOMB_X53_Y46_N18
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\B[5]~input_o\ & ((\Mux61~2_combout\) # ((\Shift|ShiftRight0~208_combout\)))) # (!\B[5]~input_o\ & (!\Mux61~2_combout\ & (\Shift|ShiftRight0~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~162_combout\,
	datad => \Shift|ShiftRight0~208_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X60_Y46_N14
\Shift|ShiftRight1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~117_combout\ = (\B[3]~input_o\ & (((\A[63]~input_o\)))) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~154_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight1~117_combout\);

-- Location: LCCOMB_X53_Y46_N4
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux40~1_combout\ & (((\Shift|ShiftRight1~117_combout\)) # (!\Mux61~2_combout\))) # (!\Mux40~1_combout\ & (\Mux61~2_combout\ & ((\Shift|ShiftRight0~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight1~117_combout\,
	datad => \Shift|ShiftRight0~157_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X52_Y48_N16
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux61~9_combout\ & (\Mux40~0_combout\ & (\Mux61~8_combout\))) # (!\Mux61~9_combout\ & (((\Mux40~2_combout\) # (!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux40~0_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X52_Y48_N2
\Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\Mux61~0_combout\ & ((\Mux40~3_combout\ & ((\Add|S\(23)))) # (!\Mux40~3_combout\ & (\Shift|ShiftLeft0~285_combout\)))) # (!\Mux61~0_combout\ & (((\Mux40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~285_combout\,
	datab => \Mux61~0_combout\,
	datac => \Add|S\(23),
	datad => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X52_Y50_N14
\Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~5_combout\ = (\Mux40~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux40~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux40~5_combout\);

-- Location: LCCOMB_X59_Y47_N2
\Shift|ShiftLeft0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~120_combout\ = (!\Shift|ShiftLeft0~18_combout\ & (\A[0]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~18_combout\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X53_Y51_N26
\Shift|ShiftLeft0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~116_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X50_Y47_N14
\Shift|ShiftLeft0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~117_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~112_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~116_combout\,
	datab => \Shift|ShiftLeft0~112_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X60_Y47_N20
\Shift|ShiftLeft0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~118_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~117_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~79_combout\,
	combout => \Shift|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X60_Y47_N30
\Shift|ShiftLeft0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~119_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~102_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~118_combout\,
	datac => \Shift|ShiftLeft0~102_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X59_Y47_N4
\Shift|ShiftLeft0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~121_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~120_combout\) # ((\Shift|ShiftLeft0~43_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~120_combout\,
	datac => \Shift|ShiftLeft0~43_combout\,
	datad => \Shift|ShiftLeft0~119_combout\,
	combout => \Shift|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X49_Y48_N6
\Add|block_carry_in[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~53_combout\ = (\Add|block_carry_in[6]~36_combout\) # ((\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & \Add|block_carry_in[5]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~36_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\,
	datad => \Add|block_carry_in[5]~52_combout\,
	combout => \Add|block_carry_in[6]~53_combout\);

-- Location: LCCOMB_X48_Y52_N0
\Add|S[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(24) = \Add|block_carry_in[6]~53_combout\ $ (\B[24]~input_o\ $ (\AddnSub~input_o\ $ (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~53_combout\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[24]~input_o\,
	combout => \Add|S\(24));

-- Location: LCCOMB_X61_Y50_N30
\Shift|ShiftRight0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~209_combout\ = (!\Mux57~0_combout\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~23_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~26_combout\,
	datab => \Mux57~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Shift|ShiftRight0~209_combout\);

-- Location: LCCOMB_X56_Y46_N26
\Shift|ShiftRight1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~118_combout\ = (\Shift|ShiftRight0~209_combout\) # ((\A[63]~input_o\ & ((\B[4]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~209_combout\,
	combout => \Shift|ShiftRight1~118_combout\);

-- Location: LCCOMB_X56_Y46_N18
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\B[5]~input_o\ & ((\Mux61~2_combout\) # ((\Shift|ShiftRight0~209_combout\)))) # (!\B[5]~input_o\ & (!\Mux61~2_combout\ & (\Shift|ShiftRight0~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~168_combout\,
	datad => \Shift|ShiftRight0~209_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X56_Y46_N28
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux61~2_combout\ & ((\Mux39~1_combout\ & (\Shift|ShiftRight1~118_combout\)) # (!\Mux39~1_combout\ & ((\Shift|ShiftRight0~164_combout\))))) # (!\Mux61~2_combout\ & (((\Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~118_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~164_combout\,
	datad => \Mux39~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X49_Y50_N6
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[24]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X49_Y50_N24
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux39~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux39~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux39~2_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux39~0_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X52_Y50_N16
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux61~0_combout\ & ((\Mux39~3_combout\ & ((\Add|S\(24)))) # (!\Mux39~3_combout\ & (\Shift|ShiftLeft0~121_combout\)))) # (!\Mux61~0_combout\ & (((\Mux39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~121_combout\,
	datab => \Mux61~0_combout\,
	datac => \Add|S\(24),
	datad => \Mux39~3_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X52_Y50_N26
\Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux39~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux39~4_combout\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X48_Y52_N20
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[25]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X53_Y46_N22
\Shift|ShiftRight1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~119_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~28_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~119_combout\);

-- Location: LCCOMB_X54_Y47_N20
\Shift|ShiftRight0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~210_combout\ = (!\Mux57~0_combout\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~100_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~101_combout\,
	datab => \Shift|ShiftRight0~100_combout\,
	datac => \B[2]~input_o\,
	datad => \Mux57~0_combout\,
	combout => \Shift|ShiftRight0~210_combout\);

-- Location: LCCOMB_X53_Y46_N30
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux61~2_combout\ & (((\B[5]~input_o\)))) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~210_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~175_combout\,
	datab => \Mux61~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~210_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X53_Y46_N24
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux61~2_combout\ & ((\Mux38~1_combout\ & (\Shift|ShiftRight1~119_combout\)) # (!\Mux38~1_combout\ & ((\Shift|ShiftRight0~170_combout\))))) # (!\Mux61~2_combout\ & (((\Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~119_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux38~1_combout\,
	datad => \Shift|ShiftRight0~170_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X48_Y52_N22
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\Mux61~9_combout\ & (\Mux38~0_combout\ & (\Mux61~8_combout\))) # (!\Mux61~9_combout\ & (((\Mux38~2_combout\) # (!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux38~0_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux38~2_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X48_Y52_N10
\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[6]~53_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[6]~53_combout\ & (\A[24]~input_o\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~53_combout\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[24]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X48_Y52_N28
\Add|S[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(25) = \A[25]~input_o\ $ (\AddnSub~input_o\ $ (\B[25]~input_o\ $ (\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(25));

-- Location: LCCOMB_X53_Y51_N4
\Shift|ShiftLeft0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~122_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X53_Y51_N22
\Shift|ShiftLeft0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~123_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~116_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~116_combout\,
	datab => \Shift|ShiftLeft0~122_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Shift|ShiftLeft0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~124_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~84_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~123_combout\,
	datad => \Shift|ShiftLeft0~84_combout\,
	combout => \Shift|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X57_Y51_N10
\Shift|ShiftLeft0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~125_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~106_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~124_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~106_combout\,
	combout => \Shift|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X60_Y49_N0
\Shift|ShiftLeft0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~126_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~49_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~125_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~49_combout\,
	combout => \Shift|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X48_Y52_N24
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (\Mux38~3_combout\ & ((\Add|S\(25)) # ((!\Mux61~0_combout\)))) # (!\Mux38~3_combout\ & (((\Shift|ShiftLeft0~126_combout\ & \Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~3_combout\,
	datab => \Add|S\(25),
	datac => \Shift|ShiftLeft0~126_combout\,
	datad => \Mux61~0_combout\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X52_Y54_N2
\Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux38~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux38~4_combout\,
	combout => \Mux38~5_combout\);

-- Location: LCCOMB_X48_Y52_N18
\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ = (\A[25]~input_o\ & ((\Add|G\(24)) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\Add|G\(24) & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Add|G\(24),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X48_Y52_N4
\Add|S[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(26) = \Add|P\(26) $ (((\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[6]~53_combout\ & \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~53_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\,
	datac => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(26),
	combout => \Add|S\(26));

-- Location: LCCOMB_X49_Y52_N2
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\B[26]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[26]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Shift|ShiftRight0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~217_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \Shift|ShiftRight0~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~111_combout\,
	combout => \Shift|ShiftRight0~217_combout\);

-- Location: LCCOMB_X58_Y52_N8
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\B[5]~input_o\ & (((\Shift|ShiftRight0~217_combout\) # (\Mux61~2_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~180_combout\ & ((!\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~180_combout\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftRight0~217_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X58_Y52_N22
\Shift|ShiftRight1~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~120_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~61_combout\)))))

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
	combout => \Shift|ShiftRight1~120_combout\);

-- Location: LCCOMB_X58_Y52_N18
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux37~1_combout\ & (((\Shift|ShiftRight1~120_combout\) # (!\Mux61~2_combout\)))) # (!\Mux37~1_combout\ & (\Shift|ShiftRight0~177_combout\ & ((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~177_combout\,
	datab => \Mux37~1_combout\,
	datac => \Shift|ShiftRight1~120_combout\,
	datad => \Mux61~2_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X52_Y48_N28
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux61~9_combout\ & (\Mux61~8_combout\ & (\Mux37~0_combout\))) # (!\Mux61~9_combout\ & (((\Mux37~2_combout\)) # (!\Mux61~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux37~0_combout\,
	datad => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X53_Y51_N8
\Shift|ShiftLeft0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~127_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[26]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X53_Y51_N2
\Shift|ShiftLeft0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~128_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~122_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~127_combout\,
	datac => \Shift|ShiftLeft0~122_combout\,
	combout => \Shift|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X59_Y48_N4
\Shift|ShiftLeft0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~129_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~90_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~128_combout\,
	datad => \Shift|ShiftLeft0~90_combout\,
	combout => \Shift|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X59_Y48_N22
\Shift|ShiftLeft0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~130_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~110_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~129_combout\,
	datad => \Shift|ShiftLeft0~110_combout\,
	combout => \Shift|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X56_Y48_N14
\Shift|ShiftLeft0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~131_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftLeft0~54_combout\) # (\Shift|ShiftLeft0~51_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~130_combout\,
	datab => \Shift|ShiftLeft0~54_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~51_combout\,
	combout => \Shift|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X52_Y48_N22
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\Mux37~3_combout\ & ((\Add|S\(26)) # ((!\Mux61~0_combout\)))) # (!\Mux37~3_combout\ & (((\Mux61~0_combout\ & \Shift|ShiftLeft0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(26),
	datab => \Mux37~3_combout\,
	datac => \Mux61~0_combout\,
	datad => \Shift|ShiftLeft0~131_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X52_Y54_N20
\Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux37~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux37~4_combout\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X53_Y51_N12
\Shift|ShiftLeft0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~132_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[25]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X53_Y51_N14
\Shift|ShiftLeft0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~133_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~127_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~127_combout\,
	datad => \Shift|ShiftLeft0~132_combout\,
	combout => \Shift|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X62_Y48_N10
\Shift|ShiftLeft0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~134_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~96_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~133_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~96_combout\,
	combout => \Shift|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X62_Y48_N20
\Shift|ShiftLeft0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~135_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~114_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~134_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~114_combout\,
	combout => \Shift|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X55_Y48_N28
\Shift|ShiftLeft0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~136_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~59_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~135_combout\,
	datac => \Shift|ShiftLeft0~59_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X48_Y52_N8
\Add|GEN_BLOCKS:6:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[6]~53_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[6]~53_combout\ & (\A[24]~input_o\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~53_combout\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[24]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X48_Y52_N2
\Add|GEN_BLOCKS:6:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\ = (\Add|P\(25) & (\Add|GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ & \Add|P\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|P\(25),
	datac => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(26),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X49_Y52_N6
\Add|P[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[27]~4_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P[27]~4_combout\);

-- Location: LCCOMB_X48_Y52_N30
\Add|G[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(25) = (\A[25]~input_o\ & (\AddnSub~input_o\ $ (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	combout => \Add|G\(25));

-- Location: LCCOMB_X49_Y52_N4
\Add|GEN_BLOCKS:6:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ = (\A[26]~input_o\ & ((\Add|G\(25)) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\A[26]~input_o\ & (\Add|G\(25) & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \Add|G\(25),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X52_Y48_N8
\Add|S[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(27) = \Add|P[27]~4_combout\ $ (((\Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\) # (\Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\,
	datac => \Add|P[27]~4_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\,
	combout => \Add|S\(27));

-- Location: LCCOMB_X59_Y47_N6
\Shift|ShiftRight0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~218_combout\ = (\Shift|ShiftRight0~122_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~122_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~218_combout\);

-- Location: LCCOMB_X57_Y46_N6
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\B[5]~input_o\ & ((\Mux61~2_combout\) # ((\Shift|ShiftRight0~218_combout\)))) # (!\B[5]~input_o\ & (!\Mux61~2_combout\ & (\Shift|ShiftRight0~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~185_combout\,
	datad => \Shift|ShiftRight0~218_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X57_Y46_N0
\Shift|ShiftRight1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~113_combout\ = (\Shift|ShiftLeft0~24_combout\ & (((\A[63]~input_o\)))) # (!\Shift|ShiftLeft0~24_combout\ & ((\B[4]~input_o\ & ((\A[63]~input_o\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~75_combout\,
	datab => \Shift|ShiftLeft0~24_combout\,
	datac => \A[63]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~113_combout\);

-- Location: LCCOMB_X57_Y46_N2
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~1_combout\ & (((\Shift|ShiftRight1~113_combout\)) # (!\Mux61~2_combout\))) # (!\Mux36~1_combout\ & (\Mux61~2_combout\ & (\Shift|ShiftRight0~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~182_combout\,
	datad => \Shift|ShiftRight1~113_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X49_Y52_N16
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\B[27]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[27]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X52_Y48_N26
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux36~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux36~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux36~2_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X52_Y48_N12
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\Mux61~0_combout\ & ((\Mux36~3_combout\ & ((\Add|S\(27)))) # (!\Mux36~3_combout\ & (\Shift|ShiftLeft0~136_combout\)))) # (!\Mux61~0_combout\ & (((\Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~136_combout\,
	datab => \Mux61~0_combout\,
	datac => \Add|S\(27),
	datad => \Mux36~3_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X52_Y50_N12
\Mux36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux36~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux36~4_combout\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X56_Y46_N12
\Shift|ShiftRight0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~219_combout\ = (!\B[2]~input_o\ & (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Shift|ShiftRight0~219_combout\);

-- Location: LCCOMB_X56_Y46_N14
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\B[5]~input_o\ & ((\Mux61~2_combout\) # ((\Shift|ShiftRight0~219_combout\)))) # (!\B[5]~input_o\ & (!\Mux61~2_combout\ & (\Shift|ShiftRight0~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~189_combout\,
	datad => \Shift|ShiftRight0~219_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X57_Y46_N28
\Shift|ShiftRight1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~114_combout\ = (\Shift|ShiftLeft0~24_combout\ & (((\A[63]~input_o\)))) # (!\Shift|ShiftLeft0~24_combout\ & ((\B[4]~input_o\ & ((\A[63]~input_o\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~23_combout\,
	datab => \Shift|ShiftLeft0~24_combout\,
	datac => \A[63]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~114_combout\);

-- Location: LCCOMB_X57_Y46_N22
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux35~1_combout\ & (((\Shift|ShiftRight1~114_combout\)) # (!\Mux61~2_combout\))) # (!\Mux35~1_combout\ & (\Mux61~2_combout\ & (\Shift|ShiftRight0~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~187_combout\,
	datad => \Shift|ShiftRight1~114_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X49_Y50_N10
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X49_Y50_N12
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux61~9_combout\ & (\Mux61~8_combout\ & ((\Mux35~0_combout\)))) # (!\Mux61~9_combout\ & (((\Mux35~2_combout\)) # (!\Mux61~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux61~8_combout\,
	datac => \Mux35~2_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X54_Y51_N16
\Shift|ShiftLeft0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~138_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X54_Y51_N26
\Shift|ShiftLeft0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~139_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~132_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~132_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~138_combout\,
	combout => \Shift|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X60_Y47_N0
\Shift|ShiftLeft0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~140_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~101_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~101_combout\,
	datac => \Shift|ShiftLeft0~139_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X60_Y47_N2
\Shift|ShiftLeft0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~141_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~118_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~118_combout\,
	datac => \Shift|ShiftLeft0~140_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X56_Y50_N10
\Shift|ShiftLeft0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~137_combout\ = (\Shift|ShiftLeft0~63_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~31_combout\,
	datac => \Shift|ShiftLeft0~63_combout\,
	combout => \Shift|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X56_Y50_N28
\Shift|ShiftLeft0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~142_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~137_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~141_combout\,
	datad => \Shift|ShiftLeft0~137_combout\,
	combout => \Shift|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X49_Y49_N22
\Add|S[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(28) = \AddnSub~input_o\ $ (\B[28]~input_o\ $ (\A[28]~input_o\ $ (\Add|block_carry_in[7]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Add|block_carry_in[7]~37_combout\,
	combout => \Add|S\(28));

-- Location: LCCOMB_X52_Y50_N30
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\Mux35~3_combout\ & (((\Add|S\(28))) # (!\Mux61~0_combout\))) # (!\Mux35~3_combout\ & (\Mux61~0_combout\ & (\Shift|ShiftLeft0~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~3_combout\,
	datab => \Mux61~0_combout\,
	datac => \Shift|ShiftLeft0~142_combout\,
	datad => \Add|S\(28),
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X55_Y49_N16
\Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (\Mux35~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~4_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X55_Y47_N0
\Shift|ShiftRight1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~115_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\)))) # (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~20_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~20_combout\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~20_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight1~115_combout\);

-- Location: LCCOMB_X54_Y47_N6
\Shift|ShiftRight0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~220_combout\ = (!\B[4]~input_o\ & (\Shift|ShiftRight0~100_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~100_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~220_combout\);

-- Location: LCCOMB_X57_Y47_N4
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux61~2_combout\ & (((\B[5]~input_o\)))) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~220_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~193_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~220_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X57_Y47_N22
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux61~2_combout\ & ((\Mux34~1_combout\ & (\Shift|ShiftRight1~115_combout\)) # (!\Mux34~1_combout\ & ((\Shift|ShiftRight0~191_combout\))))) # (!\Mux61~2_combout\ & (((\Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~115_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux34~1_combout\,
	datad => \Shift|ShiftRight0~191_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X50_Y49_N14
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X50_Y49_N0
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux34~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux34~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~2_combout\,
	datab => \Mux61~9_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X49_Y49_N16
\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ = (\A[28]~input_o\ & ((\Add|block_carry_in[7]~37_combout\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\Add|block_carry_in[7]~37_combout\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Add|block_carry_in[7]~37_combout\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X50_Y49_N30
\Add|S[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(29) = \B[29]~input_o\ $ (\AddnSub~input_o\ $ (\A[29]~input_o\ $ (\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(29));

-- Location: LCCOMB_X54_Y51_N12
\Shift|ShiftLeft0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~143_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X54_Y51_N22
\Shift|ShiftLeft0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~144_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~138_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~143_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~138_combout\,
	combout => \Shift|ShiftLeft0~144_combout\);

-- Location: LCCOMB_X57_Y51_N20
\Shift|ShiftLeft0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~145_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~105_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~144_combout\,
	datac => \Shift|ShiftLeft0~105_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~145_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Shift|ShiftLeft0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~146_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~124_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~145_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~124_combout\,
	combout => \Shift|ShiftLeft0~146_combout\);

-- Location: LCCOMB_X56_Y51_N2
\Shift|ShiftLeft0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~147_combout\ = (\Shift|ShiftLeft0~34_combout\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~34_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~147_combout\);

-- Location: LCCOMB_X56_Y51_N4
\Shift|ShiftLeft0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~148_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftLeft0~147_combout\) # (\Shift|ShiftLeft0~67_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~146_combout\,
	datab => \Shift|ShiftLeft0~147_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~67_combout\,
	combout => \Shift|ShiftLeft0~148_combout\);

-- Location: LCCOMB_X50_Y49_N18
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux61~0_combout\ & ((\Mux34~3_combout\ & (\Add|S\(29))) # (!\Mux34~3_combout\ & ((\Shift|ShiftLeft0~148_combout\))))) # (!\Mux61~0_combout\ & (\Mux34~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Mux34~3_combout\,
	datac => \Add|S\(29),
	datad => \Shift|ShiftLeft0~148_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X50_Y49_N12
\Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux34~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux34~4_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X49_Y49_N18
\Add|G[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(28) = (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	combout => \Add|G\(28));

-- Location: LCCOMB_X49_Y49_N4
\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ = (\A[29]~input_o\ & ((\Add|G\(28)) # (\AddnSub~input_o\ $ (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\Add|G\(28) & (\AddnSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \Add|G\(28),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X49_Y49_N14
\Add|S[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(30) = \Add|P\(30) $ (((\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[7]~37_combout\ & \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~37_combout\,
	datab => \Add|P\(30),
	datac => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	combout => \Add|S\(30));

-- Location: LCCOMB_X54_Y51_N8
\Shift|ShiftLeft0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~150_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[30]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~150_combout\);

-- Location: LCCOMB_X54_Y51_N2
\Shift|ShiftLeft0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~151_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~143_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~150_combout\,
	datad => \Shift|ShiftLeft0~143_combout\,
	combout => \Shift|ShiftLeft0~151_combout\);

-- Location: LCCOMB_X59_Y48_N24
\Shift|ShiftLeft0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~152_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~109_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~109_combout\,
	datac => \Shift|ShiftLeft0~151_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~152_combout\);

-- Location: LCCOMB_X59_Y48_N26
\Shift|ShiftLeft0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~153_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~129_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~129_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~152_combout\,
	combout => \Shift|ShiftLeft0~153_combout\);

-- Location: LCCOMB_X56_Y48_N0
\Shift|ShiftLeft0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~149_combout\ = (\Shift|ShiftLeft0~71_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~71_combout\,
	datad => \Shift|ShiftLeft0~37_combout\,
	combout => \Shift|ShiftLeft0~149_combout\);

-- Location: LCCOMB_X57_Y47_N8
\Shift|ShiftLeft0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~154_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~149_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~153_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~149_combout\,
	combout => \Shift|ShiftLeft0~154_combout\);

-- Location: LCCOMB_X57_Y47_N12
\Shift|ShiftRight0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~211_combout\ = (!\Shift|ShiftLeft0~20_combout\ & (!\B[4]~input_o\ & \Shift|ShiftRight1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~20_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight0~211_combout\);

-- Location: LCCOMB_X57_Y47_N30
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux61~2_combout\ & (((\B[5]~input_o\)))) # (!\Mux61~2_combout\ & ((\B[5]~input_o\ & (\Shift|ShiftRight0~211_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftRight0~197_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~211_combout\,
	datab => \Mux61~2_combout\,
	datac => \Shift|ShiftRight0~197_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X59_Y45_N16
\Shift|ShiftLeft0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~155_combout\ = (\Shift|ShiftLeft0~18_combout\) # ((\B[4]~input_o\) # (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~18_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~155_combout\);

-- Location: LCCOMB_X59_Y45_N26
\Shift|ShiftRight1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~116_combout\ = (\Shift|ShiftLeft0~155_combout\ & ((\A[63]~input_o\))) # (!\Shift|ShiftLeft0~155_combout\ & (\A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftLeft0~155_combout\,
	combout => \Shift|ShiftRight1~116_combout\);

-- Location: LCCOMB_X57_Y47_N24
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux61~2_combout\ & ((\Mux33~1_combout\ & ((\Shift|ShiftRight1~116_combout\))) # (!\Mux33~1_combout\ & (\Shift|ShiftRight0~195_combout\)))) # (!\Mux61~2_combout\ & (((\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~195_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux33~1_combout\,
	datad => \Shift|ShiftRight1~116_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X57_Y47_N10
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\B[30]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[30]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X57_Y47_N18
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux61~9_combout\ & (((\Mux61~8_combout\ & \Mux33~0_combout\)))) # (!\Mux61~9_combout\ & ((\Mux33~2_combout\) # ((!\Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~9_combout\,
	datab => \Mux33~2_combout\,
	datac => \Mux61~8_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X57_Y47_N28
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\Mux61~0_combout\ & ((\Mux33~3_combout\ & (\Add|S\(30))) # (!\Mux33~3_combout\ & ((\Shift|ShiftLeft0~154_combout\))))) # (!\Mux61~0_combout\ & (((\Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(30),
	datab => \Shift|ShiftLeft0~154_combout\,
	datac => \Mux61~0_combout\,
	datad => \Mux33~3_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X52_Y50_N8
\Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\Mux33~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X54_Y48_N12
\Logic|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = (\B[31]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[31]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: LCCOMB_X49_Y49_N24
\Add|GEN_BLOCKS:7:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ = (\A[30]~input_o\ & ((\Add|G\(29)) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\Add|G\(29) & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \Add|G\(29),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X49_Y49_N26
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ = (\A[28]~input_o\ & ((\Add|block_carry_in[7]~37_combout\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\Add|block_carry_in[7]~37_combout\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \Add|block_carry_in[7]~37_combout\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X49_Y49_N12
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\) # ((\Add|P\(30) & (\Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ & \Add|P\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(30),
	datab => \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(29),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X54_Y48_N14
\Add|S[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(31) = \A[31]~input_o\ $ (\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ $ (\AddnSub~input_o\ $ (\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add|S\(31));

-- Location: LCCOMB_X59_Y45_N28
\Y_ShiftOrArith[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~6_combout\ = (\ShiftFN[0]~input_o\) # ((!\B[3]~input_o\ & (!\B[4]~input_o\ & !\Shift|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ShiftLeft0~18_combout\,
	combout => \Y_ShiftOrArith[31]~6_combout\);

-- Location: LCCOMB_X59_Y45_N6
\Y_ShiftOrArith[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~7_combout\ = (\ShiftFN[1]~input_o\ & (\B[5]~input_o\ & (\A[63]~input_o\ & \Y_ShiftOrArith[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Y_ShiftOrArith[31]~6_combout\,
	combout => \Y_ShiftOrArith[31]~7_combout\);

-- Location: LCCOMB_X60_Y46_N24
\Shift|ShiftRight0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~212_combout\ = (\Shift|ShiftRight0~198_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~198_combout\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight0~212_combout\);

-- Location: LCCOMB_X59_Y46_N30
\Y_ShiftOrArith[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~9_combout\ = (\ShiftFN[1]~input_o\ & ((\B[4]~input_o\ & ((\Shift|ShiftRight0~212_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~200_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight0~212_combout\,
	combout => \Y_ShiftOrArith[31]~9_combout\);

-- Location: LCCOMB_X61_Y48_N4
\Shift|ShiftLeft0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~156_combout\ = (\Shift|ShiftLeft0~75_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~75_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Shift|ShiftLeft0~156_combout\);

-- Location: LCCOMB_X54_Y51_N28
\Shift|ShiftLeft0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~157_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~157_combout\);

-- Location: LCCOMB_X54_Y51_N6
\Shift|ShiftLeft0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~158_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~150_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~157_combout\,
	datac => \Shift|ShiftLeft0~150_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~158_combout\);

-- Location: LCCOMB_X62_Y48_N6
\Shift|ShiftLeft0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~159_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~113_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~113_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~158_combout\,
	combout => \Shift|ShiftLeft0~159_combout\);

-- Location: LCCOMB_X62_Y48_N0
\Shift|ShiftLeft0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~160_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~134_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~159_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~134_combout\,
	combout => \Shift|ShiftLeft0~160_combout\);

-- Location: LCCOMB_X60_Y49_N2
\Y_ShiftOrArith[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~8_combout\ = (\Mux6~0_combout\ & ((\B[4]~input_o\ & (\Shift|ShiftLeft0~156_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Shift|ShiftLeft0~156_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Y_ShiftOrArith[31]~8_combout\);

-- Location: LCCOMB_X59_Y45_N24
\Y_ShiftOrArith[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~10_combout\ = (\Y_ShiftOrArith[31]~7_combout\) # ((!\B[5]~input_o\ & ((\Y_ShiftOrArith[31]~9_combout\) # (\Y_ShiftOrArith[31]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~7_combout\,
	datab => \B[5]~input_o\,
	datac => \Y_ShiftOrArith[31]~9_combout\,
	datad => \Y_ShiftOrArith[31]~8_combout\,
	combout => \Y_ShiftOrArith[31]~10_combout\);

-- Location: LCCOMB_X59_Y45_N18
\Y_ShiftOrArith[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~11_combout\ = (\Y_ShiftOrArith[31]~10_combout\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \Add|S\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Add|S\(31),
	datad => \Y_ShiftOrArith[31]~10_combout\,
	combout => \Y_ShiftOrArith[31]~11_combout\);

-- Location: LCCOMB_X54_Y50_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux32~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux32~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux32~0_combout\);

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

-- Location: LCCOMB_X57_Y46_N8
\Y_ShiftOrArith[32]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~12_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Shift|ShiftRight0~28_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~28_combout\,
	datad => \Shift|ShiftRight0~72_combout\,
	combout => \Y_ShiftOrArith[32]~12_combout\);

-- Location: LCCOMB_X57_Y46_N18
\Y_ShiftOrArith[32]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~13_combout\ = (\Y_ShiftOrArith[32]~12_combout\) # ((\B[5]~input_o\ & (\ShiftFN[0]~input_o\ & \A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Y_ShiftOrArith[32]~12_combout\,
	combout => \Y_ShiftOrArith[32]~13_combout\);

-- Location: LCCOMB_X59_Y45_N8
\Add|P[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(32) = \A[32]~input_o\ $ (\B[32]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(32));

-- Location: LCCOMB_X58_Y53_N28
\Shift|ShiftLeft0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~161_combout\ = (\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|ShiftLeft0~161_combout\);

-- Location: LCCOMB_X58_Y53_N30
\Shift|ShiftLeft0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~162_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~157_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~157_combout\,
	datad => \Shift|ShiftLeft0~161_combout\,
	combout => \Shift|ShiftLeft0~162_combout\);

-- Location: LCCOMB_X60_Y47_N28
\Shift|ShiftLeft0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~163_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~117_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~117_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~162_combout\,
	combout => \Shift|ShiftLeft0~163_combout\);

-- Location: LCCOMB_X60_Y47_N6
\Shift|ShiftLeft0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~164_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~140_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~140_combout\,
	datad => \Shift|ShiftLeft0~163_combout\,
	combout => \Shift|ShiftLeft0~164_combout\);

-- Location: LCCOMB_X59_Y45_N4
\Y_ShiftOrArith[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~14_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Shift|ShiftLeft0~81_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~164_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftLeft0~81_combout\,
	combout => \Y_ShiftOrArith[32]~14_combout\);

-- Location: LCCOMB_X59_Y45_N30
\Y_ShiftOrArith[32]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~15_combout\ = (\Y_ShiftOrArith[32]~14_combout\) # ((\A[0]~input_o\ & (\B[5]~input_o\ & !\Shift|ShiftLeft0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Y_ShiftOrArith[32]~14_combout\,
	datad => \Shift|ShiftLeft0~155_combout\,
	combout => \Y_ShiftOrArith[32]~15_combout\);

-- Location: LCCOMB_X59_Y45_N10
\Y_ShiftOrArith[32]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~16_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[32]~15_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Add|P\(32) $ (((\Add|block_carry_in[8]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|P\(32),
	datac => \Y_ShiftOrArith[32]~15_combout\,
	datad => \Add|block_carry_in[8]~63_combout\,
	combout => \Y_ShiftOrArith[32]~16_combout\);

-- Location: LCCOMB_X54_Y45_N24
\Y_ShiftOrArith[32]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~17_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[32]~13_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[32]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~13_combout\,
	datab => \Y_ShiftOrArith[32]~16_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[32]~17_combout\);

-- Location: LCCOMB_X54_Y45_N10
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\ExtWord~input_o\ & \Y_ShiftOrArith[31]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X54_Y48_N16
\Logic|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = (\B[32]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[32]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: LCCOMB_X54_Y45_N4
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux31~0_combout\) # ((\FuncClass[0]~input_o\ & \Logic|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Logic|Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X53_Y48_N2
\Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (\B[33]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[33]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Mux30~10_combout\);

-- Location: LCCOMB_X57_Y49_N26
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X57_Y49_N28
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = ((!\B[5]~input_o\ & !\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X57_Y49_N30
\Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X60_Y49_N22
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\B[5]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X54_Y48_N18
\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[8]~63_combout\ & ((\A[32]~input_o\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\Add|block_carry_in[8]~63_combout\ & (\A[32]~input_o\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[8]~63_combout\,
	datab => \A[32]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X53_Y48_N20
\Add|S[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(33) = \AddnSub~input_o\ $ (\A[33]~input_o\ $ (\B[33]~input_o\ $ (\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(33));

-- Location: LCCOMB_X60_Y49_N16
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ((!\B[5]~input_o\ & \B[4]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Shift|ShiftLeft0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~166_combout\ = (\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[33]~input_o\,
	combout => \Shift|ShiftLeft0~166_combout\);

-- Location: LCCOMB_X58_Y53_N18
\Shift|ShiftLeft0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~167_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~161_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~166_combout\,
	datad => \Shift|ShiftLeft0~161_combout\,
	combout => \Shift|ShiftLeft0~167_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Shift|ShiftLeft0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~168_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~123_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~123_combout\,
	datac => \Shift|ShiftLeft0~167_combout\,
	combout => \Shift|ShiftLeft0~168_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Shift|ShiftLeft0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~169_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~145_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~168_combout\,
	datad => \Shift|ShiftLeft0~145_combout\,
	combout => \Shift|ShiftLeft0~169_combout\);

-- Location: LCCOMB_X56_Y51_N6
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & ((\Shift|ShiftLeft0~86_combout\) # ((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & (((\Mux30~1_combout\ & \Shift|ShiftLeft0~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~86_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux30~1_combout\,
	datad => \Shift|ShiftLeft0~169_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X60_Y49_N12
\Shift|ShiftLeft0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~165_combout\ = (!\Shift|ShiftLeft0~20_combout\ & (!\B[4]~input_o\ & \Shift|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~20_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~19_combout\,
	combout => \Shift|ShiftLeft0~165_combout\);

-- Location: LCCOMB_X60_Y49_N10
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~1_combout\ & (((\Mux30~3_combout\)))) # (!\Mux30~1_combout\ & ((\Mux30~3_combout\ & (\Add|S\(33))) # (!\Mux30~3_combout\ & ((\Shift|ShiftLeft0~165_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Add|S\(33),
	datac => \Mux30~3_combout\,
	datad => \Shift|ShiftLeft0~165_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X56_Y47_N22
\Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~103_combout\))) # (!\Mux30~6_combout\ & (\Mux30~4_combout\)))) # (!\Mux30~5_combout\ & (!\Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~4_combout\,
	datad => \Shift|ShiftRight0~103_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X56_Y47_N8
\Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux30~0_combout\ & ((\Mux30~7_combout\ & ((\Shift|ShiftRight1~30_combout\))) # (!\Mux30~7_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux30~7_combout\,
	datad => \Shift|ShiftRight1~30_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X54_Y45_N6
\Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~8_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X54_Y45_N8
\Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux30~9_combout\) # ((\Mux30~10_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux30~9_combout\,
	combout => \Mux30~11_combout\);

-- Location: LCCOMB_X53_Y48_N4
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\B[34]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[34]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X54_Y48_N28
\Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(32) & ((\A[33]~input_o\) # (\AddnSub~input_o\ $ (\B[33]~input_o\)))) # (!\Add|G\(32) & (\A[33]~input_o\ & (\AddnSub~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[33]~input_o\,
	datac => \Add|G\(32),
	datad => \A[33]~input_o\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X54_Y48_N22
\Add|S[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(34) = \Add|P\(34) $ (((\Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[8]~63_combout\ & \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(34),
	datab => \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|block_carry_in[8]~63_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\,
	combout => \Add|S\(34));

-- Location: LCCOMB_X58_Y53_N12
\Shift|ShiftLeft0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~170_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftLeft0~170_combout\);

-- Location: LCCOMB_X58_Y53_N6
\Shift|ShiftLeft0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~171_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~166_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~166_combout\,
	datad => \Shift|ShiftLeft0~170_combout\,
	combout => \Shift|ShiftLeft0~171_combout\);

-- Location: LCCOMB_X59_Y48_N28
\Shift|ShiftLeft0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~172_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~128_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~128_combout\,
	datad => \Shift|ShiftLeft0~171_combout\,
	combout => \Shift|ShiftLeft0~172_combout\);

-- Location: LCCOMB_X59_Y48_N6
\Shift|ShiftLeft0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~173_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~152_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~172_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~152_combout\,
	combout => \Shift|ShiftLeft0~173_combout\);

-- Location: LCCOMB_X57_Y48_N14
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & ((\Shift|ShiftLeft0~173_combout\))) # (!\Mux30~1_combout\ & (\Shift|ShiftLeft0~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~279_combout\,
	datab => \Mux30~2_combout\,
	datac => \Shift|ShiftLeft0~173_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X57_Y48_N24
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux30~2_combout\ & ((\Mux29~0_combout\ & (\Add|S\(34))) # (!\Mux29~0_combout\ & ((\Shift|ShiftLeft0~92_combout\))))) # (!\Mux30~2_combout\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(34),
	datab => \Mux30~2_combout\,
	datac => \Mux29~0_combout\,
	datad => \Shift|ShiftLeft0~92_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X57_Y52_N30
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux30~6_combout\ & (((\Shift|ShiftRight0~113_combout\ & \Mux30~5_combout\)))) # (!\Mux30~6_combout\ & ((\Mux29~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux29~1_combout\,
	datac => \Shift|ShiftRight0~113_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X57_Y52_N16
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux30~0_combout\ & ((\Mux29~2_combout\ & ((\Shift|ShiftRight1~63_combout\))) # (!\Mux29~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Mux29~2_combout\,
	datad => \Shift|ShiftRight1~63_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X54_Y45_N18
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X54_Y45_N20
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux29~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux29~5_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X59_Y52_N8
\Shift|ShiftLeft0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~174_combout\ = (\B[1]~input_o\ & ((\A[33]~input_o\))) # (!\B[1]~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftLeft0~174_combout\);

-- Location: LCCOMB_X59_Y52_N2
\Shift|ShiftLeft0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~175_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~170_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~170_combout\,
	datac => \Shift|ShiftLeft0~174_combout\,
	combout => \Shift|ShiftLeft0~175_combout\);

-- Location: LCCOMB_X62_Y48_N18
\Shift|ShiftLeft0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~176_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~133_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~175_combout\,
	datad => \Shift|ShiftLeft0~133_combout\,
	combout => \Shift|ShiftLeft0~176_combout\);

-- Location: LCCOMB_X62_Y48_N28
\Shift|ShiftLeft0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~177_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~159_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~159_combout\,
	datab => \Shift|ShiftLeft0~176_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~177_combout\);

-- Location: LCCOMB_X61_Y48_N6
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux30~1_combout\ & ((\Mux30~2_combout\ & (\Shift|ShiftLeft0~98_combout\)) # (!\Mux30~2_combout\ & ((\Shift|ShiftLeft0~177_combout\))))) # (!\Mux30~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Shift|ShiftLeft0~98_combout\,
	datac => \Mux30~2_combout\,
	datad => \Shift|ShiftLeft0~177_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X53_Y48_N6
\Add|G[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(33) = (\A[33]~input_o\ & (\AddnSub~input_o\ $ (\B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Add|G\(33));

-- Location: LCCOMB_X53_Y48_N16
\Add|GEN_BLOCKS:8:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ = (\A[34]~input_o\ & ((\Add|G\(33)) # (\B[34]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[34]~input_o\ & (\Add|G\(33) & (\B[34]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \A[34]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(33),
	combout => \Add|GEN_BLOCKS:8:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X54_Y48_N24
\Add|GEN_BLOCKS:8:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[8]~63_combout\ & ((\A[32]~input_o\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\Add|block_carry_in[8]~63_combout\ & (\A[32]~input_o\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[8]~63_combout\,
	datab => \A[32]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X53_Y48_N18
\Add|GEN_BLOCKS:8:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:8:LACG_INST|g_int~2_combout\) # ((\Add|P\(34) & (\Add|P\(33) & \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(34),
	datab => \Add|P\(33),
	datac => \Add|GEN_BLOCKS:8:LACG_INST|g_int~2_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X53_Y48_N28
\Add|S[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(35) = \AddnSub~input_o\ $ (\B[35]~input_o\ $ (\A[35]~input_o\ $ (\Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(35));

-- Location: LCCOMB_X57_Y48_N18
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & ((\Mux30~1_combout\) # ((\Add|S\(35))))) # (!\Mux28~0_combout\ & (!\Mux30~1_combout\ & ((\Shift|ShiftLeft0~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux30~1_combout\,
	datac => \Add|S\(35),
	datad => \Shift|ShiftLeft0~280_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X58_Y48_N28
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux30~6_combout\ & (((\Mux30~5_combout\ & \Shift|ShiftRight0~124_combout\)))) # (!\Mux30~6_combout\ & ((\Mux28~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux28~1_combout\,
	datac => \Mux30~5_combout\,
	datad => \Shift|ShiftRight0~124_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X58_Y48_N14
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux30~0_combout\ & ((\Mux28~2_combout\ & ((\Shift|ShiftRight1~80_combout\))) # (!\Mux28~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (\Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux28~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~80_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X54_Y45_N30
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X53_Y48_N22
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\B[35]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[35]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X54_Y45_N16
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux28~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X54_Y53_N26
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\B[36]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[36]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X59_Y52_N20
\Shift|ShiftLeft0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~178_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftLeft0~178_combout\);

-- Location: LCCOMB_X59_Y52_N30
\Shift|ShiftLeft0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~179_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~174_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~178_combout\,
	datac => \Shift|ShiftLeft0~174_combout\,
	combout => \Shift|ShiftLeft0~179_combout\);

-- Location: LCCOMB_X60_Y47_N24
\Shift|ShiftLeft0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~180_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~139_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~179_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~139_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~180_combout\);

-- Location: LCCOMB_X60_Y47_N18
\Shift|ShiftLeft0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~181_combout\ = (\Shift|ShiftLeft0~180_combout\) # ((\Shift|ShiftLeft0~163_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~163_combout\,
	datac => \Shift|ShiftLeft0~180_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~181_combout\);

-- Location: LCCOMB_X56_Y50_N6
\Shift|ShiftLeft0~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~286_combout\ = (!\B[3]~input_o\ & (\Shift|ShiftLeft0~31_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~31_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~286_combout\);

-- Location: LCCOMB_X56_Y50_N30
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux30~1_combout\ & (!\Mux30~2_combout\ & (\Shift|ShiftLeft0~181_combout\))) # (!\Mux30~1_combout\ & ((\Mux30~2_combout\) # ((\Shift|ShiftLeft0~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Mux30~2_combout\,
	datac => \Shift|ShiftLeft0~181_combout\,
	datad => \Shift|ShiftLeft0~286_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X54_Y48_N2
\Add|block_carry_in[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~54_combout\ = (\Add|block_carry_in[9]~13_combout\) # ((\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[8]~63_combout\ & \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~13_combout\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[8]~63_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[9]~54_combout\);

-- Location: LCCOMB_X54_Y52_N22
\Add|S[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(36) = \AddnSub~input_o\ $ (\B[36]~input_o\ $ (\A[36]~input_o\ $ (\Add|block_carry_in[9]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[36]~input_o\,
	datad => \Add|block_carry_in[9]~54_combout\,
	combout => \Add|S\(36));

-- Location: LCCOMB_X56_Y50_N24
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux30~2_combout\ & ((\Mux27~0_combout\ & ((\Add|S\(36)))) # (!\Mux27~0_combout\ & (\Shift|ShiftLeft0~103_combout\)))) # (!\Mux30~2_combout\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~103_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux27~0_combout\,
	datad => \Add|S\(36),
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X56_Y50_N2
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~135_combout\))) # (!\Mux30~6_combout\ & (\Mux27~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux27~1_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~135_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X56_Y50_N12
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux30~0_combout\ & ((\Mux27~2_combout\ & ((\Shift|ShiftRight1~82_combout\))) # (!\Mux27~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~82_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X54_Y53_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X54_Y53_N28
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux27~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux27~5_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X54_Y53_N8
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\B[37]~input_o\ & ((\A[37]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X53_Y50_N6
\Shift|ShiftLeft0~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~287_combout\ = (\Shift|ShiftLeft0~34_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~287_combout\);

-- Location: LCCOMB_X59_Y52_N16
\Shift|ShiftLeft0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~182_combout\ = (\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[35]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Shift|ShiftLeft0~182_combout\);

-- Location: LCCOMB_X59_Y52_N26
\Shift|ShiftLeft0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~183_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~178_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~182_combout\,
	datad => \Shift|ShiftLeft0~178_combout\,
	combout => \Shift|ShiftLeft0~183_combout\);

-- Location: LCCOMB_X57_Y51_N28
\Shift|ShiftLeft0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~184_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~144_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~183_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~144_combout\,
	datad => \Shift|ShiftLeft0~183_combout\,
	combout => \Shift|ShiftLeft0~184_combout\);

-- Location: LCCOMB_X57_Y51_N14
\Shift|ShiftLeft0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~185_combout\ = (\Shift|ShiftLeft0~184_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~168_combout\,
	datad => \Shift|ShiftLeft0~184_combout\,
	combout => \Shift|ShiftLeft0~185_combout\);

-- Location: LCCOMB_X53_Y50_N26
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux30~2_combout\ & (((\Shift|ShiftLeft0~107_combout\)) # (!\Mux30~1_combout\))) # (!\Mux30~2_combout\ & (\Mux30~1_combout\ & (\Shift|ShiftLeft0~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Mux30~1_combout\,
	datac => \Shift|ShiftLeft0~185_combout\,
	datad => \Shift|ShiftLeft0~107_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X54_Y52_N8
\Add|GEN_BLOCKS:9:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\ = (\A[36]~input_o\ & ((\Add|block_carry_in[9]~54_combout\) # (\AddnSub~input_o\ $ (\B[36]~input_o\)))) # (!\A[36]~input_o\ & (\Add|block_carry_in[9]~54_combout\ & (\AddnSub~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[36]~input_o\,
	datad => \Add|block_carry_in[9]~54_combout\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X54_Y52_N30
\Add|S[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(37) = \AddnSub~input_o\ $ (\A[37]~input_o\ $ (\Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\ $ (\B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[37]~input_o\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\,
	datad => \B[37]~input_o\,
	combout => \Add|S\(37));

-- Location: LCCOMB_X53_Y50_N12
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux30~1_combout\ & (((\Mux26~0_combout\)))) # (!\Mux30~1_combout\ & ((\Mux26~0_combout\ & ((\Add|S\(37)))) # (!\Mux26~0_combout\ & (\Shift|ShiftLeft0~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~287_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Add|S\(37),
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X53_Y50_N22
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & (\Shift|ShiftRight0~140_combout\)) # (!\Mux30~6_combout\ & ((\Mux26~1_combout\))))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Shift|ShiftRight0~140_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X53_Y50_N8
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux26~2_combout\ & (((\Shift|ShiftRight1~85_combout\) # (!\Mux30~0_combout\)))) # (!\Mux26~2_combout\ & (\A[63]~input_o\ & ((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight1~85_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X54_Y53_N6
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux26~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X54_Y53_N18
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux26~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux26~5_combout\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X49_Y52_N10
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X54_Y52_N26
\Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\ = (\A[37]~input_o\ & ((\Add|G\(36)) # (\AddnSub~input_o\ $ (\B[37]~input_o\)))) # (!\A[37]~input_o\ & (\Add|G\(36) & (\AddnSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \Add|G\(36),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X54_Y52_N4
\Add|S[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(38) = \Add|P\(38) $ (((\Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[9]~54_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~54_combout\,
	datab => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\,
	datad => \Add|P\(38),
	combout => \Add|S\(38));

-- Location: LCCOMB_X56_Y48_N2
\Shift|ShiftLeft0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~186_combout\ = (!\Mux57~0_combout\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~23_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \Mux57~0_combout\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~186_combout\);

-- Location: LCCOMB_X57_Y52_N26
\Shift|ShiftLeft0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~187_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~187_combout\);

-- Location: LCCOMB_X59_Y52_N12
\Shift|ShiftLeft0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~188_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~182_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~187_combout\,
	datad => \Shift|ShiftLeft0~182_combout\,
	combout => \Shift|ShiftLeft0~188_combout\);

-- Location: LCCOMB_X59_Y48_N8
\Shift|ShiftLeft0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~189_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~151_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~151_combout\,
	datad => \Shift|ShiftLeft0~188_combout\,
	combout => \Shift|ShiftLeft0~189_combout\);

-- Location: LCCOMB_X59_Y48_N2
\Shift|ShiftLeft0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~190_combout\ = (\Shift|ShiftLeft0~189_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~189_combout\,
	datad => \Shift|ShiftLeft0~172_combout\,
	combout => \Shift|ShiftLeft0~190_combout\);

-- Location: LCCOMB_X57_Y48_N12
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & ((\Shift|ShiftLeft0~190_combout\))) # (!\Mux30~1_combout\ & (\Shift|ShiftLeft0~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~186_combout\,
	datab => \Mux30~2_combout\,
	datac => \Shift|ShiftLeft0~190_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X57_Y48_N6
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux30~2_combout\ & ((\Mux25~0_combout\ & (\Add|S\(38))) # (!\Mux25~0_combout\ & ((\Shift|ShiftLeft0~111_combout\))))) # (!\Mux30~2_combout\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(38),
	datab => \Mux30~2_combout\,
	datac => \Shift|ShiftLeft0~111_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & (\Shift|ShiftRight0~153_combout\)) # (!\Mux30~6_combout\ & ((\Mux25~1_combout\))))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Shift|ShiftRight0~153_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X57_Y50_N28
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux25~2_combout\ & (((\Shift|ShiftRight1~87_combout\) # (!\Mux30~0_combout\)))) # (!\Mux25~2_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~2_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~87_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X54_Y53_N12
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux25~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X54_Y53_N14
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux25~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux25~5_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X61_Y48_N8
\Shift|ShiftLeft0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~191_combout\ = (!\Mux57~0_combout\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~26_combout\,
	datab => \Mux57~0_combout\,
	datac => \Shift|ShiftLeft0~39_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~191_combout\);

-- Location: LCCOMB_X54_Y52_N0
\Add|GEN_BLOCKS:9:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ = (\A[36]~input_o\ & ((\Add|block_carry_in[9]~54_combout\) # (\AddnSub~input_o\ $ (\B[36]~input_o\)))) # (!\A[36]~input_o\ & (\Add|block_carry_in[9]~54_combout\ & (\AddnSub~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[36]~input_o\,
	datac => \A[36]~input_o\,
	datad => \Add|block_carry_in[9]~54_combout\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X54_Y52_N14
\Add|G[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(37) = (\A[37]~input_o\ & (\AddnSub~input_o\ $ (\B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Add|G\(37));

-- Location: LCCOMB_X49_Y52_N12
\Add|GEN_BLOCKS:9:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ = (\A[38]~input_o\ & ((\Add|G\(37)) # (\B[38]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[38]~input_o\ & (\Add|G\(37) & (\B[38]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \Add|G\(37),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X54_Y52_N18
\Add|GEN_BLOCKS:9:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\) # ((\Add|P\(38) & (\Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ & \Add|P\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(38),
	datab => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\,
	datad => \Add|P\(37),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X54_Y52_N20
\Add|S[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(39) = \AddnSub~input_o\ $ (\B[39]~input_o\ $ (\A[39]~input_o\ $ (\Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(39));

-- Location: LCCOMB_X60_Y52_N2
\Shift|ShiftLeft0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~192_combout\ = (\B[1]~input_o\ & (\A[37]~input_o\)) # (!\B[1]~input_o\ & ((\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Shift|ShiftLeft0~192_combout\);

-- Location: LCCOMB_X59_Y52_N6
\Shift|ShiftLeft0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~193_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~187_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~187_combout\,
	datad => \Shift|ShiftLeft0~192_combout\,
	combout => \Shift|ShiftLeft0~193_combout\);

-- Location: LCCOMB_X62_Y48_N30
\Shift|ShiftLeft0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~194_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~158_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~193_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~158_combout\,
	combout => \Shift|ShiftLeft0~194_combout\);

-- Location: LCCOMB_X62_Y48_N8
\Shift|ShiftLeft0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~195_combout\ = (\Shift|ShiftLeft0~194_combout\) # ((\Shift|ShiftLeft0~176_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~194_combout\,
	datab => \Shift|ShiftLeft0~176_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~195_combout\);

-- Location: LCCOMB_X61_Y48_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux30~1_combout\ & ((\Mux30~2_combout\ & (\Shift|ShiftLeft0~115_combout\)) # (!\Mux30~2_combout\ & ((\Shift|ShiftLeft0~195_combout\))))) # (!\Mux30~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Shift|ShiftLeft0~115_combout\,
	datac => \Mux30~2_combout\,
	datad => \Shift|ShiftLeft0~195_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X60_Y46_N26
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux30~1_combout\ & (((\Mux24~0_combout\)))) # (!\Mux30~1_combout\ & ((\Mux24~0_combout\ & ((\Add|S\(39)))) # (!\Mux24~0_combout\ & (\Shift|ShiftLeft0~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~191_combout\,
	datab => \Mux30~1_combout\,
	datac => \Add|S\(39),
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X60_Y46_N28
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~158_combout\))) # (!\Mux30~6_combout\ & (\Mux24~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux30~5_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~158_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X60_Y46_N30
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux30~0_combout\ & ((\Mux24~2_combout\ & (\Shift|ShiftRight1~89_combout\)) # (!\Mux24~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~89_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X54_Y53_N24
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux24~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \Mux24~3_combout\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X54_Y53_N10
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[39]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X54_Y53_N20
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux24~4_combout\) # ((\Mux24~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X60_Y45_N2
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X60_Y47_N4
\Shift|ShiftLeft0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~196_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~139_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~139_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~162_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~196_combout\);

-- Location: LCCOMB_X60_Y52_N20
\Shift|ShiftLeft0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~197_combout\ = (\B[1]~input_o\ & ((\A[38]~input_o\))) # (!\B[1]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Shift|ShiftLeft0~197_combout\);

-- Location: LCCOMB_X60_Y52_N30
\Shift|ShiftLeft0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~198_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~192_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~197_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~192_combout\,
	combout => \Shift|ShiftLeft0~198_combout\);

-- Location: LCCOMB_X62_Y51_N14
\Shift|ShiftLeft0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~199_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~179_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~179_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~198_combout\,
	combout => \Shift|ShiftLeft0~199_combout\);

-- Location: LCCOMB_X60_Y48_N26
\Shift|ShiftLeft0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~200_combout\ = (\Shift|ShiftLeft0~196_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~196_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~199_combout\,
	combout => \Shift|ShiftLeft0~200_combout\);

-- Location: LCCOMB_X54_Y46_N20
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & (\Shift|ShiftLeft0~200_combout\)) # (!\Mux30~1_combout\ & ((\Shift|ShiftLeft0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~200_combout\,
	datab => \Shift|ShiftLeft0~45_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X54_Y49_N6
\Add|S[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(40) = \Add|P\(40) $ (((\Add|block_carry_in[10]~41_combout\) # (\Add|block_carry_in[10]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(40),
	datac => \Add|block_carry_in[10]~41_combout\,
	datad => \Add|block_carry_in[10]~43_combout\,
	combout => \Add|S\(40));

-- Location: LCCOMB_X54_Y46_N22
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\Add|S\(40)) # (!\Mux30~2_combout\)))) # (!\Mux23~0_combout\ & (\Shift|ShiftLeft0~119_combout\ & (\Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~119_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Add|S\(40),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X54_Y46_N0
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux30~6_combout\ & (((\Mux30~5_combout\ & \Shift|ShiftRight0~214_combout\)))) # (!\Mux30~6_combout\ & ((\Mux23~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \Shift|ShiftRight0~214_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X54_Y46_N26
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux30~0_combout\ & ((\Mux23~2_combout\ & (\Shift|ShiftRight1~91_combout\)) # (!\Mux23~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~91_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X60_Y45_N0
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X60_Y45_N28
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux23~4_combout\) # ((\Mux23~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~5_combout\,
	datab => \Mux23~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X54_Y49_N22
\Add|block_carry_in[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~55_combout\ = (\Add|block_carry_in[10]~43_combout\) # ((\Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (\Add|block_carry_in[9]~54_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	datab => \Add|block_carry_in[9]~54_combout\,
	datac => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[10]~43_combout\,
	combout => \Add|block_carry_in[10]~55_combout\);

-- Location: LCCOMB_X54_Y49_N16
\Add|GEN_BLOCKS:10:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ = (\A[40]~input_o\ & ((\Add|block_carry_in[10]~55_combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\Add|block_carry_in[10]~55_combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[40]~input_o\,
	datac => \Add|block_carry_in[10]~55_combout\,
	datad => \B[40]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X53_Y49_N30
\Add|S[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(41) = \B[41]~input_o\ $ (\A[41]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(41));

-- Location: LCCOMB_X57_Y51_N16
\Shift|ShiftLeft0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~201_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~144_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~144_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~167_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~201_combout\);

-- Location: LCCOMB_X60_Y52_N16
\Shift|ShiftLeft0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~202_combout\ = (\B[1]~input_o\ & (\A[39]~input_o\)) # (!\B[1]~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Shift|ShiftLeft0~202_combout\);

-- Location: LCCOMB_X60_Y52_N26
\Shift|ShiftLeft0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~203_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~197_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~202_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~197_combout\,
	combout => \Shift|ShiftLeft0~203_combout\);

-- Location: LCCOMB_X57_Y51_N2
\Shift|ShiftLeft0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~204_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~183_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~203_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~183_combout\,
	combout => \Shift|ShiftLeft0~204_combout\);

-- Location: LCCOMB_X57_Y51_N4
\Shift|ShiftLeft0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~205_combout\ = (\Shift|ShiftLeft0~201_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~201_combout\,
	datad => \Shift|ShiftLeft0~204_combout\,
	combout => \Shift|ShiftLeft0~205_combout\);

-- Location: LCCOMB_X60_Y49_N28
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux30~1_combout\ & ((\Mux30~2_combout\ & (\Shift|ShiftLeft0~125_combout\)) # (!\Mux30~2_combout\ & ((\Shift|ShiftLeft0~205_combout\))))) # (!\Mux30~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~125_combout\,
	datab => \Shift|ShiftLeft0~205_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X60_Y49_N14
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux30~1_combout\ & (((\Mux22~0_combout\)))) # (!\Mux30~1_combout\ & ((\Mux22~0_combout\ & ((\Add|S\(41)))) # (!\Mux22~0_combout\ & (\Shift|ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~50_combout\,
	datab => \Add|S\(41),
	datac => \Mux30~1_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X53_Y46_N26
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux30~6_combout\ & (((\Mux30~5_combout\ & \Shift|ShiftRight0~172_combout\)))) # (!\Mux30~6_combout\ & ((\Mux22~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \Shift|ShiftRight0~172_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X53_Y46_N20
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\Shift|ShiftRight1~93_combout\)) # (!\Mux30~0_combout\))) # (!\Mux22~2_combout\ & (\Mux30~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~93_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X54_Y45_N26
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux22~3_combout\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X53_Y49_N8
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\B[41]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[41]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X54_Y45_N28
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux22~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux22~4_combout\,
	datad => \Mux22~5_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X59_Y48_N20
\Shift|ShiftLeft0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~206_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~151_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~151_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~171_combout\,
	combout => \Shift|ShiftLeft0~206_combout\);

-- Location: LCCOMB_X60_Y52_N12
\Shift|ShiftLeft0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~207_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|ShiftLeft0~207_combout\);

-- Location: LCCOMB_X60_Y52_N22
\Shift|ShiftLeft0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~208_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~202_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~202_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~207_combout\,
	combout => \Shift|ShiftLeft0~208_combout\);

-- Location: LCCOMB_X59_Y48_N14
\Shift|ShiftLeft0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~209_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~188_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~208_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~188_combout\,
	combout => \Shift|ShiftLeft0~209_combout\);

-- Location: LCCOMB_X59_Y48_N0
\Shift|ShiftLeft0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~210_combout\ = (\Shift|ShiftLeft0~206_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~206_combout\,
	datac => \Shift|ShiftLeft0~209_combout\,
	combout => \Shift|ShiftLeft0~210_combout\);

-- Location: LCCOMB_X55_Y48_N30
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & (\Shift|ShiftLeft0~210_combout\)) # (!\Mux30~1_combout\ & ((\Shift|ShiftLeft0~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~210_combout\,
	datab => \Shift|ShiftLeft0~55_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X54_Y49_N18
\Add|GEN_BLOCKS:10:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ = (\Add|P\(41) & (\AddnSub~input_o\ $ (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[40]~input_o\,
	datac => \Add|P\(41),
	datad => \B[40]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X53_Y49_N2
\Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ = (\A[41]~input_o\ & ((\Add|G\(40)) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[41]~input_o\ & (\Add|G\(40) & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(40),
	combout => \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X54_Y49_N20
\Add|S[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(42) = \Add|P\(42) $ (((\Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & \Add|block_carry_in[10]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(42),
	datab => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datac => \Add|block_carry_in[10]~55_combout\,
	datad => \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\,
	combout => \Add|S\(42));

-- Location: LCCOMB_X55_Y48_N16
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\Add|S\(42)) # ((!\Mux30~2_combout\)))) # (!\Mux21~0_combout\ & (((\Mux30~2_combout\ & \Shift|ShiftLeft0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Add|S\(42),
	datac => \Mux30~2_combout\,
	datad => \Shift|ShiftLeft0~130_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X57_Y50_N30
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~215_combout\))) # (!\Mux30~6_combout\ & (\Mux21~1_combout\)))) # (!\Mux30~5_combout\ & (!\Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux21~1_combout\,
	datad => \Shift|ShiftRight0~215_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X58_Y52_N20
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & (((\Shift|ShiftRight1~95_combout\) # (!\Mux30~0_combout\)))) # (!\Mux21~2_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~95_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X54_Y53_N30
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X53_Y49_N4
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[42]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[42]~input_o\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X54_Y53_N16
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux21~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux21~4_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X62_Y48_N26
\Shift|ShiftLeft0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~211_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~158_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~175_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~158_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~175_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~211_combout\);

-- Location: LCCOMB_X62_Y51_N0
\Shift|ShiftLeft0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~212_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Shift|ShiftLeft0~212_combout\);

-- Location: LCCOMB_X62_Y51_N26
\Shift|ShiftLeft0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~213_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~207_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~207_combout\,
	datad => \Shift|ShiftLeft0~212_combout\,
	combout => \Shift|ShiftLeft0~213_combout\);

-- Location: LCCOMB_X62_Y48_N12
\Shift|ShiftLeft0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~214_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~193_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~193_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~213_combout\,
	combout => \Shift|ShiftLeft0~214_combout\);

-- Location: LCCOMB_X62_Y48_N14
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

-- Location: LCCOMB_X55_Y48_N2
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux30~1_combout\ & ((\Mux30~2_combout\ & ((\Shift|ShiftLeft0~135_combout\))) # (!\Mux30~2_combout\ & (\Shift|ShiftLeft0~215_combout\)))) # (!\Mux30~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Shift|ShiftLeft0~215_combout\,
	datac => \Mux30~2_combout\,
	datad => \Shift|ShiftLeft0~135_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X53_Y49_N6
\Add|G[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(41) = (\A[41]~input_o\ & (\AddnSub~input_o\ $ (\B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \Add|G\(41));

-- Location: LCCOMB_X53_Y49_N24
\Add|GEN_BLOCKS:10:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ = (\Add|G\(41) & ((\A[42]~input_o\) # (\AddnSub~input_o\ $ (\B[42]~input_o\)))) # (!\Add|G\(41) & (\A[42]~input_o\ & (\AddnSub~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(41),
	datab => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X54_Y49_N30
\Add|GEN_BLOCKS:10:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ = (\Add|G\(40)) # ((\Add|P\(40) & ((\Add|block_carry_in[10]~41_combout\) # (\Add|block_carry_in[10]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(40),
	datab => \Add|G\(40),
	datac => \Add|block_carry_in[10]~41_combout\,
	datad => \Add|block_carry_in[10]~43_combout\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X54_Y49_N0
\Add|GEN_BLOCKS:10:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|g_int~1_combout\) # ((\Add|P\(42) & (\Add|P\(41) & \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(42),
	datab => \Add|GEN_BLOCKS:10:LACG_INST|g_int~1_combout\,
	datac => \Add|P\(41),
	datad => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X54_Y49_N2
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

-- Location: LCCOMB_X55_Y48_N4
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\Add|S\(43)) # (\Mux30~1_combout\)))) # (!\Mux20~0_combout\ & (\Shift|ShiftLeft0~60_combout\ & ((!\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~60_combout\,
	datab => \Mux20~0_combout\,
	datac => \Add|S\(43),
	datad => \Mux30~1_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X58_Y46_N26
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux30~6_combout\ & (((\Shift|ShiftRight0~216_combout\ & \Mux30~5_combout\)))) # (!\Mux30~6_combout\ & ((\Mux20~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux30~6_combout\,
	datac => \Shift|ShiftRight0~216_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X58_Y46_N20
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~2_combout\ & (((\Shift|ShiftRight1~97_combout\)) # (!\Mux30~0_combout\))) # (!\Mux20~2_combout\ & (\Mux30~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~97_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X54_Y45_N14
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X58_Y48_N16
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[43]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X58_Y48_N26
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux20~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X57_Y54_N4
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\B[44]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[44]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X60_Y47_N22
\Shift|ShiftLeft0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~216_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~162_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~179_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~162_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~216_combout\);

-- Location: LCCOMB_X62_Y51_N12
\Shift|ShiftLeft0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~217_combout\ = (\B[1]~input_o\ & (\A[42]~input_o\)) # (!\B[1]~input_o\ & ((\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Shift|ShiftLeft0~217_combout\);

-- Location: LCCOMB_X62_Y51_N6
\Shift|ShiftLeft0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~218_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~212_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~212_combout\,
	datad => \Shift|ShiftLeft0~217_combout\,
	combout => \Shift|ShiftLeft0~218_combout\);

-- Location: LCCOMB_X62_Y51_N24
\Shift|ShiftLeft0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~219_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~198_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~198_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~218_combout\,
	combout => \Shift|ShiftLeft0~219_combout\);

-- Location: LCCOMB_X56_Y46_N16
\Shift|ShiftLeft0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~220_combout\ = (\Shift|ShiftLeft0~216_combout\) # ((\Shift|ShiftLeft0~219_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~216_combout\,
	datab => \Shift|ShiftLeft0~219_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~220_combout\);

-- Location: LCCOMB_X55_Y48_N14
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & ((\Shift|ShiftLeft0~220_combout\))) # (!\Mux30~1_combout\ & (\Shift|ShiftLeft0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~64_combout\,
	datab => \Shift|ShiftLeft0~220_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X55_Y51_N30
\Add|S[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(44) = \A[44]~input_o\ $ (\Add|block_carry_in[11]~44_combout\ $ (\B[44]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Add|block_carry_in[11]~44_combout\,
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(44));

-- Location: LCCOMB_X56_Y50_N14
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & ((\Add|S\(44)) # ((!\Mux30~2_combout\)))) # (!\Mux19~0_combout\ & (((\Shift|ShiftLeft0~141_combout\ & \Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Add|S\(44),
	datac => \Shift|ShiftLeft0~141_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X56_Y50_N16
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~188_combout\))) # (!\Mux30~6_combout\ & (\Mux19~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~188_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X57_Y46_N20
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux30~0_combout\ & ((\Mux19~2_combout\ & (\Shift|ShiftRight1~99_combout\)) # (!\Mux19~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~99_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X54_Y45_N0
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X54_Y45_N2
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux19~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux19~5_combout\,
	datad => \Mux19~4_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X55_Y51_N8
\Add|GEN_BLOCKS:11:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|C[1]~0_combout\ = (\A[44]~input_o\ & ((\Add|block_carry_in[11]~44_combout\) # (\B[44]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[44]~input_o\ & (\Add|block_carry_in[11]~44_combout\ & (\B[44]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Add|block_carry_in[11]~44_combout\,
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X56_Y51_N20
\Add|S[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(45) = \AddnSub~input_o\ $ (\B[45]~input_o\ $ (\A[45]~input_o\ $ (\Add|GEN_BLOCKS:11:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \Add|GEN_BLOCKS:11:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(45));

-- Location: LCCOMB_X57_Y51_N30
\Shift|ShiftLeft0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~221_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~167_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~183_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~167_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~183_combout\,
	combout => \Shift|ShiftLeft0~221_combout\);

-- Location: LCCOMB_X62_Y51_N18
\Shift|ShiftLeft0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~222_combout\ = (\B[1]~input_o\ & (\A[43]~input_o\)) # (!\B[1]~input_o\ & ((\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[43]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~222_combout\);

-- Location: LCCOMB_X62_Y51_N20
\Shift|ShiftLeft0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~223_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~217_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~222_combout\,
	datad => \Shift|ShiftLeft0~217_combout\,
	combout => \Shift|ShiftLeft0~223_combout\);

-- Location: LCCOMB_X56_Y51_N24
\Shift|ShiftLeft0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~224_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~203_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~223_combout\,
	datad => \Shift|ShiftLeft0~203_combout\,
	combout => \Shift|ShiftLeft0~224_combout\);

-- Location: LCCOMB_X56_Y51_N10
\Shift|ShiftLeft0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~225_combout\ = (\Shift|ShiftLeft0~221_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~221_combout\,
	datad => \Shift|ShiftLeft0~224_combout\,
	combout => \Shift|ShiftLeft0~225_combout\);

-- Location: LCCOMB_X56_Y51_N28
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux30~2_combout\ & (((\Shift|ShiftLeft0~146_combout\) # (!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & (\Shift|ShiftLeft0~225_combout\ & (\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~225_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux30~1_combout\,
	datad => \Shift|ShiftLeft0~146_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X56_Y51_N14
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux30~1_combout\ & (((\Mux18~0_combout\)))) # (!\Mux30~1_combout\ & ((\Mux18~0_combout\ & ((\Add|S\(45)))) # (!\Mux18~0_combout\ & (\Shift|ShiftLeft0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~68_combout\,
	datab => \Add|S\(45),
	datac => \Mux30~1_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X55_Y47_N18
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~192_combout\))) # (!\Mux30~6_combout\ & (\Mux18~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Shift|ShiftRight0~192_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X55_Y47_N12
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux30~0_combout\ & ((\Mux18~2_combout\ & ((\Shift|ShiftRight1~101_combout\))) # (!\Mux18~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux18~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~101_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X54_Y45_N12
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X55_Y53_N0
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\B[45]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[45]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[45]~input_o\ & (\A[45]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X55_Y53_N18
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux18~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux18~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X59_Y48_N18
\Shift|ShiftLeft0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~226_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~171_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~171_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~188_combout\,
	combout => \Shift|ShiftLeft0~226_combout\);

-- Location: LCCOMB_X62_Y51_N30
\Shift|ShiftLeft0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~227_combout\ = (\B[1]~input_o\ & ((\A[44]~input_o\))) # (!\B[1]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Shift|ShiftLeft0~227_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Shift|ShiftLeft0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~228_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~222_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~227_combout\,
	datad => \Shift|ShiftLeft0~222_combout\,
	combout => \Shift|ShiftLeft0~228_combout\);

-- Location: LCCOMB_X59_Y48_N12
\Shift|ShiftLeft0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~229_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~208_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~208_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~228_combout\,
	combout => \Shift|ShiftLeft0~229_combout\);

-- Location: LCCOMB_X59_Y48_N30
\Shift|ShiftLeft0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~230_combout\ = (\Shift|ShiftLeft0~226_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~226_combout\,
	datad => \Shift|ShiftLeft0~229_combout\,
	combout => \Shift|ShiftLeft0~230_combout\);

-- Location: LCCOMB_X55_Y48_N0
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux30~2_combout\ & (((!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & ((\Mux30~1_combout\ & (\Shift|ShiftLeft0~230_combout\)) # (!\Mux30~1_combout\ & ((\Shift|ShiftLeft0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~230_combout\,
	datab => \Shift|ShiftLeft0~72_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X55_Y51_N26
\Add|G[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(44) = (\A[44]~input_o\ & (\AddnSub~input_o\ $ (\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Add|G\(44));

-- Location: LCCOMB_X55_Y51_N4
\Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(44) & ((\A[45]~input_o\) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\Add|G\(44) & (\A[45]~input_o\ & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(44),
	datab => \AddnSub~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X55_Y51_N6
\Add|S[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(46) = \Add|P\(46) $ (((\Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[11]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\,
	datac => \Add|block_carry_in[11]~44_combout\,
	datad => \Add|P\(46),
	combout => \Add|S\(46));

-- Location: LCCOMB_X55_Y47_N30
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & ((\Add|S\(46)) # ((!\Mux30~2_combout\)))) # (!\Mux17~0_combout\ & (((\Shift|ShiftLeft0~153_combout\ & \Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \Add|S\(46),
	datac => \Shift|ShiftLeft0~153_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X55_Y47_N16
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~196_combout\))) # (!\Mux30~6_combout\ & (\Mux17~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Shift|ShiftRight0~196_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X55_Y47_N10
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux30~0_combout\ & ((\Mux17~2_combout\ & ((\Shift|ShiftRight1~103_combout\))) # (!\Mux17~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight1~103_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X54_Y53_N2
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X54_Y53_N4
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\B[46]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[46]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X54_Y53_N22
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux17~4_combout\) # ((\Mux17~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \Mux17~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X55_Y51_N0
\Add|GEN_BLOCKS:11:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ = (\Add|G\(45) & ((\A[46]~input_o\) # (\B[46]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(45) & (\A[46]~input_o\ & (\B[46]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \Add|G\(45),
	datac => \AddnSub~input_o\,
	datad => \A[46]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X55_Y51_N2
\Add|GEN_BLOCKS:11:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ = (\A[44]~input_o\ & ((\Add|block_carry_in[11]~44_combout\) # (\B[44]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[44]~input_o\ & (\Add|block_carry_in[11]~44_combout\ & (\B[44]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Add|block_carry_in[11]~44_combout\,
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X55_Y51_N28
\Add|GEN_BLOCKS:11:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\) # ((\Add|P\(45) & (\Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ & \Add|P\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(45),
	datab => \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\,
	datac => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(46),
	combout => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X54_Y54_N18
\Add|S[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(47) = \AddnSub~input_o\ $ (\B[47]~input_o\ $ (\A[47]~input_o\ $ (\Add|GEN_BLOCKS:11:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(47));

-- Location: LCCOMB_X62_Y48_N16
\Shift|ShiftLeft0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~231_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~175_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~193_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~175_combout\,
	datad => \Shift|ShiftLeft0~193_combout\,
	combout => \Shift|ShiftLeft0~231_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Shift|ShiftLeft0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~232_combout\ = (\B[1]~input_o\ & (\A[45]~input_o\)) # (!\B[1]~input_o\ & ((\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~232_combout\);

-- Location: LCCOMB_X62_Y51_N28
\Shift|ShiftLeft0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~233_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~227_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~227_combout\,
	datad => \Shift|ShiftLeft0~232_combout\,
	combout => \Shift|ShiftLeft0~233_combout\);

-- Location: LCCOMB_X62_Y48_N2
\Shift|ShiftLeft0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~234_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~213_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~233_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~213_combout\,
	datac => \Shift|ShiftLeft0~233_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~234_combout\);

-- Location: LCCOMB_X62_Y48_N4
\Shift|ShiftLeft0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~235_combout\ = (\Shift|ShiftLeft0~231_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~231_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~234_combout\,
	combout => \Shift|ShiftLeft0~235_combout\);

-- Location: LCCOMB_X60_Y49_N8
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux30~2_combout\ & (((\Shift|ShiftLeft0~160_combout\) # (!\Mux30~1_combout\)))) # (!\Mux30~2_combout\ & (\Shift|ShiftLeft0~235_combout\ & (\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~235_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux30~1_combout\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X60_Y46_N8
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux30~1_combout\ & (((\Mux16~0_combout\)))) # (!\Mux30~1_combout\ & ((\Mux16~0_combout\ & ((\Add|S\(47)))) # (!\Mux16~0_combout\ & (\Shift|ShiftLeft0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~76_combout\,
	datab => \Mux30~1_combout\,
	datac => \Add|S\(47),
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X60_Y46_N10
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux30~6_combout\ & (\Shift|ShiftRight0~199_combout\ & ((\Mux30~5_combout\)))) # (!\Mux30~6_combout\ & (((\Mux16~1_combout\) # (!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~199_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X60_Y46_N12
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & (((\Shift|ShiftRight1~105_combout\) # (!\Mux30~0_combout\)))) # (!\Mux16~2_combout\ & (\A[63]~input_o\ & ((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight1~105_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X54_Y45_N22
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X54_Y54_N20
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\B[47]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[47]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X53_Y45_N22
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux16~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux16~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X54_Y54_N12
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\B[48]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[48]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[48]~input_o\ & (\A[48]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X55_Y45_N4
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ExtWord~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X54_Y50_N18
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X60_Y51_N16
\Shift|ShiftLeft0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~236_combout\ = (\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[48]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Shift|ShiftLeft0~236_combout\);

-- Location: LCCOMB_X60_Y51_N18
\Shift|ShiftLeft0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~237_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~232_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~236_combout\,
	datac => \Shift|ShiftLeft0~232_combout\,
	combout => \Shift|ShiftLeft0~237_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Shift|ShiftLeft0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~238_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~218_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~237_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~218_combout\,
	combout => \Shift|ShiftLeft0~238_combout\);

-- Location: LCCOMB_X60_Y48_N4
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\B[5]~input_o\) # ((!\B[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X60_Y48_N30
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux9~2_combout\ & (((\Mux49~1_combout\)))) # (!\Mux9~2_combout\ & ((\Mux49~1_combout\ & ((\Shift|ShiftLeft0~164_combout\))) # (!\Mux49~1_combout\ & (\Shift|ShiftLeft0~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~238_combout\,
	datab => \Shift|ShiftLeft0~164_combout\,
	datac => \Mux9~2_combout\,
	datad => \Mux49~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X60_Y48_N0
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & ((\Shift|ShiftLeft0~281_combout\) # ((!\Mux9~2_combout\)))) # (!\Mux15~0_combout\ & (((\Mux9~2_combout\ & \Shift|ShiftLeft0~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Shift|ShiftLeft0~281_combout\,
	datac => \Mux9~2_combout\,
	datad => \Shift|ShiftLeft0~199_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X57_Y50_N8
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~201_combout\))) # (!\Mux30~6_combout\ & (\Mux15~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X54_Y54_N24
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux30~0_combout\ & ((\Mux15~2_combout\ & (\Shift|ShiftRight1~106_combout\)) # (!\Mux15~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Shift|ShiftRight1~106_combout\,
	datac => \Mux15~2_combout\,
	datad => \A[63]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X54_Y54_N6
\Add|S[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(48) = \B[48]~input_o\ $ (\Add|block_carry_in[12]~61_combout\ $ (\A[48]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \Add|block_carry_in[12]~61_combout\,
	datac => \A[48]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(48));

-- Location: LCCOMB_X54_Y54_N2
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux9~1_combout\ & (((\Mux9~0_combout\) # (\Add|S\(48))))) # (!\Mux9~1_combout\ & (\Mux15~3_combout\ & (!\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux15~3_combout\,
	datac => \Mux9~0_combout\,
	datad => \Add|S\(48),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X54_Y54_N14
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux9~0_combout\ & ((\Mux15~4_combout\ & (\Mux15~5_combout\)) # (!\Mux15~4_combout\ & ((\Y_ShiftOrArith[31]~11_combout\))))) # (!\Mux9~0_combout\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X54_Y54_N8
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux15~6_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X60_Y51_N20
\Shift|ShiftLeft0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~239_combout\ = (\B[1]~input_o\ & (\A[47]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~239_combout\);

-- Location: LCCOMB_X60_Y51_N30
\Shift|ShiftLeft0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~240_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~236_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~239_combout\,
	datad => \Shift|ShiftLeft0~236_combout\,
	combout => \Shift|ShiftLeft0~240_combout\);

-- Location: LCCOMB_X56_Y51_N8
\Shift|ShiftLeft0~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~241_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~223_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~240_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~223_combout\,
	datad => \Shift|ShiftLeft0~240_combout\,
	combout => \Shift|ShiftLeft0~241_combout\);

-- Location: LCCOMB_X56_Y51_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux9~2_combout\ & (\Mux49~1_combout\)) # (!\Mux9~2_combout\ & ((\Mux49~1_combout\ & ((\Shift|ShiftLeft0~169_combout\))) # (!\Mux49~1_combout\ & (\Shift|ShiftLeft0~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux49~1_combout\,
	datac => \Shift|ShiftLeft0~241_combout\,
	datad => \Shift|ShiftLeft0~169_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X56_Y47_N26
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\Shift|ShiftLeft0~87_combout\) # (!\Mux9~2_combout\)))) # (!\Mux14~0_combout\ & (\Shift|ShiftLeft0~204_combout\ & (\Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~204_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux9~2_combout\,
	datad => \Shift|ShiftLeft0~87_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X56_Y47_N28
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux30~6_combout\ & (((\Mux30~5_combout\ & \Shift|ShiftRight0~202_combout\)))) # (!\Mux30~6_combout\ & ((\Mux14~1_combout\) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \Shift|ShiftRight0~202_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X56_Y47_N14
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux30~0_combout\ & ((\Mux14~2_combout\ & ((\Shift|ShiftRight1~107_combout\))) # (!\Mux14~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Mux14~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~107_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X52_Y54_N30
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux9~0_combout\ & ((\Y_ShiftOrArith[31]~11_combout\) # ((\Mux9~1_combout\)))) # (!\Mux9~0_combout\ & (((\Mux14~3_combout\ & !\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~11_combout\,
	datab => \Mux9~0_combout\,
	datac => \Mux14~3_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X52_Y54_N24
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\B[49]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[49]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X53_Y54_N14
\Add|GEN_BLOCKS:12:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[12]~61_combout\ & ((\A[48]~input_o\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\Add|block_carry_in[12]~61_combout\ & (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[12]~61_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X53_Y54_N20
\Add|S[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(49) = \A[49]~input_o\ $ (\B[49]~input_o\ $ (\Add|GEN_BLOCKS:12:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \Add|GEN_BLOCKS:12:LACG_INST|C[1]~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(49));

-- Location: LCCOMB_X52_Y54_N10
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~4_combout\ & ((\Mux14~5_combout\) # ((!\Mux9~1_combout\)))) # (!\Mux14~4_combout\ & (((\Add|S\(49) & \Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux14~5_combout\,
	datac => \Add|S\(49),
	datad => \Mux9~1_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X52_Y54_N28
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X60_Y51_N0
\Shift|ShiftLeft0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~242_combout\ = (\B[1]~input_o\ & ((\A[48]~input_o\))) # (!\B[1]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~242_combout\);

-- Location: LCCOMB_X60_Y51_N26
\Shift|ShiftLeft0~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~243_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~239_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~242_combout\,
	datad => \Shift|ShiftLeft0~239_combout\,
	combout => \Shift|ShiftLeft0~243_combout\);

-- Location: LCCOMB_X60_Y48_N18
\Shift|ShiftLeft0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~244_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~228_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~243_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~243_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~228_combout\,
	combout => \Shift|ShiftLeft0~244_combout\);

-- Location: LCCOMB_X57_Y48_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux49~1_combout\ & ((\Shift|ShiftLeft0~173_combout\) # ((\Mux9~2_combout\)))) # (!\Mux49~1_combout\ & (((\Shift|ShiftLeft0~244_combout\ & !\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Shift|ShiftLeft0~173_combout\,
	datac => \Shift|ShiftLeft0~244_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X57_Y48_N10
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\Shift|ShiftLeft0~93_combout\) # (!\Mux9~2_combout\)))) # (!\Mux13~0_combout\ & (\Shift|ShiftLeft0~209_combout\ & ((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~209_combout\,
	datab => \Mux13~0_combout\,
	datac => \Shift|ShiftLeft0~93_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X57_Y52_N4
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux30~6_combout\ & (\Shift|ShiftRight0~203_combout\ & (\Mux30~5_combout\))) # (!\Mux30~6_combout\ & (((\Mux13~1_combout\) # (!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Shift|ShiftRight0~203_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X57_Y52_N14
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux30~0_combout\ & ((\Mux13~2_combout\ & ((\Shift|ShiftRight1~108_combout\))) # (!\Mux13~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Mux13~2_combout\,
	datad => \Shift|ShiftRight1~108_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X53_Y54_N0
\Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ = (\A[49]~input_o\ & ((\Add|G\(48)) # (\B[49]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[49]~input_o\ & (\Add|G\(48) & (\B[49]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|G\(48),
	combout => \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X53_Y54_N2
\Add|S[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(50) = \Add|P\(50) $ (((\Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[12]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(50),
	datab => \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\,
	datac => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[12]~61_combout\,
	combout => \Add|S\(50));

-- Location: LCCOMB_X54_Y54_N10
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux9~1_combout\ & (((\Mux9~0_combout\) # (\Add|S\(50))))) # (!\Mux9~1_combout\ & (\Mux13~3_combout\ & (!\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux9~0_combout\,
	datad => \Add|S\(50),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X54_Y54_N4
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[50]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X54_Y54_N30
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~4_combout\ & (((\Mux13~5_combout\) # (!\Mux9~0_combout\)))) # (!\Mux13~4_combout\ & (\Y_ShiftOrArith[31]~11_combout\ & (\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X54_Y54_N16
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux13~6_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X60_Y51_N12
\Shift|ShiftLeft0~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~245_combout\ = (\B[1]~input_o\ & ((\A[49]~input_o\))) # (!\B[1]~input_o\ & (\A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~245_combout\);

-- Location: LCCOMB_X60_Y51_N6
\Shift|ShiftLeft0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~246_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~242_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~245_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~242_combout\,
	datad => \Shift|ShiftLeft0~245_combout\,
	combout => \Shift|ShiftLeft0~246_combout\);

-- Location: LCCOMB_X61_Y50_N16
\Shift|ShiftLeft0~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~247_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~233_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~246_combout\,
	datad => \Shift|ShiftLeft0~233_combout\,
	combout => \Shift|ShiftLeft0~247_combout\);

-- Location: LCCOMB_X60_Y48_N12
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux9~2_combout\ & (((\Mux49~1_combout\)))) # (!\Mux9~2_combout\ & ((\Mux49~1_combout\ & (\Shift|ShiftLeft0~177_combout\)) # (!\Mux49~1_combout\ & ((\Shift|ShiftLeft0~247_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~177_combout\,
	datab => \Mux9~2_combout\,
	datac => \Shift|ShiftLeft0~247_combout\,
	datad => \Mux49~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X60_Y48_N22
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\Shift|ShiftLeft0~99_combout\) # ((!\Mux9~2_combout\)))) # (!\Mux12~0_combout\ & (((\Mux9~2_combout\ & \Shift|ShiftLeft0~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Shift|ShiftLeft0~99_combout\,
	datac => \Mux9~2_combout\,
	datad => \Shift|ShiftLeft0~214_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X58_Y48_N12
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux30~6_combout\ & (\Shift|ShiftRight0~204_combout\ & (\Mux30~5_combout\))) # (!\Mux30~6_combout\ & (((\Mux12~1_combout\) # (!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Shift|ShiftRight0~204_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X58_Y48_N22
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux30~0_combout\ & ((\Mux12~2_combout\ & (\Shift|ShiftRight1~109_combout\)) # (!\Mux12~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Shift|ShiftRight1~109_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X54_Y54_N26
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux9~0_combout\ & (((\Y_ShiftOrArith[31]~11_combout\) # (\Mux9~1_combout\)))) # (!\Mux9~0_combout\ & (\Mux12~3_combout\ & ((!\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X53_Y54_N4
\Add|G[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(49) = (\A[49]~input_o\ & (\B[49]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(49));

-- Location: LCCOMB_X53_Y54_N6
\Add|GEN_BLOCKS:12:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ = (\A[50]~input_o\ & ((\Add|G\(49)) # (\B[50]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[50]~input_o\ & (\Add|G\(49) & (\B[50]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[50]~input_o\,
	datac => \Add|G\(49),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X53_Y54_N8
\Add|GEN_BLOCKS:12:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[12]~61_combout\ & ((\A[48]~input_o\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\Add|block_carry_in[12]~61_combout\ & (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[12]~61_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X53_Y54_N26
\Add|GEN_BLOCKS:12:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\) # ((\Add|P\(49) & (\Add|GEN_BLOCKS:12:LACG_INST|C[3]~1_combout\ & \Add|P\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\,
	datab => \Add|P\(49),
	datac => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(50),
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X53_Y53_N2
\Add|S[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(51) = \Add|GEN_BLOCKS:12:LACG_INST|C[3]~2_combout\ $ (\AddnSub~input_o\ $ (\A[51]~input_o\ $ (\B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~2_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Add|S\(51));

-- Location: LCCOMB_X53_Y53_N20
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\B[51]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[51]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X53_Y53_N30
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~4_combout\ & (((\Mux12~5_combout\) # (!\Mux9~1_combout\)))) # (!\Mux12~4_combout\ & (\Add|S\(51) & (\Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Add|S\(51),
	datac => \Mux9~1_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X52_Y50_N18
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X59_Y51_N12
\Shift|ShiftLeft0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~248_combout\ = (\B[1]~input_o\ & ((\A[50]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[52]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|ShiftLeft0~248_combout\);

-- Location: LCCOMB_X59_Y51_N30
\Shift|ShiftLeft0~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~249_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~245_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~248_combout\,
	datab => \Shift|ShiftLeft0~245_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~249_combout\);

-- Location: LCCOMB_X58_Y50_N10
\Shift|ShiftLeft0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~250_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~237_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~249_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~237_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~249_combout\,
	combout => \Shift|ShiftLeft0~250_combout\);

-- Location: LCCOMB_X58_Y50_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux49~1_combout\ & (((\Shift|ShiftLeft0~181_combout\) # (\Mux9~2_combout\)))) # (!\Mux49~1_combout\ & (\Shift|ShiftLeft0~250_combout\ & ((!\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~250_combout\,
	datab => \Mux49~1_combout\,
	datac => \Shift|ShiftLeft0~181_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X58_Y50_N6
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\Shift|ShiftLeft0~282_combout\) # ((!\Mux9~2_combout\)))) # (!\Mux11~0_combout\ & (((\Shift|ShiftLeft0~219_combout\ & \Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Shift|ShiftLeft0~282_combout\,
	datac => \Shift|ShiftLeft0~219_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & (\Shift|ShiftRight0~205_combout\)) # (!\Mux30~6_combout\ & ((\Mux11~1_combout\))))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Shift|ShiftRight0~205_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X57_Y50_N4
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux30~0_combout\ & ((\Mux11~2_combout\ & (\Shift|ShiftRight1~110_combout\)) # (!\Mux11~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~110_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X52_Y53_N6
\Add|S[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(52) = \A[52]~input_o\ $ (\B[52]~input_o\ $ (\AddnSub~input_o\ $ (\Add|block_carry_in[13]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[13]~59_combout\,
	combout => \Add|S\(52));

-- Location: LCCOMB_X52_Y54_N22
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux9~0_combout\ & (((\Mux9~1_combout\)))) # (!\Mux9~0_combout\ & ((\Mux9~1_combout\ & ((\Add|S\(52)))) # (!\Mux9~1_combout\ & (\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux9~0_combout\,
	datac => \Add|S\(52),
	datad => \Mux9~1_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X52_Y54_N16
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\B[52]~input_o\ & ((\A[52]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X52_Y54_N26
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~4_combout\ & (((\Mux11~5_combout\)) # (!\Mux9~0_combout\))) # (!\Mux11~4_combout\ & (\Mux9~0_combout\ & (\Y_ShiftOrArith[31]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux9~0_combout\,
	datac => \Y_ShiftOrArith[31]~11_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X52_Y54_N4
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux11~6_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X52_Y53_N16
\Add|GEN_BLOCKS:13:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\ = (\A[52]~input_o\ & ((\Add|block_carry_in[13]~59_combout\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[52]~input_o\ & (\Add|block_carry_in[13]~59_combout\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[13]~59_combout\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X53_Y53_N10
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\B[53]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[53]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X53_Y53_N12
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux9~1_combout\ & ((\Mux10~4_combout\) # ((!\Mux9~0_combout\)))) # (!\Mux9~1_combout\ & (((\Y_ShiftOrArith[31]~11_combout\ & \Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X53_Y53_N6
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux9~0_combout\) # ((\Mux10~5_combout\ & (\Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\ $ (\Add|P\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\,
	datab => \Mux9~0_combout\,
	datac => \Add|P\(53),
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X59_Y50_N8
\Shift|ShiftLeft0~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~251_combout\ = (\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[51]~input_o\,
	combout => \Shift|ShiftLeft0~251_combout\);

-- Location: LCCOMB_X59_Y51_N0
\Shift|ShiftLeft0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~252_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~248_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~251_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~248_combout\,
	combout => \Shift|ShiftLeft0~252_combout\);

-- Location: LCCOMB_X58_Y50_N0
\Shift|ShiftLeft0~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~253_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~240_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~252_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~240_combout\,
	combout => \Shift|ShiftLeft0~253_combout\);

-- Location: LCCOMB_X58_Y50_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux49~1_combout\ & (((\Shift|ShiftLeft0~185_combout\) # (\Mux9~2_combout\)))) # (!\Mux49~1_combout\ & (\Shift|ShiftLeft0~253_combout\ & ((!\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Shift|ShiftLeft0~253_combout\,
	datac => \Shift|ShiftLeft0~185_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X58_Y50_N4
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\Shift|ShiftLeft0~283_combout\) # ((!\Mux9~2_combout\)))) # (!\Mux10~0_combout\ & (((\Shift|ShiftLeft0~224_combout\ & \Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~283_combout\,
	datab => \Mux10~0_combout\,
	datac => \Shift|ShiftLeft0~224_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X53_Y50_N18
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~206_combout\))) # (!\Mux30~6_combout\ & (\Mux10~1_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~206_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X53_Y53_N24
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\Shift|ShiftRight1~111_combout\) # (!\Mux30~0_combout\)))) # (!\Mux10~2_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux10~2_combout\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~111_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X53_Y53_N0
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux10~6_combout\ & ((\Mux10~5_combout\))) # (!\Mux10~6_combout\ & (\Mux10~3_combout\ & !\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux10~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X52_Y53_N26
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

-- Location: LCCOMB_X52_Y53_N12
\Add|S[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(54) = \Add|P\(54) $ (((\Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[13]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(54),
	datac => \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|block_carry_in[13]~59_combout\,
	combout => \Add|S\(54));

-- Location: LCCOMB_X59_Y51_N18
\Shift|ShiftLeft0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~254_combout\ = (\B[1]~input_o\ & ((\A[52]~input_o\))) # (!\B[1]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[54]~input_o\,
	datac => \A[52]~input_o\,
	combout => \Shift|ShiftLeft0~254_combout\);

-- Location: LCCOMB_X59_Y51_N4
\Shift|ShiftLeft0~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~255_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~251_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~254_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~251_combout\,
	datab => \Shift|ShiftLeft0~254_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~255_combout\);

-- Location: LCCOMB_X60_Y48_N24
\Shift|ShiftLeft0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~256_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~243_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~255_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~255_combout\,
	datad => \Shift|ShiftLeft0~243_combout\,
	combout => \Shift|ShiftLeft0~256_combout\);

-- Location: LCCOMB_X60_Y48_N10
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux49~1_combout\ & ((\Shift|ShiftLeft0~190_combout\) # ((\Mux9~2_combout\)))) # (!\Mux49~1_combout\ & (((!\Mux9~2_combout\ & \Shift|ShiftLeft0~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~190_combout\,
	datab => \Mux49~1_combout\,
	datac => \Mux9~2_combout\,
	datad => \Shift|ShiftLeft0~256_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X60_Y48_N28
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~2_combout\ & ((\Mux9~3_combout\ & ((\Shift|ShiftLeft0~284_combout\))) # (!\Mux9~3_combout\ & (\Shift|ShiftLeft0~229_combout\)))) # (!\Mux9~2_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~229_combout\,
	datab => \Mux9~2_combout\,
	datac => \Shift|ShiftLeft0~284_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~207_combout\))) # (!\Mux30~6_combout\ & (\Mux9~4_combout\)))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux9~4_combout\,
	datac => \Mux30~6_combout\,
	datad => \Shift|ShiftRight0~207_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X56_Y50_N18
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & (((\Shift|ShiftRight1~112_combout\) # (!\Mux30~0_combout\)))) # (!\Mux9~5_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux9~5_combout\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~112_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X52_Y54_N6
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux9~0_combout\ & (((\Mux9~1_combout\)))) # (!\Mux9~0_combout\ & ((\Mux9~1_combout\ & (\Add|S\(54))) # (!\Mux9~1_combout\ & ((\Mux9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(54),
	datab => \Mux9~0_combout\,
	datac => \Mux9~6_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X52_Y54_N0
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\B[54]~input_o\ & ((\A[54]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[54]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X52_Y54_N18
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux9~7_combout\ & (((\Mux9~8_combout\)) # (!\Mux9~0_combout\))) # (!\Mux9~7_combout\ & (\Mux9~0_combout\ & (\Y_ShiftOrArith[31]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \Mux9~0_combout\,
	datac => \Y_ShiftOrArith[31]~11_combout\,
	datad => \Mux9~8_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X52_Y54_N12
\Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (!\FuncClass[1]~input_o\ & \Mux9~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux9~9_combout\,
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X53_Y53_N14
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\B[55]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[55]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X59_Y50_N2
\Shift|ShiftLeft0~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~257_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~257_combout\);

-- Location: LCCOMB_X59_Y51_N14
\Shift|ShiftLeft0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~258_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~254_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~257_combout\,
	datad => \Shift|ShiftLeft0~254_combout\,
	combout => \Shift|ShiftLeft0~258_combout\);

-- Location: LCCOMB_X61_Y50_N18
\Shift|ShiftLeft0~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~259_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~246_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~246_combout\,
	datad => \Shift|ShiftLeft0~258_combout\,
	combout => \Shift|ShiftLeft0~259_combout\);

-- Location: LCCOMB_X60_Y48_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux9~2_combout\ & (((\Mux49~1_combout\)))) # (!\Mux9~2_combout\ & ((\Mux49~1_combout\ & ((\Shift|ShiftLeft0~195_combout\))) # (!\Mux49~1_combout\ & (\Shift|ShiftLeft0~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~259_combout\,
	datab => \Mux9~2_combout\,
	datac => \Shift|ShiftLeft0~195_combout\,
	datad => \Mux49~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X60_Y48_N8
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\Shift|ShiftLeft0~285_combout\) # ((!\Mux9~2_combout\)))) # (!\Mux8~0_combout\ & (((\Mux9~2_combout\ & \Shift|ShiftLeft0~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Shift|ShiftLeft0~285_combout\,
	datac => \Mux9~2_combout\,
	datad => \Shift|ShiftLeft0~234_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X53_Y46_N6
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~208_combout\))) # (!\Mux30~6_combout\ & (\Mux8~1_combout\)))) # (!\Mux30~5_combout\ & (!\Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux8~1_combout\,
	datad => \Shift|ShiftRight0~208_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X53_Y46_N8
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux30~0_combout\ & ((\Mux8~2_combout\ & ((\Shift|ShiftRight1~117_combout\))) # (!\Mux8~2_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Shift|ShiftRight1~117_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X53_Y53_N4
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux9~1_combout\ & (((\Mux9~0_combout\)))) # (!\Mux9~1_combout\ & ((\Mux9~0_combout\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\Mux9~0_combout\ & (\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X52_Y53_N10
\Add|GEN_BLOCKS:13:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[3]~1_combout\ = (\A[52]~input_o\ & ((\Add|block_carry_in[13]~59_combout\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[52]~input_o\ & (\Add|block_carry_in[13]~59_combout\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[13]~59_combout\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X52_Y53_N22
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

-- Location: LCCOMB_X52_Y53_N8
\Add|GEN_BLOCKS:13:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ = (\A[54]~input_o\ & ((\Add|G\(53)) # (\AddnSub~input_o\ $ (\B[54]~input_o\)))) # (!\A[54]~input_o\ & (\Add|G\(53) & (\AddnSub~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(53),
	datad => \B[54]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X52_Y53_N20
\Add|GEN_BLOCKS:13:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:13:LACG_INST|C[3]~1_combout\ & (\Add|P\(53) & \Add|P\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~1_combout\,
	datab => \Add|P\(53),
	datac => \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\,
	datad => \Add|P\(54),
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X53_Y53_N18
\Add|S[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(55) = \A[55]~input_o\ $ (\AddnSub~input_o\ $ (\B[55]~input_o\ $ (\Add|GEN_BLOCKS:13:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	datad => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(55));

-- Location: LCCOMB_X53_Y53_N16
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux9~1_combout\ & ((\Mux8~4_combout\ & (\Mux8~5_combout\)) # (!\Mux8~4_combout\ & ((\Add|S\(55)))))) # (!\Mux9~1_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux8~4_combout\,
	datad => \Add|S\(55),
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X55_Y49_N18
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~6_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux8~6_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X55_Y50_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\ & (\B[5]~input_o\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X52_Y49_N28
\Add|S[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(56) = \B[56]~input_o\ $ (\A[56]~input_o\ $ (\Add|block_carry_in[14]~57_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \A[56]~input_o\,
	datac => \Add|block_carry_in[14]~57_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(56));

-- Location: LCCOMB_X56_Y46_N2
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & ((\Shift|ShiftRight0~209_combout\))) # (!\Mux30~6_combout\ & (\Add|S\(56))))) # (!\Mux30~5_combout\ & (!\Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~6_combout\,
	datac => \Add|S\(56),
	datad => \Shift|ShiftRight0~209_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X56_Y46_N4
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux30~0_combout\ & ((\Mux7~3_combout\ & ((\Shift|ShiftRight1~118_combout\))) # (!\Mux7~3_combout\ & (\A[63]~input_o\)))) # (!\Mux30~0_combout\ & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight1~118_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X55_Y50_N22
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X59_Y50_N4
\Shift|ShiftLeft0~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~260_combout\ = (\B[1]~input_o\ & (\A[54]~input_o\)) # (!\B[1]~input_o\ & ((\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|ShiftLeft0~260_combout\);

-- Location: LCCOMB_X59_Y50_N14
\Shift|ShiftLeft0~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~261_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~257_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~260_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~260_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~257_combout\,
	combout => \Shift|ShiftLeft0~261_combout\);

-- Location: LCCOMB_X61_Y50_N4
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux57~1_combout\ & (\Mux57~0_combout\)) # (!\Mux57~1_combout\ & ((\Mux57~0_combout\ & ((\Shift|ShiftLeft0~238_combout\))) # (!\Mux57~0_combout\ & (\Shift|ShiftLeft0~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Mux57~0_combout\,
	datac => \Shift|ShiftLeft0~261_combout\,
	datad => \Shift|ShiftLeft0~238_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X61_Y50_N14
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux57~1_combout\ & ((\Mux7~1_combout\ & (\Shift|ShiftLeft0~200_combout\)) # (!\Mux7~1_combout\ & ((\Shift|ShiftLeft0~249_combout\))))) # (!\Mux57~1_combout\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \Mux7~1_combout\,
	datac => \Shift|ShiftLeft0~200_combout\,
	datad => \Shift|ShiftLeft0~249_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X55_Y50_N0
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux6~1_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & ((\Mux6~2_combout\ & ((\Mux7~2_combout\))) # (!\Mux6~2_combout\ & (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X55_Y50_N26
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux6~1_combout\ & ((\Mux7~5_combout\ & (\Shift|ShiftLeft0~121_combout\)) # (!\Mux7~5_combout\ & ((\Y_ShiftOrArith[31]~11_combout\))))) # (!\Mux6~1_combout\ & (\Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux7~5_combout\,
	datac => \Shift|ShiftLeft0~121_combout\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X49_Y52_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\B[56]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[56]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X49_Y52_N0
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux7~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux7~6_combout\,
	datac => \Mux7~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X49_Y52_N18
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X52_Y49_N30
\Add|GEN_BLOCKS:14:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ = (\A[56]~input_o\ & ((\Add|block_carry_in[14]~57_combout\) # (\B[56]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[56]~input_o\ & (\Add|block_carry_in[14]~57_combout\ & (\B[56]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \A[56]~input_o\,
	datac => \Add|block_carry_in[14]~57_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X52_Y49_N6
\Add|S[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(57) = \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ $ (\A[57]~input_o\ $ (\B[57]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\,
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(57));

-- Location: LCCOMB_X53_Y46_N2
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux30~6_combout\ & (((\Mux30~5_combout\ & \Shift|ShiftRight0~210_combout\)))) # (!\Mux30~6_combout\ & ((\Add|S\(57)) # ((!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(57),
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \Shift|ShiftRight0~210_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X53_Y46_N28
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux30~0_combout\ & ((\Mux6~6_combout\ & (\Shift|ShiftRight1~119_combout\)) # (!\Mux6~6_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~119_combout\,
	datab => \Mux30~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X55_Y50_N16
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~2_combout\ & (((\Mux6~1_combout\)))) # (!\Mux6~2_combout\ & ((\Mux6~1_combout\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\Mux6~1_combout\ & ((\Mux6~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X59_Y50_N24
\Shift|ShiftLeft0~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~262_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[55]~input_o\)) # (!\B[1]~input_o\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~262_combout\);

-- Location: LCCOMB_X59_Y50_N18
\Shift|ShiftLeft0~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~263_combout\ = (\Shift|ShiftLeft0~262_combout\) # ((\Shift|ShiftLeft0~260_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~260_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~262_combout\,
	combout => \Shift|ShiftLeft0~263_combout\);

-- Location: LCCOMB_X55_Y50_N4
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux57~0_combout\ & (((\Shift|ShiftLeft0~241_combout\) # (\Mux57~1_combout\)))) # (!\Mux57~0_combout\ & (\Shift|ShiftLeft0~263_combout\ & ((!\Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~263_combout\,
	datab => \Shift|ShiftLeft0~241_combout\,
	datac => \Mux57~0_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X55_Y50_N6
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & (((\Shift|ShiftLeft0~205_combout\) # (!\Mux57~1_combout\)))) # (!\Mux6~4_combout\ & (\Shift|ShiftLeft0~252_combout\ & ((\Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~252_combout\,
	datab => \Shift|ShiftLeft0~205_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X55_Y50_N18
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~2_combout\ & ((\Mux6~8_combout\ & (\Shift|ShiftLeft0~126_combout\)) # (!\Mux6~8_combout\ & ((\Mux6~5_combout\))))) # (!\Mux6~2_combout\ & (\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~8_combout\,
	datac => \Shift|ShiftLeft0~126_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X49_Y52_N28
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux6~3_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux6~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux6~9_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X58_Y50_N22
\Shift|ShiftLeft0~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~265_combout\ = (\B[0]~input_o\ & (\A[57]~input_o\)) # (!\B[0]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[57]~input_o\,
	datac => \A[58]~input_o\,
	combout => \Shift|ShiftLeft0~265_combout\);

-- Location: LCCOMB_X59_Y50_N20
\Shift|ShiftLeft0~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~264_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[55]~input_o\)) # (!\B[0]~input_o\ & ((\A[56]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shift|ShiftLeft0~264_combout\);

-- Location: LCCOMB_X58_Y50_N8
\Shift|ShiftLeft0~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~266_combout\ = (\Shift|ShiftLeft0~264_combout\) # ((\Shift|ShiftLeft0~265_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~265_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~264_combout\,
	combout => \Shift|ShiftLeft0~266_combout\);

-- Location: LCCOMB_X55_Y48_N18
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux57~0_combout\ & (((\Shift|ShiftLeft0~244_combout\) # (\Mux57~1_combout\)))) # (!\Mux57~0_combout\ & (\Shift|ShiftLeft0~266_combout\ & ((!\Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~266_combout\,
	datab => \Shift|ShiftLeft0~244_combout\,
	datac => \Mux57~0_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X55_Y48_N12
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & ((\Shift|ShiftLeft0~210_combout\) # ((!\Mux57~1_combout\)))) # (!\Mux5~1_combout\ & (((\Shift|ShiftLeft0~255_combout\ & \Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~210_combout\,
	datab => \Mux5~1_combout\,
	datac => \Shift|ShiftLeft0~255_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X52_Y49_N16
\Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\ = (\A[57]~input_o\ & ((\Add|G\(56)) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\A[57]~input_o\ & (\Add|G\(56) & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \Add|G\(56),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X52_Y49_N2
\Add|S[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(58) = \Add|P\(58) $ (((\Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[14]~57_combout\ & \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[14]~57_combout\,
	datab => \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|P\(58),
	datad => \Add|GEN_BLOCKS:14:LACG_INST|Pout~2_combout\,
	combout => \Add|S\(58));

-- Location: LCCOMB_X58_Y52_N30
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux30~6_combout\ & (\Mux30~5_combout\ & (\Shift|ShiftRight0~217_combout\))) # (!\Mux30~6_combout\ & (((\Add|S\(58))) # (!\Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux30~5_combout\,
	datac => \Shift|ShiftRight0~217_combout\,
	datad => \Add|S\(58),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X58_Y52_N16
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((\Shift|ShiftRight1~120_combout\) # (!\Mux30~0_combout\)))) # (!\Mux5~3_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~120_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X55_Y50_N28
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux6~2_combout\ & ((\Mux5~2_combout\) # ((\Mux6~1_combout\)))) # (!\Mux6~2_combout\ & (((\Mux5~4_combout\ & !\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X55_Y50_N14
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux6~1_combout\ & ((\Mux5~5_combout\ & (\Shift|ShiftLeft0~131_combout\)) # (!\Mux5~5_combout\ & ((\Y_ShiftOrArith[31]~11_combout\))))) # (!\Mux6~1_combout\ & (\Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux5~5_combout\,
	datac => \Shift|ShiftLeft0~131_combout\,
	datad => \Y_ShiftOrArith[31]~11_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X53_Y49_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\B[58]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[58]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X55_Y50_N8
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux5~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux5~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X52_Y49_N12
\Add|G[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(57) = (\A[57]~input_o\ & (\B[57]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(57));

-- Location: LCCOMB_X52_Y49_N14
\Add|GEN_BLOCKS:14:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ = (\A[58]~input_o\ & ((\Add|G\(57)) # (\AddnSub~input_o\ $ (\B[58]~input_o\)))) # (!\A[58]~input_o\ & (\Add|G\(57) & (\AddnSub~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \Add|G\(57),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X52_Y49_N0
\Add|GEN_BLOCKS:14:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\) # ((\Add|P\(57) & (\Add|P\(58) & \Add|G\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(57),
	datab => \Add|P\(58),
	datac => \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\,
	datad => \Add|G\(56),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X52_Y49_N26
\Add|S[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(59) = \Add|P[59]~2_combout\ $ (((\Add|GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\) # ((\Add|block_carry_in[14]~57_combout\ & \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[14]~57_combout\,
	datab => \Add|GEN_BLOCKS:14:LACG_INST|Pout~3_combout\,
	datac => \Add|GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\,
	datad => \Add|P[59]~2_combout\,
	combout => \Add|S\(59));

-- Location: LCCOMB_X56_Y46_N22
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & (\Shift|ShiftRight0~218_combout\)) # (!\Mux30~6_combout\ & ((\Add|S\(59)))))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~218_combout\,
	datab => \Add|S\(59),
	datac => \Mux30~5_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X57_Y46_N14
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & (((\Shift|ShiftRight1~113_combout\) # (!\Mux30~0_combout\)))) # (!\Mux4~3_combout\ & (\A[63]~input_o\ & ((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~113_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X55_Y50_N2
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux6~2_combout\ & (((\Mux6~1_combout\)))) # (!\Mux6~2_combout\ & ((\Mux6~1_combout\ & (\Y_ShiftOrArith[31]~11_combout\)) # (!\Mux6~1_combout\ & ((\Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Mux4~4_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X58_Y50_N26
\Shift|ShiftLeft0~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~268_combout\ = (\B[0]~input_o\ & ((\A[58]~input_o\))) # (!\B[0]~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[59]~input_o\,
	datac => \A[58]~input_o\,
	combout => \Shift|ShiftLeft0~268_combout\);

-- Location: LCCOMB_X59_Y50_N22
\Shift|ShiftLeft0~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~267_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[56]~input_o\)) # (!\B[0]~input_o\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~267_combout\);

-- Location: LCCOMB_X58_Y50_N28
\Shift|ShiftLeft0~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~269_combout\ = (\Shift|ShiftLeft0~267_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~268_combout\,
	datad => \Shift|ShiftLeft0~267_combout\,
	combout => \Shift|ShiftLeft0~269_combout\);

-- Location: LCCOMB_X61_Y50_N24
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux57~0_combout\ & (((\Mux57~1_combout\) # (\Shift|ShiftLeft0~247_combout\)))) # (!\Mux57~0_combout\ & (\Shift|ShiftLeft0~269_combout\ & (!\Mux57~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~269_combout\,
	datab => \Mux57~0_combout\,
	datac => \Mux57~1_combout\,
	datad => \Shift|ShiftLeft0~247_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X61_Y50_N26
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux57~1_combout\ & ((\Mux4~1_combout\ & (\Shift|ShiftLeft0~215_combout\)) # (!\Mux4~1_combout\ & ((\Shift|ShiftLeft0~258_combout\))))) # (!\Mux57~1_combout\ & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~215_combout\,
	datab => \Shift|ShiftLeft0~258_combout\,
	datac => \Mux57~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X55_Y50_N20
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux6~2_combout\ & ((\Mux4~5_combout\ & (\Shift|ShiftLeft0~136_combout\)) # (!\Mux4~5_combout\ & ((\Mux4~2_combout\))))) # (!\Mux6~2_combout\ & (\Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux4~5_combout\,
	datac => \Shift|ShiftLeft0~136_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X53_Y49_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\B[59]~input_o\ & ((\A[59]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X60_Y45_N30
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux4~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux4~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X57_Y45_N2
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\B[60]~input_o\ & ((\A[60]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X60_Y45_N10
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X56_Y46_N10
\Add|S[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(60) = \A[60]~input_o\ $ (\Add|block_carry_in[15]~50_combout\ $ (\AddnSub~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \Add|block_carry_in[15]~50_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Add|S\(60));

-- Location: LCCOMB_X58_Y50_N30
\Shift|ShiftLeft0~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~270_combout\ = (\B[0]~input_o\ & (\A[59]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[59]~input_o\,
	datac => \A[60]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~270_combout\);

-- Location: LCCOMB_X58_Y50_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux61~3_combout\ & (((\Shift|ShiftLeft0~24_combout\)))) # (!\Mux61~3_combout\ & ((\Shift|ShiftLeft0~24_combout\ & ((\Shift|ShiftLeft0~261_combout\))) # (!\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftLeft0~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~270_combout\,
	datab => \Mux61~3_combout\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Shift|ShiftLeft0~261_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X58_Y50_N2
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & ((\Shift|ShiftLeft0~250_combout\) # ((!\Mux61~3_combout\)))) # (!\Mux3~3_combout\ & (((\Shift|ShiftLeft0~265_combout\ & \Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~250_combout\,
	datab => \Mux3~3_combout\,
	datac => \Shift|ShiftLeft0~265_combout\,
	datad => \Mux61~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X56_Y46_N24
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux30~1_combout\ & (\Mux3~4_combout\ & ((!\Mux30~2_combout\)))) # (!\Mux30~1_combout\ & (((\Shift|ShiftLeft0~142_combout\) # (\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Shift|ShiftLeft0~142_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X56_Y46_N20
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux30~2_combout\ & ((\Mux3~5_combout\ & (\Add|S\(60))) # (!\Mux3~5_combout\ & ((\Shift|ShiftLeft0~220_combout\))))) # (!\Mux30~2_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(60),
	datab => \Mux30~2_combout\,
	datac => \Mux3~5_combout\,
	datad => \Shift|ShiftLeft0~220_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X56_Y46_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux30~6_combout\ & (\Shift|ShiftRight0~219_combout\ & (\Mux30~5_combout\))) # (!\Mux30~6_combout\ & (((\Mux3~6_combout\) # (!\Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~219_combout\,
	datab => \Mux30~6_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X60_Y45_N4
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & (((\Shift|ShiftRight1~114_combout\) # (!\Mux30~0_combout\)))) # (!\Mux3~7_combout\ & (\A[63]~input_o\ & (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux3~7_combout\,
	datac => \Mux30~0_combout\,
	datad => \Shift|ShiftRight1~114_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X60_Y45_N22
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

-- Location: LCCOMB_X60_Y45_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~11_combout\ & (\ExtWord~input_o\ & !\FuncClass[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X60_Y45_N8
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~2_combout\) # ((\Mux3~0_combout\) # ((\Mux3~8_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux3~8_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X57_Y45_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[61]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X60_Y45_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X59_Y49_N4
\Shift|ShiftLeft0~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~271_combout\ = (\B[0]~input_o\ & ((\A[60]~input_o\))) # (!\B[0]~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[60]~input_o\,
	combout => \Shift|ShiftLeft0~271_combout\);

-- Location: LCCOMB_X58_Y50_N20
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux61~3_combout\ & (((\Shift|ShiftLeft0~24_combout\)))) # (!\Mux61~3_combout\ & ((\Shift|ShiftLeft0~24_combout\ & (\Shift|ShiftLeft0~263_combout\)) # (!\Shift|ShiftLeft0~24_combout\ & ((\Shift|ShiftLeft0~271_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~263_combout\,
	datab => \Mux61~3_combout\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Shift|ShiftLeft0~271_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X58_Y50_N14
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & ((\Shift|ShiftLeft0~253_combout\) # ((!\Mux61~3_combout\)))) # (!\Mux2~2_combout\ & (((\Shift|ShiftLeft0~268_combout\ & \Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Shift|ShiftLeft0~253_combout\,
	datac => \Shift|ShiftLeft0~268_combout\,
	datad => \Mux61~3_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X56_Y51_N12
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux30~1_combout\ & ((\Mux30~2_combout\ & (\Shift|ShiftLeft0~225_combout\)) # (!\Mux30~2_combout\ & ((\Mux2~3_combout\))))) # (!\Mux30~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~225_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X57_Y45_N14
\Add|GEN_BLOCKS:15:LACG_INST|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\ = (\A[60]~input_o\ & ((\Add|block_carry_in[15]~50_combout\) # (\B[60]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[60]~input_o\ & (\Add|block_carry_in[15]~50_combout\ & (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[15]~50_combout\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\);

-- Location: LCCOMB_X57_Y45_N16
\Add|S[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(61) = \A[61]~input_o\ $ (\Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\ $ (\B[61]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\,
	datac => \B[61]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(61));

-- Location: LCCOMB_X56_Y51_N22
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((\Mux30~1_combout\) # ((\Add|S\(61))))) # (!\Mux2~4_combout\ & (!\Mux30~1_combout\ & (\Shift|ShiftLeft0~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux30~1_combout\,
	datac => \Shift|ShiftLeft0~148_combout\,
	datad => \Add|S\(61),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X55_Y47_N28
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux30~5_combout\ & ((\Mux30~6_combout\ & (\Shift|ShiftRight0~220_combout\)) # (!\Mux30~6_combout\ & ((\Mux2~5_combout\))))) # (!\Mux30~5_combout\ & (((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~220_combout\,
	datab => \Mux30~5_combout\,
	datac => \Mux2~5_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X55_Y47_N14
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux30~0_combout\ & ((\Mux2~6_combout\ & (\Shift|ShiftRight1~115_combout\)) # (!\Mux2~6_combout\ & ((\A[63]~input_o\))))) # (!\Mux30~0_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Shift|ShiftRight1~115_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X60_Y45_N12
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~1_combout\) # ((\Mux3~0_combout\) # ((\Mux3~9_combout\ & \Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X54_Y50_N30
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[62]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[62]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[62]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y45_N26
\Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2_combout\ = (\A[61]~input_o\ & ((\Add|G\(60)) # (\AddnSub~input_o\ $ (\B[61]~input_o\)))) # (!\A[61]~input_o\ & (\Add|G\(60) & (\AddnSub~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	datad => \Add|G\(60),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2_combout\);

-- Location: LCCOMB_X57_Y45_N12
\Add|S[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(62) = \Add|P\(62) $ (((\Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2_combout\) # ((\Add|block_carry_in[15]~50_combout\ & \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~2_combout\,
	datab => \Add|block_carry_in[15]~50_combout\,
	datac => \Add|P\(62),
	datad => \Add|GEN_BLOCKS:15:LACG_INST|C~1_combout\,
	combout => \Add|S\(62));

-- Location: LCCOMB_X57_Y47_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ShiftFN[1]~input_o\ & (!\B[5]~input_o\ & ((\Shift|ShiftRight0~211_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Add|S\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Add|S\(62),
	datad => \Shift|ShiftRight0~211_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y49_N14
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[59]~input_o\))) # (!\B[0]~input_o\ & (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X59_Y49_N8
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[61]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[61]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X59_Y49_N18
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftLeft0~266_combout\)))) # (!\B[2]~input_o\ & ((\Mux1~2_combout\) # ((\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~3_combout\,
	datad => \Shift|ShiftLeft0~266_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X60_Y48_N2
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~256_combout\))) # (!\B[3]~input_o\ & (\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Mux1~4_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~256_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X57_Y47_N26
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\B[5]~input_o\ & ((\Mux1~5_combout\) # ((\Shift|ShiftLeft0~230_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~230_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X57_Y47_N20
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!\ShiftFN[1]~input_o\ & ((\Mux1~6_combout\) # ((\B[5]~input_o\ & \Shift|ShiftLeft0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftLeft0~154_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X57_Y47_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\ & (\A[63]~input_o\)) # (!\B[5]~input_o\ & ((\Shift|ShiftRight1~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~116_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X57_Y47_N14
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\ShiftFN[0]~input_o\ & (((\Mux1~7_combout\) # (\Mux1~1_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux1~7_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X54_Y50_N12
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\))) # (!\ExtWord~input_o\ & (\Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X54_Y50_N16
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux1~9_combout\) # ((\Logic|Mux1~0_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux1~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux1~9_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X59_Y49_N28
\Shift|ShiftLeft0~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~274_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~274_combout\);

-- Location: LCCOMB_X59_Y49_N6
\Shift|ShiftLeft0~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~275_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~274_combout\) # ((\B[1]~input_o\ & \Shift|ShiftLeft0~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~271_combout\,
	datad => \Shift|ShiftLeft0~274_combout\,
	combout => \Shift|ShiftLeft0~275_combout\);

-- Location: LCCOMB_X61_Y50_N12
\Shift|ShiftLeft0~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~276_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~275_combout\) # ((\Shift|ShiftLeft0~269_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~269_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~275_combout\,
	combout => \Shift|ShiftLeft0~276_combout\);

-- Location: LCCOMB_X61_Y50_N6
\Shift|ShiftLeft0~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~277_combout\ = (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~276_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~276_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~259_combout\,
	datad => \B[5]~input_o\,
	combout => \Shift|ShiftLeft0~277_combout\);

-- Location: LCCOMB_X62_Y48_N22
\Shift|ShiftLeft0~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~273_combout\ = (\B[5]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~134_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~159_combout\,
	datad => \Shift|ShiftLeft0~134_combout\,
	combout => \Shift|ShiftLeft0~273_combout\);

-- Location: LCCOMB_X60_Y49_N18
\Shift|ShiftLeft0~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~272_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & (\Shift|ShiftLeft0~156_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~235_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftLeft0~156_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~235_combout\,
	combout => \Shift|ShiftLeft0~272_combout\);

-- Location: LCCOMB_X60_Y49_N4
\Shift|ShiftLeft0~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~278_combout\ = (\Shift|ShiftLeft0~272_combout\) # ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~277_combout\) # (\Shift|ShiftLeft0~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~277_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~273_combout\,
	datad => \Shift|ShiftLeft0~272_combout\,
	combout => \Shift|ShiftLeft0~278_combout\);

-- Location: LCCOMB_X56_Y45_N8
\Add|S_internal[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S_internal\(63) = \Add|P\(63) $ (((\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\) # ((\Add|block_carry_in[15]~50_combout\ & \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[15]~50_combout\,
	datab => \Add|GEN_BLOCKS:15:LACG_INST|Pout~2_combout\,
	datac => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\,
	datad => \Add|P\(63),
	combout => \Add|S_internal\(63));

-- Location: LCCOMB_X59_Y45_N20
\Shift|ShiftRight0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~213_combout\ = (\A[63]~input_o\ & (!\B[5]~input_o\ & !\Shift|ShiftLeft0~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftLeft0~155_combout\,
	combout => \Shift|ShiftRight0~213_combout\);

-- Location: LCCOMB_X59_Y45_N14
\Y_ShiftOrArith[31]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~18_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # (\Shift|ShiftRight0~213_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Add|S_internal\(63) & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S_internal\(63),
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ShiftRight0~213_combout\,
	combout => \Y_ShiftOrArith[31]~18_combout\);

-- Location: LCCOMB_X60_Y45_N18
\Y_ShiftOrArith[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~19_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[31]~18_combout\ & (\A[63]~input_o\)) # (!\Y_ShiftOrArith[31]~18_combout\ & ((\Shift|ShiftLeft0~278_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[31]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~278_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_ShiftOrArith[31]~18_combout\,
	combout => \Y_ShiftOrArith[31]~19_combout\);

-- Location: LCCOMB_X60_Y45_N6
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\B[63]~input_o\ & ((\A[63]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[63]~input_o\ & (\A[63]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y45_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Logic|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux0~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X60_Y45_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux3~0_combout\) # ((\Mux0~0_combout\) # ((\Y_ShiftOrArith[31]~19_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~19_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X57_Y48_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add|S\(34) & (!\Add|S\(35) & (!\Add|S\(38) & !\Add|S\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(34),
	datab => \Add|S\(35),
	datac => \Add|S\(38),
	datad => \Add|S\(31),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y50_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Add|S\(44) & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(44),
	datac => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y50_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add|S\(42) & !\Add|S\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|S\(42),
	datac => \Add|S\(39),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X58_Y53_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add|S\(18) & (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ $ (!\Add|P[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(18),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\,
	datad => \Add|P[15]~1_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X55_Y48_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Add|S\(7) & (!\Add|S\(10) & (!\Add|S\(14) & !\Add|S\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(7),
	datab => \Add|S\(10),
	datac => \Add|S\(14),
	datad => \Add|S\(11),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X49_Y48_N24
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~10_combout\ & (\Add|block_carry_in[5]~52_combout\ $ (!\Add|P\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[5]~52_combout\,
	datab => \Equal0~10_combout\,
	datac => \Add|P\(20),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X57_Y48_N30
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\Add|S\(3) & (!\Add|S\(2) & !\Add|S\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(3),
	datac => \Add|S\(2),
	datad => \Add|S\(4),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X56_Y51_N0
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Add|P\(53) & (\Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\ & (\Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ $ (!\Add|P\(57))))) # (!\Add|P\(53) & (!\Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\ & 
-- (\Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ $ (!\Add|P\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(53),
	datab => \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\,
	datac => \Add|P\(57),
	datad => \Add|GEN_BLOCKS:13:LACG_INST|C[1]~0_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X53_Y48_N24
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (\Add|P\(29) & (\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ & (\Add|P\(33) $ (!\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\)))) # (!\Add|P\(29) & (!\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ & (\Add|P\(33) $ 
-- (!\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(29),
	datab => \Add|P\(33),
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X53_Y48_N26
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (\Equal0~17_combout\ & (!\Add|S\(37) & (\Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ $ (!\Add|P\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\,
	datab => \Equal0~17_combout\,
	datac => \Add|P\(41),
	datad => \Add|S\(37),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X56_Y51_N18
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (!\Add|S\(49) & (\Equal0~19_combout\ & (\Equal0~18_combout\ & !\Add|S\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(49),
	datab => \Equal0~19_combout\,
	datac => \Equal0~18_combout\,
	datad => \Add|S\(45),
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X57_Y45_N30
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Add|P\(61) & (\Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\Add|P\(61) & (!\Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(61),
	datab => \Add|GEN_BLOCKS:15:LACG_INST|C[1]~2_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X54_Y50_N10
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (!\Add|S\(21) & (!\Add|S\(25) & (!\Add|S\(13) & !\Add|S\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(21),
	datab => \Add|S\(25),
	datac => \Add|S\(13),
	datad => \Add|S\(17),
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X54_Y50_N4
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\Add|S\(5) & (!\Add|S\(1) & (!\Add|S\(9) & \Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(5),
	datab => \Add|S\(1),
	datac => \Add|S\(9),
	datad => \Equal0~15_combout\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X49_Y48_N4
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~13_combout\ & (\Equal0~20_combout\ & (\Equal0~14_combout\ & \Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \Equal0~20_combout\,
	datac => \Equal0~14_combout\,
	datad => \Equal0~16_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X49_Y48_N26
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Add|S\(12) & (\Add|block_carry_in[4]~29_combout\ $ (!\Add|P\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[4]~29_combout\,
	datac => \Add|S\(12),
	datad => \Add|P\(16),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X49_Y48_N14
\Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = (!\Add|S\(6) & (\Equal0~21_combout\ & (\Equal0~12_combout\ & !\Add|S\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(6),
	datab => \Equal0~21_combout\,
	datac => \Equal0~12_combout\,
	datad => \Add|S\(8),
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X52_Y50_N20
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add|S\(24) & !\Add|S\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add|S\(24),
	datad => \Add|S\(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X52_Y48_N10
\Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~23_combout\ = (\Equal0~9_combout\ & (\Equal0~11_combout\ & (\Equal0~22_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~11_combout\,
	datac => \Equal0~22_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~23_combout\);

-- Location: LCCOMB_X52_Y48_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add|S\(26) & (!\Add|S\(19) & (!\Add|S\(23) & !\Add|S\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(26),
	datab => \Add|S\(19),
	datac => \Add|S\(23),
	datad => \Add|S\(22),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X52_Y48_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add|S\(30) & (\Add|P[27]~4_combout\ $ (((!\Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\ & !\Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~2_combout\,
	datab => \Add|P[27]~4_combout\,
	datac => \Add|S\(30),
	datad => \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X54_Y48_N4
\Add|S[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(32) = \Add|block_carry_in[8]~63_combout\ $ (\A[32]~input_o\ $ (\AddnSub~input_o\ $ (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[8]~63_combout\,
	datab => \A[32]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Add|S\(32));

-- Location: LCCOMB_X52_Y48_N4
\Equal0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~24_combout\ = (\Equal0~23_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & !\Add|S\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~23_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add|S\(32),
	combout => \Equal0~24_combout\);

-- Location: LCCOMB_X54_Y49_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add|S\(36) & (\Add|P\(40) $ (!\Add|block_carry_in[10]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(40),
	datab => \Add|S\(36),
	datac => \Add|block_carry_in[10]~55_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X50_Y50_N12
\Equal0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~25_combout\ = (\Equal0~4_combout\ & (\Equal0~2_combout\ & (\Equal0~24_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~24_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~25_combout\);

-- Location: LCCOMB_X52_Y54_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add|S\(52) & !\Add|S\(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|S\(52),
	datad => \Add|S\(48),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X54_Y54_N28
\Equal0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~26_combout\ = (!\Add|S\(46) & (!\Add|S\(47) & (!\Add|S\(43) & !\Add|S\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(46),
	datab => \Add|S\(47),
	datac => \Add|S\(43),
	datad => \Add|S\(50),
	combout => \Equal0~26_combout\);

-- Location: LCCOMB_X52_Y47_N24
\Equal0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~27_combout\ = (!\Add|S\(51) & (!\Add|S\(54) & (!\Add|S\(56) & \Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(51),
	datab => \Add|S\(54),
	datac => \Add|S\(56),
	datad => \Equal0~26_combout\,
	combout => \Equal0~27_combout\);

-- Location: LCCOMB_X56_Y46_N8
\Equal0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~28_combout\ = (\Equal0~27_combout\ & (!\Add|S\(59) & !\Add|S\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~27_combout\,
	datab => \Add|S\(59),
	datad => \Add|S\(60),
	combout => \Equal0~28_combout\);

-- Location: LCCOMB_X53_Y53_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add|S_internal\(63) & (!\Add|S\(58) & (!\Add|S\(62) & !\Add|S\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S_internal\(63),
	datab => \Add|S\(58),
	datac => \Add|S\(62),
	datad => \Add|S\(55),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\Equal0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~29_combout\ = (\Equal0~25_combout\ & (\Equal0~1_combout\ & (\Equal0~28_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~25_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~28_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~29_combout\);

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


