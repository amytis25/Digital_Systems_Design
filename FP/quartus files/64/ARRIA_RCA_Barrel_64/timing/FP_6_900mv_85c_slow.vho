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

-- DATE "12/02/2025 19:33:04"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
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
-- Y[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add|C[32]~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Add|C[33]~32_combout\ : std_logic;
SIGNAL \Add|C[34]~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Add|C[35]~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Add|C[36]~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Add|C[37]~36_combout\ : std_logic;
SIGNAL \Add|C[38]~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Add|C[39]~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Add|C[40]~39_combout\ : std_logic;
SIGNAL \Add|C[41]~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Add|C[42]~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Add|C[43]~42_combout\ : std_logic;
SIGNAL \Add|C[44]~43_combout\ : std_logic;
SIGNAL \Add|C[45]~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Add|C[46]~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Add|C[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Add|C[48]~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Add|C[49]~48_combout\ : std_logic;
SIGNAL \Add|C[50]~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Add|C[51]~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Add|C[52]~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Add|C[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Add|C[54]~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Add|C[55]~54_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Add|C[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Add|C[57]~56_combout\ : std_logic;
SIGNAL \Add|C[58]~57_combout\ : std_logic;
SIGNAL \Add|C[59]~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Add|C[60]~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Add|C[61]~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Add|C[62]~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Add|C[63]~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ll2[0]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[0]~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~4_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[48]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[60]~15_combout\ : std_logic;
SIGNAL \Shift|rl2[52]~14_combout\ : std_logic;
SIGNAL \Shift|rl2[56]~13_combout\ : std_logic;
SIGNAL \Shift|rl4[48]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[44]~11_combout\ : std_logic;
SIGNAL \Shift|rl2[32]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[40]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[36]~9_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[0]~0_combout\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux62~8_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~28_combout\ : std_logic;
SIGNAL \Mux62~4_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~29_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~30_combout\ : std_logic;
SIGNAL \Mux62~5_combout\ : std_logic;
SIGNAL \Shift|rl2[49]~21_combout\ : std_logic;
SIGNAL \Shift|rl1[61]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[61]~23_combout\ : std_logic;
SIGNAL \Shift|rl2[53]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[57]~22_combout\ : std_logic;
SIGNAL \Shift|rl4[49]~5_combout\ : std_logic;
SIGNAL \Shift|ra3[57]~0_combout\ : std_logic;
SIGNAL \Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[41]~18_combout\ : std_logic;
SIGNAL \Shift|rl2[37]~17_combout\ : std_logic;
SIGNAL \Shift|rl2[33]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[45]~19_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[29]~27_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~26_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~24_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~25_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~6_combout\ : std_logic;
SIGNAL \Mux62~6_combout\ : std_logic;
SIGNAL \Mux62~3_combout\ : std_logic;
SIGNAL \Shift|ll2[1]~2_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~1_combout\ : std_logic;
SIGNAL \Mux62~7_combout\ : std_logic;
SIGNAL \Mux62~9_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[2]~2_combout\ : std_logic;
SIGNAL \Shift|rl4[50]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[54]~35_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~37_combout\ : std_logic;
SIGNAL \Shift|rl2[50]~36_combout\ : std_logic;
SIGNAL \Shift|rl4[50]~9_combout\ : std_logic;
SIGNAL \Shift|ra3[58]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[42]~33_combout\ : std_logic;
SIGNAL \Shift|rl2[46]~34_combout\ : std_logic;
SIGNAL \Shift|rl2[34]~31_combout\ : std_logic;
SIGNAL \Shift|rl2[38]~32_combout\ : std_logic;
SIGNAL \Shift|rl4[34]~7_combout\ : std_logic;
SIGNAL \Y_R[1]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~44_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~42_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~43_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~40_combout\ : std_logic;
SIGNAL \Shift|rl2[30]~41_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~38_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~39_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~10_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~4_combout\ : std_logic;
SIGNAL \Shift|ll4[3]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~54_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~52_combout\ : std_logic;
SIGNAL \Shift|rl2[31]~55_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~53_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[55]~49_combout\ : std_logic;
SIGNAL \Shift|rl2[59]~50_combout\ : std_logic;
SIGNAL \Shift|rl2[51]~51_combout\ : std_logic;
SIGNAL \Shift|ra4[51]~0_combout\ : std_logic;
SIGNAL \Shift|rl4[51]~43_combout\ : std_logic;
SIGNAL \Shift|rl2[35]~45_combout\ : std_logic;
SIGNAL \Shift|rl2[47]~48_combout\ : std_logic;
SIGNAL \Shift|rl2[39]~46_combout\ : std_logic;
SIGNAL \Shift|rl2[43]~47_combout\ : std_logic;
SIGNAL \Shift|rl4[35]~11_combout\ : std_logic;
SIGNAL \Y_R[1]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~57_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~56_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~58_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[4]~4_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~14_combout\ : std_logic;
SIGNAL \Shift|ra4[52]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[36]~13_combout\ : std_logic;
SIGNAL \Y_R[1]~7_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[5]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~16_combout\ : std_logic;
SIGNAL \Y_R[1]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[37]~15_combout\ : std_logic;
SIGNAL \Shift|ra4[53]~10_combout\ : std_logic;
SIGNAL \Y_R[1]~9_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[6]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[54]~18_combout\ : std_logic;
SIGNAL \Shift|rl4[38]~17_combout\ : std_logic;
SIGNAL \Shift|ra4[54]~6_combout\ : std_logic;
SIGNAL \Y_R[1]~10_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~19_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[7]~7_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Shift|ra3[62]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~11_combout\ : std_logic;
SIGNAL \Shift|rl4[55]~21_combout\ : std_logic;
SIGNAL \Shift|rl4[39]~20_combout\ : std_logic;
SIGNAL \Y_R[1]~12_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~22_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~9_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~25_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Shift|rl4[56]~24_combout\ : std_logic;
SIGNAL \Shift|rl4[40]~23_combout\ : std_logic;
SIGNAL \Y_R[1]~13_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~28_combout\ : std_logic;
SIGNAL \Y_R[1]~14_combout\ : std_logic;
SIGNAL \Shift|rl4[57]~27_combout\ : std_logic;
SIGNAL \Shift|rl4[41]~26_combout\ : std_logic;
SIGNAL \Y_R[1]~15_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~9_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~11_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~31_combout\ : std_logic;
SIGNAL \Y_R[1]~16_combout\ : std_logic;
SIGNAL \Shift|rl4[58]~30_combout\ : std_logic;
SIGNAL \Shift|rl4[42]~29_combout\ : std_logic;
SIGNAL \Y_R[1]~17_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~11_combout\ : std_logic;
SIGNAL \Shift|rl4[59]~33_combout\ : std_logic;
SIGNAL \Shift|rl4[43]~32_combout\ : std_logic;
SIGNAL \Y_R[1]~18_combout\ : std_logic;
SIGNAL \Y_R[1]~19_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~34_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~12_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~36_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~35_combout\ : std_logic;
SIGNAL \Y_R[1]~42_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~14_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~13_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Y_R[1]~20_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~37_combout\ : std_logic;
SIGNAL \Shift|ra4[61]~2_combout\ : std_logic;
SIGNAL \Shift|ra4[61]~3_combout\ : std_logic;
SIGNAL \Y_R[1]~21_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~38_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Y_R[1]~22_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~39_combout\ : std_logic;
SIGNAL \Shift|ra4[62]~4_combout\ : std_logic;
SIGNAL \Shift|ra4[62]~5_combout\ : std_logic;
SIGNAL \Y_R[1]~23_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~40_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~14_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Shift|rl4[31]~42_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~41_combout\ : std_logic;
SIGNAL \Y_R[1]~24_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~16_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~15_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Y_R[1]~25_combout\ : std_logic;
SIGNAL \Y_R[1]~26_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~17_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~16_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Y_R[1]~27_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~18_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~17_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~19_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~18_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Y_R[1]~28_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~20_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~19_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Y_R[1]~29_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux43~8_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~21_combout\ : std_logic;
SIGNAL \Shift|ll4[20]~20_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \Y_R[1]~30_combout\ : std_logic;
SIGNAL \Mux43~7_combout\ : std_logic;
SIGNAL \Mux43~9_combout\ : std_logic;
SIGNAL \Y_R[1]~31_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~22_combout\ : std_logic;
SIGNAL \Shift|ll4[21]~21_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Y_R[1]~32_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~23_combout\ : std_logic;
SIGNAL \Shift|ll4[22]~22_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~24_combout\ : std_logic;
SIGNAL \Shift|ll4[23]~23_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Y_R[1]~33_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~25_combout\ : std_logic;
SIGNAL \Shift|ll4[24]~24_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Y_R[1]~34_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~26_combout\ : std_logic;
SIGNAL \Shift|ll4[25]~25_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Y_R[1]~35_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~27_combout\ : std_logic;
SIGNAL \Shift|ll4[26]~26_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Y_R[1]~36_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~28_combout\ : std_logic;
SIGNAL \Shift|ll4[27]~27_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Y_R[1]~37_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Y_R[1]~38_combout\ : std_logic;
SIGNAL \Shift|ll2[28]~29_combout\ : std_logic;
SIGNAL \Shift|ll4[28]~28_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Shift|ll2[29]~30_combout\ : std_logic;
SIGNAL \Shift|ll4[29]~29_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Y_R[1]~39_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Y_R[1]~40_combout\ : std_logic;
SIGNAL \Shift|ll2[30]~31_combout\ : std_logic;
SIGNAL \Shift|ll4[30]~30_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Y_R_Ext[31]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~32_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~31_combout\ : std_logic;
SIGNAL \Y_LorS_Ext[31]~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \Y_R[32]~41_combout\ : std_logic;
SIGNAL \Shift|ll2[32]~33_combout\ : std_logic;
SIGNAL \Shift|ll4[32]~32_combout\ : std_logic;
SIGNAL \Y_LorS[32]~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Shift|ll2[33]~34_combout\ : std_logic;
SIGNAL \Shift|ll4[33]~33_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Shift|ll2[34]~35_combout\ : std_logic;
SIGNAL \Shift|ll4[34]~34_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Shift|ll2[35]~36_combout\ : std_logic;
SIGNAL \Shift|ll4[35]~35_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Shift|ll2[36]~37_combout\ : std_logic;
SIGNAL \Shift|ll4[36]~36_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Shift|ll2[37]~38_combout\ : std_logic;
SIGNAL \Shift|ll4[37]~37_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Shift|ll2[38]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[38]~38_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Shift|ll2[39]~40_combout\ : std_logic;
SIGNAL \Shift|ll4[39]~39_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Shift|ll2[40]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[40]~40_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Shift|ll2[41]~42_combout\ : std_logic;
SIGNAL \Shift|ll4[41]~41_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Shift|ll2[42]~43_combout\ : std_logic;
SIGNAL \Shift|ll4[42]~42_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Shift|ll2[43]~44_combout\ : std_logic;
SIGNAL \Shift|ll4[43]~43_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Shift|ll2[44]~45_combout\ : std_logic;
SIGNAL \Shift|ll4[44]~44_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ll2[45]~46_combout\ : std_logic;
SIGNAL \Shift|ll4[45]~45_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Shift|ll2[46]~47_combout\ : std_logic;
SIGNAL \Shift|ll4[46]~46_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add|S[47]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[47]~48_combout\ : std_logic;
SIGNAL \Shift|ll4[47]~47_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Shift|ll2[48]~49_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ll2[49]~50_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Add|S[50]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[50]~51_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Shift|ll2[51]~52_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Shift|ll2[52]~53_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Add|S[53]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[53]~54_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Shift|ll2[54]~55_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Shift|ll2[55]~56_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Add|S[56]~3_combout\ : std_logic;
SIGNAL \Shift|ll2[56]~57_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~58_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Shift|ll2[58]~59_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Shift|ll2[59]~60_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add|S[59]~4_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ll2[63]~61_combout\ : std_logic;
SIGNAL \Shift|ll4[63]~48_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~0_combout\ : std_logic;
SIGNAL \Add|S[63]~5_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[63]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[63]~48_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[63]~61_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(63 DOWNTO 1);
SIGNAL \Add|ALT_INV_S[63]~5_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[59]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[59]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[58]~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[57]~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[56]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[56]~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[55]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[54]~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[53]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[53]~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[52]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[51]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[50]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[50]~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[49]~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[48]~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[47]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[47]~47_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[47]~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[46]~46_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[46]~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[45]~45_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[45]~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[44]~44_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[44]~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[43]~43_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[43]~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[42]~42_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[42]~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[41]~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[41]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[40]~40_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[40]~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[39]~39_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[39]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[38]~38_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[38]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[37]~37_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[37]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[36]~36_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[36]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[35]~35_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[35]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[34]~34_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[34]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[33]~33_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[33]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[32]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[32]~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[32]~32_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[32]~33_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS_Ext[31]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[31]~31_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[31]~32_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[30]~30_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[30]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[29]~29_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[29]~30_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[28]~28_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[28]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[27]~27_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[27]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[26]~26_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[26]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[25]~25_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[25]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[24]~24_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[24]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[23]~23_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[23]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[22]~22_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[22]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[21]~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[21]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[20]~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[20]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[19]~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[19]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[18]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[18]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[17]~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[17]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[16]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[16]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[31]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~24_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[47]~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[15]~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[30]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~22_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[62]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[62]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[46]~39_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[14]~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[14]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[29]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[61]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[61]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[45]~37_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[13]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[13]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[28]~36_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[44]~35_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[12]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[12]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[27]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[59]~33_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[43]~32_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[11]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[26]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[58]~30_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[42]~29_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[10]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[25]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[57]~27_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[41]~26_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[9]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[24]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[56]~24_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[40]~23_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[8]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[23]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[55]~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[39]~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[7]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[54]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[62]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[38]~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[6]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[21]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[37]~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[5]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[20]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[52]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[36]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[4]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[15]~58_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[11]~57_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[7]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[19]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[31]~55_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[27]~54_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[23]~53_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[19]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[51]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[51]~51_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[59]~50_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[55]~49_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[35]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[47]~48_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[43]~47_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[39]~46_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[35]~45_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[3]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[14]~44_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[10]~43_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[6]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[18]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[30]~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[26]~40_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[22]~39_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[18]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[58]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[50]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[50]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[58]~37_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[50]~36_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[54]~35_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[34]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[46]~34_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[42]~33_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[38]~32_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[34]~31_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[2]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[13]~30_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[9]~29_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[5]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[17]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[29]~27_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[25]~26_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[21]~25_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[17]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[57]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[49]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[61]~23_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl1[61]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[57]~22_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[49]~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[53]~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[33]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[45]~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[41]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[37]~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[33]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[1]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[63]~62_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[62]~61_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[61]~60_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[60]~59_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[59]~58_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[58]~57_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[57]~56_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[56]~55_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[55]~54_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[54]~53_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[53]~52_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[52]~51_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[51]~50_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[50]~49_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[49]~48_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[48]~47_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[47]~46_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[46]~45_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[45]~44_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[44]~43_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[43]~42_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[42]~41_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[41]~40_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[40]~39_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[39]~38_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[38]~37_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[37]~36_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[36]~35_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[35]~34_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[34]~33_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[33]~32_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[32]~31_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[31]~30_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[30]~29_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[29]~28_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[28]~27_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[27]~26_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[26]~25_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[25]~24_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[24]~23_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[23]~22_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[22]~21_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[21]~20_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[20]~19_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[19]~18_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[18]~17_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[17]~16_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[16]~15_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[15]~14_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[14]~13_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[13]~12_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[12]~11_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[11]~10_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[10]~9_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[9]~8_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[8]~7_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[7]~6_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[6]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[5]~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[48]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[60]~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[52]~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[56]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[48]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[32]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[44]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[40]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[36]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[32]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[16]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[28]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[24]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[20]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[16]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[51]~43_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[53]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[54]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R_Ext[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS[32]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;

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
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Mux14~4_combout\ <= NOT \Mux14~4_combout\;
\ALT_INV_Mux13~4_combout\ <= NOT \Mux13~4_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\ALT_INV_Mux11~4_combout\ <= NOT \Mux11~4_combout\;
\ALT_INV_Mux10~4_combout\ <= NOT \Mux10~4_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;
\ALT_INV_Mux8~4_combout\ <= NOT \Mux8~4_combout\;
\ALT_INV_Mux7~4_combout\ <= NOT \Mux7~4_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\ALT_INV_Mux4~4_combout\ <= NOT \Mux4~4_combout\;
\ALT_INV_Mux3~5_combout\ <= NOT \Mux3~5_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_Equal0~15_combout\ <= NOT \Equal0~15_combout\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\Shift|ALT_INV_Y_LL[63]~0_combout\ <= NOT \Shift|Y_LL[63]~0_combout\;
\Shift|ALT_INV_ll4[63]~48_combout\ <= NOT \Shift|ll4[63]~48_combout\;
\Shift|ALT_INV_ll2[63]~61_combout\ <= NOT \Shift|ll2[63]~61_combout\;
\Add|ALT_INV_S\(63) <= NOT \Add|S\(63);
\Add|ALT_INV_S[63]~5_combout\ <= NOT \Add|S[63]~5_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\Add|ALT_INV_S\(62) <= NOT \Add|S\(62);
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\Add|ALT_INV_S\(61) <= NOT \Add|S\(61);
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\Add|ALT_INV_S\(60) <= NOT \Add|S\(60);
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\Add|ALT_INV_S\(59) <= NOT \Add|S\(59);
\Add|ALT_INV_S[59]~4_combout\ <= NOT \Add|S[59]~4_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\Shift|ALT_INV_ll2[59]~60_combout\ <= NOT \Shift|ll2[59]~60_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\Add|ALT_INV_S\(58) <= NOT \Add|S\(58);
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\Shift|ALT_INV_ll2[58]~59_combout\ <= NOT \Shift|ll2[58]~59_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\Add|ALT_INV_S\(57) <= NOT \Add|S\(57);
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Shift|ALT_INV_ll2[57]~58_combout\ <= NOT \Shift|ll2[57]~58_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\Add|ALT_INV_S\(56) <= NOT \Add|S\(56);
\Add|ALT_INV_S[56]~3_combout\ <= NOT \Add|S[56]~3_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Shift|ALT_INV_ll2[56]~57_combout\ <= NOT \Shift|ll2[56]~57_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\Add|ALT_INV_S\(55) <= NOT \Add|S\(55);
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Shift|ALT_INV_ll2[55]~56_combout\ <= NOT \Shift|ll2[55]~56_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\Add|ALT_INV_S\(54) <= NOT \Add|S\(54);
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Shift|ALT_INV_ll2[54]~55_combout\ <= NOT \Shift|ll2[54]~55_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\Add|ALT_INV_S\(53) <= NOT \Add|S\(53);
\Add|ALT_INV_S[53]~2_combout\ <= NOT \Add|S[53]~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\Shift|ALT_INV_ll2[53]~54_combout\ <= NOT \Shift|ll2[53]~54_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\Add|ALT_INV_S\(52) <= NOT \Add|S\(52);
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\Shift|ALT_INV_ll2[52]~53_combout\ <= NOT \Shift|ll2[52]~53_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\Add|ALT_INV_S\(51) <= NOT \Add|S\(51);
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Shift|ALT_INV_ll2[51]~52_combout\ <= NOT \Shift|ll2[51]~52_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\Add|ALT_INV_S\(50) <= NOT \Add|S\(50);
\Add|ALT_INV_S[50]~1_combout\ <= NOT \Add|S[50]~1_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Shift|ALT_INV_ll2[50]~51_combout\ <= NOT \Shift|ll2[50]~51_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\Add|ALT_INV_S\(49) <= NOT \Add|S\(49);
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\Shift|ALT_INV_ll2[49]~50_combout\ <= NOT \Shift|ll2[49]~50_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux15~4_combout\ <= NOT \Mux15~4_combout\;
\ALT_INV_Mux15~3_combout\ <= NOT \Mux15~3_combout\;
\Add|ALT_INV_S\(48) <= NOT \Add|S\(48);
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\Shift|ALT_INV_ll2[48]~49_combout\ <= NOT \Shift|ll2[48]~49_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~3_combout\ <= NOT \Mux16~3_combout\;
\ALT_INV_Mux16~2_combout\ <= NOT \Mux16~2_combout\;
\Add|ALT_INV_S\(47) <= NOT \Add|S\(47);
\Add|ALT_INV_S[47]~0_combout\ <= NOT \Add|S[47]~0_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\Shift|ALT_INV_ll4[47]~47_combout\ <= NOT \Shift|ll4[47]~47_combout\;
\Shift|ALT_INV_ll2[47]~48_combout\ <= NOT \Shift|ll2[47]~48_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\Add|ALT_INV_S\(46) <= NOT \Add|S\(46);
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\Shift|ALT_INV_ll4[46]~46_combout\ <= NOT \Shift|ll4[46]~46_combout\;
\Shift|ALT_INV_ll2[46]~47_combout\ <= NOT \Shift|ll2[46]~47_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~3_combout\ <= NOT \Mux18~3_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\Add|ALT_INV_S\(45) <= NOT \Add|S\(45);
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\Shift|ALT_INV_ll4[45]~45_combout\ <= NOT \Shift|ll4[45]~45_combout\;
\Shift|ALT_INV_ll2[45]~46_combout\ <= NOT \Shift|ll2[45]~46_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\Add|ALT_INV_S\(44) <= NOT \Add|S\(44);
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\Shift|ALT_INV_ll4[44]~44_combout\ <= NOT \Shift|ll4[44]~44_combout\;
\Shift|ALT_INV_ll2[44]~45_combout\ <= NOT \Shift|ll2[44]~45_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\Add|ALT_INV_S\(43) <= NOT \Add|S\(43);
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\Shift|ALT_INV_ll4[43]~43_combout\ <= NOT \Shift|ll4[43]~43_combout\;
\Shift|ALT_INV_ll2[43]~44_combout\ <= NOT \Shift|ll2[43]~44_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\Add|ALT_INV_S\(42) <= NOT \Add|S\(42);
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\Shift|ALT_INV_ll4[42]~42_combout\ <= NOT \Shift|ll4[42]~42_combout\;
\Shift|ALT_INV_ll2[42]~43_combout\ <= NOT \Shift|ll2[42]~43_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\Add|ALT_INV_S\(41) <= NOT \Add|S\(41);
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\Shift|ALT_INV_ll4[41]~41_combout\ <= NOT \Shift|ll4[41]~41_combout\;
\Shift|ALT_INV_ll2[41]~42_combout\ <= NOT \Shift|ll2[41]~42_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~5_combout\ <= NOT \Mux23~5_combout\;
\ALT_INV_Mux23~4_combout\ <= NOT \Mux23~4_combout\;
\Add|ALT_INV_S\(40) <= NOT \Add|S\(40);
\ALT_INV_Mux23~3_combout\ <= NOT \Mux23~3_combout\;
\Shift|ALT_INV_ll4[40]~40_combout\ <= NOT \Shift|ll4[40]~40_combout\;
\Shift|ALT_INV_ll2[40]~41_combout\ <= NOT \Shift|ll2[40]~41_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\Add|ALT_INV_S\(39) <= NOT \Add|S\(39);
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\Shift|ALT_INV_ll4[39]~39_combout\ <= NOT \Shift|ll4[39]~39_combout\;
\Shift|ALT_INV_ll2[39]~40_combout\ <= NOT \Shift|ll2[39]~40_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\Add|ALT_INV_S\(38) <= NOT \Add|S\(38);
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\Shift|ALT_INV_ll4[38]~38_combout\ <= NOT \Shift|ll4[38]~38_combout\;
\Shift|ALT_INV_ll2[38]~39_combout\ <= NOT \Shift|ll2[38]~39_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\Add|ALT_INV_S\(37) <= NOT \Add|S\(37);
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\Shift|ALT_INV_ll4[37]~37_combout\ <= NOT \Shift|ll4[37]~37_combout\;
\Shift|ALT_INV_ll2[37]~38_combout\ <= NOT \Shift|ll2[37]~38_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\Add|ALT_INV_S\(36) <= NOT \Add|S\(36);
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\Shift|ALT_INV_ll4[36]~36_combout\ <= NOT \Shift|ll4[36]~36_combout\;
\Shift|ALT_INV_ll2[36]~37_combout\ <= NOT \Shift|ll2[36]~37_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\Add|ALT_INV_S\(35) <= NOT \Add|S\(35);
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\Shift|ALT_INV_ll4[35]~35_combout\ <= NOT \Shift|ll4[35]~35_combout\;
\Shift|ALT_INV_ll2[35]~36_combout\ <= NOT \Shift|ll2[35]~36_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\Add|ALT_INV_S\(34) <= NOT \Add|S\(34);
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\Shift|ALT_INV_ll4[34]~34_combout\ <= NOT \Shift|ll4[34]~34_combout\;
\Shift|ALT_INV_ll2[34]~35_combout\ <= NOT \Shift|ll2[34]~35_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~4_combout\ <= NOT \Mux30~4_combout\;
\ALT_INV_Mux30~3_combout\ <= NOT \Mux30~3_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\Add|ALT_INV_S\(33) <= NOT \Add|S\(33);
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\Shift|ALT_INV_ll4[33]~33_combout\ <= NOT \Shift|ll4[33]~33_combout\;
\Shift|ALT_INV_ll2[33]~34_combout\ <= NOT \Shift|ll2[33]~34_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Y_ShiftOrArith[32]~0_combout\ <= NOT \Y_ShiftOrArith[32]~0_combout\;
\ALT_INV_Y_R[32]~41_combout\ <= NOT \Y_R[32]~41_combout\;
\Shift|ALT_INV_ll4[32]~32_combout\ <= NOT \Shift|ll4[32]~32_combout\;
\Shift|ALT_INV_ll2[32]~33_combout\ <= NOT \Shift|ll2[32]~33_combout\;
\Add|ALT_INV_S\(32) <= NOT \Add|S\(32);
\Logic|ALT_INV_Mux31~0_combout\ <= NOT \Logic|Mux31~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Y_LorS_Ext[31]~0_combout\ <= NOT \Y_LorS_Ext[31]~0_combout\;
\Shift|ALT_INV_ll4[31]~31_combout\ <= NOT \Shift|ll4[31]~31_combout\;
\Shift|ALT_INV_ll2[31]~32_combout\ <= NOT \Shift|ll2[31]~32_combout\;
\Add|ALT_INV_S\(31) <= NOT \Add|S\(31);
\Logic|ALT_INV_Mux32~0_combout\ <= NOT \Logic|Mux32~0_combout\;
\ALT_INV_Mux33~2_combout\ <= NOT \Mux33~2_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\Shift|ALT_INV_ll4[30]~30_combout\ <= NOT \Shift|ll4[30]~30_combout\;
\Shift|ALT_INV_ll2[30]~31_combout\ <= NOT \Shift|ll2[30]~31_combout\;
\Add|ALT_INV_S\(30) <= NOT \Add|S\(30);
\ALT_INV_Y_R[1]~40_combout\ <= NOT \Y_R[1]~40_combout\;
\ALT_INV_Mux34~2_combout\ <= NOT \Mux34~2_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\Shift|ALT_INV_ll4[29]~29_combout\ <= NOT \Shift|ll4[29]~29_combout\;
\Shift|ALT_INV_ll2[29]~30_combout\ <= NOT \Shift|ll2[29]~30_combout\;
\Add|ALT_INV_S\(29) <= NOT \Add|S\(29);
\ALT_INV_Y_R[1]~39_combout\ <= NOT \Y_R[1]~39_combout\;
\ALT_INV_Mux35~2_combout\ <= NOT \Mux35~2_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\Shift|ALT_INV_ll4[28]~28_combout\ <= NOT \Shift|ll4[28]~28_combout\;
\Shift|ALT_INV_ll2[28]~29_combout\ <= NOT \Shift|ll2[28]~29_combout\;
\Add|ALT_INV_S\(28) <= NOT \Add|S\(28);
\ALT_INV_Y_R[1]~38_combout\ <= NOT \Y_R[1]~38_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\Shift|ALT_INV_ll4[27]~27_combout\ <= NOT \Shift|ll4[27]~27_combout\;
\Shift|ALT_INV_ll2[27]~28_combout\ <= NOT \Shift|ll2[27]~28_combout\;
\Add|ALT_INV_S\(27) <= NOT \Add|S\(27);
\ALT_INV_Y_R[1]~37_combout\ <= NOT \Y_R[1]~37_combout\;
\ALT_INV_Mux37~2_combout\ <= NOT \Mux37~2_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\Shift|ALT_INV_ll4[26]~26_combout\ <= NOT \Shift|ll4[26]~26_combout\;
\Shift|ALT_INV_ll2[26]~27_combout\ <= NOT \Shift|ll2[26]~27_combout\;
\Add|ALT_INV_S\(26) <= NOT \Add|S\(26);
\ALT_INV_Y_R[1]~36_combout\ <= NOT \Y_R[1]~36_combout\;
\ALT_INV_Mux38~2_combout\ <= NOT \Mux38~2_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\Shift|ALT_INV_ll4[25]~25_combout\ <= NOT \Shift|ll4[25]~25_combout\;
\Shift|ALT_INV_ll2[25]~26_combout\ <= NOT \Shift|ll2[25]~26_combout\;
\Add|ALT_INV_S\(25) <= NOT \Add|S\(25);
\ALT_INV_Y_R[1]~35_combout\ <= NOT \Y_R[1]~35_combout\;
\ALT_INV_Mux39~2_combout\ <= NOT \Mux39~2_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\Shift|ALT_INV_ll4[24]~24_combout\ <= NOT \Shift|ll4[24]~24_combout\;
\Shift|ALT_INV_ll2[24]~25_combout\ <= NOT \Shift|ll2[24]~25_combout\;
\Add|ALT_INV_S\(24) <= NOT \Add|S\(24);
\ALT_INV_Y_R[1]~34_combout\ <= NOT \Y_R[1]~34_combout\;
\ALT_INV_Mux40~2_combout\ <= NOT \Mux40~2_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\Shift|ALT_INV_ll4[23]~23_combout\ <= NOT \Shift|ll4[23]~23_combout\;
\Shift|ALT_INV_ll2[23]~24_combout\ <= NOT \Shift|ll2[23]~24_combout\;
\Add|ALT_INV_S\(23) <= NOT \Add|S\(23);
\ALT_INV_Y_R[1]~33_combout\ <= NOT \Y_R[1]~33_combout\;
\ALT_INV_Mux41~2_combout\ <= NOT \Mux41~2_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\Shift|ALT_INV_ll4[22]~22_combout\ <= NOT \Shift|ll4[22]~22_combout\;
\Shift|ALT_INV_ll2[22]~23_combout\ <= NOT \Shift|ll2[22]~23_combout\;
\Add|ALT_INV_S\(22) <= NOT \Add|S\(22);
\ALT_INV_Y_R[1]~32_combout\ <= NOT \Y_R[1]~32_combout\;
\ALT_INV_Mux42~2_combout\ <= NOT \Mux42~2_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\Shift|ALT_INV_ll4[21]~21_combout\ <= NOT \Shift|ll4[21]~21_combout\;
\Shift|ALT_INV_ll2[21]~22_combout\ <= NOT \Shift|ll2[21]~22_combout\;
\Add|ALT_INV_S\(21) <= NOT \Add|S\(21);
\ALT_INV_Y_R[1]~31_combout\ <= NOT \Y_R[1]~31_combout\;
\ALT_INV_Mux43~8_combout\ <= NOT \Mux43~8_combout\;
\ALT_INV_Mux43~7_combout\ <= NOT \Mux43~7_combout\;
\ALT_INV_Mux43~6_combout\ <= NOT \Mux43~6_combout\;
\Shift|ALT_INV_ll4[20]~20_combout\ <= NOT \Shift|ll4[20]~20_combout\;
\Shift|ALT_INV_ll2[20]~21_combout\ <= NOT \Shift|ll2[20]~21_combout\;
\Add|ALT_INV_S\(20) <= NOT \Add|S\(20);
\ALT_INV_Y_R[1]~30_combout\ <= NOT \Y_R[1]~30_combout\;
\ALT_INV_Mux44~2_combout\ <= NOT \Mux44~2_combout\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\Shift|ALT_INV_ll4[19]~19_combout\ <= NOT \Shift|ll4[19]~19_combout\;
\Shift|ALT_INV_ll2[19]~20_combout\ <= NOT \Shift|ll2[19]~20_combout\;
\Add|ALT_INV_S\(19) <= NOT \Add|S\(19);
\ALT_INV_Y_R[1]~29_combout\ <= NOT \Y_R[1]~29_combout\;
\ALT_INV_Mux45~2_combout\ <= NOT \Mux45~2_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\Shift|ALT_INV_ll4[18]~18_combout\ <= NOT \Shift|ll4[18]~18_combout\;
\Shift|ALT_INV_ll2[18]~19_combout\ <= NOT \Shift|ll2[18]~19_combout\;
\Add|ALT_INV_S\(18) <= NOT \Add|S\(18);
\ALT_INV_Y_R[1]~28_combout\ <= NOT \Y_R[1]~28_combout\;
\ALT_INV_Mux46~2_combout\ <= NOT \Mux46~2_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\Shift|ALT_INV_ll4[17]~17_combout\ <= NOT \Shift|ll4[17]~17_combout\;
\Shift|ALT_INV_ll2[17]~18_combout\ <= NOT \Shift|ll2[17]~18_combout\;
\Add|ALT_INV_S\(17) <= NOT \Add|S\(17);
\ALT_INV_Y_R[1]~27_combout\ <= NOT \Y_R[1]~27_combout\;
\ALT_INV_Mux47~2_combout\ <= NOT \Mux47~2_combout\;
\ALT_INV_Mux43~5_combout\ <= NOT \Mux43~5_combout\;
\ALT_INV_Mux43~4_combout\ <= NOT \Mux43~4_combout\;
\ALT_INV_Mux47~1_combout\ <= NOT \Mux47~1_combout\;
\ALT_INV_Mux47~0_combout\ <= NOT \Mux47~0_combout\;
\Shift|ALT_INV_ll4[16]~16_combout\ <= NOT \Shift|ll4[16]~16_combout\;
\Shift|ALT_INV_ll2[16]~17_combout\ <= NOT \Shift|ll2[16]~17_combout\;
\Add|ALT_INV_S\(16) <= NOT \Add|S\(16);
\ALT_INV_Mux43~3_combout\ <= NOT \Mux43~3_combout\;
\ALT_INV_Mux43~2_combout\ <= NOT \Mux43~2_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Y_R[1]~26_combout\ <= NOT \Y_R[1]~26_combout\;
\ALT_INV_Y_R[1]~25_combout\ <= NOT \Y_R[1]~25_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux48~3_combout\ <= NOT \Mux48~3_combout\;
\ALT_INV_Mux48~2_combout\ <= NOT \Mux48~2_combout\;
\ALT_INV_Mux48~1_combout\ <= NOT \Mux48~1_combout\;
\Shift|ALT_INV_rl4[31]~42_combout\ <= NOT \Shift|rl4[31]~42_combout\;
\ALT_INV_Y_R[1]~24_combout\ <= NOT \Y_R[1]~24_combout\;
\Shift|ALT_INV_rl4[47]~41_combout\ <= NOT \Shift|rl4[47]~41_combout\;
\Shift|ALT_INV_ll4[15]~15_combout\ <= NOT \Shift|ll4[15]~15_combout\;
\Shift|ALT_INV_ll2[15]~16_combout\ <= NOT \Shift|ll2[15]~16_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\Add|ALT_INV_S\(15) <= NOT \Add|S\(15);
\ALT_INV_Mux49~3_combout\ <= NOT \Mux49~3_combout\;
\ALT_INV_Mux49~2_combout\ <= NOT \Mux49~2_combout\;
\ALT_INV_Mux49~1_combout\ <= NOT \Mux49~1_combout\;
\Shift|ALT_INV_rl4[30]~40_combout\ <= NOT \Shift|rl4[30]~40_combout\;
\ALT_INV_Y_R[1]~23_combout\ <= NOT \Y_R[1]~23_combout\;
\ALT_INV_Y_R[1]~22_combout\ <= NOT \Y_R[1]~22_combout\;
\Shift|ALT_INV_ra4[62]~5_combout\ <= NOT \Shift|ra4[62]~5_combout\;
\Shift|ALT_INV_ra4[62]~4_combout\ <= NOT \Shift|ra4[62]~4_combout\;
\Shift|ALT_INV_rl4[46]~39_combout\ <= NOT \Shift|rl4[46]~39_combout\;
\Shift|ALT_INV_ll4[14]~14_combout\ <= NOT \Shift|ll4[14]~14_combout\;
\Shift|ALT_INV_ll2[14]~15_combout\ <= NOT \Shift|ll2[14]~15_combout\;
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\Add|ALT_INV_S\(14) <= NOT \Add|S\(14);
\ALT_INV_Mux50~3_combout\ <= NOT \Mux50~3_combout\;
\ALT_INV_Mux50~2_combout\ <= NOT \Mux50~2_combout\;
\ALT_INV_Mux50~1_combout\ <= NOT \Mux50~1_combout\;
\Shift|ALT_INV_rl4[29]~38_combout\ <= NOT \Shift|rl4[29]~38_combout\;
\ALT_INV_Y_R[1]~21_combout\ <= NOT \Y_R[1]~21_combout\;
\ALT_INV_Y_R[1]~20_combout\ <= NOT \Y_R[1]~20_combout\;
\Shift|ALT_INV_ra4[61]~3_combout\ <= NOT \Shift|ra4[61]~3_combout\;
\Shift|ALT_INV_ra4[61]~2_combout\ <= NOT \Shift|ra4[61]~2_combout\;
\Shift|ALT_INV_rl4[45]~37_combout\ <= NOT \Shift|rl4[45]~37_combout\;
\Shift|ALT_INV_ll4[13]~13_combout\ <= NOT \Shift|ll4[13]~13_combout\;
\Shift|ALT_INV_ll2[13]~14_combout\ <= NOT \Shift|ll2[13]~14_combout\;
\ALT_INV_Mux50~0_combout\ <= NOT \Mux50~0_combout\;
\Add|ALT_INV_S\(13) <= NOT \Add|S\(13);
\ALT_INV_Mux51~3_combout\ <= NOT \Mux51~3_combout\;
\ALT_INV_Mux51~2_combout\ <= NOT \Mux51~2_combout\;
\ALT_INV_Mux51~1_combout\ <= NOT \Mux51~1_combout\;
\Shift|ALT_INV_rl4[28]~36_combout\ <= NOT \Shift|rl4[28]~36_combout\;
\Shift|ALT_INV_rl4[44]~35_combout\ <= NOT \Shift|rl4[44]~35_combout\;
\Shift|ALT_INV_ll4[12]~12_combout\ <= NOT \Shift|ll4[12]~12_combout\;
\Shift|ALT_INV_ll2[12]~13_combout\ <= NOT \Shift|ll2[12]~13_combout\;
\ALT_INV_Mux51~0_combout\ <= NOT \Mux51~0_combout\;
\Add|ALT_INV_S\(12) <= NOT \Add|S\(12);
\ALT_INV_Mux52~3_combout\ <= NOT \Mux52~3_combout\;
\ALT_INV_Mux52~2_combout\ <= NOT \Mux52~2_combout\;
\ALT_INV_Mux52~1_combout\ <= NOT \Mux52~1_combout\;
\Shift|ALT_INV_rl4[27]~34_combout\ <= NOT \Shift|rl4[27]~34_combout\;
\ALT_INV_Y_R[1]~19_combout\ <= NOT \Y_R[1]~19_combout\;
\ALT_INV_Y_R[1]~18_combout\ <= NOT \Y_R[1]~18_combout\;
\Shift|ALT_INV_rl4[59]~33_combout\ <= NOT \Shift|rl4[59]~33_combout\;
\Shift|ALT_INV_rl4[43]~32_combout\ <= NOT \Shift|rl4[43]~32_combout\;
\Shift|ALT_INV_ll4[11]~11_combout\ <= NOT \Shift|ll4[11]~11_combout\;
\Shift|ALT_INV_ll2[11]~12_combout\ <= NOT \Shift|ll2[11]~12_combout\;
\ALT_INV_Mux52~0_combout\ <= NOT \Mux52~0_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\ALT_INV_Mux53~3_combout\ <= NOT \Mux53~3_combout\;
\ALT_INV_Mux53~2_combout\ <= NOT \Mux53~2_combout\;
\ALT_INV_Mux53~1_combout\ <= NOT \Mux53~1_combout\;
\Shift|ALT_INV_rl4[26]~31_combout\ <= NOT \Shift|rl4[26]~31_combout\;
\ALT_INV_Y_R[1]~17_combout\ <= NOT \Y_R[1]~17_combout\;
\ALT_INV_Y_R[1]~16_combout\ <= NOT \Y_R[1]~16_combout\;
\Shift|ALT_INV_rl4[58]~30_combout\ <= NOT \Shift|rl4[58]~30_combout\;
\Shift|ALT_INV_rl4[42]~29_combout\ <= NOT \Shift|rl4[42]~29_combout\;
\Shift|ALT_INV_ll4[10]~10_combout\ <= NOT \Shift|ll4[10]~10_combout\;
\Shift|ALT_INV_ll2[10]~11_combout\ <= NOT \Shift|ll2[10]~11_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\ALT_INV_Mux54~3_combout\ <= NOT \Mux54~3_combout\;
\ALT_INV_Mux54~2_combout\ <= NOT \Mux54~2_combout\;
\ALT_INV_Mux54~1_combout\ <= NOT \Mux54~1_combout\;
\Shift|ALT_INV_rl4[25]~28_combout\ <= NOT \Shift|rl4[25]~28_combout\;
\ALT_INV_Y_R[1]~15_combout\ <= NOT \Y_R[1]~15_combout\;
\ALT_INV_Y_R[1]~14_combout\ <= NOT \Y_R[1]~14_combout\;
\Shift|ALT_INV_rl4[57]~27_combout\ <= NOT \Shift|rl4[57]~27_combout\;
\Shift|ALT_INV_rl4[41]~26_combout\ <= NOT \Shift|rl4[41]~26_combout\;
\Shift|ALT_INV_ll4[9]~9_combout\ <= NOT \Shift|ll4[9]~9_combout\;
\Shift|ALT_INV_ll2[9]~10_combout\ <= NOT \Shift|ll2[9]~10_combout\;
\ALT_INV_Mux54~0_combout\ <= NOT \Mux54~0_combout\;
\Add|ALT_INV_S\(9) <= NOT \Add|S\(9);
\ALT_INV_Mux55~3_combout\ <= NOT \Mux55~3_combout\;
\ALT_INV_Mux55~2_combout\ <= NOT \Mux55~2_combout\;
\ALT_INV_Mux55~1_combout\ <= NOT \Mux55~1_combout\;
\Shift|ALT_INV_rl4[24]~25_combout\ <= NOT \Shift|rl4[24]~25_combout\;
\ALT_INV_Y_R[1]~13_combout\ <= NOT \Y_R[1]~13_combout\;
\Shift|ALT_INV_rl4[56]~24_combout\ <= NOT \Shift|rl4[56]~24_combout\;
\Shift|ALT_INV_rl4[40]~23_combout\ <= NOT \Shift|rl4[40]~23_combout\;
\Shift|ALT_INV_ll4[8]~8_combout\ <= NOT \Shift|ll4[8]~8_combout\;
\Shift|ALT_INV_ll2[8]~9_combout\ <= NOT \Shift|ll2[8]~9_combout\;
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Mux56~3_combout\ <= NOT \Mux56~3_combout\;
\ALT_INV_Mux56~2_combout\ <= NOT \Mux56~2_combout\;
\ALT_INV_Mux56~1_combout\ <= NOT \Mux56~1_combout\;
\Shift|ALT_INV_rl4[23]~22_combout\ <= NOT \Shift|rl4[23]~22_combout\;
\ALT_INV_Y_R[1]~12_combout\ <= NOT \Y_R[1]~12_combout\;
\ALT_INV_Y_R[1]~11_combout\ <= NOT \Y_R[1]~11_combout\;
\Shift|ALT_INV_rl4[55]~21_combout\ <= NOT \Shift|rl4[55]~21_combout\;
\Shift|ALT_INV_rl4[39]~20_combout\ <= NOT \Shift|rl4[39]~20_combout\;
\Shift|ALT_INV_ll4[7]~7_combout\ <= NOT \Shift|ll4[7]~7_combout\;
\Shift|ALT_INV_ll2[7]~8_combout\ <= NOT \Shift|ll2[7]~8_combout\;
\ALT_INV_Mux56~0_combout\ <= NOT \Mux56~0_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\ALT_INV_Mux57~3_combout\ <= NOT \Mux57~3_combout\;
\ALT_INV_Mux57~2_combout\ <= NOT \Mux57~2_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\Shift|ALT_INV_rl4[22]~19_combout\ <= NOT \Shift|rl4[22]~19_combout\;
\ALT_INV_Y_R[1]~10_combout\ <= NOT \Y_R[1]~10_combout\;
\Shift|ALT_INV_rl4[54]~18_combout\ <= NOT \Shift|rl4[54]~18_combout\;
\Shift|ALT_INV_ra3[62]~2_combout\ <= NOT \Shift|ra3[62]~2_combout\;
\Shift|ALT_INV_rl4[38]~17_combout\ <= NOT \Shift|rl4[38]~17_combout\;
\Shift|ALT_INV_ll4[6]~6_combout\ <= NOT \Shift|ll4[6]~6_combout\;
\Shift|ALT_INV_ll2[6]~7_combout\ <= NOT \Shift|ll2[6]~7_combout\;
\ALT_INV_Mux57~0_combout\ <= NOT \Mux57~0_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\ALT_INV_Mux58~3_combout\ <= NOT \Mux58~3_combout\;
\ALT_INV_Mux58~2_combout\ <= NOT \Mux58~2_combout\;
\ALT_INV_Mux58~1_combout\ <= NOT \Mux58~1_combout\;
\Shift|ALT_INV_rl4[21]~16_combout\ <= NOT \Shift|rl4[21]~16_combout\;
\ALT_INV_Y_R[1]~9_combout\ <= NOT \Y_R[1]~9_combout\;
\ALT_INV_Y_R[1]~8_combout\ <= NOT \Y_R[1]~8_combout\;
\Shift|ALT_INV_rl4[37]~15_combout\ <= NOT \Shift|rl4[37]~15_combout\;
\Shift|ALT_INV_ll4[5]~5_combout\ <= NOT \Shift|ll4[5]~5_combout\;
\Shift|ALT_INV_ll2[5]~6_combout\ <= NOT \Shift|ll2[5]~6_combout\;
\ALT_INV_Mux58~0_combout\ <= NOT \Mux58~0_combout\;
\Add|ALT_INV_S\(5) <= NOT \Add|S\(5);
\ALT_INV_Mux59~3_combout\ <= NOT \Mux59~3_combout\;
\ALT_INV_Mux59~2_combout\ <= NOT \Mux59~2_combout\;
\ALT_INV_Mux59~1_combout\ <= NOT \Mux59~1_combout\;
\Shift|ALT_INV_rl4[20]~14_combout\ <= NOT \Shift|rl4[20]~14_combout\;
\ALT_INV_Y_R[1]~7_combout\ <= NOT \Y_R[1]~7_combout\;
\ALT_INV_Y_R[1]~6_combout\ <= NOT \Y_R[1]~6_combout\;
\Shift|ALT_INV_ra4[52]~1_combout\ <= NOT \Shift|ra4[52]~1_combout\;
\Shift|ALT_INV_rl4[36]~13_combout\ <= NOT \Shift|rl4[36]~13_combout\;
\Shift|ALT_INV_ll4[4]~4_combout\ <= NOT \Shift|ll4[4]~4_combout\;
\Shift|ALT_INV_ll2[4]~5_combout\ <= NOT \Shift|ll2[4]~5_combout\;
\ALT_INV_Mux59~0_combout\ <= NOT \Mux59~0_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\ALT_INV_Mux60~5_combout\ <= NOT \Mux60~5_combout\;
\ALT_INV_Mux60~4_combout\ <= NOT \Mux60~4_combout\;
\ALT_INV_Mux60~3_combout\ <= NOT \Mux60~3_combout\;
\ALT_INV_Mux60~2_combout\ <= NOT \Mux60~2_combout\;
\Shift|ALT_INV_rl2[15]~58_combout\ <= NOT \Shift|rl2[15]~58_combout\;
\Shift|ALT_INV_rl2[11]~57_combout\ <= NOT \Shift|rl2[11]~57_combout\;
\Shift|ALT_INV_rl2[7]~56_combout\ <= NOT \Shift|rl2[7]~56_combout\;
\ALT_INV_Mux60~1_combout\ <= NOT \Mux60~1_combout\;
\Shift|ALT_INV_rl4[19]~12_combout\ <= NOT \Shift|rl4[19]~12_combout\;
\Shift|ALT_INV_rl2[31]~55_combout\ <= NOT \Shift|rl2[31]~55_combout\;
\Shift|ALT_INV_rl2[27]~54_combout\ <= NOT \Shift|rl2[27]~54_combout\;
\Shift|ALT_INV_rl2[23]~53_combout\ <= NOT \Shift|rl2[23]~53_combout\;
\Shift|ALT_INV_rl2[19]~52_combout\ <= NOT \Shift|rl2[19]~52_combout\;
\ALT_INV_Y_R[1]~5_combout\ <= NOT \Y_R[1]~5_combout\;
\Shift|ALT_INV_ra4[51]~0_combout\ <= NOT \Shift|ra4[51]~0_combout\;
\Shift|ALT_INV_rl2[51]~51_combout\ <= NOT \Shift|rl2[51]~51_combout\;
\Shift|ALT_INV_rl2[59]~50_combout\ <= NOT \Shift|rl2[59]~50_combout\;
\Shift|ALT_INV_rl2[55]~49_combout\ <= NOT \Shift|rl2[55]~49_combout\;
\Shift|ALT_INV_rl4[35]~11_combout\ <= NOT \Shift|rl4[35]~11_combout\;
\Shift|ALT_INV_rl2[47]~48_combout\ <= NOT \Shift|rl2[47]~48_combout\;
\Shift|ALT_INV_rl2[43]~47_combout\ <= NOT \Shift|rl2[43]~47_combout\;
\Shift|ALT_INV_rl2[39]~46_combout\ <= NOT \Shift|rl2[39]~46_combout\;
\Shift|ALT_INV_rl2[35]~45_combout\ <= NOT \Shift|rl2[35]~45_combout\;
\Shift|ALT_INV_ll4[3]~3_combout\ <= NOT \Shift|ll4[3]~3_combout\;
\Shift|ALT_INV_ll2[3]~4_combout\ <= NOT \Shift|ll2[3]~4_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux61~4_combout\ <= NOT \Mux61~4_combout\;
\ALT_INV_Mux61~3_combout\ <= NOT \Mux61~3_combout\;
\ALT_INV_Mux61~2_combout\ <= NOT \Mux61~2_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\Shift|ALT_INV_rl2[14]~44_combout\ <= NOT \Shift|rl2[14]~44_combout\;
\Shift|ALT_INV_rl2[10]~43_combout\ <= NOT \Shift|rl2[10]~43_combout\;
\Shift|ALT_INV_rl2[6]~42_combout\ <= NOT \Shift|rl2[6]~42_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\Shift|ALT_INV_rl4[18]~10_combout\ <= NOT \Shift|rl4[18]~10_combout\;
\Shift|ALT_INV_rl2[30]~41_combout\ <= NOT \Shift|rl2[30]~41_combout\;
\Shift|ALT_INV_rl2[26]~40_combout\ <= NOT \Shift|rl2[26]~40_combout\;
\Shift|ALT_INV_rl2[22]~39_combout\ <= NOT \Shift|rl2[22]~39_combout\;
\Shift|ALT_INV_rl2[18]~38_combout\ <= NOT \Shift|rl2[18]~38_combout\;
\ALT_INV_Y_R[1]~4_combout\ <= NOT \Y_R[1]~4_combout\;
\ALT_INV_Y_R[1]~3_combout\ <= NOT \Y_R[1]~3_combout\;
\Shift|ALT_INV_ra3[58]~1_combout\ <= NOT \Shift|ra3[58]~1_combout\;
\Shift|ALT_INV_rl4[50]~9_combout\ <= NOT \Shift|rl4[50]~9_combout\;
\Shift|ALT_INV_rl4[50]~8_combout\ <= NOT \Shift|rl4[50]~8_combout\;
\Shift|ALT_INV_rl2[58]~37_combout\ <= NOT \Shift|rl2[58]~37_combout\;
\Shift|ALT_INV_rl2[50]~36_combout\ <= NOT \Shift|rl2[50]~36_combout\;
\Shift|ALT_INV_rl2[54]~35_combout\ <= NOT \Shift|rl2[54]~35_combout\;
\Shift|ALT_INV_rl4[34]~7_combout\ <= NOT \Shift|rl4[34]~7_combout\;
\Shift|ALT_INV_rl2[46]~34_combout\ <= NOT \Shift|rl2[46]~34_combout\;
\Shift|ALT_INV_rl2[42]~33_combout\ <= NOT \Shift|rl2[42]~33_combout\;
\Shift|ALT_INV_rl2[38]~32_combout\ <= NOT \Shift|rl2[38]~32_combout\;
\Shift|ALT_INV_rl2[34]~31_combout\ <= NOT \Shift|rl2[34]~31_combout\;
\Shift|ALT_INV_ll4[2]~2_combout\ <= NOT \Shift|ll4[2]~2_combout\;
\Shift|ALT_INV_ll2[2]~3_combout\ <= NOT \Shift|ll2[2]~3_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux62~8_combout\ <= NOT \Mux62~8_combout\;
\ALT_INV_Mux62~7_combout\ <= NOT \Mux62~7_combout\;
\ALT_INV_Mux60~0_combout\ <= NOT \Mux60~0_combout\;
\ALT_INV_Mux62~6_combout\ <= NOT \Mux62~6_combout\;
\ALT_INV_Mux62~5_combout\ <= NOT \Mux62~5_combout\;
\Shift|ALT_INV_rl2[13]~30_combout\ <= NOT \Shift|rl2[13]~30_combout\;
\Shift|ALT_INV_rl2[9]~29_combout\ <= NOT \Shift|rl2[9]~29_combout\;
\Shift|ALT_INV_rl2[5]~28_combout\ <= NOT \Shift|rl2[5]~28_combout\;
\ALT_INV_Mux62~4_combout\ <= NOT \Mux62~4_combout\;
\Shift|ALT_INV_rl4[17]~6_combout\ <= NOT \Shift|rl4[17]~6_combout\;
\Shift|ALT_INV_rl2[29]~27_combout\ <= NOT \Shift|rl2[29]~27_combout\;
\Shift|ALT_INV_rl2[25]~26_combout\ <= NOT \Shift|rl2[25]~26_combout\;
\Shift|ALT_INV_rl2[21]~25_combout\ <= NOT \Shift|rl2[21]~25_combout\;
\Shift|ALT_INV_rl2[17]~24_combout\ <= NOT \Shift|rl2[17]~24_combout\;
\ALT_INV_Y_R[1]~2_combout\ <= NOT \Y_R[1]~2_combout\;
\ALT_INV_Y_R[1]~1_combout\ <= NOT \Y_R[1]~1_combout\;
\Shift|ALT_INV_ra3[57]~0_combout\ <= NOT \Shift|ra3[57]~0_combout\;
\Shift|ALT_INV_rl4[49]~5_combout\ <= NOT \Shift|rl4[49]~5_combout\;
\Shift|ALT_INV_rl2[61]~23_combout\ <= NOT \Shift|rl2[61]~23_combout\;
\Shift|ALT_INV_rl1[61]~0_combout\ <= NOT \Shift|rl1[61]~0_combout\;
\Shift|ALT_INV_rl2[57]~22_combout\ <= NOT \Shift|rl2[57]~22_combout\;
\Shift|ALT_INV_rl2[49]~21_combout\ <= NOT \Shift|rl2[49]~21_combout\;
\Shift|ALT_INV_rl2[53]~20_combout\ <= NOT \Shift|rl2[53]~20_combout\;
\Shift|ALT_INV_rl4[33]~4_combout\ <= NOT \Shift|rl4[33]~4_combout\;
\Shift|ALT_INV_rl2[45]~19_combout\ <= NOT \Shift|rl2[45]~19_combout\;
\Shift|ALT_INV_rl2[41]~18_combout\ <= NOT \Shift|rl2[41]~18_combout\;
\Shift|ALT_INV_rl2[37]~17_combout\ <= NOT \Shift|rl2[37]~17_combout\;
\Shift|ALT_INV_rl2[33]~16_combout\ <= NOT \Shift|rl2[33]~16_combout\;
\Shift|ALT_INV_ll4[1]~1_combout\ <= NOT \Shift|ll4[1]~1_combout\;
\Shift|ALT_INV_ll2[1]~2_combout\ <= NOT \Shift|ll2[1]~2_combout\;
\ALT_INV_Mux62~3_combout\ <= NOT \Mux62~3_combout\;
\ALT_INV_Mux62~2_combout\ <= NOT \Mux62~2_combout\;
\ALT_INV_Mux62~1_combout\ <= NOT \Mux62~1_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|ALT_INV_C[63]~62_combout\ <= NOT \Add|C[63]~62_combout\;
\Add|ALT_INV_C[62]~61_combout\ <= NOT \Add|C[62]~61_combout\;
\Add|ALT_INV_C[61]~60_combout\ <= NOT \Add|C[61]~60_combout\;
\Add|ALT_INV_C[60]~59_combout\ <= NOT \Add|C[60]~59_combout\;
\Add|ALT_INV_C[59]~58_combout\ <= NOT \Add|C[59]~58_combout\;
\Add|ALT_INV_C[58]~57_combout\ <= NOT \Add|C[58]~57_combout\;
\Add|ALT_INV_C[57]~56_combout\ <= NOT \Add|C[57]~56_combout\;
\Add|ALT_INV_C[56]~55_combout\ <= NOT \Add|C[56]~55_combout\;
\Add|ALT_INV_C[55]~54_combout\ <= NOT \Add|C[55]~54_combout\;
\Add|ALT_INV_C[54]~53_combout\ <= NOT \Add|C[54]~53_combout\;
\Add|ALT_INV_C[53]~52_combout\ <= NOT \Add|C[53]~52_combout\;
\Add|ALT_INV_C[52]~51_combout\ <= NOT \Add|C[52]~51_combout\;
\Add|ALT_INV_C[51]~50_combout\ <= NOT \Add|C[51]~50_combout\;
\Add|ALT_INV_C[50]~49_combout\ <= NOT \Add|C[50]~49_combout\;
\Add|ALT_INV_C[49]~48_combout\ <= NOT \Add|C[49]~48_combout\;
\Add|ALT_INV_C[48]~47_combout\ <= NOT \Add|C[48]~47_combout\;
\Add|ALT_INV_C[47]~46_combout\ <= NOT \Add|C[47]~46_combout\;
\Add|ALT_INV_C[46]~45_combout\ <= NOT \Add|C[46]~45_combout\;
\Add|ALT_INV_C[45]~44_combout\ <= NOT \Add|C[45]~44_combout\;
\Add|ALT_INV_C[44]~43_combout\ <= NOT \Add|C[44]~43_combout\;
\Add|ALT_INV_C[43]~42_combout\ <= NOT \Add|C[43]~42_combout\;
\Add|ALT_INV_C[42]~41_combout\ <= NOT \Add|C[42]~41_combout\;
\Add|ALT_INV_C[41]~40_combout\ <= NOT \Add|C[41]~40_combout\;
\Add|ALT_INV_C[40]~39_combout\ <= NOT \Add|C[40]~39_combout\;
\Add|ALT_INV_C[39]~38_combout\ <= NOT \Add|C[39]~38_combout\;
\Add|ALT_INV_C[38]~37_combout\ <= NOT \Add|C[38]~37_combout\;
\Add|ALT_INV_C[37]~36_combout\ <= NOT \Add|C[37]~36_combout\;
\Add|ALT_INV_C[36]~35_combout\ <= NOT \Add|C[36]~35_combout\;
\Add|ALT_INV_C[35]~34_combout\ <= NOT \Add|C[35]~34_combout\;
\Add|ALT_INV_C[34]~33_combout\ <= NOT \Add|C[34]~33_combout\;
\Add|ALT_INV_C[33]~32_combout\ <= NOT \Add|C[33]~32_combout\;
\Add|ALT_INV_C[32]~31_combout\ <= NOT \Add|C[32]~31_combout\;
\Add|ALT_INV_C[31]~30_combout\ <= NOT \Add|C[31]~30_combout\;
\Add|ALT_INV_C[30]~29_combout\ <= NOT \Add|C[30]~29_combout\;
\Add|ALT_INV_C[29]~28_combout\ <= NOT \Add|C[29]~28_combout\;
\Add|ALT_INV_C[28]~27_combout\ <= NOT \Add|C[28]~27_combout\;
\Add|ALT_INV_C[27]~26_combout\ <= NOT \Add|C[27]~26_combout\;
\Add|ALT_INV_C[26]~25_combout\ <= NOT \Add|C[26]~25_combout\;
\Add|ALT_INV_C[25]~24_combout\ <= NOT \Add|C[25]~24_combout\;
\Add|ALT_INV_C[24]~23_combout\ <= NOT \Add|C[24]~23_combout\;
\Add|ALT_INV_C[23]~22_combout\ <= NOT \Add|C[23]~22_combout\;
\Add|ALT_INV_C[22]~21_combout\ <= NOT \Add|C[22]~21_combout\;
\Add|ALT_INV_C[21]~20_combout\ <= NOT \Add|C[21]~20_combout\;
\Add|ALT_INV_C[20]~19_combout\ <= NOT \Add|C[20]~19_combout\;
\Add|ALT_INV_C[19]~18_combout\ <= NOT \Add|C[19]~18_combout\;
\Add|ALT_INV_C[18]~17_combout\ <= NOT \Add|C[18]~17_combout\;
\Add|ALT_INV_C[17]~16_combout\ <= NOT \Add|C[17]~16_combout\;
\Add|ALT_INV_C[16]~15_combout\ <= NOT \Add|C[16]~15_combout\;
\Add|ALT_INV_C[15]~14_combout\ <= NOT \Add|C[15]~14_combout\;
\Add|ALT_INV_C[14]~13_combout\ <= NOT \Add|C[14]~13_combout\;
\Add|ALT_INV_C[13]~12_combout\ <= NOT \Add|C[13]~12_combout\;
\Add|ALT_INV_C[12]~11_combout\ <= NOT \Add|C[12]~11_combout\;
\Add|ALT_INV_C[11]~10_combout\ <= NOT \Add|C[11]~10_combout\;
\Add|ALT_INV_C[10]~9_combout\ <= NOT \Add|C[10]~9_combout\;
\Add|ALT_INV_C[9]~8_combout\ <= NOT \Add|C[9]~8_combout\;
\Add|ALT_INV_C[8]~7_combout\ <= NOT \Add|C[8]~7_combout\;
\Add|ALT_INV_C[7]~6_combout\ <= NOT \Add|C[7]~6_combout\;
\Add|ALT_INV_C[6]~5_combout\ <= NOT \Add|C[6]~5_combout\;
\Add|ALT_INV_C[5]~4_combout\ <= NOT \Add|C[5]~4_combout\;
\Add|ALT_INV_C[4]~3_combout\ <= NOT \Add|C[4]~3_combout\;
\Add|ALT_INV_C[3]~2_combout\ <= NOT \Add|C[3]~2_combout\;
\Add|ALT_INV_C[2]~1_combout\ <= NOT \Add|C[2]~1_combout\;
\Add|ALT_INV_C[1]~0_combout\ <= NOT \Add|C[1]~0_combout\;
\Logic|ALT_INV_Mux63~0_combout\ <= NOT \Logic|Mux63~0_combout\;
\Shift|ALT_INV_ll4[0]~0_combout\ <= NOT \Shift|ll4[0]~0_combout\;
\Shift|ALT_INV_ll2[0]~1_combout\ <= NOT \Shift|ll2[0]~1_combout\;
\Shift|ALT_INV_ll2[0]~0_combout\ <= NOT \Shift|ll2[0]~0_combout\;
\ALT_INV_Mux62~0_combout\ <= NOT \Mux62~0_combout\;
\ALT_INV_Y_R[0]~0_combout\ <= NOT \Y_R[0]~0_combout\;
\Shift|ALT_INV_rl4[48]~3_combout\ <= NOT \Shift|rl4[48]~3_combout\;
\Shift|ALT_INV_rl2[60]~15_combout\ <= NOT \Shift|rl2[60]~15_combout\;
\Shift|ALT_INV_rl2[52]~14_combout\ <= NOT \Shift|rl2[52]~14_combout\;
\Shift|ALT_INV_rl2[56]~13_combout\ <= NOT \Shift|rl2[56]~13_combout\;
\Shift|ALT_INV_rl2[48]~12_combout\ <= NOT \Shift|rl2[48]~12_combout\;
\Shift|ALT_INV_rl4[32]~2_combout\ <= NOT \Shift|rl4[32]~2_combout\;
\Shift|ALT_INV_rl2[44]~11_combout\ <= NOT \Shift|rl2[44]~11_combout\;
\Shift|ALT_INV_rl2[40]~10_combout\ <= NOT \Shift|rl2[40]~10_combout\;
\Shift|ALT_INV_rl2[36]~9_combout\ <= NOT \Shift|rl2[36]~9_combout\;
\Shift|ALT_INV_rl2[32]~8_combout\ <= NOT \Shift|rl2[32]~8_combout\;
\Shift|ALT_INV_rl4[16]~1_combout\ <= NOT \Shift|rl4[16]~1_combout\;
\Shift|ALT_INV_rl2[28]~7_combout\ <= NOT \Shift|rl2[28]~7_combout\;
\Shift|ALT_INV_rl2[24]~6_combout\ <= NOT \Shift|rl2[24]~6_combout\;
\Shift|ALT_INV_rl2[20]~5_combout\ <= NOT \Shift|rl2[20]~5_combout\;
\Shift|ALT_INV_rl2[16]~4_combout\ <= NOT \Shift|rl2[16]~4_combout\;
\Shift|ALT_INV_rl4[0]~0_combout\ <= NOT \Shift|rl4[0]~0_combout\;
\Shift|ALT_INV_rl2[12]~3_combout\ <= NOT \Shift|rl2[12]~3_combout\;
\Shift|ALT_INV_rl2[8]~2_combout\ <= NOT \Shift|rl2[8]~2_combout\;
\Shift|ALT_INV_rl2[4]~1_combout\ <= NOT \Shift|rl2[4]~1_combout\;
\Shift|ALT_INV_rl2[0]~0_combout\ <= NOT \Shift|rl2[0]~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~5_combout\ <= NOT \Y_ShiftOrArith[0]~5_combout\;
\Shift|ALT_INV_rl4[51]~43_combout\ <= NOT \Shift|rl4[51]~43_combout\;
\Shift|ALT_INV_ra4[53]~10_combout\ <= NOT \Shift|ra4[53]~10_combout\;
\Shift|ALT_INV_ra4[54]~6_combout\ <= NOT \Shift|ra4[54]~6_combout\;
\ALT_INV_Y_R[1]~42_combout\ <= NOT \Y_R[1]~42_combout\;
\ALT_INV_Y_R_Ext[31]~0_combout\ <= NOT \Y_R_Ext[31]~0_combout\;
\ALT_INV_Y_LorS[32]~0_combout\ <= NOT \Y_LorS[32]~0_combout\;
\ALT_INV_Y_ShiftOrArith[31]~1_combout\ <= NOT \Y_ShiftOrArith[31]~1_combout\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;

-- Location: IOOBUF_X59_Y51_N67
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X21_Y56_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~9_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~5_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X35_Y56_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~6_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y16_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~4_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~4_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~4_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~4_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~4_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~4_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~4_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~4_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~4_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~4_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~4_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~4_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~3_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~3_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~3_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~3_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~9_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X15_Y56_N67
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~3_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X10_Y56_N67
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~3_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~3_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X21_Y56_N98
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~3_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~3_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~3_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~3_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~3_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X24_Y0_N36
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~3_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~3_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X12_Y56_N67
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X10_Y56_N98
\Y[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X19_Y56_N36
\Y[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~5_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X23_Y56_N2
\Y[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\Y[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X12_Y56_N36
\Y[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\Y[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\Y[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X53_Y56_N2
\Y[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X59_Y28_N67
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~6_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X10_Y56_N33
\Y[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~4_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\Y[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X17_Y56_N33
\Y[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\Y[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\Y[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X59_Y34_N98
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X17_Y56_N5
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~5_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\Y[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X59_Y21_N98
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\Y[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X59_Y12_N98
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X59_Y22_N67
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X7_Y56_N36
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~6_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X15_Y56_N2
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X59_Y18_N36
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~16_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\AltB~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_AltB~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X59_Y34_N2
\AltBu~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X59_Y33_N94
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X51_Y56_N32
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X10_Y56_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X12_Y56_N1
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X5_Y56_N63
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X14_Y56_N1
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X33_Y56_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X31_Y56_N63
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X14_Y56_N94
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X7_Y56_N94
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X12_Y56_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X8_Y56_N94
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X25_Y56_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X25_Y56_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X33_Y56_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X23_Y56_N94
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X19_Y56_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X3_Y56_N63
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y49_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X30_Y56_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X55_Y56_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X53_Y56_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X48_Y56_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X48_Y56_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X53_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X33_Y56_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X30_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X34_Y40_N0
\Add|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[0]~input_o\) # (\A[0]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\B[0]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X21_Y56_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X34_Y40_N4
\Add|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[1]~0_combout\ & (!\B[1]~input_o\ & \A[1]~input_o\)) # (\Add|C[1]~0_combout\ & ((!\B[1]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[1]~0_combout\ & (\B[1]~input_o\ & 
-- \A[1]~input_o\)) # (\Add|C[1]~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[1]~0_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: IOIBUF_X59_Y33_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X34_Y40_N8
\Add|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\AddnSub~input_o\ & \Add|C[2]~1_combout\)) # (\A[2]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[2]~1_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\A[2]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[2]~1_combout\)) # (\A[2]~input_o\ & ((\Add|C[2]~1_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: IOIBUF_X49_Y56_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X40_Y36_N20
\Add|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = ( \B[3]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[3]~input_o\) # (\Add|C[3]~2_combout\))) # (\AddnSub~input_o\ & (\Add|C[3]~2_combout\ & \A[3]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[3]~2_combout\ & 
-- \A[3]~input_o\)) # (\AddnSub~input_o\ & ((\A[3]~input_o\) # (\Add|C[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[3]~2_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: IOIBUF_X38_Y56_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X40_Y36_N22
\Add|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = ( \B[4]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[4]~3_combout\) # (\A[4]~input_o\))) # (\AddnSub~input_o\ & (\A[4]~input_o\ & \Add|C[4]~3_combout\)) ) ) # ( !\B[4]~input_o\ & ( (!\AddnSub~input_o\ & (\A[4]~input_o\ & 
-- \Add|C[4]~3_combout\)) # (\AddnSub~input_o\ & ((\Add|C[4]~3_combout\) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \Add|ALT_INV_C[4]~3_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: LABCELL_X40_Y36_N24
\Add|C[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = ( \Add|C[5]~4_combout\ & ( (!\AddnSub~input_o\ $ (!\B[5]~input_o\)) # (\A[5]~input_o\) ) ) # ( !\Add|C[5]~4_combout\ & ( (\A[5]~input_o\ & (!\AddnSub~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \Add|ALT_INV_C[5]~4_combout\,
	combout => \Add|C[6]~5_combout\);

-- Location: LABCELL_X40_Y36_N28
\Add|C[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = ( \AddnSub~input_o\ & ( (!\A[6]~input_o\ & (!\B[6]~input_o\ & \Add|C[6]~5_combout\)) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # (\Add|C[6]~5_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \Add|C[6]~5_combout\)) # (\A[6]~input_o\ & ((\Add|C[6]~5_combout\) # (\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \Add|ALT_INV_C[6]~5_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X59_Y23_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X40_Y36_N12
\Add|C[8]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = ( \B[7]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[7]~input_o\) # (\Add|C[7]~6_combout\))) # (\AddnSub~input_o\ & (\Add|C[7]~6_combout\ & \A[7]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[7]~6_combout\ & 
-- \A[7]~input_o\)) # (\AddnSub~input_o\ & ((\A[7]~input_o\) # (\Add|C[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[7]~6_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: LABCELL_X40_Y36_N36
\Add|C[9]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = ( \AddnSub~input_o\ & ( (!\B[8]~input_o\ & ((\Add|C[8]~7_combout\) # (\A[8]~input_o\))) # (\B[8]~input_o\ & (\A[8]~input_o\ & \Add|C[8]~7_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- \Add|C[8]~7_combout\)) # (\B[8]~input_o\ & ((\Add|C[8]~7_combout\) # (\A[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datad => \Add|ALT_INV_C[8]~7_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: LABCELL_X40_Y40_N0
\Add|C[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = ( \Add|C[9]~8_combout\ & ( (!\AddnSub~input_o\ $ (!\B[9]~input_o\)) # (\A[9]~input_o\) ) ) # ( !\Add|C[9]~8_combout\ & ( (\A[9]~input_o\ & (!\AddnSub~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_C[9]~8_combout\,
	combout => \Add|C[10]~9_combout\);

-- Location: LABCELL_X40_Y40_N4
\Add|C[11]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = ( \AddnSub~input_o\ & ( (!\B[10]~input_o\ & ((\Add|C[10]~9_combout\) # (\A[10]~input_o\))) # (\B[10]~input_o\ & (\A[10]~input_o\ & \Add|C[10]~9_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & 
-- \Add|C[10]~9_combout\)) # (\B[10]~input_o\ & ((\Add|C[10]~9_combout\) # (\A[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X59_Y46_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X40_Y40_N28
\Add|C[12]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (\Add|C[11]~10_combout\ & !\AddnSub~input_o\)) # (\A[11]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[11]~10_combout\))) ) ) # ( !\B[11]~input_o\ & ( (!\A[11]~input_o\ & 
-- (\Add|C[11]~10_combout\ & \AddnSub~input_o\)) # (\A[11]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \Add|ALT_INV_C[11]~10_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: LABCELL_X40_Y40_N34
\Add|C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = ( \Add|C[12]~11_combout\ & ( (!\B[12]~input_o\ $ (!\AddnSub~input_o\)) # (\A[12]~input_o\) ) ) # ( !\Add|C[12]~11_combout\ & ( (\A[12]~input_o\ & (!\B[12]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[12]~11_combout\,
	combout => \Add|C[13]~12_combout\);

-- Location: MLABCELL_X34_Y39_N20
\Add|C[14]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = ( \AddnSub~input_o\ & ( (!\B[13]~input_o\ & ((\Add|C[13]~12_combout\) # (\A[13]~input_o\))) # (\B[13]~input_o\ & (\A[13]~input_o\ & \Add|C[13]~12_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & 
-- \Add|C[13]~12_combout\)) # (\B[13]~input_o\ & ((\Add|C[13]~12_combout\) # (\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \Add|ALT_INV_C[13]~12_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[14]~13_combout\);

-- Location: IOIBUF_X42_Y56_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X34_Y39_N6
\Add|C[15]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = ( \A[14]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[14]~input_o\)) # (\Add|C[14]~13_combout\) ) ) # ( !\A[14]~input_o\ & ( (\Add|C[14]~13_combout\ & (!\AddnSub~input_o\ $ (!\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[14]~13_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X14_Y56_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X35_Y56_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X34_Y39_N8
\Add|C[16]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = ( \A[15]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[15]~input_o\)) # (\Add|C[15]~14_combout\) ) ) # ( !\A[15]~input_o\ & ( (\Add|C[15]~14_combout\ & (!\AddnSub~input_o\ $ (!\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|C[16]~15_combout\);

-- Location: MLABCELL_X34_Y39_N34
\Add|C[17]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = ( \AddnSub~input_o\ & ( (!\A[16]~input_o\ & (!\B[16]~input_o\ & \Add|C[16]~15_combout\)) # (\A[16]~input_o\ & ((!\B[16]~input_o\) # (\Add|C[16]~15_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[16]~input_o\ & (\B[16]~input_o\ & 
-- \Add|C[16]~15_combout\)) # (\A[16]~input_o\ & ((\Add|C[16]~15_combout\) # (\B[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datad => \Add|ALT_INV_C[16]~15_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: IOIBUF_X40_Y56_N63
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X35_Y41_N26
\Add|C[18]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = ( \AddnSub~input_o\ & ( (!\A[17]~input_o\ & (\Add|C[17]~16_combout\ & !\B[17]~input_o\)) # (\A[17]~input_o\ & ((!\B[17]~input_o\) # (\Add|C[17]~16_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[17]~input_o\ & 
-- (\Add|C[17]~16_combout\ & \B[17]~input_o\)) # (\A[17]~input_o\ & ((\B[17]~input_o\) # (\Add|C[17]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \Add|ALT_INV_C[17]~16_combout\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[18]~17_combout\);

-- Location: LABCELL_X35_Y41_N8
\Add|C[19]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[19]~18_combout\ = ( \Add|C[18]~17_combout\ & ( (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) # (\A[18]~input_o\) ) ) # ( !\Add|C[18]~17_combout\ & ( (\A[18]~input_o\ & (!\AddnSub~input_o\ $ (!\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \Add|ALT_INV_C[18]~17_combout\,
	combout => \Add|C[19]~18_combout\);

-- Location: IOIBUF_X36_Y56_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X35_Y41_N12
\Add|C[20]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[20]~19_combout\ = (!\Add|C[19]~18_combout\ & (\A[19]~input_o\ & (!\AddnSub~input_o\ $ (!\B[19]~input_o\)))) # (\Add|C[19]~18_combout\ & ((!\AddnSub~input_o\ $ (!\B[19]~input_o\)) # (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101000101110100110100010111010011010001011101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[19]~18_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	combout => \Add|C[20]~19_combout\);

-- Location: LABCELL_X35_Y41_N38
\Add|C[21]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[21]~20_combout\ = (!\A[20]~input_o\ & (\Add|C[20]~19_combout\ & (!\B[20]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[20]~input_o\ & ((!\B[20]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[20]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[20]~19_combout\,
	combout => \Add|C[21]~20_combout\);

-- Location: LABCELL_X32_Y40_N0
\Add|C[22]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = ( \Add|C[21]~20_combout\ & ( (!\B[21]~input_o\ $ (!\AddnSub~input_o\)) # (\A[21]~input_o\) ) ) # ( !\Add|C[21]~20_combout\ & ( (\A[21]~input_o\ & (!\B[21]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[21]~20_combout\,
	combout => \Add|C[22]~21_combout\);

-- Location: IOIBUF_X19_Y56_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X32_Y40_N24
\Add|C[23]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = ( \B[22]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[22]~21_combout\) # (\A[22]~input_o\))) # (\AddnSub~input_o\ & (\A[22]~input_o\ & \Add|C[22]~21_combout\)) ) ) # ( !\B[22]~input_o\ & ( (!\AddnSub~input_o\ & (\A[22]~input_o\ & 
-- \Add|C[22]~21_combout\)) # (\AddnSub~input_o\ & ((\Add|C[22]~21_combout\) # (\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datad => \Add|ALT_INV_C[22]~21_combout\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \Add|C[23]~22_combout\);

-- Location: IOIBUF_X17_Y56_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X30_Y56_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X32_Y40_N30
\Add|C[24]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = ( \B[23]~input_o\ & ( (!\Add|C[23]~22_combout\ & (\A[23]~input_o\ & !\AddnSub~input_o\)) # (\Add|C[23]~22_combout\ & ((!\AddnSub~input_o\) # (\A[23]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (!\Add|C[23]~22_combout\ & 
-- (\A[23]~input_o\ & \AddnSub~input_o\)) # (\Add|C[23]~22_combout\ & ((\AddnSub~input_o\) # (\A[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[23]~22_combout\,
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \Add|C[24]~23_combout\);

-- Location: LABCELL_X32_Y40_N12
\Add|C[25]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = ( \Add|C[24]~23_combout\ & ( (!\AddnSub~input_o\ $ (!\B[24]~input_o\)) # (\A[24]~input_o\) ) ) # ( !\Add|C[24]~23_combout\ & ( (\A[24]~input_o\ & (!\AddnSub~input_o\ $ (!\B[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \Add|ALT_INV_C[24]~23_combout\,
	combout => \Add|C[25]~24_combout\);

-- Location: LABCELL_X32_Y40_N18
\Add|C[26]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = ( \Add|C[25]~24_combout\ & ( (!\AddnSub~input_o\ $ (!\B[25]~input_o\)) # (\A[25]~input_o\) ) ) # ( !\Add|C[25]~24_combout\ & ( (\A[25]~input_o\ & (!\AddnSub~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \Add|ALT_INV_C[25]~24_combout\,
	combout => \Add|C[26]~25_combout\);

-- Location: LABCELL_X27_Y40_N2
\Add|C[27]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = ( \AddnSub~input_o\ & ( (!\A[26]~input_o\ & (!\B[26]~input_o\ & \Add|C[26]~25_combout\)) # (\A[26]~input_o\ & ((!\B[26]~input_o\) # (\Add|C[26]~25_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & 
-- \Add|C[26]~25_combout\)) # (\A[26]~input_o\ & ((\Add|C[26]~25_combout\) # (\B[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datad => \Add|ALT_INV_C[26]~25_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[27]~26_combout\);

-- Location: IOIBUF_X21_Y56_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X15_Y56_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X27_Y40_N24
\Add|C[28]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = ( \B[27]~input_o\ & ( (!\Add|C[27]~26_combout\ & (!\AddnSub~input_o\ & \A[27]~input_o\)) # (\Add|C[27]~26_combout\ & ((!\AddnSub~input_o\) # (\A[27]~input_o\))) ) ) # ( !\B[27]~input_o\ & ( (!\Add|C[27]~26_combout\ & 
-- (\AddnSub~input_o\ & \A[27]~input_o\)) # (\Add|C[27]~26_combout\ & ((\A[27]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[27]~26_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \Add|C[28]~27_combout\);

-- Location: LABCELL_X27_Y40_N30
\Add|C[29]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = ( \AddnSub~input_o\ & ( (!\B[28]~input_o\ & ((\Add|C[28]~27_combout\) # (\A[28]~input_o\))) # (\B[28]~input_o\ & (\A[28]~input_o\ & \Add|C[28]~27_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- \Add|C[28]~27_combout\)) # (\B[28]~input_o\ & ((\Add|C[28]~27_combout\) # (\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \Add|ALT_INV_C[28]~27_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[29]~28_combout\);

-- Location: IOIBUF_X19_Y56_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X27_Y40_N12
\Add|C[30]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = ( \AddnSub~input_o\ & ( (!\A[29]~input_o\ & (\Add|C[29]~28_combout\ & !\B[29]~input_o\)) # (\A[29]~input_o\ & ((!\B[29]~input_o\) # (\Add|C[29]~28_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[29]~input_o\ & 
-- (\Add|C[29]~28_combout\ & \B[29]~input_o\)) # (\A[29]~input_o\ & ((\B[29]~input_o\) # (\Add|C[29]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \Add|ALT_INV_C[29]~28_combout\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[30]~29_combout\);

-- Location: LABCELL_X35_Y40_N24
\Add|C[31]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[31]~30_combout\ = ( \AddnSub~input_o\ & ( (!\B[30]~input_o\ & ((\Add|C[30]~29_combout\) # (\A[30]~input_o\))) # (\B[30]~input_o\ & (\A[30]~input_o\ & \Add|C[30]~29_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[30]~input_o\ & (\A[30]~input_o\ & 
-- \Add|C[30]~29_combout\)) # (\B[30]~input_o\ & ((\Add|C[30]~29_combout\) # (\A[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \Add|ALT_INV_C[30]~29_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[31]~30_combout\);

-- Location: IOIBUF_X38_Y56_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X31_Y56_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X35_Y40_N28
\Add|C[32]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[32]~31_combout\ = ( \B[31]~input_o\ & ( (!\Add|C[31]~30_combout\ & (!\AddnSub~input_o\ & \A[31]~input_o\)) # (\Add|C[31]~30_combout\ & ((!\AddnSub~input_o\) # (\A[31]~input_o\))) ) ) # ( !\B[31]~input_o\ & ( (!\Add|C[31]~30_combout\ & 
-- (\AddnSub~input_o\ & \A[31]~input_o\)) # (\Add|C[31]~30_combout\ & ((\A[31]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[31]~30_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Add|C[32]~31_combout\);

-- Location: IOIBUF_X36_Y56_N94
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X35_Y40_N34
\Add|C[33]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[33]~32_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[32]~31_combout\ & (!\B[32]~input_o\ & \A[32]~input_o\)) # (\Add|C[32]~31_combout\ & ((!\B[32]~input_o\) # (\A[32]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[32]~31_combout\ & 
-- (\B[32]~input_o\ & \A[32]~input_o\)) # (\Add|C[32]~31_combout\ & ((\A[32]~input_o\) # (\B[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[32]~31_combout\,
	datab => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[33]~32_combout\);

-- Location: LABCELL_X30_Y36_N0
\Add|C[34]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[34]~33_combout\ = ( \Add|C[33]~32_combout\ & ( (!\AddnSub~input_o\ $ (!\B[33]~input_o\)) # (\A[33]~input_o\) ) ) # ( !\Add|C[33]~32_combout\ & ( (\A[33]~input_o\ & (!\AddnSub~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \Add|ALT_INV_C[33]~32_combout\,
	combout => \Add|C[34]~33_combout\);

-- Location: IOIBUF_X55_Y56_N94
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: MLABCELL_X29_Y36_N0
\Add|C[35]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[35]~34_combout\ = ( \AddnSub~input_o\ & ( (!\B[34]~input_o\ & ((\A[34]~input_o\) # (\Add|C[34]~33_combout\))) # (\B[34]~input_o\ & (\Add|C[34]~33_combout\ & \A[34]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[34]~input_o\ & 
-- (\Add|C[34]~33_combout\ & \A[34]~input_o\)) # (\B[34]~input_o\ & ((\A[34]~input_o\) # (\Add|C[34]~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[34]~input_o\,
	datac => \Add|ALT_INV_C[34]~33_combout\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[35]~34_combout\);

-- Location: IOIBUF_X59_Y48_N1
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: MLABCELL_X29_Y36_N26
\Add|C[36]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[36]~35_combout\ = ( \A[35]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[35]~input_o\)) # (\Add|C[35]~34_combout\) ) ) # ( !\A[35]~input_o\ & ( (\Add|C[35]~34_combout\ & (!\AddnSub~input_o\ $ (!\B[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datad => \Add|ALT_INV_C[35]~34_combout\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Add|C[36]~35_combout\);

-- Location: IOIBUF_X17_Y56_N94
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: MLABCELL_X31_Y37_N0
\Add|C[37]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[37]~36_combout\ = ( \B[36]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[36]~35_combout\) # (\A[36]~input_o\))) # (\AddnSub~input_o\ & (\A[36]~input_o\ & \Add|C[36]~35_combout\)) ) ) # ( !\B[36]~input_o\ & ( (!\AddnSub~input_o\ & (\A[36]~input_o\ & 
-- \Add|C[36]~35_combout\)) # (\AddnSub~input_o\ & ((\Add|C[36]~35_combout\) # (\A[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \Add|ALT_INV_C[36]~35_combout\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Add|C[37]~36_combout\);

-- Location: LABCELL_X32_Y37_N22
\Add|C[38]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[38]~37_combout\ = ( \A[37]~input_o\ & ( \Add|C[37]~36_combout\ ) ) # ( !\A[37]~input_o\ & ( \Add|C[37]~36_combout\ & ( !\AddnSub~input_o\ $ (!\B[37]~input_o\) ) ) ) # ( \A[37]~input_o\ & ( !\Add|C[37]~36_combout\ & ( !\AddnSub~input_o\ $ 
-- (!\B[37]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011001100110011001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \Add|ALT_INV_C[37]~36_combout\,
	combout => \Add|C[38]~37_combout\);

-- Location: IOIBUF_X41_Y0_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X35_Y37_N2
\Add|C[39]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[39]~38_combout\ = ( \B[38]~input_o\ & ( (!\Add|C[38]~37_combout\ & (!\AddnSub~input_o\ & \A[38]~input_o\)) # (\Add|C[38]~37_combout\ & ((!\AddnSub~input_o\) # (\A[38]~input_o\))) ) ) # ( !\B[38]~input_o\ & ( (!\Add|C[38]~37_combout\ & 
-- (\AddnSub~input_o\ & \A[38]~input_o\)) # (\Add|C[38]~37_combout\ & ((\A[38]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[38]~37_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \Add|C[39]~38_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X37_Y34_N6
\Add|C[40]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[40]~39_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[39]~38_combout\) ) ) # ( !\A[39]~input_o\ & ( (\Add|C[39]~38_combout\ & (!\B[39]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[39]~38_combout\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \Add|C[40]~39_combout\);

-- Location: MLABCELL_X39_Y37_N0
\Add|C[41]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[41]~40_combout\ = ( \Add|C[40]~39_combout\ & ( (!\B[40]~input_o\ $ (!\AddnSub~input_o\)) # (\A[40]~input_o\) ) ) # ( !\Add|C[40]~39_combout\ & ( (\A[40]~input_o\ & (!\B[40]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[40]~39_combout\,
	combout => \Add|C[41]~40_combout\);

-- Location: IOIBUF_X59_Y48_N32
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: MLABCELL_X31_Y36_N0
\Add|C[42]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[42]~41_combout\ = ( \B[41]~input_o\ & ( (!\A[41]~input_o\ & (!\AddnSub~input_o\ & \Add|C[41]~40_combout\)) # (\A[41]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[41]~40_combout\))) ) ) # ( !\B[41]~input_o\ & ( (!\A[41]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[41]~40_combout\)) # (\A[41]~input_o\ & ((\Add|C[41]~40_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[41]~40_combout\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \Add|C[42]~41_combout\);

-- Location: IOIBUF_X59_Y23_N63
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: MLABCELL_X39_Y34_N22
\Add|C[43]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[43]~42_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[42]~41_combout\ & (!\B[42]~input_o\ & \A[42]~input_o\)) # (\Add|C[42]~41_combout\ & ((!\B[42]~input_o\) # (\A[42]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[42]~41_combout\ & 
-- (\B[42]~input_o\ & \A[42]~input_o\)) # (\Add|C[42]~41_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[42]~41_combout\,
	datab => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[43]~42_combout\);

-- Location: LABCELL_X35_Y34_N22
\Add|C[44]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[44]~43_combout\ = ( \Add|C[43]~42_combout\ & ( (!\B[43]~input_o\ $ (!\AddnSub~input_o\)) # (\A[43]~input_o\) ) ) # ( !\Add|C[43]~42_combout\ & ( (\A[43]~input_o\ & (!\B[43]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[43]~42_combout\,
	combout => \Add|C[44]~43_combout\);

-- Location: LABCELL_X35_Y34_N4
\Add|C[45]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[45]~44_combout\ = ( \Add|C[44]~43_combout\ & ( (!\B[44]~input_o\ $ (!\AddnSub~input_o\)) # (\A[44]~input_o\) ) ) # ( !\Add|C[44]~43_combout\ & ( (\A[44]~input_o\ & (!\B[44]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[44]~43_combout\,
	combout => \Add|C[45]~44_combout\);

-- Location: IOIBUF_X59_Y12_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: MLABCELL_X31_Y34_N0
\Add|C[46]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[46]~45_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (\Add|C[45]~44_combout\ & !\AddnSub~input_o\)) # (\A[45]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[45]~44_combout\))) ) ) # ( !\B[45]~input_o\ & ( (!\A[45]~input_o\ & 
-- (\Add|C[45]~44_combout\ & \AddnSub~input_o\)) # (\A[45]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[45]~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[45]~input_o\,
	datac => \Add|ALT_INV_C[45]~44_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \Add|C[46]~45_combout\);

-- Location: IOIBUF_X59_Y49_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X31_Y34_N6
\Add|C[47]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[47]~46_combout\ = ( \A[46]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[46]~input_o\)) # (\Add|C[46]~45_combout\) ) ) # ( !\A[46]~input_o\ & ( (\Add|C[46]~45_combout\ & (!\AddnSub~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[46]~45_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \Add|C[47]~46_combout\);

-- Location: IOIBUF_X37_Y0_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: MLABCELL_X31_Y34_N30
\Add|C[48]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[48]~47_combout\ = ( \A[47]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[47]~input_o\)) # (\Add|C[47]~46_combout\) ) ) # ( !\A[47]~input_o\ & ( (\Add|C[47]~46_combout\ & (!\AddnSub~input_o\ $ (!\B[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[47]~46_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \Add|C[48]~47_combout\);

-- Location: IOIBUF_X59_Y31_N63
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X30_Y34_N0
\Add|C[49]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[49]~48_combout\ = ( \A[48]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[48]~input_o\)) # (\Add|C[48]~47_combout\) ) ) # ( !\A[48]~input_o\ & ( (\Add|C[48]~47_combout\ & (!\AddnSub~input_o\ $ (!\B[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[48]~47_combout\,
	datad => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \Add|C[49]~48_combout\);

-- Location: LABCELL_X30_Y34_N2
\Add|C[50]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[50]~49_combout\ = ( \AddnSub~input_o\ & ( (!\A[49]~input_o\ & (!\B[49]~input_o\ & \Add|C[49]~48_combout\)) # (\A[49]~input_o\ & ((!\B[49]~input_o\) # (\Add|C[49]~48_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[49]~input_o\ & (\B[49]~input_o\ & 
-- \Add|C[49]~48_combout\)) # (\A[49]~input_o\ & ((\Add|C[49]~48_combout\) # (\B[49]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[49]~input_o\,
	datac => \ALT_INV_B[49]~input_o\,
	datad => \Add|ALT_INV_C[49]~48_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[50]~49_combout\);

-- Location: IOIBUF_X33_Y0_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X15_Y56_N94
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: MLABCELL_X29_Y34_N2
\Add|C[51]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[51]~50_combout\ = (!\Add|C[50]~49_combout\ & (\A[50]~input_o\ & (!\AddnSub~input_o\ $ (!\B[50]~input_o\)))) # (\Add|C[50]~49_combout\ & ((!\AddnSub~input_o\ $ (!\B[50]~input_o\)) # (\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101000101110100110100010111010011010001011101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[50]~49_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	combout => \Add|C[51]~50_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: MLABCELL_X29_Y34_N26
\Add|C[52]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[52]~51_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[51]~50_combout\) ) ) # ( !\A[51]~input_o\ & ( (\Add|C[51]~50_combout\ & (!\B[51]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datac => \Add|ALT_INV_C[51]~50_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \Add|C[52]~51_combout\);

-- Location: IOIBUF_X59_Y26_N94
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X28_Y56_N1
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X32_Y40_N22
\Add|C[53]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[53]~52_combout\ = ( \A[52]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[52]~input_o\)) # (\Add|C[52]~51_combout\) ) ) # ( !\A[52]~input_o\ & ( (\Add|C[52]~51_combout\ & (!\AddnSub~input_o\ $ (!\B[52]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[52]~51_combout\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \Add|C[53]~52_combout\);

-- Location: IOIBUF_X59_Y30_N94
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LABCELL_X40_Y34_N2
\Add|C[54]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[54]~53_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[53]~52_combout\ & (\A[53]~input_o\ & !\B[53]~input_o\)) # (\Add|C[53]~52_combout\ & ((!\B[53]~input_o\) # (\A[53]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[53]~52_combout\ & 
-- (\A[53]~input_o\ & \B[53]~input_o\)) # (\Add|C[53]~52_combout\ & ((\B[53]~input_o\) # (\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[53]~52_combout\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[54]~53_combout\);

-- Location: IOIBUF_X30_Y0_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LABCELL_X40_Y34_N24
\Add|C[55]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[55]~54_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[54]~53_combout\ & (\A[54]~input_o\ & !\B[54]~input_o\)) # (\Add|C[54]~53_combout\ & ((!\B[54]~input_o\) # (\A[54]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[54]~53_combout\ & 
-- (\A[54]~input_o\ & \B[54]~input_o\)) # (\Add|C[54]~53_combout\ & ((\B[54]~input_o\) # (\A[54]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[54]~53_combout\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[55]~54_combout\);

-- Location: IOIBUF_X59_Y46_N1
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X40_Y34_N8
\Add|C[56]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[56]~55_combout\ = ( \A[55]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[55]~input_o\)) # (\Add|C[55]~54_combout\) ) ) # ( !\A[55]~input_o\ & ( (\Add|C[55]~54_combout\ & (!\AddnSub~input_o\ $ (!\B[55]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \Add|ALT_INV_C[55]~54_combout\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Add|C[56]~55_combout\);

-- Location: IOIBUF_X40_Y56_N1
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X40_Y34_N12
\Add|C[57]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[57]~56_combout\ = ( \A[56]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[56]~input_o\)) # (\Add|C[56]~55_combout\) ) ) # ( !\A[56]~input_o\ & ( (\Add|C[56]~55_combout\ & (!\AddnSub~input_o\ $ (!\B[56]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[56]~55_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Add|C[57]~56_combout\);

-- Location: LABCELL_X40_Y32_N0
\Add|C[58]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[58]~57_combout\ = ( \Add|C[57]~56_combout\ & ( (!\AddnSub~input_o\ $ (!\B[57]~input_o\)) # (\A[57]~input_o\) ) ) # ( !\Add|C[57]~56_combout\ & ( (\A[57]~input_o\ & (!\AddnSub~input_o\ $ (!\B[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \Add|ALT_INV_C[57]~56_combout\,
	combout => \Add|C[58]~57_combout\);

-- Location: LABCELL_X40_Y32_N2
\Add|C[59]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[59]~58_combout\ = ( \AddnSub~input_o\ & ( (!\B[58]~input_o\ & ((\Add|C[58]~57_combout\) # (\A[58]~input_o\))) # (\B[58]~input_o\ & (\A[58]~input_o\ & \Add|C[58]~57_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[58]~input_o\ & (\A[58]~input_o\ & 
-- \Add|C[58]~57_combout\)) # (\B[58]~input_o\ & ((\Add|C[58]~57_combout\) # (\A[58]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \Add|ALT_INV_C[58]~57_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[59]~58_combout\);

-- Location: IOIBUF_X59_Y16_N32
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X40_Y32_N6
\Add|C[60]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[60]~59_combout\ = ( \A[59]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[59]~input_o\)) # (\Add|C[59]~58_combout\) ) ) # ( !\A[59]~input_o\ & ( (\Add|C[59]~58_combout\ & (!\AddnSub~input_o\ $ (!\B[59]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[59]~58_combout\,
	datac => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \Add|C[60]~59_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X40_Y35_N2
\Add|C[61]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[61]~60_combout\ = ( \A[60]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[60]~input_o\)) # (\Add|C[60]~59_combout\) ) ) # ( !\A[60]~input_o\ & ( (\Add|C[60]~59_combout\ & (!\AddnSub~input_o\ $ (!\B[60]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[60]~59_combout\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Add|C[61]~60_combout\);

-- Location: IOIBUF_X44_Y56_N32
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X40_Y35_N24
\Add|C[62]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[62]~61_combout\ = ( \A[61]~input_o\ & ( (!\B[61]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[61]~60_combout\) ) ) # ( !\A[61]~input_o\ & ( (\Add|C[61]~60_combout\ & (!\B[61]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[61]~60_combout\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \Add|C[62]~61_combout\);

-- Location: IOIBUF_X32_Y0_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X40_Y35_N28
\Add|C[63]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[63]~62_combout\ = ( \B[62]~input_o\ & ( (!\Add|C[62]~61_combout\ & (!\AddnSub~input_o\ & \A[62]~input_o\)) # (\Add|C[62]~61_combout\ & ((!\AddnSub~input_o\) # (\A[62]~input_o\))) ) ) # ( !\B[62]~input_o\ & ( (!\Add|C[62]~61_combout\ & 
-- (\AddnSub~input_o\ & \A[62]~input_o\)) # (\Add|C[62]~61_combout\ & ((\A[62]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[62]~61_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \Add|C[63]~62_combout\);

-- Location: IOIBUF_X35_Y56_N32
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X7_Y56_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X40_Y38_N38
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[63]~62_combout\ & (\A[63]~input_o\ & !\B[63]~input_o\)) # (\Add|C[63]~62_combout\ & ((!\B[63]~input_o\) # (\A[63]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[63]~62_combout\ & 
-- (\A[63]~input_o\ & \B[63]~input_o\)) # (\Add|C[63]~62_combout\ & ((\B[63]~input_o\) # (\A[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[63]~62_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[63]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: LABCELL_X40_Y38_N14
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[63]~input_o\ & (!\A[63]~input_o\ & \Add|C[63]~62_combout\)) # (\B[63]~input_o\ & ((!\A[63]~input_o\) # (\Add|C[63]~62_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\B[63]~input_o\ & ((!\A[63]~input_o\) # 
-- (\Add|C[63]~62_combout\))) # (\B[63]~input_o\ & (!\A[63]~input_o\ & \Add|C[63]~62_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111010101000001111101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \Add|ALT_INV_C[63]~62_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X36_Y56_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X32_Y35_N6
\Shift|ll2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~0_combout\ = ( !\B[0]~input_o\ & ( !\B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[0]~0_combout\);

-- Location: MLABCELL_X34_Y37_N26
\Shift|ll2[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~1_combout\ = ( \A[0]~input_o\ & ( \Shift|ll2[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ll2[0]~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ll2[0]~1_combout\);

-- Location: LABCELL_X35_Y38_N2
\Shift|ll4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[0]~0_combout\ = ( \Shift|ll2[0]~1_combout\ & ( (!\B[2]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[0]~1_combout\,
	combout => \Shift|ll4[0]~0_combout\);

-- Location: LABCELL_X32_Y35_N22
\Mux62~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LABCELL_X35_Y40_N2
\Shift|rl2[28]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~7_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[31]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[29]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[30]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[28]~7_combout\);

-- Location: LABCELL_X32_Y41_N2
\Shift|rl2[24]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~6_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[27]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[25]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( \A[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[24]~6_combout\);

-- Location: LABCELL_X38_Y41_N20
\Shift|rl2[20]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~5_combout\ = ( \A[23]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \B[0]~input_o\ & ( (\A[21]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[23]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[20]~5_combout\);

-- Location: LABCELL_X35_Y41_N0
\Shift|rl2[16]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~4_combout\ = ( \B[0]~input_o\ & ( \A[16]~input_o\ & ( (!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[16]~input_o\ & ( (!\B[1]~input_o\) # (\A[18]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[16]~input_o\ & ( (\A[18]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Shift|rl2[16]~4_combout\);

-- Location: LABCELL_X40_Y37_N22
\Shift|rl4[16]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~1_combout\ = ( \Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[24]~6_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[28]~7_combout\)) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & ((\Shift|rl2[24]~6_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[28]~7_combout\)) ) ) ) # ( \Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[20]~5_combout\) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|rl2[20]~5_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[28]~7_combout\,
	datab => \Shift|ALT_INV_rl2[24]~6_combout\,
	datac => \Shift|ALT_INV_rl2[20]~5_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[16]~4_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[16]~1_combout\);

-- Location: LABCELL_X35_Y33_N2
\Shift|rl2[48]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[48]~12_combout\ = ( \A[48]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[50]~input_o\))) # (\B[0]~input_o\ & (\A[51]~input_o\)) ) ) ) # ( !\A[48]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[50]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[51]~input_o\)) ) ) ) # ( \A[48]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[49]~input_o\) ) ) ) # ( !\A[48]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \A[49]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[48]~12_combout\);

-- Location: MLABCELL_X34_Y33_N22
\Shift|rl2[60]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[60]~15_combout\ = ( \A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[61]~input_o\)) # (\B[1]~input_o\ & ((\A[63]~input_o\))) ) ) ) # ( !\A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[61]~input_o\)) # (\B[1]~input_o\ 
-- & ((\A[63]~input_o\))) ) ) ) # ( \A[62]~input_o\ & ( !\B[0]~input_o\ & ( (\A[60]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[62]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[60]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[60]~15_combout\);

-- Location: MLABCELL_X37_Y36_N22
\Shift|rl2[52]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[52]~14_combout\ = ( \A[54]~input_o\ & ( \A[55]~input_o\ & ( ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[53]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( \A[55]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[53]~input_o\))))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[54]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[53]~input_o\))))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[54]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[53]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Shift|rl2[52]~14_combout\);

-- Location: MLABCELL_X37_Y33_N22
\Shift|rl2[56]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[56]~13_combout\ = ( \A[56]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[57]~input_o\))) # (\B[1]~input_o\ & (\A[59]~input_o\)) ) ) ) # ( !\A[56]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[57]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[59]~input_o\)) ) ) ) # ( \A[56]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[58]~input_o\) ) ) ) # ( !\A[56]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[58]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[56]~13_combout\);

-- Location: MLABCELL_X37_Y37_N4
\Shift|rl4[48]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[48]~3_combout\ = ( \Shift|rl2[56]~13_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[60]~15_combout\) ) ) ) # ( !\Shift|rl2[56]~13_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|rl2[60]~15_combout\) ) ) ) # ( 
-- \Shift|rl2[56]~13_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[48]~12_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[52]~14_combout\))) ) ) ) # ( !\Shift|rl2[56]~13_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[48]~12_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[52]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[48]~12_combout\,
	datac => \Shift|ALT_INV_rl2[60]~15_combout\,
	datad => \Shift|ALT_INV_rl2[52]~14_combout\,
	datae => \Shift|ALT_INV_rl2[56]~13_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[48]~3_combout\);

-- Location: LABCELL_X38_Y35_N0
\Shift|rl2[44]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~11_combout\ = ( \A[47]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[45]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( \B[0]~input_o\ & ( (\A[45]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[47]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[44]~input_o\)) # (\B[1]~input_o\ & ((\A[46]~input_o\))) ) ) ) # ( !\A[47]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[44]~input_o\)) # (\B[1]~input_o\ & ((\A[46]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[44]~11_combout\);

-- Location: MLABCELL_X37_Y38_N2
\Shift|rl2[32]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[32]~8_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ & ((\A[35]~input_o\))) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[35]~input_o\))) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[34]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[34]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[32]~8_combout\);

-- Location: MLABCELL_X39_Y38_N6
\Shift|rl2[40]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[40]~10_combout\ = ( \A[42]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[43]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[43]~input_o\) ) ) ) # ( \A[42]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[40]~input_o\))) # (\B[0]~input_o\ & (\A[41]~input_o\)) ) ) ) # ( !\A[42]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[40]~input_o\))) # (\B[0]~input_o\ & (\A[41]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[40]~10_combout\);

-- Location: MLABCELL_X39_Y38_N2
\Shift|rl2[36]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[36]~9_combout\ = ( \B[0]~input_o\ & ( \A[36]~input_o\ & ( (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[39]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[36]~input_o\ & ( (!\B[1]~input_o\) # (\A[38]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[36]~input_o\ & ( (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[39]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[36]~input_o\ & ( (\B[1]~input_o\ & \A[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \Shift|rl2[36]~9_combout\);

-- Location: LABCELL_X40_Y37_N26
\Shift|rl4[32]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~2_combout\ = ( \Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[44]~11_combout\) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[44]~11_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[40]~10_combout\))) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|rl2[32]~8_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[40]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[44]~11_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[32]~8_combout\,
	datad => \Shift|ALT_INV_rl2[40]~10_combout\,
	datae => \Shift|ALT_INV_rl2[36]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[32]~2_combout\);

-- Location: LABCELL_X38_Y38_N20
\Shift|rl2[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ 
-- & ( \A[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: LABCELL_X38_Y38_N26
\Shift|rl2[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~2_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[9]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[11]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[11]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|rl2[8]~2_combout\);

-- Location: MLABCELL_X34_Y38_N0
\Shift|rl2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[0]~0_combout\ = ( \A[0]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[2]~input_o\ & 
-- \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[3]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[2]~input_o\)))) # (\B[0]~input_o\ & (\A[3]~input_o\ & ((\B[1]~input_o\)))) ) ) ) 
-- # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|rl2[0]~0_combout\);

-- Location: LABCELL_X40_Y39_N2
\Shift|rl2[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = ( \A[15]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & ((!\B[1]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # 
-- (\A[13]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: LABCELL_X40_Y38_N24
\Shift|rl4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[0]~0_combout\ = ( \Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[8]~2_combout\) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[8]~2_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[0]~0_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[0]~0_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[4]~1_combout\,
	datab => \Shift|ALT_INV_rl2[8]~2_combout\,
	datac => \Shift|ALT_INV_rl2[0]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[0]~0_combout\);

-- Location: LABCELL_X40_Y38_N30
\Y_R[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|rl4[48]~3_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|rl4[32]~2_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|rl4[16]~1_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|rl4[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[16]~1_combout\,
	datab => \Shift|ALT_INV_rl4[48]~3_combout\,
	datac => \Shift|ALT_INV_rl4[32]~2_combout\,
	datad => \Shift|ALT_INV_rl4[0]~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y_R[0]~0_combout\);

-- Location: IOIBUF_X28_Y56_N32
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X40_Y38_N0
\Y_ShiftOrArith[0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\B[0]~input_o\ $ (((!\A[0]~input_o\)))))) # (\ShiftFN[1]~input_o\ & ((((\Y_R[0]~0_combout\))))) ) ) # ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Shift|ll4[0]~0_combout\ & (\Mux62~0_combout\))) # (\ShiftFN[1]~input_o\ & ((((\Y_R[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000000100101011110100000111101010000001001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \Shift|ALT_INV_ll4[0]~0_combout\,
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Y_R[0]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	datag => \ALT_INV_B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: IOIBUF_X59_Y31_N94
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LABCELL_X40_Y38_N12
\Logic|Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = ( \A[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: IOIBUF_X59_Y36_N94
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: LABCELL_X40_Y38_N22
\Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( \FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ & ( !\Add|Cout~0_combout\ ) ) ) # ( !\FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ & ( !\AltB~0_combout\ ) ) ) # ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ & ( 
-- \Logic|Mux63~0_combout\ ) ) ) # ( !\FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ & ( \Y_ShiftOrArith[0]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111111001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_AltB~0_combout\,
	datac => \ALT_INV_Y_ShiftOrArith[0]~5_combout\,
	datad => \Logic|ALT_INV_Mux63~0_combout\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: MLABCELL_X39_Y34_N8
\Mux62~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = ( \ShiftFN[1]~input_o\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux62~2_combout\);

-- Location: MLABCELL_X39_Y34_N24
\Mux62~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = ( \ShiftFN[1]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: MLABCELL_X34_Y40_N6
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \AddnSub~input_o\ & ( !\Add|C[1]~0_combout\ $ (!\B[1]~input_o\ $ (!\A[1]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[1]~0_combout\ $ (!\B[1]~input_o\ $ (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[1]~0_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(1));

-- Location: MLABCELL_X34_Y40_N20
\Mux62~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~8_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[1]~input_o\)) # 
-- (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux62~8_combout\);

-- Location: MLABCELL_X34_Y34_N28
\Mux60~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \FuncClass[1]~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \FuncClass[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((\FuncClass[0]~input_o\) # (\Mux62~0_combout\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- !\FuncClass[1]~input_o\ & ( !\FuncClass[0]~input_o\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\FuncClass[1]~input_o\ & ( (\Mux62~0_combout\ & (!\FuncClass[0]~input_o\ & \ShiftFN[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110011001100110000000111000001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~0_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LABCELL_X38_Y38_N10
\Shift|rl2[5]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~28_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & 
-- \A[5]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[5]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[7]~input_o\ & (!\B[0]~input_o\))) ) ) ) # 
-- ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|rl2[5]~28_combout\);

-- Location: MLABCELL_X34_Y38_N10
\Mux62~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~4_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( 
-- \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux62~4_combout\);

-- Location: MLABCELL_X37_Y36_N24
\Shift|rl2[9]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~29_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[12]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[9]~29_combout\);

-- Location: LABCELL_X40_Y39_N6
\Shift|rl2[13]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~30_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[15]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[13]~30_combout\);

-- Location: MLABCELL_X34_Y36_N30
\Mux62~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~5_combout\ = ( \Shift|rl2[13]~30_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[9]~29_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[9]~29_combout\) ) ) ) # ( 
-- \Shift|rl2[13]~30_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Mux62~4_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[5]~28_combout\)) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Mux62~4_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|rl2[5]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[5]~28_combout\,
	datab => \ALT_INV_Mux62~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[9]~29_combout\,
	datae => \Shift|ALT_INV_rl2[13]~30_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux62~5_combout\);

-- Location: LABCELL_X35_Y33_N24
\Shift|rl2[49]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~21_combout\ = ( \A[52]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[51]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( \B[1]~input_o\ & ( (\A[51]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[52]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[49]~input_o\))) # (\B[0]~input_o\ & (\A[50]~input_o\)) ) ) ) # ( !\A[52]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[49]~input_o\))) # (\B[0]~input_o\ & (\A[50]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[49]~21_combout\);

-- Location: MLABCELL_X31_Y35_N6
\Shift|rl1[61]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl1[61]~0_combout\ = ( \A[62]~input_o\ & ( (\B[0]~input_o\) # (\A[61]~input_o\) ) ) # ( !\A[62]~input_o\ & ( (\A[61]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Shift|rl1[61]~0_combout\);

-- Location: MLABCELL_X31_Y35_N30
\Shift|rl2[61]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[61]~23_combout\ = ( \Shift|rl1[61]~0_combout\ & ( (!\B[1]~input_o\) # ((\A[63]~input_o\ & !\B[0]~input_o\)) ) ) # ( !\Shift|rl1[61]~0_combout\ & ( (\B[1]~input_o\ & (\A[63]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \Shift|ALT_INV_rl1[61]~0_combout\,
	combout => \Shift|rl2[61]~23_combout\);

-- Location: MLABCELL_X37_Y33_N6
\Shift|rl2[53]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[53]~20_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[54]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[55]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[53]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[53]~20_combout\);

-- Location: MLABCELL_X37_Y33_N8
\Shift|rl2[57]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[57]~22_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[60]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[58]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[59]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[57]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[57]~22_combout\);

-- Location: MLABCELL_X31_Y35_N14
\Shift|rl4[49]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[49]~5_combout\ = ( \Shift|rl2[57]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[53]~20_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[61]~23_combout\)) ) ) ) # ( !\Shift|rl2[57]~22_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|rl2[53]~20_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[61]~23_combout\)) ) ) ) # ( \Shift|rl2[57]~22_combout\ & ( !\B[2]~input_o\ & ( (\Shift|rl2[49]~21_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|rl2[57]~22_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[49]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl2[49]~21_combout\,
	datac => \Shift|ALT_INV_rl2[61]~23_combout\,
	datad => \Shift|ALT_INV_rl2[53]~20_combout\,
	datae => \Shift|ALT_INV_rl2[57]~22_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[49]~5_combout\);

-- Location: MLABCELL_X31_Y35_N18
\Shift|ra3[57]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[57]~0_combout\ = ( \Shift|rl1[61]~0_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[57]~22_combout\)) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\A[63]~input_o\)))) ) ) # ( !\Shift|rl1[61]~0_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[57]~22_combout\)) # (\B[2]~input_o\ & (((\A[63]~input_o\ & \B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[57]~22_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \Shift|ALT_INV_rl1[61]~0_combout\,
	combout => \Shift|ra3[57]~0_combout\);

-- Location: MLABCELL_X31_Y35_N0
\Y_R[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~1_combout\ = ( \Shift|rl2[53]~20_combout\ & ( (!\B[3]~input_o\ & (((\Shift|rl2[49]~21_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & (((\Shift|ra3[57]~0_combout\)))) ) ) # ( !\Shift|rl2[53]~20_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ 
-- & ((\Shift|rl2[49]~21_combout\)))) # (\B[3]~input_o\ & (((\Shift|ra3[57]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ra3[57]~0_combout\,
	datad => \Shift|ALT_INV_rl2[49]~21_combout\,
	dataf => \Shift|ALT_INV_rl2[53]~20_combout\,
	combout => \Y_R[1]~1_combout\);

-- Location: LABCELL_X38_Y35_N26
\Shift|rl2[41]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~18_combout\ = ( \A[41]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[42]~input_o\)) # (\B[1]~input_o\ & ((\A[44]~input_o\)))) ) ) ) # ( !\A[41]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[42]~input_o\)) # (\B[1]~input_o\ & ((\A[44]~input_o\))))) ) ) ) # ( \A[41]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[42]~input_o\)) # (\B[1]~input_o\ & ((\A[44]~input_o\))))) ) ) ) # ( !\A[41]~input_o\ & ( !\A[43]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[42]~input_o\)) # (\B[1]~input_o\ & ((\A[44]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|rl2[41]~18_combout\);

-- Location: MLABCELL_X39_Y38_N10
\Shift|rl2[37]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[37]~17_combout\ = ( \B[0]~input_o\ & ( \A[40]~input_o\ & ( (\A[38]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[40]~input_o\ & ( (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[39]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[40]~input_o\ & ( (!\B[1]~input_o\ & \A[38]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[40]~input_o\ & ( (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[39]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \Shift|rl2[37]~17_combout\);

-- Location: MLABCELL_X37_Y38_N26
\Shift|rl2[33]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[33]~16_combout\ = ( \A[34]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[33]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[36]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( \A[35]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[33]~input_o\))) # (\B[0]~input_o\ & (((\A[36]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[34]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & (\A[33]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\) # (\A[36]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & (\A[33]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[36]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Shift|rl2[33]~16_combout\);

-- Location: LABCELL_X38_Y35_N30
\Shift|rl2[45]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[45]~19_combout\ = ( \A[47]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[46]~input_o\))) # (\B[1]~input_o\ & (\A[48]~input_o\)) ) ) ) # ( !\A[47]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[46]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[48]~input_o\)) ) ) ) # ( \A[47]~input_o\ & ( !\B[0]~input_o\ & ( (\A[45]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[45]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[45]~19_combout\);

-- Location: MLABCELL_X34_Y36_N22
\Shift|rl4[33]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~4_combout\ = ( \Shift|rl2[45]~19_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[41]~18_combout\) ) ) ) # ( !\Shift|rl2[45]~19_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[41]~18_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[45]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[33]~16_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[37]~17_combout\)) ) ) ) # ( !\Shift|rl2[45]~19_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[33]~16_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[37]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[41]~18_combout\,
	datab => \Shift|ALT_INV_rl2[37]~17_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[33]~16_combout\,
	datae => \Shift|ALT_INV_rl2[45]~19_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[33]~4_combout\);

-- Location: LABCELL_X30_Y36_N8
\Y_R[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~2_combout\ = ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl4[49]~5_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~1_combout\))) ) ) # ( !\B[4]~input_o\ & ( \Shift|rl4[33]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[49]~5_combout\,
	datab => \ALT_INV_Y_R[1]~1_combout\,
	datac => \Shift|ALT_INV_rl4[33]~4_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~2_combout\);

-- Location: LABCELL_X35_Y40_N38
\Shift|rl2[29]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~27_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[32]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (\A[32]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[29]~27_combout\);

-- Location: LABCELL_X32_Y41_N6
\Shift|rl2[25]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~26_combout\ = ( \A[28]~input_o\ & ( \B[1]~input_o\ & ( (\A[27]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[27]~input_o\) ) ) ) # ( \A[28]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[25]~26_combout\);

-- Location: LABCELL_X38_Y41_N24
\Shift|rl2[17]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~24_combout\ = ( \B[1]~input_o\ & ( \A[20]~input_o\ & ( (\A[19]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[20]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & \A[19]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Shift|rl2[17]~24_combout\);

-- Location: LABCELL_X38_Y41_N30
\Shift|rl2[21]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~25_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[24]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[22]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[23]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[21]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[21]~25_combout\);

-- Location: MLABCELL_X34_Y36_N26
\Shift|rl4[17]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~6_combout\ = ( \Shift|rl2[21]~25_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[25]~26_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[29]~27_combout\)) ) ) ) # ( !\Shift|rl2[21]~25_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|rl2[25]~26_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[29]~27_combout\)) ) ) ) # ( \Shift|rl2[21]~25_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[17]~24_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[21]~25_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[17]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[29]~27_combout\,
	datab => \Shift|ALT_INV_rl2[25]~26_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[17]~24_combout\,
	datae => \Shift|ALT_INV_rl2[21]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[17]~6_combout\);

-- Location: MLABCELL_X34_Y40_N12
\Mux62~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~6_combout\ = ( \Shift|rl4[17]~6_combout\ & ( (!\B[5]~input_o\ & (((\Mux62~5_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\Y_R[1]~2_combout\)))) ) ) # ( !\Shift|rl4[17]~6_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- (\Mux62~5_combout\))) # (\B[5]~input_o\ & (((\Y_R[1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Mux62~5_combout\,
	datad => \ALT_INV_Y_R[1]~2_combout\,
	dataf => \Shift|ALT_INV_rl4[17]~6_combout\,
	combout => \Mux62~6_combout\);

-- Location: LABCELL_X40_Y40_N36
\Mux62~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux62~3_combout\);

-- Location: MLABCELL_X34_Y38_N4
\Shift|ll2[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[1]~2_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[1]~2_combout\);

-- Location: LABCELL_X30_Y36_N6
\Shift|ll4[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~1_combout\ = ( \Shift|ll2[1]~2_combout\ & ( (!\B[2]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[1]~2_combout\,
	combout => \Shift|ll4[1]~1_combout\);

-- Location: MLABCELL_X34_Y40_N16
\Mux62~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~7_combout\ = ( \Shift|ll4[1]~1_combout\ & ( (\Mux60~0_combout\ & (\Mux62~1_combout\ & ((\Mux62~3_combout\) # (\Mux62~6_combout\)))) ) ) # ( !\Shift|ll4[1]~1_combout\ & ( (\Mux60~0_combout\ & (\Mux62~1_combout\ & (\Mux62~6_combout\ & 
-- !\Mux62~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux62~6_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \Shift|ALT_INV_ll4[1]~1_combout\,
	combout => \Mux62~7_combout\);

-- Location: MLABCELL_X34_Y40_N26
\Mux62~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~9_combout\ = ( \Mux62~7_combout\ ) # ( !\Mux62~7_combout\ & ( (\Mux62~2_combout\ & ((!\Mux62~1_combout\ & (\Add|S\(1))) # (\Mux62~1_combout\ & ((\Mux62~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \Add|ALT_INV_S\(1),
	datad => \ALT_INV_Mux62~8_combout\,
	dataf => \ALT_INV_Mux62~7_combout\,
	combout => \Mux62~9_combout\);

-- Location: MLABCELL_X34_Y40_N30
\Shift|ll2[2]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~3_combout\ = ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[0]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[1]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & (\B[1]~input_o\))) # 
-- (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ll2[2]~3_combout\);

-- Location: LABCELL_X27_Y40_N18
\Shift|ll4[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[2]~2_combout\ = ( !\B[3]~input_o\ & ( (\Shift|ll2[2]~3_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ll2[2]~3_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[2]~2_combout\);

-- Location: LABCELL_X40_Y35_N26
\Shift|rl4[50]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[50]~8_combout\ = ( \A[63]~input_o\ & ( (!\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[62]~input_o\))) ) ) # ( !\A[63]~input_o\ & ( (!\B[1]~input_o\ & (\A[62]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|rl4[50]~8_combout\);

-- Location: MLABCELL_X37_Y33_N34
\Shift|rl2[54]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[54]~35_combout\ = ( \B[1]~input_o\ & ( \A[55]~input_o\ & ( (!\B[0]~input_o\ & ((\A[56]~input_o\))) # (\B[0]~input_o\ & (\A[57]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[55]~input_o\ & ( (\A[54]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[0]~input_o\ & ((\A[56]~input_o\))) # (\B[0]~input_o\ & (\A[57]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[0]~input_o\ & \A[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Shift|rl2[54]~35_combout\);

-- Location: MLABCELL_X34_Y33_N26
\Shift|rl2[58]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~37_combout\ = ( \A[58]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[59]~input_o\))) # (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) ) # ( !\A[58]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[59]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) ) # ( \A[58]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[60]~input_o\) ) ) ) # ( !\A[58]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[60]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[58]~37_combout\);

-- Location: LABCELL_X35_Y33_N14
\Shift|rl2[50]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[50]~36_combout\ = ( \A[52]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[53]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[53]~input_o\) ) ) ) # ( \A[52]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[50]~input_o\))) # (\B[0]~input_o\ & (\A[51]~input_o\)) ) ) ) # ( !\A[52]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[50]~input_o\))) # (\B[0]~input_o\ & (\A[51]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[50]~36_combout\);

-- Location: MLABCELL_X34_Y37_N14
\Shift|rl4[50]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[50]~9_combout\ = ( \Shift|rl2[50]~36_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[58]~37_combout\))) # (\B[2]~input_o\ & (\Shift|rl4[50]~8_combout\)) ) ) ) # ( !\Shift|rl2[50]~36_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|rl2[58]~37_combout\))) # (\B[2]~input_o\ & (\Shift|rl4[50]~8_combout\)) ) ) ) # ( \Shift|rl2[50]~36_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[54]~35_combout\) ) ) ) # ( !\Shift|rl2[50]~36_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|rl2[54]~35_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[50]~8_combout\,
	datab => \Shift|ALT_INV_rl2[54]~35_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[58]~37_combout\,
	datae => \Shift|ALT_INV_rl2[50]~36_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[50]~9_combout\);

-- Location: MLABCELL_X34_Y37_N38
\Shift|ra3[58]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[58]~1_combout\ = ( \A[62]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[58]~37_combout\)) # (\B[2]~input_o\ & (((\Shift|ll2[0]~0_combout\) # (\A[63]~input_o\)))) ) ) # ( !\A[62]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[58]~37_combout\)) # 
-- (\B[2]~input_o\ & (((\A[63]~input_o\ & !\Shift|ll2[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101000001010011010111110101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[58]~37_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[0]~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Shift|ra3[58]~1_combout\);

-- Location: MLABCELL_X34_Y37_N0
\Y_R[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~3_combout\ = ( \Shift|ra3[58]~1_combout\ & ( ((!\B[2]~input_o\ & (\Shift|rl2[50]~36_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[54]~35_combout\)))) # (\B[3]~input_o\) ) ) # ( !\Shift|ra3[58]~1_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\Shift|rl2[50]~36_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[54]~35_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[50]~36_combout\,
	datad => \Shift|ALT_INV_rl2[54]~35_combout\,
	dataf => \Shift|ALT_INV_ra3[58]~1_combout\,
	combout => \Y_R[1]~3_combout\);

-- Location: LABCELL_X38_Y35_N34
\Shift|rl2[42]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[42]~33_combout\ = ( \B[1]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\ & (\A[44]~input_o\)) # (\B[0]~input_o\ & ((\A[45]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[43]~input_o\ & ( (\B[0]~input_o\) # (\A[42]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[0]~input_o\ & (\A[44]~input_o\)) # (\B[0]~input_o\ & ((\A[45]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[43]~input_o\ & ( (\A[42]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|rl2[42]~33_combout\);

-- Location: LABCELL_X35_Y33_N28
\Shift|rl2[46]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[46]~34_combout\ = ( \B[0]~input_o\ & ( \A[46]~input_o\ & ( (!\B[1]~input_o\ & (\A[47]~input_o\)) # (\B[1]~input_o\ & ((\A[49]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[46]~input_o\ & ( (!\B[1]~input_o\) # (\A[48]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[46]~input_o\ & ( (!\B[1]~input_o\ & (\A[47]~input_o\)) # (\B[1]~input_o\ & ((\A[49]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[46]~input_o\ & ( (\B[1]~input_o\ & \A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \Shift|rl2[46]~34_combout\);

-- Location: MLABCELL_X37_Y38_N30
\Shift|rl2[34]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[34]~31_combout\ = ( \A[37]~input_o\ & ( \B[0]~input_o\ & ( (\A[35]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[37]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[35]~input_o\) ) ) ) # ( \A[37]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[34]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\)) ) ) ) # ( !\A[37]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[34]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[34]~31_combout\);

-- Location: MLABCELL_X39_Y38_N34
\Shift|rl2[38]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[38]~32_combout\ = ( \A[39]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[40]~input_o\))) # (\B[0]~input_o\ & (\A[41]~input_o\)) ) ) ) # ( !\A[39]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[40]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[41]~input_o\)) ) ) ) # ( \A[39]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[38]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( !\B[1]~input_o\ & ( (\A[38]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[38]~32_combout\);

-- Location: MLABCELL_X34_Y37_N10
\Shift|rl4[34]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[34]~7_combout\ = ( \Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[42]~33_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[46]~34_combout\))) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|rl2[42]~33_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[46]~34_combout\))) ) ) ) # ( \Shift|rl2[38]~32_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[34]~31_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[34]~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[42]~33_combout\,
	datab => \Shift|ALT_INV_rl2[46]~34_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[34]~31_combout\,
	datae => \Shift|ALT_INV_rl2[38]~32_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[34]~7_combout\);

-- Location: MLABCELL_X31_Y36_N26
\Y_R[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~4_combout\ = ( \Shift|rl4[34]~7_combout\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & (\Shift|rl4[50]~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~3_combout\)))) ) ) # ( !\Shift|rl4[34]~7_combout\ & ( (\B[4]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Shift|rl4[50]~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010110111010101111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_rl4[50]~9_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Y_R[1]~3_combout\,
	dataf => \Shift|ALT_INV_rl4[34]~7_combout\,
	combout => \Y_R[1]~4_combout\);

-- Location: LABCELL_X40_Y39_N34
\Shift|rl2[14]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~44_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[17]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[15]~input_o\))) # (\B[1]~input_o\ & (((\A[17]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (\A[15]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[17]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[14]~44_combout\);

-- Location: LABCELL_X38_Y38_N34
\Shift|rl2[6]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~42_combout\ = ( \B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[8]~input_o\ & ( (\A[6]~input_o\) # (\B[1]~input_o\) ) ) ) # ( \B[0]~input_o\ 
-- & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|rl2[6]~42_combout\);

-- Location: MLABCELL_X34_Y38_N34
\Mux61~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( \A[5]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[0]~input_o\ & ( (\A[3]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: LABCELL_X40_Y39_N30
\Shift|rl2[10]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~43_combout\ = ( \A[11]~input_o\ & ( \A[10]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # 
-- (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[10]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|rl2[10]~43_combout\);

-- Location: LABCELL_X38_Y40_N4
\Mux61~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[14]~44_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[6]~42_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[10]~43_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Mux61~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[14]~44_combout\,
	datab => \Shift|ALT_INV_rl2[6]~42_combout\,
	datac => \ALT_INV_Mux61~0_combout\,
	datad => \Shift|ALT_INV_rl2[10]~43_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LABCELL_X32_Y41_N34
\Shift|rl2[26]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~40_combout\ = ( \A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \B[1]~input_o\ & ( (\A[29]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[28]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[26]~40_combout\);

-- Location: LABCELL_X35_Y40_N20
\Shift|rl2[30]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[30]~41_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[32]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (\A[32]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[30]~41_combout\);

-- Location: LABCELL_X38_Y41_N14
\Shift|rl2[18]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~38_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\B[1]~input_o\) # (\A[20]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\A[20]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|rl2[18]~38_combout\);

-- Location: LABCELL_X32_Y41_N28
\Shift|rl2[22]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~39_combout\ = ( \B[0]~input_o\ & ( \A[22]~input_o\ & ( (!\B[1]~input_o\ & (\A[23]~input_o\)) # (\B[1]~input_o\ & ((\A[25]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[22]~input_o\ & ( (!\B[1]~input_o\) # (\A[24]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[1]~input_o\ & (\A[23]~input_o\)) # (\B[1]~input_o\ & ((\A[25]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[22]~input_o\ & ( (\B[1]~input_o\ & \A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Shift|rl2[22]~39_combout\);

-- Location: LABCELL_X38_Y40_N0
\Shift|rl4[18]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~10_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[26]~40_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[30]~41_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[22]~39_combout\ & ( 
-- (\Shift|rl2[18]~38_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[26]~40_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[30]~41_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[18]~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[26]~40_combout\,
	datac => \Shift|ALT_INV_rl2[30]~41_combout\,
	datad => \Shift|ALT_INV_rl2[18]~38_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[22]~39_combout\,
	combout => \Shift|rl4[18]~10_combout\);

-- Location: MLABCELL_X34_Y40_N14
\Mux61~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = ( \Shift|rl4[18]~10_combout\ & ( (!\B[5]~input_o\ & (((\Mux61~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\Y_R[1]~4_combout\)))) ) ) # ( !\Shift|rl4[18]~10_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- ((\Mux61~1_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Y_R[1]~4_combout\,
	datad => \ALT_INV_Mux61~1_combout\,
	dataf => \Shift|ALT_INV_rl4[18]~10_combout\,
	combout => \Mux61~2_combout\);

-- Location: MLABCELL_X34_Y40_N18
\Mux61~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = ( \Mux61~2_combout\ & ( (\Mux60~0_combout\ & (\Mux62~1_combout\ & ((!\Mux62~3_combout\) # (\Shift|ll4[2]~2_combout\)))) ) ) # ( !\Mux61~2_combout\ & ( (\Mux60~0_combout\ & (\Mux62~1_combout\ & (\Shift|ll4[2]~2_combout\ & 
-- \Mux62~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \Shift|ALT_INV_ll4[2]~2_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \ALT_INV_Mux61~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: MLABCELL_X34_Y40_N34
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \AddnSub~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (!\Add|C[2]~1_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (\Add|C[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datad => \Add|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(2));

-- Location: MLABCELL_X34_Y40_N32
\Mux61~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (!\B[2]~input_o\ & (\A[2]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[2]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[2]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101100001010101110110000101010111011000010101011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux61~4_combout\);

-- Location: MLABCELL_X34_Y40_N24
\Mux61~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = ( \Mux61~4_combout\ & ( ((\Mux62~2_combout\ & ((\Add|S\(2)) # (\Mux62~1_combout\)))) # (\Mux61~3_combout\) ) ) # ( !\Mux61~4_combout\ & ( ((\Mux62~2_combout\ & (!\Mux62~1_combout\ & \Add|S\(2)))) # (\Mux61~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100011111010111110001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux61~3_combout\,
	datad => \Add|ALT_INV_S\(2),
	dataf => \ALT_INV_Mux61~4_combout\,
	combout => \Mux61~5_combout\);

-- Location: LABCELL_X30_Y34_N26
\Mux60~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = ( \B[3]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[3]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100110011111111110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux60~5_combout\);

-- Location: MLABCELL_X34_Y38_N18
\Shift|ll2[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~4_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[3]~4_combout\);

-- Location: LABCELL_X32_Y38_N20
\Shift|ll4[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[3]~3_combout\ = ( \Shift|ll2[3]~4_combout\ & ( (!\B[2]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~4_combout\,
	combout => \Shift|ll4[3]~3_combout\);

-- Location: LABCELL_X27_Y40_N20
\Shift|rl2[27]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~54_combout\ = ( \A[27]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( !\A[27]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( \A[27]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\A[27]~input_o\ & ( !\B[0]~input_o\ & ( (\A[29]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[27]~54_combout\);

-- Location: LABCELL_X38_Y41_N18
\Shift|rl2[19]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~52_combout\ = ( \A[22]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[20]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( \B[0]~input_o\ & ( (\A[20]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[22]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\A[22]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[21]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[19]~52_combout\);

-- Location: MLABCELL_X37_Y38_N16
\Shift|rl2[31]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[31]~55_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[34]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (\A[34]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[34]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[31]~55_combout\);

-- Location: LABCELL_X32_Y41_N38
\Shift|rl2[23]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~53_combout\ = ( \B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & ((\A[24]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\) # (\A[25]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((\A[24]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[23]~input_o\ & ( (\B[1]~input_o\ & \A[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|rl2[23]~53_combout\);

-- Location: LABCELL_X32_Y34_N4
\Shift|rl4[19]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~12_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[23]~53_combout\ & ( (!\B[3]~input_o\) # (\Shift|rl2[31]~55_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[23]~53_combout\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[19]~52_combout\))) # 
-- (\B[3]~input_o\ & (\Shift|rl2[27]~54_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[23]~53_combout\ & ( (\Shift|rl2[31]~55_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|rl2[23]~53_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|rl2[19]~52_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[27]~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[27]~54_combout\,
	datab => \Shift|ALT_INV_rl2[19]~52_combout\,
	datac => \Shift|ALT_INV_rl2[31]~55_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[23]~53_combout\,
	combout => \Shift|rl4[19]~12_combout\);

-- Location: MLABCELL_X37_Y33_N18
\Shift|rl2[55]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[55]~49_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[58]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[57]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[55]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[55]~49_combout\);

-- Location: MLABCELL_X34_Y33_N30
\Shift|rl2[59]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[59]~50_combout\ = ( \A[62]~input_o\ & ( \B[0]~input_o\ & ( (\A[60]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[60]~input_o\) ) ) ) # ( \A[62]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[59]~input_o\))) # (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) ) # ( !\A[62]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[59]~input_o\))) # (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[59]~50_combout\);

-- Location: MLABCELL_X37_Y36_N30
\Shift|rl2[51]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[51]~51_combout\ = ( \A[54]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[52]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( \B[0]~input_o\ & ( (\A[52]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[54]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[51]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))) ) ) ) # ( !\A[54]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[51]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[51]~51_combout\);

-- Location: MLABCELL_X37_Y34_N30
\Shift|ra4[51]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[51]~0_combout\ = ( \Shift|rl2[51]~51_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[59]~50_combout\))) # (\B[2]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( !\Shift|rl2[51]~51_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[59]~50_combout\))) # (\B[2]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( \Shift|rl2[51]~51_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[55]~49_combout\) ) ) ) # ( !\Shift|rl2[51]~51_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[2]~input_o\ & \Shift|rl2[55]~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_rl2[55]~49_combout\,
	datad => \Shift|ALT_INV_rl2[59]~50_combout\,
	datae => \Shift|ALT_INV_rl2[51]~51_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[51]~0_combout\);

-- Location: MLABCELL_X37_Y34_N0
\Shift|rl4[51]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[51]~43_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[51]~51_combout\)))) # (\B[2]~input_o\ & ((((\Shift|rl2[55]~49_combout\))))) ) ) # ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[59]~50_combout\)))) # 
-- (\B[2]~input_o\ & (\A[63]~input_o\ & (((\Shift|ll2[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000010100000101000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_rl2[59]~50_combout\,
	datad => \Shift|ALT_INV_rl2[55]~49_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[0]~0_combout\,
	datag => \Shift|ALT_INV_rl2[51]~51_combout\,
	combout => \Shift|rl4[51]~43_combout\);

-- Location: MLABCELL_X37_Y38_N12
\Shift|rl2[35]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[35]~45_combout\ = ( \A[37]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[36]~input_o\)) # (\B[1]~input_o\ & ((\A[38]~input_o\)))) ) ) ) # ( !\A[37]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[36]~input_o\)) # (\B[1]~input_o\ & ((\A[38]~input_o\))))) ) ) ) # ( \A[37]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[36]~input_o\)) # (\B[1]~input_o\ & ((\A[38]~input_o\))))) ) ) ) # ( !\A[37]~input_o\ & ( !\A[35]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[36]~input_o\)) # (\B[1]~input_o\ & ((\A[38]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Shift|rl2[35]~45_combout\);

-- Location: LABCELL_X35_Y33_N16
\Shift|rl2[47]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[47]~48_combout\ = ( \B[0]~input_o\ & ( \A[50]~input_o\ & ( (\A[48]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & ((\A[47]~input_o\))) # (\B[1]~input_o\ & (\A[49]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & \A[48]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & ((\A[47]~input_o\))) # (\B[1]~input_o\ & (\A[49]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|rl2[47]~48_combout\);

-- Location: MLABCELL_X39_Y38_N38
\Shift|rl2[39]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[39]~46_combout\ = ( \A[42]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[41]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( \B[1]~input_o\ & ( (\A[41]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[42]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[39]~input_o\))) # (\B[0]~input_o\ & (\A[40]~input_o\)) ) ) ) # ( !\A[42]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[39]~input_o\))) # (\B[0]~input_o\ & (\A[40]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[39]~46_combout\);

-- Location: LABCELL_X38_Y35_N38
\Shift|rl2[43]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[43]~47_combout\ = ( \A[46]~input_o\ & ( \A[43]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[44]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[45]~input_o\)))) ) ) ) # ( !\A[46]~input_o\ & ( \A[43]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[44]~input_o\))) # (\B[1]~input_o\ & (((\A[45]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[46]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[1]~input_o\ & (\A[44]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\) # (\A[45]~input_o\)))) ) ) ) # ( !\A[46]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[1]~input_o\ & (\A[44]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[45]~input_o\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|rl2[43]~47_combout\);

-- Location: LABCELL_X32_Y34_N22
\Shift|rl4[35]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[35]~11_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[47]~48_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[43]~47_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[39]~46_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[35]~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[35]~45_combout\,
	datab => \Shift|ALT_INV_rl2[47]~48_combout\,
	datac => \Shift|ALT_INV_rl2[39]~46_combout\,
	datad => \Shift|ALT_INV_rl2[43]~47_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[35]~11_combout\);

-- Location: LABCELL_X32_Y35_N30
\Y_R[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~5_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|rl4[35]~11_combout\))) # (\B[4]~input_o\ & (\Shift|ra4[51]~0_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|rl4[35]~11_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|rl4[51]~43_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[51]~0_combout\,
	datab => \Shift|ALT_INV_rl4[51]~43_combout\,
	datac => \Shift|ALT_INV_rl4[35]~11_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[1]~5_combout\);

-- Location: LABCELL_X40_Y39_N18
\Shift|rl2[11]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~57_combout\ = ( \A[11]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( !\A[11]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[13]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[12]~input_o\ & !\B[1]~input_o\)))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[12]~input_o\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[11]~57_combout\);

-- Location: LABCELL_X38_Y38_N18
\Shift|rl2[7]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~56_combout\ = ( \A[10]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[8]~input_o\)))) # (\B[1]~input_o\ & (((\A[9]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[7]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[8]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[8]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\A[9]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[8]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|rl2[7]~56_combout\);

-- Location: MLABCELL_X34_Y38_N20
\Mux60~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = ( \A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[6]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[0]~input_o\ & ( (\A[3]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LABCELL_X35_Y41_N22
\Shift|rl2[15]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~58_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (\A[15]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Shift|rl2[15]~58_combout\);

-- Location: LABCELL_X35_Y38_N6
\Mux60~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[15]~58_combout\ & ( (\B[2]~input_o\) # (\Shift|rl2[11]~57_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[15]~58_combout\ & ( (!\B[2]~input_o\ & ((\Mux60~1_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|rl2[7]~56_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[15]~58_combout\ & ( (\Shift|rl2[11]~57_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[15]~58_combout\ & ( (!\B[2]~input_o\ & ((\Mux60~1_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|rl2[7]~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[11]~57_combout\,
	datab => \Shift|ALT_INV_rl2[7]~56_combout\,
	datac => \ALT_INV_Mux60~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[15]~58_combout\,
	combout => \Mux60~2_combout\);

-- Location: LABCELL_X32_Y38_N24
\Mux60~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = ( \Mux60~2_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # ((\Shift|rl4[19]~12_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~5_combout\)))) ) ) # ( !\Mux60~2_combout\ & ( (!\B[5]~input_o\ & (\B[4]~input_o\ & 
-- (\Shift|rl4[19]~12_combout\))) # (\B[5]~input_o\ & (((\Y_R[1]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_rl4[19]~12_combout\,
	datad => \ALT_INV_Y_R[1]~5_combout\,
	dataf => \ALT_INV_Mux60~2_combout\,
	combout => \Mux60~3_combout\);

-- Location: LABCELL_X32_Y38_N22
\Mux60~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = ( \Mux60~3_combout\ & ( (\Mux60~0_combout\ & (\Mux62~1_combout\ & ((!\Mux62~3_combout\) # (\Shift|ll4[3]~3_combout\)))) ) ) # ( !\Mux60~3_combout\ & ( (\Mux60~0_combout\ & (\Mux62~3_combout\ & (\Mux62~1_combout\ & 
-- \Shift|ll4[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000100000001010000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \ALT_INV_Mux62~3_combout\,
	datac => \ALT_INV_Mux62~1_combout\,
	datad => \Shift|ALT_INV_ll4[3]~3_combout\,
	dataf => \ALT_INV_Mux60~3_combout\,
	combout => \Mux60~4_combout\);

-- Location: MLABCELL_X34_Y40_N10
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \B[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[3]~2_combout\ $ (!\A[3]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[3]~2_combout\ $ (\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[3]~2_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Add|S\(3));

-- Location: MLABCELL_X34_Y40_N2
\Mux60~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = ( \Mux62~1_combout\ & ( ((\Mux62~2_combout\ & \Mux60~5_combout\)) # (\Mux60~4_combout\) ) ) # ( !\Mux62~1_combout\ & ( ((\Mux62~2_combout\ & \Add|S\(3))) # (\Mux60~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux60~4_combout\,
	datad => \Add|ALT_INV_S\(3),
	dataf => \ALT_INV_Mux62~1_combout\,
	combout => \Mux60~6_combout\);

-- Location: MLABCELL_X34_Y38_N24
\Shift|ll2[4]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[1]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: MLABCELL_X34_Y38_N6
\Shift|ll4[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[4]~4_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[4]~5_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll2[4]~5_combout\,
	datac => \Shift|ALT_INV_ll2[0]~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[4]~4_combout\);

-- Location: LABCELL_X40_Y37_N14
\Shift|rl4[20]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~14_combout\ = ( \Shift|rl2[28]~7_combout\ & ( \Shift|rl2[20]~5_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|rl2[24]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\))) ) ) ) # ( !\Shift|rl2[28]~7_combout\ & ( 
-- \Shift|rl2[20]~5_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|rl2[24]~6_combout\)))) # (\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\ & ((\B[2]~input_o\)))) ) ) ) # ( \Shift|rl2[28]~7_combout\ & ( !\Shift|rl2[20]~5_combout\ & ( 
-- (!\B[3]~input_o\ & (((\Shift|rl2[24]~6_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|rl2[32]~8_combout\))) ) ) ) # ( !\Shift|rl2[28]~7_combout\ & ( !\Shift|rl2[20]~5_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\Shift|rl2[24]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[32]~8_combout\,
	datab => \Shift|ALT_INV_rl2[24]~6_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[28]~7_combout\,
	dataf => \Shift|ALT_INV_rl2[20]~5_combout\,
	combout => \Shift|rl4[20]~14_combout\);

-- Location: MLABCELL_X37_Y37_N28
\Shift|ra4[52]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[52]~1_combout\ = ( \Shift|rl2[52]~14_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[60]~15_combout\))) # (\B[2]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( !\Shift|rl2[52]~14_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[60]~15_combout\))) # (\B[2]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( \Shift|rl2[52]~14_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[56]~13_combout\) ) ) ) # ( !\Shift|rl2[52]~14_combout\ & ( !\B[3]~input_o\ & ( 
-- (\B[2]~input_o\ & \Shift|rl2[56]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_rl2[60]~15_combout\,
	datad => \Shift|ALT_INV_rl2[56]~13_combout\,
	datae => \Shift|ALT_INV_rl2[52]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[52]~1_combout\);

-- Location: MLABCELL_X37_Y37_N32
\Y_R[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~6_combout\ = ( \B[3]~input_o\ & ( (\Shift|rl2[60]~15_combout\ & !\B[2]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[52]~14_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[56]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[60]~15_combout\,
	datab => \Shift|ALT_INV_rl2[56]~13_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[52]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R[1]~6_combout\);

-- Location: LABCELL_X40_Y37_N28
\Shift|rl4[36]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[36]~13_combout\ = ( \Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|rl2[40]~10_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[48]~12_combout\))) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\Shift|rl2[40]~10_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[48]~12_combout\))) ) ) ) # ( \Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[44]~11_combout\) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( 
-- !\B[2]~input_o\ & ( (\Shift|rl2[44]~11_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[40]~10_combout\,
	datab => \Shift|ALT_INV_rl2[48]~12_combout\,
	datac => \Shift|ALT_INV_rl2[44]~11_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_rl2[36]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[36]~13_combout\);

-- Location: MLABCELL_X31_Y37_N4
\Y_R[1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~7_combout\ = ( \Shift|rl4[36]~13_combout\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Y_R[1]~6_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ra4[52]~1_combout\))) ) ) # ( !\Shift|rl4[36]~13_combout\ & ( (\B[4]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Y_R[1]~6_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ra4[52]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111111111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[52]~1_combout\,
	datab => \ALT_INV_Y_R[1]~6_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_rl4[36]~13_combout\,
	combout => \Y_R[1]~7_combout\);

-- Location: LABCELL_X40_Y38_N6
\Mux59~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = ( \Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[16]~4_combout\) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|rl2[16]~4_combout\) ) ) ) # ( 
-- \Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) 
-- # (\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[4]~1_combout\,
	datab => \Shift|ALT_INV_rl2[8]~2_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[16]~4_combout\,
	datae => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux59~1_combout\);

-- Location: LABCELL_X40_Y37_N16
\Mux59~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = ( \Mux59~1_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # ((\Shift|rl4[20]~14_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~7_combout\)))) ) ) # ( !\Mux59~1_combout\ & ( (!\B[5]~input_o\ & (\B[4]~input_o\ & 
-- (\Shift|rl4[20]~14_combout\))) # (\B[5]~input_o\ & (((\Y_R[1]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_rl4[20]~14_combout\,
	datad => \ALT_INV_Y_R[1]~7_combout\,
	dataf => \ALT_INV_Mux59~1_combout\,
	combout => \Mux59~2_combout\);

-- Location: MLABCELL_X31_Y37_N30
\Mux59~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = ( \Mux60~0_combout\ & ( (!\Mux62~3_combout\ & ((\Mux59~2_combout\))) # (\Mux62~3_combout\ & (\Shift|ll4[4]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~4_combout\,
	datac => \ALT_INV_Mux62~3_combout\,
	datad => \ALT_INV_Mux59~2_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Mux59~3_combout\);

-- Location: MLABCELL_X37_Y35_N20
\Mux59~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( \B[4]~input_o\ & ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \LogicFN[1]~input_o\ & ( (\A[4]~input_o\ & !\LogicFN[0]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\LogicFN[1]~input_o\ 
-- & ( (!\A[4]~input_o\) # (!\LogicFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\LogicFN[1]~input_o\ & ( (\A[4]~input_o\ & \LogicFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000110000001100001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: LABCELL_X40_Y36_N2
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \Add|C[4]~3_combout\ & ( !\AddnSub~input_o\ $ (!\B[4]~input_o\ $ (!\A[4]~input_o\)) ) ) # ( !\Add|C[4]~3_combout\ & ( !\AddnSub~input_o\ $ (!\B[4]~input_o\ $ (\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \Add|ALT_INV_C[4]~3_combout\,
	combout => \Add|S\(4));

-- Location: LABCELL_X40_Y36_N4
\Mux59~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = ( \Add|S\(4) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux59~0_combout\)) # (\Mux59~3_combout\))) ) ) # ( !\Add|S\(4) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux59~0_combout\)) # (\Mux59~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100100111001101110010011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~1_combout\,
	datab => \ALT_INV_Mux62~2_combout\,
	datac => \ALT_INV_Mux59~3_combout\,
	datad => \ALT_INV_Mux59~0_combout\,
	dataf => \Add|ALT_INV_S\(4),
	combout => \Mux59~4_combout\);

-- Location: MLABCELL_X39_Y34_N34
\Mux58~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[5]~input_o\ & ( !\LogicFN[1]~input_o\ $ (\A[5]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[5]~input_o\ ) ) # ( \LogicFN[0]~input_o\ & ( !\B[5]~input_o\ & ( (!\LogicFN[1]~input_o\ & \A[5]~input_o\) ) ) 
-- ) # ( !\LogicFN[0]~input_o\ & ( !\B[5]~input_o\ & ( (\LogicFN[1]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101011111111111111111010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LABCELL_X40_Y36_N0
\Add|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(5) = ( \B[5]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[5]~4_combout\ $ (!\A[5]~input_o\)) ) ) # ( !\B[5]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[5]~4_combout\ $ (\A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[5]~4_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Add|S\(5));

-- Location: MLABCELL_X34_Y38_N30
\Shift|ll2[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~6_combout\ = ( \A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[2]~input_o\))) ) ) ) # ( \A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[0]~input_o\ & ( (\A[3]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[5]~6_combout\);

-- Location: MLABCELL_X37_Y39_N0
\Shift|ll4[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[5]~5_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[5]~6_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[1]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll2[1]~2_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[5]~6_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[5]~5_combout\);

-- Location: MLABCELL_X34_Y36_N38
\Shift|rl4[21]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~16_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[29]~27_combout\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[25]~26_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[29]~27_combout\ & ( 
-- (\Shift|rl2[21]~25_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[29]~27_combout\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[25]~26_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|rl2[29]~27_combout\ & ( (!\B[3]~input_o\ & \Shift|rl2[21]~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[33]~16_combout\,
	datab => \Shift|ALT_INV_rl2[25]~26_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl2[21]~25_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[29]~27_combout\,
	combout => \Shift|rl4[21]~16_combout\);

-- Location: MLABCELL_X31_Y35_N2
\Y_R[1]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~8_combout\ = ( \Shift|rl2[53]~20_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|rl2[57]~22_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|rl2[61]~23_combout\))) ) ) # ( !\Shift|rl2[53]~20_combout\ & ( (!\B[3]~input_o\ & 
-- (\B[2]~input_o\ & ((\Shift|rl2[57]~22_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|rl2[61]~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[61]~23_combout\,
	datad => \Shift|ALT_INV_rl2[57]~22_combout\,
	dataf => \Shift|ALT_INV_rl2[53]~20_combout\,
	combout => \Y_R[1]~8_combout\);

-- Location: MLABCELL_X34_Y36_N34
\Shift|rl4[37]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[37]~15_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[49]~21_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[45]~19_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[41]~18_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[37]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[49]~21_combout\,
	datab => \Shift|ALT_INV_rl2[45]~19_combout\,
	datac => \Shift|ALT_INV_rl2[37]~17_combout\,
	datad => \Shift|ALT_INV_rl2[41]~18_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[37]~15_combout\);

-- Location: MLABCELL_X31_Y35_N20
\Shift|ra4[53]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[53]~10_combout\ = ( !\B[3]~input_o\ & ( ((!\B[2]~input_o\ & (((\Shift|rl2[53]~20_combout\)))) # (\B[2]~input_o\ & (\Shift|rl2[57]~22_combout\))) ) ) # ( \B[3]~input_o\ & ( ((!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|rl1[61]~0_combout\))) # 
-- (\B[2]~input_o\ & (\A[63]~input_o\)))) # (\B[1]~input_o\ & (\A[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000000110011001100001111010101011111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[57]~22_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl1[61]~0_combout\,
	datag => \Shift|ALT_INV_rl2[53]~20_combout\,
	combout => \Shift|ra4[53]~10_combout\);

-- Location: LABCELL_X32_Y37_N4
\Y_R[1]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~9_combout\ = ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Y_R[1]~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ra4[53]~10_combout\))) ) ) # ( !\B[4]~input_o\ & ( \Shift|rl4[37]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_R[1]~8_combout\,
	datac => \Shift|ALT_INV_rl4[37]~15_combout\,
	datad => \Shift|ALT_INV_ra4[53]~10_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~9_combout\);

-- Location: MLABCELL_X34_Y36_N2
\Mux58~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = ( \Shift|rl2[5]~28_combout\ & ( \Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|rl2[9]~29_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|rl2[13]~30_combout\))) ) ) ) # ( 
-- !\Shift|rl2[5]~28_combout\ & ( \Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \Shift|rl2[9]~29_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|rl2[13]~30_combout\))) ) ) ) # ( \Shift|rl2[5]~28_combout\ & ( 
-- !\Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|rl2[9]~29_combout\)))) # (\B[3]~input_o\ & (\Shift|rl2[13]~30_combout\ & (!\B[2]~input_o\))) ) ) ) # ( !\Shift|rl2[5]~28_combout\ & ( !\Shift|rl2[17]~24_combout\ & ( 
-- (!\B[3]~input_o\ & (((\B[2]~input_o\ & \Shift|rl2[9]~29_combout\)))) # (\B[3]~input_o\ & (\Shift|rl2[13]~30_combout\ & (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl2[13]~30_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[9]~29_combout\,
	datae => \Shift|ALT_INV_rl2[5]~28_combout\,
	dataf => \Shift|ALT_INV_rl2[17]~24_combout\,
	combout => \Mux58~1_combout\);

-- Location: LABCELL_X32_Y37_N10
\Mux58~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = ( \Y_R[1]~9_combout\ & ( \Mux58~1_combout\ & ( (!\B[4]~input_o\) # ((\Shift|rl4[21]~16_combout\) # (\B[5]~input_o\)) ) ) ) # ( !\Y_R[1]~9_combout\ & ( \Mux58~1_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # 
-- (\Shift|rl4[21]~16_combout\))) ) ) ) # ( \Y_R[1]~9_combout\ & ( !\Mux58~1_combout\ & ( ((\B[4]~input_o\ & \Shift|rl4[21]~16_combout\)) # (\B[5]~input_o\) ) ) ) # ( !\Y_R[1]~9_combout\ & ( !\Mux58~1_combout\ & ( (\B[4]~input_o\ & (!\B[5]~input_o\ & 
-- \Shift|rl4[21]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111110100000111100001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_rl4[21]~16_combout\,
	datae => \ALT_INV_Y_R[1]~9_combout\,
	dataf => \ALT_INV_Mux58~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LABCELL_X32_Y37_N32
\Mux58~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = ( \Mux62~3_combout\ & ( \Mux58~2_combout\ & ( (\Mux60~0_combout\ & \Shift|ll4[5]~5_combout\) ) ) ) # ( !\Mux62~3_combout\ & ( \Mux58~2_combout\ & ( \Mux60~0_combout\ ) ) ) # ( \Mux62~3_combout\ & ( !\Mux58~2_combout\ & ( 
-- (\Mux60~0_combout\ & \Shift|ll4[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datad => \Shift|ALT_INV_ll4[5]~5_combout\,
	datae => \ALT_INV_Mux62~3_combout\,
	dataf => \ALT_INV_Mux58~2_combout\,
	combout => \Mux58~3_combout\);

-- Location: LABCELL_X40_Y36_N6
\Mux58~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = ( \Mux58~3_combout\ & ( ((\Mux62~2_combout\ & \Add|S\(5))) # (\Mux62~1_combout\) ) ) # ( !\Mux58~3_combout\ & ( (\Mux62~2_combout\ & ((!\Mux62~1_combout\ & ((\Add|S\(5)))) # (\Mux62~1_combout\ & (\Mux58~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~1_combout\,
	datab => \ALT_INV_Mux62~2_combout\,
	datac => \ALT_INV_Mux58~0_combout\,
	datad => \Add|ALT_INV_S\(5),
	dataf => \ALT_INV_Mux58~3_combout\,
	combout => \Mux58~4_combout\);

-- Location: MLABCELL_X34_Y38_N12
\Shift|ll2[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~7_combout\ = ( \A[5]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[0]~input_o\ & ( (\A[3]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[6]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[6]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[6]~7_combout\);

-- Location: LABCELL_X35_Y38_N10
\Shift|ll4[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[6]~6_combout\ = ( \Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((\B[2]~input_o\) # (\Shift|ll2[6]~7_combout\))) ) ) # ( !\Shift|ll2[2]~3_combout\ & ( (\Shift|ll2[6]~7_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[6]~7_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[2]~3_combout\,
	combout => \Shift|ll4[6]~6_combout\);

-- Location: MLABCELL_X34_Y37_N24
\Shift|rl4[54]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[54]~18_combout\ = ( \B[3]~input_o\ & ( (\Shift|rl4[50]~8_combout\ & !\B[2]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[54]~35_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[58]~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[58]~37_combout\,
	datab => \Shift|ALT_INV_rl2[54]~35_combout\,
	datac => \Shift|ALT_INV_rl4[50]~8_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[54]~18_combout\);

-- Location: MLABCELL_X34_Y37_N6
\Shift|rl4[38]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[38]~17_combout\ = ( \Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[46]~34_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[50]~36_combout\))) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|rl2[46]~34_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[50]~36_combout\))) ) ) ) # ( \Shift|rl2[38]~32_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[42]~33_combout\) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|rl2[42]~33_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[42]~33_combout\,
	datab => \Shift|ALT_INV_rl2[46]~34_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[50]~36_combout\,
	datae => \Shift|ALT_INV_rl2[38]~32_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[38]~17_combout\);

-- Location: MLABCELL_X34_Y37_N20
\Shift|ra4[54]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[54]~6_combout\ = ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (((\Shift|rl2[54]~35_combout\)))) # (\B[3]~input_o\ & (((!\Shift|ll2[0]~0_combout\ & ((\A[63]~input_o\))) # (\Shift|ll2[0]~0_combout\ & (\A[62]~input_o\))))) ) ) # ( \B[2]~input_o\ & ( 
-- (((!\B[3]~input_o\ & (\Shift|rl2[58]~37_combout\)) # (\B[3]~input_o\ & ((\A[63]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011000011110000111100000101111101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \Shift|ALT_INV_rl2[54]~35_combout\,
	datac => \Shift|ALT_INV_rl2[58]~37_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	datag => \Shift|ALT_INV_ll2[0]~0_combout\,
	combout => \Shift|ra4[54]~6_combout\);

-- Location: LABCELL_X35_Y37_N6
\Y_R[1]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~10_combout\ = ( \Shift|ra4[54]~6_combout\ & ( (!\B[4]~input_o\ & (((\Shift|rl4[38]~17_combout\)))) # (\B[4]~input_o\ & (((\Shift|rl4[54]~18_combout\)) # (\ShiftFN[0]~input_o\))) ) ) # ( !\Shift|ra4[54]~6_combout\ & ( (!\B[4]~input_o\ & 
-- (((\Shift|rl4[38]~17_combout\)))) # (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & (\Shift|rl4[54]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_rl4[54]~18_combout\,
	datad => \Shift|ALT_INV_rl4[38]~17_combout\,
	dataf => \Shift|ALT_INV_ra4[54]~6_combout\,
	combout => \Y_R[1]~10_combout\);

-- Location: LABCELL_X38_Y40_N34
\Mux57~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[10]~43_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[14]~44_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[18]~38_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[10]~43_combout\ & ( 
-- (\Shift|rl2[6]~42_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[10]~43_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[14]~44_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[18]~38_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|rl2[10]~43_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[6]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[6]~42_combout\,
	datac => \Shift|ALT_INV_rl2[18]~38_combout\,
	datad => \Shift|ALT_INV_rl2[14]~44_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[10]~43_combout\,
	combout => \Mux57~1_combout\);

-- Location: LABCELL_X38_Y40_N10
\Shift|rl4[22]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~19_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[34]~31_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[26]~40_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[30]~41_combout\ ) ) ) # 
-- ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[22]~39_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[22]~39_combout\,
	datab => \Shift|ALT_INV_rl2[26]~40_combout\,
	datac => \Shift|ALT_INV_rl2[34]~31_combout\,
	datad => \Shift|ALT_INV_rl2[30]~41_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[22]~19_combout\);

-- Location: LABCELL_X38_Y40_N36
\Mux57~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = ( \Shift|rl4[22]~19_combout\ & ( (!\B[5]~input_o\ & (((\Mux57~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\Y_R[1]~10_combout\)))) ) ) # ( !\Shift|rl4[22]~19_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- ((\Mux57~1_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Y_R[1]~10_combout\,
	datad => \ALT_INV_Mux57~1_combout\,
	dataf => \Shift|ALT_INV_rl4[22]~19_combout\,
	combout => \Mux57~2_combout\);

-- Location: LABCELL_X35_Y37_N30
\Mux57~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = ( \Mux62~3_combout\ & ( (\Shift|ll4[6]~6_combout\ & \Mux60~0_combout\) ) ) # ( !\Mux62~3_combout\ & ( (\Mux60~0_combout\ & \Mux57~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[6]~6_combout\,
	datac => \ALT_INV_Mux60~0_combout\,
	datad => \ALT_INV_Mux57~2_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux57~3_combout\);

-- Location: LABCELL_X40_Y36_N30
\Mux57~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (!\B[6]~input_o\ & (\A[6]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[6]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[6]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001110001001101100111000100110110011100010011011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LABCELL_X40_Y36_N26
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \Add|C[6]~5_combout\ & ( !\AddnSub~input_o\ $ (!\B[6]~input_o\ $ (!\A[6]~input_o\)) ) ) # ( !\Add|C[6]~5_combout\ & ( !\AddnSub~input_o\ $ (!\B[6]~input_o\ $ (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \Add|ALT_INV_C[6]~5_combout\,
	combout => \Add|S\(6));

-- Location: MLABCELL_X34_Y39_N38
\Mux57~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = ( \Add|S\(6) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux57~0_combout\)) # (\Mux57~3_combout\))) ) ) # ( !\Add|S\(6) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux57~0_combout\)) # (\Mux57~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001101000111010101110100011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux57~3_combout\,
	datad => \ALT_INV_Mux57~0_combout\,
	dataf => \Add|ALT_INV_S\(6),
	combout => \Mux57~4_combout\);

-- Location: LABCELL_X40_Y36_N8
\Mux56~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = ( \B[7]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[7]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LABCELL_X38_Y38_N2
\Shift|ll2[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~8_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[4]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[5]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ 
-- & ( \A[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[7]~8_combout\);

-- Location: LABCELL_X32_Y38_N30
\Shift|ll4[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[7]~7_combout\ = ( \Shift|ll2[3]~4_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[7]~8_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|ll2[3]~4_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[7]~8_combout\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~4_combout\,
	combout => \Shift|ll4[7]~7_combout\);

-- Location: LABCELL_X35_Y38_N14
\Mux56~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[7]~56_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[15]~58_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[19]~52_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[7]~56_combout\ & ( (!\B[2]~input_o\) # 
-- (\Shift|rl2[11]~57_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[7]~56_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[15]~58_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[19]~52_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[7]~56_combout\ & ( 
-- (\B[2]~input_o\ & \Shift|rl2[11]~57_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[15]~58_combout\,
	datac => \Shift|ALT_INV_rl2[19]~52_combout\,
	datad => \Shift|ALT_INV_rl2[11]~57_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[7]~56_combout\,
	combout => \Mux56~1_combout\);

-- Location: MLABCELL_X34_Y35_N2
\Shift|ra3[62]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[62]~2_combout\ = ( !\B[2]~input_o\ & ( \Shift|ll2[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[0]~0_combout\,
	combout => \Shift|ra3[62]~2_combout\);

-- Location: MLABCELL_X37_Y34_N34
\Y_R[1]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~11_combout\ = ( \A[63]~input_o\ & ( (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\) # (\Shift|ra3[62]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ra3[62]~2_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~11_combout\);

-- Location: MLABCELL_X37_Y34_N32
\Shift|rl4[55]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[55]~21_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[59]~50_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[55]~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl2[55]~49_combout\,
	datac => \Shift|ALT_INV_rl2[59]~50_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[55]~21_combout\);

-- Location: LABCELL_X32_Y34_N30
\Shift|rl4[39]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[39]~20_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[51]~51_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[47]~48_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[43]~47_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[39]~46_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[51]~51_combout\,
	datab => \Shift|ALT_INV_rl2[47]~48_combout\,
	datac => \Shift|ALT_INV_rl2[39]~46_combout\,
	datad => \Shift|ALT_INV_rl2[43]~47_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[39]~20_combout\);

-- Location: MLABCELL_X37_Y34_N4
\Y_R[1]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~12_combout\ = ( \B[4]~input_o\ & ( (!\Y_R[1]~11_combout\ & !\Shift|rl4[55]~21_combout\) ) ) # ( !\B[4]~input_o\ & ( !\Shift|rl4[39]~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y_R[1]~11_combout\,
	datac => \Shift|ALT_INV_rl4[55]~21_combout\,
	datad => \Shift|ALT_INV_rl4[39]~20_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~12_combout\);

-- Location: LABCELL_X32_Y34_N34
\Shift|rl4[23]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~22_combout\ = ( \Shift|rl2[35]~45_combout\ & ( \Shift|rl2[27]~54_combout\ & ( ((!\B[3]~input_o\ & (\Shift|rl2[23]~53_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[31]~55_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & 
-- ( \Shift|rl2[27]~54_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|rl2[23]~53_combout\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|rl2[31]~55_combout\)))) ) ) ) # ( \Shift|rl2[35]~45_combout\ & ( !\Shift|rl2[27]~54_combout\ & ( 
-- (!\B[3]~input_o\ & (\Shift|rl2[23]~53_combout\ & (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((\Shift|rl2[31]~55_combout\) # (\B[2]~input_o\)))) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & ( !\Shift|rl2[27]~54_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\Shift|rl2[23]~53_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[31]~55_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~53_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[31]~55_combout\,
	datae => \Shift|ALT_INV_rl2[35]~45_combout\,
	dataf => \Shift|ALT_INV_rl2[27]~54_combout\,
	combout => \Shift|rl4[23]~22_combout\);

-- Location: LABCELL_X32_Y36_N0
\Mux56~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = ( \Shift|rl4[23]~22_combout\ & ( (!\B[5]~input_o\ & (((\Mux56~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((!\Y_R[1]~12_combout\)))) ) ) # ( !\Shift|rl4[23]~22_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- (\Mux56~1_combout\))) # (\B[5]~input_o\ & (((!\Y_R[1]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001000001110110000100001111111010011000111111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Mux56~1_combout\,
	datad => \ALT_INV_Y_R[1]~12_combout\,
	dataf => \Shift|ALT_INV_rl4[23]~22_combout\,
	combout => \Mux56~2_combout\);

-- Location: LABCELL_X32_Y36_N26
\Mux56~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = ( \Mux62~3_combout\ & ( (\Shift|ll4[7]~7_combout\ & \Mux60~0_combout\) ) ) # ( !\Mux62~3_combout\ & ( (\Mux60~0_combout\ & \Mux56~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[7]~7_combout\,
	datac => \ALT_INV_Mux60~0_combout\,
	datad => \ALT_INV_Mux56~2_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux56~3_combout\);

-- Location: LABCELL_X40_Y36_N10
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \AddnSub~input_o\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (!\Add|C[7]~6_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\ $ (\Add|C[7]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \Add|ALT_INV_C[7]~6_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(7));

-- Location: LABCELL_X40_Y36_N32
\Mux56~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = ( \Add|S\(7) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux56~0_combout\)) # (\Mux56~3_combout\))) ) ) # ( !\Add|S\(7) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux56~0_combout\)) # (\Mux56~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100100011011101110010001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~1_combout\,
	datab => \ALT_INV_Mux62~2_combout\,
	datac => \ALT_INV_Mux56~0_combout\,
	datad => \ALT_INV_Mux56~3_combout\,
	dataf => \Add|ALT_INV_S\(7),
	combout => \Mux56~4_combout\);

-- Location: LABCELL_X38_Y38_N4
\Shift|ll2[8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~9_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) 
-- # (\A[7]~input_o\))) # (\B[1]~input_o\ & (((\A[5]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) 
-- # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ll2[8]~9_combout\);

-- Location: LABCELL_X35_Y38_N0
\Shift|ll4[8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~8_combout\ = ( \Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[8]~9_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[0]~1_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\)) ) ) # ( !\Shift|ll2[4]~5_combout\ & ( 
-- (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[8]~9_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[0]~1_combout\,
	datad => \Shift|ALT_INV_ll2[8]~9_combout\,
	dataf => \Shift|ALT_INV_ll2[4]~5_combout\,
	combout => \Shift|ll4[8]~8_combout\);

-- Location: LABCELL_X40_Y37_N6
\Shift|rl4[24]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~25_combout\ = ( \Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[28]~7_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[28]~7_combout\) ) ) ) # ( 
-- \Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[24]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\)) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|rl2[24]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[32]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[32]~8_combout\,
	datab => \Shift|ALT_INV_rl2[24]~6_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl2[28]~7_combout\,
	datae => \Shift|ALT_INV_rl2[36]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[24]~25_combout\);

-- Location: LABCELL_X40_Y37_N8
\Mux55~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = ( \Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[20]~5_combout\) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[20]~5_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[8]~2_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[20]~5_combout\,
	datab => \Shift|ALT_INV_rl2[12]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[8]~2_combout\,
	datae => \Shift|ALT_INV_rl2[16]~4_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux55~1_combout\);

-- Location: MLABCELL_X37_Y37_N34
\Shift|rl4[56]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[56]~24_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[56]~13_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[60]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[60]~15_combout\,
	datab => \Shift|ALT_INV_rl2[56]~13_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[56]~24_combout\);

-- Location: LABCELL_X40_Y37_N0
\Shift|rl4[40]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[40]~23_combout\ = ( \Shift|rl2[40]~10_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|rl2[44]~11_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[52]~14_combout\))) ) ) ) # ( !\Shift|rl2[40]~10_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\Shift|rl2[44]~11_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[52]~14_combout\))) ) ) ) # ( \Shift|rl2[40]~10_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[48]~12_combout\) ) ) ) # ( !\Shift|rl2[40]~10_combout\ & ( 
-- !\B[2]~input_o\ & ( (\Shift|rl2[48]~12_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[44]~11_combout\,
	datab => \Shift|ALT_INV_rl2[48]~12_combout\,
	datac => \Shift|ALT_INV_rl2[52]~14_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_rl2[40]~10_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[40]~23_combout\);

-- Location: MLABCELL_X39_Y37_N24
\Y_R[1]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~13_combout\ = ( \A[63]~input_o\ & ( \B[4]~input_o\ & ( (!\Shift|rl4[56]~24_combout\ & ((!\B[3]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\A[63]~input_o\ & ( \B[4]~input_o\ & ( !\Shift|rl4[56]~24_combout\ ) ) ) # ( \A[63]~input_o\ & ( 
-- !\B[4]~input_o\ & ( !\Shift|rl4[40]~23_combout\ ) ) ) # ( !\A[63]~input_o\ & ( !\B[4]~input_o\ & ( !\Shift|rl4[40]~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000111100001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_rl4[56]~24_combout\,
	datad => \Shift|ALT_INV_rl4[40]~23_combout\,
	datae => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~13_combout\);

-- Location: LABCELL_X40_Y37_N18
\Mux55~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = ( \Y_R[1]~13_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\Mux55~1_combout\))) # (\B[4]~input_o\ & (\Shift|rl4[24]~25_combout\)))) ) ) # ( !\Y_R[1]~13_combout\ & ( ((!\B[4]~input_o\ & ((\Mux55~1_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|rl4[24]~25_combout\))) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_rl4[24]~25_combout\,
	datad => \ALT_INV_Mux55~1_combout\,
	dataf => \ALT_INV_Y_R[1]~13_combout\,
	combout => \Mux55~2_combout\);

-- Location: MLABCELL_X39_Y37_N2
\Mux55~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = ( \Mux62~3_combout\ & ( (\Shift|ll4[8]~8_combout\ & \Mux60~0_combout\) ) ) # ( !\Mux62~3_combout\ & ( (\Mux60~0_combout\ & \Mux55~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[8]~8_combout\,
	datac => \ALT_INV_Mux60~0_combout\,
	datad => \ALT_INV_Mux55~2_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux55~3_combout\);

-- Location: LABCELL_X40_Y36_N38
\Mux55~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (!\B[8]~input_o\ & (\A[8]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[8]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[8]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LABCELL_X40_Y36_N14
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \AddnSub~input_o\ & ( !\Add|C[8]~7_combout\ $ (!\A[8]~input_o\ $ (!\B[8]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[8]~7_combout\ $ (!\A[8]~input_o\ $ (\B[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[8]~7_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(8));

-- Location: LABCELL_X40_Y36_N34
\Mux55~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = ( \Add|S\(8) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux55~0_combout\)) # (\Mux55~3_combout\))) ) ) # ( !\Add|S\(8) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux55~0_combout\)) # (\Mux55~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100100111001101110010011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~1_combout\,
	datab => \ALT_INV_Mux62~2_combout\,
	datac => \ALT_INV_Mux55~3_combout\,
	datad => \ALT_INV_Mux55~0_combout\,
	dataf => \Add|ALT_INV_S\(8),
	combout => \Mux55~4_combout\);

-- Location: MLABCELL_X34_Y36_N10
\Mux54~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = ( \Shift|rl2[13]~30_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[17]~24_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[21]~25_combout\)) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[17]~24_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[21]~25_combout\)) ) ) ) # ( \Shift|rl2[13]~30_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[9]~29_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|rl2[9]~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[21]~25_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[9]~29_combout\,
	datad => \Shift|ALT_INV_rl2[17]~24_combout\,
	datae => \Shift|ALT_INV_rl2[13]~30_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: MLABCELL_X34_Y36_N4
\Shift|rl4[25]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~28_combout\ = ( \Shift|rl2[37]~17_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[33]~16_combout\) ) ) ) # ( !\Shift|rl2[37]~17_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[33]~16_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[37]~17_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[25]~26_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[29]~27_combout\))) ) ) ) # ( !\Shift|rl2[37]~17_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[25]~26_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[29]~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[33]~16_combout\,
	datab => \Shift|ALT_INV_rl2[25]~26_combout\,
	datac => \Shift|ALT_INV_rl2[29]~27_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[37]~17_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[25]~28_combout\);

-- Location: MLABCELL_X31_Y35_N8
\Y_R[1]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~14_combout\ = ( \A[63]~input_o\ & ( (\Shift|ra3[57]~0_combout\) # (\B[3]~input_o\) ) ) # ( !\A[63]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ra3[57]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ra3[57]~0_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~14_combout\);

-- Location: MLABCELL_X31_Y35_N16
\Shift|rl4[57]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[57]~27_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[57]~22_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[61]~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[57]~22_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[61]~23_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[57]~27_combout\);

-- Location: MLABCELL_X31_Y35_N26
\Shift|rl4[41]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[41]~26_combout\ = ( \Shift|rl2[49]~21_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[53]~20_combout\) ) ) ) # ( !\Shift|rl2[49]~21_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[53]~20_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[49]~21_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[41]~18_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[45]~19_combout\))) ) ) ) # ( !\Shift|rl2[49]~21_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[41]~18_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[45]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[41]~18_combout\,
	datab => \Shift|ALT_INV_rl2[53]~20_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[45]~19_combout\,
	datae => \Shift|ALT_INV_rl2[49]~21_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[41]~26_combout\);

-- Location: MLABCELL_X31_Y35_N32
\Y_R[1]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~15_combout\ = ( \Shift|rl4[41]~26_combout\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[57]~27_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~14_combout\))) ) ) # ( !\Shift|rl4[41]~26_combout\ & ( (\B[4]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[57]~27_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111111111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~14_combout\,
	datab => \Shift|ALT_INV_rl4[57]~27_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_rl4[41]~26_combout\,
	combout => \Y_R[1]~15_combout\);

-- Location: MLABCELL_X31_Y36_N8
\Mux54~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|rl4[25]~28_combout\)) # (\B[5]~input_o\ & ((\Y_R[1]~15_combout\))) ) ) # ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Mux54~1_combout\)) # (\B[5]~input_o\ & ((\Y_R[1]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux54~1_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_rl4[25]~28_combout\,
	datad => \ALT_INV_Y_R[1]~15_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LABCELL_X38_Y38_N30
\Shift|ll2[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~10_combout\ = ( \B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)) ) ) ) # ( \B[0]~input_o\ 
-- & ( !\A[8]~input_o\ & ( (\B[1]~input_o\ & \A[6]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ll2[9]~10_combout\);

-- Location: MLABCELL_X37_Y39_N2
\Shift|ll4[9]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~9_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[1]~2_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[9]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[5]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[1]~2_combout\,
	datac => \Shift|ALT_INV_ll2[9]~10_combout\,
	datad => \Shift|ALT_INV_ll2[5]~6_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[9]~9_combout\);

-- Location: LABCELL_X40_Y40_N20
\Mux54~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = ( \Mux62~3_combout\ & ( (\Mux60~0_combout\ & \Shift|ll4[9]~9_combout\) ) ) # ( !\Mux62~3_combout\ & ( (\Mux60~0_combout\ & \Mux54~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \ALT_INV_Mux54~2_combout\,
	datad => \Shift|ALT_INV_ll4[9]~9_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux54~3_combout\);

-- Location: LABCELL_X40_Y40_N22
\Mux54~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[9]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[9]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LABCELL_X40_Y40_N2
\Add|S[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(9) = ( \Add|C[9]~8_combout\ & ( !\A[9]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[9]~input_o\)) ) ) # ( !\Add|C[9]~8_combout\ & ( !\A[9]~input_o\ $ (!\AddnSub~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_C[9]~8_combout\,
	combout => \Add|S\(9));

-- Location: LABCELL_X40_Y40_N24
\Mux54~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = ( \Add|S\(9) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux54~0_combout\)) # (\Mux54~3_combout\))) ) ) # ( !\Add|S\(9) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux54~0_combout\)) # (\Mux54~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001101000111010101110100011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux54~3_combout\,
	datad => \ALT_INV_Mux54~0_combout\,
	dataf => \Add|ALT_INV_S\(9),
	combout => \Mux54~4_combout\);

-- Location: LABCELL_X40_Y40_N10
\Mux53~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[10]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[10]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[10]~input_o\ $ (((!\A[10]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LABCELL_X38_Y38_N12
\Shift|ll2[10]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~11_combout\ = ( \A[10]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[9]~input_o\)))) # (\B[1]~input_o\ & (((\A[8]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[7]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[9]~input_o\)))) # (\B[1]~input_o\ & (((\A[8]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[9]~input_o\)))) # (\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & (\A[8]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[9]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|ll2[10]~11_combout\);

-- Location: LABCELL_X35_Y38_N8
\Shift|ll4[10]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~10_combout\ = ( \Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[10]~11_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[6]~7_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) # ( 
-- !\Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[10]~11_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[6]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[6]~7_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[10]~11_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[2]~3_combout\,
	combout => \Shift|ll4[10]~10_combout\);

-- Location: LABCELL_X38_Y40_N20
\Shift|rl4[26]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~31_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[38]~32_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[30]~41_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[34]~31_combout\ ) ) ) # 
-- ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[26]~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[38]~32_combout\,
	datab => \Shift|ALT_INV_rl2[26]~40_combout\,
	datac => \Shift|ALT_INV_rl2[30]~41_combout\,
	datad => \Shift|ALT_INV_rl2[34]~31_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[26]~31_combout\);

-- Location: MLABCELL_X34_Y37_N36
\Y_R[1]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~16_combout\ = ( \B[3]~input_o\ & ( \A[63]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \Shift|ra3[58]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_ra3[58]~1_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R[1]~16_combout\);

-- Location: MLABCELL_X34_Y37_N2
\Shift|rl4[58]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[58]~30_combout\ = ( \Shift|rl4[50]~8_combout\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[58]~37_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|rl4[50]~8_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \Shift|rl2[58]~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[58]~37_combout\,
	dataf => \Shift|ALT_INV_rl4[50]~8_combout\,
	combout => \Shift|rl4[58]~30_combout\);

-- Location: MLABCELL_X34_Y37_N28
\Shift|rl4[42]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[42]~29_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[54]~35_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[50]~36_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[46]~34_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[42]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[42]~33_combout\,
	datab => \Shift|ALT_INV_rl2[46]~34_combout\,
	datac => \Shift|ALT_INV_rl2[50]~36_combout\,
	datad => \Shift|ALT_INV_rl2[54]~35_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[42]~29_combout\);

-- Location: MLABCELL_X39_Y34_N26
\Y_R[1]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~17_combout\ = ( \Shift|rl4[42]~29_combout\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[58]~30_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~16_combout\))) ) ) # ( !\Shift|rl4[42]~29_combout\ & ( (\B[4]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[58]~30_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~16_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_rl4[58]~30_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_rl4[42]~29_combout\,
	combout => \Y_R[1]~17_combout\);

-- Location: LABCELL_X38_Y40_N26
\Mux53~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[22]~39_combout\ & ( (\Shift|rl2[18]~38_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[10]~43_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|rl2[14]~44_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[18]~38_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[22]~39_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[10]~43_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|rl2[14]~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[18]~38_combout\,
	datac => \Shift|ALT_INV_rl2[10]~43_combout\,
	datad => \Shift|ALT_INV_rl2[14]~44_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[22]~39_combout\,
	combout => \Mux53~1_combout\);

-- Location: MLABCELL_X39_Y36_N0
\Mux53~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = ( \Y_R[1]~17_combout\ & ( \Mux53~1_combout\ & ( ((!\B[4]~input_o\) # (\B[5]~input_o\)) # (\Shift|rl4[26]~31_combout\) ) ) ) # ( !\Y_R[1]~17_combout\ & ( \Mux53~1_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # 
-- (\Shift|rl4[26]~31_combout\))) ) ) ) # ( \Y_R[1]~17_combout\ & ( !\Mux53~1_combout\ & ( ((\Shift|rl4[26]~31_combout\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) ) # ( !\Y_R[1]~17_combout\ & ( !\Mux53~1_combout\ & ( (\Shift|rl4[26]~31_combout\ & 
-- (!\B[5]~input_o\ & \B[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000011110101111111110000010100001111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[26]~31_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_Y_R[1]~17_combout\,
	dataf => \ALT_INV_Mux53~1_combout\,
	combout => \Mux53~2_combout\);

-- Location: LABCELL_X40_Y40_N12
\Mux53~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = ( \Mux53~2_combout\ & ( (\Mux60~0_combout\ & ((!\Mux62~3_combout\) # (\Shift|ll4[10]~10_combout\))) ) ) # ( !\Mux53~2_combout\ & ( (\Mux60~0_combout\ & (\Shift|ll4[10]~10_combout\ & \Mux62~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \Shift|ALT_INV_ll4[10]~10_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \ALT_INV_Mux53~2_combout\,
	combout => \Mux53~3_combout\);

-- Location: LABCELL_X40_Y40_N6
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \AddnSub~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (!\Add|C[10]~9_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (\Add|C[10]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(10));

-- Location: LABCELL_X40_Y40_N26
\Mux53~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = ( \Add|S\(10) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux53~0_combout\)) # (\Mux53~3_combout\))) ) ) # ( !\Add|S\(10) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux53~0_combout\)) # (\Mux53~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001101000101011101110100010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux53~0_combout\,
	datad => \ALT_INV_Mux53~3_combout\,
	dataf => \Add|ALT_INV_S\(10),
	combout => \Mux53~4_combout\);

-- Location: LABCELL_X40_Y40_N8
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \B[11]~input_o\ & ( !\A[11]~input_o\ $ (!\Add|C[11]~10_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[11]~input_o\ & ( !\A[11]~input_o\ $ (!\Add|C[11]~10_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \Add|ALT_INV_C[11]~10_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Add|S\(11));

-- Location: LABCELL_X38_Y38_N36
\Shift|ll2[11]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~12_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[11]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[11]~input_o\)))) # (\B[1]~input_o\ & (\A[9]~input_o\ & 
-- ((!\B[0]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ll2[11]~12_combout\);

-- Location: LABCELL_X32_Y38_N28
\Shift|ll4[11]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~11_combout\ = ( \Shift|ll2[3]~4_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ll2[11]~12_combout\)))) # (\B[2]~input_o\ & (\Shift|ll2[7]~8_combout\ & ((!\B[3]~input_o\)))) ) ) # ( !\Shift|ll2[3]~4_combout\ & ( 
-- (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[11]~12_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[7]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[7]~8_combout\,
	datac => \Shift|ALT_INV_ll2[11]~12_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~4_combout\,
	combout => \Shift|ll4[11]~11_combout\);

-- Location: MLABCELL_X37_Y34_N38
\Shift|rl4[59]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[59]~33_combout\ = ( \Shift|rl2[59]~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\A[63]~input_o\ & \Shift|ll2[0]~0_combout\)))) ) ) # ( !\Shift|rl2[59]~50_combout\ & ( (\B[2]~input_o\ & (\A[63]~input_o\ & (\Shift|ll2[0]~0_combout\ & 
-- !\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000010101011000000001010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_ll2[0]~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[59]~50_combout\,
	combout => \Shift|rl4[59]~33_combout\);

-- Location: LABCELL_X32_Y34_N36
\Shift|rl4[43]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[43]~32_combout\ = ( \Shift|rl2[55]~49_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[51]~51_combout\) ) ) ) # ( !\Shift|rl2[55]~49_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[51]~51_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[55]~49_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[43]~47_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[47]~48_combout\))) ) ) ) # ( !\Shift|rl2[55]~49_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[43]~47_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[47]~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[43]~47_combout\,
	datab => \Shift|ALT_INV_rl2[47]~48_combout\,
	datac => \Shift|ALT_INV_rl2[51]~51_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[55]~49_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[43]~32_combout\);

-- Location: MLABCELL_X37_Y34_N36
\Y_R[1]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~18_combout\ = ( \Shift|rl2[59]~50_combout\ & ( ((!\B[2]~input_o\ & !\B[3]~input_o\)) # (\A[63]~input_o\) ) ) # ( !\Shift|rl2[59]~50_combout\ & ( (\A[63]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[59]~50_combout\,
	combout => \Y_R[1]~18_combout\);

-- Location: LABCELL_X35_Y34_N8
\Y_R[1]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~19_combout\ = ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl4[59]~33_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~18_combout\))) ) ) # ( !\B[4]~input_o\ & ( \Shift|rl4[43]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[59]~33_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_rl4[43]~32_combout\,
	datad => \ALT_INV_Y_R[1]~18_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~19_combout\);

-- Location: LABCELL_X32_Y34_N24
\Mux52~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[23]~53_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[19]~52_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[15]~58_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[11]~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~53_combout\,
	datab => \Shift|ALT_INV_rl2[15]~58_combout\,
	datac => \Shift|ALT_INV_rl2[11]~57_combout\,
	datad => \Shift|ALT_INV_rl2[19]~52_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux52~1_combout\);

-- Location: LABCELL_X32_Y34_N0
\Shift|rl4[27]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~34_combout\ = ( \Shift|rl2[35]~45_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[39]~46_combout\) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[39]~46_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[35]~45_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[27]~54_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[31]~55_combout\))) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[27]~54_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[31]~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[27]~54_combout\,
	datab => \Shift|ALT_INV_rl2[39]~46_combout\,
	datac => \Shift|ALT_INV_rl2[31]~55_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[35]~45_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[27]~34_combout\);

-- Location: LABCELL_X35_Y34_N32
\Mux52~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = ( \Shift|rl4[27]~34_combout\ & ( (!\B[5]~input_o\ & (((\Mux52~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\Y_R[1]~19_combout\)))) ) ) # ( !\Shift|rl4[27]~34_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- ((\Mux52~1_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Y_R[1]~19_combout\,
	datad => \ALT_INV_Mux52~1_combout\,
	dataf => \Shift|ALT_INV_rl4[27]~34_combout\,
	combout => \Mux52~2_combout\);

-- Location: LABCELL_X32_Y38_N34
\Mux52~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = ( \Mux60~0_combout\ & ( (!\Mux62~3_combout\ & ((\Mux52~2_combout\))) # (\Mux62~3_combout\ & (\Shift|ll4[11]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[11]~11_combout\,
	datac => \ALT_INV_Mux52~2_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Mux52~3_combout\);

-- Location: LABCELL_X40_Y40_N30
\Mux52~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = ( \B[11]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[11]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LABCELL_X40_Y40_N16
\Mux52~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = ( \Mux52~0_combout\ & ( (!\Mux62~2_combout\ & (\Mux62~1_combout\ & ((\Mux52~3_combout\)))) # (\Mux62~2_combout\ & (((\Add|S\(11))) # (\Mux62~1_combout\))) ) ) # ( !\Mux52~0_combout\ & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\ & 
-- (\Add|S\(11)))) # (\Mux62~1_combout\ & (((\Mux52~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011100010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \Add|ALT_INV_S\(11),
	datad => \ALT_INV_Mux52~3_combout\,
	dataf => \ALT_INV_Mux52~0_combout\,
	combout => \Mux52~4_combout\);

-- Location: MLABCELL_X37_Y36_N34
\Shift|ll2[12]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~13_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[9]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\A[12]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[12]~13_combout\);

-- Location: LABCELL_X35_Y38_N18
\Shift|ll4[12]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~12_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[0]~1_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[12]~13_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ll2[8]~9_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[4]~5_combout\ & ( (\Shift|ll2[0]~1_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[12]~13_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|ll2[8]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~1_combout\,
	datab => \Shift|ALT_INV_ll2[12]~13_combout\,
	datac => \Shift|ALT_INV_ll2[8]~9_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[4]~5_combout\,
	combout => \Shift|ll4[12]~12_combout\);

-- Location: LABCELL_X40_Y37_N38
\Mux51~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = ( \Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[20]~5_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[24]~6_combout\)) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[20]~5_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[24]~6_combout\)) ) ) ) # ( \Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[12]~3_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[16]~4_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|rl2[12]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[24]~6_combout\,
	datac => \Shift|ALT_INV_rl2[12]~3_combout\,
	datad => \Shift|ALT_INV_rl2[20]~5_combout\,
	datae => \Shift|ALT_INV_rl2[16]~4_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux51~1_combout\);

-- Location: LABCELL_X40_Y37_N32
\Shift|rl4[28]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~36_combout\ = ( \Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[32]~8_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[40]~10_combout\)) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|rl2[32]~8_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[40]~10_combout\)) ) ) ) # ( \Shift|rl2[36]~9_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|rl2[28]~7_combout\) ) ) ) # ( !\Shift|rl2[36]~9_combout\ & ( 
-- !\B[2]~input_o\ & ( (\Shift|rl2[28]~7_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[28]~7_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[40]~10_combout\,
	datad => \Shift|ALT_INV_rl2[32]~8_combout\,
	datae => \Shift|ALT_INV_rl2[36]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[28]~36_combout\);

-- Location: MLABCELL_X37_Y37_N18
\Shift|rl4[44]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~35_combout\ = ( \Shift|rl2[52]~14_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[56]~13_combout\) ) ) ) # ( !\Shift|rl2[52]~14_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|rl2[56]~13_combout\) ) ) ) # ( 
-- \Shift|rl2[52]~14_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[44]~11_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[48]~12_combout\)) ) ) ) # ( !\Shift|rl2[52]~14_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[44]~11_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[48]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[48]~12_combout\,
	datac => \Shift|ALT_INV_rl2[56]~13_combout\,
	datad => \Shift|ALT_INV_rl2[44]~11_combout\,
	datae => \Shift|ALT_INV_rl2[52]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[44]~35_combout\);

-- Location: MLABCELL_X37_Y37_N20
\Y_R[1]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~42_combout\ = ( !\B[4]~input_o\ & ( (((\Shift|rl4[44]~35_combout\))) ) ) # ( \B[4]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|rl2[60]~15_combout\)) # (\B[3]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))))) # 
-- (\B[2]~input_o\ & (((\A[63]~input_o\ & (\ShiftFN[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010101010000001100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[60]~15_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	datag => \Shift|ALT_INV_rl4[44]~35_combout\,
	combout => \Y_R[1]~42_combout\);

-- Location: LABCELL_X35_Y34_N34
\Mux51~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = ( \Y_R[1]~42_combout\ & ( ((!\B[4]~input_o\ & (\Mux51~1_combout\)) # (\B[4]~input_o\ & ((\Shift|rl4[28]~36_combout\)))) # (\B[5]~input_o\) ) ) # ( !\Y_R[1]~42_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & (\Mux51~1_combout\)) # 
-- (\B[4]~input_o\ & ((\Shift|rl4[28]~36_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Mux51~1_combout\,
	datad => \Shift|ALT_INV_rl4[28]~36_combout\,
	dataf => \ALT_INV_Y_R[1]~42_combout\,
	combout => \Mux51~2_combout\);

-- Location: MLABCELL_X37_Y37_N0
\Mux51~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = ( \Mux51~2_combout\ & ( (\Mux60~0_combout\ & ((!\Mux62~3_combout\) # (\Shift|ll4[12]~12_combout\))) ) ) # ( !\Mux51~2_combout\ & ( (\Shift|ll4[12]~12_combout\ & (\Mux60~0_combout\ & \Mux62~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll4[12]~12_combout\,
	datac => \ALT_INV_Mux60~0_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \ALT_INV_Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LABCELL_X40_Y40_N32
\Mux51~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[12]~input_o\ & (\A[12]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[12]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[12]~input_o\ $ (((!\A[12]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LABCELL_X40_Y40_N14
\Add|S[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(12) = ( \Add|C[12]~11_combout\ & ( !\B[12]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[12]~input_o\)) ) ) # ( !\Add|C[12]~11_combout\ & ( !\B[12]~input_o\ $ (!\AddnSub~input_o\ $ (\A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \Add|ALT_INV_C[12]~11_combout\,
	combout => \Add|S\(12));

-- Location: LABCELL_X40_Y40_N18
\Mux51~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = ( \Add|S\(12) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux51~0_combout\)) # (\Mux51~3_combout\))) ) ) # ( !\Add|S\(12) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux51~0_combout\)) # (\Mux51~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001101000111010101110100011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux51~3_combout\,
	datad => \ALT_INV_Mux51~0_combout\,
	dataf => \Add|ALT_INV_S\(12),
	combout => \Mux51~4_combout\);

-- Location: MLABCELL_X34_Y39_N0
\Mux50~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = ( \B[13]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[13]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LABCELL_X40_Y39_N22
\Shift|ll2[13]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~14_combout\ = ( \A[11]~input_o\ & ( \A[10]~input_o\ & ( ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[13]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\A[12]~input_o\ & 
-- !\B[1]~input_o\)))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|ll2[13]~14_combout\);

-- Location: MLABCELL_X37_Y39_N4
\Shift|ll4[13]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~13_combout\ = ( \Shift|ll2[1]~2_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[5]~6_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[1]~2_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[5]~6_combout\) ) ) ) # ( 
-- \Shift|ll2[1]~2_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[13]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[9]~10_combout\)) ) ) ) # ( !\Shift|ll2[1]~2_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[13]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[9]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[9]~10_combout\,
	datac => \Shift|ALT_INV_ll2[13]~14_combout\,
	datad => \Shift|ALT_INV_ll2[5]~6_combout\,
	datae => \Shift|ALT_INV_ll2[1]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[13]~13_combout\);

-- Location: MLABCELL_X34_Y36_N16
\Mux50~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = ( \Shift|rl2[13]~30_combout\ & ( \Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\Shift|rl2[21]~25_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[25]~26_combout\))) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( 
-- \Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|rl2[21]~25_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[25]~26_combout\)))) ) ) ) # ( \Shift|rl2[13]~30_combout\ & ( 
-- !\Shift|rl2[17]~24_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|rl2[21]~25_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[25]~26_combout\)))) ) ) ) # ( !\Shift|rl2[13]~30_combout\ & ( 
-- !\Shift|rl2[17]~24_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|rl2[21]~25_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[25]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl2[25]~26_combout\,
	datac => \Shift|ALT_INV_rl2[21]~25_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[13]~30_combout\,
	dataf => \Shift|ALT_INV_rl2[17]~24_combout\,
	combout => \Mux50~1_combout\);

-- Location: MLABCELL_X31_Y35_N10
\Y_R[1]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~20_combout\ = ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[61]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[61]~23_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y_R[1]~20_combout\);

-- Location: MLABCELL_X31_Y35_N38
\Shift|rl4[45]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~37_combout\ = ( \Shift|rl2[57]~22_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[53]~20_combout\) ) ) ) # ( !\Shift|rl2[57]~22_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[53]~20_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[57]~22_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[45]~19_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[49]~21_combout\)) ) ) ) # ( !\Shift|rl2[57]~22_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[45]~19_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[49]~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[53]~20_combout\,
	datab => \Shift|ALT_INV_rl2[49]~21_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[45]~19_combout\,
	datae => \Shift|ALT_INV_rl2[57]~22_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[45]~37_combout\);

-- Location: MLABCELL_X34_Y38_N38
\Shift|ra4[61]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[61]~2_combout\ = ( !\B[1]~input_o\ & ( !\B[3]~input_o\ & ( !\B[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[61]~2_combout\);

-- Location: MLABCELL_X31_Y35_N28
\Shift|ra4[61]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[61]~3_combout\ = ( \Shift|rl1[61]~0_combout\ & ( (\Shift|ra4[61]~2_combout\) # (\A[63]~input_o\) ) ) # ( !\Shift|rl1[61]~0_combout\ & ( (\A[63]~input_o\ & !\Shift|ra4[61]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[63]~input_o\,
	datad => \Shift|ALT_INV_ra4[61]~2_combout\,
	dataf => \Shift|ALT_INV_rl1[61]~0_combout\,
	combout => \Shift|ra4[61]~3_combout\);

-- Location: MLABCELL_X31_Y34_N32
\Y_R[1]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~21_combout\ = ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Y_R[1]~20_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ra4[61]~3_combout\))) ) ) # ( !\B[4]~input_o\ & ( \Shift|rl4[45]~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_R[1]~20_combout\,
	datac => \Shift|ALT_INV_rl4[45]~37_combout\,
	datad => \Shift|ALT_INV_ra4[61]~3_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~21_combout\);

-- Location: MLABCELL_X34_Y36_N12
\Shift|rl4[29]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~38_combout\ = ( \Shift|rl2[37]~17_combout\ & ( \Shift|rl2[29]~27_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[41]~18_combout\)))) ) ) ) # ( !\Shift|rl2[37]~17_combout\ & 
-- ( \Shift|rl2[29]~27_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[41]~18_combout\))))) ) ) ) # ( \Shift|rl2[37]~17_combout\ & ( 
-- !\Shift|rl2[29]~27_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[41]~18_combout\))))) ) ) ) # ( !\Shift|rl2[37]~17_combout\ & ( 
-- !\Shift|rl2[29]~27_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|rl2[33]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[41]~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[33]~16_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[41]~18_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_rl2[37]~17_combout\,
	dataf => \Shift|ALT_INV_rl2[29]~27_combout\,
	combout => \Shift|rl4[29]~38_combout\);

-- Location: LABCELL_X32_Y36_N2
\Mux50~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = ( \Shift|rl4[29]~38_combout\ & ( (!\B[5]~input_o\ & (((\Mux50~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\Y_R[1]~21_combout\)))) ) ) # ( !\Shift|rl4[29]~38_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & 
-- (\Mux50~1_combout\))) # (\B[5]~input_o\ & (((\Y_R[1]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Mux50~1_combout\,
	datad => \ALT_INV_Y_R[1]~21_combout\,
	dataf => \Shift|ALT_INV_rl4[29]~38_combout\,
	combout => \Mux50~2_combout\);

-- Location: LABCELL_X32_Y36_N30
\Mux50~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = ( \Mux62~3_combout\ & ( (\Shift|ll4[13]~13_combout\ & \Mux60~0_combout\) ) ) # ( !\Mux62~3_combout\ & ( (\Mux50~2_combout\ & \Mux60~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll4[13]~13_combout\,
	datac => \ALT_INV_Mux50~2_combout\,
	datad => \ALT_INV_Mux60~0_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux50~3_combout\);

-- Location: MLABCELL_X34_Y39_N2
\Add|S[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(13) = ( \AddnSub~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (!\Add|C[13]~12_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (\Add|C[13]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \Add|ALT_INV_C[13]~12_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(13));

-- Location: MLABCELL_X34_Y39_N36
\Mux50~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = ( \Add|S\(13) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux50~0_combout\)) # (\Mux50~3_combout\))) ) ) # ( !\Add|S\(13) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux50~0_combout\)) # (\Mux50~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001101000101011101110100010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux50~0_combout\,
	datad => \ALT_INV_Mux50~3_combout\,
	dataf => \Add|ALT_INV_S\(13),
	combout => \Mux50~4_combout\);

-- Location: MLABCELL_X34_Y39_N22
\Mux49~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \A[14]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (\B[14]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[14]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: MLABCELL_X34_Y39_N4
\Add|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(14) = ( \A[14]~input_o\ & ( !\Add|C[14]~13_combout\ $ (!\AddnSub~input_o\ $ (!\B[14]~input_o\)) ) ) # ( !\A[14]~input_o\ & ( !\Add|C[14]~13_combout\ $ (!\AddnSub~input_o\ $ (\B[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[14]~13_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|S\(14));

-- Location: LABCELL_X32_Y35_N38
\Y_R[1]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~22_combout\ = ( \B[0]~input_o\ & ( (\A[63]~input_o\ & \Shift|ra4[61]~2_combout\) ) ) # ( !\B[0]~input_o\ & ( (\A[62]~input_o\ & \Shift|ra4[61]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \Shift|ALT_INV_ra4[61]~2_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_R[1]~22_combout\);

-- Location: MLABCELL_X34_Y37_N32
\Shift|rl4[46]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~39_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[58]~37_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[54]~35_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[50]~36_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[46]~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[50]~36_combout\,
	datab => \Shift|ALT_INV_rl2[46]~34_combout\,
	datac => \Shift|ALT_INV_rl2[58]~37_combout\,
	datad => \Shift|ALT_INV_rl2[54]~35_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[46]~39_combout\);

-- Location: MLABCELL_X37_Y34_N20
\Shift|ra4[62]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~4_combout\ = ( \Shift|ra3[62]~2_combout\ & ( !\B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ra3[62]~2_combout\,
	combout => \Shift|ra4[62]~4_combout\);

-- Location: LABCELL_X32_Y35_N14
\Shift|ra4[62]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~5_combout\ = ( \A[62]~input_o\ & ( (\A[63]~input_o\) # (\Shift|ra4[62]~4_combout\) ) ) # ( !\A[62]~input_o\ & ( (!\Shift|ra4[62]~4_combout\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ra4[62]~4_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Shift|ra4[62]~5_combout\);

-- Location: LABCELL_X32_Y35_N2
\Y_R[1]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~23_combout\ = ( \Shift|ra4[62]~5_combout\ & ( (!\B[4]~input_o\ & (((\Shift|rl4[46]~39_combout\)))) # (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\Y_R[1]~22_combout\))) ) ) # ( !\Shift|ra4[62]~5_combout\ & ( (!\B[4]~input_o\ & 
-- (((\Shift|rl4[46]~39_combout\)))) # (\B[4]~input_o\ & (\Y_R[1]~22_combout\ & (!\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~22_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_rl4[46]~39_combout\,
	dataf => \Shift|ALT_INV_ra4[62]~5_combout\,
	combout => \Y_R[1]~23_combout\);

-- Location: MLABCELL_X34_Y37_N18
\Shift|rl4[30]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~40_combout\ = ( \Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[42]~33_combout\) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[42]~33_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[38]~32_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[30]~41_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[34]~31_combout\))) ) ) ) # ( !\Shift|rl2[38]~32_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[30]~41_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[34]~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[42]~33_combout\,
	datab => \Shift|ALT_INV_rl2[30]~41_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[34]~31_combout\,
	datae => \Shift|ALT_INV_rl2[38]~32_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[30]~40_combout\);

-- Location: LABCELL_X38_Y40_N28
\Mux49~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = ( \Shift|rl2[26]~40_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[18]~38_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|rl2[26]~40_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[18]~38_combout\) ) ) ) # ( 
-- \Shift|rl2[26]~40_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[14]~44_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[22]~39_combout\)) ) ) ) # ( !\Shift|rl2[26]~40_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|rl2[14]~44_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[22]~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[22]~39_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[14]~44_combout\,
	datad => \Shift|ALT_INV_rl2[18]~38_combout\,
	datae => \Shift|ALT_INV_rl2[26]~40_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LABCELL_X38_Y40_N38
\Mux49~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = ( \Mux49~1_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\) # ((\Shift|rl4[30]~40_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~23_combout\)))) ) ) # ( !\Mux49~1_combout\ & ( (!\B[5]~input_o\ & (\B[4]~input_o\ & 
-- ((\Shift|rl4[30]~40_combout\)))) # (\B[5]~input_o\ & (((\Y_R[1]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Y_R[1]~23_combout\,
	datad => \Shift|ALT_INV_rl4[30]~40_combout\,
	dataf => \ALT_INV_Mux49~1_combout\,
	combout => \Mux49~2_combout\);

-- Location: LABCELL_X40_Y39_N26
\Shift|ll2[14]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~15_combout\ = ( \A[11]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & ((!\B[1]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ll2[14]~15_combout\);

-- Location: LABCELL_X35_Y38_N22
\Shift|ll4[14]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~14_combout\ = ( \Shift|ll2[6]~7_combout\ & ( \Shift|ll2[2]~3_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ll2[14]~15_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~11_combout\))) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[6]~7_combout\ & ( 
-- \Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[14]~15_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~11_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \Shift|ll2[6]~7_combout\ & ( 
-- !\Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[14]~15_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~11_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\Shift|ll2[6]~7_combout\ & ( 
-- !\Shift|ll2[2]~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[14]~15_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[10]~11_combout\,
	datab => \Shift|ALT_INV_ll2[14]~15_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[6]~7_combout\,
	dataf => \Shift|ALT_INV_ll2[2]~3_combout\,
	combout => \Shift|ll4[14]~14_combout\);

-- Location: MLABCELL_X34_Y39_N24
\Mux49~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = ( \Shift|ll4[14]~14_combout\ & ( (\Mux60~0_combout\ & ((\Mux49~2_combout\) # (\Mux62~3_combout\))) ) ) # ( !\Shift|ll4[14]~14_combout\ & ( (!\Mux62~3_combout\ & (\Mux49~2_combout\ & \Mux60~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux62~3_combout\,
	datac => \ALT_INV_Mux49~2_combout\,
	datad => \ALT_INV_Mux60~0_combout\,
	dataf => \Shift|ALT_INV_ll4[14]~14_combout\,
	combout => \Mux49~3_combout\);

-- Location: MLABCELL_X34_Y39_N30
\Mux49~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = ( \Mux49~3_combout\ & ( ((\Mux62~2_combout\ & \Add|S\(14))) # (\Mux62~1_combout\) ) ) # ( !\Mux49~3_combout\ & ( (\Mux62~2_combout\ & ((!\Mux62~1_combout\ & ((\Add|S\(14)))) # (\Mux62~1_combout\ & (\Mux49~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux49~0_combout\,
	datad => \Add|ALT_INV_S\(14),
	dataf => \ALT_INV_Mux49~3_combout\,
	combout => \Mux49~4_combout\);

-- Location: LABCELL_X32_Y34_N16
\Mux48~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = ( \Shift|rl2[19]~52_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[23]~53_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[27]~54_combout\))) ) ) ) # ( !\Shift|rl2[19]~52_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[23]~53_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[27]~54_combout\))) ) ) ) # ( \Shift|rl2[19]~52_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[15]~58_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[19]~52_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|rl2[15]~58_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~53_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[27]~54_combout\,
	datad => \Shift|ALT_INV_rl2[15]~58_combout\,
	datae => \Shift|ALT_INV_rl2[19]~52_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux48~1_combout\);

-- Location: LABCELL_X32_Y34_N14
\Shift|rl4[31]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[31]~42_combout\ = ( \Shift|rl2[35]~45_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[39]~46_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[43]~47_combout\)) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|rl2[39]~46_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[43]~47_combout\)) ) ) ) # ( \Shift|rl2[35]~45_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[31]~55_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[35]~45_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[31]~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[43]~47_combout\,
	datab => \Shift|ALT_INV_rl2[39]~46_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[31]~55_combout\,
	datae => \Shift|ALT_INV_rl2[35]~45_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[31]~42_combout\);

-- Location: LABCELL_X32_Y34_N10
\Shift|rl4[47]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~41_combout\ = ( \Shift|rl2[55]~49_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[59]~50_combout\) ) ) ) # ( !\Shift|rl2[55]~49_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|rl2[59]~50_combout\) ) ) ) # ( 
-- \Shift|rl2[55]~49_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[47]~48_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[51]~51_combout\)) ) ) ) # ( !\Shift|rl2[55]~49_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[47]~48_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[51]~51_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[51]~51_combout\,
	datab => \Shift|ALT_INV_rl2[47]~48_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[59]~50_combout\,
	datae => \Shift|ALT_INV_rl2[55]~49_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[47]~41_combout\);

-- Location: MLABCELL_X34_Y34_N14
\Y_R[1]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~24_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|rl4[47]~41_combout\))) # (\B[4]~input_o\ & (\A[63]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & (((\Shift|rl4[47]~41_combout\)))) # (\B[4]~input_o\ & 
-- (\Shift|ra4[62]~4_combout\ & (\A[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[62]~4_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_rl4[47]~41_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[1]~24_combout\);

-- Location: MLABCELL_X34_Y34_N36
\Mux48~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Y_R[1]~24_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Y_R[1]~24_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|rl4[31]~42_combout\ ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\B[5]~input_o\ & ( \Mux48~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux48~1_combout\,
	datac => \Shift|ALT_INV_rl4[31]~42_combout\,
	datad => \ALT_INV_Y_R[1]~24_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux48~2_combout\);

-- Location: LABCELL_X40_Y39_N10
\Shift|ll2[15]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~16_combout\ = ( \A[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[13]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\A[12]~input_o\ 
-- & \B[1]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\A[14]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ll2[15]~16_combout\);

-- Location: LABCELL_X32_Y38_N18
\Shift|ll4[15]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~15_combout\ = ( \Shift|ll2[15]~16_combout\ & ( \Shift|ll2[7]~8_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[3]~4_combout\))) ) ) ) # ( !\Shift|ll2[15]~16_combout\ & ( 
-- \Shift|ll2[7]~8_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[3]~4_combout\)))) ) ) ) # ( \Shift|ll2[15]~16_combout\ & ( 
-- !\Shift|ll2[7]~8_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[3]~4_combout\)))) ) ) ) # ( !\Shift|ll2[15]~16_combout\ & ( 
-- !\Shift|ll2[7]~8_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[3]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[3]~4_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[11]~12_combout\,
	datae => \Shift|ALT_INV_ll2[15]~16_combout\,
	dataf => \Shift|ALT_INV_ll2[7]~8_combout\,
	combout => \Shift|ll4[15]~15_combout\);

-- Location: MLABCELL_X34_Y39_N12
\Mux48~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = ( \Shift|ll4[15]~15_combout\ & ( (\Mux60~0_combout\ & ((\Mux62~3_combout\) # (\Mux48~2_combout\))) ) ) # ( !\Shift|ll4[15]~15_combout\ & ( (\Mux60~0_combout\ & (\Mux48~2_combout\ & !\Mux62~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \ALT_INV_Mux48~2_combout\,
	datad => \ALT_INV_Mux62~3_combout\,
	dataf => \Shift|ALT_INV_ll4[15]~15_combout\,
	combout => \Mux48~3_combout\);

-- Location: MLABCELL_X34_Y39_N14
\Mux48~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \B[15]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[15]~input_o\)) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: MLABCELL_X34_Y39_N10
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \B[15]~input_o\ & ( !\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ (!\A[15]~input_o\)) ) ) # ( !\B[15]~input_o\ & ( !\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ (\A[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Add|S\(15));

-- Location: MLABCELL_X34_Y39_N28
\Mux48~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = ( \Add|S\(15) & ( (!\Mux62~1_combout\ & (\Mux62~2_combout\)) # (\Mux62~1_combout\ & (((\Mux62~2_combout\ & \Mux48~0_combout\)) # (\Mux48~3_combout\))) ) ) # ( !\Add|S\(15) & ( (\Mux62~1_combout\ & (((\Mux62~2_combout\ & 
-- \Mux48~0_combout\)) # (\Mux48~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001101000111010101110100011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~2_combout\,
	datab => \ALT_INV_Mux62~1_combout\,
	datac => \ALT_INV_Mux48~3_combout\,
	datad => \ALT_INV_Mux48~0_combout\,
	dataf => \Add|ALT_INV_S\(15),
	combout => \Mux48~4_combout\);

-- Location: LABCELL_X40_Y38_N8
\Mux43~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( !\Mux62~0_combout\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LABCELL_X32_Y37_N18
\Mux43~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (!\B[5]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LABCELL_X30_Y36_N36
\Mux43~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux43~0_combout\) # (\Mux43~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux43~4_combout\);

-- Location: LABCELL_X40_Y38_N34
\Mux43~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = ( !\FuncClass[1]~input_o\ & ( ((!\Mux43~1_combout\ & \Mux43~0_combout\)) # (\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111001000101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux43~5_combout\);

-- Location: LABCELL_X40_Y38_N36
\Mux47~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[16]~input_o\ & (!\LogicFN[0]~input_o\ & \B[16]~input_o\)) # (\A[16]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[16]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[16]~input_o\ $ (((!\A[16]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux47~2_combout\);

-- Location: LABCELL_X35_Y34_N18
\Y_R[1]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~25_combout\ = (\ShiftFN[0]~input_o\ & \A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~25_combout\);

-- Location: MLABCELL_X37_Y37_N24
\Y_R[1]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~26_combout\ = ( \Y_R[1]~25_combout\ & ( (\B[4]~input_o\) # (\Shift|rl4[48]~3_combout\) ) ) # ( !\Y_R[1]~25_combout\ & ( (\Shift|rl4[48]~3_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl4[48]~3_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Y_R[1]~25_combout\,
	combout => \Y_R[1]~26_combout\);

-- Location: MLABCELL_X34_Y34_N22
\Mux43~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( !\Mux62~0_combout\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Mux43~2_combout\);

-- Location: LABCELL_X32_Y38_N26
\Mux43~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux43~3_combout\);

-- Location: MLABCELL_X34_Y39_N32
\Add|S[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(16) = ( \AddnSub~input_o\ & ( !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (!\Add|C[16]~15_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (\Add|C[16]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \Add|ALT_INV_C[16]~15_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(16));

-- Location: LABCELL_X40_Y39_N14
\Shift|ll2[16]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~17_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ll2[16]~17_combout\);

-- Location: LABCELL_X35_Y38_N26
\Shift|ll4[16]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~16_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[4]~5_combout\ & ( (\Shift|ll2[8]~9_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[16]~17_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ll2[12]~13_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & \Shift|ll2[8]~9_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[4]~5_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[16]~17_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ll2[12]~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[12]~13_combout\,
	datac => \Shift|ALT_INV_ll2[16]~17_combout\,
	datad => \Shift|ALT_INV_ll2[8]~9_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[4]~5_combout\,
	combout => \Shift|ll4[16]~16_combout\);

-- Location: LABCELL_X30_Y36_N14
\Mux47~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \Shift|ll4[0]~0_combout\ & ( (!\Mux43~2_combout\ & ((!\Mux43~3_combout\ & (\Add|S\(16))) # (\Mux43~3_combout\ & ((\Shift|ll4[16]~16_combout\))))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\)) ) ) # ( !\Shift|ll4[0]~0_combout\ & ( 
-- (!\Mux43~2_combout\ & ((!\Mux43~3_combout\ & (\Add|S\(16))) # (\Mux43~3_combout\ & ((\Shift|ll4[16]~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Add|ALT_INV_S\(16),
	datad => \Shift|ALT_INV_ll4[16]~16_combout\,
	dataf => \Shift|ALT_INV_ll4[0]~0_combout\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X40_Y38_N32
\Mux47~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = ( \Mux47~0_combout\ & ( (!\Mux43~0_combout\ & ((!\Mux43~1_combout\) # ((\Y_R[1]~26_combout\)))) # (\Mux43~0_combout\ & (((\Shift|rl4[32]~2_combout\)))) ) ) # ( !\Mux47~0_combout\ & ( (!\Mux43~0_combout\ & (\Mux43~1_combout\ & 
-- (\Y_R[1]~26_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[32]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Y_R[1]~26_combout\,
	datad => \Shift|ALT_INV_rl4[32]~2_combout\,
	dataf => \ALT_INV_Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: LABCELL_X40_Y38_N16
\Mux47~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = ( \Mux47~1_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\ & (\Shift|rl4[16]~1_combout\))) # (\Mux43~4_combout\ & ((!\Mux43~5_combout\) # ((\Mux47~2_combout\)))) ) ) # ( !\Mux47~1_combout\ & ( (\Mux43~5_combout\ & 
-- ((!\Mux43~4_combout\ & (\Shift|rl4[16]~1_combout\)) # (\Mux43~4_combout\ & ((\Mux47~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \Shift|ALT_INV_rl4[16]~1_combout\,
	datad => \ALT_INV_Mux47~2_combout\,
	dataf => \ALT_INV_Mux47~1_combout\,
	combout => \Mux47~3_combout\);

-- Location: LABCELL_X30_Y36_N10
\Y_R[1]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~27_combout\ = ( \B[4]~input_o\ & ( (\A[63]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl4[49]~5_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[49]~5_combout\,
	datab => \ALT_INV_Y_R[1]~1_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~27_combout\);

-- Location: LABCELL_X35_Y41_N24
\Add|S[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(17) = ( \AddnSub~input_o\ & ( !\A[17]~input_o\ $ (!\Add|C[17]~16_combout\ $ (!\B[17]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[17]~input_o\ $ (!\Add|C[17]~16_combout\ $ (\B[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \Add|ALT_INV_C[17]~16_combout\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(17));

-- Location: LABCELL_X40_Y39_N36
\Shift|ll2[17]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~18_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[17]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\ & \A[17]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[15]~input_o\))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (((\A[17]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[15]~input_o\ & 
-- (!\B[0]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[17]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ll2[17]~18_combout\);

-- Location: MLABCELL_X37_Y39_N28
\Shift|ll4[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~17_combout\ = ( \Shift|ll2[9]~10_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[5]~6_combout\) ) ) ) # ( !\Shift|ll2[9]~10_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[5]~6_combout\) ) ) ) # ( 
-- \Shift|ll2[9]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[17]~18_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[13]~14_combout\))) ) ) ) # ( !\Shift|ll2[9]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[17]~18_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[13]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[17]~18_combout\,
	datac => \Shift|ALT_INV_ll2[13]~14_combout\,
	datad => \Shift|ALT_INV_ll2[5]~6_combout\,
	datae => \Shift|ALT_INV_ll2[9]~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[17]~17_combout\);

-- Location: LABCELL_X30_Y36_N12
\Mux46~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \Shift|ll4[17]~17_combout\ & ( (!\Mux43~2_combout\ & (((\Add|S\(17))) # (\Mux43~3_combout\))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\ & ((\Shift|ll4[1]~1_combout\)))) ) ) # ( !\Shift|ll4[17]~17_combout\ & ( (!\Mux43~3_combout\ & 
-- ((!\Mux43~2_combout\ & (\Add|S\(17))) # (\Mux43~2_combout\ & ((\Shift|ll4[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Add|ALT_INV_S\(17),
	datad => \Shift|ALT_INV_ll4[1]~1_combout\,
	dataf => \Shift|ALT_INV_ll4[17]~17_combout\,
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X30_Y36_N38
\Mux46~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( \Shift|rl4[33]~4_combout\ & ( ((!\Mux43~1_combout\ & ((\Mux46~0_combout\))) # (\Mux43~1_combout\ & (\Y_R[1]~27_combout\))) # (\Mux43~0_combout\) ) ) # ( !\Shift|rl4[33]~4_combout\ & ( (!\Mux43~0_combout\ & ((!\Mux43~1_combout\ & 
-- ((\Mux46~0_combout\))) # (\Mux43~1_combout\ & (\Y_R[1]~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Y_R[1]~27_combout\,
	datad => \ALT_INV_Mux46~0_combout\,
	dataf => \Shift|ALT_INV_rl4[33]~4_combout\,
	combout => \Mux46~1_combout\);

-- Location: MLABCELL_X34_Y40_N22
\Mux46~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = ( \A[17]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[17]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[17]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001001110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Mux46~2_combout\);

-- Location: MLABCELL_X34_Y40_N36
\Mux46~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = ( \Shift|rl4[17]~6_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\)) # (\Mux43~4_combout\ & ((!\Mux43~5_combout\ & (\Mux46~1_combout\)) # (\Mux43~5_combout\ & ((\Mux46~2_combout\))))) ) ) # ( !\Shift|rl4[17]~6_combout\ & ( 
-- (\Mux43~4_combout\ & ((!\Mux43~5_combout\ & (\Mux46~1_combout\)) # (\Mux43~5_combout\ & ((\Mux46~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \ALT_INV_Mux46~1_combout\,
	datad => \ALT_INV_Mux46~2_combout\,
	dataf => \Shift|ALT_INV_rl4[17]~6_combout\,
	combout => \Mux46~3_combout\);

-- Location: LABCELL_X32_Y40_N16
\Add|S[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(18) = !\AddnSub~input_o\ $ (!\Add|C[18]~17_combout\ $ (!\A[18]~input_o\ $ (!\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[18]~17_combout\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	combout => \Add|S\(18));

-- Location: LABCELL_X35_Y41_N6
\Shift|ll2[18]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~19_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (\B[0]~input_o\ & \A[15]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Shift|ll2[18]~19_combout\);

-- Location: LABCELL_X35_Y38_N28
\Shift|ll4[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~18_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[6]~7_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[18]~19_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ll2[14]~15_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (\B[2]~input_o\ & \Shift|ll2[6]~7_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[18]~19_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[14]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[14]~15_combout\,
	datac => \Shift|ALT_INV_ll2[6]~7_combout\,
	datad => \Shift|ALT_INV_ll2[18]~19_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[10]~11_combout\,
	combout => \Shift|ll4[18]~18_combout\);

-- Location: LABCELL_X32_Y35_N26
\Mux45~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \Shift|ll4[18]~18_combout\ & ( (!\Mux43~3_combout\ & ((!\Mux43~2_combout\ & ((\Add|S\(18)))) # (\Mux43~2_combout\ & (\Shift|ll4[2]~2_combout\)))) # (\Mux43~3_combout\ & (!\Mux43~2_combout\)) ) ) # ( !\Shift|ll4[18]~18_combout\ & ( 
-- (!\Mux43~3_combout\ & ((!\Mux43~2_combout\ & ((\Add|S\(18)))) # (\Mux43~2_combout\ & (\Shift|ll4[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~3_combout\,
	datab => \ALT_INV_Mux43~2_combout\,
	datac => \Shift|ALT_INV_ll4[2]~2_combout\,
	datad => \Add|ALT_INV_S\(18),
	dataf => \Shift|ALT_INV_ll4[18]~18_combout\,
	combout => \Mux45~0_combout\);

-- Location: MLABCELL_X31_Y36_N24
\Y_R[1]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~28_combout\ = ( \A[63]~input_o\ & ( (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Shift|rl4[50]~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~3_combout\))))) # (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Shift|rl4[50]~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101000100010010111110010001001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_rl4[50]~9_combout\,
	datac => \ALT_INV_Y_R[1]~3_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~28_combout\);

-- Location: LABCELL_X32_Y36_N34
\Mux45~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \Y_R[1]~28_combout\ & ( (!\Mux43~0_combout\ & (((\Mux45~0_combout\)) # (\Mux43~1_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[34]~7_combout\)))) ) ) # ( !\Y_R[1]~28_combout\ & ( (!\Mux43~0_combout\ & (!\Mux43~1_combout\ & 
-- (\Mux45~0_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[34]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~0_combout\,
	datab => \ALT_INV_Mux43~1_combout\,
	datac => \ALT_INV_Mux45~0_combout\,
	datad => \Shift|ALT_INV_rl4[34]~7_combout\,
	dataf => \ALT_INV_Y_R[1]~28_combout\,
	combout => \Mux45~1_combout\);

-- Location: LABCELL_X35_Y41_N28
\Mux45~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (!\B[18]~input_o\ & (\A[18]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[18]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011101011000001101110101100000110111010110000011011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	combout => \Mux45~2_combout\);

-- Location: MLABCELL_X34_Y40_N38
\Mux45~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = ( \Shift|rl4[18]~10_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\)) # (\Mux43~4_combout\ & ((!\Mux43~5_combout\ & (\Mux45~1_combout\)) # (\Mux43~5_combout\ & ((\Mux45~2_combout\))))) ) ) # ( !\Shift|rl4[18]~10_combout\ & ( 
-- (\Mux43~4_combout\ & ((!\Mux43~5_combout\ & (\Mux45~1_combout\)) # (\Mux43~5_combout\ & ((\Mux45~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \ALT_INV_Mux45~1_combout\,
	datad => \ALT_INV_Mux45~2_combout\,
	dataf => \Shift|ALT_INV_rl4[18]~10_combout\,
	combout => \Mux45~3_combout\);

-- Location: LABCELL_X35_Y41_N30
\Mux44~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (!\B[19]~input_o\ & (\A[19]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[19]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001101011000011100110101100001110011010110000111001101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	combout => \Mux44~2_combout\);

-- Location: LABCELL_X35_Y41_N10
\Add|S[19]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(19) = !\A[19]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[19]~input_o\ $ (!\Add|C[19]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \Add|ALT_INV_C[19]~18_combout\,
	combout => \Add|S\(19));

-- Location: LABCELL_X35_Y41_N32
\Shift|ll2[19]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~20_combout\ = ( \B[0]~input_o\ & ( \A[16]~input_o\ & ( (\B[1]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[16]~input_o\ & ( (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[16]~input_o\ & ( (\A[18]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & ((\A[19]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Shift|ll2[19]~20_combout\);

-- Location: LABCELL_X32_Y38_N2
\Shift|ll4[19]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~19_combout\ = ( \Shift|ll2[7]~8_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ll2[15]~16_combout\) ) ) ) # ( !\Shift|ll2[7]~8_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[15]~16_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \Shift|ll2[7]~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[19]~20_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) ) ) ) # ( !\Shift|ll2[7]~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[19]~20_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[11]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~16_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[19]~20_combout\,
	datad => \Shift|ALT_INV_ll2[11]~12_combout\,
	datae => \Shift|ALT_INV_ll2[7]~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[19]~19_combout\);

-- Location: LABCELL_X32_Y38_N4
\Mux44~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Shift|ll4[19]~19_combout\ & ( (!\Mux43~2_combout\ & (((\Add|S\(19))) # (\Mux43~3_combout\))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\ & (\Shift|ll4[3]~3_combout\))) ) ) # ( !\Shift|ll4[19]~19_combout\ & ( (!\Mux43~3_combout\ & 
-- ((!\Mux43~2_combout\ & ((\Add|S\(19)))) # (\Mux43~2_combout\ & (\Shift|ll4[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Shift|ALT_INV_ll4[3]~3_combout\,
	datad => \Add|ALT_INV_S\(19),
	dataf => \Shift|ALT_INV_ll4[19]~19_combout\,
	combout => \Mux44~0_combout\);

-- Location: LABCELL_X32_Y35_N28
\Y_R[1]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~29_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ra4[51]~0_combout\)) # (\B[4]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|rl4[51]~43_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[51]~0_combout\,
	datab => \Shift|ALT_INV_rl4[51]~43_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[1]~29_combout\);

-- Location: LABCELL_X32_Y35_N4
\Mux44~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( \Y_R[1]~29_combout\ & ( (!\Mux43~0_combout\ & (((\Mux44~0_combout\) # (\Mux43~1_combout\)))) # (\Mux43~0_combout\ & (\Shift|rl4[35]~11_combout\)) ) ) # ( !\Y_R[1]~29_combout\ & ( (!\Mux43~0_combout\ & (((!\Mux43~1_combout\ & 
-- \Mux44~0_combout\)))) # (\Mux43~0_combout\ & (\Shift|rl4[35]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~0_combout\,
	datab => \Shift|ALT_INV_rl4[35]~11_combout\,
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Y_R[1]~29_combout\,
	combout => \Mux44~1_combout\);

-- Location: MLABCELL_X31_Y36_N12
\Mux44~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = ( \Mux44~1_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\ & ((\Shift|rl4[19]~12_combout\)))) # (\Mux43~4_combout\ & ((!\Mux43~5_combout\) # ((\Mux44~2_combout\)))) ) ) # ( !\Mux44~1_combout\ & ( (\Mux43~5_combout\ & 
-- ((!\Mux43~4_combout\ & ((\Shift|rl4[19]~12_combout\))) # (\Mux43~4_combout\ & (\Mux44~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \ALT_INV_Mux44~2_combout\,
	datad => \Shift|ALT_INV_rl4[19]~12_combout\,
	dataf => \ALT_INV_Mux44~1_combout\,
	combout => \Mux44~3_combout\);

-- Location: LABCELL_X35_Y41_N36
\Mux43~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~8_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[20]~input_o\ & (\A[20]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[20]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[20]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[20]~input_o\ $ (((!\A[20]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux43~8_combout\);

-- Location: LABCELL_X38_Y41_N0
\Shift|ll2[20]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~21_combout\ = ( \B[1]~input_o\ & ( \A[20]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[20]~input_o\ & ( (!\B[0]~input_o\) # (\A[19]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[20]~input_o\ & ( (\B[0]~input_o\ & \A[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Shift|ll2[20]~21_combout\);

-- Location: LABCELL_X35_Y38_N34
\Shift|ll4[20]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[20]~20_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[16]~17_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[12]~13_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[8]~9_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[16]~17_combout\ & ( 
-- (\B[2]~input_o\) # (\Shift|ll2[20]~21_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[16]~17_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[12]~13_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[8]~9_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ll2[16]~17_combout\ & ( (\Shift|ll2[20]~21_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[8]~9_combout\,
	datab => \Shift|ALT_INV_ll2[12]~13_combout\,
	datac => \Shift|ALT_INV_ll2[20]~21_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[16]~17_combout\,
	combout => \Shift|ll4[20]~20_combout\);

-- Location: LABCELL_X35_Y41_N14
\Add|S[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(20) = ( \B[20]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[20]~input_o\ $ (!\Add|C[20]~19_combout\)) ) ) # ( !\B[20]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[20]~input_o\ $ (\Add|C[20]~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \Add|ALT_INV_C[20]~19_combout\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \Add|S\(20));

-- Location: MLABCELL_X31_Y37_N28
\Mux43~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = ( \Add|S\(20) & ( (!\Mux43~3_combout\ & (((!\Mux43~2_combout\)) # (\Shift|ll4[4]~4_combout\))) # (\Mux43~3_combout\ & (((\Shift|ll4[20]~20_combout\ & !\Mux43~2_combout\)))) ) ) # ( !\Add|S\(20) & ( (!\Mux43~3_combout\ & 
-- (\Shift|ll4[4]~4_combout\ & ((\Mux43~2_combout\)))) # (\Mux43~3_combout\ & (((\Shift|ll4[20]~20_combout\ & !\Mux43~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~4_combout\,
	datab => \Shift|ALT_INV_ll4[20]~20_combout\,
	datac => \ALT_INV_Mux43~3_combout\,
	datad => \ALT_INV_Mux43~2_combout\,
	dataf => \Add|ALT_INV_S\(20),
	combout => \Mux43~6_combout\);

-- Location: MLABCELL_X31_Y37_N6
\Y_R[1]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~30_combout\ = ( \A[63]~input_o\ & ( (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_R[1]~6_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ra4[52]~1_combout\)))) # (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Y_R[1]~6_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ra4[52]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000110000010111110011000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[52]~1_combout\,
	datab => \ALT_INV_Y_R[1]~6_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~30_combout\);

-- Location: MLABCELL_X31_Y37_N32
\Mux43~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~7_combout\ = ( \Y_R[1]~30_combout\ & ( (!\Mux43~0_combout\ & (((\Mux43~6_combout\)) # (\Mux43~1_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[36]~13_combout\)))) ) ) # ( !\Y_R[1]~30_combout\ & ( (!\Mux43~0_combout\ & (!\Mux43~1_combout\ & 
-- ((\Mux43~6_combout\)))) # (\Mux43~0_combout\ & (((\Shift|rl4[36]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011000010100011001101011111001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \Shift|ALT_INV_rl4[36]~13_combout\,
	datac => \ALT_INV_Mux43~6_combout\,
	datad => \ALT_INV_Mux43~0_combout\,
	dataf => \ALT_INV_Y_R[1]~30_combout\,
	combout => \Mux43~7_combout\);

-- Location: MLABCELL_X34_Y35_N26
\Mux43~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~9_combout\ = ( \Mux43~4_combout\ & ( \Mux43~5_combout\ & ( \Mux43~8_combout\ ) ) ) # ( !\Mux43~4_combout\ & ( \Mux43~5_combout\ & ( \Shift|rl4[20]~14_combout\ ) ) ) # ( \Mux43~4_combout\ & ( !\Mux43~5_combout\ & ( \Mux43~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~8_combout\,
	datab => \Shift|ALT_INV_rl4[20]~14_combout\,
	datad => \ALT_INV_Mux43~7_combout\,
	datae => \ALT_INV_Mux43~4_combout\,
	dataf => \ALT_INV_Mux43~5_combout\,
	combout => \Mux43~9_combout\);

-- Location: LABCELL_X32_Y37_N6
\Y_R[1]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~31_combout\ = ( \B[4]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Y_R[1]~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ra4[53]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Y_R[1]~8_combout\,
	datac => \Shift|ALT_INV_ra4[53]~10_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~31_combout\);

-- Location: LABCELL_X38_Y41_N4
\Shift|ll2[21]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~22_combout\ = ( \B[0]~input_o\ & ( \A[18]~input_o\ & ( (\B[1]~input_o\) # (\A[20]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[18]~input_o\ & ( (!\B[1]~input_o\ & (\A[21]~input_o\)) # (\B[1]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[18]~input_o\ & ( (\A[20]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[1]~input_o\ & (\A[21]~input_o\)) # (\B[1]~input_o\ & ((\A[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|ll2[21]~22_combout\);

-- Location: MLABCELL_X37_Y39_N14
\Shift|ll4[21]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[21]~21_combout\ = ( \Shift|ll2[9]~10_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[13]~14_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[9]~10_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[13]~14_combout\) ) ) ) # ( 
-- \Shift|ll2[9]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[21]~22_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[17]~18_combout\))) ) ) ) # ( !\Shift|ll2[9]~10_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[21]~22_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[17]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[21]~22_combout\,
	datac => \Shift|ALT_INV_ll2[17]~18_combout\,
	datad => \Shift|ALT_INV_ll2[13]~14_combout\,
	datae => \Shift|ALT_INV_ll2[9]~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[21]~21_combout\);

-- Location: LABCELL_X32_Y40_N4
\Add|S[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(21) = ( \B[21]~input_o\ & ( !\Add|C[21]~20_combout\ $ (!\A[21]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[21]~input_o\ & ( !\Add|C[21]~20_combout\ $ (!\A[21]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[21]~20_combout\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Add|S\(21));

-- Location: LABCELL_X32_Y35_N24
\Mux42~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \Shift|ll4[5]~5_combout\ & ( (!\Mux43~3_combout\ & (((\Add|S\(21))) # (\Mux43~2_combout\))) # (\Mux43~3_combout\ & (!\Mux43~2_combout\ & (\Shift|ll4[21]~21_combout\))) ) ) # ( !\Shift|ll4[5]~5_combout\ & ( (!\Mux43~2_combout\ & 
-- ((!\Mux43~3_combout\ & ((\Add|S\(21)))) # (\Mux43~3_combout\ & (\Shift|ll4[21]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~3_combout\,
	datab => \ALT_INV_Mux43~2_combout\,
	datac => \Shift|ALT_INV_ll4[21]~21_combout\,
	datad => \Add|ALT_INV_S\(21),
	dataf => \Shift|ALT_INV_ll4[5]~5_combout\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X32_Y35_N10
\Mux42~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \Mux43~0_combout\ & ( \Mux42~0_combout\ & ( \Shift|rl4[37]~15_combout\ ) ) ) # ( !\Mux43~0_combout\ & ( \Mux42~0_combout\ & ( (!\Mux43~1_combout\) # (\Y_R[1]~31_combout\) ) ) ) # ( \Mux43~0_combout\ & ( !\Mux42~0_combout\ & ( 
-- \Shift|rl4[37]~15_combout\ ) ) ) # ( !\Mux43~0_combout\ & ( !\Mux42~0_combout\ & ( (\Mux43~1_combout\ & \Y_R[1]~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110011001110101010111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \Shift|ALT_INV_rl4[37]~15_combout\,
	datad => \ALT_INV_Y_R[1]~31_combout\,
	datae => \ALT_INV_Mux43~0_combout\,
	dataf => \ALT_INV_Mux42~0_combout\,
	combout => \Mux42~1_combout\);

-- Location: LABCELL_X32_Y40_N6
\Mux42~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \B[21]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[21]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[21]~input_o\ & ( (\A[21]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Mux42~2_combout\);

-- Location: LABCELL_X32_Y40_N10
\Mux42~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = ( \Mux42~2_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\ & (\Shift|rl4[21]~16_combout\))) # (\Mux43~4_combout\ & (((\Mux42~1_combout\)) # (\Mux43~5_combout\))) ) ) # ( !\Mux42~2_combout\ & ( (!\Mux43~4_combout\ & 
-- (\Mux43~5_combout\ & (\Shift|rl4[21]~16_combout\))) # (\Mux43~4_combout\ & (!\Mux43~5_combout\ & ((\Mux42~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \Shift|ALT_INV_rl4[21]~16_combout\,
	datad => \ALT_INV_Mux42~1_combout\,
	dataf => \ALT_INV_Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LABCELL_X32_Y40_N20
\Mux41~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[22]~input_o\ & (!\LogicFN[0]~input_o\ & \B[22]~input_o\)) # (\A[22]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[22]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[22]~input_o\ $ (((!\A[22]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux41~2_combout\);

-- Location: LABCELL_X35_Y37_N4
\Y_R[1]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~32_combout\ = ( \Shift|ra4[54]~6_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & ((\Shift|rl4[54]~18_combout\)))) # (\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\) # ((\A[63]~input_o\)))) ) ) # ( !\Shift|ra4[54]~6_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & ((\Shift|rl4[54]~18_combout\)))) # (\ShiftFN[0]~input_o\ & (\B[4]~input_o\ & (\A[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100101000101110011010100010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \Shift|ALT_INV_rl4[54]~18_combout\,
	dataf => \Shift|ALT_INV_ra4[54]~6_combout\,
	combout => \Y_R[1]~32_combout\);

-- Location: LABCELL_X38_Y41_N8
\Shift|ll2[22]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~23_combout\ = ( \A[22]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[21]~input_o\)) # (\B[1]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( !\A[22]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[21]~input_o\)) # (\B[1]~input_o\ 
-- & ((\A[19]~input_o\))) ) ) ) # ( \A[22]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[20]~input_o\) ) ) ) # ( !\A[22]~input_o\ & ( !\B[0]~input_o\ & ( (\A[20]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[22]~23_combout\);

-- Location: LABCELL_X35_Y38_N38
\Shift|ll4[22]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[22]~22_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (\B[2]~input_o\) # (\Shift|ll2[14]~15_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[22]~23_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|ll2[18]~19_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (\Shift|ll2[14]~15_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[22]~23_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[18]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[22]~23_combout\,
	datab => \Shift|ALT_INV_ll2[14]~15_combout\,
	datac => \Shift|ALT_INV_ll2[18]~19_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[10]~11_combout\,
	combout => \Shift|ll4[22]~22_combout\);

-- Location: LABCELL_X32_Y40_N26
\Add|S[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(22) = ( \B[22]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[22]~input_o\ $ (!\Add|C[22]~21_combout\)) ) ) # ( !\B[22]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[22]~input_o\ $ (\Add|C[22]~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datad => \Add|ALT_INV_C[22]~21_combout\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \Add|S\(22));

-- Location: LABCELL_X35_Y37_N28
\Mux41~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Mux43~2_combout\ & ( (\Shift|ll4[6]~6_combout\ & !\Mux43~3_combout\) ) ) # ( !\Mux43~2_combout\ & ( (!\Mux43~3_combout\ & ((\Add|S\(22)))) # (\Mux43~3_combout\ & (\Shift|ll4[22]~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[6]~6_combout\,
	datab => \Shift|ALT_INV_ll4[22]~22_combout\,
	datac => \Add|ALT_INV_S\(22),
	datad => \ALT_INV_Mux43~3_combout\,
	dataf => \ALT_INV_Mux43~2_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X35_Y37_N14
\Mux41~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \Mux41~0_combout\ & ( (!\Mux43~0_combout\ & ((!\Mux43~1_combout\) # ((\Y_R[1]~32_combout\)))) # (\Mux43~0_combout\ & (((\Shift|rl4[38]~17_combout\)))) ) ) # ( !\Mux41~0_combout\ & ( (!\Mux43~0_combout\ & (\Mux43~1_combout\ & 
-- ((\Y_R[1]~32_combout\)))) # (\Mux43~0_combout\ & (((\Shift|rl4[38]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \Shift|ALT_INV_rl4[38]~17_combout\,
	datad => \ALT_INV_Y_R[1]~32_combout\,
	dataf => \ALT_INV_Mux41~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: LABCELL_X38_Y40_N12
\Mux41~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = ( \Shift|rl4[22]~19_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\ & ((\Mux41~1_combout\)))) # (\Mux43~5_combout\ & ((!\Mux43~4_combout\) # ((\Mux41~2_combout\)))) ) ) # ( !\Shift|rl4[22]~19_combout\ & ( (\Mux43~4_combout\ & 
-- ((!\Mux43~5_combout\ & ((\Mux41~1_combout\))) # (\Mux43~5_combout\ & (\Mux41~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \ALT_INV_Mux41~2_combout\,
	datad => \ALT_INV_Mux41~1_combout\,
	dataf => \Shift|ALT_INV_rl4[22]~19_combout\,
	combout => \Mux41~3_combout\);

-- Location: LABCELL_X32_Y40_N28
\Add|S[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(23) = ( \B[23]~input_o\ & ( !\Add|C[23]~22_combout\ $ (!\A[23]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[23]~input_o\ & ( !\Add|C[23]~22_combout\ $ (!\A[23]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[23]~22_combout\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \Add|S\(23));

-- Location: LABCELL_X38_Y41_N32
\Shift|ll2[23]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~24_combout\ = ( \A[23]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( !\A[23]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[22]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( \A[23]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( !\B[0]~input_o\ & ( (\A[21]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[23]~24_combout\);

-- Location: LABCELL_X32_Y38_N10
\Shift|ll4[23]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[23]~23_combout\ = ( \Shift|ll2[19]~20_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[11]~12_combout\) ) ) ) # ( !\Shift|ll2[19]~20_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ll2[11]~12_combout\) ) ) ) # ( 
-- \Shift|ll2[19]~20_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[23]~24_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[15]~16_combout\)) ) ) ) # ( !\Shift|ll2[19]~20_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[23]~24_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[15]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~16_combout\,
	datab => \Shift|ALT_INV_ll2[23]~24_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[11]~12_combout\,
	datae => \Shift|ALT_INV_ll2[19]~20_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[23]~23_combout\);

-- Location: LABCELL_X32_Y36_N24
\Mux40~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Mux43~2_combout\ & ( (\Shift|ll4[7]~7_combout\ & !\Mux43~3_combout\) ) ) # ( !\Mux43~2_combout\ & ( (!\Mux43~3_combout\ & (\Add|S\(23))) # (\Mux43~3_combout\ & ((\Shift|ll4[23]~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[7]~7_combout\,
	datab => \Add|ALT_INV_S\(23),
	datac => \ALT_INV_Mux43~3_combout\,
	datad => \Shift|ALT_INV_ll4[23]~23_combout\,
	dataf => \ALT_INV_Mux43~2_combout\,
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X37_Y34_N24
\Y_R[1]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~33_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[4]~input_o\ & ( \A[63]~input_o\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[4]~input_o\ & ( ((\B[3]~input_o\ & \A[63]~input_o\)) # (\Shift|rl4[55]~21_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\B[4]~input_o\ & ( ((\B[3]~input_o\ & (\Shift|ra3[62]~2_combout\ & \A[63]~input_o\))) # (\Shift|rl4[55]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ra3[62]~2_combout\,
	datac => \Shift|ALT_INV_rl4[55]~21_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~33_combout\);

-- Location: LABCELL_X32_Y36_N32
\Mux40~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \Y_R[1]~33_combout\ & ( (!\Mux43~0_combout\ & (((\Mux40~0_combout\)) # (\Mux43~1_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[39]~20_combout\)))) ) ) # ( !\Y_R[1]~33_combout\ & ( (!\Mux43~0_combout\ & (!\Mux43~1_combout\ & 
-- (\Mux40~0_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[39]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~0_combout\,
	datab => \ALT_INV_Mux43~1_combout\,
	datac => \ALT_INV_Mux40~0_combout\,
	datad => \Shift|ALT_INV_rl4[39]~20_combout\,
	dataf => \ALT_INV_Y_R[1]~33_combout\,
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X32_Y40_N2
\Mux40~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[23]~input_o\ & (\A[23]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[23]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[23]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[23]~input_o\ $ (((!\A[23]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux40~2_combout\);

-- Location: LABCELL_X32_Y36_N36
\Mux40~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = ( \Shift|rl4[23]~22_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\ & (\Mux40~1_combout\))) # (\Mux43~5_combout\ & ((!\Mux43~4_combout\) # ((\Mux40~2_combout\)))) ) ) # ( !\Shift|rl4[23]~22_combout\ & ( (\Mux43~4_combout\ & 
-- ((!\Mux43~5_combout\ & (\Mux40~1_combout\)) # (\Mux43~5_combout\ & ((\Mux40~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \ALT_INV_Mux40~1_combout\,
	datad => \ALT_INV_Mux40~2_combout\,
	dataf => \Shift|ALT_INV_rl4[23]~22_combout\,
	combout => \Mux40~3_combout\);

-- Location: LABCELL_X32_Y40_N34
\Mux39~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[24]~input_o\ & (\B[24]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[24]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[24]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[24]~input_o\ $ (((!\A[24]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: LABCELL_X32_Y40_N14
\Add|S[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(24) = ( \Add|C[24]~23_combout\ & ( !\AddnSub~input_o\ $ (!\A[24]~input_o\ $ (!\B[24]~input_o\)) ) ) # ( !\Add|C[24]~23_combout\ & ( !\AddnSub~input_o\ $ (!\A[24]~input_o\ $ (\B[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \Add|ALT_INV_C[24]~23_combout\,
	combout => \Add|S\(24));

-- Location: LABCELL_X38_Y41_N36
\Shift|ll2[24]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~25_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[21]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[23]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[22]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[24]~25_combout\);

-- Location: LABCELL_X38_Y37_N20
\Shift|ll4[24]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[24]~24_combout\ = ( \Shift|ll2[20]~21_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[16]~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[12]~13_combout\))) ) ) ) # ( !\Shift|ll2[20]~21_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[16]~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[12]~13_combout\))) ) ) ) # ( \Shift|ll2[20]~21_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[24]~25_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[20]~21_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[24]~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[24]~25_combout\,
	datac => \Shift|ALT_INV_ll2[16]~17_combout\,
	datad => \Shift|ALT_INV_ll2[12]~13_combout\,
	datae => \Shift|ALT_INV_ll2[20]~21_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[24]~24_combout\);

-- Location: MLABCELL_X39_Y37_N12
\Mux39~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \Shift|ll4[24]~24_combout\ & ( (!\Mux43~2_combout\ & (((\Add|S\(24))) # (\Mux43~3_combout\))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\ & (\Shift|ll4[8]~8_combout\))) ) ) # ( !\Shift|ll4[24]~24_combout\ & ( (!\Mux43~3_combout\ & 
-- ((!\Mux43~2_combout\ & ((\Add|S\(24)))) # (\Mux43~2_combout\ & (\Shift|ll4[8]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Shift|ALT_INV_ll4[8]~8_combout\,
	datad => \Add|ALT_INV_S\(24),
	dataf => \Shift|ALT_INV_ll4[24]~24_combout\,
	combout => \Mux39~0_combout\);

-- Location: MLABCELL_X39_Y37_N30
\Y_R[1]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~34_combout\ = ( \B[3]~input_o\ & ( (!\A[63]~input_o\ & (!\B[4]~input_o\ & ((\Shift|rl4[56]~24_combout\)))) # (\A[63]~input_o\ & (((!\B[4]~input_o\ & \Shift|rl4[56]~24_combout\)) # (\ShiftFN[0]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( 
-- (!\B[4]~input_o\ & (((\Shift|rl4[56]~24_combout\)))) # (\B[4]~input_o\ & (\A[63]~input_o\ & (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_rl4[56]~24_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R[1]~34_combout\);

-- Location: MLABCELL_X39_Y37_N16
\Mux39~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \Shift|rl4[40]~23_combout\ & ( ((!\Mux43~1_combout\ & (\Mux39~0_combout\)) # (\Mux43~1_combout\ & ((\Y_R[1]~34_combout\)))) # (\Mux43~0_combout\) ) ) # ( !\Shift|rl4[40]~23_combout\ & ( (!\Mux43~0_combout\ & ((!\Mux43~1_combout\ & 
-- (\Mux39~0_combout\)) # (\Mux43~1_combout\ & ((\Y_R[1]~34_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_Y_R[1]~34_combout\,
	dataf => \Shift|ALT_INV_rl4[40]~23_combout\,
	combout => \Mux39~1_combout\);

-- Location: LABCELL_X32_Y40_N8
\Mux39~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = ( \Mux39~1_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\ & (\Shift|rl4[24]~25_combout\))) # (\Mux43~4_combout\ & ((!\Mux43~5_combout\) # ((\Mux39~2_combout\)))) ) ) # ( !\Mux39~1_combout\ & ( (\Mux43~5_combout\ & 
-- ((!\Mux43~4_combout\ & (\Shift|rl4[24]~25_combout\)) # (\Mux43~4_combout\ & ((\Mux39~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \Shift|ALT_INV_rl4[24]~25_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	dataf => \ALT_INV_Mux39~1_combout\,
	combout => \Mux39~3_combout\);

-- Location: LABCELL_X32_Y41_N22
\Shift|ll2[25]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~26_combout\ = ( \B[0]~input_o\ & ( \A[22]~input_o\ & ( (\A[24]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[22]~input_o\ & ( (!\B[1]~input_o\ & ((\A[25]~input_o\))) # (\B[1]~input_o\ & (\A[23]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[1]~input_o\ & \A[24]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[1]~input_o\ & ((\A[25]~input_o\))) # (\B[1]~input_o\ & (\A[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Shift|ll2[25]~26_combout\);

-- Location: MLABCELL_X37_Y39_N36
\Shift|ll4[25]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[25]~25_combout\ = ( \Shift|ll2[17]~18_combout\ & ( \Shift|ll2[25]~26_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ll2[21]~22_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[13]~14_combout\))) ) ) ) # ( !\Shift|ll2[17]~18_combout\ & 
-- ( \Shift|ll2[25]~26_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[21]~22_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[13]~14_combout\)))) ) ) ) # ( \Shift|ll2[17]~18_combout\ & ( 
-- !\Shift|ll2[25]~26_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[21]~22_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[13]~14_combout\)))) ) ) ) # ( !\Shift|ll2[17]~18_combout\ & ( 
-- !\Shift|ll2[25]~26_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[21]~22_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[13]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[13]~14_combout\,
	datab => \Shift|ALT_INV_ll2[21]~22_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[17]~18_combout\,
	dataf => \Shift|ALT_INV_ll2[25]~26_combout\,
	combout => \Shift|ll4[25]~25_combout\);

-- Location: LABCELL_X32_Y40_N32
\Add|S[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(25) = ( \Add|C[25]~24_combout\ & ( !\B[25]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[25]~input_o\)) ) ) # ( !\Add|C[25]~24_combout\ & ( !\B[25]~input_o\ $ (!\AddnSub~input_o\ $ (\A[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \Add|ALT_INV_C[25]~24_combout\,
	combout => \Add|S\(25));

-- Location: LABCELL_X32_Y38_N6
\Mux38~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Add|S\(25) & ( (!\Mux43~2_combout\ & ((!\Mux43~3_combout\) # ((\Shift|ll4[25]~25_combout\)))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\ & (\Shift|ll4[9]~9_combout\))) ) ) # ( !\Add|S\(25) & ( (!\Mux43~2_combout\ & 
-- (\Mux43~3_combout\ & ((\Shift|ll4[25]~25_combout\)))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\ & (\Shift|ll4[9]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Shift|ALT_INV_ll4[9]~9_combout\,
	datad => \Shift|ALT_INV_ll4[25]~25_combout\,
	dataf => \Add|ALT_INV_S\(25),
	combout => \Mux38~0_combout\);

-- Location: MLABCELL_X31_Y35_N34
\Y_R[1]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~35_combout\ = ( \A[63]~input_o\ & ( (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[57]~27_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~14_combout\)))) # (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Shift|rl4[57]~27_combout\))) # (\ShiftFN[0]~input_o\ & (\Y_R[1]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000110000010111110011000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~14_combout\,
	datab => \Shift|ALT_INV_rl4[57]~27_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Y_R[1]~35_combout\);

-- Location: MLABCELL_X31_Y35_N4
\Mux38~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \Mux43~1_combout\ & ( (!\Mux43~0_combout\ & ((\Y_R[1]~35_combout\))) # (\Mux43~0_combout\ & (\Shift|rl4[41]~26_combout\)) ) ) # ( !\Mux43~1_combout\ & ( (!\Mux43~0_combout\ & (\Mux38~0_combout\)) # (\Mux43~0_combout\ & 
-- ((\Shift|rl4[41]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~0_combout\,
	datab => \ALT_INV_Mux38~0_combout\,
	datac => \Shift|ALT_INV_rl4[41]~26_combout\,
	datad => \ALT_INV_Y_R[1]~35_combout\,
	dataf => \ALT_INV_Mux43~1_combout\,
	combout => \Mux38~1_combout\);

-- Location: MLABCELL_X31_Y36_N38
\Mux38~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \A[25]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[25]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[25]~input_o\))) ) ) # ( !\A[25]~input_o\ & ( (\B[25]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux38~2_combout\);

-- Location: MLABCELL_X31_Y36_N14
\Mux38~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = ( \Mux38~2_combout\ & ( (!\Mux43~4_combout\ & (\Mux43~5_combout\ & ((\Shift|rl4[25]~28_combout\)))) # (\Mux43~4_combout\ & (((\Mux38~1_combout\)) # (\Mux43~5_combout\))) ) ) # ( !\Mux38~2_combout\ & ( (!\Mux43~4_combout\ & 
-- (\Mux43~5_combout\ & ((\Shift|rl4[25]~28_combout\)))) # (\Mux43~4_combout\ & (!\Mux43~5_combout\ & (\Mux38~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~4_combout\,
	datab => \ALT_INV_Mux43~5_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \Shift|ALT_INV_rl4[25]~28_combout\,
	dataf => \ALT_INV_Mux38~2_combout\,
	combout => \Mux38~3_combout\);

-- Location: MLABCELL_X34_Y39_N26
\Mux37~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \A[26]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[26]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[26]~input_o\))) ) ) # ( !\A[26]~input_o\ & ( (\B[26]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101001011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: LABCELL_X32_Y41_N26
\Shift|ll2[26]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~27_combout\ = ( \B[0]~input_o\ & ( \A[23]~input_o\ & ( (\A[25]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[24]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & \A[25]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|ll2[26]~27_combout\);

-- Location: LABCELL_X35_Y35_N22
\Shift|ll4[26]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[26]~26_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[14]~15_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[18]~19_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[22]~23_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[26]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[22]~23_combout\,
	datab => \Shift|ALT_INV_ll2[18]~19_combout\,
	datac => \Shift|ALT_INV_ll2[14]~15_combout\,
	datad => \Shift|ALT_INV_ll2[26]~27_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[26]~26_combout\);

-- Location: LABCELL_X27_Y40_N0
\Add|S[26]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(26) = ( \AddnSub~input_o\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (!\Add|C[26]~25_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (\Add|C[26]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \Add|ALT_INV_C[26]~25_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(26));

-- Location: MLABCELL_X39_Y37_N14
\Mux37~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Shift|ll4[10]~10_combout\ & ( (!\Mux43~2_combout\ & ((!\Mux43~3_combout\ & ((\Add|S\(26)))) # (\Mux43~3_combout\ & (\Shift|ll4[26]~26_combout\)))) # (\Mux43~2_combout\ & (!\Mux43~3_combout\)) ) ) # ( !\Shift|ll4[10]~10_combout\ & ( 
-- (!\Mux43~2_combout\ & ((!\Mux43~3_combout\ & ((\Add|S\(26)))) # (\Mux43~3_combout\ & (\Shift|ll4[26]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~2_combout\,
	datab => \ALT_INV_Mux43~3_combout\,
	datac => \Shift|ALT_INV_ll4[26]~26_combout\,
	datad => \Add|ALT_INV_S\(26),
	dataf => \Shift|ALT_INV_ll4[10]~10_combout\,
	combout => \Mux37~0_combout\);

-- Location: MLABCELL_X39_Y37_N28
\Y_R[1]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~36_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Y_R[1]~16_combout\))) # (\B[4]~input_o\ & (\A[63]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & \Shift|rl4[58]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Y_R[1]~16_combout\,
	datad => \Shift|ALT_INV_rl4[58]~30_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[1]~36_combout\);

-- Location: MLABCELL_X39_Y37_N18
\Mux37~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \Y_R[1]~36_combout\ & ( (!\Mux43~0_combout\ & (((\Mux37~0_combout\)) # (\Mux43~1_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[42]~29_combout\)))) ) ) # ( !\Y_R[1]~36_combout\ & ( (!\Mux43~0_combout\ & (!\Mux43~1_combout\ & 
-- (\Mux37~0_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[42]~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~1_combout\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Mux37~0_combout\,
	datad => \Shift|ALT_INV_rl4[42]~29_combout\,
	dataf => \ALT_INV_Y_R[1]~36_combout\,
	combout => \Mux37~1_combout\);

-- Location: LABCELL_X38_Y40_N16
\Mux37~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = ( \Mux37~1_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\)) # (\Mux43~5_combout\ & ((!\Mux43~4_combout\ & (\Shift|rl4[26]~31_combout\)) # (\Mux43~4_combout\ & ((\Mux37~2_combout\))))) ) ) # ( !\Mux37~1_combout\ & ( 
-- (\Mux43~5_combout\ & ((!\Mux43~4_combout\ & (\Shift|rl4[26]~31_combout\)) # (\Mux43~4_combout\ & ((\Mux37~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \Shift|ALT_INV_rl4[26]~31_combout\,
	datad => \ALT_INV_Mux37~2_combout\,
	dataf => \ALT_INV_Mux37~1_combout\,
	combout => \Mux37~3_combout\);

-- Location: LABCELL_X27_Y40_N6
\Add|S[27]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(27) = ( \AddnSub~input_o\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\ $ (!\Add|C[27]~26_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\ $ (\Add|C[27]~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \Add|ALT_INV_C[27]~26_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(27));

-- Location: LABCELL_X32_Y41_N10
\Shift|ll2[27]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~28_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[24]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[25]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( \A[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[27]~28_combout\);

-- Location: LABCELL_X35_Y36_N22
\Shift|ll4[27]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[27]~27_combout\ = ( \Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[19]~20_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[15]~16_combout\)) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|ll2[19]~20_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[15]~16_combout\)) ) ) ) # ( \Shift|ll2[23]~24_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[27]~28_combout\) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|ll2[27]~28_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[27]~28_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[15]~16_combout\,
	datad => \Shift|ALT_INV_ll2[19]~20_combout\,
	datae => \Shift|ALT_INV_ll2[23]~24_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[27]~27_combout\);

-- Location: LABCELL_X32_Y38_N32
\Mux36~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \Shift|ll4[27]~27_combout\ & ( (!\Mux43~2_combout\ & (((\Mux43~3_combout\) # (\Add|S\(27))))) # (\Mux43~2_combout\ & (\Shift|ll4[11]~11_combout\ & ((!\Mux43~3_combout\)))) ) ) # ( !\Shift|ll4[27]~27_combout\ & ( (!\Mux43~3_combout\ & 
-- ((!\Mux43~2_combout\ & ((\Add|S\(27)))) # (\Mux43~2_combout\ & (\Shift|ll4[11]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[11]~11_combout\,
	datab => \ALT_INV_Mux43~2_combout\,
	datac => \Add|ALT_INV_S\(27),
	datad => \ALT_INV_Mux43~3_combout\,
	dataf => \Shift|ALT_INV_ll4[27]~27_combout\,
	combout => \Mux36~0_combout\);

-- Location: LABCELL_X35_Y34_N10
\Y_R[1]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~37_combout\ = ( \B[4]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl4[59]~33_combout\)) # (\ShiftFN[0]~input_o\ & ((\Y_R[1]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[59]~33_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_R[1]~18_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_R[1]~37_combout\);

-- Location: MLABCELL_X34_Y35_N28
\Mux36~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \Mux43~1_combout\ & ( \Shift|rl4[43]~32_combout\ & ( (\Mux43~0_combout\) # (\Y_R[1]~37_combout\) ) ) ) # ( !\Mux43~1_combout\ & ( \Shift|rl4[43]~32_combout\ & ( (\Mux43~0_combout\) # (\Mux36~0_combout\) ) ) ) # ( \Mux43~1_combout\ & 
-- ( !\Shift|rl4[43]~32_combout\ & ( (\Y_R[1]~37_combout\ & !\Mux43~0_combout\) ) ) ) # ( !\Mux43~1_combout\ & ( !\Shift|rl4[43]~32_combout\ & ( (\Mux36~0_combout\ & !\Mux43~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Y_R[1]~37_combout\,
	datad => \ALT_INV_Mux43~0_combout\,
	datae => \ALT_INV_Mux43~1_combout\,
	dataf => \Shift|ALT_INV_rl4[43]~32_combout\,
	combout => \Mux36~1_combout\);

-- Location: LABCELL_X27_Y40_N4
\Mux36~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[27]~input_o\ & (\A[27]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[27]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[27]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[27]~input_o\ $ (((!\A[27]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux36~2_combout\);

-- Location: MLABCELL_X34_Y35_N34
\Mux36~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = ( \Mux36~2_combout\ & ( \Mux43~5_combout\ & ( (\Mux43~4_combout\) # (\Shift|rl4[27]~34_combout\) ) ) ) # ( !\Mux36~2_combout\ & ( \Mux43~5_combout\ & ( (\Shift|rl4[27]~34_combout\ & !\Mux43~4_combout\) ) ) ) # ( \Mux36~2_combout\ & ( 
-- !\Mux43~5_combout\ & ( (\Mux36~1_combout\ & \Mux43~4_combout\) ) ) ) # ( !\Mux36~2_combout\ & ( !\Mux43~5_combout\ & ( (\Mux36~1_combout\ & \Mux43~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~1_combout\,
	datab => \Shift|ALT_INV_rl4[27]~34_combout\,
	datac => \ALT_INV_Mux43~4_combout\,
	datae => \ALT_INV_Mux36~2_combout\,
	dataf => \ALT_INV_Mux43~5_combout\,
	combout => \Mux36~3_combout\);

-- Location: LABCELL_X27_Y40_N26
\Mux35~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[28]~input_o\ & (\A[28]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[28]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[28]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[28]~input_o\ $ (((!\A[28]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux35~2_combout\);

-- Location: MLABCELL_X37_Y37_N10
\Y_R[1]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~38_combout\ = ( \B[4]~input_o\ & ( \B[3]~input_o\ & ( (\A[63]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \B[3]~input_o\ & ( (\A[63]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\B[3]~input_o\ & ( 
-- (\A[63]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[60]~15_combout\)) # (\B[2]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[60]~15_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R[1]~38_combout\);

-- Location: LABCELL_X27_Y40_N28
\Add|S[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(28) = ( \AddnSub~input_o\ & ( !\A[28]~input_o\ $ (!\B[28]~input_o\ $ (!\Add|C[28]~27_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[28]~input_o\ $ (!\B[28]~input_o\ $ (\Add|C[28]~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \Add|ALT_INV_C[28]~27_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(28));

-- Location: LABCELL_X32_Y41_N14
\Shift|ll2[28]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[28]~29_combout\ = ( \A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( !\A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[25]~input_o\)) ) ) ) # ( \A[28]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[28]~29_combout\);

-- Location: LABCELL_X38_Y37_N26
\Shift|ll4[28]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[28]~28_combout\ = ( \Shift|ll2[20]~21_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[16]~17_combout\) ) ) ) # ( !\Shift|ll2[20]~21_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[16]~17_combout\) ) ) ) # ( 
-- \Shift|ll2[20]~21_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[28]~29_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[24]~25_combout\))) ) ) ) # ( !\Shift|ll2[20]~21_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[28]~29_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[24]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[28]~29_combout\,
	datac => \Shift|ALT_INV_ll2[24]~25_combout\,
	datad => \Shift|ALT_INV_ll2[16]~17_combout\,
	datae => \Shift|ALT_INV_ll2[20]~21_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[28]~28_combout\);

-- Location: MLABCELL_X37_Y37_N2
\Mux35~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \Mux43~2_combout\ & ( (\Shift|ll4[12]~12_combout\ & !\Mux43~3_combout\) ) ) # ( !\Mux43~2_combout\ & ( (!\Mux43~3_combout\ & (\Add|S\(28))) # (\Mux43~3_combout\ & ((\Shift|ll4[28]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(28),
	datab => \Shift|ALT_INV_ll4[12]~12_combout\,
	datac => \ALT_INV_Mux43~3_combout\,
	datad => \Shift|ALT_INV_ll4[28]~28_combout\,
	dataf => \ALT_INV_Mux43~2_combout\,
	combout => \Mux35~0_combout\);

-- Location: MLABCELL_X37_Y37_N26
\Mux35~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = ( \Mux43~0_combout\ & ( \Shift|rl4[44]~35_combout\ ) ) # ( !\Mux43~0_combout\ & ( (!\Mux43~1_combout\ & ((\Mux35~0_combout\))) # (\Mux43~1_combout\ & (\Y_R[1]~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[44]~35_combout\,
	datab => \ALT_INV_Y_R[1]~38_combout\,
	datac => \ALT_INV_Mux35~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_Mux43~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LABCELL_X38_Y40_N18
\Mux35~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = ( \Shift|rl4[28]~36_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\ & ((\Mux35~1_combout\)))) # (\Mux43~5_combout\ & ((!\Mux43~4_combout\) # ((\Mux35~2_combout\)))) ) ) # ( !\Shift|rl4[28]~36_combout\ & ( (\Mux43~4_combout\ & 
-- ((!\Mux43~5_combout\ & ((\Mux35~1_combout\))) # (\Mux43~5_combout\ & (\Mux35~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \ALT_INV_Mux35~2_combout\,
	datad => \ALT_INV_Mux35~1_combout\,
	dataf => \Shift|ALT_INV_rl4[28]~36_combout\,
	combout => \Mux35~3_combout\);

-- Location: LABCELL_X27_Y40_N8
\Mux34~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[29]~input_o\ & (!\LogicFN[0]~input_o\ & \A[29]~input_o\)) # (\B[29]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[29]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[29]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux34~2_combout\);

-- Location: LABCELL_X27_Y40_N14
\Add|S[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(29) = ( \AddnSub~input_o\ & ( !\A[29]~input_o\ $ (!\Add|C[29]~28_combout\ $ (!\B[29]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[29]~input_o\ $ (!\Add|C[29]~28_combout\ $ (\B[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \Add|ALT_INV_C[29]~28_combout\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(29));

-- Location: LABCELL_X32_Y41_N16
\Shift|ll2[29]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[29]~30_combout\ = ( \A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ 
-- & ((\A[26]~input_o\))) ) ) ) # ( \A[28]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( !\B[1]~input_o\ & ( (\A[29]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[29]~30_combout\);

-- Location: MLABCELL_X37_Y39_N22
\Shift|ll4[29]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[29]~29_combout\ = ( \Shift|ll2[17]~18_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[21]~22_combout\) ) ) ) # ( !\Shift|ll2[17]~18_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[21]~22_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[17]~18_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[29]~30_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) ) ) ) # ( !\Shift|ll2[17]~18_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[29]~30_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[25]~26_combout\,
	datab => \Shift|ALT_INV_ll2[21]~22_combout\,
	datac => \Shift|ALT_INV_ll2[29]~30_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[17]~18_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[29]~29_combout\);

-- Location: LABCELL_X32_Y36_N28
\Mux34~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \Mux43~2_combout\ & ( (!\Mux43~3_combout\ & \Shift|ll4[13]~13_combout\) ) ) # ( !\Mux43~2_combout\ & ( (!\Mux43~3_combout\ & (\Add|S\(29))) # (\Mux43~3_combout\ & ((\Shift|ll4[29]~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~3_combout\,
	datab => \Shift|ALT_INV_ll4[13]~13_combout\,
	datac => \Add|ALT_INV_S\(29),
	datad => \Shift|ALT_INV_ll4[29]~29_combout\,
	dataf => \ALT_INV_Mux43~2_combout\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X32_Y35_N36
\Y_R[1]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~39_combout\ = ( \Shift|ra4[61]~3_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\Y_R[1]~20_combout\ & !\B[4]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((!\B[4]~input_o\)) # (\A[63]~input_o\))) ) ) # ( !\Shift|ra4[61]~3_combout\ & ( (!\ShiftFN[0]~input_o\ 
-- & (((\Y_R[1]~20_combout\ & !\B[4]~input_o\)))) # (\ShiftFN[0]~input_o\ & (\A[63]~input_o\ & ((\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011000001000100111111000100010011111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Y_R[1]~20_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ra4[61]~3_combout\,
	combout => \Y_R[1]~39_combout\);

-- Location: LABCELL_X32_Y36_N22
\Mux34~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \Mux43~1_combout\ & ( (!\Mux43~0_combout\ & ((\Y_R[1]~39_combout\))) # (\Mux43~0_combout\ & (\Shift|rl4[45]~37_combout\)) ) ) # ( !\Mux43~1_combout\ & ( (!\Mux43~0_combout\ & (\Mux34~0_combout\)) # (\Mux43~0_combout\ & 
-- ((\Shift|rl4[45]~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Shift|ALT_INV_rl4[45]~37_combout\,
	datac => \ALT_INV_Mux43~0_combout\,
	datad => \ALT_INV_Y_R[1]~39_combout\,
	dataf => \ALT_INV_Mux43~1_combout\,
	combout => \Mux34~1_combout\);

-- Location: LABCELL_X32_Y36_N38
\Mux34~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = ( \Shift|rl4[29]~38_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\ & ((\Mux34~1_combout\)))) # (\Mux43~5_combout\ & ((!\Mux43~4_combout\) # ((\Mux34~2_combout\)))) ) ) # ( !\Shift|rl4[29]~38_combout\ & ( (\Mux43~4_combout\ & 
-- ((!\Mux43~5_combout\ & ((\Mux34~1_combout\))) # (\Mux43~5_combout\ & (\Mux34~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \ALT_INV_Mux34~2_combout\,
	datad => \ALT_INV_Mux34~1_combout\,
	dataf => \Shift|ALT_INV_rl4[29]~38_combout\,
	combout => \Mux34~3_combout\);

-- Location: LABCELL_X32_Y35_N0
\Y_R[1]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~40_combout\ = ( \Shift|ra4[62]~5_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Y_R[1]~22_combout\ & ((!\B[4]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((!\B[4]~input_o\) # (\A[63]~input_o\)))) ) ) # ( !\Shift|ra4[62]~5_combout\ & ( (!\ShiftFN[0]~input_o\ 
-- & (\Y_R[1]~22_combout\ & ((!\B[4]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\A[63]~input_o\ & \B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001000000001101110111000000110111011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~22_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ra4[62]~5_combout\,
	combout => \Y_R[1]~40_combout\);

-- Location: LABCELL_X27_Y40_N32
\Shift|ll2[30]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[30]~31_combout\ = ( \A[27]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[29]~input_o\) ) ) ) # ( !\A[27]~input_o\ & ( \B[0]~input_o\ & ( (\A[29]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[27]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\A[27]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[30]~31_combout\);

-- Location: LABCELL_X35_Y35_N4
\Shift|ll4[30]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[30]~30_combout\ = ( \Shift|ll2[22]~23_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[18]~19_combout\) ) ) ) # ( !\Shift|ll2[22]~23_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[18]~19_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[22]~23_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[30]~31_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[26]~27_combout\)) ) ) ) # ( !\Shift|ll2[22]~23_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[30]~31_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[26]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[26]~27_combout\,
	datab => \Shift|ALT_INV_ll2[18]~19_combout\,
	datac => \Shift|ALT_INV_ll2[30]~31_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[22]~23_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[30]~30_combout\);

-- Location: LABCELL_X27_Y40_N10
\Add|S[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(30) = ( \AddnSub~input_o\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (!\Add|C[30]~29_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (\Add|C[30]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \Add|ALT_INV_C[30]~29_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(30));

-- Location: LABCELL_X32_Y35_N20
\Mux33~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \Mux43~2_combout\ & ( (!\Mux43~3_combout\ & \Shift|ll4[14]~14_combout\) ) ) # ( !\Mux43~2_combout\ & ( (!\Mux43~3_combout\ & ((\Add|S\(30)))) # (\Mux43~3_combout\ & (\Shift|ll4[30]~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[30]~30_combout\,
	datab => \Add|ALT_INV_S\(30),
	datac => \ALT_INV_Mux43~3_combout\,
	datad => \Shift|ALT_INV_ll4[14]~14_combout\,
	dataf => \ALT_INV_Mux43~2_combout\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X32_Y35_N12
\Mux33~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \Mux33~0_combout\ & ( (!\Mux43~0_combout\ & (((!\Mux43~1_combout\)) # (\Y_R[1]~40_combout\))) # (\Mux43~0_combout\ & (((\Shift|rl4[46]~39_combout\)))) ) ) # ( !\Mux33~0_combout\ & ( (!\Mux43~0_combout\ & (\Y_R[1]~40_combout\ & 
-- ((\Mux43~1_combout\)))) # (\Mux43~0_combout\ & (((\Shift|rl4[46]~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~40_combout\,
	datab => \Shift|ALT_INV_rl4[46]~39_combout\,
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux43~0_combout\,
	dataf => \ALT_INV_Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LABCELL_X35_Y40_N26
\Mux33~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[30]~input_o\ & (\A[30]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[30]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[30]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[30]~input_o\ $ (((!\A[30]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux33~2_combout\);

-- Location: LABCELL_X38_Y40_N14
\Mux33~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = ( \Mux33~2_combout\ & ( (!\Mux43~5_combout\ & (\Mux43~4_combout\ & (\Mux33~1_combout\))) # (\Mux43~5_combout\ & (((\Shift|rl4[30]~40_combout\)) # (\Mux43~4_combout\))) ) ) # ( !\Mux33~2_combout\ & ( (!\Mux43~5_combout\ & 
-- (\Mux43~4_combout\ & (\Mux33~1_combout\))) # (\Mux43~5_combout\ & (!\Mux43~4_combout\ & ((\Shift|rl4[30]~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~5_combout\,
	datab => \ALT_INV_Mux43~4_combout\,
	datac => \ALT_INV_Mux33~1_combout\,
	datad => \Shift|ALT_INV_rl4[30]~40_combout\,
	dataf => \ALT_INV_Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LABCELL_X35_Y40_N6
\Logic|Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = ( \B[31]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[31]~input_o\)) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011011101110101110111110111010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: MLABCELL_X34_Y34_N24
\Y_R_Ext[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R_Ext[31]~0_combout\ = ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|rl4[31]~42_combout\)) # (\B[4]~input_o\ & (((\Shift|rl4[47]~41_combout\)))) ) ) # ( \B[5]~input_o\ & ( ((\A[63]~input_o\ & (((!\B[4]~input_o\ & \Shift|ra4[62]~4_combout\)) # 
-- (\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101000111000000000000111101000111010001110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[31]~42_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ra4[62]~4_combout\,
	datag => \Shift|ALT_INV_rl4[47]~41_combout\,
	combout => \Y_R_Ext[31]~0_combout\);

-- Location: LABCELL_X35_Y40_N10
\Shift|ll2[31]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~32_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[28]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[30]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[29]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[31]~32_combout\);

-- Location: LABCELL_X35_Y36_N26
\Shift|ll4[31]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~31_combout\ = ( \Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[19]~20_combout\) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[19]~20_combout\) ) ) ) # ( 
-- \Shift|ll2[23]~24_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[31]~32_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[27]~28_combout\)) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[31]~32_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[27]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[27]~28_combout\,
	datab => \Shift|ALT_INV_ll2[31]~32_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[19]~20_combout\,
	datae => \Shift|ALT_INV_ll2[23]~24_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[31]~31_combout\);

-- Location: LABCELL_X35_Y40_N30
\Add|S[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(31) = ( \B[31]~input_o\ & ( !\Add|C[31]~30_combout\ $ (!\AddnSub~input_o\ $ (!\A[31]~input_o\)) ) ) # ( !\B[31]~input_o\ & ( !\Add|C[31]~30_combout\ $ (!\AddnSub~input_o\ $ (\A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[31]~30_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Add|S\(31));

-- Location: MLABCELL_X34_Y34_N6
\Y_LorS_Ext[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS_Ext[31]~0_combout\ = ( \B[4]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & \Shift|ll4[15]~15_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & \Shift|ll4[31]~31_combout\) ) ) ) # ( \B[4]~input_o\ & ( 
-- !\ShiftFN[0]~input_o\ & ( \Add|S\(31) ) ) ) # ( !\B[4]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \Add|S\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010001000100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \Shift|ALT_INV_ll4[31]~31_combout\,
	datac => \Add|ALT_INV_S\(31),
	datad => \Shift|ALT_INV_ll4[15]~15_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_LorS_Ext[31]~0_combout\);

-- Location: LABCELL_X35_Y34_N0
\Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \Y_LorS_Ext[31]~0_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Y_R_Ext[31]~0_combout\) ) ) # ( !\Y_LorS_Ext[31]~0_combout\ & ( (\Y_R_Ext[31]~0_combout\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y_R_Ext[31]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X30_Y34_N8
\Mux32~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux32~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Mux32~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux32~0_combout\,
	datad => \ALT_INV_Mux32~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LABCELL_X35_Y40_N4
\Logic|Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = ( \B[32]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[32]~input_o\)) ) ) # ( !\B[32]~input_o\ & ( (\A[32]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: LABCELL_X40_Y38_N10
\Y_R[32]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[32]~41_combout\ = ( \B[5]~input_o\ & ( \Y_R[1]~25_combout\ ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|rl4[32]~2_combout\))) # (\B[4]~input_o\ & (\Shift|rl4[48]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_rl4[48]~3_combout\,
	datac => \Shift|ALT_INV_rl4[32]~2_combout\,
	datad => \ALT_INV_Y_R[1]~25_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y_R[32]~41_combout\);

-- Location: LABCELL_X35_Y40_N32
\Add|S[32]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(32) = ( \AddnSub~input_o\ & ( !\Add|C[32]~31_combout\ $ (!\B[32]~input_o\ $ (!\A[32]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[32]~31_combout\ $ (!\B[32]~input_o\ $ (\A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[32]~31_combout\,
	datab => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(32));

-- Location: LABCELL_X35_Y40_N12
\Shift|ll2[32]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[32]~33_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[32]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (\A[32]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[32]~33_combout\);

-- Location: LABCELL_X38_Y37_N10
\Shift|ll4[32]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[32]~32_combout\ = ( \Shift|ll2[24]~25_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[20]~21_combout\) ) ) ) # ( !\Shift|ll2[24]~25_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[20]~21_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[24]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[32]~33_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[28]~29_combout\)) ) ) ) # ( !\Shift|ll2[24]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[32]~33_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[28]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[20]~21_combout\,
	datab => \Shift|ALT_INV_ll2[28]~29_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[32]~33_combout\,
	datae => \Shift|ALT_INV_ll2[24]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[32]~32_combout\);

-- Location: LABCELL_X30_Y35_N0
\Y_LorS[32]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS[32]~0_combout\ = ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(32))) # (\ShiftFN[0]~input_o\ & (((!\B[4]~input_o\ & ((\Shift|ll4[32]~32_combout\))) # (\B[4]~input_o\ & (\Shift|ll4[16]~16_combout\))))) ) ) # ( \B[5]~input_o\ & ( 
-- ((!\ShiftFN[0]~input_o\ & (\Add|S\(32))) # (\ShiftFN[0]~input_o\ & (((!\B[4]~input_o\ & \Shift|ll4[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100000011110011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(32),
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ll4[0]~0_combout\,
	datad => \Shift|ALT_INV_ll4[32]~32_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \Shift|ALT_INV_ll4[16]~16_combout\,
	combout => \Y_LorS[32]~0_combout\);

-- Location: IOIBUF_X59_Y34_N63
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X30_Y34_N34
\Y_ShiftOrArith[32]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~0_combout\ = ( \ExtWord~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_R_Ext[31]~0_combout\ ) ) ) # ( !\ExtWord~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[32]~41_combout\ ) ) ) # ( \ExtWord~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Y_LorS_Ext[31]~0_combout\ ) ) ) # ( !\ExtWord~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Y_LorS[32]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[32]~41_combout\,
	datab => \ALT_INV_Y_LorS[32]~0_combout\,
	datac => \ALT_INV_Y_R_Ext[31]~0_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[32]~0_combout\);

-- Location: LABCELL_X30_Y34_N16
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \Y_ShiftOrArith[32]~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\FuncClass[0]~input_o\) # (\Logic|Mux31~0_combout\))) ) ) # ( !\Y_ShiftOrArith[32]~0_combout\ & ( (\FuncClass[0]~input_o\ & (\Logic|Mux31~0_combout\ & 
-- !\FuncClass[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \Logic|ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Y_ShiftOrArith[32]~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X30_Y36_N20
\Mux30~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\B[33]~input_o\ & (\A[33]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[33]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[33]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: MLABCELL_X31_Y36_N10
\Mux23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[5]~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X35_Y40_N16
\Shift|ll2[33]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[33]~34_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[32]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (\A[32]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[33]~34_combout\);

-- Location: MLABCELL_X37_Y39_N26
\Shift|ll4[33]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[33]~33_combout\ = ( \Shift|ll2[29]~30_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[21]~22_combout\))) ) ) ) # ( !\Shift|ll2[29]~30_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[21]~22_combout\))) ) ) ) # ( \Shift|ll2[29]~30_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[33]~34_combout\) ) ) ) # ( !\Shift|ll2[29]~30_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|ll2[33]~34_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[25]~26_combout\,
	datab => \Shift|ALT_INV_ll2[33]~34_combout\,
	datac => \Shift|ALT_INV_ll2[21]~22_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[29]~30_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[33]~33_combout\);

-- Location: LABCELL_X30_Y36_N24
\Mux30~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \B[5]~input_o\ & ( \Shift|ll4[17]~17_combout\ & ( (\Shift|ll4[1]~1_combout\ & ((!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ll4[17]~17_combout\ & ( (\Shift|ll4[33]~33_combout\) # (\B[4]~input_o\) 
-- ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ll4[17]~17_combout\ & ( (\Shift|ll4[1]~1_combout\ & ((!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ll4[17]~17_combout\ & ( (!\B[4]~input_o\ & \Shift|ll4[33]~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001100100011001001010101111111110011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ll4[1]~1_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ll4[33]~33_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ll4[17]~17_combout\,
	combout => \Mux30~2_combout\);

-- Location: LABCELL_X30_Y36_N22
\Add|S[33]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(33) = ( \AddnSub~input_o\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (!\Add|C[33]~32_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\Add|C[33]~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \Add|ALT_INV_C[33]~32_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(33));

-- Location: LABCELL_X30_Y36_N30
\Mux30~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = ( \Add|S\(33) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Y_R[1]~2_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( !\Add|S\(33) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Y_R[1]~2_combout\)) # 
-- (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( \Add|S\(33) & ( !\ShiftFN[1]~input_o\ & ( (\Mux30~2_combout\) # (\Mux23~1_combout\) ) ) ) # ( !\Add|S\(33) & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & \Mux30~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~2_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Y_R[1]~25_combout\,
	datad => \ALT_INV_Mux30~2_combout\,
	datae => \Add|ALT_INV_S\(33),
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LABCELL_X30_Y34_N20
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \Y_R_Ext[31]~0_combout\ & ( (\ExtWord~input_o\ & !\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_Y_R_Ext[31]~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X30_Y36_N4
\Mux30~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux30~1_combout\ & !\Mux30~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux30~3_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_Mux30~3_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: MLABCELL_X29_Y36_N30
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( !\FuncClass[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & \ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X30_Y36_N32
\Mux30~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = ( \Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\) ) ) # ( !\Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & !\Mux30~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux30~4_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux30~5_combout\);

-- Location: MLABCELL_X29_Y36_N32
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\B[34]~input_o\ & (\A[34]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[34]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011101011000001101110101100000110111010110000011011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X37_Y38_N20
\Shift|ll2[34]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[34]~35_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[33]~input_o\)) # (\B[1]~input_o\ 
-- & ((\A[31]~input_o\))) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[34]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (\A[34]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[34]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[34]~35_combout\);

-- Location: LABCELL_X35_Y35_N30
\Shift|ll4[34]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[34]~34_combout\ = ( \Shift|ll2[22]~23_combout\ & ( \Shift|ll2[30]~31_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[22]~23_combout\ & 
-- ( \Shift|ll2[30]~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( \Shift|ll2[22]~23_combout\ & ( 
-- !\Shift|ll2[30]~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\Shift|ll2[22]~23_combout\ & ( 
-- !\Shift|ll2[30]~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[26]~27_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[34]~35_combout\,
	datae => \Shift|ALT_INV_ll2[22]~23_combout\,
	dataf => \Shift|ALT_INV_ll2[30]~31_combout\,
	combout => \Shift|ll4[34]~34_combout\);

-- Location: LABCELL_X30_Y35_N26
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ll4[2]~2_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[2]~2_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( 
-- \Shift|ll4[18]~18_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[34]~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[18]~18_combout\,
	datab => \Shift|ALT_INV_ll4[2]~2_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ll4[34]~34_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X30_Y36_N2
\Add|S[34]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(34) = ( \B[34]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[34]~input_o\ $ (!\Add|C[34]~33_combout\)) ) ) # ( !\B[34]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[34]~input_o\ $ (\Add|C[34]~33_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \Add|ALT_INV_C[34]~33_combout\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \Add|S\(34));

-- Location: MLABCELL_X29_Y36_N18
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \Mux23~1_combout\ & ( \Y_R[1]~25_combout\ & ( (\Add|S\(34)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Mux23~1_combout\ & ( \Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux29~1_combout\))) # (\ShiftFN[1]~input_o\ & 
-- (\Y_R[1]~4_combout\)) ) ) ) # ( \Mux23~1_combout\ & ( !\Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ & \Add|S\(34)) ) ) ) # ( !\Mux23~1_combout\ & ( !\Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux29~1_combout\))) # (\ShiftFN[1]~input_o\ & 
-- (\Y_R[1]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux29~1_combout\,
	datad => \Add|ALT_INV_S\(34),
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_Y_R[1]~25_combout\,
	combout => \Mux29~2_combout\);

-- Location: MLABCELL_X29_Y36_N20
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & !\Mux29~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux29~2_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_Mux29~2_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: MLABCELL_X29_Y36_N4
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( \Mux29~3_combout\ & ( (!\FuncClass[1]~input_o\ & (\Mux23~0_combout\ & \Y_LorS_Ext[31]~0_combout\)) ) ) # ( !\Mux29~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: MLABCELL_X37_Y38_N6
\Shift|ll2[35]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[35]~36_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (\A[34]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[34]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[35]~input_o\))) # (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[35]~input_o\))) # (\B[1]~input_o\ & (\A[33]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[35]~36_combout\);

-- Location: LABCELL_X35_Y36_N28
\Shift|ll4[35]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[35]~35_combout\ = ( \Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[27]~28_combout\) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[27]~28_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[23]~24_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[35]~36_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[31]~32_combout\)) ) ) ) # ( !\Shift|ll2[23]~24_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[35]~36_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[31]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[27]~28_combout\,
	datab => \Shift|ALT_INV_ll2[31]~32_combout\,
	datac => \Shift|ALT_INV_ll2[35]~36_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[23]~24_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[35]~35_combout\);

-- Location: MLABCELL_X29_Y36_N10
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & \Shift|ll4[3]~3_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[3]~3_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( 
-- (!\B[4]~input_o\ & (\Shift|ll4[35]~35_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[19]~19_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ll4[35]~35_combout\)) # (\B[4]~input_o\ & 
-- ((\Shift|ll4[19]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[35]~35_combout\,
	datab => \Shift|ALT_INV_ll4[19]~19_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ll4[3]~3_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: MLABCELL_X29_Y36_N24
\Add|S[35]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(35) = ( \A[35]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[35]~input_o\ $ (!\Add|C[35]~34_combout\)) ) ) # ( !\A[35]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[35]~input_o\ $ (\Add|C[35]~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datac => \Add|ALT_INV_C[35]~34_combout\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Add|S\(35));

-- Location: MLABCELL_X29_Y36_N14
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux23~1_combout\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~25_combout\ ) ) ) # ( !\Mux23~1_combout\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~5_combout\ ) ) ) # ( \Mux23~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Add|S\(35) ) ) ) # ( 
-- !\Mux23~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Mux28~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~1_combout\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \ALT_INV_Y_R[1]~5_combout\,
	datad => \Add|ALT_INV_S\(35),
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: MLABCELL_X29_Y36_N34
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \A[35]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[35]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[35]~input_o\))) ) ) # ( !\A[35]~input_o\ & ( (\B[35]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111001101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X29_Y36_N22
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & !\Mux28~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux28~2_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux28~2_combout\,
	datad => \ALT_INV_Mux28~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: MLABCELL_X29_Y36_N2
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( \Y_LorS_Ext[31]~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux28~3_combout\) # (\Mux23~0_combout\))) ) ) # ( !\Y_LorS_Ext[31]~0_combout\ & ( (!\FuncClass[1]~input_o\ & (!\Mux28~3_combout\ & !\Mux23~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux28~3_combout\,
	datad => \ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	combout => \Mux28~4_combout\);

-- Location: MLABCELL_X31_Y37_N18
\Add|S[36]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(36) = ( \AddnSub~input_o\ & ( !\A[36]~input_o\ $ (!\B[36]~input_o\ $ (!\Add|C[36]~35_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[36]~input_o\ $ (!\B[36]~input_o\ $ (\Add|C[36]~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datad => \Add|ALT_INV_C[36]~35_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(36));

-- Location: MLABCELL_X37_Y38_N8
\Shift|ll2[36]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[36]~37_combout\ = ( \A[34]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\ & (((\A[36]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[33]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( \A[35]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[36]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[33]~input_o\))) ) ) ) # ( \A[34]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & (((\A[36]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (\A[33]~input_o\ & (\B[1]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[36]~input_o\)))) # (\B[0]~input_o\ & (\A[33]~input_o\ & (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Shift|ll2[36]~37_combout\);

-- Location: LABCELL_X38_Y37_N32
\Shift|ll4[36]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[36]~36_combout\ = ( \Shift|ll2[24]~25_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[28]~29_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[24]~25_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[28]~29_combout\) ) ) ) # ( 
-- \Shift|ll2[24]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[36]~37_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[32]~33_combout\)) ) ) ) # ( !\Shift|ll2[24]~25_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[36]~37_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[32]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[28]~29_combout\,
	datac => \Shift|ALT_INV_ll2[32]~33_combout\,
	datad => \Shift|ALT_INV_ll2[36]~37_combout\,
	datae => \Shift|ALT_INV_ll2[24]~25_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[36]~36_combout\);

-- Location: MLABCELL_X31_Y37_N22
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \Shift|ll4[20]~20_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[4]~4_combout\ & ((!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\Shift|ll4[20]~20_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[4]~4_combout\ & ((!\B[4]~input_o\) 
-- # (!\ShiftFN[0]~input_o\))) ) ) ) # ( \Shift|ll4[20]~20_combout\ & ( !\B[5]~input_o\ & ( (\B[4]~input_o\) # (\Shift|ll4[36]~36_combout\) ) ) ) # ( !\Shift|ll4[20]~20_combout\ & ( !\B[5]~input_o\ & ( (\Shift|ll4[36]~36_combout\ & !\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~4_combout\,
	datab => \Shift|ALT_INV_ll4[36]~36_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \Shift|ALT_INV_ll4[20]~20_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X31_Y37_N24
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\) # (\Y_R[1]~7_combout\) ) ) ) # ( !\Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~7_combout\ & !\Mux23~1_combout\) ) ) ) # ( \Y_R[1]~25_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux27~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(36))) ) ) ) # ( !\Y_R[1]~25_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux27~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(36))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~7_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(36),
	datad => \ALT_INV_Mux27~1_combout\,
	datae => \ALT_INV_Y_R[1]~25_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X31_Y37_N16
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[36]~input_o\ & (\B[36]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[36]~input_o\ & (!\B[36]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[36]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[36]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X31_Y37_N8
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux27~0_combout\ & !\Mux30~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux27~2_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~2_combout\,
	datab => \ALT_INV_Mux27~0_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LABCELL_X30_Y36_N34
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\) ) ) # ( !\Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & !\Mux27~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datac => \ALT_INV_Mux27~3_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux27~4_combout\);

-- Location: LABCELL_X32_Y37_N0
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[37]~input_o\ & (\B[37]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[37]~input_o\ & (!\B[37]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[37]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X32_Y37_N2
\Add|S[37]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(37) = ( \Add|C[37]~36_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[37]~36_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[37]~36_combout\,
	combout => \Add|S\(37));

-- Location: MLABCELL_X37_Y38_N32
\Shift|ll2[37]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[37]~38_combout\ = ( \A[37]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[36]~input_o\)) # (\B[1]~input_o\ & ((\A[34]~input_o\))) ) ) ) # ( !\A[37]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[36]~input_o\)) # (\B[1]~input_o\ 
-- & ((\A[34]~input_o\))) ) ) ) # ( \A[37]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[35]~input_o\) ) ) ) # ( !\A[37]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[37]~38_combout\);

-- Location: MLABCELL_X37_Y39_N8
\Shift|ll4[37]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[37]~37_combout\ = ( \Shift|ll2[37]~38_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[29]~30_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) ) ) ) # ( !\Shift|ll2[37]~38_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|ll2[29]~30_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[25]~26_combout\)) ) ) ) # ( \Shift|ll2[37]~38_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[33]~34_combout\) ) ) ) # ( !\Shift|ll2[37]~38_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|ll2[33]~34_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[25]~26_combout\,
	datab => \Shift|ALT_INV_ll2[33]~34_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[29]~30_combout\,
	datae => \Shift|ALT_INV_ll2[37]~38_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[37]~37_combout\);

-- Location: LABCELL_X32_Y37_N24
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \Shift|ll4[21]~21_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\) # ((\Shift|ll4[5]~5_combout\ & !\ShiftFN[0]~input_o\)) ) ) ) # ( !\Shift|ll4[21]~21_combout\ & ( \B[4]~input_o\ & ( (\Shift|ll4[5]~5_combout\ & 
-- (!\ShiftFN[0]~input_o\ & \B[5]~input_o\)) ) ) ) # ( \Shift|ll4[21]~21_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ll4[37]~37_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[5]~5_combout\))) ) ) ) # ( !\Shift|ll4[21]~21_combout\ & ( 
-- !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ll4[37]~37_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[37]~37_combout\,
	datab => \Shift|ALT_INV_ll4[5]~5_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ll4[21]~21_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X32_Y37_N28
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Add|S\(37) & ( \Mux26~1_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\Mux23~1_combout\ & (\Y_R[1]~9_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\)))) ) ) ) # ( !\Add|S\(37) & ( \Mux26~1_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\Mux23~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~9_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) ) # ( \Add|S\(37) & ( !\Mux26~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux23~1_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~9_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) ) # ( !\Add|S\(37) & ( !\Mux26~1_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~9_combout\)) # 
-- (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Y_R[1]~9_combout\,
	datad => \ALT_INV_Y_R[1]~25_combout\,
	datae => \Add|ALT_INV_S\(37),
	dataf => \ALT_INV_Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LABCELL_X32_Y37_N16
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux26~0_combout\ & !\Mux30~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux26~2_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~0_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux26~2_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: MLABCELL_X29_Y36_N6
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( \Mux26~3_combout\ & ( (!\FuncClass[1]~input_o\ & (\Mux23~0_combout\ & \Y_LorS_Ext[31]~0_combout\)) ) ) # ( !\Mux26~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	dataf => \ALT_INV_Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LABCELL_X35_Y37_N18
\Add|S[38]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(38) = ( \Add|C[38]~37_combout\ & ( !\B[38]~input_o\ $ (!\A[38]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[38]~37_combout\ & ( !\B[38]~input_o\ $ (!\A[38]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[38]~37_combout\,
	combout => \Add|S\(38));

-- Location: MLABCELL_X37_Y38_N38
\Shift|ll2[38]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[38]~39_combout\ = ( \A[37]~input_o\ & ( \A[35]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[38]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[37]~input_o\ & ( \A[35]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A[38]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[37]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[38]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[36]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[37]~input_o\ & ( !\A[35]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[38]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Shift|ll2[38]~39_combout\);

-- Location: LABCELL_X35_Y35_N34
\Shift|ll4[38]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[38]~38_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[30]~31_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[30]~31_combout\ & ( 
-- (\B[3]~input_o\) # (\Shift|ll2[38]~39_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[30]~31_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[34]~35_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[26]~27_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ll2[30]~31_combout\ & ( (\Shift|ll2[38]~39_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[26]~27_combout\,
	datab => \Shift|ALT_INV_ll2[38]~39_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[34]~35_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[30]~31_combout\,
	combout => \Shift|ll4[38]~38_combout\);

-- Location: LABCELL_X35_Y37_N22
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ll4[6]~6_combout\ & !\B[4]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[6]~6_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((\Shift|ll4[38]~38_combout\))) # (\B[4]~input_o\ & (\Shift|ll4[22]~22_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[38]~38_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[22]~22_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010101010101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[6]~6_combout\,
	datab => \Shift|ALT_INV_ll4[22]~22_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ll4[38]~38_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X35_Y37_N24
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Mux25~1_combout\ & ( \Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S\(38)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~25_combout\)) ) ) ) # ( !\Mux25~1_combout\ & ( \Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S\(38)))) # 
-- (\ShiftFN[1]~input_o\ & (\Y_R[1]~25_combout\)) ) ) ) # ( \Mux25~1_combout\ & ( !\Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Y_R[1]~10_combout\) ) ) ) # ( !\Mux25~1_combout\ & ( !\Mux23~1_combout\ & ( (\Y_R[1]~10_combout\ & \ShiftFN[1]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~10_combout\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \Add|ALT_INV_S\(38),
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_Mux23~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LABCELL_X35_Y37_N16
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[38]~input_o\ & (\A[38]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[38]~input_o\ & (!\A[38]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[38]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X35_Y37_N8
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \ExtWord~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux25~0_combout\) # (!\FuncClass[0]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (!\Mux25~2_combout\)) # (\FuncClass[0]~input_o\ & 
-- ((!\Mux25~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011000000101000001100000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~2_combout\,
	datab => \ALT_INV_Mux25~0_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X31_Y34_N2
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \Mux25~3_combout\ & ( (\Mux23~0_combout\ & (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\)) ) ) # ( !\Mux25~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	dataf => \ALT_INV_Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: MLABCELL_X39_Y38_N20
\Shift|ll2[39]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[39]~40_combout\ = ( \B[0]~input_o\ & ( \A[36]~input_o\ & ( (\A[38]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[36]~input_o\ & ( (!\B[1]~input_o\ & ((\A[39]~input_o\))) # (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[36]~input_o\ & ( (!\B[1]~input_o\ & \A[38]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[36]~input_o\ & ( (!\B[1]~input_o\ & ((\A[39]~input_o\))) # (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \Shift|ll2[39]~40_combout\);

-- Location: LABCELL_X35_Y36_N14
\Shift|ll4[39]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[39]~39_combout\ = ( \Shift|ll2[35]~36_combout\ & ( \Shift|ll2[27]~28_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ll2[39]~40_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[31]~32_combout\))) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[35]~36_combout\ & 
-- ( \Shift|ll2[27]~28_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[39]~40_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[31]~32_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( \Shift|ll2[35]~36_combout\ & ( 
-- !\Shift|ll2[27]~28_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[39]~40_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[31]~32_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\Shift|ll2[35]~36_combout\ & ( 
-- !\Shift|ll2[27]~28_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ll2[39]~40_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[31]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[31]~32_combout\,
	datac => \Shift|ALT_INV_ll2[39]~40_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[35]~36_combout\,
	dataf => \Shift|ALT_INV_ll2[27]~28_combout\,
	combout => \Shift|ll4[39]~39_combout\);

-- Location: LABCELL_X32_Y36_N6
\Mux24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \Shift|ll4[23]~23_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\) # ((!\ShiftFN[0]~input_o\ & \Shift|ll4[7]~7_combout\)) ) ) ) # ( !\Shift|ll4[23]~23_combout\ & ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\B[5]~input_o\ & 
-- \Shift|ll4[7]~7_combout\)) ) ) ) # ( \Shift|ll4[23]~23_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ll4[39]~39_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[7]~7_combout\))) ) ) ) # ( !\Shift|ll4[23]~23_combout\ & ( !\B[4]~input_o\ & ( 
-- (!\B[5]~input_o\ & (\Shift|ll4[39]~39_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000011001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[39]~39_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ll4[7]~7_combout\,
	datae => \Shift|ALT_INV_ll4[23]~23_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X37_Y34_N10
\Add|S[39]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(39) = !\B[39]~input_o\ $ (!\A[39]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[39]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[39]~38_combout\,
	combout => \Add|S\(39));

-- Location: MLABCELL_X37_Y34_N14
\Mux24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Y_R[1]~12_combout\ & ( \Add|S\(39) & ( (!\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\) # (\Mux24~1_combout\)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~25_combout\ & ((\Mux23~1_combout\)))) ) ) ) # ( !\Y_R[1]~12_combout\ & ( \Add|S\(39) & 
-- ( (!\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\) # (\Mux24~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\Mux23~1_combout\)) # (\Y_R[1]~25_combout\))) ) ) ) # ( \Y_R[1]~12_combout\ & ( !\Add|S\(39) & ( (!\ShiftFN[1]~input_o\ & (((\Mux24~1_combout\ & 
-- !\Mux23~1_combout\)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~25_combout\ & ((\Mux23~1_combout\)))) ) ) ) # ( !\Y_R[1]~12_combout\ & ( !\Add|S\(39) & ( (!\ShiftFN[1]~input_o\ & (((\Mux24~1_combout\ & !\Mux23~1_combout\)))) # (\ShiftFN[1]~input_o\ & 
-- (((!\Mux23~1_combout\)) # (\Y_R[1]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100010001000010100001000101011111101110110000101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \ALT_INV_Y_R[1]~12_combout\,
	dataf => \Add|ALT_INV_S\(39),
	combout => \Mux24~2_combout\);

-- Location: MLABCELL_X37_Y34_N8
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\B[39]~input_o\ & (\A[39]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[39]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[39]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X37_Y34_N22
\Mux24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \Mux24~0_combout\ & ( (!\FuncClass[0]~input_o\ & (!\Mux30~0_combout\ & ((!\Mux24~2_combout\) # (\ExtWord~input_o\)))) ) ) # ( !\Mux24~0_combout\ & ( (!\Mux30~0_combout\ & (((!\Mux24~2_combout\) # (\FuncClass[0]~input_o\)) # 
-- (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux24~2_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~3_combout\);

-- Location: MLABCELL_X37_Y34_N18
\Mux24~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux23~0_combout\ & ((!\Mux24~3_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Mux24~3_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: MLABCELL_X39_Y38_N24
\Shift|ll2[40]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[40]~41_combout\ = ( \B[0]~input_o\ & ( \A[40]~input_o\ & ( (!\B[1]~input_o\ & ((\A[39]~input_o\))) # (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[40]~input_o\ & ( (!\B[1]~input_o\) # (\A[38]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[40]~input_o\ & ( (!\B[1]~input_o\ & ((\A[39]~input_o\))) # (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[40]~input_o\ & ( (\B[1]~input_o\ & \A[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[37]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \Shift|ll2[40]~41_combout\);

-- Location: LABCELL_X38_Y37_N18
\Shift|ll4[40]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[40]~40_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[28]~29_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[32]~33_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[36]~37_combout\ ) ) ) # 
-- ( !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[40]~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[40]~41_combout\,
	datab => \Shift|ALT_INV_ll2[28]~29_combout\,
	datac => \Shift|ALT_INV_ll2[36]~37_combout\,
	datad => \Shift|ALT_INV_ll2[32]~33_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[40]~40_combout\);

-- Location: MLABCELL_X39_Y37_N4
\Mux23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = ( \B[5]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Shift|ll4[8]~8_combout\ & !\B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[40]~40_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[24]~24_combout\)) ) ) ) # ( \B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \Shift|ll4[8]~8_combout\ ) ) ) # ( !\B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[40]~40_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[24]~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000111100110011010101010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[24]~24_combout\,
	datab => \Shift|ALT_INV_ll4[40]~40_combout\,
	datac => \Shift|ALT_INV_ll4[8]~8_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: MLABCELL_X39_Y37_N22
\Add|S[40]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(40) = ( \Add|C[40]~39_combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[40]~39_combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[40]~39_combout\,
	combout => \Add|S\(40));

-- Location: MLABCELL_X39_Y37_N10
\Mux23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~13_combout\ & ( (\Mux23~1_combout\ & \Y_R[1]~25_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_R[1]~13_combout\ & ( (!\Mux23~1_combout\ & (\Mux23~3_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(40)))) 
-- ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y_R[1]~13_combout\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y_R[1]~13_combout\ & ( (!\Mux23~1_combout\ & (\Mux23~3_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(40)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111110011001111111101000111010001110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~3_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(40),
	datad => \ALT_INV_Y_R[1]~25_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_R[1]~13_combout\,
	combout => \Mux23~4_combout\);

-- Location: MLABCELL_X39_Y37_N20
\Mux23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[40]~input_o\ & (\A[40]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[40]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[40]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[40]~input_o\ $ (((!\A[40]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LABCELL_X30_Y34_N22
\Mux23~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = ( !\Mux30~0_combout\ & ( (!\FuncClass[0]~input_o\ & (((!\Mux23~4_combout\)) # (\ExtWord~input_o\))) # (\FuncClass[0]~input_o\ & (((!\Mux23~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111000100111101111100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux23~4_combout\,
	datad => \ALT_INV_Mux23~2_combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \Mux23~5_combout\);

-- Location: LABCELL_X30_Y34_N6
\Mux23~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (!\Mux23~5_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux23~5_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	combout => \Mux23~6_combout\);

-- Location: MLABCELL_X31_Y36_N36
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \B[41]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[41]~input_o\)) ) ) # ( !\B[41]~input_o\ & ( (\A[41]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101101111011011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[41]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X31_Y36_N2
\Add|S[41]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(41) = ( \Add|C[41]~40_combout\ & ( !\A[41]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[41]~input_o\)) ) ) # ( !\Add|C[41]~40_combout\ & ( !\A[41]~input_o\ $ (!\AddnSub~input_o\ $ (\B[41]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	dataf => \Add|ALT_INV_C[41]~40_combout\,
	combout => \Add|S\(41));

-- Location: MLABCELL_X39_Y38_N30
\Shift|ll2[41]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[41]~42_combout\ = ( \A[39]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[38]~input_o\) ) ) ) # ( !\A[39]~input_o\ & ( \B[1]~input_o\ & ( (\A[38]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[39]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[41]~input_o\)) # (\B[0]~input_o\ & ((\A[40]~input_o\))) ) ) ) # ( !\A[39]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[41]~input_o\)) # (\B[0]~input_o\ & ((\A[40]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[41]~42_combout\);

-- Location: MLABCELL_X37_Y39_N34
\Shift|ll4[41]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[41]~41_combout\ = ( \Shift|ll2[41]~42_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[33]~34_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[29]~30_combout\))) ) ) ) # ( !\Shift|ll2[41]~42_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[33]~34_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[29]~30_combout\))) ) ) ) # ( \Shift|ll2[41]~42_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[37]~38_combout\) ) ) ) # ( !\Shift|ll2[41]~42_combout\ & ( 
-- !\B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[37]~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[33]~34_combout\,
	datac => \Shift|ALT_INV_ll2[37]~38_combout\,
	datad => \Shift|ALT_INV_ll2[29]~30_combout\,
	datae => \Shift|ALT_INV_ll2[41]~42_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[41]~41_combout\);

-- Location: MLABCELL_X31_Y36_N20
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \B[5]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & \Shift|ll4[9]~9_combout\) ) ) ) # ( !\B[5]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[41]~41_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[25]~25_combout\)) ) ) ) # ( \B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \Shift|ll4[9]~9_combout\ ) ) ) # ( !\B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[41]~41_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[25]~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000011110000111100010001101110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ll4[25]~25_combout\,
	datac => \Shift|ALT_INV_ll4[9]~9_combout\,
	datad => \Shift|ALT_INV_ll4[41]~41_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: MLABCELL_X31_Y36_N6
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Y_R[1]~15_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\Y_R[1]~15_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~25_combout\ & \Mux23~1_combout\) ) ) ) # ( \Y_R[1]~15_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux22~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(41))) ) ) ) # ( !\Y_R[1]~15_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux22~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(41))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(41),
	datad => \ALT_INV_Mux22~1_combout\,
	datae => \ALT_INV_Y_R[1]~15_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LABCELL_X30_Y34_N28
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \Mux22~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (\ExtWord~input_o\)) # (\FuncClass[0]~input_o\ & ((!\Mux22~0_combout\))))) ) ) # ( !\Mux22~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # 
-- (!\Mux22~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000001110000010000000111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LABCELL_X30_Y34_N4
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (!\Mux22~3_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000100100000001100010010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux22~3_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	combout => \Mux22~4_combout\);

-- Location: MLABCELL_X39_Y38_N12
\Shift|ll2[42]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[42]~43_combout\ = ( \A[42]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[40]~input_o\))) # (\B[0]~input_o\ & (\A[39]~input_o\)) ) ) ) # ( !\A[42]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[40]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[39]~input_o\)) ) ) ) # ( \A[42]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[41]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( !\B[1]~input_o\ & ( (\A[41]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[42]~43_combout\);

-- Location: LABCELL_X35_Y35_N38
\Shift|ll4[42]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[42]~42_combout\ = ( \Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[34]~35_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[30]~31_combout\))) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[34]~35_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[30]~31_combout\))) ) ) ) # ( \Shift|ll2[42]~43_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[38]~39_combout\) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|ll2[38]~39_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[34]~35_combout\,
	datab => \Shift|ALT_INV_ll2[38]~39_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[30]~31_combout\,
	datae => \Shift|ALT_INV_ll2[42]~43_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[42]~42_combout\);

-- Location: MLABCELL_X39_Y34_N0
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ll4[10]~10_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[10]~10_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( 
-- \Shift|ll4[26]~26_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[42]~42_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[26]~26_combout\,
	datab => \Shift|ALT_INV_ll4[10]~10_combout\,
	datac => \Shift|ALT_INV_ll4[42]~42_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: MLABCELL_X39_Y34_N20
\Add|S[42]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(42) = !\Add|C[42]~41_combout\ $ (!\B[42]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[42]~41_combout\,
	datab => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	combout => \Add|S\(42));

-- Location: MLABCELL_X39_Y34_N4
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Y_R[1]~17_combout\ & ( \Add|S\(42) & ( (!\Mux23~1_combout\ & (((\ShiftFN[1]~input_o\) # (\Mux21~1_combout\)))) # (\Mux23~1_combout\ & (((!\ShiftFN[1]~input_o\)) # (\Y_R[1]~25_combout\))) ) ) ) # ( !\Y_R[1]~17_combout\ & ( 
-- \Add|S\(42) & ( (!\Mux23~1_combout\ & (((\Mux21~1_combout\ & !\ShiftFN[1]~input_o\)))) # (\Mux23~1_combout\ & (((!\ShiftFN[1]~input_o\)) # (\Y_R[1]~25_combout\))) ) ) ) # ( \Y_R[1]~17_combout\ & ( !\Add|S\(42) & ( (!\Mux23~1_combout\ & 
-- (((\ShiftFN[1]~input_o\) # (\Mux21~1_combout\)))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\ & ((\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Y_R[1]~17_combout\ & ( !\Add|S\(42) & ( (!\Mux23~1_combout\ & (((\Mux21~1_combout\ & !\ShiftFN[1]~input_o\)))) # 
-- (\Mux23~1_combout\ & (\Y_R[1]~25_combout\ & ((\ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Mux21~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Y_R[1]~17_combout\,
	dataf => \Add|ALT_INV_S\(42),
	combout => \Mux21~2_combout\);

-- Location: MLABCELL_X39_Y34_N18
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[42]~input_o\ & (\B[42]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[42]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[42]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[42]~input_o\ $ (((!\A[42]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X39_Y34_N30
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( !\Mux30~0_combout\ & ( (!\FuncClass[0]~input_o\ & (((!\Mux21~2_combout\)) # (\ExtWord~input_o\))) # (\FuncClass[0]~input_o\ & (((!\Mux21~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011110100010111101111010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \Mux21~3_combout\);

-- Location: MLABCELL_X39_Y34_N16
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux23~0_combout\ & ((!\Mux21~3_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011110011110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux21~3_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LABCELL_X35_Y34_N20
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[43]~input_o\ & (\A[43]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[43]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[43]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[43]~input_o\ $ (((!\A[43]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X35_Y34_N26
\Add|S[43]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(43) = ( \Add|C[43]~42_combout\ & ( !\B[43]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[43]~input_o\)) ) ) # ( !\Add|C[43]~42_combout\ & ( !\B[43]~input_o\ $ (!\AddnSub~input_o\ $ (\A[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	dataf => \Add|ALT_INV_C[43]~42_combout\,
	combout => \Add|S\(43));

-- Location: MLABCELL_X39_Y38_N18
\Shift|ll2[43]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[43]~44_combout\ = ( \A[42]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[41]~input_o\)) # (\B[0]~input_o\ & ((\A[40]~input_o\))) ) ) ) # ( !\A[42]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[41]~input_o\)) # (\B[0]~input_o\ 
-- & ((\A[40]~input_o\))) ) ) ) # ( \A[42]~input_o\ & ( !\B[1]~input_o\ & ( (\A[43]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[43]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[43]~44_combout\);

-- Location: LABCELL_X35_Y36_N38
\Shift|ll4[43]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[43]~43_combout\ = ( \Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[35]~36_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[31]~32_combout\)) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|ll2[35]~36_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[31]~32_combout\)) ) ) ) # ( \Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[39]~40_combout\) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( 
-- !\B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[39]~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[31]~32_combout\,
	datac => \Shift|ALT_INV_ll2[39]~40_combout\,
	datad => \Shift|ALT_INV_ll2[35]~36_combout\,
	datae => \Shift|ALT_INV_ll2[43]~44_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[43]~43_combout\);

-- Location: LABCELL_X32_Y38_N12
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \B[4]~input_o\ & ( \Shift|ll4[11]~11_combout\ & ( (!\B[5]~input_o\ & ((\Shift|ll4[27]~27_combout\))) # (\B[5]~input_o\ & (!\ShiftFN[0]~input_o\)) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ll4[11]~11_combout\ & ( (\B[5]~input_o\) # 
-- (\Shift|ll4[43]~43_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ll4[11]~11_combout\ & ( (\Shift|ll4[27]~27_combout\ & !\B[5]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\Shift|ll4[11]~11_combout\ & ( (\Shift|ll4[43]~43_combout\ & !\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000001010101111111110000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[43]~43_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ll4[27]~27_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ll4[11]~11_combout\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X35_Y34_N30
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Y_R[1]~19_combout\ & ( \Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(43))) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( !\Y_R[1]~19_combout\ & ( \Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(43))) 
-- # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( \Y_R[1]~19_combout\ & ( !\Mux23~1_combout\ & ( (\Mux20~1_combout\) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Y_R[1]~19_combout\ & ( !\Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & \Mux20~1_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \Add|ALT_INV_S\(43),
	datac => \ALT_INV_Mux20~1_combout\,
	datad => \ALT_INV_Y_R[1]~25_combout\,
	datae => \ALT_INV_Y_R[1]~19_combout\,
	dataf => \ALT_INV_Mux23~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: MLABCELL_X39_Y34_N28
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \Mux20~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (\ExtWord~input_o\)) # (\FuncClass[0]~input_o\ & ((!\Mux20~0_combout\))))) ) ) # ( !\Mux20~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # 
-- (!\Mux20~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000001110000001000000111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: MLABCELL_X31_Y34_N18
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \Mux23~0_combout\ & ( (\Y_LorS_Ext[31]~0_combout\ & !\FuncClass[1]~input_o\) ) ) # ( !\Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & !\Mux20~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux20~3_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux20~4_combout\);

-- Location: LABCELL_X35_Y34_N6
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[44]~input_o\ & (\B[44]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[44]~input_o\ & (!\B[44]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[44]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X38_Y35_N22
\Shift|ll2[44]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[44]~45_combout\ = ( \A[41]~input_o\ & ( \A[43]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & (\A[42]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[41]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & (\A[42]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\)) ) ) ) # ( \A[41]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[42]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\)) ) ) ) # ( !\A[41]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & (\A[42]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|ll2[44]~45_combout\);

-- Location: LABCELL_X38_Y37_N2
\Shift|ll4[44]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[44]~44_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[32]~33_combout\ & ( (\Shift|ll2[40]~41_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[32]~33_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[44]~45_combout\)) # 
-- (\B[3]~input_o\ & ((\Shift|ll2[36]~37_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[32]~33_combout\ & ( (!\B[3]~input_o\ & \Shift|ll2[40]~41_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ll2[32]~33_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[44]~45_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[36]~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[44]~45_combout\,
	datab => \Shift|ALT_INV_ll2[36]~37_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[40]~41_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[32]~33_combout\,
	combout => \Shift|ll4[44]~44_combout\);

-- Location: MLABCELL_X37_Y37_N14
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ll4[12]~12_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[12]~12_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( 
-- \Shift|ll4[28]~28_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[44]~44_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[44]~44_combout\,
	datab => \Shift|ALT_INV_ll4[12]~12_combout\,
	datac => \Shift|ALT_INV_ll4[28]~28_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X35_Y34_N24
\Add|S[44]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(44) = ( \A[44]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[44]~43_combout\ $ (!\B[44]~input_o\)) ) ) # ( !\A[44]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[44]~43_combout\ $ (\B[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[44]~43_combout\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[44]~input_o\,
	combout => \Add|S\(44));

-- Location: LABCELL_X35_Y34_N14
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~42_combout\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_R[1]~42_combout\ & ( (!\Mux23~1_combout\ & (\Mux19~1_combout\)) # (\Mux23~1_combout\ & 
-- ((\Add|S\(44)))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y_R[1]~42_combout\ & ( (\Y_R[1]~25_combout\ & \Mux23~1_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y_R[1]~42_combout\ & ( (!\Mux23~1_combout\ & (\Mux19~1_combout\)) # (\Mux23~1_combout\ & 
-- ((\Add|S\(44)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Mux19~1_combout\,
	datad => \Add|ALT_INV_S\(44),
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_R[1]~42_combout\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X35_Y34_N36
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( \Mux19~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (\ExtWord~input_o\)) # (\FuncClass[0]~input_o\ & ((!\Mux19~0_combout\))))) ) ) # ( !\Mux19~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # 
-- (!\Mux19~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000001110000010000000111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: MLABCELL_X31_Y34_N16
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \Mux23~0_combout\ & ( (\Y_LorS_Ext[31]~0_combout\ & !\FuncClass[1]~input_o\) ) ) # ( !\Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & !\Mux19~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux19~3_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux19~4_combout\);

-- Location: MLABCELL_X31_Y34_N20
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \A[45]~input_o\ & ( (!\B[45]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) # (\B[45]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[45]~input_o\ & ( (\B[45]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X38_Y35_N6
\Shift|ll2[45]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[45]~46_combout\ = ( \B[1]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\) # (\A[42]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[43]~input_o\ & ( (!\B[0]~input_o\ & ((\A[45]~input_o\))) # (\B[0]~input_o\ & (\A[44]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[43]~input_o\ & ( (\A[42]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[0]~input_o\ & ((\A[45]~input_o\))) # (\B[0]~input_o\ & (\A[44]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|ll2[45]~46_combout\);

-- Location: MLABCELL_X37_Y39_N18
\Shift|ll4[45]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[45]~45_combout\ = ( \Shift|ll2[41]~42_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[37]~38_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[33]~34_combout\))) ) ) ) # ( !\Shift|ll2[41]~42_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[37]~38_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[33]~34_combout\))) ) ) ) # ( \Shift|ll2[41]~42_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[45]~46_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[41]~42_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[45]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[37]~38_combout\,
	datac => \Shift|ALT_INV_ll2[45]~46_combout\,
	datad => \Shift|ALT_INV_ll2[33]~34_combout\,
	datae => \Shift|ALT_INV_ll2[41]~42_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[45]~45_combout\);

-- Location: LABCELL_X32_Y36_N10
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \B[5]~input_o\ & ( \Shift|ll4[13]~13_combout\ & ( (!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ll4[13]~13_combout\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[45]~45_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ll4[29]~29_combout\)) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ll4[13]~13_combout\ & ( (!\B[4]~input_o\ & ((\Shift|ll4[45]~45_combout\))) # (\B[4]~input_o\ & (\Shift|ll4[29]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000000000000000000010001101110111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ll4[29]~29_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ll4[45]~45_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ll4[13]~13_combout\,
	combout => \Mux18~1_combout\);

-- Location: MLABCELL_X31_Y34_N4
\Add|S[45]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(45) = ( \A[45]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[45]~input_o\ $ (!\Add|C[45]~44_combout\)) ) ) # ( !\A[45]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[45]~input_o\ $ (\Add|C[45]~44_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \Add|ALT_INV_C[45]~44_combout\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Add|S\(45));

-- Location: MLABCELL_X31_Y34_N24
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\) # (\Y_R[1]~21_combout\) ) ) ) # ( !\Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~21_combout\ & !\Mux23~1_combout\) ) ) ) # ( \Y_R[1]~25_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Mux18~1_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(45)))) ) ) ) # ( !\Y_R[1]~25_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Mux18~1_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(45)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \Add|ALT_INV_S\(45),
	datac => \ALT_INV_Y_R[1]~21_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \ALT_INV_Y_R[1]~25_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X35_Y34_N38
\Mux18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \Mux18~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (\ExtWord~input_o\)) # (\FuncClass[0]~input_o\ & ((!\Mux18~0_combout\))))) ) ) # ( !\Mux18~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # 
-- (!\Mux18~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000001110000010000000111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: MLABCELL_X37_Y34_N16
\Mux18~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux23~0_combout\ & ((!\Mux18~3_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Mux18~3_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: MLABCELL_X31_Y34_N8
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\B[46]~input_o\ & (\A[46]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[46]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[46]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X31_Y34_N10
\Add|S[46]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(46) = !\B[46]~input_o\ $ (!\A[46]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[46]~45_combout\,
	combout => \Add|S\(46));

-- Location: LABCELL_X38_Y35_N10
\Shift|ll2[46]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[46]~47_combout\ = ( \A[46]~input_o\ & ( \A[43]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[45]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[44]~input_o\))) ) ) ) # ( !\A[46]~input_o\ & ( \A[43]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\A[45]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[44]~input_o\))) ) ) ) # ( \A[46]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[45]~input_o\)))) # (\B[1]~input_o\ & 
-- (\A[44]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( !\A[46]~input_o\ & ( !\A[43]~input_o\ & ( (!\B[1]~input_o\ & (((\A[45]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[44]~input_o\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \Shift|ll2[46]~47_combout\);

-- Location: LABCELL_X35_Y35_N0
\Shift|ll4[46]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[46]~46_combout\ = ( \Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[38]~39_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[34]~35_combout\))) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[38]~39_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[34]~35_combout\))) ) ) ) # ( \Shift|ll2[42]~43_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[46]~47_combout\) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( 
-- !\B[3]~input_o\ & ( (\Shift|ll2[46]~47_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[46]~47_combout\,
	datab => \Shift|ALT_INV_ll2[38]~39_combout\,
	datac => \Shift|ALT_INV_ll2[34]~35_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[42]~43_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[46]~46_combout\);

-- Location: LABCELL_X32_Y35_N32
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \B[5]~input_o\ & ( \Shift|ll4[46]~46_combout\ & ( (\Shift|ll4[14]~14_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ll4[46]~46_combout\ & ( (!\B[4]~input_o\) # 
-- (\Shift|ll4[30]~30_combout\) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ll4[46]~46_combout\ & ( (\Shift|ll4[14]~14_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ll4[46]~46_combout\ & ( (\B[4]~input_o\ & 
-- \Shift|ll4[30]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000001110111011001111110011110000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ll4[30]~30_combout\,
	datad => \Shift|ALT_INV_ll4[14]~14_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ll4[46]~46_combout\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X31_Y34_N12
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux17~1_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Y_R[1]~23_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( !\Mux17~1_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & 
-- ((\Y_R[1]~23_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( \Mux17~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\) # (\Add|S\(46)) ) ) ) # ( !\Mux17~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\Add|S\(46) & 
-- \Mux23~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \Add|ALT_INV_S\(46),
	datac => \ALT_INV_Y_R[1]~23_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X31_Y34_N36
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \FuncClass[0]~input_o\ & ( (!\Mux17~0_combout\ & !\Mux30~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & ((!\Mux17~2_combout\) # (\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux17~2_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: MLABCELL_X31_Y34_N22
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\) ) ) # ( !\Mux23~0_combout\ & ( (!\Mux17~3_combout\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux17~3_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux17~4_combout\);

-- Location: MLABCELL_X39_Y34_N12
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[47]~input_o\ & (\B[47]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[47]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[47]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[47]~input_o\ $ (((!\A[47]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X31_Y34_N34
\Add|S[47]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[47]~0_combout\ = ( \A[47]~input_o\ & ( !\B[47]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[47]~input_o\ & ( !\B[47]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \Add|S[47]~0_combout\);

-- Location: MLABCELL_X31_Y34_N38
\Add|S[47]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(47) = ( \Add|S[47]~0_combout\ & ( !\Add|C[47]~46_combout\ ) ) # ( !\Add|S[47]~0_combout\ & ( \Add|C[47]~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|ALT_INV_C[47]~46_combout\,
	dataf => \Add|ALT_INV_S[47]~0_combout\,
	combout => \Add|S\(47));

-- Location: LABCELL_X38_Y35_N12
\Shift|ll2[47]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[47]~48_combout\ = ( \A[47]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[46]~input_o\))) # (\B[1]~input_o\ & (\A[44]~input_o\)) ) ) ) # ( !\A[47]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[46]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[44]~input_o\)) ) ) ) # ( \A[47]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[45]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( !\B[0]~input_o\ & ( (\A[45]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[47]~48_combout\);

-- Location: LABCELL_X35_Y36_N2
\Shift|ll4[47]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[47]~47_combout\ = ( \Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[39]~40_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[35]~36_combout\))) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[39]~40_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[35]~36_combout\))) ) ) ) # ( \Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[47]~48_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[47]~48_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[47]~48_combout\,
	datac => \Shift|ALT_INV_ll2[39]~40_combout\,
	datad => \Shift|ALT_INV_ll2[35]~36_combout\,
	datae => \Shift|ALT_INV_ll2[43]~44_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[47]~47_combout\);

-- Location: MLABCELL_X34_Y34_N8
\Mux16~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \Shift|ll4[31]~31_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[15]~15_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\))) ) ) ) # ( !\Shift|ll4[31]~31_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[15]~15_combout\ & 
-- ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\))) ) ) ) # ( \Shift|ll4[31]~31_combout\ & ( !\B[5]~input_o\ & ( (\B[4]~input_o\) # (\Shift|ll4[47]~47_combout\) ) ) ) # ( !\Shift|ll4[31]~31_combout\ & ( !\B[5]~input_o\ & ( (\Shift|ll4[47]~47_combout\ & 
-- !\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[15]~15_combout\,
	datab => \Shift|ALT_INV_ll4[47]~47_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ll4[31]~31_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: MLABCELL_X34_Y34_N34
\Mux16~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~25_combout\ & ( (\Mux23~1_combout\) # (\Y_R[1]~24_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_R[1]~25_combout\ & ( (!\Mux23~1_combout\ & ((\Mux16~1_combout\))) # (\Mux23~1_combout\ & 
-- (\Add|S\(47))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y_R[1]~25_combout\ & ( (\Y_R[1]~24_combout\ & !\Mux23~1_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y_R[1]~25_combout\ & ( (!\Mux23~1_combout\ & ((\Mux16~1_combout\))) # (\Mux23~1_combout\ & 
-- (\Add|S\(47))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(47),
	datab => \ALT_INV_Y_R[1]~24_combout\,
	datac => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_Mux16~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_R[1]~25_combout\,
	combout => \Mux16~2_combout\);

-- Location: MLABCELL_X39_Y34_N10
\Mux16~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = ( \Mux16~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\ & (\ExtWord~input_o\)) # (\FuncClass[0]~input_o\ & ((!\Mux16~0_combout\))))) ) ) # ( !\Mux16~2_combout\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # 
-- (!\Mux16~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: MLABCELL_X39_Y34_N14
\Mux16~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux23~0_combout\ & ((!\Mux16~3_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datac => \ALT_INV_Mux16~3_combout\,
	datad => \ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LABCELL_X38_Y35_N18
\Shift|ll2[48]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[48]~49_combout\ = ( \A[47]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[45]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[45]~input_o\) ) ) ) # ( \A[47]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[48]~input_o\)) # (\B[1]~input_o\ & ((\A[46]~input_o\))) ) ) ) # ( !\A[47]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[48]~input_o\)) # (\B[1]~input_o\ & ((\A[46]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[48]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[48]~49_combout\);

-- Location: LABCELL_X38_Y37_N4
\Mux15~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \Shift|ll2[44]~45_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[40]~41_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[36]~37_combout\))) ) ) ) # ( !\Shift|ll2[44]~45_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[40]~41_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[36]~37_combout\))) ) ) ) # ( \Shift|ll2[44]~45_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[48]~49_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[44]~45_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|ll2[48]~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[40]~41_combout\,
	datab => \Shift|ALT_INV_ll2[36]~37_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[48]~49_combout\,
	datae => \Shift|ALT_INV_ll2[44]~45_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X30_Y35_N10
\Mux15~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[0]~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[16]~16_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[32]~32_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Mux15~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~1_combout\,
	datab => \Shift|ALT_INV_ll4[16]~16_combout\,
	datac => \Shift|ALT_INV_ll4[32]~32_combout\,
	datad => \Shift|ALT_INV_ll4[0]~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: MLABCELL_X29_Y34_N0
\Add|S[48]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(48) = ( \B[48]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[48]~input_o\ $ (!\Add|C[48]~47_combout\)) ) ) # ( !\B[48]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[48]~input_o\ $ (\Add|C[48]~47_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \Add|ALT_INV_C[48]~47_combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Add|S\(48));

-- Location: MLABCELL_X29_Y34_N28
\Mux15~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ( \Add|S\(48) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Y_R[1]~26_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( !\Add|S\(48) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Y_R[1]~26_combout\))) 
-- # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( \Add|S\(48) & ( !\ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\) # (\Mux15~2_combout\) ) ) ) # ( !\Add|S\(48) & ( !\ShiftFN[1]~input_o\ & ( (\Mux15~2_combout\ & !\Mux23~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~2_combout\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \ALT_INV_Y_R[1]~26_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \Add|ALT_INV_S\(48),
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LABCELL_X30_Y34_N12
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \A[48]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (\B[48]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[48]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\A[48]~input_o\ & ( (\B[48]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X30_Y34_N18
\Mux15~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = ( !\Mux30~0_combout\ & ( (!\FuncClass[0]~input_o\ & ((!\Mux15~3_combout\) # ((\ExtWord~input_o\)))) # (\FuncClass[0]~input_o\ & (((!\Mux15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100011111100101110001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~3_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \Mux15~4_combout\);

-- Location: LABCELL_X30_Y34_N14
\Mux15~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = ( \Mux23~0_combout\ & ( (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\) ) ) # ( !\Mux23~0_combout\ & ( (!\Mux15~4_combout\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux15~4_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux15~5_combout\);

-- Location: LABCELL_X30_Y34_N30
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ExtWord~input_o\ & !\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X35_Y33_N22
\Shift|ll2[49]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[49]~50_combout\ = ( \B[0]~input_o\ & ( \A[46]~input_o\ & ( (\A[48]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[46]~input_o\ & ( (!\B[1]~input_o\ & ((\A[49]~input_o\))) # (\B[1]~input_o\ & (\A[47]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[46]~input_o\ & ( (!\B[1]~input_o\ & \A[48]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[46]~input_o\ & ( (!\B[1]~input_o\ & ((\A[49]~input_o\))) # (\B[1]~input_o\ & (\A[47]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \Shift|ll2[49]~50_combout\);

-- Location: MLABCELL_X34_Y33_N34
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Shift|ll2[37]~38_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[41]~42_combout\) ) ) ) # ( !\Shift|ll2[37]~38_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[41]~42_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[37]~38_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[49]~50_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[45]~46_combout\)) ) ) ) # ( !\Shift|ll2[37]~38_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[49]~50_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[45]~46_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[41]~42_combout\,
	datab => \Shift|ALT_INV_ll2[45]~46_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[49]~50_combout\,
	datae => \Shift|ALT_INV_ll2[37]~38_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X30_Y36_N16
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \B[5]~input_o\ & ( \Shift|ll4[1]~1_combout\ & ( (\Shift|ll4[17]~17_combout\) # (\B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ll4[1]~1_combout\ & ( (!\B[4]~input_o\ & (\Mux14~0_combout\)) # (\B[4]~input_o\ & 
-- ((\Shift|ll4[33]~33_combout\))) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ll4[1]~1_combout\ & ( (!\B[4]~input_o\ & \Shift|ll4[17]~17_combout\) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ll4[1]~1_combout\ & ( (!\B[4]~input_o\ & (\Mux14~0_combout\)) # (\B[4]~input_o\ 
-- & ((\Shift|ll4[33]~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Mux14~0_combout\,
	datac => \Shift|ALT_INV_ll4[17]~17_combout\,
	datad => \Shift|ALT_INV_ll4[33]~33_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ll4[1]~1_combout\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X30_Y34_N24
\Add|S[49]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(49) = ( \AddnSub~input_o\ & ( !\Add|C[49]~48_combout\ $ (!\B[49]~input_o\ $ (!\A[49]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[49]~48_combout\ $ (!\B[49]~input_o\ $ (\A[49]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[49]~48_combout\,
	datac => \ALT_INV_B[49]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(49));

-- Location: MLABCELL_X29_Y34_N34
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Add|S\(49) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Y_R[1]~27_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( !\Add|S\(49) & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Y_R[1]~27_combout\))) 
-- # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)) ) ) ) # ( \Add|S\(49) & ( !\ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\) # (\Mux14~1_combout\) ) ) ) # ( !\Add|S\(49) & ( !\ShiftFN[1]~input_o\ & ( (\Mux14~1_combout\ & !\Mux23~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_Y_R[1]~27_combout\,
	datae => \Add|ALT_INV_S\(49),
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X29_Y34_N36
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \B[49]~input_o\ & ( \A[49]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[49]~input_o\ & ( \A[49]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[49]~input_o\ & ( !\A[49]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[49]~input_o\ & ( !\A[49]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011000000010011001100100001001100110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: MLABCELL_X29_Y34_N16
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Mux14~2_combout\ & ( \Mux14~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & ((\Mux0~0_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\Mux14~2_combout\ & ( \Mux14~4_combout\ & ( 
-- (\Y_LorS_Ext[31]~0_combout\ & (!\FuncClass[1]~input_o\ & \Mux23~0_combout\)) ) ) ) # ( \Mux14~2_combout\ & ( !\Mux14~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux14~2_combout\ & ( 
-- !\Mux14~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000000000000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux23~0_combout\,
	datae => \ALT_INV_Mux14~2_combout\,
	dataf => \ALT_INV_Mux14~4_combout\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X27_Y40_N38
\Add|S[50]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[50]~1_combout\ = ( \AddnSub~input_o\ & ( !\B[50]~input_o\ $ (\A[50]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[50]~1_combout\);

-- Location: MLABCELL_X29_Y34_N22
\Add|S[50]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(50) = !\Add|C[50]~49_combout\ $ (!\Add|S[50]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[50]~49_combout\,
	datab => \Add|ALT_INV_S[50]~1_combout\,
	combout => \Add|S\(50));

-- Location: LABCELL_X35_Y33_N6
\Shift|ll2[50]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[50]~51_combout\ = ( \B[0]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & ((\A[49]~input_o\))) # (\B[1]~input_o\ & (\A[47]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\) # (\A[48]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & ((\A[49]~input_o\))) # (\B[1]~input_o\ & (\A[47]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[50]~input_o\ & ( (\B[1]~input_o\ & \A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ll2[50]~51_combout\);

-- Location: LABCELL_X35_Y35_N26
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[38]~39_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[42]~43_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[46]~47_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[50]~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[42]~43_combout\,
	datab => \Shift|ALT_INV_ll2[50]~51_combout\,
	datac => \Shift|ALT_INV_ll2[38]~39_combout\,
	datad => \Shift|ALT_INV_ll2[46]~47_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X30_Y35_N34
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Mux13~0_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ll4[18]~18_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[2]~2_combout\))) ) ) ) # ( !\Mux13~0_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\Shift|ll4[18]~18_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[2]~2_combout\))) ) ) ) # ( \Mux13~0_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # (\Shift|ll4[34]~34_combout\) ) ) ) # ( !\Mux13~0_combout\ & ( !\B[5]~input_o\ & ( (\B[4]~input_o\ & 
-- \Shift|ll4[34]~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[18]~18_combout\,
	datab => \Shift|ALT_INV_ll4[2]~2_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ll4[34]~34_combout\,
	datae => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X31_Y36_N28
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\) # (\Y_R[1]~28_combout\) ) ) ) # ( !\Y_R[1]~25_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~28_combout\ & !\Mux23~1_combout\) ) ) ) # ( \Y_R[1]~25_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux13~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(50))) ) ) ) # ( !\Y_R[1]~25_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux13~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(50))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~28_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(50),
	datad => \ALT_INV_Mux13~1_combout\,
	datae => \ALT_INV_Y_R[1]~25_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X29_Y34_N14
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \B[50]~input_o\ & ( \A[50]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[50]~input_o\ & ( \A[50]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[50]~input_o\ & ( !\A[50]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[50]~input_o\ & ( !\A[50]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100010011001000110001001100010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X29_Y34_N4
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \Mux13~2_combout\ & ( \Mux13~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & ((\Mux0~0_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\Mux13~2_combout\ & ( \Mux13~4_combout\ & ( 
-- (\Y_LorS_Ext[31]~0_combout\ & (!\FuncClass[1]~input_o\ & \Mux23~0_combout\)) ) ) ) # ( \Mux13~2_combout\ & ( !\Mux13~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux13~2_combout\ & ( 
-- !\Mux13~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000000000000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux23~0_combout\,
	datae => \ALT_INV_Mux13~2_combout\,
	dataf => \ALT_INV_Mux13~4_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X35_Y33_N10
\Shift|ll2[51]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[51]~52_combout\ = ( \A[48]~input_o\ & ( \B[1]~input_o\ & ( (\A[49]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[48]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[49]~input_o\) ) ) ) # ( \A[48]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[51]~input_o\)) # (\B[0]~input_o\ & ((\A[50]~input_o\))) ) ) ) # ( !\A[48]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[51]~input_o\)) # (\B[0]~input_o\ & ((\A[50]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[51]~52_combout\);

-- Location: LABCELL_X35_Y36_N6
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[39]~40_combout\) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\ & \Shift|ll2[39]~40_combout\) ) ) ) # ( 
-- \Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[51]~52_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[47]~48_combout\)) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[51]~52_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[47]~48_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[47]~48_combout\,
	datac => \Shift|ALT_INV_ll2[39]~40_combout\,
	datad => \Shift|ALT_INV_ll2[51]~52_combout\,
	datae => \Shift|ALT_INV_ll2[43]~44_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X29_Y36_N36
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Shift|ll4[3]~3_combout\ & ( \B[5]~input_o\ & ( (\B[4]~input_o\) # (\Shift|ll4[19]~19_combout\) ) ) ) # ( !\Shift|ll4[3]~3_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[19]~19_combout\ & !\B[4]~input_o\) ) ) ) # ( 
-- \Shift|ll4[3]~3_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Mux12~0_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[35]~35_combout\))) ) ) ) # ( !\Shift|ll4[3]~3_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Mux12~0_combout\)) # 
-- (\B[4]~input_o\ & ((\Shift|ll4[35]~35_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	datab => \Shift|ALT_INV_ll4[19]~19_combout\,
	datac => \Shift|ALT_INV_ll4[35]~35_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ll4[3]~3_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X29_Y34_N24
\Add|S[51]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(51) = ( \A[51]~input_o\ & ( !\B[51]~input_o\ $ (!\Add|C[51]~50_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\A[51]~input_o\ & ( !\B[51]~input_o\ $ (!\Add|C[51]~50_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datab => \Add|ALT_INV_C[51]~50_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \Add|S\(51));

-- Location: MLABCELL_X29_Y34_N8
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Y_R[1]~29_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\Y_R[1]~29_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Mux23~1_combout\ & \Y_R[1]~25_combout\) ) ) ) # ( \Y_R[1]~29_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Mux12~1_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(51)))) ) ) ) # ( !\Y_R[1]~29_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & (\Mux12~1_combout\)) # (\Mux23~1_combout\ & ((\Add|S\(51)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(51),
	datad => \ALT_INV_Y_R[1]~25_combout\,
	datae => \ALT_INV_Y_R[1]~29_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X29_Y34_N38
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \B[51]~input_o\ & ( \A[51]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[51]~input_o\ & ( \A[51]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[51]~input_o\ & ( !\A[51]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[51]~input_o\ & ( !\A[51]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100010011001000110001001100010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X29_Y34_N18
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux12~2_combout\ & ( \Mux12~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & ((\Mux0~0_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\Mux12~2_combout\ & ( \Mux12~4_combout\ & ( 
-- (\Y_LorS_Ext[31]~0_combout\ & (\Mux23~0_combout\ & !\FuncClass[1]~input_o\)) ) ) ) # ( \Mux12~2_combout\ & ( !\Mux12~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux12~2_combout\ & ( 
-- !\Mux12~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000000000101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_Mux12~2_combout\,
	dataf => \ALT_INV_Mux12~4_combout\,
	combout => \Mux12~3_combout\);

-- Location: MLABCELL_X31_Y37_N2
\Add|S[52]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(52) = ( \B[52]~input_o\ & ( !\Add|C[52]~51_combout\ $ (!\AddnSub~input_o\ $ (!\A[52]~input_o\)) ) ) # ( !\B[52]~input_o\ & ( !\Add|C[52]~51_combout\ $ (!\AddnSub~input_o\ $ (\A[52]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[52]~51_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \Add|S\(52));

-- Location: LABCELL_X35_Y33_N32
\Shift|ll2[52]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[52]~53_combout\ = ( \A[52]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[50]~input_o\)) # (\B[0]~input_o\ & ((\A[49]~input_o\))) ) ) ) # ( !\A[52]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[50]~input_o\)) # (\B[0]~input_o\ 
-- & ((\A[49]~input_o\))) ) ) ) # ( \A[52]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[51]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( !\B[1]~input_o\ & ( (\A[51]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[52]~53_combout\);

-- Location: LABCELL_X38_Y37_N28
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Shift|ll2[52]~53_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[44]~45_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[40]~41_combout\)) ) ) ) # ( !\Shift|ll2[52]~53_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[44]~45_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[40]~41_combout\)) ) ) ) # ( \Shift|ll2[52]~53_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[48]~49_combout\) ) ) ) # ( !\Shift|ll2[52]~53_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[48]~49_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[40]~41_combout\,
	datab => \Shift|ALT_INV_ll2[48]~49_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[44]~45_combout\,
	datae => \Shift|ALT_INV_ll2[52]~53_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X31_Y37_N12
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[4]~4_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[20]~20_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[36]~36_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Mux11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~4_combout\,
	datab => \Shift|ALT_INV_ll4[20]~20_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \Shift|ALT_INV_ll4[36]~36_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X31_Y37_N38
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \Mux23~1_combout\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~25_combout\ ) ) ) # ( !\Mux23~1_combout\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~30_combout\ ) ) ) # ( \Mux23~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Add|S\(52) ) ) ) # ( 
-- !\Mux23~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Mux11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \ALT_INV_Y_R[1]~30_combout\,
	datac => \Add|ALT_INV_S\(52),
	datad => \ALT_INV_Mux11~1_combout\,
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: MLABCELL_X29_Y34_N12
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \B[52]~input_o\ & ( \A[52]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[52]~input_o\ & ( \A[52]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[52]~input_o\ & ( !\A[52]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[52]~input_o\ & ( !\A[52]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011000000010011001100100001001100110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: MLABCELL_X29_Y34_N6
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Mux11~2_combout\ & ( \Mux11~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & ((\Mux0~0_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\Mux11~2_combout\ & ( \Mux11~4_combout\ & ( 
-- (\Y_LorS_Ext[31]~0_combout\ & (\Mux23~0_combout\ & !\FuncClass[1]~input_o\)) ) ) ) # ( \Mux11~2_combout\ & ( !\Mux11~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux11~2_combout\ & ( 
-- !\Mux11~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000000000101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux11~4_combout\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X31_Y37_N10
\Add|S[53]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[53]~2_combout\ = ( \AddnSub~input_o\ & ( !\B[53]~input_o\ $ (\A[53]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[53]~input_o\ $ (!\A[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[53]~2_combout\);

-- Location: MLABCELL_X31_Y37_N34
\Add|S[53]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(53) = ( \Add|C[53]~52_combout\ & ( !\Add|S[53]~2_combout\ ) ) # ( !\Add|C[53]~52_combout\ & ( \Add|S[53]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|ALT_INV_S[53]~2_combout\,
	dataf => \Add|ALT_INV_C[53]~52_combout\,
	combout => \Add|S\(53));

-- Location: LABCELL_X35_Y33_N38
\Shift|ll2[53]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[53]~54_combout\ = ( \A[52]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[51]~input_o\)) # (\B[0]~input_o\ & ((\A[50]~input_o\))) ) ) ) # ( !\A[52]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[51]~input_o\)) # (\B[0]~input_o\ 
-- & ((\A[50]~input_o\))) ) ) ) # ( \A[52]~input_o\ & ( !\B[1]~input_o\ & ( (\A[53]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[53]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[53]~54_combout\);

-- Location: MLABCELL_X34_Y33_N18
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[49]~50_combout\ & ( (!\B[3]~input_o\) # (\Shift|ll2[41]~42_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[49]~50_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[53]~54_combout\)) # (\B[3]~input_o\ & 
-- ((\Shift|ll2[45]~46_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[49]~50_combout\ & ( (\B[3]~input_o\ & \Shift|ll2[41]~42_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ll2[49]~50_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[53]~54_combout\)) # 
-- (\B[3]~input_o\ & ((\Shift|ll2[45]~46_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[53]~54_combout\,
	datab => \Shift|ALT_INV_ll2[45]~46_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[41]~42_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[49]~50_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X32_Y37_N12
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \B[5]~input_o\ & ( \Mux10~0_combout\ & ( (!\B[4]~input_o\ & (\Shift|ll4[21]~21_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[5]~5_combout\))) ) ) ) # ( !\B[5]~input_o\ & ( \Mux10~0_combout\ & ( (!\B[4]~input_o\) # 
-- (\Shift|ll4[37]~37_combout\) ) ) ) # ( \B[5]~input_o\ & ( !\Mux10~0_combout\ & ( (!\B[4]~input_o\ & (\Shift|ll4[21]~21_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[5]~5_combout\))) ) ) ) # ( !\B[5]~input_o\ & ( !\Mux10~0_combout\ & ( (\B[4]~input_o\ & 
-- \Shift|ll4[37]~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ll4[21]~21_combout\,
	datac => \Shift|ALT_INV_ll4[37]~37_combout\,
	datad => \Shift|ALT_INV_ll4[5]~5_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X32_Y37_N38
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux23~1_combout\ & ( \Y_R[1]~25_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux23~1_combout\ & ( \Add|S\(53) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux23~1_combout\ & ( \Y_R[1]~31_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux23~1_combout\ & ( \Mux10~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~31_combout\,
	datab => \Add|ALT_INV_S\(53),
	datac => \ALT_INV_Y_R[1]~25_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux23~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X40_Y34_N16
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( \B[53]~input_o\ & ( \A[53]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[53]~input_o\ & ( \A[53]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[53]~input_o\ & ( !\A[53]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[53]~input_o\ & ( !\A[53]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010110000000011101011000000001011101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_Mux30~0_combout\,
	datae => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X40_Y34_N38
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \Mux10~2_combout\ & ( \Mux10~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux10~2_combout\ & ( \Mux10~4_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (\Mux23~0_combout\ & \Y_LorS_Ext[31]~0_combout\)) ) ) ) # ( \Mux10~2_combout\ & ( !\Mux10~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux10~2_combout\ & ( 
-- !\Mux10~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101000000000001000100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datae => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux10~4_combout\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X37_Y36_N36
\Shift|ll2[54]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[54]~55_combout\ = ( \A[54]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[51]~input_o\)) ) ) ) # ( !\A[54]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[53]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[51]~input_o\)) ) ) ) # ( \A[54]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[52]~input_o\) ) ) ) # ( !\A[54]~input_o\ & ( !\B[0]~input_o\ & ( (\A[52]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[51]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[54]~55_combout\);

-- Location: LABCELL_X35_Y35_N8
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ll2[46]~47_combout\) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[46]~47_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[42]~43_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[54]~55_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[50]~51_combout\)) ) ) ) # ( !\Shift|ll2[42]~43_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[54]~55_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[50]~51_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[46]~47_combout\,
	datab => \Shift|ALT_INV_ll2[50]~51_combout\,
	datac => \Shift|ALT_INV_ll2[54]~55_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[42]~43_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X35_Y37_N32
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Shift|ll4[22]~22_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\) # (\Shift|ll4[6]~6_combout\) ) ) ) # ( !\Shift|ll4[22]~22_combout\ & ( \B[5]~input_o\ & ( (\Shift|ll4[6]~6_combout\ & \B[4]~input_o\) ) ) ) # ( 
-- \Shift|ll4[22]~22_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Mux9~0_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[38]~38_combout\))) ) ) ) # ( !\Shift|ll4[22]~22_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Mux9~0_combout\)) # 
-- (\B[4]~input_o\ & ((\Shift|ll4[38]~38_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[6]~6_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Shift|ALT_INV_ll4[38]~38_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ll4[22]~22_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X40_Y34_N26
\Add|S[54]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(54) = ( \AddnSub~input_o\ & ( !\A[54]~input_o\ $ (!\Add|C[54]~53_combout\ $ (!\B[54]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[54]~input_o\ $ (!\Add|C[54]~53_combout\ $ (\B[54]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datac => \Add|ALT_INV_C[54]~53_combout\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(54));

-- Location: LABCELL_X35_Y37_N36
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Add|S\(54) & ( \Y_R[1]~25_combout\ & ( ((!\ShiftFN[1]~input_o\ & (\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~32_combout\)))) # (\Mux23~1_combout\) ) ) ) # ( !\Add|S\(54) & ( \Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ 
-- & (\Mux9~1_combout\ & ((!\Mux23~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\) # (\Y_R[1]~32_combout\)))) ) ) ) # ( \Add|S\(54) & ( !\Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\)) # (\Mux9~1_combout\))) # 
-- (\ShiftFN[1]~input_o\ & (((\Y_R[1]~32_combout\ & !\Mux23~1_combout\)))) ) ) ) # ( !\Add|S\(54) & ( !\Y_R[1]~25_combout\ & ( (!\Mux23~1_combout\ & ((!\ShiftFN[1]~input_o\ & (\Mux9~1_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~32_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y_R[1]~32_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \Add|ALT_INV_S\(54),
	dataf => \ALT_INV_Y_R[1]~25_combout\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X40_Y34_N32
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \B[54]~input_o\ & ( \A[54]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((!\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)))) ) ) ) # ( !\B[54]~input_o\ & ( \A[54]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\)))) ) ) ) # ( \B[54]~input_o\ & ( !\A[54]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)))) ) ) ) # ( 
-- !\B[54]~input_o\ & ( !\A[54]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000110011001000100011001000100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X40_Y34_N20
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \Mux9~2_combout\ & ( \Mux9~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux9~2_combout\ & ( \Mux9~4_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (\Y_LorS_Ext[31]~0_combout\ & \Mux23~0_combout\)) ) ) ) # ( \Mux9~2_combout\ & ( !\Mux9~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux9~2_combout\ & ( 
-- !\Mux9~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101000000000000010100010001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux23~0_combout\,
	datae => \ALT_INV_Mux9~2_combout\,
	dataf => \ALT_INV_Mux9~4_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X37_Y36_N0
\Shift|ll2[55]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[55]~56_combout\ = ( \A[54]~input_o\ & ( \A[55]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\))) ) ) ) # ( !\A[54]~input_o\ & ( \A[55]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) ) # ( \A[54]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) ) # ( !\A[54]~input_o\ & ( !\A[55]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Shift|ll2[55]~56_combout\);

-- Location: LABCELL_X35_Y36_N10
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[47]~48_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[47]~48_combout\) ) ) ) # ( 
-- \Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[55]~56_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[51]~52_combout\))) ) ) ) # ( !\Shift|ll2[43]~44_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[55]~56_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[51]~52_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[47]~48_combout\,
	datac => \Shift|ALT_INV_ll2[55]~56_combout\,
	datad => \Shift|ALT_INV_ll2[51]~52_combout\,
	datae => \Shift|ALT_INV_ll2[43]~44_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X32_Y36_N14
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Mux8~0_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ll4[39]~39_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[7]~7_combout\))) ) ) ) # ( !\Mux8~0_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & 
-- (\Shift|ll4[39]~39_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[7]~7_combout\))) ) ) ) # ( \Mux8~0_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\) # (\Shift|ll4[23]~23_combout\) ) ) ) # ( !\Mux8~0_combout\ & ( !\B[4]~input_o\ & ( (\B[5]~input_o\ & 
-- \Shift|ll4[23]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[39]~39_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ll4[23]~23_combout\,
	datad => \Shift|ALT_INV_ll4[7]~7_combout\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X40_Y34_N10
\Add|S[55]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(55) = ( \A[55]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[55]~input_o\ $ (!\Add|C[55]~54_combout\)) ) ) # ( !\A[55]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[55]~input_o\ $ (\Add|C[55]~54_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \Add|ALT_INV_C[55]~54_combout\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Add|S\(55));

-- Location: LABCELL_X40_Y34_N4
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Y_R[1]~25_combout\ & ( \Mux23~1_combout\ & ( (\Add|S\(55)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Y_R[1]~25_combout\ & ( \Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & \Add|S\(55)) ) ) ) # ( \Y_R[1]~25_combout\ & ( !\Mux23~1_combout\ & 
-- ( (!\ShiftFN[1]~input_o\ & ((\Mux8~1_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~33_combout\)) ) ) ) # ( !\Y_R[1]~25_combout\ & ( !\Mux23~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux8~1_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~33_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_R[1]~33_combout\,
	datac => \ALT_INV_Mux8~1_combout\,
	datad => \Add|ALT_INV_S\(55),
	datae => \ALT_INV_Y_R[1]~25_combout\,
	dataf => \ALT_INV_Mux23~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X40_Y34_N18
\Mux8~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \B[55]~input_o\ & ( \A[55]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[55]~input_o\ & ( \A[55]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[55]~input_o\ & ( !\A[55]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[55]~input_o\ & ( !\A[55]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001011000011100000101100001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LABCELL_X40_Y34_N36
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Mux8~2_combout\ & ( \Mux8~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & ((\Mux0~0_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\Mux8~2_combout\ & ( \Mux8~4_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (\Mux23~0_combout\ & \Y_LorS_Ext[31]~0_combout\)) ) ) ) # ( \Mux8~2_combout\ & ( !\Mux8~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux8~2_combout\ & ( 
-- !\Mux8~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101000000010000000100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux8~2_combout\,
	dataf => \ALT_INV_Mux8~4_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X35_Y37_N10
\Add|S[56]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[56]~3_combout\ = ( \A[56]~input_o\ & ( !\AddnSub~input_o\ $ (\B[56]~input_o\) ) ) # ( !\A[56]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Add|S[56]~3_combout\);

-- Location: LABCELL_X35_Y37_N12
\Add|S[56]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(56) = ( \Add|S[56]~3_combout\ & ( !\Add|C[56]~55_combout\ ) ) # ( !\Add|S[56]~3_combout\ & ( \Add|C[56]~55_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add|ALT_INV_C[56]~55_combout\,
	dataf => \Add|ALT_INV_S[56]~3_combout\,
	combout => \Add|S\(56));

-- Location: MLABCELL_X37_Y33_N0
\Shift|ll2[56]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[56]~57_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[53]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[55]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[54]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[56]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[56]~57_combout\);

-- Location: LABCELL_X38_Y37_N12
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Shift|ll2[52]~53_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[48]~49_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[44]~45_combout\))) ) ) ) # ( !\Shift|ll2[52]~53_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[48]~49_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[44]~45_combout\))) ) ) ) # ( \Shift|ll2[52]~53_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[56]~57_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[52]~53_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|ll2[56]~57_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[48]~49_combout\,
	datac => \Shift|ALT_INV_ll2[44]~45_combout\,
	datad => \Shift|ALT_INV_ll2[56]~57_combout\,
	datae => \Shift|ALT_INV_ll2[52]~53_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X39_Y37_N32
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Shift|ll4[8]~8_combout\ & ( \B[4]~input_o\ & ( (\B[5]~input_o\) # (\Shift|ll4[40]~40_combout\) ) ) ) # ( !\Shift|ll4[8]~8_combout\ & ( \B[4]~input_o\ & ( (\Shift|ll4[40]~40_combout\ & !\B[5]~input_o\) ) ) ) # ( 
-- \Shift|ll4[8]~8_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Mux7~0_combout\))) # (\B[5]~input_o\ & (\Shift|ll4[24]~24_combout\)) ) ) ) # ( !\Shift|ll4[8]~8_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Mux7~0_combout\))) # 
-- (\B[5]~input_o\ & (\Shift|ll4[24]~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[24]~24_combout\,
	datab => \Shift|ALT_INV_ll4[40]~40_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \Shift|ALT_INV_ll4[8]~8_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X39_Y37_N38
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Add|S\(56) & ( \Mux7~1_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\Mux23~1_combout\ & (\Y_R[1]~34_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\)))) ) ) ) # ( !\Add|S\(56) & ( \Mux7~1_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\Mux23~1_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~34_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) ) # ( \Add|S\(56) & ( !\Mux7~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux23~1_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~34_combout\)) # (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) ) # ( !\Add|S\(56) & ( !\Mux7~1_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & (\Y_R[1]~34_combout\)) # 
-- (\Mux23~1_combout\ & ((\Y_R[1]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Y_R[1]~34_combout\,
	datad => \ALT_INV_Y_R[1]~25_combout\,
	datae => \Add|ALT_INV_S\(56),
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X40_Y34_N34
\Mux7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( \B[56]~input_o\ & ( \A[56]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[56]~input_o\ & ( \A[56]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[56]~input_o\ & ( !\A[56]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[56]~input_o\ & ( !\A[56]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000110011001000100011001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LABCELL_X40_Y34_N22
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Mux7~2_combout\ & ( \Mux7~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux7~2_combout\ & ( \Mux7~4_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (\Mux23~0_combout\ & \Y_LorS_Ext[31]~0_combout\)) ) ) ) # ( \Mux7~2_combout\ & ( !\Mux7~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux7~2_combout\ & ( 
-- !\Mux7~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101000000000000010100010000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datae => \ALT_INV_Mux7~2_combout\,
	dataf => \ALT_INV_Mux7~4_combout\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X35_Y37_N0
\Add|S[57]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(57) = ( \A[57]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[57]~input_o\ $ (!\Add|C[57]~56_combout\)) ) ) # ( !\A[57]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[57]~input_o\ $ (\Add|C[57]~56_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \Add|ALT_INV_C[57]~56_combout\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \Add|S\(57));

-- Location: MLABCELL_X37_Y33_N26
\Shift|ll2[57]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~58_combout\ = ( \B[1]~input_o\ & ( \A[55]~input_o\ & ( (!\B[0]~input_o\) # (\A[54]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[55]~input_o\ & ( (!\B[0]~input_o\ & (\A[57]~input_o\)) # (\B[0]~input_o\ & ((\A[56]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[55]~input_o\ & ( (\B[0]~input_o\ & \A[54]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[55]~input_o\ & ( (!\B[0]~input_o\ & (\A[57]~input_o\)) # (\B[0]~input_o\ & ((\A[56]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \Shift|ll2[57]~58_combout\);

-- Location: MLABCELL_X34_Y33_N0
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Shift|ll2[57]~58_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[49]~50_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[45]~46_combout\)) ) ) ) # ( !\Shift|ll2[57]~58_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[49]~50_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[45]~46_combout\)) ) ) ) # ( \Shift|ll2[57]~58_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[53]~54_combout\) ) ) ) # ( !\Shift|ll2[57]~58_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[53]~54_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[53]~54_combout\,
	datab => \Shift|ALT_INV_ll2[45]~46_combout\,
	datac => \Shift|ALT_INV_ll2[49]~50_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[57]~58_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X31_Y36_N32
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \B[5]~input_o\ & ( \B[4]~input_o\ & ( \Shift|ll4[9]~9_combout\ ) ) ) # ( !\B[5]~input_o\ & ( \B[4]~input_o\ & ( \Shift|ll4[41]~41_combout\ ) ) ) # ( \B[5]~input_o\ & ( !\B[4]~input_o\ & ( \Shift|ll4[25]~25_combout\ ) ) ) # ( 
-- !\B[5]~input_o\ & ( !\B[4]~input_o\ & ( \Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[9]~9_combout\,
	datab => \Shift|ALT_INV_ll4[41]~41_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \Shift|ALT_INV_ll4[25]~25_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X31_Y36_N18
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Y_R[1]~35_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\Y_R[1]~35_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~25_combout\ & \Mux23~1_combout\) ) ) ) # ( \Y_R[1]~35_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux6~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(57))) ) ) ) # ( !\Y_R[1]~35_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux23~1_combout\ & ((\Mux6~1_combout\))) # (\Mux23~1_combout\ & (\Add|S\(57))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \Add|ALT_INV_S\(57),
	datad => \ALT_INV_Mux6~1_combout\,
	datae => \ALT_INV_Y_R[1]~35_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X40_Y32_N18
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \B[57]~input_o\ & ( \A[57]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[57]~input_o\ & ( \A[57]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[57]~input_o\ & ( !\A[57]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[57]~input_o\ & ( !\A[57]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100010000000011111001000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Mux30~0_combout\,
	datae => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X40_Y32_N8
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \Mux6~2_combout\ & ( \Mux6~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux6~2_combout\ & ( \Mux6~4_combout\ & ( 
-- (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\ & !\FuncClass[1]~input_o\)) ) ) ) # ( \Mux6~2_combout\ & ( !\Mux6~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux6~2_combout\ & ( 
-- !\Mux6~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000000000011000000000100011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_Mux6~2_combout\,
	dataf => \ALT_INV_Mux6~4_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X37_Y33_N30
\Shift|ll2[58]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[58]~59_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[55]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[57]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[58]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[58]~59_combout\);

-- Location: LABCELL_X35_Y35_N14
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[46]~47_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[50]~51_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[54]~55_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|ll2[58]~59_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[54]~55_combout\,
	datab => \Shift|ALT_INV_ll2[50]~51_combout\,
	datac => \Shift|ALT_INV_ll2[58]~59_combout\,
	datad => \Shift|ALT_INV_ll2[46]~47_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X39_Y34_N38
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[10]~10_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[26]~26_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[42]~42_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Mux5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[26]~26_combout\,
	datab => \Shift|ALT_INV_ll4[10]~10_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \Shift|ALT_INV_ll4[42]~42_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X40_Y32_N14
\Add|S[58]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(58) = ( \A[58]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[58]~57_combout\ $ (!\B[58]~input_o\)) ) ) # ( !\A[58]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[58]~57_combout\ $ (\B[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[58]~57_combout\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Add|S\(58));

-- Location: LABCELL_X40_Y32_N36
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~1_combout\ & ( \Add|S\(58) & ( (!\ShiftFN[1]~input_o\) # ((!\Mux23~1_combout\ & ((\Y_R[1]~36_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\))) ) ) ) # ( !\Mux5~1_combout\ & ( \Add|S\(58) & ( (!\ShiftFN[1]~input_o\ & 
-- (((\Mux23~1_combout\)))) # (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & ((\Y_R[1]~36_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)))) ) ) ) # ( \Mux5~1_combout\ & ( !\Add|S\(58) & ( (!\ShiftFN[1]~input_o\ & (((!\Mux23~1_combout\)))) # 
-- (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & ((\Y_R[1]~36_combout\))) # (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)))) ) ) ) # ( !\Mux5~1_combout\ & ( !\Add|S\(58) & ( (\ShiftFN[1]~input_o\ & ((!\Mux23~1_combout\ & ((\Y_R[1]~36_combout\))) # 
-- (\Mux23~1_combout\ & (\Y_R[1]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Y_R[1]~25_combout\,
	datac => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_Y_R[1]~36_combout\,
	datae => \ALT_INV_Mux5~1_combout\,
	dataf => \Add|ALT_INV_S\(58),
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X40_Y32_N16
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \B[58]~input_o\ & ( \A[58]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[58]~input_o\ & ( \A[58]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[58]~input_o\ & ( !\A[58]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[58]~input_o\ & ( !\A[58]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000001000011110000100100001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X40_Y32_N10
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux5~2_combout\ & ( \Mux5~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux5~2_combout\ & ( \Mux5~4_combout\ & ( 
-- (\Mux23~0_combout\ & (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\)) ) ) ) # ( \Mux5~2_combout\ & ( !\Mux5~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux5~2_combout\ & ( 
-- !\Mux5~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000001100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datae => \ALT_INV_Mux5~2_combout\,
	dataf => \ALT_INV_Mux5~4_combout\,
	combout => \Mux5~3_combout\);

-- Location: MLABCELL_X37_Y33_N14
\Shift|ll2[59]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[59]~60_combout\ = ( \A[56]~input_o\ & ( \B[0]~input_o\ & ( (\A[58]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[56]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[58]~input_o\) ) ) ) # ( \A[56]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\))) ) ) ) # ( !\A[56]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[59]~60_combout\);

-- Location: LABCELL_X35_Y36_N32
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Shift|ll2[51]~52_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[47]~48_combout\) ) ) ) # ( !\Shift|ll2[51]~52_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[47]~48_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|ll2[51]~52_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[59]~60_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[55]~56_combout\))) ) ) ) # ( !\Shift|ll2[51]~52_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[59]~60_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[55]~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[59]~60_combout\,
	datab => \Shift|ALT_INV_ll2[47]~48_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[55]~56_combout\,
	datae => \Shift|ALT_INV_ll2[51]~52_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X32_Y38_N36
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \B[4]~input_o\ & ( \Mux4~0_combout\ & ( (!\B[5]~input_o\ & (\Shift|ll4[43]~43_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[11]~11_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \Mux4~0_combout\ & ( (!\B[5]~input_o\) # 
-- (\Shift|ll4[27]~27_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Mux4~0_combout\ & ( (!\B[5]~input_o\ & (\Shift|ll4[43]~43_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[11]~11_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\Mux4~0_combout\ & ( 
-- (\Shift|ll4[27]~27_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[43]~43_combout\,
	datab => \Shift|ALT_INV_ll4[27]~27_combout\,
	datac => \Shift|ALT_INV_ll4[11]~11_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X40_Y32_N12
\Add|S[59]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[59]~4_combout\ = ( \A[59]~input_o\ & ( !\AddnSub~input_o\ $ (\B[59]~input_o\) ) ) # ( !\A[59]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[59]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \Add|S[59]~4_combout\);

-- Location: LABCELL_X40_Y32_N20
\Add|S[59]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(59) = !\Add|S[59]~4_combout\ $ (!\Add|C[59]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[59]~4_combout\,
	datab => \Add|ALT_INV_C[59]~58_combout\,
	combout => \Add|S\(59));

-- Location: LABCELL_X40_Y32_N26
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux23~1_combout\ & ( \Add|S\(59) & ( (!\ShiftFN[1]~input_o\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\Mux23~1_combout\ & ( \Add|S\(59) & ( (!\ShiftFN[1]~input_o\ & (\Mux4~1_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~37_combout\))) ) ) 
-- ) # ( \Mux23~1_combout\ & ( !\Add|S\(59) & ( (\ShiftFN[1]~input_o\ & \Y_R[1]~25_combout\) ) ) ) # ( !\Mux23~1_combout\ & ( !\Add|S\(59) & ( (!\ShiftFN[1]~input_o\ & (\Mux4~1_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Y_R[1]~25_combout\,
	datad => \ALT_INV_Y_R[1]~37_combout\,
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \Add|ALT_INV_S\(59),
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X40_Y32_N32
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \B[59]~input_o\ & ( \A[59]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[59]~input_o\ & ( \A[59]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[59]~input_o\ & ( !\A[59]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[59]~input_o\ & ( !\A[59]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000001000011110000100100001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LABCELL_X40_Y32_N28
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Mux4~2_combout\ & ( \Mux4~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux4~2_combout\ & ( \Mux4~4_combout\ & ( 
-- (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\ & !\FuncClass[1]~input_o\)) ) ) ) # ( \Mux4~2_combout\ & ( !\Mux4~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux4~2_combout\ & ( 
-- !\Mux4~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000000000011000000000100011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_Mux4~2_combout\,
	dataf => \ALT_INV_Mux4~4_combout\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X37_Y33_N38
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[57]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[59]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[58]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( 
-- \A[60]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X38_Y37_N38
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Shift|ll2[52]~53_combout\ & ( \Shift|ll2[56]~57_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Mux3~0_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[48]~49_combout\)))) ) ) ) # ( 
-- !\Shift|ll2[52]~53_combout\ & ( \Shift|ll2[56]~57_combout\ & ( (!\B[2]~input_o\ & (\Mux3~0_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[48]~49_combout\)))) ) ) ) # ( \Shift|ll2[52]~53_combout\ & ( 
-- !\Shift|ll2[56]~57_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Mux3~0_combout\))) # (\B[2]~input_o\ & (((\Shift|ll2[48]~49_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\Shift|ll2[52]~53_combout\ & ( !\Shift|ll2[56]~57_combout\ & ( (!\B[2]~input_o\ 
-- & (\Mux3~0_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\Shift|ll2[48]~49_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \Shift|ALT_INV_ll2[48]~49_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[52]~53_combout\,
	dataf => \Shift|ALT_INV_ll2[56]~57_combout\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X37_Y37_N36
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[12]~12_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[28]~28_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[44]~44_combout\ ) ) ) # ( 
-- !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~1_combout\,
	datab => \Shift|ALT_INV_ll4[12]~12_combout\,
	datac => \Shift|ALT_INV_ll4[44]~44_combout\,
	datad => \Shift|ALT_INV_ll4[28]~28_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X40_Y32_N4
\Add|S[60]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(60) = ( \A[60]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[60]~59_combout\ $ (!\B[60]~input_o\)) ) ) # ( !\A[60]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[60]~59_combout\ $ (\B[60]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[60]~59_combout\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Add|S\(60));

-- Location: LABCELL_X40_Y35_N14
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \Add|S\(60) & ( \Y_R[1]~25_combout\ & ( ((!\ShiftFN[1]~input_o\ & (\Mux3~2_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~38_combout\)))) # (\Mux23~1_combout\) ) ) ) # ( !\Add|S\(60) & ( \Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ 
-- & (\Mux3~2_combout\ & ((!\Mux23~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\) # (\Y_R[1]~38_combout\)))) ) ) ) # ( \Add|S\(60) & ( !\Y_R[1]~25_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux23~1_combout\)) # (\Mux3~2_combout\))) # 
-- (\ShiftFN[1]~input_o\ & (((\Y_R[1]~38_combout\ & !\Mux23~1_combout\)))) ) ) ) # ( !\Add|S\(60) & ( !\Y_R[1]~25_combout\ & ( (!\Mux23~1_combout\ & ((!\ShiftFN[1]~input_o\ & (\Mux3~2_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux3~2_combout\,
	datac => \ALT_INV_Y_R[1]~38_combout\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \Add|ALT_INV_S\(60),
	dataf => \ALT_INV_Y_R[1]~25_combout\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X40_Y32_N34
\Mux3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( \B[60]~input_o\ & ( \A[60]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[60]~input_o\ & ( \A[60]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[60]~input_o\ & ( !\A[60]~input_o\ & ( (!\Mux30~0_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[60]~input_o\ & ( !\A[60]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100010000000011111001000000001111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Mux30~0_combout\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LABCELL_X40_Y32_N30
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \Mux3~3_combout\ & ( \Mux3~5_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\ & (\Mux0~0_combout\)) # (\Mux23~0_combout\ & ((\Y_LorS_Ext[31]~0_combout\))))) ) ) ) # ( !\Mux3~3_combout\ & ( \Mux3~5_combout\ & ( 
-- (\Mux23~0_combout\ & (!\FuncClass[1]~input_o\ & \Y_LorS_Ext[31]~0_combout\)) ) ) ) # ( \Mux3~3_combout\ & ( !\Mux3~5_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) ) # ( !\Mux3~3_combout\ & ( 
-- !\Mux3~5_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux23~0_combout\) # (\Y_LorS_Ext[31]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000001100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datae => \ALT_INV_Mux3~3_combout\,
	dataf => \ALT_INV_Mux3~5_combout\,
	combout => \Mux3~4_combout\);

-- Location: LABCELL_X40_Y35_N0
\Add|S[61]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(61) = ( \Add|C[61]~60_combout\ & ( !\AddnSub~input_o\ $ (!\B[61]~input_o\ $ (!\A[61]~input_o\)) ) ) # ( !\Add|C[61]~60_combout\ & ( !\AddnSub~input_o\ $ (!\B[61]~input_o\ $ (\A[61]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	dataf => \Add|ALT_INV_C[61]~60_combout\,
	combout => \Add|S\(61));

-- Location: MLABCELL_X34_Y33_N6
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A[58]~input_o\ & ( \B[0]~input_o\ & ( (\A[60]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[58]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[60]~input_o\) ) ) ) # ( \A[58]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[61]~input_o\)) # (\B[1]~input_o\ & ((\A[59]~input_o\))) ) ) ) # ( !\A[58]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[61]~input_o\)) # (\B[1]~input_o\ & ((\A[59]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X34_Y33_N8
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Shift|ll2[57]~58_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[53]~54_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[49]~50_combout\))) ) ) ) # ( !\Shift|ll2[57]~58_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[53]~54_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[49]~50_combout\))) ) ) ) # ( \Shift|ll2[57]~58_combout\ & ( !\B[3]~input_o\ & ( (\B[2]~input_o\) # (\Mux2~0_combout\) ) ) ) # ( !\Shift|ll2[57]~58_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Mux2~0_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[53]~54_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \Shift|ALT_INV_ll2[49]~50_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[57]~58_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X32_Y36_N16
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Shift|ll4[29]~29_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ll4[45]~45_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[13]~13_combout\))) ) ) ) # ( !\Shift|ll4[29]~29_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & 
-- (\Shift|ll4[45]~45_combout\)) # (\B[5]~input_o\ & ((\Shift|ll4[13]~13_combout\))) ) ) ) # ( \Shift|ll4[29]~29_combout\ & ( !\B[4]~input_o\ & ( (\B[5]~input_o\) # (\Mux2~1_combout\) ) ) ) # ( !\Shift|ll4[29]~29_combout\ & ( !\B[4]~input_o\ & ( 
-- (\Mux2~1_combout\ & !\B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[45]~45_combout\,
	datab => \Shift|ALT_INV_ll4[13]~13_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ll4[29]~29_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X40_Y35_N36
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Mux23~1_combout\ & ( \Y_R[1]~39_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(61))) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( !\Mux23~1_combout\ & ( \Y_R[1]~39_combout\ & ( (\ShiftFN[1]~input_o\) # 
-- (\Mux2~2_combout\) ) ) ) # ( \Mux23~1_combout\ & ( !\Y_R[1]~39_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(61))) # (\ShiftFN[1]~input_o\ & ((\Y_R[1]~25_combout\))) ) ) ) # ( !\Mux23~1_combout\ & ( !\Y_R[1]~39_combout\ & ( (\Mux2~2_combout\ & 
-- !\ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(61),
	datab => \ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_Y_R[1]~25_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_Y_R[1]~39_combout\,
	combout => \Mux2~3_combout\);

-- Location: LABCELL_X40_Y35_N16
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \B[61]~input_o\ & ( \FuncClass[0]~input_o\ & ( (\LogicFN[0]~input_o\ & (!\Mux30~0_combout\ & (!\LogicFN[1]~input_o\ $ (!\A[61]~input_o\)))) ) ) ) # ( !\B[61]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\Mux30~0_combout\ & 
-- ((!\A[61]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[61]~input_o\ & ( !\FuncClass[0]~input_o\ & ( !\Mux30~0_combout\ ) ) ) # ( !\B[61]~input_o\ & ( !\FuncClass[0]~input_o\ & ( !\Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100001000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LABCELL_X40_Y34_N28
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux0~0_combout\ & ( (!\Mux23~0_combout\ & (((!\Mux2~5_combout\)) # (\Mux2~3_combout\))) # (\Mux23~0_combout\ & (((\Y_LorS_Ext[31]~0_combout\)))) ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\Mux0~0_combout\ & ( 
-- (!\Mux23~0_combout\ & ((!\Mux2~5_combout\))) # (\Mux23~0_combout\ & (\Y_LorS_Ext[31]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011000000000000000011001111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux2~5_combout\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X40_Y35_N6
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \B[62]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[62]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[62]~input_o\ & ( (\A[62]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X40_Y35_N8
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux23~0_combout\ & ( ((\FuncClass[0]~input_o\ & \Mux1~4_combout\)) # (\Y_LorS_Ext[31]~0_combout\) ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\Mux23~0_combout\ & ( ((\FuncClass[0]~input_o\ & \Mux1~4_combout\)) 
-- # (\Mux30~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111000000000000000000001111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Y_LorS_Ext[31]~0_combout\,
	datad => \ALT_INV_Mux1~4_combout\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux1~5_combout\);

-- Location: LABCELL_X40_Y35_N30
\Add|S[62]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(62) = ( \B[62]~input_o\ & ( !\Add|C[62]~61_combout\ $ (!\AddnSub~input_o\ $ (!\A[62]~input_o\)) ) ) # ( !\B[62]~input_o\ & ( !\Add|C[62]~61_combout\ $ (!\AddnSub~input_o\ $ (\A[62]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[62]~61_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \Add|S\(62));

-- Location: MLABCELL_X34_Y33_N12
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[61]~input_o\))) # (\B[1]~input_o\ & (\A[59]~input_o\)) ) ) ) # ( !\A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[61]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[59]~input_o\)) ) ) ) # ( \A[62]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[60]~input_o\) ) ) ) # ( !\A[62]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[60]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X35_Y35_N16
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux1~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[54]~55_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[50]~51_combout\))) ) ) ) # ( !\Mux1~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[54]~55_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[50]~51_combout\))) ) ) ) # ( \Mux1~0_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[58]~59_combout\) ) ) ) # ( !\Mux1~0_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[58]~59_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[54]~55_combout\,
	datab => \Shift|ALT_INV_ll2[50]~51_combout\,
	datac => \Shift|ALT_INV_ll2[58]~59_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X32_Y35_N18
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \B[4]~input_o\ & ( \Shift|ll4[46]~46_combout\ & ( (!\B[5]~input_o\) # (\Shift|ll4[14]~14_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ll4[46]~46_combout\ & ( (!\B[5]~input_o\ & ((\Mux1~1_combout\))) # (\B[5]~input_o\ & 
-- (\Shift|ll4[30]~30_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ll4[46]~46_combout\ & ( (\B[5]~input_o\ & \Shift|ll4[14]~14_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\Shift|ll4[46]~46_combout\ & ( (!\B[5]~input_o\ & ((\Mux1~1_combout\))) # 
-- (\B[5]~input_o\ & (\Shift|ll4[30]~30_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[30]~30_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ll4[14]~14_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ll4[46]~46_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X40_Y35_N20
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~40_combout\ & ( (!\Mux23~1_combout\) # (\Y_R[1]~25_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_R[1]~40_combout\ & ( (!\Mux23~1_combout\ & ((\Mux1~2_combout\))) # (\Mux23~1_combout\ & 
-- (\Add|S\(62))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y_R[1]~40_combout\ & ( (\Y_R[1]~25_combout\ & \Mux23~1_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y_R[1]~40_combout\ & ( (!\Mux23~1_combout\ & ((\Mux1~2_combout\))) # (\Mux23~1_combout\ & 
-- (\Add|S\(62))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~25_combout\,
	datab => \Add|ALT_INV_S\(62),
	datac => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_Mux1~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_R[1]~40_combout\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X40_Y35_N4
\Mux1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( \Mux1~3_combout\ & ( ((\Mux0~0_combout\ & !\FuncClass[1]~input_o\)) # (\Mux1~5_combout\) ) ) # ( !\Mux1~3_combout\ & ( \Mux1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux1~5_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => \Mux1~6_combout\);

-- Location: LABCELL_X30_Y34_N10
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \B[63]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[63]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[63]~input_o\ & ( (\A[63]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: MLABCELL_X34_Y33_N38
\Shift|ll2[63]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[63]~61_combout\ = ( \A[62]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[60]~input_o\) ) ) ) # ( !\A[62]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[60]~input_o\) ) ) ) # ( \A[62]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[63]~input_o\))) # (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) ) # ( !\A[62]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[63]~input_o\))) # (\B[1]~input_o\ & (\A[61]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[63]~61_combout\);

-- Location: LABCELL_X35_Y36_N16
\Shift|ll4[63]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[63]~48_combout\ = ( \Shift|ll2[51]~52_combout\ & ( \B[3]~input_o\ & ( (\Shift|ll2[55]~56_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ll2[51]~52_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[55]~56_combout\) ) ) ) # ( 
-- \Shift|ll2[51]~52_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[63]~61_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[59]~60_combout\)) ) ) ) # ( !\Shift|ll2[51]~52_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[63]~61_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[59]~60_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[59]~60_combout\,
	datab => \Shift|ALT_INV_ll2[63]~61_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[55]~56_combout\,
	datae => \Shift|ALT_INV_ll2[51]~52_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[63]~48_combout\);

-- Location: MLABCELL_X34_Y34_N16
\Shift|Y_LL[63]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~0_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[15]~15_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ll4[31]~31_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[47]~47_combout\ ) ) ) # 
-- ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ll4[63]~48_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[63]~48_combout\,
	datab => \Shift|ALT_INV_ll4[47]~47_combout\,
	datac => \Shift|ALT_INV_ll4[15]~15_combout\,
	datad => \Shift|ALT_INV_ll4[31]~31_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Shift|Y_LL[63]~0_combout\);

-- Location: LABCELL_X40_Y38_N18
\Add|S[63]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[63]~5_combout\ = ( \AddnSub~input_o\ & ( !\A[63]~input_o\ $ (\B[63]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[63]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[63]~5_combout\);

-- Location: MLABCELL_X34_Y34_N12
\Add|S[63]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(63) = ( \Add|S[63]~5_combout\ & ( !\Add|C[63]~62_combout\ ) ) # ( !\Add|S[63]~5_combout\ & ( \Add|C[63]~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add|ALT_INV_C[63]~62_combout\,
	dataf => \Add|ALT_INV_S[63]~5_combout\,
	combout => \Add|S\(63));

-- Location: MLABCELL_X34_Y34_N0
\Y_ShiftOrArith[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~1_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(63))))) # (\ShiftFN[0]~input_o\ & (\Shift|Y_LL[63]~0_combout\)) ) ) # ( \ShiftFN[1]~input_o\ & ( ((\A[63]~input_o\ & (((\Mux62~0_combout\ & 
-- \Shift|ra4[62]~4_combout\)) # (\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000000000101010100011011000110110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_Y_LL[63]~0_combout\,
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Shift|ALT_INV_ra4[62]~4_combout\,
	datag => \Add|ALT_INV_S\(63),
	combout => \Y_ShiftOrArith[31]~1_combout\);

-- Location: LABCELL_X30_Y34_N36
\Mux0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \ExtWord~input_o\ & ( \FuncClass[0]~input_o\ & ( (\Logic|Mux0~0_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( !\ExtWord~input_o\ & ( \FuncClass[0]~input_o\ & ( (\Logic|Mux0~0_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( 
-- \ExtWord~input_o\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Mux32~0_combout\) ) ) ) # ( !\ExtWord~input_o\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[31]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux32~0_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~1_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X34_Y40_N28
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add|S\(1) & ( (!\Add|S\(3) & (!\Add|S\(2) & (!\A[0]~input_o\ $ (\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Add|ALT_INV_S\(3),
	datad => \Add|ALT_INV_S\(2),
	dataf => \Add|ALT_INV_S\(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X40_Y36_N16
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add|S\(6) & ( !\Add|S\(4) & ( (!\Add|S\(5) & (!\Add|S\(7) & (\Equal0~0_combout\ & !\Add|S\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(5),
	datab => \Add|ALT_INV_S\(7),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \Add|ALT_INV_S\(8),
	datae => \Add|ALT_INV_S\(6),
	dataf => \Add|ALT_INV_S\(4),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X40_Y40_N38
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add|S\(9) & ( (!\Add|S\(11) & (!\Add|S\(12) & (!\Add|S\(10) & \Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(11),
	datab => \Add|ALT_INV_S\(12),
	datac => \Add|ALT_INV_S\(10),
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \Add|ALT_INV_S\(9),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X34_Y39_N16
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add|S\(14) & ( \Equal0~2_combout\ & ( (!\Add|S\(15) & (!\Add|S\(16) & !\Add|S\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_S\(15),
	datac => \Add|ALT_INV_S\(16),
	datad => \Add|ALT_INV_S\(13),
	datae => \Add|ALT_INV_S\(14),
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X35_Y41_N16
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Add|S\(18) & ( \Equal0~3_combout\ & ( (!\Add|S\(19) & (!\Add|S\(17) & !\Add|S\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_S\(19),
	datac => \Add|ALT_INV_S\(17),
	datad => \Add|ALT_INV_S\(20),
	datae => \Add|ALT_INV_S\(18),
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X32_Y40_N36
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\Add|S\(21) & ( !\Add|S\(24) & ( (\Equal0~4_combout\ & (!\Add|S\(22) & !\Add|S\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Add|ALT_INV_S\(22),
	datac => \Add|ALT_INV_S\(23),
	datae => \Add|ALT_INV_S\(21),
	dataf => \Add|ALT_INV_S\(24),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X27_Y40_N36
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( (!\Add|S\(26) & (!\Add|S\(27) & (!\Add|S\(28) & !\Add|S\(25)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(26),
	datab => \Add|ALT_INV_S\(27),
	datac => \Add|ALT_INV_S\(28),
	datad => \Add|ALT_INV_S\(25),
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X27_Y40_N16
\Equal0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Add|S\(29) & ( (!\Add|S\(31) & (!\Add|S\(30) & (!\Add|S\(32) & \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(31),
	datab => \Add|ALT_INV_S\(30),
	datac => \Add|ALT_INV_S\(32),
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \Add|ALT_INV_S\(29),
	combout => \Equal0~7_combout\);

-- Location: MLABCELL_X29_Y36_N28
\Equal0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( !\Add|S\(33) & ( (!\Add|S\(35) & (\Equal0~7_combout\ & (!\Add|S\(34) & !\Add|S\(36)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(35),
	datab => \ALT_INV_Equal0~7_combout\,
	datac => \Add|ALT_INV_S\(34),
	datad => \Add|ALT_INV_S\(36),
	dataf => \Add|ALT_INV_S\(33),
	combout => \Equal0~8_combout\);

-- Location: LABCELL_X35_Y34_N16
\Equal0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( !\Add|S\(40) & ( (!\Add|S\(38) & (\Equal0~8_combout\ & (!\Add|S\(37) & !\Add|S\(39)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(38),
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \Add|ALT_INV_S\(37),
	datad => \Add|ALT_INV_S\(39),
	dataf => \Add|ALT_INV_S\(40),
	combout => \Equal0~9_combout\);

-- Location: LABCELL_X35_Y34_N2
\Equal0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( !\Add|S\(43) & ( (!\Add|S\(44) & (\Equal0~9_combout\ & (!\Add|S\(42) & !\Add|S\(41)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(44),
	datab => \ALT_INV_Equal0~9_combout\,
	datac => \Add|ALT_INV_S\(42),
	datad => \Add|ALT_INV_S\(41),
	dataf => \Add|ALT_INV_S\(43),
	combout => \Equal0~10_combout\);

-- Location: MLABCELL_X31_Y34_N28
\Equal0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( !\Add|S\(46) & ( (\Equal0~10_combout\ & (!\Add|S\(45) & (!\Add|S[47]~0_combout\ $ (\Add|C[47]~46_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[47]~0_combout\,
	datab => \Add|ALT_INV_C[47]~46_combout\,
	datac => \ALT_INV_Equal0~10_combout\,
	datad => \Add|ALT_INV_S\(45),
	dataf => \Add|ALT_INV_S\(46),
	combout => \Equal0~11_combout\);

-- Location: MLABCELL_X29_Y34_N20
\Equal0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal0~11_combout\ & ( (!\Add|S\(48) & (!\Add|S\(49) & (!\Add|C[50]~49_combout\ $ (\Add|S[50]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[50]~49_combout\,
	datab => \Add|ALT_INV_S[50]~1_combout\,
	datac => \Add|ALT_INV_S\(48),
	datad => \Add|ALT_INV_S\(49),
	dataf => \ALT_INV_Equal0~11_combout\,
	combout => \Equal0~12_combout\);

-- Location: LABCELL_X40_Y34_N0
\Equal0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Add|S[53]~2_combout\ & ( (!\Add|S\(51) & (\Add|C[53]~52_combout\ & (!\Add|S\(52) & \Equal0~12_combout\))) ) ) # ( !\Add|S[53]~2_combout\ & ( (!\Add|S\(51) & (!\Add|C[53]~52_combout\ & (!\Add|S\(52) & \Equal0~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(51),
	datab => \Add|ALT_INV_C[53]~52_combout\,
	datac => \Add|ALT_INV_S\(52),
	datad => \ALT_INV_Equal0~12_combout\,
	dataf => \Add|ALT_INV_S[53]~2_combout\,
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X40_Y34_N14
\Equal0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( !\Add|S\(55) & ( (!\Add|S\(54) & (\Equal0~13_combout\ & (!\Add|C[56]~55_combout\ $ (\Add|S[56]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[56]~55_combout\,
	datab => \Add|ALT_INV_S[56]~3_combout\,
	datac => \Add|ALT_INV_S\(54),
	datad => \ALT_INV_Equal0~13_combout\,
	dataf => \Add|ALT_INV_S\(55),
	combout => \Equal0~14_combout\);

-- Location: LABCELL_X40_Y32_N22
\Equal0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( !\Add|S\(57) & ( (!\Add|S\(58) & (\Equal0~14_combout\ & (!\Add|S[59]~4_combout\ $ (\Add|C[59]~58_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[59]~4_combout\,
	datab => \Add|ALT_INV_C[59]~58_combout\,
	datac => \Add|ALT_INV_S\(58),
	datad => \ALT_INV_Equal0~14_combout\,
	dataf => \Add|ALT_INV_S\(57),
	combout => \Equal0~15_combout\);

-- Location: LABCELL_X40_Y35_N32
\Equal0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = ( !\Add|S\(60) & ( \Add|S[63]~5_combout\ & ( (!\Add|S\(61) & (!\Add|S\(62) & (\Equal0~15_combout\ & \Add|C[63]~62_combout\))) ) ) ) # ( !\Add|S\(60) & ( !\Add|S[63]~5_combout\ & ( (!\Add|S\(61) & (!\Add|S\(62) & (\Equal0~15_combout\ 
-- & !\Add|C[63]~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(61),
	datab => \Add|ALT_INV_S\(62),
	datac => \ALT_INV_Equal0~15_combout\,
	datad => \Add|ALT_INV_C[63]~62_combout\,
	datae => \Add|ALT_INV_S\(60),
	dataf => \Add|ALT_INV_S[63]~5_combout\,
	combout => \Equal0~16_combout\);

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


