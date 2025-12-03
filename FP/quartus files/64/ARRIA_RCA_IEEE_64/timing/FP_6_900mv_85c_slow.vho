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

-- DATE "12/02/2025 19:39:20"

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
-- Y[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add|C[32]~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Add|C[33]~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Add|C[34]~33_combout\ : std_logic;
SIGNAL \Add|C[35]~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Add|C[36]~35_combout\ : std_logic;
SIGNAL \Add|C[37]~36_combout\ : std_logic;
SIGNAL \Add|C[38]~37_combout\ : std_logic;
SIGNAL \Add|C[39]~38_combout\ : std_logic;
SIGNAL \Add|C[40]~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \Add|C[41]~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Add|C[42]~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \Add|C[43]~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \Add|C[44]~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Add|C[45]~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Add|C[46]~45_combout\ : std_logic;
SIGNAL \Add|C[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \Add|C[48]~47_combout\ : std_logic;
SIGNAL \Add|C[49]~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Add|C[50]~49_combout\ : std_logic;
SIGNAL \Add|C[51]~50_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Add|C[52]~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Add|C[53]~52_combout\ : std_logic;
SIGNAL \Add|C[54]~53_combout\ : std_logic;
SIGNAL \Add|C[55]~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Add|C[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Add|C[57]~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Add|C[58]~57_combout\ : std_logic;
SIGNAL \Add|C[59]~58_combout\ : std_logic;
SIGNAL \Add|C[60]~59_combout\ : std_logic;
SIGNAL \Add|C[61]~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \Add|C[62]~61_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Add|C[63]~62_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux62~4_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~30_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~35_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~37_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \Mux62~3_combout\ : std_logic;
SIGNAL \Mux62~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~51_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~54_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~45_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~46_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~41_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~42_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~43_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~55_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~56_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~57_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux60~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~74_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~72_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~73_combout\ : std_logic;
SIGNAL \Mux60~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~65_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~64_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~63_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~66_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~67_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~68_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~69_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~70_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~61_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~59_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~62_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~71_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux60~9_combout\ : std_logic;
SIGNAL \Mux60~11_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~76_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~77_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~75_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~7_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~80_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~79_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~78_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~83_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~81_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~82_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~84_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~86_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~85_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~88_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~87_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~89_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~91_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~90_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~92_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~95_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~94_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~93_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~13_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~97_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~96_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~98_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~99_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~101_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~100_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~103_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~104_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~102_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~106_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~107_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~105_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~109_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~108_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~110_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~1_combout\ : std_logic;
SIGNAL \Logic|Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux60~12_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Mux44~6_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux44~7_combout\ : std_logic;
SIGNAL \Mux44~8_combout\ : std_logic;
SIGNAL \Mux44~9_combout\ : std_logic;
SIGNAL \Mux44~10_combout\ : std_logic;
SIGNAL \Mux44~11_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~111_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~5_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add|S[44]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Logic|Mux16~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~112_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Add|S[48]~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Add|S[51]~2_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Add|S[52]~3_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Add|S[53]~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add|S[54]~5_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Add|S[55]~6_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add|S[56]~7_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add|S[57]~8_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add|S[58]~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add|S[59]~10_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Add|S[60]~11_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add|S[61]~12_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Add|S[62]~13_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~7_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add|S[40]~14_combout\ : std_logic;
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
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~19_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~16_combout\ : std_logic;
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
SIGNAL \Add|ALT_INV_S[40]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~7_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(63 DOWNTO 1);
SIGNAL \Shift|ALT_INV_ShiftLeft0~118_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~117_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~116_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[62]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[61]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[60]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~115_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[59]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~114_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[58]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~113_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[57]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~112_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[56]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[55]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~110_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[54]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~109_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[53]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~108_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[52]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[51]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~106_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[48]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~112_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[44]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[32]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[32]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[32]~3_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~111_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~53_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[16]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~110_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~109_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~108_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~107_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~106_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~105_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~104_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~103_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~102_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~101_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~100_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~99_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~98_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~97_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~96_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~95_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~94_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~93_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~92_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~91_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~90_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~89_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~88_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~87_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~86_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~85_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~84_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~83_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~82_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~81_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~80_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~79_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~78_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~77_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~76_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~74_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~73_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~72_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~71_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~70_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~69_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~68_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~67_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~66_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~65_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~64_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~63_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~62_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~61_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~60_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~59_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~57_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~56_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~54_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~53_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~52_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~51_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~50_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~49_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~48_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~47_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~46_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~45_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~44_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~43_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~42_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~41_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~40_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~38_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~37_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~35_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~34_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~33_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~32_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~31_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~30_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~29_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~28_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~27_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~26_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~25_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~20_combout\ : std_logic;
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
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~6_combout\ : std_logic;
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
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Equal0~19_combout\ <= NOT \Equal0~19_combout\;
\ALT_INV_Equal0~18_combout\ <= NOT \Equal0~18_combout\;
\ALT_INV_Equal0~17_combout\ <= NOT \Equal0~17_combout\;
\ALT_INV_Equal0~16_combout\ <= NOT \Equal0~16_combout\;
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
\Add|ALT_INV_S[40]~14_combout\ <= NOT \Add|S[40]~14_combout\;
\ALT_INV_Y_ShiftOrArith[31]~7_combout\ <= NOT \Y_ShiftOrArith[31]~7_combout\;
\Add|ALT_INV_S\(63) <= NOT \Add|S\(63);
\Shift|ALT_INV_ShiftLeft0~118_combout\ <= NOT \Shift|ShiftLeft0~118_combout\;
\Shift|ALT_INV_ShiftLeft0~117_combout\ <= NOT \Shift|ShiftLeft0~117_combout\;
\Shift|ALT_INV_ShiftLeft0~116_combout\ <= NOT \Shift|ShiftLeft0~116_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\Add|ALT_INV_S[62]~13_combout\ <= NOT \Add|S[62]~13_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\Add|ALT_INV_S[61]~12_combout\ <= NOT \Add|S[61]~12_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\Add|ALT_INV_S[60]~11_combout\ <= NOT \Add|S[60]~11_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\Shift|ALT_INV_ShiftLeft0~115_combout\ <= NOT \Shift|ShiftLeft0~115_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\Add|ALT_INV_S[59]~10_combout\ <= NOT \Add|S[59]~10_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\Shift|ALT_INV_ShiftLeft0~114_combout\ <= NOT \Shift|ShiftLeft0~114_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\Add|ALT_INV_S[58]~9_combout\ <= NOT \Add|S[58]~9_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\Shift|ALT_INV_ShiftLeft0~113_combout\ <= NOT \Shift|ShiftLeft0~113_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Add|ALT_INV_S[57]~8_combout\ <= NOT \Add|S[57]~8_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\Shift|ALT_INV_ShiftLeft0~112_combout\ <= NOT \Shift|ShiftLeft0~112_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Add|ALT_INV_S[56]~7_combout\ <= NOT \Add|S[56]~7_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\Shift|ALT_INV_ShiftLeft0~111_combout\ <= NOT \Shift|ShiftLeft0~111_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Add|ALT_INV_S[55]~6_combout\ <= NOT \Add|S[55]~6_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\Shift|ALT_INV_ShiftLeft0~110_combout\ <= NOT \Shift|ShiftLeft0~110_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Add|ALT_INV_S[54]~5_combout\ <= NOT \Add|S[54]~5_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\Shift|ALT_INV_ShiftLeft0~109_combout\ <= NOT \Shift|ShiftLeft0~109_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\Add|ALT_INV_S[53]~4_combout\ <= NOT \Add|S[53]~4_combout\;
\ALT_INV_Mux11~7_combout\ <= NOT \Mux11~7_combout\;
\ALT_INV_Mux11~6_combout\ <= NOT \Mux11~6_combout\;
\ALT_INV_Mux11~5_combout\ <= NOT \Mux11~5_combout\;
\Shift|ALT_INV_ShiftLeft0~108_combout\ <= NOT \Shift|ShiftLeft0~108_combout\;
\ALT_INV_Mux11~4_combout\ <= NOT \Mux11~4_combout\;
\Add|ALT_INV_S[52]~3_combout\ <= NOT \Add|S[52]~3_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\Shift|ALT_INV_ShiftLeft0~107_combout\ <= NOT \Shift|ShiftLeft0~107_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Add|ALT_INV_S[51]~2_combout\ <= NOT \Add|S[51]~2_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\Shift|ALT_INV_ShiftLeft0~106_combout\ <= NOT \Shift|ShiftLeft0~106_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Add|ALT_INV_S\(50) <= NOT \Add|S\(50);
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\ALT_INV_Mux14~4_combout\ <= NOT \Mux14~4_combout\;
\Shift|ALT_INV_ShiftLeft0~105_combout\ <= NOT \Shift|ShiftLeft0~105_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\Add|ALT_INV_S\(49) <= NOT \Add|S\(49);
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\Shift|ALT_INV_ShiftLeft0~104_combout\ <= NOT \Shift|ShiftLeft0~104_combout\;
\Shift|ALT_INV_ShiftLeft0~103_combout\ <= NOT \Shift|ShiftLeft0~103_combout\;
\Shift|ALT_INV_ShiftLeft0~102_combout\ <= NOT \Shift|ShiftLeft0~102_combout\;
\Add|ALT_INV_S[48]~1_combout\ <= NOT \Add|S[48]~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[31]~6_combout\ <= NOT \Y_ShiftOrArith[31]~6_combout\;
\Shift|ALT_INV_ShiftRight1~112_combout\ <= NOT \Shift|ShiftRight1~112_combout\;
\Shift|ALT_INV_ShiftRight0~20_combout\ <= NOT \Shift|ShiftRight0~20_combout\;
\Shift|ALT_INV_ShiftLeft0~101_combout\ <= NOT \Shift|ShiftLeft0~101_combout\;
\Shift|ALT_INV_ShiftLeft0~100_combout\ <= NOT \Shift|ShiftLeft0~100_combout\;
\Shift|ALT_INV_ShiftLeft0~99_combout\ <= NOT \Shift|ShiftLeft0~99_combout\;
\Add|ALT_INV_S\(47) <= NOT \Add|S\(47);
\Logic|ALT_INV_Mux16~0_combout\ <= NOT \Logic|Mux16~0_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\Shift|ALT_INV_ShiftLeft0~98_combout\ <= NOT \Shift|ShiftLeft0~98_combout\;
\Shift|ALT_INV_ShiftLeft0~97_combout\ <= NOT \Shift|ShiftLeft0~97_combout\;
\Add|ALT_INV_S\(46) <= NOT \Add|S\(46);
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~6_combout\ <= NOT \Mux18~6_combout\;
\ALT_INV_Mux18~5_combout\ <= NOT \Mux18~5_combout\;
\ALT_INV_Mux18~4_combout\ <= NOT \Mux18~4_combout\;
\Shift|ALT_INV_ShiftLeft0~96_combout\ <= NOT \Shift|ShiftLeft0~96_combout\;
\Shift|ALT_INV_ShiftLeft0~95_combout\ <= NOT \Shift|ShiftLeft0~95_combout\;
\Add|ALT_INV_S\(45) <= NOT \Add|S\(45);
\ALT_INV_Mux18~3_combout\ <= NOT \Mux18~3_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\Shift|ALT_INV_ShiftLeft0~94_combout\ <= NOT \Shift|ShiftLeft0~94_combout\;
\Shift|ALT_INV_ShiftLeft0~93_combout\ <= NOT \Shift|ShiftLeft0~93_combout\;
\Add|ALT_INV_S\(44) <= NOT \Add|S\(44);
\Add|ALT_INV_S[44]~0_combout\ <= NOT \Add|S[44]~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\Shift|ALT_INV_ShiftLeft0~92_combout\ <= NOT \Shift|ShiftLeft0~92_combout\;
\Shift|ALT_INV_ShiftLeft0~91_combout\ <= NOT \Shift|ShiftLeft0~91_combout\;
\Add|ALT_INV_S\(43) <= NOT \Add|S\(43);
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\Shift|ALT_INV_ShiftLeft0~90_combout\ <= NOT \Shift|ShiftLeft0~90_combout\;
\Shift|ALT_INV_ShiftLeft0~89_combout\ <= NOT \Shift|ShiftLeft0~89_combout\;
\Add|ALT_INV_S\(42) <= NOT \Add|S\(42);
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\Shift|ALT_INV_ShiftLeft0~88_combout\ <= NOT \Shift|ShiftLeft0~88_combout\;
\Shift|ALT_INV_ShiftLeft0~87_combout\ <= NOT \Shift|ShiftLeft0~87_combout\;
\Add|ALT_INV_S\(41) <= NOT \Add|S\(41);
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~3_combout\ <= NOT \Mux23~3_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\Shift|ALT_INV_ShiftLeft0~86_combout\ <= NOT \Shift|ShiftLeft0~86_combout\;
\Shift|ALT_INV_ShiftLeft0~85_combout\ <= NOT \Shift|ShiftLeft0~85_combout\;
\Add|ALT_INV_S\(40) <= NOT \Add|S\(40);
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\Shift|ALT_INV_ShiftLeft0~84_combout\ <= NOT \Shift|ShiftLeft0~84_combout\;
\Shift|ALT_INV_ShiftLeft0~83_combout\ <= NOT \Shift|ShiftLeft0~83_combout\;
\Add|ALT_INV_S\(39) <= NOT \Add|S\(39);
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\Shift|ALT_INV_ShiftLeft0~82_combout\ <= NOT \Shift|ShiftLeft0~82_combout\;
\Shift|ALT_INV_ShiftLeft0~81_combout\ <= NOT \Shift|ShiftLeft0~81_combout\;
\Add|ALT_INV_S\(38) <= NOT \Add|S\(38);
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\Shift|ALT_INV_ShiftLeft0~80_combout\ <= NOT \Shift|ShiftLeft0~80_combout\;
\Shift|ALT_INV_ShiftLeft0~79_combout\ <= NOT \Shift|ShiftLeft0~79_combout\;
\Add|ALT_INV_S\(37) <= NOT \Add|S\(37);
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\Shift|ALT_INV_ShiftLeft0~78_combout\ <= NOT \Shift|ShiftLeft0~78_combout\;
\Shift|ALT_INV_ShiftLeft0~77_combout\ <= NOT \Shift|ShiftLeft0~77_combout\;
\Add|ALT_INV_S\(36) <= NOT \Add|S\(36);
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\Shift|ALT_INV_ShiftLeft0~76_combout\ <= NOT \Shift|ShiftLeft0~76_combout\;
\Shift|ALT_INV_ShiftLeft0~75_combout\ <= NOT \Shift|ShiftLeft0~75_combout\;
\Add|ALT_INV_S\(35) <= NOT \Add|S\(35);
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\Shift|ALT_INV_ShiftLeft0~74_combout\ <= NOT \Shift|ShiftLeft0~74_combout\;
\Shift|ALT_INV_ShiftLeft0~73_combout\ <= NOT \Shift|ShiftLeft0~73_combout\;
\Add|ALT_INV_S\(34) <= NOT \Add|S\(34);
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~4_combout\ <= NOT \Mux30~4_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux30~3_combout\ <= NOT \Mux30~3_combout\;
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\Shift|ALT_INV_ShiftLeft0~72_combout\ <= NOT \Shift|ShiftLeft0~72_combout\;
\Shift|ALT_INV_ShiftLeft0~71_combout\ <= NOT \Shift|ShiftLeft0~71_combout\;
\Add|ALT_INV_S\(33) <= NOT \Add|S\(33);
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Y_ShiftOrArith[32]~5_combout\ <= NOT \Y_ShiftOrArith[32]~5_combout\;
\ALT_INV_Y_ShiftOrArith[32]~4_combout\ <= NOT \Y_ShiftOrArith[32]~4_combout\;
\Shift|ALT_INV_ShiftLeft0~70_combout\ <= NOT \Shift|ShiftLeft0~70_combout\;
\Shift|ALT_INV_ShiftLeft0~69_combout\ <= NOT \Shift|ShiftLeft0~69_combout\;
\Add|ALT_INV_S\(32) <= NOT \Add|S\(32);
\ALT_INV_Y_ShiftOrArith[32]~3_combout\ <= NOT \Y_ShiftOrArith[32]~3_combout\;
\Logic|ALT_INV_Mux31~0_combout\ <= NOT \Logic|Mux31~0_combout\;
\ALT_INV_Y_ShiftOrArith[31]~2_combout\ <= NOT \Y_ShiftOrArith[31]~2_combout\;
\Shift|ALT_INV_ShiftRight1~111_combout\ <= NOT \Shift|ShiftRight1~111_combout\;
\Shift|ALT_INV_ShiftRight0~19_combout\ <= NOT \Shift|ShiftRight0~19_combout\;
\Shift|ALT_INV_ShiftLeft0~68_combout\ <= NOT \Shift|ShiftLeft0~68_combout\;
\Shift|ALT_INV_ShiftLeft0~67_combout\ <= NOT \Shift|ShiftLeft0~67_combout\;
\Shift|ALT_INV_ShiftLeft0~66_combout\ <= NOT \Shift|ShiftLeft0~66_combout\;
\Add|ALT_INV_S\(31) <= NOT \Add|S\(31);
\Logic|ALT_INV_Mux32~0_combout\ <= NOT \Logic|Mux32~0_combout\;
\ALT_INV_Mux33~3_combout\ <= NOT \Mux33~3_combout\;
\ALT_INV_Mux33~2_combout\ <= NOT \Mux33~2_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\Shift|ALT_INV_ShiftLeft0~65_combout\ <= NOT \Shift|ShiftLeft0~65_combout\;
\Shift|ALT_INV_ShiftLeft0~64_combout\ <= NOT \Shift|ShiftLeft0~64_combout\;
\Add|ALT_INV_S\(30) <= NOT \Add|S\(30);
\ALT_INV_Mux34~3_combout\ <= NOT \Mux34~3_combout\;
\ALT_INV_Mux34~2_combout\ <= NOT \Mux34~2_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\Shift|ALT_INV_ShiftLeft0~63_combout\ <= NOT \Shift|ShiftLeft0~63_combout\;
\Shift|ALT_INV_ShiftLeft0~62_combout\ <= NOT \Shift|ShiftLeft0~62_combout\;
\Add|ALT_INV_S\(29) <= NOT \Add|S\(29);
\ALT_INV_Mux35~3_combout\ <= NOT \Mux35~3_combout\;
\ALT_INV_Mux35~2_combout\ <= NOT \Mux35~2_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\Shift|ALT_INV_ShiftLeft0~61_combout\ <= NOT \Shift|ShiftLeft0~61_combout\;
\Shift|ALT_INV_ShiftLeft0~60_combout\ <= NOT \Shift|ShiftLeft0~60_combout\;
\Add|ALT_INV_S\(28) <= NOT \Add|S\(28);
\ALT_INV_Mux36~3_combout\ <= NOT \Mux36~3_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\Shift|ALT_INV_ShiftLeft0~59_combout\ <= NOT \Shift|ShiftLeft0~59_combout\;
\Shift|ALT_INV_ShiftLeft0~58_combout\ <= NOT \Shift|ShiftLeft0~58_combout\;
\Add|ALT_INV_S\(27) <= NOT \Add|S\(27);
\ALT_INV_Mux37~3_combout\ <= NOT \Mux37~3_combout\;
\ALT_INV_Mux37~2_combout\ <= NOT \Mux37~2_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\Shift|ALT_INV_ShiftLeft0~57_combout\ <= NOT \Shift|ShiftLeft0~57_combout\;
\Shift|ALT_INV_ShiftLeft0~56_combout\ <= NOT \Shift|ShiftLeft0~56_combout\;
\Add|ALT_INV_S\(26) <= NOT \Add|S\(26);
\ALT_INV_Mux38~3_combout\ <= NOT \Mux38~3_combout\;
\ALT_INV_Mux38~2_combout\ <= NOT \Mux38~2_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\Shift|ALT_INV_ShiftLeft0~55_combout\ <= NOT \Shift|ShiftLeft0~55_combout\;
\Shift|ALT_INV_ShiftLeft0~54_combout\ <= NOT \Shift|ShiftLeft0~54_combout\;
\Add|ALT_INV_S\(25) <= NOT \Add|S\(25);
\ALT_INV_Mux39~3_combout\ <= NOT \Mux39~3_combout\;
\ALT_INV_Mux39~2_combout\ <= NOT \Mux39~2_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\Shift|ALT_INV_ShiftLeft0~53_combout\ <= NOT \Shift|ShiftLeft0~53_combout\;
\Shift|ALT_INV_ShiftLeft0~52_combout\ <= NOT \Shift|ShiftLeft0~52_combout\;
\Add|ALT_INV_S\(24) <= NOT \Add|S\(24);
\ALT_INV_Mux40~3_combout\ <= NOT \Mux40~3_combout\;
\ALT_INV_Mux40~2_combout\ <= NOT \Mux40~2_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\Shift|ALT_INV_ShiftLeft0~51_combout\ <= NOT \Shift|ShiftLeft0~51_combout\;
\Shift|ALT_INV_ShiftLeft0~50_combout\ <= NOT \Shift|ShiftLeft0~50_combout\;
\Add|ALT_INV_S\(23) <= NOT \Add|S\(23);
\ALT_INV_Mux41~3_combout\ <= NOT \Mux41~3_combout\;
\ALT_INV_Mux41~2_combout\ <= NOT \Mux41~2_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\Shift|ALT_INV_ShiftLeft0~49_combout\ <= NOT \Shift|ShiftLeft0~49_combout\;
\Shift|ALT_INV_ShiftLeft0~48_combout\ <= NOT \Shift|ShiftLeft0~48_combout\;
\Add|ALT_INV_S\(22) <= NOT \Add|S\(22);
\ALT_INV_Mux42~3_combout\ <= NOT \Mux42~3_combout\;
\ALT_INV_Mux42~2_combout\ <= NOT \Mux42~2_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\Shift|ALT_INV_ShiftLeft0~47_combout\ <= NOT \Shift|ShiftLeft0~47_combout\;
\Shift|ALT_INV_ShiftLeft0~46_combout\ <= NOT \Shift|ShiftLeft0~46_combout\;
\Add|ALT_INV_S\(21) <= NOT \Add|S\(21);
\ALT_INV_Mux43~3_combout\ <= NOT \Mux43~3_combout\;
\ALT_INV_Mux43~2_combout\ <= NOT \Mux43~2_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\Shift|ALT_INV_ShiftLeft0~45_combout\ <= NOT \Shift|ShiftLeft0~45_combout\;
\Shift|ALT_INV_ShiftLeft0~44_combout\ <= NOT \Shift|ShiftLeft0~44_combout\;
\Add|ALT_INV_S\(20) <= NOT \Add|S\(20);
\ALT_INV_Mux44~10_combout\ <= NOT \Mux44~10_combout\;
\ALT_INV_Mux44~9_combout\ <= NOT \Mux44~9_combout\;
\ALT_INV_Mux44~8_combout\ <= NOT \Mux44~8_combout\;
\ALT_INV_Mux44~7_combout\ <= NOT \Mux44~7_combout\;
\Shift|ALT_INV_ShiftLeft0~43_combout\ <= NOT \Shift|ShiftLeft0~43_combout\;
\Shift|ALT_INV_ShiftLeft0~42_combout\ <= NOT \Shift|ShiftLeft0~42_combout\;
\Add|ALT_INV_S\(19) <= NOT \Add|S\(19);
\ALT_INV_Mux45~3_combout\ <= NOT \Mux45~3_combout\;
\ALT_INV_Mux45~2_combout\ <= NOT \Mux45~2_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\Shift|ALT_INV_ShiftLeft0~41_combout\ <= NOT \Shift|ShiftLeft0~41_combout\;
\Shift|ALT_INV_ShiftLeft0~40_combout\ <= NOT \Shift|ShiftLeft0~40_combout\;
\Add|ALT_INV_S\(18) <= NOT \Add|S\(18);
\ALT_INV_Mux46~4_combout\ <= NOT \Mux46~4_combout\;
\ALT_INV_Mux46~3_combout\ <= NOT \Mux46~3_combout\;
\ALT_INV_Mux44~6_combout\ <= NOT \Mux44~6_combout\;
\ALT_INV_Mux44~5_combout\ <= NOT \Mux44~5_combout\;
\ALT_INV_Mux46~2_combout\ <= NOT \Mux46~2_combout\;
\ALT_INV_Mux44~4_combout\ <= NOT \Mux44~4_combout\;
\ALT_INV_Mux44~3_combout\ <= NOT \Mux44~3_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\Shift|ALT_INV_ShiftLeft0~39_combout\ <= NOT \Shift|ShiftLeft0~39_combout\;
\Shift|ALT_INV_ShiftLeft0~38_combout\ <= NOT \Shift|ShiftLeft0~38_combout\;
\Add|ALT_INV_S\(17) <= NOT \Add|S\(17);
\ALT_INV_Mux44~2_combout\ <= NOT \Mux44~2_combout\;
\ALT_INV_Mux60~12_combout\ <= NOT \Mux60~12_combout\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_Y_ShiftOrArith[16]~1_combout\ <= NOT \Y_ShiftOrArith[16]~1_combout\;
\Shift|ALT_INV_ShiftRight1~110_combout\ <= NOT \Shift|ShiftRight1~110_combout\;
\Shift|ALT_INV_ShiftRight0~18_combout\ <= NOT \Shift|ShiftRight0~18_combout\;
\Shift|ALT_INV_ShiftLeft0~37_combout\ <= NOT \Shift|ShiftLeft0~37_combout\;
\Shift|ALT_INV_ShiftLeft0~36_combout\ <= NOT \Shift|ShiftLeft0~36_combout\;
\Shift|ALT_INV_ShiftLeft0~35_combout\ <= NOT \Shift|ShiftLeft0~35_combout\;
\Shift|ALT_INV_ShiftLeft0~34_combout\ <= NOT \Shift|ShiftLeft0~34_combout\;
\Add|ALT_INV_S\(16) <= NOT \Add|S\(16);
\Logic|ALT_INV_Mux47~0_combout\ <= NOT \Logic|Mux47~0_combout\;
\ALT_INV_Mux48~3_combout\ <= NOT \Mux48~3_combout\;
\ALT_INV_Mux48~2_combout\ <= NOT \Mux48~2_combout\;
\Shift|ALT_INV_ShiftLeft0~33_combout\ <= NOT \Shift|ShiftLeft0~33_combout\;
\Shift|ALT_INV_ShiftLeft0~32_combout\ <= NOT \Shift|ShiftLeft0~32_combout\;
\ALT_INV_Mux48~1_combout\ <= NOT \Mux48~1_combout\;
\Shift|ALT_INV_ShiftRight1~109_combout\ <= NOT \Shift|ShiftRight1~109_combout\;
\Shift|ALT_INV_ShiftRight1~108_combout\ <= NOT \Shift|ShiftRight1~108_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\Add|ALT_INV_S\(15) <= NOT \Add|S\(15);
\ALT_INV_Mux49~3_combout\ <= NOT \Mux49~3_combout\;
\ALT_INV_Mux49~2_combout\ <= NOT \Mux49~2_combout\;
\Shift|ALT_INV_ShiftLeft0~31_combout\ <= NOT \Shift|ShiftLeft0~31_combout\;
\Shift|ALT_INV_ShiftLeft0~30_combout\ <= NOT \Shift|ShiftLeft0~30_combout\;
\ALT_INV_Mux49~1_combout\ <= NOT \Mux49~1_combout\;
\Shift|ALT_INV_ShiftRight1~107_combout\ <= NOT \Shift|ShiftRight1~107_combout\;
\Shift|ALT_INV_ShiftRight0~17_combout\ <= NOT \Shift|ShiftRight0~17_combout\;
\Shift|ALT_INV_ShiftRight1~106_combout\ <= NOT \Shift|ShiftRight1~106_combout\;
\Shift|ALT_INV_ShiftRight1~105_combout\ <= NOT \Shift|ShiftRight1~105_combout\;
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\Add|ALT_INV_S\(14) <= NOT \Add|S\(14);
\ALT_INV_Mux50~3_combout\ <= NOT \Mux50~3_combout\;
\ALT_INV_Mux50~2_combout\ <= NOT \Mux50~2_combout\;
\Shift|ALT_INV_ShiftLeft0~29_combout\ <= NOT \Shift|ShiftLeft0~29_combout\;
\Shift|ALT_INV_ShiftLeft0~28_combout\ <= NOT \Shift|ShiftLeft0~28_combout\;
\ALT_INV_Mux50~1_combout\ <= NOT \Mux50~1_combout\;
\Shift|ALT_INV_ShiftRight1~104_combout\ <= NOT \Shift|ShiftRight1~104_combout\;
\Shift|ALT_INV_ShiftRight0~16_combout\ <= NOT \Shift|ShiftRight0~16_combout\;
\Shift|ALT_INV_ShiftRight1~103_combout\ <= NOT \Shift|ShiftRight1~103_combout\;
\Shift|ALT_INV_ShiftRight1~102_combout\ <= NOT \Shift|ShiftRight1~102_combout\;
\ALT_INV_Mux50~0_combout\ <= NOT \Mux50~0_combout\;
\Add|ALT_INV_S\(13) <= NOT \Add|S\(13);
\ALT_INV_Mux51~3_combout\ <= NOT \Mux51~3_combout\;
\ALT_INV_Mux51~2_combout\ <= NOT \Mux51~2_combout\;
\Shift|ALT_INV_ShiftLeft0~27_combout\ <= NOT \Shift|ShiftLeft0~27_combout\;
\Shift|ALT_INV_ShiftLeft0~26_combout\ <= NOT \Shift|ShiftLeft0~26_combout\;
\ALT_INV_Mux51~1_combout\ <= NOT \Mux51~1_combout\;
\Shift|ALT_INV_ShiftRight1~101_combout\ <= NOT \Shift|ShiftRight1~101_combout\;
\Shift|ALT_INV_ShiftRight1~100_combout\ <= NOT \Shift|ShiftRight1~100_combout\;
\Shift|ALT_INV_ShiftRight0~15_combout\ <= NOT \Shift|ShiftRight0~15_combout\;
\Shift|ALT_INV_ShiftRight1~99_combout\ <= NOT \Shift|ShiftRight1~99_combout\;
\ALT_INV_Mux51~0_combout\ <= NOT \Mux51~0_combout\;
\Add|ALT_INV_S\(12) <= NOT \Add|S\(12);
\ALT_INV_Mux52~3_combout\ <= NOT \Mux52~3_combout\;
\ALT_INV_Mux52~2_combout\ <= NOT \Mux52~2_combout\;
\Shift|ALT_INV_ShiftLeft0~25_combout\ <= NOT \Shift|ShiftLeft0~25_combout\;
\Shift|ALT_INV_ShiftLeft0~24_combout\ <= NOT \Shift|ShiftLeft0~24_combout\;
\ALT_INV_Mux52~1_combout\ <= NOT \Mux52~1_combout\;
\Shift|ALT_INV_ShiftRight1~98_combout\ <= NOT \Shift|ShiftRight1~98_combout\;
\Shift|ALT_INV_ShiftRight0~14_combout\ <= NOT \Shift|ShiftRight0~14_combout\;
\Shift|ALT_INV_ShiftRight1~97_combout\ <= NOT \Shift|ShiftRight1~97_combout\;
\Shift|ALT_INV_ShiftRight1~96_combout\ <= NOT \Shift|ShiftRight1~96_combout\;
\ALT_INV_Mux52~0_combout\ <= NOT \Mux52~0_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\ALT_INV_Mux53~3_combout\ <= NOT \Mux53~3_combout\;
\ALT_INV_Mux53~2_combout\ <= NOT \Mux53~2_combout\;
\Shift|ALT_INV_ShiftLeft0~23_combout\ <= NOT \Shift|ShiftLeft0~23_combout\;
\Shift|ALT_INV_ShiftLeft0~22_combout\ <= NOT \Shift|ShiftLeft0~22_combout\;
\ALT_INV_Mux53~1_combout\ <= NOT \Mux53~1_combout\;
\Shift|ALT_INV_ShiftRight1~95_combout\ <= NOT \Shift|ShiftRight1~95_combout\;
\Shift|ALT_INV_ShiftRight0~13_combout\ <= NOT \Shift|ShiftRight0~13_combout\;
\Shift|ALT_INV_ShiftRight1~94_combout\ <= NOT \Shift|ShiftRight1~94_combout\;
\Shift|ALT_INV_ShiftRight1~93_combout\ <= NOT \Shift|ShiftRight1~93_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\ALT_INV_Mux54~3_combout\ <= NOT \Mux54~3_combout\;
\ALT_INV_Mux54~2_combout\ <= NOT \Mux54~2_combout\;
\Shift|ALT_INV_ShiftLeft0~21_combout\ <= NOT \Shift|ShiftLeft0~21_combout\;
\Shift|ALT_INV_ShiftLeft0~20_combout\ <= NOT \Shift|ShiftLeft0~20_combout\;
\ALT_INV_Mux54~1_combout\ <= NOT \Mux54~1_combout\;
\Shift|ALT_INV_ShiftRight1~92_combout\ <= NOT \Shift|ShiftRight1~92_combout\;
\Shift|ALT_INV_ShiftRight0~12_combout\ <= NOT \Shift|ShiftRight0~12_combout\;
\Shift|ALT_INV_ShiftRight1~91_combout\ <= NOT \Shift|ShiftRight1~91_combout\;
\Shift|ALT_INV_ShiftRight1~90_combout\ <= NOT \Shift|ShiftRight1~90_combout\;
\ALT_INV_Mux54~0_combout\ <= NOT \Mux54~0_combout\;
\Add|ALT_INV_S\(9) <= NOT \Add|S\(9);
\ALT_INV_Mux55~3_combout\ <= NOT \Mux55~3_combout\;
\ALT_INV_Mux55~2_combout\ <= NOT \Mux55~2_combout\;
\Shift|ALT_INV_ShiftLeft0~19_combout\ <= NOT \Shift|ShiftLeft0~19_combout\;
\Shift|ALT_INV_ShiftLeft0~18_combout\ <= NOT \Shift|ShiftLeft0~18_combout\;
\ALT_INV_Mux55~1_combout\ <= NOT \Mux55~1_combout\;
\Shift|ALT_INV_ShiftRight1~89_combout\ <= NOT \Shift|ShiftRight1~89_combout\;
\Shift|ALT_INV_ShiftRight1~88_combout\ <= NOT \Shift|ShiftRight1~88_combout\;
\Shift|ALT_INV_ShiftRight0~11_combout\ <= NOT \Shift|ShiftRight0~11_combout\;
\Shift|ALT_INV_ShiftRight1~87_combout\ <= NOT \Shift|ShiftRight1~87_combout\;
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Mux56~3_combout\ <= NOT \Mux56~3_combout\;
\ALT_INV_Mux56~2_combout\ <= NOT \Mux56~2_combout\;
\Shift|ALT_INV_ShiftLeft0~17_combout\ <= NOT \Shift|ShiftLeft0~17_combout\;
\Shift|ALT_INV_ShiftLeft0~16_combout\ <= NOT \Shift|ShiftLeft0~16_combout\;
\ALT_INV_Mux56~1_combout\ <= NOT \Mux56~1_combout\;
\Shift|ALT_INV_ShiftRight1~86_combout\ <= NOT \Shift|ShiftRight1~86_combout\;
\Shift|ALT_INV_ShiftRight0~10_combout\ <= NOT \Shift|ShiftRight0~10_combout\;
\Shift|ALT_INV_ShiftRight1~85_combout\ <= NOT \Shift|ShiftRight1~85_combout\;
\Shift|ALT_INV_ShiftRight1~84_combout\ <= NOT \Shift|ShiftRight1~84_combout\;
\ALT_INV_Mux56~0_combout\ <= NOT \Mux56~0_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\ALT_INV_Mux57~3_combout\ <= NOT \Mux57~3_combout\;
\ALT_INV_Mux57~2_combout\ <= NOT \Mux57~2_combout\;
\Shift|ALT_INV_ShiftLeft0~15_combout\ <= NOT \Shift|ShiftLeft0~15_combout\;
\Shift|ALT_INV_ShiftLeft0~14_combout\ <= NOT \Shift|ShiftLeft0~14_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\Shift|ALT_INV_ShiftRight1~83_combout\ <= NOT \Shift|ShiftRight1~83_combout\;
\Shift|ALT_INV_ShiftRight0~9_combout\ <= NOT \Shift|ShiftRight0~9_combout\;
\Shift|ALT_INV_ShiftRight1~82_combout\ <= NOT \Shift|ShiftRight1~82_combout\;
\Shift|ALT_INV_ShiftRight1~81_combout\ <= NOT \Shift|ShiftRight1~81_combout\;
\ALT_INV_Mux57~0_combout\ <= NOT \Mux57~0_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\ALT_INV_Mux58~3_combout\ <= NOT \Mux58~3_combout\;
\ALT_INV_Mux58~2_combout\ <= NOT \Mux58~2_combout\;
\Shift|ALT_INV_ShiftLeft0~13_combout\ <= NOT \Shift|ShiftLeft0~13_combout\;
\Shift|ALT_INV_ShiftLeft0~12_combout\ <= NOT \Shift|ShiftLeft0~12_combout\;
\Shift|ALT_INV_ShiftLeft0~11_combout\ <= NOT \Shift|ShiftLeft0~11_combout\;
\ALT_INV_Mux58~1_combout\ <= NOT \Mux58~1_combout\;
\Shift|ALT_INV_ShiftRight1~80_combout\ <= NOT \Shift|ShiftRight1~80_combout\;
\Shift|ALT_INV_ShiftRight0~8_combout\ <= NOT \Shift|ShiftRight0~8_combout\;
\Shift|ALT_INV_ShiftRight1~79_combout\ <= NOT \Shift|ShiftRight1~79_combout\;
\Shift|ALT_INV_ShiftRight1~78_combout\ <= NOT \Shift|ShiftRight1~78_combout\;
\ALT_INV_Mux58~0_combout\ <= NOT \Mux58~0_combout\;
\Add|ALT_INV_S\(5) <= NOT \Add|S\(5);
\ALT_INV_Mux59~3_combout\ <= NOT \Mux59~3_combout\;
\ALT_INV_Mux59~2_combout\ <= NOT \Mux59~2_combout\;
\Shift|ALT_INV_ShiftLeft0~10_combout\ <= NOT \Shift|ShiftLeft0~10_combout\;
\Shift|ALT_INV_ShiftLeft0~9_combout\ <= NOT \Shift|ShiftLeft0~9_combout\;
\Shift|ALT_INV_ShiftLeft0~8_combout\ <= NOT \Shift|ShiftLeft0~8_combout\;
\ALT_INV_Mux59~1_combout\ <= NOT \Mux59~1_combout\;
\Shift|ALT_INV_ShiftRight1~77_combout\ <= NOT \Shift|ShiftRight1~77_combout\;
\Shift|ALT_INV_ShiftRight0~7_combout\ <= NOT \Shift|ShiftRight0~7_combout\;
\Shift|ALT_INV_ShiftRight1~76_combout\ <= NOT \Shift|ShiftRight1~76_combout\;
\Shift|ALT_INV_ShiftRight1~75_combout\ <= NOT \Shift|ShiftRight1~75_combout\;
\ALT_INV_Mux59~0_combout\ <= NOT \Mux59~0_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\ALT_INV_Mux60~10_combout\ <= NOT \Mux60~10_combout\;
\ALT_INV_Mux60~9_combout\ <= NOT \Mux60~9_combout\;
\ALT_INV_Mux60~8_combout\ <= NOT \Mux60~8_combout\;
\Shift|ALT_INV_ShiftRight1~74_combout\ <= NOT \Shift|ShiftRight1~74_combout\;
\Shift|ALT_INV_ShiftRight1~73_combout\ <= NOT \Shift|ShiftRight1~73_combout\;
\Shift|ALT_INV_ShiftRight1~72_combout\ <= NOT \Shift|ShiftRight1~72_combout\;
\ALT_INV_Mux60~7_combout\ <= NOT \Mux60~7_combout\;
\Shift|ALT_INV_ShiftLeft0~7_combout\ <= NOT \Shift|ShiftLeft0~7_combout\;
\Shift|ALT_INV_ShiftLeft0~6_combout\ <= NOT \Shift|ShiftLeft0~6_combout\;
\ALT_INV_Mux60~6_combout\ <= NOT \Mux60~6_combout\;
\Shift|ALT_INV_ShiftRight1~71_combout\ <= NOT \Shift|ShiftRight1~71_combout\;
\Shift|ALT_INV_ShiftRight0~6_combout\ <= NOT \Shift|ShiftRight0~6_combout\;
\Shift|ALT_INV_ShiftRight1~70_combout\ <= NOT \Shift|ShiftRight1~70_combout\;
\Shift|ALT_INV_ShiftRight1~69_combout\ <= NOT \Shift|ShiftRight1~69_combout\;
\Shift|ALT_INV_ShiftRight0~5_combout\ <= NOT \Shift|ShiftRight0~5_combout\;
\Shift|ALT_INV_ShiftRight1~68_combout\ <= NOT \Shift|ShiftRight1~68_combout\;
\Shift|ALT_INV_ShiftRight1~67_combout\ <= NOT \Shift|ShiftRight1~67_combout\;
\Shift|ALT_INV_ShiftRight1~66_combout\ <= NOT \Shift|ShiftRight1~66_combout\;
\Shift|ALT_INV_ShiftRight1~65_combout\ <= NOT \Shift|ShiftRight1~65_combout\;
\Shift|ALT_INV_ShiftRight1~64_combout\ <= NOT \Shift|ShiftRight1~64_combout\;
\Shift|ALT_INV_ShiftRight1~63_combout\ <= NOT \Shift|ShiftRight1~63_combout\;
\Shift|ALT_INV_ShiftRight1~62_combout\ <= NOT \Shift|ShiftRight1~62_combout\;
\Shift|ALT_INV_ShiftRight1~61_combout\ <= NOT \Shift|ShiftRight1~61_combout\;
\Shift|ALT_INV_ShiftRight1~60_combout\ <= NOT \Shift|ShiftRight1~60_combout\;
\Shift|ALT_INV_ShiftRight1~59_combout\ <= NOT \Shift|ShiftRight1~59_combout\;
\Shift|ALT_INV_ShiftRight1~58_combout\ <= NOT \Shift|ShiftRight1~58_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux61~4_combout\ <= NOT \Mux61~4_combout\;
\ALT_INV_Mux61~3_combout\ <= NOT \Mux61~3_combout\;
\ALT_INV_Mux61~2_combout\ <= NOT \Mux61~2_combout\;
\Shift|ALT_INV_ShiftRight1~57_combout\ <= NOT \Shift|ShiftRight1~57_combout\;
\Shift|ALT_INV_ShiftRight1~56_combout\ <= NOT \Shift|ShiftRight1~56_combout\;
\Shift|ALT_INV_ShiftRight1~55_combout\ <= NOT \Shift|ShiftRight1~55_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\Shift|ALT_INV_ShiftLeft0~5_combout\ <= NOT \Shift|ShiftLeft0~5_combout\;
\Shift|ALT_INV_ShiftLeft0~4_combout\ <= NOT \Shift|ShiftLeft0~4_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\Shift|ALT_INV_ShiftRight1~54_combout\ <= NOT \Shift|ShiftRight1~54_combout\;
\Shift|ALT_INV_ShiftRight1~53_combout\ <= NOT \Shift|ShiftRight1~53_combout\;
\Shift|ALT_INV_ShiftRight0~4_combout\ <= NOT \Shift|ShiftRight0~4_combout\;
\Shift|ALT_INV_ShiftRight1~52_combout\ <= NOT \Shift|ShiftRight1~52_combout\;
\Shift|ALT_INV_ShiftRight1~51_combout\ <= NOT \Shift|ShiftRight1~51_combout\;
\Shift|ALT_INV_ShiftRight1~50_combout\ <= NOT \Shift|ShiftRight1~50_combout\;
\Shift|ALT_INV_ShiftRight1~49_combout\ <= NOT \Shift|ShiftRight1~49_combout\;
\Shift|ALT_INV_ShiftRight0~3_combout\ <= NOT \Shift|ShiftRight0~3_combout\;
\Shift|ALT_INV_ShiftRight1~48_combout\ <= NOT \Shift|ShiftRight1~48_combout\;
\Shift|ALT_INV_ShiftRight1~47_combout\ <= NOT \Shift|ShiftRight1~47_combout\;
\Shift|ALT_INV_ShiftRight1~46_combout\ <= NOT \Shift|ShiftRight1~46_combout\;
\Shift|ALT_INV_ShiftRight1~45_combout\ <= NOT \Shift|ShiftRight1~45_combout\;
\Shift|ALT_INV_ShiftRight1~44_combout\ <= NOT \Shift|ShiftRight1~44_combout\;
\Shift|ALT_INV_ShiftRight1~43_combout\ <= NOT \Shift|ShiftRight1~43_combout\;
\Shift|ALT_INV_ShiftRight1~42_combout\ <= NOT \Shift|ShiftRight1~42_combout\;
\Shift|ALT_INV_ShiftRight1~41_combout\ <= NOT \Shift|ShiftRight1~41_combout\;
\Shift|ALT_INV_ShiftRight1~40_combout\ <= NOT \Shift|ShiftRight1~40_combout\;
\Shift|ALT_INV_ShiftRight1~39_combout\ <= NOT \Shift|ShiftRight1~39_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux62~4_combout\ <= NOT \Mux62~4_combout\;
\ALT_INV_Mux60~5_combout\ <= NOT \Mux60~5_combout\;
\ALT_INV_Mux60~4_combout\ <= NOT \Mux60~4_combout\;
\ALT_INV_Mux62~3_combout\ <= NOT \Mux62~3_combout\;
\ALT_INV_Mux62~2_combout\ <= NOT \Mux62~2_combout\;
\Shift|ALT_INV_ShiftRight1~38_combout\ <= NOT \Shift|ShiftRight1~38_combout\;
\Shift|ALT_INV_ShiftRight1~37_combout\ <= NOT \Shift|ShiftRight1~37_combout\;
\Shift|ALT_INV_ShiftRight1~36_combout\ <= NOT \Shift|ShiftRight1~36_combout\;
\ALT_INV_Mux62~1_combout\ <= NOT \Mux62~1_combout\;
\Shift|ALT_INV_ShiftLeft0~3_combout\ <= NOT \Shift|ShiftLeft0~3_combout\;
\ALT_INV_Mux60~3_combout\ <= NOT \Mux60~3_combout\;
\ALT_INV_Mux60~2_combout\ <= NOT \Mux60~2_combout\;
\ALT_INV_Mux62~0_combout\ <= NOT \Mux62~0_combout\;
\ALT_INV_Mux60~1_combout\ <= NOT \Mux60~1_combout\;
\ALT_INV_Mux60~0_combout\ <= NOT \Mux60~0_combout\;
\Shift|ALT_INV_ShiftRight1~35_combout\ <= NOT \Shift|ShiftRight1~35_combout\;
\Shift|ALT_INV_ShiftRight1~34_combout\ <= NOT \Shift|ShiftRight1~34_combout\;
\Shift|ALT_INV_ShiftRight0~2_combout\ <= NOT \Shift|ShiftRight0~2_combout\;
\Shift|ALT_INV_ShiftRight1~33_combout\ <= NOT \Shift|ShiftRight1~33_combout\;
\Shift|ALT_INV_ShiftRight1~32_combout\ <= NOT \Shift|ShiftRight1~32_combout\;
\Shift|ALT_INV_ShiftRight1~31_combout\ <= NOT \Shift|ShiftRight1~31_combout\;
\Shift|ALT_INV_ShiftRight1~30_combout\ <= NOT \Shift|ShiftRight1~30_combout\;
\Shift|ALT_INV_ShiftRight0~1_combout\ <= NOT \Shift|ShiftRight0~1_combout\;
\Shift|ALT_INV_ShiftRight1~29_combout\ <= NOT \Shift|ShiftRight1~29_combout\;
\Shift|ALT_INV_ShiftRight1~28_combout\ <= NOT \Shift|ShiftRight1~28_combout\;
\Shift|ALT_INV_ShiftRight1~27_combout\ <= NOT \Shift|ShiftRight1~27_combout\;
\Shift|ALT_INV_ShiftRight1~26_combout\ <= NOT \Shift|ShiftRight1~26_combout\;
\Shift|ALT_INV_ShiftRight1~25_combout\ <= NOT \Shift|ShiftRight1~25_combout\;
\Shift|ALT_INV_ShiftRight1~24_combout\ <= NOT \Shift|ShiftRight1~24_combout\;
\Shift|ALT_INV_ShiftRight1~23_combout\ <= NOT \Shift|ShiftRight1~23_combout\;
\Shift|ALT_INV_ShiftRight1~22_combout\ <= NOT \Shift|ShiftRight1~22_combout\;
\Shift|ALT_INV_ShiftRight1~21_combout\ <= NOT \Shift|ShiftRight1~21_combout\;
\Shift|ALT_INV_ShiftRight1~20_combout\ <= NOT \Shift|ShiftRight1~20_combout\;
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
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Shift|ALT_INV_ShiftLeft0~2_combout\ <= NOT \Shift|ShiftLeft0~2_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\Shift|ALT_INV_ShiftLeft0~1_combout\ <= NOT \Shift|ShiftLeft0~1_combout\;
\Shift|ALT_INV_ShiftLeft0~0_combout\ <= NOT \Shift|ShiftLeft0~0_combout\;
\Shift|ALT_INV_ShiftRight0~0_combout\ <= NOT \Shift|ShiftRight0~0_combout\;
\Shift|ALT_INV_ShiftRight1~19_combout\ <= NOT \Shift|ShiftRight1~19_combout\;
\Shift|ALT_INV_ShiftRight1~18_combout\ <= NOT \Shift|ShiftRight1~18_combout\;
\Shift|ALT_INV_ShiftRight1~17_combout\ <= NOT \Shift|ShiftRight1~17_combout\;
\Shift|ALT_INV_ShiftRight1~16_combout\ <= NOT \Shift|ShiftRight1~16_combout\;
\Shift|ALT_INV_ShiftRight1~15_combout\ <= NOT \Shift|ShiftRight1~15_combout\;
\Shift|ALT_INV_ShiftRight1~14_combout\ <= NOT \Shift|ShiftRight1~14_combout\;
\Shift|ALT_INV_ShiftRight1~13_combout\ <= NOT \Shift|ShiftRight1~13_combout\;
\Shift|ALT_INV_ShiftRight1~12_combout\ <= NOT \Shift|ShiftRight1~12_combout\;
\Shift|ALT_INV_ShiftRight1~11_combout\ <= NOT \Shift|ShiftRight1~11_combout\;
\Shift|ALT_INV_ShiftRight1~10_combout\ <= NOT \Shift|ShiftRight1~10_combout\;
\Shift|ALT_INV_ShiftRight1~9_combout\ <= NOT \Shift|ShiftRight1~9_combout\;
\Shift|ALT_INV_ShiftRight1~8_combout\ <= NOT \Shift|ShiftRight1~8_combout\;
\Shift|ALT_INV_ShiftRight1~7_combout\ <= NOT \Shift|ShiftRight1~7_combout\;
\Shift|ALT_INV_ShiftRight1~6_combout\ <= NOT \Shift|ShiftRight1~6_combout\;
\Shift|ALT_INV_ShiftRight1~5_combout\ <= NOT \Shift|ShiftRight1~5_combout\;
\Shift|ALT_INV_ShiftRight1~4_combout\ <= NOT \Shift|ShiftRight1~4_combout\;
\Shift|ALT_INV_ShiftRight1~3_combout\ <= NOT \Shift|ShiftRight1~3_combout\;
\Shift|ALT_INV_ShiftRight1~2_combout\ <= NOT \Shift|ShiftRight1~2_combout\;
\Shift|ALT_INV_ShiftRight1~1_combout\ <= NOT \Shift|ShiftRight1~1_combout\;
\Shift|ALT_INV_ShiftRight1~0_combout\ <= NOT \Shift|ShiftRight1~0_combout\;
\ALT_INV_Mux13~7_combout\ <= NOT \Mux13~7_combout\;
\ALT_INV_Mux12~5_combout\ <= NOT \Mux12~5_combout\;
\ALT_INV_Mux11~9_combout\ <= NOT \Mux11~9_combout\;
\ALT_INV_Mux10~5_combout\ <= NOT \Mux10~5_combout\;
\ALT_INV_Mux9~5_combout\ <= NOT \Mux9~5_combout\;
\ALT_INV_Mux8~5_combout\ <= NOT \Mux8~5_combout\;
\ALT_INV_Mux7~5_combout\ <= NOT \Mux7~5_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux5~5_combout\ <= NOT \Mux5~5_combout\;
\ALT_INV_Mux4~5_combout\ <= NOT \Mux4~5_combout\;
\ALT_INV_Mux3~6_combout\ <= NOT \Mux3~6_combout\;
\ALT_INV_Mux2~6_combout\ <= NOT \Mux2~6_combout\;
\ALT_INV_Mux1~6_combout\ <= NOT \Mux1~6_combout\;
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

-- Location: IOOBUF_X59_Y25_N2
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

-- Location: IOOBUF_X44_Y56_N98
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~5_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X59_Y36_N98
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

-- Location: IOOBUF_X59_Y33_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~11_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
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

-- Location: IOOBUF_X40_Y56_N67
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

-- Location: IOOBUF_X59_Y36_N67
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

-- Location: IOOBUF_X59_Y37_N98
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

-- Location: IOOBUF_X44_Y56_N36
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

-- Location: IOOBUF_X59_Y37_N67
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

-- Location: IOOBUF_X59_Y46_N67
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

-- Location: IOOBUF_X59_Y33_N33
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

-- Location: IOOBUF_X59_Y48_N36
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

-- Location: IOOBUF_X59_Y48_N98
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

-- Location: IOOBUF_X59_Y37_N36
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

-- Location: IOOBUF_X59_Y49_N2
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

-- Location: IOOBUF_X59_Y46_N2
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X59_Y9_N33
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~5_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X25_Y0_N33
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~11_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~4_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y19_N67
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~4_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~4_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~4_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X39_Y0_N67
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~4_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~4_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~4_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X38_Y56_N2
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~4_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y12_N36
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X59_Y13_N98
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

-- Location: IOOBUF_X19_Y0_N98
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

-- Location: IOOBUF_X45_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X59_Y7_N98
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

-- Location: IOOBUF_X39_Y0_N2
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

-- Location: IOOBUF_X59_Y4_N67
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

-- Location: IOOBUF_X59_Y10_N98
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

-- Location: IOOBUF_X59_Y4_N2
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X59_Y10_N36
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

-- Location: IOOBUF_X39_Y0_N36
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

-- Location: IOOBUF_X39_Y0_N98
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

-- Location: IOOBUF_X29_Y0_N67
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

-- Location: IOOBUF_X59_Y9_N67
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~7_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
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

-- Location: IOOBUF_X45_Y0_N98
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X59_Y13_N2
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X59_Y6_N98
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~6_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X36_Y56_N67
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X24_Y0_N98
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~8_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X24_Y0_N67
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X59_Y51_N67
\Y[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X18_Y0_N98
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~5_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X25_Y0_N67
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~20_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOIBUF_X59_Y39_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: MLABCELL_X44_Y25_N4
\Logic|Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[0]~input_o\ & (\B[0]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[0]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[0]~input_o\ $ (((!\A[0]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: IOIBUF_X59_Y21_N63
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X40_Y29_N24
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X59_Y26_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y25_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X42_Y28_N2
\Shift|ShiftLeft0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~0_combout\ = ( \B[3]~input_o\ ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ShiftLeft0~0_combout\);

-- Location: IOIBUF_X59_Y28_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X46_Y29_N2
\Shift|ShiftLeft0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~1_combout\ = ( !\B[0]~input_o\ & ( (!\Shift|ShiftLeft0~0_combout\ & !\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~1_combout\);

-- Location: LABCELL_X45_Y25_N4
\Shift|ShiftLeft0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~2_combout\ = ( \Shift|ShiftLeft0~1_combout\ & ( \Mux30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	combout => \Shift|ShiftLeft0~2_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X37_Y0_N32
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X42_Y24_N22
\Shift|ShiftRight1~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[36]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X40_Y24_N6
\Shift|ShiftRight1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[47]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[45]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[46]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X41_Y0_N32
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X40_Y24_N22
\Shift|ShiftRight1~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = ( \A[40]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[41]~input_o\))) # (\B[1]~input_o\ & (\A[43]~input_o\)) ) ) ) # ( !\A[40]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[41]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[43]~input_o\)) ) ) ) # ( \A[40]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[42]~input_o\) ) ) ) # ( !\A[40]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[42]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: IOIBUF_X50_Y0_N63
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X59_Y18_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X43_Y25_N22
\Shift|ShiftRight1~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = ( \A[34]~input_o\ & ( \A[32]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[33]~input_o\))) # (\B[1]~input_o\ & (\A[35]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( \A[32]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\) # (\A[33]~input_o\)))) # (\B[1]~input_o\ & (\A[35]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[34]~input_o\ & ( !\A[32]~input_o\ & ( (!\B[1]~input_o\ & (((\A[33]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[35]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[32]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[33]~input_o\))) # (\B[1]~input_o\ & (\A[35]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LABCELL_X40_Y25_N24
\Shift|ShiftRight1~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~13_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~11_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~12_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~13_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~12_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: MLABCELL_X44_Y24_N20
\Shift|ShiftRight1~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = ( \A[31]~input_o\ & ( \B[1]~input_o\ & ( (\A[30]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[30]~input_o\) ) ) ) # ( \A[31]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[28]~input_o\)) # (\B[0]~input_o\ & ((\A[29]~input_o\))) ) ) ) # ( !\A[31]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[28]~input_o\)) # (\B[0]~input_o\ & ((\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: IOIBUF_X59_Y21_N94
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X42_Y29_N24
\Shift|ShiftRight1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\A[23]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: IOIBUF_X59_Y33_N1
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X42_Y29_N2
\Shift|ShiftRight1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = ( \A[17]~input_o\ & ( \A[18]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[16]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[19]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( \A[18]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[16]~input_o\))) # (\B[0]~input_o\ & (((\A[19]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (\A[16]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\) # (\A[19]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (\A[16]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[19]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: IOIBUF_X59_Y12_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X43_Y28_N20
\Shift|ShiftRight1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[27]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[25]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LABCELL_X40_Y25_N22
\Shift|ShiftRight1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~8_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~6_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~7_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~5_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: IOIBUF_X35_Y56_N63
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X35_Y27_N6
\Shift|ShiftRight1~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = ( \A[61]~input_o\ & ( \A[63]~input_o\ & ( ((!\B[1]~input_o\ & (\A[60]~input_o\)) # (\B[1]~input_o\ & ((\A[62]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[61]~input_o\ & ( \A[63]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[60]~input_o\)) # (\B[1]~input_o\ & ((\A[62]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[61]~input_o\ & ( !\A[63]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[60]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[62]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[61]~input_o\ & ( !\A[63]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[60]~input_o\)) # (\B[1]~input_o\ & ((\A[62]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: IOIBUF_X35_Y0_N32
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X29_Y0_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X33_Y0_N94
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X35_Y27_N0
\Shift|ShiftRight1~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = ( \A[57]~input_o\ & ( \A[56]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\))) ) ) ) # ( !\A[57]~input_o\ & ( \A[56]~input_o\ & ( (!\B[1]~input_o\ & 
-- (!\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\)))) ) ) ) # ( \A[57]~input_o\ & ( !\A[56]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\)))) ) ) ) # ( !\A[57]~input_o\ & ( !\A[56]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X35_Y0_N63
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X35_Y24_N0
\Shift|ShiftRight1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = ( \A[52]~input_o\ & ( \A[54]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\))) ) ) ) # ( !\A[52]~input_o\ & ( \A[54]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)))) ) ) ) # ( \A[52]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)))) ) ) ) # ( !\A[52]~input_o\ & ( !\A[54]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: IOIBUF_X59_Y39_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X24_Y0_N32
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X38_Y56_N32
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: MLABCELL_X37_Y24_N0
\Shift|ShiftRight1~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = ( \A[49]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[48]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[51]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( \A[50]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[48]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[51]~input_o\)))) ) ) ) # ( \A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[48]~input_o\))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\ & \A[51]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & (\A[48]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[51]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LABCELL_X40_Y25_N30
\Shift|ShiftRight1~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = ( \Shift|ShiftRight1~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~17_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~18_combout\)) ) ) ) # ( !\Shift|ShiftRight1~15_combout\ & ( 
-- \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~17_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~18_combout\)) ) ) ) # ( \Shift|ShiftRight1~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~16_combout\) ) ) ) # ( 
-- !\Shift|ShiftRight1~15_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftRight1~16_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~16_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~17_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: IOIBUF_X40_Y56_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y37_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X44_Y29_N20
\Shift|ShiftRight1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~0_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[0]~input_o\))) # (\B[1]~input_o\ & (((\A[3]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\A[0]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\A[0]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[3]~input_o\ & \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ShiftRight1~0_combout\);

-- Location: IOIBUF_X59_Y34_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X45_Y28_N20
\Shift|ShiftRight1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~3_combout\ = ( \B[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[14]~input_o\ & ( (\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[14]~input_o\ & ( (\A[12]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftRight1~3_combout\);

-- Location: IOIBUF_X59_Y39_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X40_Y30_N2
\Shift|ShiftRight1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~1_combout\ = ( \B[1]~input_o\ & ( \A[7]~input_o\ & ( (\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[7]~input_o\ & ( (\A[6]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|ShiftRight1~1_combout\);

-- Location: IOIBUF_X40_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X38_Y29_N20
\Shift|ShiftRight1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~2_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[11]~input_o\)) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~2_combout\);

-- Location: LABCELL_X40_Y29_N20
\Shift|ShiftRight1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~2_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~3_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~0_combout\)) 
-- # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~2_combout\ & ( (\Shift|ShiftRight1~3_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~1_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~2_combout\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: LABCELL_X45_Y25_N2
\Shift|ShiftRight0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~0_combout\ = ( \B[4]~input_o\ & ( \Shift|ShiftRight1~4_combout\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~9_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftRight1~19_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ShiftRight1~4_combout\ 
-- & ( (!\B[5]~input_o\) # (\Shift|ShiftRight1~14_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ShiftRight1~4_combout\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~9_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftRight1~19_combout\))) ) ) ) # ( !\B[4]~input_o\ 
-- & ( !\Shift|ShiftRight1~4_combout\ & ( (\Shift|ShiftRight1~14_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~19_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~4_combout\,
	combout => \Shift|ShiftRight0~0_combout\);

-- Location: MLABCELL_X44_Y25_N20
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \Shift|ShiftRight0~0_combout\ & ( \A[0]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftLeft0~2_combout\)))) # (\ShiftFN[1]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight0~0_combout\ & ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftLeft0~2_combout\))))) ) ) ) # ( \Shift|ShiftRight0~0_combout\ & ( !\A[0]~input_o\ & ( 
-- ((\B[0]~input_o\ & !\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Shift|ShiftRight0~0_combout\ & ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011110100111110000000101100001000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	datae => \Shift|ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X59_Y23_N63
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X31_Y56_N1
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X38_Y56_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X42_Y56_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y49_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X48_Y56_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X44_Y29_N26
\Add|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = ( \A[0]~input_o\ & ( (\AddnSub~input_o\) # (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\B[0]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: MLABCELL_X44_Y29_N10
\Add|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (!\A[1]~input_o\ & (\Add|C[1]~0_combout\ & (!\B[1]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[1]~input_o\ & ((!\B[1]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100101011000101110010101100010111001010110001011100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \Add|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: MLABCELL_X44_Y29_N14
\Add|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = ( \B[2]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[2]~input_o\) # (\Add|C[2]~1_combout\))) # (\AddnSub~input_o\ & (\Add|C[2]~1_combout\ & \A[2]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[2]~1_combout\ & 
-- \A[2]~input_o\)) # (\AddnSub~input_o\ & ((\A[2]~input_o\) # (\Add|C[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[2]~1_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: MLABCELL_X44_Y29_N36
\Add|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = ( \Add|C[3]~2_combout\ & ( (!\B[3]~input_o\ $ (!\AddnSub~input_o\)) # (\A[3]~input_o\) ) ) # ( !\Add|C[3]~2_combout\ & ( (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[3]~2_combout\,
	combout => \Add|C[4]~3_combout\);

-- Location: LABCELL_X40_Y29_N28
\Add|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = ( \A[4]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[4]~input_o\)) # (\Add|C[4]~3_combout\) ) ) # ( !\A[4]~input_o\ & ( (\Add|C[4]~3_combout\ & (!\AddnSub~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[4]~3_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: LABCELL_X40_Y29_N30
\Add|C[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = ( \B[5]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[5]~4_combout\) # (\A[5]~input_o\))) # (\AddnSub~input_o\ & (\A[5]~input_o\ & \Add|C[5]~4_combout\)) ) ) # ( !\B[5]~input_o\ & ( (!\AddnSub~input_o\ & (\A[5]~input_o\ & 
-- \Add|C[5]~4_combout\)) # (\AddnSub~input_o\ & ((\Add|C[5]~4_combout\) # (\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \Add|ALT_INV_C[5]~4_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: IOIBUF_X59_Y31_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X43_Y29_N0
\Add|C[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = ( \B[6]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[6]~input_o\) # (\Add|C[6]~5_combout\))) # (\AddnSub~input_o\ & (\Add|C[6]~5_combout\ & \A[6]~input_o\)) ) ) # ( !\B[6]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[6]~5_combout\ & 
-- \A[6]~input_o\)) # (\AddnSub~input_o\ & ((\A[6]~input_o\) # (\Add|C[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[6]~5_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: LABCELL_X43_Y29_N6
\Add|C[8]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = ( \Add|C[7]~6_combout\ & ( (!\B[7]~input_o\ $ (!\AddnSub~input_o\)) # (\A[7]~input_o\) ) ) # ( !\Add|C[7]~6_combout\ & ( (\A[7]~input_o\ & (!\B[7]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[7]~6_combout\,
	combout => \Add|C[8]~7_combout\);

-- Location: IOIBUF_X44_Y56_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X43_Y29_N28
\Add|C[9]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = ( \B[8]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[8]~input_o\) # (\Add|C[8]~7_combout\))) # (\AddnSub~input_o\ & (\Add|C[8]~7_combout\ & \A[8]~input_o\)) ) ) # ( !\B[8]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[8]~7_combout\ & 
-- \A[8]~input_o\)) # (\AddnSub~input_o\ & ((\A[8]~input_o\) # (\Add|C[8]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[8]~7_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: LABCELL_X43_Y29_N34
\Add|C[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = ( \AddnSub~input_o\ & ( (!\B[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\A[9]~input_o\))) # (\B[9]~input_o\ & (\A[9]~input_o\ & \Add|C[9]~8_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & 
-- \Add|C[9]~8_combout\)) # (\B[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \Add|ALT_INV_C[9]~8_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: IOIBUF_X46_Y56_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X45_Y29_N22
\Add|C[11]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & (!\AddnSub~input_o\ & \Add|C[10]~9_combout\)) # (\A[10]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[10]~9_combout\))) ) ) # ( !\B[10]~input_o\ & ( (!\A[10]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[10]~9_combout\)) # (\A[10]~input_o\ & ((\Add|C[10]~9_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X45_Y29_N6
\Add|C[12]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = ( \AddnSub~input_o\ & ( (!\A[11]~input_o\ & (\Add|C[11]~10_combout\ & !\B[11]~input_o\)) # (\A[11]~input_o\ & ((!\B[11]~input_o\) # (\Add|C[11]~10_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[11]~input_o\ & 
-- (\Add|C[11]~10_combout\ & \B[11]~input_o\)) # (\A[11]~input_o\ & ((\B[11]~input_o\) # (\Add|C[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \Add|ALT_INV_C[11]~10_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: IOIBUF_X46_Y56_N32
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X45_Y29_N8
\Add|C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[12]~11_combout\ & (\A[12]~input_o\ & !\B[12]~input_o\)) # (\Add|C[12]~11_combout\ & ((!\B[12]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[12]~11_combout\ & 
-- (\A[12]~input_o\ & \B[12]~input_o\)) # (\Add|C[12]~11_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[12]~11_combout\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: LABCELL_X45_Y29_N12
\Add|C[14]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = ( \AddnSub~input_o\ & ( (!\B[13]~input_o\ & ((\A[13]~input_o\) # (\Add|C[13]~12_combout\))) # (\B[13]~input_o\ & (\Add|C[13]~12_combout\ & \A[13]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[13]~input_o\ & 
-- (\Add|C[13]~12_combout\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((\A[13]~input_o\) # (\Add|C[13]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \Add|ALT_INV_C[13]~12_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[14]~13_combout\);

-- Location: IOIBUF_X59_Y48_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X46_Y29_N26
\Add|C[15]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = ( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (!\AddnSub~input_o\ & \Add|C[14]~13_combout\)) # (\A[14]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[14]~13_combout\))) ) ) # ( !\B[14]~input_o\ & ( (!\A[14]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[14]~13_combout\)) # (\A[14]~input_o\ & ((\Add|C[14]~13_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[14]~13_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: MLABCELL_X46_Y29_N28
\Add|C[16]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = ( \AddnSub~input_o\ & ( (!\A[15]~input_o\ & (!\B[15]~input_o\ & \Add|C[15]~14_combout\)) # (\A[15]~input_o\ & ((!\B[15]~input_o\) # (\Add|C[15]~14_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & 
-- \Add|C[15]~14_combout\)) # (\A[15]~input_o\ & ((\Add|C[15]~14_combout\) # (\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datad => \Add|ALT_INV_C[15]~14_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[16]~15_combout\);

-- Location: IOIBUF_X59_Y22_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X45_Y25_N30
\Add|C[17]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = ( \A[16]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[16]~input_o\)) # (\Add|C[16]~15_combout\) ) ) # ( !\A[16]~input_o\ & ( (\Add|C[16]~15_combout\ & (!\AddnSub~input_o\ $ (!\B[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[16]~15_combout\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: LABCELL_X43_Y26_N20
\Add|C[18]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = ( \AddnSub~input_o\ & ( (!\B[17]~input_o\ & ((\A[17]~input_o\) # (\Add|C[17]~16_combout\))) # (\B[17]~input_o\ & (\Add|C[17]~16_combout\ & \A[17]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[17]~input_o\ & 
-- (\Add|C[17]~16_combout\ & \A[17]~input_o\)) # (\B[17]~input_o\ & ((\A[17]~input_o\) # (\Add|C[17]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \Add|ALT_INV_C[17]~16_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[18]~17_combout\);

-- Location: IOIBUF_X59_Y7_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X43_Y26_N24
\Add|C[19]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[19]~18_combout\ = ( \A[18]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) # (\Add|C[18]~17_combout\) ) ) # ( !\A[18]~input_o\ & ( (\Add|C[18]~17_combout\ & (!\AddnSub~input_o\ $ (!\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[18]~17_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Add|C[19]~18_combout\);

-- Location: IOIBUF_X59_Y19_N32
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X43_Y26_N30
\Add|C[20]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[20]~19_combout\ = ( \A[19]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[19]~input_o\)) # (\Add|C[19]~18_combout\) ) ) # ( !\A[19]~input_o\ & ( (\Add|C[19]~18_combout\ & (!\AddnSub~input_o\ $ (!\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[19]~18_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Add|C[20]~19_combout\);

-- Location: LABCELL_X43_Y26_N32
\Add|C[21]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[21]~20_combout\ = ( \Add|C[20]~19_combout\ & ( (!\B[20]~input_o\ $ (!\AddnSub~input_o\)) # (\A[20]~input_o\) ) ) # ( !\Add|C[20]~19_combout\ & ( (\A[20]~input_o\ & (!\B[20]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \Add|ALT_INV_C[20]~19_combout\,
	combout => \Add|C[21]~20_combout\);

-- Location: MLABCELL_X44_Y26_N20
\Add|C[22]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = ( \Add|C[21]~20_combout\ & ( (!\AddnSub~input_o\ $ (!\B[21]~input_o\)) # (\A[21]~input_o\) ) ) # ( !\Add|C[21]~20_combout\ & ( (\A[21]~input_o\ & (!\AddnSub~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \Add|ALT_INV_C[21]~20_combout\,
	combout => \Add|C[22]~21_combout\);

-- Location: IOIBUF_X59_Y15_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X44_Y26_N24
\Add|C[23]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = ( \A[22]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[22]~input_o\)) # (\Add|C[22]~21_combout\) ) ) # ( !\A[22]~input_o\ & ( (\Add|C[22]~21_combout\ & (!\AddnSub~input_o\ $ (!\B[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[22]~21_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Add|C[23]~22_combout\);

-- Location: MLABCELL_X44_Y26_N28
\Add|C[24]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = ( \Add|C[23]~22_combout\ & ( (!\AddnSub~input_o\ $ (!\B[23]~input_o\)) # (\A[23]~input_o\) ) ) # ( !\Add|C[23]~22_combout\ & ( (\A[23]~input_o\ & (!\AddnSub~input_o\ $ (!\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	dataf => \Add|ALT_INV_C[23]~22_combout\,
	combout => \Add|C[24]~23_combout\);

-- Location: IOIBUF_X48_Y56_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X44_Y26_N12
\Add|C[25]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = ( \A[24]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[24]~input_o\)) # (\Add|C[24]~23_combout\) ) ) # ( !\A[24]~input_o\ & ( (\Add|C[24]~23_combout\ & (!\AddnSub~input_o\ $ (!\B[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[24]~23_combout\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Add|C[25]~24_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X44_Y26_N38
\Add|C[26]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = ( \B[25]~input_o\ & ( (!\A[25]~input_o\ & (!\AddnSub~input_o\ & \Add|C[25]~24_combout\)) # (\A[25]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[25]~24_combout\))) ) ) # ( !\B[25]~input_o\ & ( (!\A[25]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[25]~24_combout\)) # (\A[25]~input_o\ & ((\Add|C[25]~24_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[25]~24_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Add|C[26]~25_combout\);

-- Location: IOIBUF_X25_Y0_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X38_Y25_N20
\Add|C[27]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (\Add|C[26]~25_combout\ & !\AddnSub~input_o\)) # (\A[26]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[26]~25_combout\))) ) ) # ( !\B[26]~input_o\ & ( (!\A[26]~input_o\ & 
-- (\Add|C[26]~25_combout\ & \AddnSub~input_o\)) # (\A[26]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[26]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \Add|ALT_INV_C[26]~25_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Add|C[27]~26_combout\);

-- Location: LABCELL_X38_Y25_N4
\Add|C[28]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = ( \Add|C[27]~26_combout\ & ( (!\AddnSub~input_o\ $ (!\B[27]~input_o\)) # (\A[27]~input_o\) ) ) # ( !\Add|C[27]~26_combout\ & ( (\A[27]~input_o\ & (!\AddnSub~input_o\ $ (!\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	dataf => \Add|ALT_INV_C[27]~26_combout\,
	combout => \Add|C[28]~27_combout\);

-- Location: IOIBUF_X59_Y9_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X38_Y25_N8
\Add|C[29]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = (!\A[28]~input_o\ & (\Add|C[28]~27_combout\ & (!\AddnSub~input_o\ $ (!\B[28]~input_o\)))) # (\A[28]~input_o\ & ((!\AddnSub~input_o\ $ (!\B[28]~input_o\)) # (\Add|C[28]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100101011000101110010101100010111001010110001011100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \Add|ALT_INV_C[28]~27_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	combout => \Add|C[29]~28_combout\);

-- Location: IOIBUF_X37_Y0_N94
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X38_Y25_N34
\Add|C[30]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = ( \B[29]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[29]~28_combout\) # (\A[29]~input_o\))) # (\AddnSub~input_o\ & (\A[29]~input_o\ & \Add|C[29]~28_combout\)) ) ) # ( !\B[29]~input_o\ & ( (!\AddnSub~input_o\ & (\A[29]~input_o\ & 
-- \Add|C[29]~28_combout\)) # (\AddnSub~input_o\ & ((\Add|C[29]~28_combout\) # (\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \Add|ALT_INV_C[29]~28_combout\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|C[30]~29_combout\);

-- Location: IOIBUF_X33_Y56_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X44_Y24_N4
\Add|C[31]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[31]~30_combout\ = ( \B[30]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[30]~29_combout\) # (\A[30]~input_o\))) # (\AddnSub~input_o\ & (\A[30]~input_o\ & \Add|C[30]~29_combout\)) ) ) # ( !\B[30]~input_o\ & ( (!\AddnSub~input_o\ & (\A[30]~input_o\ & 
-- \Add|C[30]~29_combout\)) # (\AddnSub~input_o\ & ((\Add|C[30]~29_combout\) # (\A[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \Add|ALT_INV_C[30]~29_combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Add|C[31]~30_combout\);

-- Location: IOIBUF_X45_Y0_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X44_Y24_N30
\Add|C[32]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[32]~31_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[31]~30_combout\ & (!\B[31]~input_o\ & \A[31]~input_o\)) # (\Add|C[31]~30_combout\ & ((!\B[31]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[31]~30_combout\ & 
-- (\B[31]~input_o\ & \A[31]~input_o\)) # (\Add|C[31]~30_combout\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[31]~30_combout\,
	datab => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[32]~31_combout\);

-- Location: IOIBUF_X43_Y0_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: MLABCELL_X44_Y24_N32
\Add|C[33]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[33]~32_combout\ = ( \B[32]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[32]~31_combout\) # (\A[32]~input_o\))) # (\AddnSub~input_o\ & (\A[32]~input_o\ & \Add|C[32]~31_combout\)) ) ) # ( !\B[32]~input_o\ & ( (!\AddnSub~input_o\ & (\A[32]~input_o\ & 
-- \Add|C[32]~31_combout\)) # (\AddnSub~input_o\ & ((\Add|C[32]~31_combout\) # (\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	datad => \Add|ALT_INV_C[32]~31_combout\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \Add|C[33]~32_combout\);

-- Location: IOIBUF_X41_Y0_N1
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: MLABCELL_X44_Y24_N38
\Add|C[34]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[34]~33_combout\ = ( \A[33]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[33]~input_o\)) # (\Add|C[33]~32_combout\) ) ) # ( !\A[33]~input_o\ & ( (\Add|C[33]~32_combout\ & (!\AddnSub~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[33]~32_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \Add|C[34]~33_combout\);

-- Location: MLABCELL_X42_Y22_N20
\Add|C[35]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[35]~34_combout\ = ( \Add|C[34]~33_combout\ & ( (!\B[34]~input_o\ $ (!\AddnSub~input_o\)) # (\A[34]~input_o\) ) ) # ( !\Add|C[34]~33_combout\ & ( (\A[34]~input_o\ & (!\B[34]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[34]~33_combout\,
	combout => \Add|C[35]~34_combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: MLABCELL_X42_Y22_N24
\Add|C[36]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[36]~35_combout\ = ( \B[35]~input_o\ & ( (!\A[35]~input_o\ & (\Add|C[35]~34_combout\ & !\AddnSub~input_o\)) # (\A[35]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[35]~34_combout\))) ) ) # ( !\B[35]~input_o\ & ( (!\A[35]~input_o\ & 
-- (\Add|C[35]~34_combout\ & \AddnSub~input_o\)) # (\A[35]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[35]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[35]~input_o\,
	datac => \Add|ALT_INV_C[35]~34_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[35]~input_o\,
	combout => \Add|C[36]~35_combout\);

-- Location: MLABCELL_X42_Y22_N8
\Add|C[37]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[37]~36_combout\ = ( \Add|C[36]~35_combout\ & ( (!\AddnSub~input_o\ $ (!\B[36]~input_o\)) # (\A[36]~input_o\) ) ) # ( !\Add|C[36]~35_combout\ & ( (\A[36]~input_o\ & (!\AddnSub~input_o\ $ (!\B[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[36]~input_o\,
	dataf => \Add|ALT_INV_C[36]~35_combout\,
	combout => \Add|C[37]~36_combout\);

-- Location: MLABCELL_X42_Y22_N14
\Add|C[38]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[38]~37_combout\ = ( \Add|C[37]~36_combout\ & ( (!\AddnSub~input_o\ $ (!\B[37]~input_o\)) # (\A[37]~input_o\) ) ) # ( !\Add|C[37]~36_combout\ & ( (\A[37]~input_o\ & (!\AddnSub~input_o\ $ (!\B[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	dataf => \Add|ALT_INV_C[37]~36_combout\,
	combout => \Add|C[38]~37_combout\);

-- Location: LABCELL_X40_Y22_N0
\Add|C[39]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[39]~38_combout\ = ( \A[38]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[38]~input_o\)) # (\Add|C[38]~37_combout\) ) ) # ( !\A[38]~input_o\ & ( (\Add|C[38]~37_combout\ & (!\AddnSub~input_o\ $ (!\B[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \Add|ALT_INV_C[38]~37_combout\,
	dataf => \ALT_INV_A[38]~input_o\,
	combout => \Add|C[39]~38_combout\);

-- Location: LABCELL_X40_Y22_N26
\Add|C[40]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[40]~39_combout\ = (!\A[39]~input_o\ & (\Add|C[39]~38_combout\ & (!\B[39]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[39]~input_o\ & ((!\B[39]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[39]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111101000101000111110100010100011111010001010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[39]~38_combout\,
	combout => \Add|C[40]~39_combout\);

-- Location: IOIBUF_X59_Y12_N63
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LABCELL_X40_Y22_N8
\Add|C[41]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[41]~40_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[40]~39_combout\ & (\A[40]~input_o\ & !\B[40]~input_o\)) # (\Add|C[40]~39_combout\ & ((!\B[40]~input_o\) # (\A[40]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[40]~39_combout\ & 
-- (\A[40]~input_o\ & \B[40]~input_o\)) # (\Add|C[40]~39_combout\ & ((\B[40]~input_o\) # (\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[40]~39_combout\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[41]~40_combout\);

-- Location: IOIBUF_X59_Y6_N32
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LABCELL_X40_Y22_N14
\Add|C[42]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[42]~41_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[41]~40_combout\ & (!\B[41]~input_o\ & \A[41]~input_o\)) # (\Add|C[41]~40_combout\ & ((!\B[41]~input_o\) # (\A[41]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[41]~40_combout\ & 
-- (\B[41]~input_o\ & \A[41]~input_o\)) # (\Add|C[41]~40_combout\ & ((\A[41]~input_o\) # (\B[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[41]~40_combout\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[42]~41_combout\);

-- Location: IOIBUF_X41_Y0_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LABCELL_X40_Y22_N16
\Add|C[43]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[43]~42_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[42]~41_combout\ & (!\B[42]~input_o\ & \A[42]~input_o\)) # (\Add|C[42]~41_combout\ & ((!\B[42]~input_o\) # (\A[42]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[42]~41_combout\ & 
-- (\B[42]~input_o\ & \A[42]~input_o\)) # (\Add|C[42]~41_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[42]~41_combout\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[43]~42_combout\);

-- Location: IOIBUF_X41_Y0_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X40_Y22_N20
\Add|C[44]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[44]~43_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[43]~42_combout\ & (!\B[43]~input_o\ & \A[43]~input_o\)) # (\Add|C[43]~42_combout\ & ((!\B[43]~input_o\) # (\A[43]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[43]~42_combout\ & 
-- (\B[43]~input_o\ & \A[43]~input_o\)) # (\Add|C[43]~42_combout\ & ((\A[43]~input_o\) # (\B[43]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[43]~42_combout\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[44]~43_combout\);

-- Location: IOIBUF_X59_Y6_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X40_Y22_N4
\Add|C[45]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[45]~44_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[44]~43_combout\ & (\A[44]~input_o\ & !\B[44]~input_o\)) # (\Add|C[44]~43_combout\ & ((!\B[44]~input_o\) # (\A[44]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[44]~43_combout\ & 
-- (\A[44]~input_o\ & \B[44]~input_o\)) # (\Add|C[44]~43_combout\ & ((\B[44]~input_o\) # (\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[44]~43_combout\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[45]~44_combout\);

-- Location: IOIBUF_X47_Y0_N32
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: MLABCELL_X39_Y24_N0
\Add|C[46]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[46]~45_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[45]~44_combout\ & (!\B[45]~input_o\ & \A[45]~input_o\)) # (\Add|C[45]~44_combout\ & ((!\B[45]~input_o\) # (\A[45]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[45]~44_combout\ & 
-- (\B[45]~input_o\ & \A[45]~input_o\)) # (\Add|C[45]~44_combout\ & ((\A[45]~input_o\) # (\B[45]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[45]~44_combout\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[46]~45_combout\);

-- Location: MLABCELL_X39_Y24_N24
\Add|C[47]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[47]~46_combout\ = ( \A[46]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[46]~input_o\)) # (\Add|C[46]~45_combout\) ) ) # ( !\A[46]~input_o\ & ( (\Add|C[46]~45_combout\ & (!\AddnSub~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	datad => \Add|ALT_INV_C[46]~45_combout\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \Add|C[47]~46_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: MLABCELL_X39_Y24_N30
\Add|C[48]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[48]~47_combout\ = ( \B[47]~input_o\ & ( (!\Add|C[47]~46_combout\ & (!\AddnSub~input_o\ & \A[47]~input_o\)) # (\Add|C[47]~46_combout\ & ((!\AddnSub~input_o\) # (\A[47]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (!\Add|C[47]~46_combout\ & 
-- (\AddnSub~input_o\ & \A[47]~input_o\)) # (\Add|C[47]~46_combout\ & ((\A[47]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[47]~46_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \Add|C[48]~47_combout\);

-- Location: MLABCELL_X39_Y24_N12
\Add|C[49]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[49]~48_combout\ = ( \AddnSub~input_o\ & ( (!\B[48]~input_o\ & ((\Add|C[48]~47_combout\) # (\A[48]~input_o\))) # (\B[48]~input_o\ & (\A[48]~input_o\ & \Add|C[48]~47_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[48]~input_o\ & (\A[48]~input_o\ & 
-- \Add|C[48]~47_combout\)) # (\B[48]~input_o\ & ((\Add|C[48]~47_combout\) # (\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \Add|ALT_INV_C[48]~47_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[49]~48_combout\);

-- Location: IOIBUF_X30_Y0_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: MLABCELL_X39_Y24_N38
\Add|C[50]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[50]~49_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[49]~48_combout\ & (\A[49]~input_o\ & !\B[49]~input_o\)) # (\Add|C[49]~48_combout\ & ((!\B[49]~input_o\) # (\A[49]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[49]~48_combout\ & 
-- (\A[49]~input_o\ & \B[49]~input_o\)) # (\Add|C[49]~48_combout\ & ((\B[49]~input_o\) # (\A[49]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[49]~48_combout\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[50]~49_combout\);

-- Location: LABCELL_X35_Y25_N4
\Add|C[51]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[51]~50_combout\ = ( \Add|C[50]~49_combout\ & ( (!\AddnSub~input_o\ $ (!\B[50]~input_o\)) # (\A[50]~input_o\) ) ) # ( !\Add|C[50]~49_combout\ & ( (\A[50]~input_o\ & (!\AddnSub~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \Add|ALT_INV_C[50]~49_combout\,
	combout => \Add|C[51]~50_combout\);

-- Location: IOIBUF_X35_Y56_N94
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: MLABCELL_X37_Y25_N24
\Add|C[52]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[52]~51_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[51]~50_combout\ & (!\B[51]~input_o\ & \A[51]~input_o\)) # (\Add|C[51]~50_combout\ & ((!\B[51]~input_o\) # (\A[51]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[51]~50_combout\ & 
-- (\B[51]~input_o\ & \A[51]~input_o\)) # (\Add|C[51]~50_combout\ & ((\A[51]~input_o\) # (\B[51]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[51]~50_combout\,
	datac => \ALT_INV_B[51]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[52]~51_combout\);

-- Location: IOIBUF_X33_Y0_N63
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X32_Y26_N8
\Add|C[53]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[53]~52_combout\ = ( \A[52]~input_o\ & ( (!\B[52]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[52]~51_combout\) ) ) # ( !\A[52]~input_o\ & ( (\Add|C[52]~51_combout\ & (!\B[52]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[52]~51_combout\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \Add|C[53]~52_combout\);

-- Location: LABCELL_X32_Y26_N34
\Add|C[54]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[54]~53_combout\ = ( \A[53]~input_o\ & ( (!\B[53]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[53]~52_combout\) ) ) # ( !\A[53]~input_o\ & ( (\Add|C[53]~52_combout\ & (!\B[53]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[53]~52_combout\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Add|C[54]~53_combout\);

-- Location: LABCELL_X32_Y26_N36
\Add|C[55]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[55]~54_combout\ = ( \A[54]~input_o\ & ( (!\B[54]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[54]~53_combout\) ) ) # ( !\A[54]~input_o\ & ( (\Add|C[54]~53_combout\ & (!\B[54]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[54]~53_combout\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Add|C[55]~54_combout\);

-- Location: IOIBUF_X32_Y0_N1
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LABCELL_X32_Y25_N20
\Add|C[56]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[56]~55_combout\ = ( \Add|C[55]~54_combout\ & ( \B[55]~input_o\ & ( (!\AddnSub~input_o\) # (\A[55]~input_o\) ) ) ) # ( !\Add|C[55]~54_combout\ & ( \B[55]~input_o\ & ( (\A[55]~input_o\ & !\AddnSub~input_o\) ) ) ) # ( \Add|C[55]~54_combout\ & ( 
-- !\B[55]~input_o\ & ( (\AddnSub~input_o\) # (\A[55]~input_o\) ) ) ) # ( !\Add|C[55]~54_combout\ & ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & \AddnSub~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011111111101010101000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \Add|ALT_INV_C[55]~54_combout\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \Add|C[56]~55_combout\);

-- Location: IOIBUF_X18_Y0_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X35_Y25_N10
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

-- Location: IOIBUF_X35_Y56_N32
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: MLABCELL_X34_Y29_N22
\Add|C[58]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[58]~57_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[57]~56_combout\ & (\A[57]~input_o\ & !\B[57]~input_o\)) # (\Add|C[57]~56_combout\ & ((!\B[57]~input_o\) # (\A[57]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[57]~56_combout\ & 
-- (\A[57]~input_o\ & \B[57]~input_o\)) # (\Add|C[57]~56_combout\ & ((\B[57]~input_o\) # (\A[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[57]~56_combout\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[58]~57_combout\);

-- Location: MLABCELL_X37_Y27_N28
\Add|C[59]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[59]~58_combout\ = ( \Add|C[58]~57_combout\ & ( (!\AddnSub~input_o\ $ (!\B[58]~input_o\)) # (\A[58]~input_o\) ) ) # ( !\Add|C[58]~57_combout\ & ( (\A[58]~input_o\ & (!\AddnSub~input_o\ $ (!\B[58]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	dataf => \Add|ALT_INV_C[58]~57_combout\,
	combout => \Add|C[59]~58_combout\);

-- Location: MLABCELL_X37_Y27_N30
\Add|C[60]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[60]~59_combout\ = ( \Add|C[59]~58_combout\ & ( (!\AddnSub~input_o\ $ (!\B[59]~input_o\)) # (\A[59]~input_o\) ) ) # ( !\Add|C[59]~58_combout\ & ( (\A[59]~input_o\ & (!\AddnSub~input_o\ $ (!\B[59]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \Add|ALT_INV_C[59]~58_combout\,
	combout => \Add|C[60]~59_combout\);

-- Location: LABCELL_X32_Y27_N2
\Add|C[61]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[61]~60_combout\ = ( \A[60]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[60]~input_o\)) # (\Add|C[60]~59_combout\) ) ) # ( !\A[60]~input_o\ & ( (\Add|C[60]~59_combout\ & (!\AddnSub~input_o\ $ (!\B[60]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	datad => \Add|ALT_INV_C[60]~59_combout\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Add|C[61]~60_combout\);

-- Location: IOIBUF_X33_Y56_N63
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LABCELL_X32_Y27_N24
\Add|C[62]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[62]~61_combout\ = ( \B[61]~input_o\ & ( (!\Add|C[61]~60_combout\ & (!\AddnSub~input_o\ & \A[61]~input_o\)) # (\Add|C[61]~60_combout\ & ((!\AddnSub~input_o\) # (\A[61]~input_o\))) ) ) # ( !\B[61]~input_o\ & ( (!\Add|C[61]~60_combout\ & 
-- (\AddnSub~input_o\ & \A[61]~input_o\)) # (\Add|C[61]~60_combout\ & ((\A[61]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[61]~60_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_B[61]~input_o\,
	combout => \Add|C[62]~61_combout\);

-- Location: IOIBUF_X31_Y56_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X32_Y27_N0
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

-- Location: IOIBUF_X59_Y6_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: MLABCELL_X44_Y25_N10
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \B[63]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[63]~62_combout\ & !\A[63]~input_o\)) # (\AddnSub~input_o\ & ((!\A[63]~input_o\) # (\Add|C[63]~62_combout\))) ) ) # ( !\B[63]~input_o\ & ( (!\AddnSub~input_o\ & ((!\A[63]~input_o\) # 
-- (\Add|C[63]~62_combout\))) # (\AddnSub~input_o\ & (\Add|C[63]~62_combout\ & !\A[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100100010101110110010001001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[63]~62_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \AltB~0_combout\);

-- Location: MLABCELL_X44_Y25_N6
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \B[63]~input_o\ & ( (!\A[63]~input_o\ & (\Add|C[63]~62_combout\ & !\AddnSub~input_o\)) # (\A[63]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[63]~62_combout\))) ) ) # ( !\B[63]~input_o\ & ( (!\A[63]~input_o\ & 
-- (\Add|C[63]~62_combout\ & \AddnSub~input_o\)) # (\A[63]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[63]~62_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \Add|ALT_INV_C[63]~62_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X59_Y18_N94
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: MLABCELL_X44_Y25_N32
\Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( \Add|Cout~0_combout\ & ( \FuncClass[0]~input_o\ & ( (\Logic|Mux63~0_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( !\Add|Cout~0_combout\ & ( \FuncClass[0]~input_o\ & ( (\FuncClass[1]~input_o\) # (\Logic|Mux63~0_combout\) ) ) ) # ( 
-- \Add|Cout~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~0_combout\)) # (\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) ) ) ) # ( !\Add|Cout~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & 
-- (\Y_ShiftOrArith[0]~0_combout\)) # (\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110001110111011101110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|ALT_INV_Mux63~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	datad => \ALT_INV_AltB~0_combout\,
	datae => \Add|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: MLABCELL_X44_Y29_N4
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[1]~0_combout\,
	combout => \Add|S\(1));

-- Location: MLABCELL_X44_Y29_N6
\Mux62~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~4_combout\ = (!\B[1]~input_o\ & (\A[1]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[1]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101100001010101110110000101010111011000010101011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux62~4_combout\);

-- Location: MLABCELL_X44_Y25_N18
\Mux60~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = ( \ShiftFN[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux60~4_combout\);

-- Location: MLABCELL_X44_Y25_N16
\Mux60~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = ( \ShiftFN[0]~input_o\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101110110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux60~5_combout\);

-- Location: LABCELL_X40_Y29_N34
\Mux60~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = ( \ShiftFN[0]~input_o\ & ( !\Mux30~0_combout\ ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\Mux30~0_combout\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: MLABCELL_X44_Y29_N2
\Shift|ShiftLeft0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~3_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (!\Shift|ShiftLeft0~0_combout\ & ((\B[0]~input_o\) # (\A[1]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (!\B[0]~input_o\ & 
-- !\Shift|ShiftLeft0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ShiftLeft0~3_combout\);

-- Location: LABCELL_X40_Y29_N32
\Mux60~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = ( \ShiftFN[0]~input_o\ & ( !\Mux30~0_combout\ $ (\ShiftFN[1]~input_o\) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Mux30~0_combout\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux60~2_combout\);

-- Location: LABCELL_X40_Y26_N22
\Mux60~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = ( \B[4]~input_o\ & ( (\B[5]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: MLABCELL_X42_Y29_N8
\Shift|ShiftRight1~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = ( \A[17]~input_o\ & ( \A[18]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[20]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \A[18]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\ & \A[19]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[20]~input_o\))) ) ) ) # ( \A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[19]~input_o\)))) # (\B[0]~input_o\ & (\A[20]~input_o\ & 
-- (\B[1]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[18]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: MLABCELL_X46_Y28_N2
\Shift|ShiftRight1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = ( \A[23]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\))) ) ) ) # ( !\A[23]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)))) ) ) ) # ( \A[23]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)))) ) ) ) # ( !\A[23]~input_o\ & ( !\A[21]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LABCELL_X43_Y28_N4
\Shift|ShiftRight1~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = ( \A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: MLABCELL_X44_Y24_N0
\Shift|ShiftRight1~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (\A[30]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LABCELL_X38_Y28_N20
\Shift|ShiftRight1~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~23_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~21_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~22_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~20_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~21_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~22_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~23_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LABCELL_X40_Y24_N28
\Shift|ShiftRight1~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~27_combout\ = ( \A[41]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[42]~input_o\)) # (\B[1]~input_o\ & ((\A[44]~input_o\))) ) ) ) # ( !\A[41]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[42]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[44]~input_o\))) ) ) ) # ( \A[41]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[43]~input_o\) ) ) ) # ( !\A[41]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[43]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~27_combout\);

-- Location: MLABCELL_X42_Y24_N6
\Shift|ShiftRight1~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~26_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[40]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[37]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~26_combout\);

-- Location: LABCELL_X43_Y25_N26
\Shift|ShiftRight1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~25_combout\ = ( \A[33]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[34]~input_o\))) # (\B[1]~input_o\ & (\A[36]~input_o\)) ) ) ) # ( !\A[33]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[34]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[36]~input_o\)) ) ) ) # ( \A[33]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[35]~input_o\) ) ) ) # ( !\A[33]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[35]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~25_combout\);

-- Location: MLABCELL_X39_Y24_N22
\Shift|ShiftRight1~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~28_combout\ = ( \A[46]~input_o\ & ( \A[48]~input_o\ & ( ((!\B[1]~input_o\ & (\A[45]~input_o\)) # (\B[1]~input_o\ & ((\A[47]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[46]~input_o\ & ( \A[48]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[45]~input_o\)) # (\B[1]~input_o\ & ((\A[47]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[46]~input_o\ & ( !\A[48]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[45]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[47]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[46]~input_o\ & ( !\A[48]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[45]~input_o\)) # (\B[1]~input_o\ & ((\A[47]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \Shift|ShiftRight1~28_combout\);

-- Location: LABCELL_X38_Y28_N24
\Shift|ShiftRight1~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~29_combout\ = ( \Shift|ShiftRight1~28_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~26_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftRight1~28_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- \Shift|ShiftRight1~26_combout\) ) ) ) # ( \Shift|ShiftRight1~28_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~25_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~27_combout\)) ) ) ) # ( !\Shift|ShiftRight1~28_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~25_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~27_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~26_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~25_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~28_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~29_combout\);

-- Location: MLABCELL_X34_Y26_N4
\Shift|ShiftRight0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~1_combout\ = ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[61]~input_o\)) # (\B[0]~input_o\ & ((\A[62]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight0~1_combout\);

-- Location: MLABCELL_X37_Y24_N26
\Shift|ShiftRight1~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~32_combout\ = ( \A[49]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[51]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[51]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) ) # ( \A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[51]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[50]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[51]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftRight1~32_combout\);

-- Location: LABCELL_X35_Y27_N30
\Shift|ShiftRight1~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~31_combout\ = ( \A[60]~input_o\ & ( \A[58]~input_o\ & ( ((!\B[1]~input_o\ & (\A[57]~input_o\)) # (\B[1]~input_o\ & ((\A[59]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \A[58]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[57]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[59]~input_o\)))) ) ) ) # ( \A[60]~input_o\ & ( !\A[58]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[57]~input_o\))) # (\B[1]~input_o\ & (((\A[59]~input_o\)) # 
-- (\B[0]~input_o\))) ) ) ) # ( !\A[60]~input_o\ & ( !\A[58]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[57]~input_o\)) # (\B[1]~input_o\ & ((\A[59]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Shift|ShiftRight1~31_combout\);

-- Location: MLABCELL_X34_Y26_N10
\Shift|ShiftRight1~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~33_combout\ = ( \Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~32_combout\) # (\B[3]~input_o\))) ) ) # ( !\Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- \Shift|ShiftRight1~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~32_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~31_combout\,
	combout => \Shift|ShiftRight1~33_combout\);

-- Location: LABCELL_X35_Y24_N26
\Shift|ShiftRight1~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~30_combout\ = ( \B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\) # (\A[56]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[54]~input_o\ & ( (\A[56]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & ((\A[53]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftRight1~30_combout\);

-- Location: MLABCELL_X34_Y26_N34
\Shift|ShiftRight0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~2_combout\ = ( \Shift|ShiftRight1~30_combout\ & ( (!\Shift|ShiftRight1~33_combout\ & ((!\B[2]~input_o\) # ((!\Shift|ShiftRight0~1_combout\ & \B[3]~input_o\)))) ) ) # ( !\Shift|ShiftRight1~30_combout\ & ( (!\Shift|ShiftRight1~33_combout\ 
-- & ((!\Shift|ShiftRight0~1_combout\) # ((!\B[3]~input_o\) # (!\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011110000001000001111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~33_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~30_combout\,
	combout => \Shift|ShiftRight0~2_combout\);

-- Location: MLABCELL_X34_Y26_N6
\Shift|ShiftRight1~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~34_combout\ = ( \B[1]~input_o\ & ( \A[63]~input_o\ ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[61]~input_o\)) # (\B[0]~input_o\ & ((\A[62]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight1~34_combout\);

-- Location: MLABCELL_X34_Y26_N8
\Shift|ShiftRight1~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~35_combout\ = ( \Shift|ShiftRight1~30_combout\ & ( (!\Shift|ShiftRight1~33_combout\ & ((!\B[2]~input_o\) # ((\B[3]~input_o\ & !\Shift|ShiftRight1~34_combout\)))) ) ) # ( !\Shift|ShiftRight1~30_combout\ & ( 
-- (!\Shift|ShiftRight1~33_combout\ & ((!\B[2]~input_o\) # ((!\B[3]~input_o\) # (!\Shift|ShiftRight1~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000010110000101000001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~33_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~34_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~30_combout\,
	combout => \Shift|ShiftRight1~35_combout\);

-- Location: MLABCELL_X42_Y25_N26
\Mux60~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\B[4]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: MLABCELL_X37_Y25_N8
\Mux62~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = ( \Shift|ShiftRight1~35_combout\ & ( \Mux60~1_combout\ & ( (!\Mux60~0_combout\ & !\Shift|ShiftRight0~2_combout\) ) ) ) # ( !\Shift|ShiftRight1~35_combout\ & ( \Mux60~1_combout\ & ( (!\Shift|ShiftRight0~2_combout\) # (\Mux60~0_combout\) 
-- ) ) ) # ( \Shift|ShiftRight1~35_combout\ & ( !\Mux60~1_combout\ & ( (!\Mux60~0_combout\ & (\Shift|ShiftRight1~24_combout\)) # (\Mux60~0_combout\ & ((\Shift|ShiftRight1~29_combout\))) ) ) ) # ( !\Shift|ShiftRight1~35_combout\ & ( !\Mux60~1_combout\ & ( 
-- (!\Mux60~0_combout\ & (\Shift|ShiftRight1~24_combout\)) # (\Mux60~0_combout\ & ((\Shift|ShiftRight1~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011111111111010101011010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~24_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~29_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~2_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~35_combout\,
	dataf => \ALT_INV_Mux60~1_combout\,
	combout => \Mux62~0_combout\);

-- Location: LABCELL_X40_Y30_N26
\Mux62~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = ( \B[0]~input_o\ & ( \A[4]~input_o\ & ( (\A[2]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\A[4]~input_o\ & ( (!\B[1]~input_o\ & \A[2]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: LABCELL_X45_Y28_N26
\Shift|ShiftRight1~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~38_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[15]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[13]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftRight1~38_combout\);

-- Location: LABCELL_X40_Y30_N10
\Shift|ShiftRight1~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~36_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (\A[5]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftRight1~36_combout\);

-- Location: LABCELL_X38_Y29_N4
\Shift|ShiftRight1~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~37_combout\ = ( \A[10]~input_o\ & ( \A[12]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[11]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|ShiftRight1~37_combout\);

-- Location: MLABCELL_X37_Y29_N20
\Mux62~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~36_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~38_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~37_combout\ & ( 
-- (\B[3]~input_o\) # (\Mux62~1_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~36_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~38_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftRight1~37_combout\ & ( (\Mux62~1_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~38_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~36_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~37_combout\,
	combout => \Mux62~2_combout\);

-- Location: MLABCELL_X37_Y29_N4
\Mux62~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~3_combout\ = ( \Mux62~2_combout\ & ( (!\Mux60~3_combout\ & (((\Mux60~2_combout\)) # (\Shift|ShiftLeft0~3_combout\))) # (\Mux60~3_combout\ & (((!\Mux60~2_combout\ & \Mux62~0_combout\)))) ) ) # ( !\Mux62~2_combout\ & ( (!\Mux60~2_combout\ & 
-- ((!\Mux60~3_combout\ & (\Shift|ShiftLeft0~3_combout\)) # (\Mux60~3_combout\ & ((\Mux62~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101010011110100010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~3_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datac => \ALT_INV_Mux60~2_combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux62~2_combout\,
	combout => \Mux62~3_combout\);

-- Location: MLABCELL_X44_Y29_N28
\Mux62~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux62~5_combout\ = ( \Mux62~3_combout\ & ( (!\Mux60~4_combout\ & (\Add|S\(1) & ((\Mux60~5_combout\)))) # (\Mux60~4_combout\ & (((!\Mux60~5_combout\) # (\Mux62~4_combout\)))) ) ) # ( !\Mux62~3_combout\ & ( (\Mux60~5_combout\ & ((!\Mux60~4_combout\ & 
-- (\Add|S\(1))) # (\Mux60~4_combout\ & ((\Mux62~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100001111010100110000111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(1),
	datab => \ALT_INV_Mux62~4_combout\,
	datac => \ALT_INV_Mux60~4_combout\,
	datad => \ALT_INV_Mux60~5_combout\,
	dataf => \ALT_INV_Mux62~3_combout\,
	combout => \Mux62~5_combout\);

-- Location: LABCELL_X35_Y27_N32
\Shift|ShiftRight1~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~50_combout\ = ( \A[60]~input_o\ & ( \A[61]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \A[61]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\)) ) ) ) # ( \A[60]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[59]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\)) ) ) ) # ( !\A[60]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[58]~input_o\))) # (\B[0]~input_o\ & (\A[59]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \Shift|ShiftRight1~50_combout\);

-- Location: MLABCELL_X37_Y24_N10
\Shift|ShiftRight1~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~51_combout\ = ( \A[51]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[53]~input_o\)))) ) ) ) # ( !\A[51]~input_o\ & ( \A[50]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[52]~input_o\))) # (\B[0]~input_o\ & (((\A[53]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[51]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[0]~input_o\ & (\A[52]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[53]~input_o\)))) ) ) ) # ( !\A[51]~input_o\ & ( !\A[50]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[53]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftRight1~51_combout\);

-- Location: MLABCELL_X42_Y26_N4
\Shift|ShiftRight1~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~52_combout\ = (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~51_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000001100010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~50_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~51_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ShiftRight1~52_combout\);

-- Location: LABCELL_X35_Y24_N28
\Shift|ShiftRight1~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~49_combout\ = ( \B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\) # (\A[56]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[54]~input_o\ & ( (\B[1]~input_o\ & \A[56]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftRight1~49_combout\);

-- Location: MLABCELL_X46_Y26_N0
\Shift|ShiftRight1~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~53_combout\ = ( \B[0]~input_o\ & ( \A[63]~input_o\ ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[62]~input_o\))) # (\B[1]~input_o\ & (\A[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~53_combout\);

-- Location: MLABCELL_X42_Y26_N8
\Shift|ShiftRight1~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~54_combout\ = ( \Shift|ShiftRight1~53_combout\ & ( ((\B[2]~input_o\ & ((\Shift|ShiftRight1~49_combout\) # (\B[3]~input_o\)))) # (\Shift|ShiftRight1~52_combout\) ) ) # ( !\Shift|ShiftRight1~53_combout\ & ( ((!\B[3]~input_o\ & 
-- (\B[2]~input_o\ & \Shift|ShiftRight1~49_combout\))) # (\Shift|ShiftRight1~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~52_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~49_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~53_combout\,
	combout => \Shift|ShiftRight1~54_combout\);

-- Location: MLABCELL_X42_Y24_N30
\Shift|ShiftRight1~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~45_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[41]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[40]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[38]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~45_combout\);

-- Location: MLABCELL_X39_Y24_N6
\Shift|ShiftRight1~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~47_combout\ = ( \A[47]~input_o\ & ( \A[48]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[46]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[49]~input_o\)))) ) ) ) # ( !\A[47]~input_o\ & ( \A[48]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[46]~input_o\))) # (\B[0]~input_o\ & (((\A[49]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[47]~input_o\ & ( !\A[48]~input_o\ & ( (!\B[0]~input_o\ & (\A[46]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\) # (\A[49]~input_o\)))) ) ) ) # ( !\A[47]~input_o\ & ( !\A[48]~input_o\ & ( (!\B[0]~input_o\ & (\A[46]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[49]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \Shift|ShiftRight1~47_combout\);

-- Location: LABCELL_X40_Y24_N14
\Shift|ShiftRight1~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~46_combout\ = ( \A[42]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[43]~input_o\)) # (\B[1]~input_o\ & ((\A[45]~input_o\))) ) ) ) # ( !\A[42]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[43]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[45]~input_o\))) ) ) ) # ( \A[42]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[44]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[44]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~46_combout\);

-- Location: LABCELL_X43_Y25_N12
\Shift|ShiftRight1~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~44_combout\ = ( \A[34]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[35]~input_o\))) # (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) ) # ( !\A[34]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[35]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[37]~input_o\)) ) ) ) # ( \A[34]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[36]~input_o\) ) ) ) # ( !\A[34]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[36]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~44_combout\);

-- Location: MLABCELL_X42_Y26_N2
\Shift|ShiftRight1~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~48_combout\ = ( \Shift|ShiftRight1~46_combout\ & ( \Shift|ShiftRight1~44_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & (\Shift|ShiftRight1~45_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~47_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~46_combout\ & ( \Shift|ShiftRight1~44_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~45_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~47_combout\))))) ) ) ) # ( 
-- \Shift|ShiftRight1~46_combout\ & ( !\Shift|ShiftRight1~44_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~45_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~47_combout\))))) ) ) ) # ( 
-- !\Shift|ShiftRight1~46_combout\ & ( !\Shift|ShiftRight1~44_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~45_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~47_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~45_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~46_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~44_combout\,
	combout => \Shift|ShiftRight1~48_combout\);

-- Location: LABCELL_X53_Y26_N20
\Shift|ShiftRight0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~3_combout\ = ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[63]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight0~3_combout\);

-- Location: MLABCELL_X42_Y26_N10
\Shift|ShiftRight0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = ( \Shift|ShiftRight1~49_combout\ & ( ((\B[2]~input_o\ & ((!\B[3]~input_o\) # (\Shift|ShiftRight0~3_combout\)))) # (\Shift|ShiftRight1~52_combout\) ) ) # ( !\Shift|ShiftRight1~49_combout\ & ( ((\B[3]~input_o\ & 
-- (\B[2]~input_o\ & \Shift|ShiftRight0~3_combout\))) # (\Shift|ShiftRight1~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100100011111111110010001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~3_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~52_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~49_combout\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: LABCELL_X43_Y28_N8
\Shift|ShiftRight1~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~41_combout\ = ( \A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( !\A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[27]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( \A[28]~input_o\ & ( !\B[0]~input_o\ & ( (\A[26]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~41_combout\);

-- Location: LABCELL_X43_Y25_N8
\Shift|ShiftRight1~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~42_combout\ = ( \A[30]~input_o\ & ( \A[31]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[32]~input_o\))) # (\B[0]~input_o\ & (\A[33]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( \A[31]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\ & \A[32]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[33]~input_o\))) ) ) ) # ( \A[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[32]~input_o\)))) # (\B[0]~input_o\ & (\A[33]~input_o\ & 
-- (\B[1]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\A[31]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[32]~input_o\))) # (\B[0]~input_o\ & (\A[33]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ShiftRight1~42_combout\);

-- Location: MLABCELL_X42_Y29_N34
\Shift|ShiftRight1~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~39_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[18]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (\A[21]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[18]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ShiftRight1~39_combout\);

-- Location: MLABCELL_X44_Y26_N0
\Shift|ShiftRight1~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~40_combout\ = ( \A[25]~input_o\ & ( \A[22]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[24]~input_o\)))) # (\B[0]~input_o\ & (((\A[23]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \A[22]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[24]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[23]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[24]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\A[23]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[24]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Shift|ShiftRight1~40_combout\);

-- Location: LABCELL_X43_Y27_N2
\Shift|ShiftRight1~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~43_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~41_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~42_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~40_combout\ & ( (\Shift|ShiftRight1~39_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~41_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~42_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & \Shift|ShiftRight1~39_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~41_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~42_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~39_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~40_combout\,
	combout => \Shift|ShiftRight1~43_combout\);

-- Location: MLABCELL_X42_Y26_N34
\Mux61~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( \Mux60~0_combout\ & ( \Shift|ShiftRight1~43_combout\ & ( (!\Mux60~1_combout\ & ((\Shift|ShiftRight1~48_combout\))) # (\Mux60~1_combout\ & (\Shift|ShiftRight1~54_combout\)) ) ) ) # ( !\Mux60~0_combout\ & ( 
-- \Shift|ShiftRight1~43_combout\ & ( (!\Mux60~1_combout\) # (\Shift|ShiftRight0~4_combout\) ) ) ) # ( \Mux60~0_combout\ & ( !\Shift|ShiftRight1~43_combout\ & ( (!\Mux60~1_combout\ & ((\Shift|ShiftRight1~48_combout\))) # (\Mux60~1_combout\ & 
-- (\Shift|ShiftRight1~54_combout\)) ) ) ) # ( !\Mux60~0_combout\ & ( !\Shift|ShiftRight1~43_combout\ & ( (\Shift|ShiftRight0~4_combout\ & \Mux60~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~54_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~48_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~4_combout\,
	datad => \ALT_INV_Mux60~1_combout\,
	datae => \ALT_INV_Mux60~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~43_combout\,
	combout => \Mux61~0_combout\);

-- Location: MLABCELL_X44_Y29_N0
\Shift|ShiftLeft0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~4_combout\ = ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~4_combout\);

-- Location: MLABCELL_X46_Y29_N32
\Shift|ShiftLeft0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~5_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( !\Shift|ShiftLeft0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~5_combout\);

-- Location: LABCELL_X38_Y29_N10
\Shift|ShiftRight1~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~55_combout\ = ( \A[8]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftRight1~55_combout\);

-- Location: LABCELL_X38_Y29_N32
\Shift|ShiftRight1~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~56_combout\ = ( \A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) ) # ( \A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[12]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|ShiftRight1~56_combout\);

-- Location: LABCELL_X40_Y30_N32
\Mux61~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[4]~input_o\ & ( (\A[5]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LABCELL_X45_Y28_N8
\Shift|ShiftRight1~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~57_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftRight1~57_combout\);

-- Location: LABCELL_X43_Y27_N6
\Mux61~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = ( \Shift|ShiftRight1~57_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ShiftRight1~55_combout\) ) ) ) # ( !\Shift|ShiftRight1~57_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~55_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \Shift|ShiftRight1~57_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux61~1_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~56_combout\)) ) ) ) # ( !\Shift|ShiftRight1~57_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Mux61~1_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~55_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~56_combout\,
	datac => \ALT_INV_Mux61~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~57_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux61~2_combout\);

-- Location: LABCELL_X43_Y27_N30
\Mux61~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = ( \Mux61~2_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~5_combout\))) # (\Mux60~3_combout\ & (\Mux61~0_combout\)))) # (\Mux60~2_combout\ & (((!\Mux60~3_combout\)))) ) ) # ( !\Mux61~2_combout\ & ( 
-- (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~5_combout\))) # (\Mux60~3_combout\ & (\Mux61~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010100000011111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~0_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datac => \ALT_INV_Mux60~2_combout\,
	datad => \ALT_INV_Mux60~3_combout\,
	dataf => \ALT_INV_Mux61~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: MLABCELL_X44_Y29_N12
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \B[2]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[2]~1_combout\ $ (!\A[2]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[2]~1_combout\ $ (\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[2]~1_combout\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Add|S\(2));

-- Location: LABCELL_X53_Y26_N6
\Mux61~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = ( \LogicFN[1]~input_o\ & ( \A[2]~input_o\ & ( (!\LogicFN[0]~input_o\) # (\B[2]~input_o\) ) ) ) # ( !\LogicFN[1]~input_o\ & ( \A[2]~input_o\ & ( !\B[2]~input_o\ $ (!\LogicFN[0]~input_o\) ) ) ) # ( \LogicFN[1]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (\B[2]~input_o\ & !\LogicFN[0]~input_o\) ) ) ) # ( !\LogicFN[1]~input_o\ & ( !\A[2]~input_o\ & ( \B[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000001011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux61~4_combout\);

-- Location: MLABCELL_X44_Y29_N32
\Mux61~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = ( \Mux61~4_combout\ & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & (\Mux61~3_combout\))) # (\Mux60~5_combout\ & (((\Add|S\(2))) # (\Mux60~4_combout\))) ) ) # ( !\Mux61~4_combout\ & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & 
-- (\Mux61~3_combout\))) # (\Mux60~5_combout\ & (!\Mux60~4_combout\ & ((\Add|S\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux61~3_combout\,
	datad => \Add|ALT_INV_S\(2),
	dataf => \ALT_INV_Mux61~4_combout\,
	combout => \Mux61~5_combout\);

-- Location: LABCELL_X43_Y26_N18
\Mux60~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~10_combout\ = (!\B[3]~input_o\ & (\A[3]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[3]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011101011000001101110101100000110111010110000011011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \Mux60~10_combout\);

-- Location: LABCELL_X45_Y28_N16
\Shift|ShiftRight1~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~74_combout\ = ( \A[16]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\A[15]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[18]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( \A[17]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\A[15]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[18]~input_o\ & (\B[1]~input_o\))) ) ) ) # ( \A[16]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[15]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[18]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[15]~input_o\)))) # (\B[0]~input_o\ & (\A[18]~input_o\ & (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ShiftRight1~74_combout\);

-- Location: LABCELL_X40_Y30_N36
\Mux60~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (\A[3]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux60~7_combout\);

-- Location: LABCELL_X38_Y29_N38
\Shift|ShiftRight1~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~72_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~72_combout\);

-- Location: LABCELL_X45_Y28_N12
\Shift|ShiftRight1~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~73_combout\ = ( \A[11]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\A[12]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( !\A[11]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[13]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((\A[12]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\ & \A[12]~input_o\)))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftRight1~73_combout\);

-- Location: MLABCELL_X42_Y28_N14
\Mux60~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~8_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~72_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~74_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( 
-- (\Mux60~7_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~73_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~72_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~74_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftRight1~73_combout\ & ( (!\B[3]~input_o\ & \Mux60~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~74_combout\,
	datac => \ALT_INV_Mux60~7_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~72_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~73_combout\,
	combout => \Mux60~8_combout\);

-- Location: MLABCELL_X44_Y29_N18
\Shift|ShiftLeft0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[3]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[3]~input_o\)))) # (\B[0]~input_o\ & (\A[0]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[3]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\A[3]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[0]~input_o\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: MLABCELL_X34_Y27_N22
\Shift|ShiftLeft0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = ( \Shift|ShiftLeft0~6_combout\ & ( !\Shift|ShiftLeft0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: LABCELL_X40_Y24_N18
\Shift|ShiftRight1~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~65_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[46]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[44]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[45]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[43]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~65_combout\);

-- Location: MLABCELL_X42_Y24_N16
\Shift|ShiftRight1~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~64_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[42]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[40]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[41]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[39]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~64_combout\);

-- Location: MLABCELL_X42_Y24_N34
\Shift|ShiftRight1~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~63_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[36]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[35]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~63_combout\);

-- Location: MLABCELL_X37_Y24_N34
\Shift|ShiftRight1~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~66_combout\ = ( \A[49]~input_o\ & ( \A[47]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[48]~input_o\)) # (\B[1]~input_o\ & ((\A[50]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( \A[47]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[48]~input_o\))) # (\B[1]~input_o\ & (((\A[50]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[49]~input_o\ & ( !\A[47]~input_o\ & ( (!\B[1]~input_o\ & (\A[48]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[50]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[47]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[48]~input_o\)) # (\B[1]~input_o\ & ((\A[50]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \Shift|ShiftRight1~66_combout\);

-- Location: MLABCELL_X42_Y28_N8
\Shift|ShiftRight1~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~67_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~66_combout\ & ( (\Shift|ShiftRight1~64_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~66_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~66_combout\ & ( (!\B[3]~input_o\ & \Shift|ShiftRight1~64_combout\) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftRight1~66_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~65_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~64_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~63_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~66_combout\,
	combout => \Shift|ShiftRight1~67_combout\);

-- Location: LABCELL_X35_Y24_N12
\Shift|ShiftRight1~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~68_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[58]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[57]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( \A[55]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight1~68_combout\);

-- Location: LABCELL_X35_Y24_N16
\Shift|ShiftRight1~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~69_combout\ = ( \A[51]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[52]~input_o\)))) # (\B[1]~input_o\ & (((\A[53]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[51]~input_o\ & ( \A[54]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[52]~input_o\))) # (\B[1]~input_o\ & (((\A[53]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[51]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[52]~input_o\)))) # (\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & ((\A[53]~input_o\)))) ) ) ) # ( !\A[51]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[52]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[53]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftRight1~69_combout\);

-- Location: LABCELL_X35_Y27_N36
\Shift|ShiftRight1~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~70_combout\ = ( \A[60]~input_o\ & ( \A[62]~input_o\ & ( ((!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[61]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[60]~input_o\ & ( \A[62]~input_o\ & ( (!\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & (\A[59]~input_o\))) # (\B[1]~input_o\ & (((\A[61]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[60]~input_o\ & ( !\A[62]~input_o\ & ( (!\B[1]~input_o\ & (((\A[59]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & 
-- ((\A[61]~input_o\)))) ) ) ) # ( !\A[60]~input_o\ & ( !\A[62]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[61]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Shift|ShiftRight1~70_combout\);

-- Location: LABCELL_X35_Y26_N30
\Shift|ShiftRight0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~5_combout\ = ( \A[63]~input_o\ & ( (!\B[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight0~5_combout\);

-- Location: LABCELL_X35_Y26_N12
\Shift|ShiftRight0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~6_combout\ = ( \Shift|ShiftRight1~70_combout\ & ( \Shift|ShiftRight0~5_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~70_combout\ & ( \Shift|ShiftRight0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~70_combout\ & ( !\Shift|ShiftRight0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~70_combout\ & ( !\Shift|ShiftRight0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~68_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~69_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~70_combout\,
	dataf => \Shift|ALT_INV_ShiftRight0~5_combout\,
	combout => \Shift|ShiftRight0~6_combout\);

-- Location: LABCELL_X43_Y28_N38
\Shift|ShiftRight1~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~60_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (\A[28]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[27]~input_o\)) # (\B[1]~input_o\ & ((\A[29]~input_o\))) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[27]~input_o\)) # (\B[1]~input_o\ & ((\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~60_combout\);

-- Location: MLABCELL_X42_Y29_N38
\Shift|ShiftRight1~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~58_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (\A[21]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ShiftRight1~58_combout\);

-- Location: LABCELL_X43_Y25_N38
\Shift|ShiftRight1~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~61_combout\ = ( \A[34]~input_o\ & ( \A[31]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[32]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[33]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( \A[31]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[32]~input_o\))) # (\B[1]~input_o\ & (((\A[33]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[34]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & (\A[32]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\) # (\A[33]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & (\A[32]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[33]~input_o\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ShiftRight1~61_combout\);

-- Location: LABCELL_X43_Y28_N32
\Shift|ShiftRight1~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~59_combout\ = ( \A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[24]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[24]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( \A[25]~input_o\ & ( !\B[0]~input_o\ & ( (\A[23]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~59_combout\);

-- Location: MLABCELL_X42_Y28_N6
\Shift|ShiftRight1~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~62_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~60_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~61_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~59_combout\ & ( (\B[2]~input_o\) # (\Shift|ShiftRight1~58_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~60_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~61_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (\Shift|ShiftRight1~58_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~60_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~58_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~61_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~59_combout\,
	combout => \Shift|ShiftRight1~62_combout\);

-- Location: LABCELL_X35_Y26_N14
\Shift|ShiftRight1~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~71_combout\ = ( \Shift|ShiftRight1~70_combout\ & ( \A[63]~input_o\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~70_combout\ & ( \A[63]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~70_combout\ & ( !\A[63]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~70_combout\ & ( !\A[63]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~68_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~69_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~70_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight1~71_combout\);

-- Location: MLABCELL_X37_Y26_N20
\Mux60~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = ( \Shift|ShiftRight1~62_combout\ & ( \Shift|ShiftRight1~71_combout\ & ( (!\Mux60~1_combout\ & (((!\Mux60~0_combout\)) # (\Shift|ShiftRight1~67_combout\))) # (\Mux60~1_combout\ & (((\Shift|ShiftRight0~6_combout\) # 
-- (\Mux60~0_combout\)))) ) ) ) # ( !\Shift|ShiftRight1~62_combout\ & ( \Shift|ShiftRight1~71_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~67_combout\ & (\Mux60~0_combout\))) # (\Mux60~1_combout\ & (((\Shift|ShiftRight0~6_combout\) # 
-- (\Mux60~0_combout\)))) ) ) ) # ( \Shift|ShiftRight1~62_combout\ & ( !\Shift|ShiftRight1~71_combout\ & ( (!\Mux60~1_combout\ & (((!\Mux60~0_combout\)) # (\Shift|ShiftRight1~67_combout\))) # (\Mux60~1_combout\ & (((!\Mux60~0_combout\ & 
-- \Shift|ShiftRight0~6_combout\)))) ) ) ) # ( !\Shift|ShiftRight1~62_combout\ & ( !\Shift|ShiftRight1~71_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~67_combout\ & (\Mux60~0_combout\))) # (\Mux60~1_combout\ & (((!\Mux60~0_combout\ & 
-- \Shift|ShiftRight0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~67_combout\,
	datac => \ALT_INV_Mux60~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~6_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~62_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~71_combout\,
	combout => \Mux60~6_combout\);

-- Location: MLABCELL_X37_Y29_N10
\Mux60~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~9_combout\ = ( \Mux60~6_combout\ & ( (!\Mux60~3_combout\ & ((!\Mux60~2_combout\ & ((\Shift|ShiftLeft0~7_combout\))) # (\Mux60~2_combout\ & (\Mux60~8_combout\)))) # (\Mux60~3_combout\ & (!\Mux60~2_combout\)) ) ) # ( !\Mux60~6_combout\ & ( 
-- (!\Mux60~3_combout\ & ((!\Mux60~2_combout\ & ((\Shift|ShiftLeft0~7_combout\))) # (\Mux60~2_combout\ & (\Mux60~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~3_combout\,
	datab => \ALT_INV_Mux60~2_combout\,
	datac => \ALT_INV_Mux60~8_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	dataf => \ALT_INV_Mux60~6_combout\,
	combout => \Mux60~9_combout\);

-- Location: MLABCELL_X44_Y29_N38
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \Add|C[3]~2_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[3]~2_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[3]~2_combout\,
	combout => \Add|S\(3));

-- Location: MLABCELL_X44_Y29_N34
\Mux60~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~11_combout\ = ( \Add|S\(3) & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & ((\Mux60~9_combout\)))) # (\Mux60~5_combout\ & ((!\Mux60~4_combout\) # ((\Mux60~10_combout\)))) ) ) # ( !\Add|S\(3) & ( (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & 
-- ((\Mux60~9_combout\))) # (\Mux60~5_combout\ & (\Mux60~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux60~10_combout\,
	datad => \ALT_INV_Mux60~9_combout\,
	dataf => \Add|ALT_INV_S\(3),
	combout => \Mux60~11_combout\);

-- Location: MLABCELL_X39_Y26_N22
\Mux59~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( \LogicFN[0]~input_o\ & ( \A[4]~input_o\ & ( !\LogicFN[1]~input_o\ $ (\B[4]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \A[4]~input_o\ & ( (\B[4]~input_o\) # (\LogicFN[1]~input_o\) ) ) ) # ( \LogicFN[0]~input_o\ & ( !\A[4]~input_o\ 
-- & ( (!\LogicFN[1]~input_o\ & \B[4]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\A[4]~input_o\ & ( \B[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110000111111001111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: LABCELL_X40_Y25_N18
\Shift|ShiftRight1~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~76_combout\ = ( \Shift|ShiftRight1~15_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~12_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftRight1~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- \Shift|ShiftRight1~12_combout\) ) ) ) # ( \Shift|ShiftRight1~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~13_combout\))) ) ) ) # ( !\Shift|ShiftRight1~15_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~13_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~12_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~76_combout\);

-- Location: LABCELL_X35_Y26_N20
\Shift|ShiftRight1~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~77_combout\ = ( \Shift|ShiftRight1~17_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~16_combout\))) # (\B[3]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( !\Shift|ShiftRight1~17_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|ShiftRight1~16_combout\))) # (\B[3]~input_o\ & (\A[63]~input_o\)) ) ) ) # ( \Shift|ShiftRight1~17_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~18_combout\) ) ) ) # ( !\Shift|ShiftRight1~17_combout\ & 
-- ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftRight1~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~16_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~17_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~77_combout\);

-- Location: LABCELL_X40_Y25_N34
\Shift|ShiftRight1~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~75_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~10_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~7_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~8_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~75_combout\);

-- Location: LABCELL_X35_Y26_N38
\Shift|ShiftRight0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~7_combout\ = ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~16_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~17_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~17_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~16_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight0~7_combout\);

-- Location: MLABCELL_X42_Y25_N8
\Mux59~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = ( \Shift|ShiftRight1~75_combout\ & ( \Shift|ShiftRight0~7_combout\ & ( (!\Mux60~0_combout\) # ((!\Mux60~1_combout\ & (\Shift|ShiftRight1~76_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftRight1~77_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~75_combout\ & ( \Shift|ShiftRight0~7_combout\ & ( (!\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (\Mux60~0_combout\ & ((!\Mux60~1_combout\ & (\Shift|ShiftRight1~76_combout\)) # (\Mux60~1_combout\ & 
-- ((\Shift|ShiftRight1~77_combout\))))) ) ) ) # ( \Shift|ShiftRight1~75_combout\ & ( !\Shift|ShiftRight0~7_combout\ & ( (!\Mux60~0_combout\ & (((!\Mux60~1_combout\)))) # (\Mux60~0_combout\ & ((!\Mux60~1_combout\ & (\Shift|ShiftRight1~76_combout\)) # 
-- (\Mux60~1_combout\ & ((\Shift|ShiftRight1~77_combout\))))) ) ) ) # ( !\Shift|ShiftRight1~75_combout\ & ( !\Shift|ShiftRight0~7_combout\ & ( (\Mux60~0_combout\ & ((!\Mux60~1_combout\ & (\Shift|ShiftRight1~76_combout\)) # (\Mux60~1_combout\ & 
-- ((\Shift|ShiftRight1~77_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~76_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~77_combout\,
	datad => \ALT_INV_Mux60~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~75_combout\,
	dataf => \Shift|ALT_INV_ShiftRight0~7_combout\,
	combout => \Mux59~1_combout\);

-- Location: LABCELL_X40_Y30_N22
\Shift|ShiftLeft0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = ( \B[0]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[4]~input_o\ & ( (\B[1]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: MLABCELL_X44_Y26_N6
\Shift|ShiftLeft0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: MLABCELL_X44_Y28_N20
\Shift|ShiftLeft0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = ( \Shift|ShiftLeft0~8_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~9_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|ShiftLeft0~8_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \Shift|ShiftLeft0~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: LABCELL_X40_Y29_N2
\Mux59~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~5_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~1_combout\ & ( 
-- (!\B[3]~input_o\) # (\Shift|ShiftRight1~3_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~5_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftRight1~1_combout\ & ( (\B[3]~input_o\ & \Shift|ShiftRight1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~5_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~1_combout\,
	combout => \Mux59~2_combout\);

-- Location: LABCELL_X40_Y29_N4
\Mux59~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = ( \Mux59~2_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~10_combout\))) # (\Mux60~3_combout\ & (\Mux59~1_combout\)))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\)) ) ) # ( !\Mux59~2_combout\ & ( 
-- (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~10_combout\))) # (\Mux60~3_combout\ & (\Mux59~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \ALT_INV_Mux59~1_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	dataf => \ALT_INV_Mux59~2_combout\,
	combout => \Mux59~3_combout\);

-- Location: LABCELL_X40_Y29_N38
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \A[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[4]~3_combout\ $ (!\B[4]~input_o\)) ) ) # ( !\A[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[4]~3_combout\ $ (\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[4]~3_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|S\(4));

-- Location: LABCELL_X40_Y29_N10
\Mux59~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = ( \Add|S\(4) & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\)) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & ((\Mux59~3_combout\))) # (\Mux60~5_combout\ & (\Mux59~0_combout\)))) ) ) # ( !\Add|S\(4) & ( (\Mux60~4_combout\ & 
-- ((!\Mux60~5_combout\ & ((\Mux59~3_combout\))) # (\Mux60~5_combout\ & (\Mux59~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux59~0_combout\,
	datad => \ALT_INV_Mux59~3_combout\,
	dataf => \Add|ALT_INV_S\(4),
	combout => \Mux59~4_combout\);

-- Location: MLABCELL_X37_Y29_N18
\Mux58~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~37_combout\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~20_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~36_combout\))) # 
-- (\B[3]~input_o\ & (\Shift|ShiftRight1~38_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~37_combout\ & ( (\Shift|ShiftRight1~20_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftRight1~36_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~20_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~36_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~37_combout\,
	combout => \Mux58~2_combout\);

-- Location: LABCELL_X40_Y30_N6
\Shift|ShiftLeft0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (\A[5]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: MLABCELL_X44_Y29_N8
\Shift|ShiftLeft0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[0]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: MLABCELL_X37_Y29_N34
\Shift|ShiftLeft0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = ( \Shift|ShiftLeft0~11_combout\ & ( (!\B[3]~input_o\ & ((\B[2]~input_o\) # (\Shift|ShiftLeft0~12_combout\))) ) ) # ( !\Shift|ShiftLeft0~11_combout\ & ( (\Shift|ShiftLeft0~12_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~11_combout\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: MLABCELL_X34_Y26_N36
\Shift|ShiftRight1~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~80_combout\ = ( \A[63]~input_o\ & ( \Shift|ShiftRight1~31_combout\ & ( ((!\B[3]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~34_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\A[63]~input_o\ & ( 
-- \Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~34_combout\))))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( \A[63]~input_o\ & ( 
-- !\Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~34_combout\))))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\A[63]~input_o\ & ( 
-- !\Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~34_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~30_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~34_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~31_combout\,
	combout => \Shift|ShiftRight1~80_combout\);

-- Location: MLABCELL_X34_Y26_N32
\Shift|ShiftRight0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~8_combout\ = ( \Shift|ShiftRight1~31_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ShiftRight1~30_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftRight0~1_combout\ & ((!\B[2]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftRight1~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~30_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~30_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~31_combout\,
	combout => \Shift|ShiftRight0~8_combout\);

-- Location: LABCELL_X38_Y28_N32
\Shift|ShiftRight1~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~79_combout\ = ( \Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~26_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~27_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~26_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~27_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~26_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~27_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~26_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~27_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~26_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~28_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~32_combout\,
	combout => \Shift|ShiftRight1~79_combout\);

-- Location: LABCELL_X38_Y28_N10
\Shift|ShiftRight1~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~78_combout\ = ( \Shift|ShiftRight1~25_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~22_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftRight1~25_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- \Shift|ShiftRight1~22_combout\) ) ) ) # ( \Shift|ShiftRight1~25_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~21_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~23_combout\)) ) ) ) # ( !\Shift|ShiftRight1~25_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~21_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~23_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~21_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~22_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~78_combout\);

-- Location: LABCELL_X38_Y26_N22
\Mux58~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = ( \Shift|ShiftRight1~79_combout\ & ( \Shift|ShiftRight1~78_combout\ & ( (!\Mux60~1_combout\) # ((!\Mux60~0_combout\ & ((\Shift|ShiftRight0~8_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~80_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~79_combout\ & ( \Shift|ShiftRight1~78_combout\ & ( (!\Mux60~0_combout\ & (((!\Mux60~1_combout\) # (\Shift|ShiftRight0~8_combout\)))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~80_combout\ & ((\Mux60~1_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~79_combout\ & ( !\Shift|ShiftRight1~78_combout\ & ( (!\Mux60~0_combout\ & (((\Shift|ShiftRight0~8_combout\ & \Mux60~1_combout\)))) # (\Mux60~0_combout\ & (((!\Mux60~1_combout\)) # (\Shift|ShiftRight1~80_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~79_combout\ & ( !\Shift|ShiftRight1~78_combout\ & ( (\Mux60~1_combout\ & ((!\Mux60~0_combout\ & ((\Shift|ShiftRight0~8_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~80_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~80_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~8_combout\,
	datad => \ALT_INV_Mux60~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~79_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~78_combout\,
	combout => \Mux58~1_combout\);

-- Location: MLABCELL_X37_Y29_N8
\Mux58~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = ( \Mux58~1_combout\ & ( (!\Mux60~3_combout\ & ((!\Mux60~2_combout\ & ((\Shift|ShiftLeft0~13_combout\))) # (\Mux60~2_combout\ & (\Mux58~2_combout\)))) # (\Mux60~3_combout\ & (!\Mux60~2_combout\)) ) ) # ( !\Mux58~1_combout\ & ( 
-- (!\Mux60~3_combout\ & ((!\Mux60~2_combout\ & ((\Shift|ShiftLeft0~13_combout\))) # (\Mux60~2_combout\ & (\Mux58~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~3_combout\,
	datab => \ALT_INV_Mux60~2_combout\,
	datac => \ALT_INV_Mux58~2_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	dataf => \ALT_INV_Mux58~1_combout\,
	combout => \Mux58~3_combout\);

-- Location: LABCELL_X35_Y25_N6
\Mux58~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( \B[5]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[5]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LABCELL_X40_Y29_N36
\Add|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(5) = ( \A[5]~input_o\ & ( !\Add|C[5]~4_combout\ $ (!\AddnSub~input_o\ $ (!\B[5]~input_o\)) ) ) # ( !\A[5]~input_o\ & ( !\Add|C[5]~4_combout\ $ (!\AddnSub~input_o\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[5]~4_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|S\(5));

-- Location: LABCELL_X40_Y29_N8
\Mux58~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = ( \Add|S\(5) & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\)) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & (\Mux58~3_combout\)) # (\Mux60~5_combout\ & ((\Mux58~0_combout\))))) ) ) # ( !\Add|S\(5) & ( (\Mux60~4_combout\ & 
-- ((!\Mux60~5_combout\ & (\Mux58~3_combout\)) # (\Mux60~5_combout\ & ((\Mux58~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux58~3_combout\,
	datad => \ALT_INV_Mux58~0_combout\,
	dataf => \Add|ALT_INV_S\(5),
	combout => \Mux58~4_combout\);

-- Location: LABCELL_X43_Y29_N36
\Mux57~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = ( \B[6]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[6]~input_o\)) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: MLABCELL_X42_Y26_N6
\Shift|ShiftRight0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~9_combout\ = ( \Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight0~3_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~50_combout\ & ((!\B[3]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftRight0~3_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~50_combout\ & ((!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~50_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~49_combout\,
	combout => \Shift|ShiftRight0~9_combout\);

-- Location: MLABCELL_X42_Y26_N20
\Shift|ShiftRight1~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~83_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~53_combout\ & ( (!\B[2]~input_o\) # (\A[63]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~53_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~49_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ShiftRight1~50_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~53_combout\ & ( (\B[2]~input_o\ & \A[63]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~53_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~49_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~50_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~50_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~49_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~53_combout\,
	combout => \Shift|ShiftRight1~83_combout\);

-- Location: LABCELL_X43_Y27_N34
\Shift|ShiftRight1~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~81_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~42_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~44_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~41_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~42_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~44_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~40_combout\ & ( (\Shift|ShiftRight1~41_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~41_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~42_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~44_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~40_combout\,
	combout => \Shift|ShiftRight1~81_combout\);

-- Location: MLABCELL_X42_Y26_N38
\Shift|ShiftRight1~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~82_combout\ = ( \Shift|ShiftRight1~46_combout\ & ( \Shift|ShiftRight1~45_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~46_combout\ & ( \Shift|ShiftRight1~45_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\))))) ) ) ) # ( 
-- \Shift|ShiftRight1~46_combout\ & ( !\Shift|ShiftRight1~45_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\))))) ) ) ) # ( 
-- !\Shift|ShiftRight1~46_combout\ & ( !\Shift|ShiftRight1~45_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~51_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~46_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~45_combout\,
	combout => \Shift|ShiftRight1~82_combout\);

-- Location: MLABCELL_X42_Y26_N26
\Mux57~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = ( \Shift|ShiftRight1~81_combout\ & ( \Shift|ShiftRight1~82_combout\ & ( (!\Mux60~1_combout\) # ((!\Mux60~0_combout\ & (\Shift|ShiftRight0~9_combout\)) # (\Mux60~0_combout\ & ((\Shift|ShiftRight1~83_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~81_combout\ & ( \Shift|ShiftRight1~82_combout\ & ( (!\Mux60~0_combout\ & (\Shift|ShiftRight0~9_combout\ & ((\Mux60~1_combout\)))) # (\Mux60~0_combout\ & (((!\Mux60~1_combout\) # (\Shift|ShiftRight1~83_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~81_combout\ & ( !\Shift|ShiftRight1~82_combout\ & ( (!\Mux60~0_combout\ & (((!\Mux60~1_combout\)) # (\Shift|ShiftRight0~9_combout\))) # (\Mux60~0_combout\ & (((\Shift|ShiftRight1~83_combout\ & \Mux60~1_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~81_combout\ & ( !\Shift|ShiftRight1~82_combout\ & ( (\Mux60~1_combout\ & ((!\Mux60~0_combout\ & (\Shift|ShiftRight0~9_combout\)) # (\Mux60~0_combout\ & ((\Shift|ShiftRight1~83_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~9_combout\,
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~83_combout\,
	datad => \ALT_INV_Mux60~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~81_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~82_combout\,
	combout => \Mux57~1_combout\);

-- Location: LABCELL_X43_Y27_N16
\Mux57~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = ( \Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~39_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~55_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~56_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~39_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~55_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~56_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~39_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~55_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~56_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~39_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~55_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~56_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~56_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~55_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~57_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~39_combout\,
	combout => \Mux57~2_combout\);

-- Location: LABCELL_X40_Y30_N30
\Shift|ShiftLeft0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = ( \B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[4]~input_o\ & ( (\A[3]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: MLABCELL_X46_Y29_N36
\Shift|ShiftLeft0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~14_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|ShiftLeft0~4_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~14_combout\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: LABCELL_X43_Y29_N20
\Mux57~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = ( \Shift|ShiftLeft0~15_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\) # ((\Mux57~1_combout\)))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\ & ((\Mux57~2_combout\)))) ) ) # ( !\Shift|ShiftLeft0~15_combout\ & ( 
-- (!\Mux60~2_combout\ & (\Mux60~3_combout\ & (\Mux57~1_combout\))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\ & ((\Mux57~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \ALT_INV_Mux57~1_combout\,
	datad => \ALT_INV_Mux57~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	combout => \Mux57~3_combout\);

-- Location: LABCELL_X43_Y29_N38
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \Add|C[6]~5_combout\ & ( !\B[6]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[6]~input_o\)) ) ) # ( !\Add|C[6]~5_combout\ & ( !\B[6]~input_o\ $ (!\AddnSub~input_o\ $ (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \Add|ALT_INV_C[6]~5_combout\,
	combout => \Add|S\(6));

-- Location: LABCELL_X43_Y29_N26
\Mux57~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = ( \Add|S\(6) & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & ((\Mux57~3_combout\)))) # (\Mux60~5_combout\ & ((!\Mux60~4_combout\) # ((\Mux57~0_combout\)))) ) ) # ( !\Add|S\(6) & ( (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & 
-- ((\Mux57~3_combout\))) # (\Mux60~5_combout\ & (\Mux57~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux57~0_combout\,
	datad => \ALT_INV_Mux57~3_combout\,
	dataf => \Add|ALT_INV_S\(6),
	combout => \Mux57~4_combout\);

-- Location: LABCELL_X40_Y30_N12
\Shift|ShiftLeft0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = ( \B[1]~input_o\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[7]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[7]~input_o\ & ( (\A[6]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: MLABCELL_X42_Y27_N22
\Shift|ShiftLeft0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = ( \Shift|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( !\B[3]~input_o\ ) ) ) # ( \Shift|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftLeft0~16_combout\ & !\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~6_combout\ 
-- & ( !\B[2]~input_o\ & ( (\Shift|ShiftLeft0~16_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: LABCELL_X35_Y26_N8
\Shift|ShiftRight0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~10_combout\ = ( \Shift|ShiftRight1~68_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftRight1~70_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftRight0~5_combout\)))) ) ) # ( 
-- !\Shift|ShiftRight1~68_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\Shift|ShiftRight1~70_combout\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftRight0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~70_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~5_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~68_combout\,
	combout => \Shift|ShiftRight0~10_combout\);

-- Location: MLABCELL_X42_Y28_N18
\Shift|ShiftRight1~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~84_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~61_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~63_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~60_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~61_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ShiftRight1~63_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (\Shift|ShiftRight1~60_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~60_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~63_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~61_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~59_combout\,
	combout => \Shift|ShiftRight1~84_combout\);

-- Location: LABCELL_X35_Y26_N10
\Shift|ShiftRight1~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~86_combout\ = ( \Shift|ShiftRight1~68_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftRight1~70_combout\)))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) ) # ( !\Shift|ShiftRight1~68_combout\ & ( (!\B[3]~input_o\ & 
-- (\B[2]~input_o\ & ((\Shift|ShiftRight1~70_combout\)))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~70_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~68_combout\,
	combout => \Shift|ShiftRight1~86_combout\);

-- Location: LABCELL_X35_Y26_N26
\Shift|ShiftRight1~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~85_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~65_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~66_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~65_combout\ & ( (\B[2]~input_o\) # (\Shift|ShiftRight1~64_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~65_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~66_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~69_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~65_combout\ & ( (\Shift|ShiftRight1~64_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~64_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~66_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~69_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~65_combout\,
	combout => \Shift|ShiftRight1~85_combout\);

-- Location: MLABCELL_X39_Y27_N4
\Mux56~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = ( \Shift|ShiftRight1~85_combout\ & ( \Mux60~0_combout\ & ( (!\Mux60~1_combout\) # (\Shift|ShiftRight1~86_combout\) ) ) ) # ( !\Shift|ShiftRight1~85_combout\ & ( \Mux60~0_combout\ & ( (\Mux60~1_combout\ & \Shift|ShiftRight1~86_combout\) 
-- ) ) ) # ( \Shift|ShiftRight1~85_combout\ & ( !\Mux60~0_combout\ & ( (!\Mux60~1_combout\ & ((\Shift|ShiftRight1~84_combout\))) # (\Mux60~1_combout\ & (\Shift|ShiftRight0~10_combout\)) ) ) ) # ( !\Shift|ShiftRight1~85_combout\ & ( !\Mux60~0_combout\ & ( 
-- (!\Mux60~1_combout\ & ((\Shift|ShiftRight1~84_combout\))) # (\Mux60~1_combout\ & (\Shift|ShiftRight0~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~10_combout\,
	datab => \ALT_INV_Mux60~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~84_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~86_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~85_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: MLABCELL_X42_Y28_N20
\Mux56~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~74_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~58_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( 
-- (\Shift|ShiftRight1~72_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~73_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~74_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~58_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftRight1~73_combout\ & ( (!\B[2]~input_o\ & \Shift|ShiftRight1~72_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~58_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~72_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~74_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~73_combout\,
	combout => \Mux56~2_combout\);

-- Location: LABCELL_X43_Y29_N22
\Mux56~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = ( \Mux56~2_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & (\Shift|ShiftLeft0~17_combout\)) # (\Mux60~3_combout\ & ((\Mux56~1_combout\))))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\)) ) ) # ( !\Mux56~2_combout\ & ( 
-- (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & (\Shift|ShiftLeft0~17_combout\)) # (\Mux60~3_combout\ & ((\Mux56~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datad => \ALT_INV_Mux56~1_combout\,
	dataf => \ALT_INV_Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LABCELL_X43_Y29_N4
\Mux56~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (!\B[7]~input_o\ & (\A[7]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[7]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[7]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001110001001101100111000100110110011100010011011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LABCELL_X43_Y29_N2
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \B[7]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[7]~6_combout\ $ (!\A[7]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[7]~6_combout\ $ (\A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[7]~6_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|S\(7));

-- Location: LABCELL_X43_Y29_N10
\Mux56~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = ( \Add|S\(7) & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & (\Mux56~3_combout\))) # (\Mux60~5_combout\ & ((!\Mux60~4_combout\) # ((\Mux56~0_combout\)))) ) ) # ( !\Add|S\(7) & ( (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & 
-- (\Mux56~3_combout\)) # (\Mux60~5_combout\ & ((\Mux56~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux56~3_combout\,
	datad => \ALT_INV_Mux56~0_combout\,
	dataf => \Add|ALT_INV_S\(7),
	combout => \Mux56~4_combout\);

-- Location: LABCELL_X43_Y29_N12
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \Add|C[8]~7_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[8]~7_combout\ & ( !\A[8]~input_o\ $ (!\B[8]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[8]~7_combout\,
	combout => \Add|S\(8));

-- Location: LABCELL_X43_Y29_N14
\Mux55~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (!\B[8]~input_o\ & (\A[8]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[8]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[8]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101100001001101110110000100110111011000010011011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LABCELL_X40_Y30_N18
\Shift|ShiftLeft0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & \A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: MLABCELL_X44_Y28_N22
\Shift|ShiftLeft0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = ( \Shift|ShiftLeft0~9_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~18_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\))) ) ) # ( !\Shift|ShiftLeft0~9_combout\ & ( 
-- (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~18_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LABCELL_X40_Y29_N12
\Mux55~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftRight1~5_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~3_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~5_combout\ & ( 
-- (\Shift|ShiftRight1~2_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftRight1~5_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~3_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftRight1~5_combout\ & ( (!\B[3]~input_o\ & \Shift|ShiftRight1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~5_combout\,
	combout => \Mux55~2_combout\);

-- Location: LABCELL_X40_Y25_N0
\Shift|ShiftRight1~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~88_combout\ = ( \Shift|ShiftRight1~17_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ShiftRight1~13_combout\) ) ) ) # ( !\Shift|ShiftRight1~17_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftRight1~13_combout\ & 
-- !\B[3]~input_o\) ) ) ) # ( \Shift|ShiftRight1~17_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~12_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~15_combout\))) ) ) ) # ( !\Shift|ShiftRight1~17_combout\ & ( !\B[2]~input_o\ & 
-- ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~12_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~12_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~13_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~15_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~17_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~88_combout\);

-- Location: LABCELL_X40_Y26_N8
\Shift|ShiftRight0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~11_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftRight1~18_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftRight1~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~16_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight0~11_combout\);

-- Location: LABCELL_X40_Y26_N26
\Shift|ShiftRight1~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~87_combout\ = ( \A[63]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight1~87_combout\);

-- Location: LABCELL_X40_Y25_N6
\Shift|ShiftRight1~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~89_combout\ = ( \Shift|ShiftRight1~10_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)) ) ) ) # ( !\Shift|ShiftRight1~10_combout\ & ( 
-- \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)) ) ) ) # ( \Shift|ShiftRight1~10_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ShiftRight1~7_combout\) ) ) ) # ( 
-- !\Shift|ShiftRight1~10_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftRight1~7_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~10_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~89_combout\);

-- Location: LABCELL_X40_Y26_N32
\Mux55~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = ( \Mux60~1_combout\ & ( \Shift|ShiftRight1~89_combout\ & ( (!\Shift|ShiftRight0~11_combout\ & ((!\Mux60~0_combout\) # (!\Shift|ShiftRight1~87_combout\))) ) ) ) # ( !\Mux60~1_combout\ & ( \Shift|ShiftRight1~89_combout\ & ( 
-- (!\Shift|ShiftRight1~88_combout\ & \Mux60~0_combout\) ) ) ) # ( \Mux60~1_combout\ & ( !\Shift|ShiftRight1~89_combout\ & ( (!\Shift|ShiftRight0~11_combout\ & ((!\Mux60~0_combout\) # (!\Shift|ShiftRight1~87_combout\))) ) ) ) # ( !\Mux60~1_combout\ & ( 
-- !\Shift|ShiftRight1~89_combout\ & ( (!\Shift|ShiftRight1~88_combout\) # (!\Mux60~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111100001100000000100010001000101111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~88_combout\,
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~11_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~87_combout\,
	datae => \ALT_INV_Mux60~1_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~89_combout\,
	combout => \Mux55~1_combout\);

-- Location: LABCELL_X40_Y29_N6
\Mux55~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = ( \Mux55~1_combout\ & ( (!\Mux60~3_combout\ & ((!\Mux60~2_combout\ & (\Shift|ShiftLeft0~19_combout\)) # (\Mux60~2_combout\ & ((\Mux55~2_combout\))))) ) ) # ( !\Mux55~1_combout\ & ( (!\Mux60~2_combout\ & 
-- (((\Shift|ShiftLeft0~19_combout\)) # (\Mux60~3_combout\))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\ & ((\Mux55~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001101110001010100110111000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	datad => \ALT_INV_Mux55~2_combout\,
	dataf => \ALT_INV_Mux55~1_combout\,
	combout => \Mux55~3_combout\);

-- Location: LABCELL_X43_Y29_N8
\Mux55~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = ( \Mux55~3_combout\ & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\)) # (\Mux60~5_combout\ & ((!\Mux60~4_combout\ & (\Add|S\(8))) # (\Mux60~4_combout\ & ((\Mux55~0_combout\))))) ) ) # ( !\Mux55~3_combout\ & ( (\Mux60~5_combout\ & 
-- ((!\Mux60~4_combout\ & (\Add|S\(8))) # (\Mux60~4_combout\ & ((\Mux55~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \Add|ALT_INV_S\(8),
	datad => \ALT_INV_Mux55~0_combout\,
	dataf => \ALT_INV_Mux55~3_combout\,
	combout => \Mux55~4_combout\);

-- Location: LABCELL_X38_Y28_N2
\Shift|ShiftRight1~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~91_combout\ = ( \Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ShiftRight1~27_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # 
-- (\Shift|ShiftRight1~30_combout\))) ) ) ) # ( !\Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ShiftRight1~27_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~30_combout\ & 
-- ((\B[3]~input_o\)))) ) ) ) # ( \Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftRight1~27_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftRight1~30_combout\))) 
-- ) ) ) # ( !\Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftRight1~27_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~30_combout\ & ((\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~30_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~28_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~32_combout\,
	combout => \Shift|ShiftRight1~91_combout\);

-- Location: LABCELL_X38_Y28_N16
\Shift|ShiftRight1~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~90_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~26_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~23_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~25_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~22_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~23_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~26_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~25_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~90_combout\);

-- Location: MLABCELL_X34_Y26_N2
\Shift|ShiftRight0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~12_combout\ = ( \Shift|ShiftRight1~31_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftRight0~1_combout\))) ) ) # ( !\Shift|ShiftRight1~31_combout\ & ( (\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- \Shift|ShiftRight0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~31_combout\,
	combout => \Shift|ShiftRight0~12_combout\);

-- Location: MLABCELL_X34_Y26_N0
\Shift|ShiftRight1~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~92_combout\ = ( \Shift|ShiftRight1~31_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftRight1~34_combout\)))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) ) # ( !\Shift|ShiftRight1~31_combout\ & ( (!\B[3]~input_o\ & 
-- (\B[2]~input_o\ & (\Shift|ShiftRight1~34_combout\))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~34_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~31_combout\,
	combout => \Shift|ShiftRight1~92_combout\);

-- Location: MLABCELL_X34_Y26_N24
\Mux54~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = ( \Mux60~1_combout\ & ( \Shift|ShiftRight1~92_combout\ & ( (\Shift|ShiftRight0~12_combout\) # (\Mux60~0_combout\) ) ) ) # ( !\Mux60~1_combout\ & ( \Shift|ShiftRight1~92_combout\ & ( (!\Mux60~0_combout\ & 
-- ((\Shift|ShiftRight1~90_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~91_combout\)) ) ) ) # ( \Mux60~1_combout\ & ( !\Shift|ShiftRight1~92_combout\ & ( (!\Mux60~0_combout\ & \Shift|ShiftRight0~12_combout\) ) ) ) # ( !\Mux60~1_combout\ & ( 
-- !\Shift|ShiftRight1~92_combout\ & ( (!\Mux60~0_combout\ & ((\Shift|ShiftRight1~90_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~91_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~91_combout\,
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~90_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~12_combout\,
	datae => \ALT_INV_Mux60~1_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~92_combout\,
	combout => \Mux54~1_combout\);

-- Location: LABCELL_X38_Y29_N0
\Shift|ShiftLeft0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = ( \A[8]~input_o\ & ( \A[6]~input_o\ & ( ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) # 
-- (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: MLABCELL_X34_Y29_N26
\Shift|ShiftLeft0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = ( \Shift|ShiftLeft0~11_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~20_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~12_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftLeft0~11_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~20_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010100000011111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~11_combout\,
	combout => \Shift|ShiftLeft0~21_combout\);

-- Location: LABCELL_X38_Y28_N6
\Mux54~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = ( \Shift|ShiftRight1~37_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~38_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~21_combout\)) ) ) ) # ( !\Shift|ShiftRight1~37_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|ShiftRight1~38_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~21_combout\)) ) ) ) # ( \Shift|ShiftRight1~37_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~20_combout\) ) ) ) # ( 
-- !\Shift|ShiftRight1~37_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftRight1~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~20_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~21_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~38_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~37_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: MLABCELL_X34_Y29_N8
\Mux54~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = ( \Mux54~2_combout\ & ( (!\Mux60~3_combout\ & (((\Mux60~2_combout\) # (\Shift|ShiftLeft0~21_combout\)))) # (\Mux60~3_combout\ & (\Mux54~1_combout\ & ((!\Mux60~2_combout\)))) ) ) # ( !\Mux54~2_combout\ & ( (!\Mux60~2_combout\ & 
-- ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~21_combout\))) # (\Mux60~3_combout\ & (\Mux54~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101111100000011010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux54~1_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~21_combout\,
	datac => \ALT_INV_Mux60~3_combout\,
	datad => \ALT_INV_Mux60~2_combout\,
	dataf => \ALT_INV_Mux54~2_combout\,
	combout => \Mux54~3_combout\);

-- Location: LABCELL_X43_Y29_N30
\Add|S[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(9) = ( \Add|C[9]~8_combout\ & ( !\AddnSub~input_o\ $ (!\A[9]~input_o\ $ (!\B[9]~input_o\)) ) ) # ( !\Add|C[9]~8_combout\ & ( !\AddnSub~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_C[9]~8_combout\,
	combout => \Add|S\(9));

-- Location: LABCELL_X43_Y29_N32
\Mux54~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[9]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[9]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LABCELL_X43_Y29_N24
\Mux54~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = ( \Mux54~0_combout\ & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & (\Mux54~3_combout\))) # (\Mux60~5_combout\ & (((\Add|S\(9))) # (\Mux60~4_combout\))) ) ) # ( !\Mux54~0_combout\ & ( (!\Mux60~5_combout\ & (\Mux60~4_combout\ & 
-- (\Mux54~3_combout\))) # (\Mux60~5_combout\ & (!\Mux60~4_combout\ & ((\Add|S\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~5_combout\,
	datab => \ALT_INV_Mux60~4_combout\,
	datac => \ALT_INV_Mux54~3_combout\,
	datad => \Add|ALT_INV_S\(9),
	dataf => \ALT_INV_Mux54~0_combout\,
	combout => \Mux54~4_combout\);

-- Location: MLABCELL_X42_Y26_N14
\Shift|ShiftRight1~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~95_combout\ = ( \Shift|ShiftRight1~53_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftRight1~50_combout\))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) ) # ( !\Shift|ShiftRight1~53_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftRight1~50_combout\ & (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~50_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~53_combout\,
	combout => \Shift|ShiftRight1~95_combout\);

-- Location: MLABCELL_X42_Y26_N28
\Shift|ShiftRight1~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~94_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~49_combout\ & ( (\B[2]~input_o\) # (\Shift|ShiftRight1~51_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~46_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~49_combout\ & ( (\Shift|ShiftRight1~51_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~46_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~51_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~47_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~46_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~49_combout\,
	combout => \Shift|ShiftRight1~94_combout\);

-- Location: LABCELL_X43_Y27_N22
\Shift|ShiftRight1~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~93_combout\ = ( \Shift|ShiftRight1~41_combout\ & ( \Shift|ShiftRight1~42_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ShiftRight1~44_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~45_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~41_combout\ & ( \Shift|ShiftRight1~42_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~44_combout\ & ((\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight1~45_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~41_combout\ & ( !\Shift|ShiftRight1~42_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftRight1~44_combout\))) # (\B[2]~input_o\ & (((\Shift|ShiftRight1~45_combout\ & \B[3]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~41_combout\ & ( !\Shift|ShiftRight1~42_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~44_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~45_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~44_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~45_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~41_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~42_combout\,
	combout => \Shift|ShiftRight1~93_combout\);

-- Location: MLABCELL_X42_Y26_N12
\Shift|ShiftRight0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~13_combout\ = ( \Shift|ShiftRight1~50_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftRight0~3_combout\))) ) ) # ( !\Shift|ShiftRight1~50_combout\ & ( (\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- \Shift|ShiftRight0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~3_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~50_combout\,
	combout => \Shift|ShiftRight0~13_combout\);

-- Location: MLABCELL_X37_Y27_N32
\Mux53~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = ( \Mux60~1_combout\ & ( \Shift|ShiftRight0~13_combout\ & ( (!\Mux60~0_combout\) # (\Shift|ShiftRight1~95_combout\) ) ) ) # ( !\Mux60~1_combout\ & ( \Shift|ShiftRight0~13_combout\ & ( (!\Mux60~0_combout\ & 
-- ((\Shift|ShiftRight1~93_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~94_combout\)) ) ) ) # ( \Mux60~1_combout\ & ( !\Shift|ShiftRight0~13_combout\ & ( (\Shift|ShiftRight1~95_combout\ & \Mux60~0_combout\) ) ) ) # ( !\Mux60~1_combout\ & ( 
-- !\Shift|ShiftRight0~13_combout\ & ( (!\Mux60~0_combout\ & ((\Shift|ShiftRight1~93_combout\))) # (\Mux60~0_combout\ & (\Shift|ShiftRight1~94_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~95_combout\,
	datab => \ALT_INV_Mux60~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~94_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~93_combout\,
	datae => \ALT_INV_Mux60~1_combout\,
	dataf => \Shift|ALT_INV_ShiftRight0~13_combout\,
	combout => \Mux53~1_combout\);

-- Location: LABCELL_X38_Y29_N26
\Shift|ShiftLeft0~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[7]~input_o\))) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: MLABCELL_X46_Y29_N38
\Shift|ShiftLeft0~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ShiftLeft0~22_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~14_combout\ & ((!\B[3]~input_o\)))) ) ) # ( !\Shift|ShiftLeft0~4_combout\ 
-- & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~22_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~22_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LABCELL_X43_Y27_N24
\Mux53~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = ( \Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~40_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~39_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~40_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftRight1~56_combout\ & !\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftRight1~39_combout\))) ) ) ) # ( 
-- \Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ShiftRight1~56_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~39_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~39_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~39_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~56_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~57_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~40_combout\,
	combout => \Mux53~2_combout\);

-- Location: LABCELL_X43_Y27_N8
\Mux53~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = ( \Mux60~3_combout\ & ( \Mux53~2_combout\ & ( (\Mux53~1_combout\ & !\Mux60~2_combout\) ) ) ) # ( !\Mux60~3_combout\ & ( \Mux53~2_combout\ & ( (\Mux60~2_combout\) # (\Shift|ShiftLeft0~23_combout\) ) ) ) # ( \Mux60~3_combout\ & ( 
-- !\Mux53~2_combout\ & ( (\Mux53~1_combout\ & !\Mux60~2_combout\) ) ) ) # ( !\Mux60~3_combout\ & ( !\Mux53~2_combout\ & ( (\Shift|ShiftLeft0~23_combout\ & !\Mux60~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000000000110011111111110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux53~1_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~23_combout\,
	datad => \ALT_INV_Mux60~2_combout\,
	datae => \ALT_INV_Mux60~3_combout\,
	dataf => \ALT_INV_Mux53~2_combout\,
	combout => \Mux53~3_combout\);

-- Location: LABCELL_X45_Y29_N18
\Mux53~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( \B[10]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[10]~input_o\)) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LABCELL_X45_Y29_N20
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[10]~9_combout\)) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|C[10]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|S\(10));

-- Location: LABCELL_X45_Y29_N0
\Mux53~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = ( \Add|S\(10) & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\)) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & (\Mux53~3_combout\)) # (\Mux60~5_combout\ & ((\Mux53~0_combout\))))) ) ) # ( !\Add|S\(10) & ( (\Mux60~4_combout\ & 
-- ((!\Mux60~5_combout\ & (\Mux53~3_combout\)) # (\Mux60~5_combout\ & ((\Mux53~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux53~3_combout\,
	datad => \ALT_INV_Mux53~0_combout\,
	dataf => \Add|ALT_INV_S\(10),
	combout => \Mux53~4_combout\);

-- Location: LABCELL_X45_Y29_N16
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \AddnSub~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (!\Add|C[11]~10_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (\Add|C[11]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \Add|ALT_INV_C[11]~10_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(11));

-- Location: LABCELL_X45_Y29_N4
\Mux52~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[11]~input_o\ & (!\B[11]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[11]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LABCELL_X35_Y26_N34
\Shift|ShiftRight1~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~97_combout\ = ( \Shift|ShiftRight1~65_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~66_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~68_combout\))) ) ) ) # ( !\Shift|ShiftRight1~65_combout\ & ( 
-- \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~66_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~68_combout\))) ) ) ) # ( \Shift|ShiftRight1~65_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~69_combout\) ) ) ) # ( 
-- !\Shift|ShiftRight1~65_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftRight1~69_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~66_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~68_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~69_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~65_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~97_combout\);

-- Location: LABCELL_X35_Y26_N28
\Shift|ShiftRight0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = ( \Shift|ShiftRight1~70_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftRight0~5_combout\))) ) ) # ( !\Shift|ShiftRight1~70_combout\ & ( (\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- \Shift|ShiftRight0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~5_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~70_combout\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: MLABCELL_X42_Y28_N26
\Shift|ShiftRight1~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~96_combout\ = ( \Shift|ShiftRight1~64_combout\ & ( \Shift|ShiftRight1~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight1~63_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shift|ShiftRight1~61_combout\))) ) ) ) # ( !\Shift|ShiftRight1~64_combout\ & ( \Shift|ShiftRight1~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight1~63_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~61_combout\ & 
-- ((!\B[3]~input_o\)))) ) ) ) # ( \Shift|ShiftRight1~64_combout\ & ( !\Shift|ShiftRight1~60_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftRight1~63_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftRight1~61_combout\))) ) 
-- ) ) # ( !\Shift|ShiftRight1~64_combout\ & ( !\Shift|ShiftRight1~60_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftRight1~63_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~61_combout\ & ((!\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~61_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~63_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~64_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~60_combout\,
	combout => \Shift|ShiftRight1~96_combout\);

-- Location: MLABCELL_X39_Y25_N6
\Shift|ShiftRight1~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~98_combout\ = ( \Shift|ShiftRight1~70_combout\ & ( (!\Shift|ShiftLeft0~0_combout\) # (\A[63]~input_o\) ) ) # ( !\Shift|ShiftRight1~70_combout\ & ( (\Shift|ShiftLeft0~0_combout\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~70_combout\,
	combout => \Shift|ShiftRight1~98_combout\);

-- Location: MLABCELL_X39_Y25_N8
\Mux52~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = ( \Shift|ShiftRight1~96_combout\ & ( \Shift|ShiftRight1~98_combout\ & ( (!\Mux60~0_combout\ & ((!\Mux60~1_combout\) # ((\Shift|ShiftRight0~14_combout\)))) # (\Mux60~0_combout\ & (((\Shift|ShiftRight1~97_combout\)) # 
-- (\Mux60~1_combout\))) ) ) ) # ( !\Shift|ShiftRight1~96_combout\ & ( \Shift|ShiftRight1~98_combout\ & ( (!\Mux60~0_combout\ & (\Mux60~1_combout\ & ((\Shift|ShiftRight0~14_combout\)))) # (\Mux60~0_combout\ & (((\Shift|ShiftRight1~97_combout\)) # 
-- (\Mux60~1_combout\))) ) ) ) # ( \Shift|ShiftRight1~96_combout\ & ( !\Shift|ShiftRight1~98_combout\ & ( (!\Mux60~0_combout\ & ((!\Mux60~1_combout\) # ((\Shift|ShiftRight0~14_combout\)))) # (\Mux60~0_combout\ & (!\Mux60~1_combout\ & 
-- (\Shift|ShiftRight1~97_combout\))) ) ) ) # ( !\Shift|ShiftRight1~96_combout\ & ( !\Shift|ShiftRight1~98_combout\ & ( (!\Mux60~0_combout\ & (\Mux60~1_combout\ & ((\Shift|ShiftRight0~14_combout\)))) # (\Mux60~0_combout\ & (!\Mux60~1_combout\ & 
-- (\Shift|ShiftRight1~97_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~0_combout\,
	datab => \ALT_INV_Mux60~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~97_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~14_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~96_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~98_combout\,
	combout => \Mux52~1_combout\);

-- Location: MLABCELL_X42_Y28_N30
\Mux52~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~58_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~59_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~73_combout\ & ( 
-- (!\B[2]~input_o\) # (\Shift|ShiftRight1~74_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~73_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~58_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~59_combout\)) ) ) ) # ( !\B[3]~input_o\ & 
-- ( !\Shift|ShiftRight1~73_combout\ & ( (\Shift|ShiftRight1~74_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~59_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~58_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~74_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~73_combout\,
	combout => \Mux52~2_combout\);

-- Location: LABCELL_X38_Y29_N30
\Shift|ShiftLeft0~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: MLABCELL_X42_Y27_N6
\Shift|ShiftLeft0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = ( \Shift|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~16_combout\) ) ) ) # ( !\Shift|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~16_combout\) ) ) ) 
-- # ( \Shift|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ShiftLeft0~24_combout\) ) ) ) # ( !\Shift|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftLeft0~24_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~24_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LABCELL_X45_Y29_N26
\Mux52~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = ( \Shift|ShiftLeft0~25_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\) # ((\Mux52~1_combout\)))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\ & ((\Mux52~2_combout\)))) ) ) # ( !\Shift|ShiftLeft0~25_combout\ & ( 
-- (!\Mux60~2_combout\ & (\Mux60~3_combout\ & (\Mux52~1_combout\))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\ & ((\Mux52~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \ALT_INV_Mux52~1_combout\,
	datad => \ALT_INV_Mux52~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~25_combout\,
	combout => \Mux52~3_combout\);

-- Location: LABCELL_X45_Y29_N2
\Mux52~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = ( \Mux52~3_combout\ & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\ & (\Add|S\(11)))) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\) # ((\Mux52~0_combout\)))) ) ) # ( !\Mux52~3_combout\ & ( (\Mux60~5_combout\ & ((!\Mux60~4_combout\ & 
-- (\Add|S\(11))) # (\Mux60~4_combout\ & ((\Mux52~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \Add|ALT_INV_S\(11),
	datad => \ALT_INV_Mux52~0_combout\,
	dataf => \ALT_INV_Mux52~3_combout\,
	combout => \Mux52~4_combout\);

-- Location: LABCELL_X45_Y29_N30
\Mux51~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[12]~input_o\ & (!\LogicFN[1]~input_o\ & \B[12]~input_o\)) # (\A[12]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[12]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[12]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LABCELL_X38_Y25_N16
\Shift|ShiftRight1~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~99_combout\ = (\Shift|ShiftLeft0~0_combout\ & \A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight1~99_combout\);

-- Location: LABCELL_X38_Y25_N0
\Shift|ShiftRight0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = ( \Shift|ShiftRight1~18_combout\ & ( !\Shift|ShiftLeft0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~18_combout\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: LABCELL_X40_Y25_N14
\Shift|ShiftRight1~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~101_combout\ = ( \Shift|ShiftRight1~10_combout\ & ( \Shift|ShiftRight1~12_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~10_combout\ & ( \Shift|ShiftRight1~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~10_combout\ & ( !\Shift|ShiftRight1~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~10_combout\ & ( !\Shift|ShiftRight1~12_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~10_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~12_combout\,
	combout => \Shift|ShiftRight1~101_combout\);

-- Location: LABCELL_X40_Y25_N8
\Shift|ShiftRight1~100\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~100_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~16_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~15_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftRight1~17_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~15_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~16_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~17_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~13_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~100_combout\);

-- Location: LABCELL_X32_Y25_N26
\Mux51~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = ( \Mux60~0_combout\ & ( \Shift|ShiftRight1~100_combout\ & ( (!\Shift|ShiftRight1~99_combout\ & (\Mux60~1_combout\ & !\Shift|ShiftRight0~15_combout\)) ) ) ) # ( !\Mux60~0_combout\ & ( \Shift|ShiftRight1~100_combout\ & ( 
-- (!\Mux60~1_combout\ & ((!\Shift|ShiftRight1~101_combout\))) # (\Mux60~1_combout\ & (!\Shift|ShiftRight0~15_combout\)) ) ) ) # ( \Mux60~0_combout\ & ( !\Shift|ShiftRight1~100_combout\ & ( (!\Mux60~1_combout\) # ((!\Shift|ShiftRight1~99_combout\ & 
-- !\Shift|ShiftRight0~15_combout\)) ) ) ) # ( !\Mux60~0_combout\ & ( !\Shift|ShiftRight1~100_combout\ & ( (!\Mux60~1_combout\ & ((!\Shift|ShiftRight1~101_combout\))) # (\Mux60~1_combout\ & (!\Shift|ShiftRight0~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000111011001110110011111100001100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~99_combout\,
	datab => \ALT_INV_Mux60~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~15_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~101_combout\,
	datae => \ALT_INV_Mux60~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~100_combout\,
	combout => \Mux51~1_combout\);

-- Location: LABCELL_X38_Y29_N12
\Shift|ShiftLeft0~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = ( \A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) ) # ( \A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[12]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: MLABCELL_X44_Y28_N6
\Shift|ShiftLeft0~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = ( \Shift|ShiftLeft0~18_combout\ & ( \Shift|ShiftLeft0~8_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~9_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~18_combout\ & ( \Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~18_combout\ & ( !\Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~18_combout\ & ( !\Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~26_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LABCELL_X40_Y29_N16
\Mux51~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = ( \Shift|ShiftRight1~3_combout\ & ( \Shift|ShiftRight1~5_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ShiftRight1~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~7_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( \Shift|ShiftRight1~5_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~6_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight1~7_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~3_combout\ & ( !\Shift|ShiftRight1~5_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftRight1~6_combout\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ShiftRight1~7_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( !\Shift|ShiftRight1~5_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~3_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~5_combout\,
	combout => \Mux51~2_combout\);

-- Location: LABCELL_X45_Y29_N24
\Mux51~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = ( \Mux51~2_combout\ & ( (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~27_combout\))) # (\Mux60~3_combout\ & (!\Mux51~1_combout\)))) # (\Mux60~2_combout\ & (!\Mux60~3_combout\)) ) ) # ( !\Mux51~2_combout\ & ( 
-- (!\Mux60~2_combout\ & ((!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~27_combout\))) # (\Mux60~3_combout\ & (!\Mux51~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100001100100111011000110010011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~2_combout\,
	datab => \ALT_INV_Mux60~3_combout\,
	datac => \ALT_INV_Mux51~1_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~27_combout\,
	dataf => \ALT_INV_Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LABCELL_X45_Y29_N10
\Add|S[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(12) = ( \AddnSub~input_o\ & ( !\A[12]~input_o\ $ (!\Add|C[12]~11_combout\ $ (!\B[12]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[12]~input_o\ $ (!\Add|C[12]~11_combout\ $ (\B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \Add|ALT_INV_C[12]~11_combout\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(12));

-- Location: LABCELL_X45_Y29_N34
\Mux51~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = ( \Add|S\(12) & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\)) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & ((\Mux51~3_combout\))) # (\Mux60~5_combout\ & (\Mux51~0_combout\)))) ) ) # ( !\Add|S\(12) & ( (\Mux60~4_combout\ & 
-- ((!\Mux60~5_combout\ & ((\Mux51~3_combout\))) # (\Mux60~5_combout\ & (\Mux51~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux51~0_combout\,
	datad => \ALT_INV_Mux51~3_combout\,
	dataf => \Add|ALT_INV_S\(12),
	combout => \Mux51~4_combout\);

-- Location: LABCELL_X45_Y29_N28
\Add|S[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(13) = ( \B[13]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[13]~input_o\ $ (!\Add|C[13]~12_combout\)) ) ) # ( !\B[13]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[13]~input_o\ $ (\Add|C[13]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \Add|ALT_INV_C[13]~12_combout\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Add|S\(13));

-- Location: LABCELL_X38_Y28_N12
\Shift|ShiftRight1~103\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~103_combout\ = ( \Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~31_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~28_combout\ & ( \Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~30_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftRight1~31_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftRight1~30_combout\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ShiftRight1~31_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~28_combout\ & ( !\Shift|ShiftRight1~32_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~30_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~31_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~30_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~31_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~28_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~32_combout\,
	combout => \Shift|ShiftRight1~103_combout\);

-- Location: MLABCELL_X34_Y25_N28
\Shift|ShiftRight1~104\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~104_combout\ = ( \Shift|ShiftLeft0~0_combout\ & ( \A[63]~input_o\ ) ) # ( !\Shift|ShiftLeft0~0_combout\ & ( \Shift|ShiftRight1~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[63]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~34_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	combout => \Shift|ShiftRight1~104_combout\);

-- Location: LABCELL_X38_Y28_N28
\Shift|ShiftRight1~102\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~102_combout\ = ( \Shift|ShiftRight1~25_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftRight1~27_combout\) ) ) ) # ( !\Shift|ShiftRight1~25_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & 
-- \Shift|ShiftRight1~27_combout\) ) ) ) # ( \Shift|ShiftRight1~25_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~23_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~26_combout\)) ) ) ) # ( !\Shift|ShiftRight1~25_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~23_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~27_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~26_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~23_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftRight1~102_combout\);

-- Location: MLABCELL_X34_Y25_N4
\Shift|ShiftRight0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = ( !\Shift|ShiftLeft0~0_combout\ & ( \Shift|ShiftRight0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: MLABCELL_X34_Y25_N12
\Mux50~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = ( \Shift|ShiftRight0~16_combout\ & ( \Mux60~0_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~103_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftRight1~104_combout\))) ) ) ) # ( !\Shift|ShiftRight0~16_combout\ & ( 
-- \Mux60~0_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~103_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftRight1~104_combout\))) ) ) ) # ( \Shift|ShiftRight0~16_combout\ & ( !\Mux60~0_combout\ & ( (\Shift|ShiftRight1~102_combout\) # 
-- (\Mux60~1_combout\) ) ) ) # ( !\Shift|ShiftRight0~16_combout\ & ( !\Mux60~0_combout\ & ( (!\Mux60~1_combout\ & \Shift|ShiftRight1~102_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~103_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~104_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~102_combout\,
	datae => \Shift|ALT_INV_ShiftRight0~16_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: LABCELL_X38_Y29_N16
\Shift|ShiftLeft0~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = ( \A[10]~input_o\ & ( \A[12]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[11]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: MLABCELL_X34_Y29_N14
\Shift|ShiftLeft0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = ( \Shift|ShiftLeft0~28_combout\ & ( \Shift|ShiftLeft0~11_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ShiftLeft0~12_combout\)))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~20_combout\)) # (\B[3]~input_o\))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~28_combout\ & ( \Shift|ShiftLeft0~11_combout\ & ( (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\Shift|ShiftLeft0~12_combout\)))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~20_combout\)) # (\B[3]~input_o\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~28_combout\ & ( !\Shift|ShiftLeft0~11_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ShiftLeft0~12_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftLeft0~20_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~28_combout\ & ( !\Shift|ShiftLeft0~11_combout\ & ( (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\Shift|ShiftLeft0~12_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftLeft0~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~28_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~11_combout\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LABCELL_X38_Y28_N38
\Mux50~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~22_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftRight1~20_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~21_combout\ ) ) 
-- ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftRight1~38_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~38_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~20_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~21_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~22_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux50~2_combout\);

-- Location: MLABCELL_X37_Y29_N0
\Mux50~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = ( \Mux60~2_combout\ & ( \Mux50~2_combout\ & ( !\Mux60~3_combout\ ) ) ) # ( !\Mux60~2_combout\ & ( \Mux50~2_combout\ & ( (!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~29_combout\))) # (\Mux60~3_combout\ & (\Mux50~1_combout\)) ) ) ) # ( 
-- !\Mux60~2_combout\ & ( !\Mux50~2_combout\ & ( (!\Mux60~3_combout\ & ((\Shift|ShiftLeft0~29_combout\))) # (\Mux60~3_combout\ & (\Mux50~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000000000000000000011111100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux50~1_combout\,
	datac => \ALT_INV_Mux60~3_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~29_combout\,
	datae => \ALT_INV_Mux60~2_combout\,
	dataf => \ALT_INV_Mux50~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LABCELL_X45_Y29_N14
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

-- Location: LABCELL_X45_Y29_N32
\Mux50~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = ( \Mux50~0_combout\ & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\ & (\Add|S\(13)))) # (\Mux60~4_combout\ & (((\Mux50~3_combout\)) # (\Mux60~5_combout\))) ) ) # ( !\Mux50~0_combout\ & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\ & 
-- (\Add|S\(13)))) # (\Mux60~4_combout\ & (!\Mux60~5_combout\ & ((\Mux50~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \Add|ALT_INV_S\(13),
	datad => \ALT_INV_Mux50~3_combout\,
	dataf => \ALT_INV_Mux50~0_combout\,
	combout => \Mux50~4_combout\);

-- Location: MLABCELL_X46_Y29_N20
\Add|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(14) = ( \AddnSub~input_o\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (!\Add|C[14]~13_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[14]~input_o\ $ (!\B[14]~input_o\ $ (\Add|C[14]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \Add|ALT_INV_C[14]~13_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(14));

-- Location: MLABCELL_X46_Y29_N22
\Mux49~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[14]~input_o\ & (\B[14]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[14]~input_o\ & (!\B[14]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[14]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LABCELL_X45_Y28_N0
\Shift|ShiftLeft0~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = ( \A[11]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & (!\B[1]~input_o\))) ) ) ) # ( \A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[12]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: MLABCELL_X46_Y29_N6
\Shift|ShiftLeft0~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~22_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & 
-- ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~14_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~30_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~22_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~30_combout\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~22_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: MLABCELL_X34_Y27_N26
\Shift|ShiftRight0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( (\A[63]~input_o\ & !\Shift|ShiftLeft0~0_combout\) ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( (\A[62]~input_o\ & !\Shift|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: MLABCELL_X42_Y26_N18
\Shift|ShiftRight1~106\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~106_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~50_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~49_combout\ & ( (\Shift|ShiftRight1~50_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftRight1~49_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~50_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~51_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~49_combout\,
	combout => \Shift|ShiftRight1~106_combout\);

-- Location: LABCELL_X38_Y27_N6
\Shift|ShiftRight1~107\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~107_combout\ = ( \Shift|ShiftLeft0~1_combout\ & ( \A[62]~input_o\ ) ) # ( !\Shift|ShiftLeft0~1_combout\ & ( \A[63]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	combout => \Shift|ShiftRight1~107_combout\);

-- Location: LABCELL_X43_Y27_N12
\Shift|ShiftRight1~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~105_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~42_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~45_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~46_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftRight1~42_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~44_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~42_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~45_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ShiftRight1~46_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~42_combout\ & ( (\Shift|ShiftRight1~44_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~44_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~46_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~45_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~42_combout\,
	combout => \Shift|ShiftRight1~105_combout\);

-- Location: LABCELL_X38_Y27_N28
\Mux49~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = ( \Shift|ShiftRight1~105_combout\ & ( \Mux60~0_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~106_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftRight1~107_combout\))) ) ) ) # ( !\Shift|ShiftRight1~105_combout\ & ( 
-- \Mux60~0_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~106_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftRight1~107_combout\))) ) ) ) # ( \Shift|ShiftRight1~105_combout\ & ( !\Mux60~0_combout\ & ( (!\Mux60~1_combout\) # 
-- (\Shift|ShiftRight0~17_combout\) ) ) ) # ( !\Shift|ShiftRight1~105_combout\ & ( !\Mux60~0_combout\ & ( (\Shift|ShiftRight0~17_combout\ & \Mux60~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~17_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~106_combout\,
	datac => \ALT_INV_Mux60~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~107_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~105_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Mux49~1_combout\);

-- Location: LABCELL_X43_Y27_N38
\Mux49~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = ( \Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~41_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( \Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~41_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~40_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~41_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~57_combout\ & ( !\Shift|ShiftRight1~40_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~41_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~41_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~39_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~57_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~40_combout\,
	combout => \Mux49~2_combout\);

-- Location: MLABCELL_X46_Y29_N34
\Mux49~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = ( \Mux49~2_combout\ & ( (!\Mux60~3_combout\ & (((\Shift|ShiftLeft0~31_combout\)) # (\Mux60~2_combout\))) # (\Mux60~3_combout\ & (!\Mux60~2_combout\ & ((\Mux49~1_combout\)))) ) ) # ( !\Mux49~2_combout\ & ( (!\Mux60~2_combout\ & 
-- ((!\Mux60~3_combout\ & (\Shift|ShiftLeft0~31_combout\)) # (\Mux60~3_combout\ & ((\Mux49~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~3_combout\,
	datab => \ALT_INV_Mux60~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~31_combout\,
	datad => \ALT_INV_Mux49~1_combout\,
	dataf => \ALT_INV_Mux49~2_combout\,
	combout => \Mux49~3_combout\);

-- Location: MLABCELL_X46_Y29_N8
\Mux49~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = ( \Mux49~3_combout\ & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\ & (\Add|S\(14)))) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\) # ((\Mux49~0_combout\)))) ) ) # ( !\Mux49~3_combout\ & ( (\Mux60~5_combout\ & ((!\Mux60~4_combout\ & 
-- (\Add|S\(14))) # (\Mux60~4_combout\ & ((\Mux49~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \Add|ALT_INV_S\(14),
	datad => \ALT_INV_Mux49~0_combout\,
	dataf => \ALT_INV_Mux49~3_combout\,
	combout => \Mux49~4_combout\);

-- Location: MLABCELL_X42_Y28_N32
\Shift|ShiftRight1~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~109_combout\ = ( \Shift|ShiftRight1~64_combout\ & ( \Shift|ShiftRight1~61_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~64_combout\ & ( \Shift|ShiftRight1~61_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~64_combout\ & ( !\Shift|ShiftRight1~61_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~64_combout\ & ( !\Shift|ShiftRight1~61_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~63_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~65_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~65_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~63_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~64_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~61_combout\,
	combout => \Shift|ShiftRight1~109_combout\);

-- Location: LABCELL_X35_Y26_N16
\Shift|ShiftRight1~108\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~108_combout\ = ( \Shift|ShiftRight1~66_combout\ & ( \Shift|ShiftRight1~70_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftRight1~69_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # 
-- (\Shift|ShiftRight1~68_combout\))) ) ) ) # ( !\Shift|ShiftRight1~66_combout\ & ( \Shift|ShiftRight1~70_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftRight1~69_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # 
-- (\Shift|ShiftRight1~68_combout\))) ) ) ) # ( \Shift|ShiftRight1~66_combout\ & ( !\Shift|ShiftRight1~70_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftRight1~69_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~68_combout\ & 
-- ((!\B[2]~input_o\)))) ) ) ) # ( !\Shift|ShiftRight1~66_combout\ & ( !\Shift|ShiftRight1~70_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftRight1~69_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~68_combout\ & ((!\B[2]~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~68_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~69_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~66_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~70_combout\,
	combout => \Shift|ShiftRight1~108_combout\);

-- Location: MLABCELL_X42_Y25_N14
\Mux48~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = ( \A[63]~input_o\ & ( \Shift|ShiftRight1~108_combout\ & ( ((!\Mux60~1_combout\ & (\Shift|ShiftRight1~109_combout\)) # (\Mux60~1_combout\ & ((\Shift|ShiftLeft0~1_combout\)))) # (\Mux60~0_combout\) ) ) ) # ( !\A[63]~input_o\ & ( 
-- \Shift|ShiftRight1~108_combout\ & ( (!\Mux60~1_combout\ & ((\Mux60~0_combout\) # (\Shift|ShiftRight1~109_combout\))) ) ) ) # ( \A[63]~input_o\ & ( !\Shift|ShiftRight1~108_combout\ & ( (!\Mux60~1_combout\ & (\Shift|ShiftRight1~109_combout\ & 
-- ((!\Mux60~0_combout\)))) # (\Mux60~1_combout\ & (((\Mux60~0_combout\) # (\Shift|ShiftLeft0~1_combout\)))) ) ) ) # ( !\A[63]~input_o\ & ( !\Shift|ShiftRight1~108_combout\ & ( (\Shift|ShiftRight1~109_combout\ & (!\Mux60~1_combout\ & !\Mux60~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100110000111101010000111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~109_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	datac => \ALT_INV_Mux60~1_combout\,
	datad => \ALT_INV_Mux60~0_combout\,
	datae => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~108_combout\,
	combout => \Mux48~1_combout\);

-- Location: MLABCELL_X42_Y28_N36
\Mux48~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftRight1~60_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~74_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ShiftRight1~58_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (\Shift|ShiftRight1~60_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftRight1~59_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~74_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~60_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~58_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~74_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~59_combout\,
	combout => \Mux48~2_combout\);

-- Location: LABCELL_X45_Y28_N4
\Shift|ShiftLeft0~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = ( \B[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[14]~input_o\ & ( (\A[12]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: MLABCELL_X42_Y27_N10
\Shift|ShiftLeft0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = ( \Shift|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~24_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~6_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~24_combout\) ) ) ) 
-- # ( \Shift|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~32_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~16_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~6_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~32_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~32_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~24_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: MLABCELL_X42_Y28_N0
\Mux48~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = ( \Shift|ShiftLeft0~33_combout\ & ( (!\Mux60~3_combout\ & ((!\Mux60~2_combout\) # ((\Mux48~2_combout\)))) # (\Mux60~3_combout\ & (!\Mux60~2_combout\ & (\Mux48~1_combout\))) ) ) # ( !\Shift|ShiftLeft0~33_combout\ & ( (!\Mux60~3_combout\ 
-- & (\Mux60~2_combout\ & ((\Mux48~2_combout\)))) # (\Mux60~3_combout\ & (!\Mux60~2_combout\ & (\Mux48~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~3_combout\,
	datab => \ALT_INV_Mux60~2_combout\,
	datac => \ALT_INV_Mux48~1_combout\,
	datad => \ALT_INV_Mux48~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~33_combout\,
	combout => \Mux48~3_combout\);

-- Location: MLABCELL_X46_Y29_N30
\Mux48~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[15]~input_o\ & (!\B[15]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[15]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: MLABCELL_X46_Y29_N24
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \B[15]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[15]~input_o\ $ (!\Add|C[15]~14_combout\)) ) ) # ( !\B[15]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[15]~input_o\ $ (\Add|C[15]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \Add|ALT_INV_C[15]~14_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Add|S\(15));

-- Location: MLABCELL_X46_Y29_N10
\Mux48~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = ( \Add|S\(15) & ( (!\Mux60~4_combout\ & (\Mux60~5_combout\)) # (\Mux60~4_combout\ & ((!\Mux60~5_combout\ & (\Mux48~3_combout\)) # (\Mux60~5_combout\ & ((\Mux48~0_combout\))))) ) ) # ( !\Add|S\(15) & ( (\Mux60~4_combout\ & 
-- ((!\Mux60~5_combout\ & (\Mux48~3_combout\)) # (\Mux60~5_combout\ & ((\Mux48~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~4_combout\,
	datab => \ALT_INV_Mux60~5_combout\,
	datac => \ALT_INV_Mux48~3_combout\,
	datad => \ALT_INV_Mux48~0_combout\,
	dataf => \Add|ALT_INV_S\(15),
	combout => \Mux48~4_combout\);

-- Location: LABCELL_X45_Y25_N12
\Shift|ShiftRight0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = ( \Shift|ShiftRight1~19_combout\ & ( (!\B[4]~input_o\ & (((\Shift|ShiftRight1~9_combout\)) # (\B[5]~input_o\))) # (\B[4]~input_o\ & (!\B[5]~input_o\ & (\Shift|ShiftRight1~14_combout\))) ) ) # ( 
-- !\Shift|ShiftRight1~19_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\Shift|ShiftRight1~9_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftRight1~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~9_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~19_combout\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LABCELL_X45_Y25_N16
\Shift|ShiftRight1~110\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~110_combout\ = ( \B[4]~input_o\ & ( \A[63]~input_o\ & ( (\B[5]~input_o\) # (\Shift|ShiftRight1~14_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \A[63]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~9_combout\)) # (\B[5]~input_o\ & 
-- ((\Shift|ShiftRight1~19_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\A[63]~input_o\ & ( (\Shift|ShiftRight1~14_combout\ & !\B[5]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( !\A[63]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~9_combout\)) # 
-- (\B[5]~input_o\ & ((\Shift|ShiftRight1~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~19_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftRight1~110_combout\);

-- Location: LABCELL_X45_Y28_N28
\Shift|ShiftLeft0~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\))) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[15]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[15]~input_o\)))) # (\B[1]~input_o\ & (\A[13]~input_o\ & 
-- ((\B[0]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: MLABCELL_X44_Y28_N28
\Shift|ShiftLeft0~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = ( \Shift|ShiftLeft0~35_combout\ & ( \Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~18_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~35_combout\ & ( \Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~18_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~35_combout\ & ( !\Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~18_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~35_combout\ & ( !\Shift|ShiftLeft0~26_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~18_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~35_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: MLABCELL_X44_Y26_N10
\Shift|ShiftLeft0~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = ( \A[0]~input_o\ & ( \Shift|ShiftLeft0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LABCELL_X45_Y25_N14
\Shift|ShiftLeft0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (!\B[5]~input_o\ & ((!\B[4]~input_o\ & (\Shift|ShiftLeft0~36_combout\)) # (\B[4]~input_o\ & ((\Shift|ShiftLeft0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~36_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~34_combout\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LABCELL_X45_Y25_N28
\Add|S[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(16) = ( \A[16]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[16]~15_combout\ $ (!\B[16]~input_o\)) ) ) # ( !\A[16]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[16]~15_combout\ $ (\B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[16]~15_combout\,
	datac => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|S\(16));

-- Location: LABCELL_X45_Y25_N20
\Y_ShiftOrArith[16]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \Add|S\(16) & ( (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~37_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~110_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Add|S\(16) & ( 
-- (!\ShiftFN[1]~input_o\) # (\Shift|ShiftRight0~18_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Add|S\(16) & ( (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~37_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~110_combout\)) ) ) ) # ( 
-- !\ShiftFN[0]~input_o\ & ( !\Add|S\(16) & ( (\Shift|ShiftRight0~18_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~18_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~110_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~37_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Add|ALT_INV_S\(16),
	combout => \Y_ShiftOrArith[16]~1_combout\);

-- Location: LABCELL_X43_Y26_N16
\Logic|Mux47~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux47~0_combout\ = ( \B[16]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[16]~input_o\)) ) ) # ( !\B[16]~input_o\ & ( (\A[16]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \Logic|Mux47~0_combout\);

-- Location: LABCELL_X43_Y26_N2
\Mux47~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \Logic|Mux47~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Y_ShiftOrArith[16]~1_combout\) # (\FuncClass[0]~input_o\))) ) ) # ( !\Logic|Mux47~0_combout\ & ( (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & 
-- \Y_ShiftOrArith[16]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[16]~1_combout\,
	dataf => \Logic|ALT_INV_Mux47~0_combout\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X43_Y26_N0
\Mux44~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (!\FuncClass[1]~input_o\ & (((!\ShiftFN[1]~input_o\) # (!\B[5]~input_o\)) # (\FuncClass[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010001010101010101000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \Mux44~3_combout\);

-- Location: LABCELL_X43_Y26_N4
\Mux44~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (\B[5]~input_o\ & (!\FuncClass[1]~input_o\ & \ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux44~4_combout\);

-- Location: MLABCELL_X39_Y25_N14
\Mux44~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (!\Mux30~0_combout\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: MLABCELL_X39_Y27_N10
\Mux44~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( !\B[5]~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: MLABCELL_X39_Y26_N6
\Mux44~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = ( \B[4]~input_o\ & ( (\B[5]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[4]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux44~2_combout\);

-- Location: LABCELL_X40_Y29_N26
\Mux60~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux60~12_combout\ = ( \ShiftFN[0]~input_o\ & ( !\Mux30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux60~12_combout\);

-- Location: LABCELL_X43_Y26_N22
\Add|S[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(17) = ( \AddnSub~input_o\ & ( !\B[17]~input_o\ $ (!\Add|C[17]~16_combout\ $ (!\A[17]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[17]~input_o\ $ (!\Add|C[17]~16_combout\ $ (\A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \Add|ALT_INV_C[17]~16_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(17));

-- Location: LABCELL_X45_Y28_N34
\Shift|ShiftLeft0~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = ( \A[16]~input_o\ & ( \A[14]~input_o\ & ( ((!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[16]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[15]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[17]~input_o\)) # (\B[1]~input_o\ & ((\A[15]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: MLABCELL_X34_Y29_N36
\Shift|ShiftLeft0~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = ( \Shift|ShiftLeft0~12_combout\ & ( \Shift|ShiftLeft0~20_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~38_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~28_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~12_combout\ & ( \Shift|ShiftLeft0~20_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ShiftLeft0~38_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~28_combout\ & ((!\B[3]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~12_combout\ & ( !\Shift|ShiftLeft0~20_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~38_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~28_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~12_combout\ & ( !\Shift|ShiftLeft0~20_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~38_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~28_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~38_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: MLABCELL_X39_Y27_N32
\Mux46~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \Shift|ShiftLeft0~39_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(17)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~3_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\)) ) ) # ( 
-- !\Shift|ShiftLeft0~39_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(17)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datad => \Add|ALT_INV_S\(17),
	dataf => \Shift|ALT_INV_ShiftLeft0~39_combout\,
	combout => \Mux46~0_combout\);

-- Location: MLABCELL_X39_Y27_N38
\Mux46~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( \Mux46~0_combout\ & ( (!\Mux44~0_combout\ & ((!\Mux44~1_combout\) # ((\Shift|ShiftRight1~24_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~29_combout\)))) ) ) # ( !\Mux46~0_combout\ & ( (!\Mux44~0_combout\ & 
-- (\Mux44~1_combout\ & (\Shift|ShiftRight1~24_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~0_combout\,
	datab => \ALT_INV_Mux44~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~24_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~29_combout\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: LABCELL_X43_Y26_N6
\Mux46~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = ( \B[17]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[17]~input_o\)) ) ) # ( !\B[17]~input_o\ & ( (\A[17]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux46~2_combout\);

-- Location: LABCELL_X38_Y26_N24
\Mux44~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = ( \B[4]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux44~5_combout\);

-- Location: LABCELL_X38_Y26_N26
\Mux44~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~6_combout\ = ( \B[4]~input_o\ & ( (\B[5]~input_o\ & !\ShiftFN[0]~input_o\) ) ) # ( !\B[4]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux44~6_combout\);

-- Location: MLABCELL_X34_Y26_N30
\Mux46~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = ( \B[4]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux46~3_combout\);

-- Location: MLABCELL_X37_Y25_N32
\Mux46~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = ( !\Mux46~3_combout\ & ( ((!\Mux44~6_combout\ & ((\Shift|ShiftRight0~2_combout\))) # (\Mux44~6_combout\ & (\Shift|ShiftRight1~35_combout\))) # (\Mux44~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101011111001111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~35_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~2_combout\,
	datac => \ALT_INV_Mux44~5_combout\,
	datad => \ALT_INV_Mux44~6_combout\,
	dataf => \ALT_INV_Mux46~3_combout\,
	combout => \Mux46~4_combout\);

-- Location: MLABCELL_X39_Y25_N18
\Mux46~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = ( \Mux46~4_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & (\Mux46~1_combout\)) # (\Mux44~4_combout\ & ((\Mux46~2_combout\))))) ) ) # ( !\Mux46~4_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\)) # (\Mux44~3_combout\ & 
-- ((!\Mux44~4_combout\ & (\Mux46~1_combout\)) # (\Mux44~4_combout\ & ((\Mux46~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000110111001001100011011100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux46~1_combout\,
	datad => \ALT_INV_Mux46~2_combout\,
	dataf => \ALT_INV_Mux46~4_combout\,
	combout => \Mux46~5_combout\);

-- Location: LABCELL_X43_Y26_N8
\Mux45~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = ( \A[18]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[18]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[18]~input_o\))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & 
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
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Mux45~2_combout\);

-- Location: LABCELL_X38_Y26_N30
\Mux45~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~54_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~4_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~4_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~54_combout\,
	datac => \ALT_INV_Mux44~5_combout\,
	datad => \ALT_INV_Mux46~3_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux45~3_combout\);

-- Location: LABCELL_X43_Y26_N26
\Add|S[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(18) = ( \A[18]~input_o\ & ( !\Add|C[18]~17_combout\ $ (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) ) ) # ( !\A[18]~input_o\ & ( !\Add|C[18]~17_combout\ $ (!\AddnSub~input_o\ $ (\B[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[18]~17_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Add|S\(18));

-- Location: LABCELL_X45_Y28_N38
\Shift|ShiftLeft0~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = ( \A[16]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[18]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[15]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( \A[17]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[18]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[15]~input_o\)))) ) ) ) # ( \A[16]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[18]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[15]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[15]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: MLABCELL_X46_Y29_N14
\Shift|ShiftLeft0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~14_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) 
-- # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~22_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~30_combout\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~14_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ShiftLeft0~30_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~40_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~40_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~22_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: MLABCELL_X37_Y26_N4
\Mux45~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \Shift|ShiftLeft0~5_combout\ & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\ & (\Add|S\(18))) # (\Mux44~2_combout\ & ((\Shift|ShiftLeft0~41_combout\))))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\)) ) ) # ( 
-- !\Shift|ShiftLeft0~5_combout\ & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\ & (\Add|S\(18))) # (\Mux44~2_combout\ & ((\Shift|ShiftLeft0~41_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~12_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Add|ALT_INV_S\(18),
	datad => \Shift|ALT_INV_ShiftLeft0~41_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	combout => \Mux45~0_combout\);

-- Location: MLABCELL_X37_Y26_N8
\Mux45~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \Shift|ShiftRight1~43_combout\ & ( (!\Mux44~0_combout\ & (((\Mux45~0_combout\)) # (\Mux44~1_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~48_combout\)))) ) ) # ( !\Shift|ShiftRight1~43_combout\ & ( (!\Mux44~0_combout\ & 
-- (!\Mux44~1_combout\ & ((\Mux45~0_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~48_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~0_combout\,
	datab => \ALT_INV_Mux44~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~48_combout\,
	datad => \ALT_INV_Mux45~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~43_combout\,
	combout => \Mux45~1_combout\);

-- Location: LABCELL_X40_Y26_N36
\Mux45~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = ( \Mux45~1_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & ((!\Mux45~3_combout\)))) # (\Mux44~3_combout\ & ((!\Mux44~4_combout\) # ((\Mux45~2_combout\)))) ) ) # ( !\Mux45~1_combout\ & ( (\Mux44~4_combout\ & ((!\Mux44~3_combout\ 
-- & ((!\Mux45~3_combout\))) # (\Mux44~3_combout\ & (\Mux45~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000001001000110000000101100111010001010110011101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux45~2_combout\,
	datad => \ALT_INV_Mux45~3_combout\,
	dataf => \ALT_INV_Mux45~1_combout\,
	combout => \Mux45~4_combout\);

-- Location: MLABCELL_X42_Y29_N20
\Shift|ShiftLeft0~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = ( \A[17]~input_o\ & ( \A[18]~input_o\ & ( (!\B[0]~input_o\ & (((\A[19]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[16]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \A[18]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[19]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[16]~input_o\))) ) ) ) # ( \A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (((\A[19]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (\A[16]~input_o\ & (\B[1]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[19]~input_o\)))) # (\B[0]~input_o\ & (\A[16]~input_o\ & (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: MLABCELL_X42_Y27_N14
\Shift|ShiftLeft0~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = ( \Shift|ShiftLeft0~32_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~16_combout\) ) ) ) # ( !\Shift|ShiftLeft0~32_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~16_combout\) ) ) 
-- ) # ( \Shift|ShiftLeft0~32_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~42_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~24_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~32_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~42_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~42_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~24_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~32_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LABCELL_X43_Y26_N12
\Add|S[19]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(19) = ( \A[19]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[19]~18_combout\ $ (!\B[19]~input_o\)) ) ) # ( !\A[19]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[19]~18_combout\ $ (\B[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[19]~18_combout\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Add|S\(19));

-- Location: MLABCELL_X37_Y26_N6
\Mux44~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~7_combout\ = ( \Shift|ShiftLeft0~7_combout\ & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\ & ((\Add|S\(19)))) # (\Mux44~2_combout\ & (\Shift|ShiftLeft0~43_combout\)))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\)) ) ) # ( 
-- !\Shift|ShiftLeft0~7_combout\ & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\ & ((\Add|S\(19)))) # (\Mux44~2_combout\ & (\Shift|ShiftLeft0~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~12_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~43_combout\,
	datad => \Add|ALT_INV_S\(19),
	dataf => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	combout => \Mux44~7_combout\);

-- Location: MLABCELL_X37_Y26_N10
\Mux44~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~8_combout\ = ( \Mux44~7_combout\ & ( (!\Mux44~0_combout\ & ((!\Mux44~1_combout\) # ((\Shift|ShiftRight1~62_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~67_combout\)))) ) ) # ( !\Mux44~7_combout\ & ( (!\Mux44~0_combout\ & 
-- (\Mux44~1_combout\ & ((\Shift|ShiftRight1~62_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~67_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~0_combout\,
	datab => \ALT_INV_Mux44~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~67_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~62_combout\,
	dataf => \ALT_INV_Mux44~7_combout\,
	combout => \Mux44~8_combout\);

-- Location: LABCELL_X43_Y26_N36
\Mux44~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~9_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[19]~input_o\ & (!\LogicFN[0]~input_o\ & \B[19]~input_o\)) # (\A[19]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[19]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[19]~input_o\ $ (((!\A[19]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux44~9_combout\);

-- Location: MLABCELL_X37_Y25_N38
\Mux44~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~10_combout\ = ( \Mux44~5_combout\ & ( !\Mux46~3_combout\ ) ) # ( !\Mux44~5_combout\ & ( (!\Mux46~3_combout\ & ((!\Mux44~6_combout\ & ((!\Shift|ShiftRight0~6_combout\))) # (\Mux44~6_combout\ & (!\Shift|ShiftRight1~71_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010100000110000001010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~71_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~6_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~6_combout\,
	dataf => \ALT_INV_Mux44~5_combout\,
	combout => \Mux44~10_combout\);

-- Location: MLABCELL_X34_Y26_N14
\Mux44~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux44~11_combout\ = ( \Mux44~10_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & (\Mux44~8_combout\)) # (\Mux44~4_combout\ & ((\Mux44~9_combout\))))) ) ) # ( !\Mux44~10_combout\ & ( (!\Mux44~4_combout\ & (\Mux44~3_combout\ & (\Mux44~8_combout\))) 
-- # (\Mux44~4_combout\ & ((!\Mux44~3_combout\) # ((\Mux44~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001010111010001100101011100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~4_combout\,
	datab => \ALT_INV_Mux44~3_combout\,
	datac => \ALT_INV_Mux44~8_combout\,
	datad => \ALT_INV_Mux44~9_combout\,
	dataf => \ALT_INV_Mux44~10_combout\,
	combout => \Mux44~11_combout\);

-- Location: LABCELL_X38_Y26_N32
\Mux43~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~77_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~7_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~7_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~77_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux43~3_combout\);

-- Location: MLABCELL_X39_Y26_N12
\Mux43~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( \LogicFN[0]~input_o\ & ( \A[20]~input_o\ & ( !\B[20]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \A[20]~input_o\ & ( (\LogicFN[1]~input_o\) # (\B[20]~input_o\) ) ) ) # ( \LogicFN[0]~input_o\ & ( 
-- !\A[20]~input_o\ & ( (\B[20]~input_o\ & !\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\A[20]~input_o\ & ( \B[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110000000000110011111111111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Mux43~2_combout\);

-- Location: MLABCELL_X42_Y29_N6
\Shift|ShiftLeft0~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = ( \A[17]~input_o\ & ( \A[18]~input_o\ & ( ((!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[17]~input_o\ & ( \A[18]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[20]~input_o\))) # (\B[0]~input_o\ & (((\A[19]~input_o\ & !\B[1]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[0]~input_o\ & (\A[20]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # 
-- (\A[19]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[18]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: MLABCELL_X44_Y28_N14
\Shift|ShiftLeft0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = ( \Shift|ShiftLeft0~35_combout\ & ( \Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~44_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ShiftLeft0~18_combout\))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~35_combout\ & ( \Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|ShiftLeft0~44_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ShiftLeft0~18_combout\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~35_combout\ & ( !\Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~44_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~18_combout\ & (\B[2]~input_o\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~35_combout\ & ( !\Shift|ShiftLeft0~26_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|ShiftLeft0~44_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~18_combout\ & (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~44_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~35_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LABCELL_X43_Y26_N34
\Add|S[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(20) = ( \Add|C[20]~19_combout\ & ( !\B[20]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[20]~input_o\)) ) ) # ( !\Add|C[20]~19_combout\ & ( !\B[20]~input_o\ $ (!\AddnSub~input_o\ $ (\A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	dataf => \Add|ALT_INV_C[20]~19_combout\,
	combout => \Add|S\(20));

-- Location: MLABCELL_X37_Y26_N14
\Mux43~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \Add|S\(20) & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\) # ((\Shift|ShiftLeft0~45_combout\)))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\ & ((\Shift|ShiftLeft0~10_combout\)))) ) ) # ( !\Add|S\(20) & ( (!\Mux60~12_combout\ & 
-- (\Mux44~2_combout\ & (\Shift|ShiftLeft0~45_combout\))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\ & ((\Shift|ShiftLeft0~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~12_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~45_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	dataf => \Add|ALT_INV_S\(20),
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X39_Y26_N28
\Mux43~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( \Shift|ShiftRight1~75_combout\ & ( (!\Mux44~0_combout\ & (((\Mux43~0_combout\)) # (\Mux44~1_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~76_combout\)))) ) ) # ( !\Shift|ShiftRight1~75_combout\ & ( (!\Mux44~0_combout\ & 
-- (!\Mux44~1_combout\ & (\Mux43~0_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~76_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \ALT_INV_Mux43~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~76_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~75_combout\,
	combout => \Mux43~1_combout\);

-- Location: MLABCELL_X39_Y26_N16
\Mux43~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = ( \Mux43~1_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & (!\Mux43~3_combout\))) # (\Mux44~3_combout\ & ((!\Mux44~4_combout\) # ((\Mux43~2_combout\)))) ) ) # ( !\Mux43~1_combout\ & ( (\Mux44~4_combout\ & ((!\Mux44~3_combout\ & 
-- (!\Mux43~3_combout\)) # (\Mux44~3_combout\ & ((\Mux43~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110001001000000011000101100100011101010110010001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux43~3_combout\,
	datad => \ALT_INV_Mux43~2_combout\,
	dataf => \ALT_INV_Mux43~1_combout\,
	combout => \Mux43~4_combout\);

-- Location: MLABCELL_X42_Y29_N30
\Shift|ShiftLeft0~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~46_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (\A[21]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ShiftLeft0~46_combout\);

-- Location: MLABCELL_X34_Y29_N2
\Shift|ShiftLeft0~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~47_combout\ = ( \Shift|ShiftLeft0~46_combout\ & ( \Shift|ShiftLeft0~20_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftLeft0~38_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftLeft0~28_combout\))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~46_combout\ & ( \Shift|ShiftLeft0~20_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~38_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftLeft0~28_combout\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~46_combout\ & ( !\Shift|ShiftLeft0~20_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftLeft0~38_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~28_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~46_combout\ & ( !\Shift|ShiftLeft0~20_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~38_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~28_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~28_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~46_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	combout => \Shift|ShiftLeft0~47_combout\);

-- Location: LABCELL_X43_Y26_N14
\Add|S[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(21) = ( \Add|C[21]~20_combout\ & ( !\AddnSub~input_o\ $ (!\B[21]~input_o\ $ (!\A[21]~input_o\)) ) ) # ( !\Add|C[21]~20_combout\ & ( !\AddnSub~input_o\ $ (!\B[21]~input_o\ $ (\A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \Add|ALT_INV_C[21]~20_combout\,
	combout => \Add|S\(21));

-- Location: MLABCELL_X37_Y26_N12
\Mux42~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \Add|S\(21) & ( (!\Mux60~12_combout\ & ((!\Mux44~2_combout\) # ((\Shift|ShiftLeft0~47_combout\)))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\ & ((\Shift|ShiftLeft0~13_combout\)))) ) ) # ( !\Add|S\(21) & ( (!\Mux60~12_combout\ & 
-- (\Mux44~2_combout\ & (\Shift|ShiftLeft0~47_combout\))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\ & ((\Shift|ShiftLeft0~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~12_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~47_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	dataf => \Add|ALT_INV_S\(21),
	combout => \Mux42~0_combout\);

-- Location: MLABCELL_X39_Y26_N30
\Mux42~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \Shift|ShiftRight1~79_combout\ & ( ((!\Mux44~1_combout\ & (\Mux42~0_combout\)) # (\Mux44~1_combout\ & ((\Shift|ShiftRight1~78_combout\)))) # (\Mux44~0_combout\) ) ) # ( !\Shift|ShiftRight1~79_combout\ & ( (!\Mux44~0_combout\ & 
-- ((!\Mux44~1_combout\ & (\Mux42~0_combout\)) # (\Mux44~1_combout\ & ((\Shift|ShiftRight1~78_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \ALT_INV_Mux42~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~78_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~79_combout\,
	combout => \Mux42~1_combout\);

-- Location: LABCELL_X38_Y26_N36
\Mux42~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~80_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~8_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~8_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~80_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux42~3_combout\);

-- Location: LABCELL_X43_Y26_N10
\Mux42~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (!\B[21]~input_o\ & (\A[21]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[21]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001101011000011100110101100001110011010110000111001101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	combout => \Mux42~2_combout\);

-- Location: MLABCELL_X39_Y26_N18
\Mux42~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = ( \Mux42~2_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & ((!\Mux42~3_combout\)))) # (\Mux44~3_combout\ & (((\Mux42~1_combout\)) # (\Mux44~4_combout\))) ) ) # ( !\Mux42~2_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & 
-- ((!\Mux42~3_combout\)))) # (\Mux44~3_combout\ & (!\Mux44~4_combout\ & (\Mux42~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100001001100000010000110111000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux42~1_combout\,
	datad => \ALT_INV_Mux42~3_combout\,
	dataf => \ALT_INV_Mux42~2_combout\,
	combout => \Mux42~4_combout\);

-- Location: LABCELL_X38_Y26_N0
\Mux41~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~83_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~9_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~9_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~83_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux41~3_combout\);

-- Location: MLABCELL_X44_Y26_N26
\Add|S[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(22) = ( \A[22]~input_o\ & ( !\Add|C[22]~21_combout\ $ (!\AddnSub~input_o\ $ (!\B[22]~input_o\)) ) ) # ( !\A[22]~input_o\ & ( !\Add|C[22]~21_combout\ $ (!\AddnSub~input_o\ $ (\B[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[22]~21_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Add|S\(22));

-- Location: MLABCELL_X42_Y29_N14
\Shift|ShiftLeft0~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~48_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (\A[21]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ShiftLeft0~48_combout\);

-- Location: MLABCELL_X46_Y29_N16
\Shift|ShiftLeft0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~49_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftLeft0~22_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~30_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~48_combout\)) 
-- # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~40_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~30_combout\ & ( (\B[2]~input_o\ & \Shift|ShiftLeft0~22_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftLeft0~30_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ShiftLeft0~48_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~48_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~40_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~22_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~49_combout\);

-- Location: MLABCELL_X39_Y26_N2
\Mux41~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Shift|ShiftLeft0~15_combout\ & ( (!\Mux44~2_combout\ & (((\Add|S\(22))) # (\Mux60~12_combout\))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\ & ((\Shift|ShiftLeft0~49_combout\)))) ) ) # ( !\Shift|ShiftLeft0~15_combout\ & ( 
-- (!\Mux60~12_combout\ & ((!\Mux44~2_combout\ & (\Add|S\(22))) # (\Mux44~2_combout\ & ((\Shift|ShiftLeft0~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Add|ALT_INV_S\(22),
	datad => \Shift|ALT_INV_ShiftLeft0~49_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	combout => \Mux41~0_combout\);

-- Location: MLABCELL_X39_Y26_N26
\Mux41~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \Mux41~0_combout\ & ( (!\Mux44~0_combout\ & ((!\Mux44~1_combout\) # ((\Shift|ShiftRight1~81_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~82_combout\)))) ) ) # ( !\Mux41~0_combout\ & ( (!\Mux44~0_combout\ & 
-- (\Mux44~1_combout\ & ((\Shift|ShiftRight1~81_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~82_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~82_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~81_combout\,
	dataf => \ALT_INV_Mux41~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: MLABCELL_X44_Y26_N32
\Mux41~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \A[22]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[22]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[22]~input_o\))) ) ) # ( !\A[22]~input_o\ & ( (\B[22]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Mux41~2_combout\);

-- Location: MLABCELL_X39_Y26_N10
\Mux41~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = ( \Mux44~3_combout\ & ( \Mux41~2_combout\ & ( (\Mux44~4_combout\) # (\Mux41~1_combout\) ) ) ) # ( !\Mux44~3_combout\ & ( \Mux41~2_combout\ & ( (!\Mux41~3_combout\ & \Mux44~4_combout\) ) ) ) # ( \Mux44~3_combout\ & ( !\Mux41~2_combout\ 
-- & ( (\Mux41~1_combout\ & !\Mux44~4_combout\) ) ) ) # ( !\Mux44~3_combout\ & ( !\Mux41~2_combout\ & ( (!\Mux41~3_combout\ & \Mux44~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001100110000000000000000101010100011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux41~3_combout\,
	datab => \ALT_INV_Mux41~1_combout\,
	datad => \ALT_INV_Mux44~4_combout\,
	datae => \ALT_INV_Mux44~3_combout\,
	dataf => \ALT_INV_Mux41~2_combout\,
	combout => \Mux41~4_combout\);

-- Location: MLABCELL_X39_Y27_N24
\Mux40~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~86_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~10_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~10_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~86_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux40~3_combout\);

-- Location: MLABCELL_X44_Y26_N34
\Add|S[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(23) = ( \Add|C[23]~22_combout\ & ( !\B[23]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[23]~input_o\)) ) ) # ( !\Add|C[23]~22_combout\ & ( !\B[23]~input_o\ $ (!\AddnSub~input_o\ $ (\A[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \Add|ALT_INV_C[23]~22_combout\,
	combout => \Add|S\(23));

-- Location: MLABCELL_X42_Y29_N18
\Shift|ShiftLeft0~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~50_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( (\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\A[23]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ShiftLeft0~50_combout\);

-- Location: MLABCELL_X42_Y27_N36
\Shift|ShiftLeft0~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~51_combout\ = ( \Shift|ShiftLeft0~50_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~42_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~24_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~50_combout\ & ( \B[2]~input_o\ & 
-- ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~42_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~24_combout\))) ) ) ) # ( \Shift|ShiftLeft0~50_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~32_combout\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~50_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftLeft0~32_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~32_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~42_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~24_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~50_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~51_combout\);

-- Location: MLABCELL_X39_Y27_N34
\Mux40~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Shift|ShiftLeft0~51_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(23)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~17_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\)) ) ) # ( 
-- !\Shift|ShiftLeft0~51_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(23)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datad => \Add|ALT_INV_S\(23),
	dataf => \Shift|ALT_INV_ShiftLeft0~51_combout\,
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X39_Y27_N36
\Mux40~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \Shift|ShiftRight1~85_combout\ & ( ((!\Mux44~1_combout\ & ((\Mux40~0_combout\))) # (\Mux44~1_combout\ & (\Shift|ShiftRight1~84_combout\))) # (\Mux44~0_combout\) ) ) # ( !\Shift|ShiftRight1~85_combout\ & ( (!\Mux44~0_combout\ & 
-- ((!\Mux44~1_combout\ & ((\Mux40~0_combout\))) # (\Mux44~1_combout\ & (\Shift|ShiftRight1~84_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~0_combout\,
	datab => \ALT_INV_Mux44~1_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~84_combout\,
	datad => \ALT_INV_Mux40~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~85_combout\,
	combout => \Mux40~1_combout\);

-- Location: MLABCELL_X39_Y27_N20
\Mux40~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \A[23]~input_o\ & ( (!\B[23]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\B[23]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[23]~input_o\ & ( (\B[23]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Mux40~2_combout\);

-- Location: MLABCELL_X39_Y27_N8
\Mux40~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = ( \Mux40~2_combout\ & ( (!\Mux44~4_combout\ & (((\Mux40~1_combout\ & \Mux44~3_combout\)))) # (\Mux44~4_combout\ & ((!\Mux40~3_combout\) # ((\Mux44~3_combout\)))) ) ) # ( !\Mux40~2_combout\ & ( (!\Mux44~4_combout\ & (((\Mux40~1_combout\ 
-- & \Mux44~3_combout\)))) # (\Mux44~4_combout\ & (!\Mux40~3_combout\ & ((!\Mux44~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110000000010100011000000001010001111110000101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux40~3_combout\,
	datab => \ALT_INV_Mux40~1_combout\,
	datac => \ALT_INV_Mux44~4_combout\,
	datad => \ALT_INV_Mux44~3_combout\,
	dataf => \ALT_INV_Mux40~2_combout\,
	combout => \Mux40~4_combout\);

-- Location: MLABCELL_X44_Y26_N36
\Mux39~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = ( \A[24]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[24]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[24]~input_o\))) ) ) # ( !\A[24]~input_o\ & ( (\B[24]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: MLABCELL_X46_Y28_N6
\Shift|ShiftLeft0~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~52_combout\ = ( \A[23]~input_o\ & ( \A[21]~input_o\ & ( ((!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[23]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[23]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[22]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[23]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ShiftLeft0~52_combout\);

-- Location: MLABCELL_X44_Y28_N18
\Shift|ShiftLeft0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~53_combout\ = ( \Shift|ShiftLeft0~44_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~44_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~44_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~44_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~26_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~35_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~44_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~52_combout\,
	combout => \Shift|ShiftLeft0~53_combout\);

-- Location: MLABCELL_X44_Y26_N30
\Add|S[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(24) = ( \Add|C[24]~23_combout\ & ( !\AddnSub~input_o\ $ (!\A[24]~input_o\ $ (!\B[24]~input_o\)) ) ) # ( !\Add|C[24]~23_combout\ & ( !\AddnSub~input_o\ $ (!\A[24]~input_o\ $ (\B[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \Add|ALT_INV_C[24]~23_combout\,
	combout => \Add|S\(24));

-- Location: LABCELL_X40_Y26_N20
\Mux39~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \Add|S\(24) & ( (!\Mux44~2_combout\ & (((!\Mux60~12_combout\)) # (\Shift|ShiftLeft0~19_combout\))) # (\Mux44~2_combout\ & (((\Shift|ShiftLeft0~53_combout\ & !\Mux60~12_combout\)))) ) ) # ( !\Add|S\(24) & ( (!\Mux44~2_combout\ & 
-- (\Shift|ShiftLeft0~19_combout\ & ((\Mux60~12_combout\)))) # (\Mux44~2_combout\ & (((\Shift|ShiftLeft0~53_combout\ & !\Mux60~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010010001010101111001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~53_combout\,
	datad => \ALT_INV_Mux60~12_combout\,
	dataf => \Add|ALT_INV_S\(24),
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X40_Y26_N0
\Mux39~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \Mux44~0_combout\ & ( \Shift|ShiftRight1~88_combout\ ) ) # ( !\Mux44~0_combout\ & ( (!\Mux44~1_combout\ & ((\Mux39~0_combout\))) # (\Mux44~1_combout\ & (\Shift|ShiftRight1~89_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~88_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~89_combout\,
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_Mux44~1_combout\,
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => \Mux39~1_combout\);

-- Location: LABCELL_X40_Y26_N24
\Mux39~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = ( !\Mux46~3_combout\ & ( ((!\Shift|ShiftRight0~11_combout\ & ((!\Mux44~6_combout\) # (!\Shift|ShiftRight1~87_combout\)))) # (\Mux44~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001110110011111100111011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~6_combout\,
	datab => \ALT_INV_Mux44~5_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~11_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~87_combout\,
	dataf => \ALT_INV_Mux46~3_combout\,
	combout => \Mux39~3_combout\);

-- Location: LABCELL_X40_Y26_N38
\Mux39~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = ( \Mux39~3_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & ((\Mux39~1_combout\))) # (\Mux44~4_combout\ & (\Mux39~2_combout\)))) ) ) # ( !\Mux39~3_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\)) # (\Mux44~3_combout\ & 
-- ((!\Mux44~4_combout\ & ((\Mux39~1_combout\))) # (\Mux44~4_combout\ & (\Mux39~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001101100111001000110110011100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux39~2_combout\,
	datad => \ALT_INV_Mux39~1_combout\,
	dataf => \ALT_INV_Mux39~3_combout\,
	combout => \Mux39~4_combout\);

-- Location: MLABCELL_X44_Y26_N22
\Mux38~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \B[25]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[25]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[25]~input_o\ & ( (\A[25]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Mux38~2_combout\);

-- Location: MLABCELL_X44_Y26_N18
\Shift|ShiftLeft0~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~54_combout\ = ( \A[25]~input_o\ & ( \A[22]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[23]~input_o\)))) # (\B[0]~input_o\ & (((\A[24]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \A[22]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[23]~input_o\)))) # (\B[0]~input_o\ & (((\A[24]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[23]~input_o\)))) # (\B[0]~input_o\ & 
-- (!\B[1]~input_o\ & (\A[24]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\A[22]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[23]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Shift|ShiftLeft0~54_combout\);

-- Location: LABCELL_X35_Y29_N20
\Shift|ShiftLeft0~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~55_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~38_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~28_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~46_combout\ & 
-- ( (\Shift|ShiftLeft0~54_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~38_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~28_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\ & \Shift|ShiftLeft0~54_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~38_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~54_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~28_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~46_combout\,
	combout => \Shift|ShiftLeft0~55_combout\);

-- Location: MLABCELL_X44_Y26_N14
\Add|S[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(25) = ( \B[25]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[25]~input_o\ $ (!\Add|C[25]~24_combout\)) ) ) # ( !\B[25]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[25]~input_o\ $ (\Add|C[25]~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \Add|ALT_INV_C[25]~24_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Add|S\(25));

-- Location: MLABCELL_X39_Y26_N0
\Mux38~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Add|S\(25) & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\) # ((\Shift|ShiftLeft0~21_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\ & ((\Shift|ShiftLeft0~55_combout\)))) ) ) # ( !\Add|S\(25) & ( (!\Mux44~2_combout\ & 
-- (\Mux60~12_combout\ & (\Shift|ShiftLeft0~21_combout\))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\ & ((\Shift|ShiftLeft0~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~21_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~55_combout\,
	dataf => \Add|ALT_INV_S\(25),
	combout => \Mux38~0_combout\);

-- Location: MLABCELL_X34_Y26_N28
\Mux38~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \Mux44~0_combout\ & ( \Shift|ShiftRight1~91_combout\ ) ) # ( !\Mux44~0_combout\ & ( (!\Mux44~1_combout\ & (\Mux38~0_combout\)) # (\Mux44~1_combout\ & ((\Shift|ShiftRight1~90_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux38~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~90_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~91_combout\,
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: MLABCELL_X34_Y26_N16
\Mux38~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~92_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~12_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~92_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~12_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux38~3_combout\);

-- Location: MLABCELL_X34_Y26_N12
\Mux38~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = ( \Mux38~3_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & ((\Mux38~1_combout\))) # (\Mux44~4_combout\ & (\Mux38~2_combout\)))) ) ) # ( !\Mux38~3_combout\ & ( (!\Mux44~4_combout\ & (\Mux44~3_combout\ & ((\Mux38~1_combout\)))) 
-- # (\Mux44~4_combout\ & ((!\Mux44~3_combout\) # ((\Mux38~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100111010001010110011100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~4_combout\,
	datab => \ALT_INV_Mux44~3_combout\,
	datac => \ALT_INV_Mux38~2_combout\,
	datad => \ALT_INV_Mux38~1_combout\,
	dataf => \ALT_INV_Mux38~3_combout\,
	combout => \Mux38~4_combout\);

-- Location: LABCELL_X38_Y25_N30
\Mux37~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \B[26]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[26]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: LABCELL_X38_Y25_N22
\Add|S[26]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(26) = ( \B[26]~input_o\ & ( !\A[26]~input_o\ $ (!\Add|C[26]~25_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[26]~input_o\ & ( !\A[26]~input_o\ $ (!\Add|C[26]~25_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \Add|ALT_INV_C[26]~25_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Add|S\(26));

-- Location: LABCELL_X43_Y28_N0
\Shift|ShiftLeft0~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~56_combout\ = ( \A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[23]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[24]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~56_combout\);

-- Location: MLABCELL_X39_Y28_N20
\Shift|ShiftLeft0~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~57_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~48_combout\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~30_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~48_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftLeft0~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~48_combout\ & ( (\Shift|ShiftLeft0~30_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~48_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~30_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~40_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~56_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~48_combout\,
	combout => \Shift|ShiftLeft0~57_combout\);

-- Location: LABCELL_X38_Y25_N26
\Mux37~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Shift|ShiftLeft0~57_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(26)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~23_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\)) ) ) # ( 
-- !\Shift|ShiftLeft0~57_combout\ & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(26)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~23_combout\,
	datad => \Add|ALT_INV_S\(26),
	dataf => \Shift|ALT_INV_ShiftLeft0~57_combout\,
	combout => \Mux37~0_combout\);

-- Location: MLABCELL_X39_Y26_N24
\Mux37~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \Mux37~0_combout\ & ( (!\Mux44~0_combout\ & ((!\Mux44~1_combout\) # ((\Shift|ShiftRight1~93_combout\)))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~94_combout\)))) ) ) # ( !\Mux37~0_combout\ & ( (!\Mux44~0_combout\ & 
-- (\Mux44~1_combout\ & (\Shift|ShiftRight1~93_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~94_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~93_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~94_combout\,
	dataf => \ALT_INV_Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LABCELL_X38_Y25_N14
\Mux37~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = ( \Shift|ShiftRight1~95_combout\ & ( (!\Mux46~3_combout\ & (((!\Mux44~6_combout\ & !\Shift|ShiftRight0~13_combout\)) # (\Mux44~5_combout\))) ) ) # ( !\Shift|ShiftRight1~95_combout\ & ( (!\Mux46~3_combout\ & 
-- (((!\Shift|ShiftRight0~13_combout\) # (\Mux44~5_combout\)) # (\Mux44~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110010001100000011001000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~6_combout\,
	datab => \ALT_INV_Mux46~3_combout\,
	datac => \ALT_INV_Mux44~5_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~13_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~95_combout\,
	combout => \Mux37~3_combout\);

-- Location: LABCELL_X38_Y25_N38
\Mux37~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = ( \Mux37~3_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & ((\Mux37~1_combout\))) # (\Mux44~4_combout\ & (\Mux37~2_combout\)))) ) ) # ( !\Mux37~3_combout\ & ( (!\Mux44~4_combout\ & (\Mux44~3_combout\ & ((\Mux37~1_combout\)))) 
-- # (\Mux44~4_combout\ & ((!\Mux44~3_combout\) # ((\Mux37~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100111010001010110011100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~4_combout\,
	datab => \ALT_INV_Mux44~3_combout\,
	datac => \ALT_INV_Mux37~2_combout\,
	datad => \ALT_INV_Mux37~1_combout\,
	dataf => \ALT_INV_Mux37~3_combout\,
	combout => \Mux37~4_combout\);

-- Location: LABCELL_X43_Y28_N26
\Shift|ShiftLeft0~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~58_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[24]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[26]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[25]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~58_combout\);

-- Location: LABCELL_X40_Y27_N22
\Shift|ShiftLeft0~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~59_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~32_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~50_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftLeft0~42_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~58_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~58_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~50_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~32_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~42_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~59_combout\);

-- Location: LABCELL_X38_Y25_N28
\Add|S[27]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(27) = ( \Add|C[27]~26_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[27]~26_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[27]~26_combout\,
	combout => \Add|S\(27));

-- Location: MLABCELL_X39_Y25_N12
\Mux36~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \Add|S\(27) & ( (!\Mux44~2_combout\ & (((!\Mux60~12_combout\) # (\Shift|ShiftLeft0~25_combout\)))) # (\Mux44~2_combout\ & (\Shift|ShiftLeft0~59_combout\ & ((!\Mux60~12_combout\)))) ) ) # ( !\Add|S\(27) & ( (!\Mux44~2_combout\ & 
-- (((\Shift|ShiftLeft0~25_combout\ & \Mux60~12_combout\)))) # (\Mux44~2_combout\ & (\Shift|ShiftLeft0~59_combout\ & ((!\Mux60~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~59_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~25_combout\,
	datac => \ALT_INV_Mux44~2_combout\,
	datad => \ALT_INV_Mux60~12_combout\,
	dataf => \Add|ALT_INV_S\(27),
	combout => \Mux36~0_combout\);

-- Location: MLABCELL_X39_Y25_N4
\Mux36~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \Mux44~1_combout\ & ( (!\Mux44~0_combout\ & ((\Shift|ShiftRight1~96_combout\))) # (\Mux44~0_combout\ & (\Shift|ShiftRight1~97_combout\)) ) ) # ( !\Mux44~1_combout\ & ( (!\Mux44~0_combout\ & (\Mux36~0_combout\)) # (\Mux44~0_combout\ & 
-- ((\Shift|ShiftRight1~97_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~97_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~96_combout\,
	dataf => \ALT_INV_Mux44~1_combout\,
	combout => \Mux36~1_combout\);

-- Location: MLABCELL_X39_Y25_N26
\Mux36~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = ( \Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight1~98_combout\) # (\Mux44~5_combout\))) ) ) # ( !\Mux44~6_combout\ & ( (!\Mux46~3_combout\ & ((!\Shift|ShiftRight0~14_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~14_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~98_combout\,
	datac => \ALT_INV_Mux46~3_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux44~6_combout\,
	combout => \Mux36~3_combout\);

-- Location: MLABCELL_X39_Y25_N20
\Mux36~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[27]~input_o\ & (!\LogicFN[1]~input_o\ & \A[27]~input_o\)) # (\B[27]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[27]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[27]~input_o\)) # 
-- (\B[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110000110000110011000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux36~2_combout\);

-- Location: MLABCELL_X39_Y25_N16
\Mux36~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = ( \Mux36~2_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & ((!\Mux36~3_combout\)))) # (\Mux44~3_combout\ & (((\Mux36~1_combout\)) # (\Mux44~4_combout\))) ) ) # ( !\Mux36~2_combout\ & ( (!\Mux44~3_combout\ & (\Mux44~4_combout\ & 
-- ((!\Mux36~3_combout\)))) # (\Mux44~3_combout\ & (!\Mux44~4_combout\ & (\Mux36~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100001001100000010000110111000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~3_combout\,
	datab => \ALT_INV_Mux44~4_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \ALT_INV_Mux36~3_combout\,
	dataf => \ALT_INV_Mux36~2_combout\,
	combout => \Mux36~4_combout\);

-- Location: LABCELL_X43_Y28_N28
\Shift|ShiftLeft0~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~60_combout\ = ( \A[25]~input_o\ & ( \B[0]~input_o\ & ( (\A[27]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[27]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\A[25]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~60_combout\);

-- Location: MLABCELL_X44_Y28_N2
\Shift|ShiftLeft0~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~61_combout\ = ( \Shift|ShiftLeft0~44_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~60_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftLeft0~35_combout\)))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~44_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~60_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftLeft0~35_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~44_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~60_combout\))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~35_combout\ & \B[3]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~44_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~60_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~35_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~60_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~35_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~44_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~52_combout\,
	combout => \Shift|ShiftLeft0~61_combout\);

-- Location: LABCELL_X38_Y25_N6
\Add|S[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(28) = ( \A[28]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[28]~input_o\ $ (!\Add|C[28]~27_combout\)) ) ) # ( !\A[28]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[28]~input_o\ $ (\Add|C[28]~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \Add|ALT_INV_C[28]~27_combout\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Add|S\(28));

-- Location: LABCELL_X38_Y25_N24
\Mux35~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \Add|S\(28) & ( (!\Mux44~2_combout\ & ((!\Mux60~12_combout\) # ((\Shift|ShiftLeft0~27_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\ & (\Shift|ShiftLeft0~61_combout\))) ) ) # ( !\Add|S\(28) & ( (!\Mux44~2_combout\ & 
-- (\Mux60~12_combout\ & ((\Shift|ShiftLeft0~27_combout\)))) # (\Mux44~2_combout\ & (!\Mux60~12_combout\ & (\Shift|ShiftLeft0~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~2_combout\,
	datab => \ALT_INV_Mux60~12_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~61_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~27_combout\,
	dataf => \Add|ALT_INV_S\(28),
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X38_Y25_N18
\Mux35~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = ( \Shift|ShiftRight1~101_combout\ & ( (!\Mux44~0_combout\ & (((\Mux44~1_combout\)) # (\Mux35~0_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~100_combout\)))) ) ) # ( !\Shift|ShiftRight1~101_combout\ & ( (!\Mux44~0_combout\ & 
-- (\Mux35~0_combout\ & (!\Mux44~1_combout\))) # (\Mux44~0_combout\ & (((\Shift|ShiftRight1~100_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux35~0_combout\,
	datab => \ALT_INV_Mux44~1_combout\,
	datac => \ALT_INV_Mux44~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~100_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~101_combout\,
	combout => \Mux35~1_combout\);

-- Location: LABCELL_X38_Y25_N12
\Mux35~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = ( \Shift|ShiftRight1~99_combout\ & ( (!\Mux46~3_combout\ & (((!\Mux44~6_combout\ & !\Shift|ShiftRight0~15_combout\)) # (\Mux44~5_combout\))) ) ) # ( !\Shift|ShiftRight1~99_combout\ & ( (!\Mux46~3_combout\ & 
-- ((!\Shift|ShiftRight0~15_combout\) # (\Mux44~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110010000000110011001000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~6_combout\,
	datab => \ALT_INV_Mux46~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~15_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~99_combout\,
	combout => \Mux35~3_combout\);

-- Location: LABCELL_X38_Y25_N32
\Mux35~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\B[28]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Mux35~2_combout\);

-- Location: LABCELL_X38_Y25_N36
\Mux35~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = ( \Mux35~2_combout\ & ( (!\Mux44~4_combout\ & (\Mux44~3_combout\ & (\Mux35~1_combout\))) # (\Mux44~4_combout\ & (((!\Mux35~3_combout\)) # (\Mux44~3_combout\))) ) ) # ( !\Mux35~2_combout\ & ( (!\Mux44~4_combout\ & (\Mux44~3_combout\ & 
-- (\Mux35~1_combout\))) # (\Mux44~4_combout\ & (!\Mux44~3_combout\ & ((!\Mux35~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000010010001100000001001010111000100110101011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~4_combout\,
	datab => \ALT_INV_Mux44~3_combout\,
	datac => \ALT_INV_Mux35~1_combout\,
	datad => \ALT_INV_Mux35~3_combout\,
	dataf => \ALT_INV_Mux35~2_combout\,
	combout => \Mux35~4_combout\);

-- Location: MLABCELL_X34_Y25_N2
\Mux34~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[29]~input_o\ & (\B[29]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[29]~input_o\ & (!\B[29]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[29]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux34~2_combout\);

-- Location: LABCELL_X38_Y25_N10
\Add|S[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(29) = ( \B[29]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[29]~input_o\ $ (!\Add|C[29]~28_combout\)) ) ) # ( !\B[29]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[29]~input_o\ $ (\Add|C[29]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \Add|ALT_INV_C[29]~28_combout\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|S\(29));

-- Location: LABCELL_X43_Y28_N14
\Shift|ShiftLeft0~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~62_combout\ = ( \A[28]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[26]~input_o\) ) ) ) # ( \A[28]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[29]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~62_combout\);

-- Location: LABCELL_X35_Y29_N6
\Shift|ShiftLeft0~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~63_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftLeft0~38_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~62_combout\)) 
-- # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~54_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~46_combout\ & ( (\Shift|ShiftLeft0~38_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftLeft0~46_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ShiftLeft0~62_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~54_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~38_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~62_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~54_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~46_combout\,
	combout => \Shift|ShiftLeft0~63_combout\);

-- Location: MLABCELL_X34_Y25_N36
\Mux34~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \Shift|ShiftLeft0~63_combout\ & ( (!\Mux60~12_combout\ & (((\Add|S\(29))) # (\Mux44~2_combout\))) # (\Mux60~12_combout\ & (!\Mux44~2_combout\ & (\Shift|ShiftLeft0~29_combout\))) ) ) # ( !\Shift|ShiftLeft0~63_combout\ & ( 
-- (!\Mux44~2_combout\ & ((!\Mux60~12_combout\ & ((\Add|S\(29)))) # (\Mux60~12_combout\ & (\Shift|ShiftLeft0~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux60~12_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~29_combout\,
	datad => \Add|ALT_INV_S\(29),
	dataf => \Shift|ALT_INV_ShiftLeft0~63_combout\,
	combout => \Mux34~0_combout\);

-- Location: MLABCELL_X34_Y25_N30
\Mux34~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \Mux44~0_combout\ & ( \Shift|ShiftRight1~103_combout\ ) ) # ( !\Mux44~0_combout\ & ( (!\Mux44~1_combout\ & (\Mux34~0_combout\)) # (\Mux44~1_combout\ & ((\Shift|ShiftRight1~102_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~103_combout\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~102_combout\,
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: MLABCELL_X34_Y25_N24
\Mux34~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = ( !\Mux46~3_combout\ & ( ((!\Mux44~6_combout\ & ((!\Shift|ShiftRight0~16_combout\))) # (\Mux44~6_combout\ & (!\Shift|ShiftRight1~104_combout\))) # (\Mux44~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110101111110011111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~104_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~16_combout\,
	datac => \ALT_INV_Mux44~5_combout\,
	datad => \ALT_INV_Mux44~6_combout\,
	dataf => \ALT_INV_Mux46~3_combout\,
	combout => \Mux34~3_combout\);

-- Location: MLABCELL_X34_Y25_N6
\Mux34~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = ( \Mux34~3_combout\ & ( (\Mux44~3_combout\ & ((!\Mux44~4_combout\ & ((\Mux34~1_combout\))) # (\Mux44~4_combout\ & (\Mux34~2_combout\)))) ) ) # ( !\Mux34~3_combout\ & ( (!\Mux44~4_combout\ & (((\Mux34~1_combout\ & \Mux44~3_combout\)))) 
-- # (\Mux44~4_combout\ & (((!\Mux44~3_combout\)) # (\Mux34~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011011010101010001101100000000000110110000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~4_combout\,
	datab => \ALT_INV_Mux34~2_combout\,
	datac => \ALT_INV_Mux34~1_combout\,
	datad => \ALT_INV_Mux44~3_combout\,
	dataf => \ALT_INV_Mux34~3_combout\,
	combout => \Mux34~4_combout\);

-- Location: LABCELL_X38_Y27_N20
\Mux33~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = ( !\Mux46~3_combout\ & ( ((!\Mux44~6_combout\ & (!\Shift|ShiftRight0~17_combout\)) # (\Mux44~6_combout\ & ((!\Shift|ShiftRight1~107_combout\)))) # (\Mux44~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011111111101011001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~17_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~107_combout\,
	datac => \ALT_INV_Mux44~6_combout\,
	datad => \ALT_INV_Mux44~5_combout\,
	dataf => \ALT_INV_Mux46~3_combout\,
	combout => \Mux33~3_combout\);

-- Location: LABCELL_X38_Y27_N16
\Mux33~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = ( \A[30]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[30]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[30]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101001011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Mux33~2_combout\);

-- Location: LABCELL_X43_Y28_N18
\Shift|ShiftLeft0~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~64_combout\ = ( \A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[29]~input_o\))) # (\B[1]~input_o\ & (\A[27]~input_o\)) ) ) ) # ( !\A[30]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[29]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[27]~input_o\)) ) ) ) # ( \A[30]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( !\B[0]~input_o\ & ( (\A[28]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~64_combout\);

-- Location: MLABCELL_X39_Y28_N6
\Shift|ShiftLeft0~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~65_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~64_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~64_combout\ & 
-- ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~48_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~64_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~56_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~64_combout\ & ( (\Shift|ShiftLeft0~48_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~48_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~40_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~56_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~64_combout\,
	combout => \Shift|ShiftLeft0~65_combout\);

-- Location: MLABCELL_X44_Y24_N6
\Add|S[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(30) = ( \B[30]~input_o\ & ( !\A[30]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[30]~29_combout\)) ) ) # ( !\B[30]~input_o\ & ( !\A[30]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|C[30]~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[30]~29_combout\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Add|S\(30));

-- Location: LABCELL_X38_Y27_N14
\Mux33~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \Mux60~12_combout\ & ( (\Shift|ShiftLeft0~31_combout\ & !\Mux44~2_combout\) ) ) # ( !\Mux60~12_combout\ & ( (!\Mux44~2_combout\ & ((\Add|S\(30)))) # (\Mux44~2_combout\ & (\Shift|ShiftLeft0~65_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~31_combout\,
	datab => \ALT_INV_Mux44~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~65_combout\,
	datad => \Add|ALT_INV_S\(30),
	dataf => \ALT_INV_Mux60~12_combout\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X38_Y27_N4
\Mux33~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \Mux33~0_combout\ & ( (!\Mux44~0_combout\ & (((!\Mux44~1_combout\) # (\Shift|ShiftRight1~105_combout\)))) # (\Mux44~0_combout\ & (\Shift|ShiftRight1~106_combout\)) ) ) # ( !\Mux33~0_combout\ & ( (!\Mux44~0_combout\ & 
-- (((\Shift|ShiftRight1~105_combout\ & \Mux44~1_combout\)))) # (\Mux44~0_combout\ & (\Shift|ShiftRight1~106_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~106_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~105_combout\,
	datac => \ALT_INV_Mux44~1_combout\,
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LABCELL_X38_Y27_N26
\Mux33~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = ( \Mux33~1_combout\ & ( (!\Mux44~4_combout\ & (((\Mux44~3_combout\)))) # (\Mux44~4_combout\ & ((!\Mux44~3_combout\ & (!\Mux33~3_combout\)) # (\Mux44~3_combout\ & ((\Mux33~2_combout\))))) ) ) # ( !\Mux33~1_combout\ & ( 
-- (\Mux44~4_combout\ & ((!\Mux44~3_combout\ & (!\Mux33~3_combout\)) # (\Mux44~3_combout\ & ((\Mux33~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000011000010101111001100001010000000110000101011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~3_combout\,
	datab => \ALT_INV_Mux33~2_combout\,
	datac => \ALT_INV_Mux44~4_combout\,
	datad => \ALT_INV_Mux44~3_combout\,
	datae => \ALT_INV_Mux33~1_combout\,
	combout => \Mux33~4_combout\);

-- Location: MLABCELL_X44_Y24_N24
\Logic|Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[31]~input_o\ & \B[31]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[31]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (!\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: MLABCELL_X42_Y25_N24
\Shift|ShiftRight1~111\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~111_combout\ = ( \Shift|ShiftRight1~108_combout\ & ( (!\B[5]~input_o\ & (((\Shift|ShiftRight1~109_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (((\A[63]~input_o\)))) ) ) # ( !\Shift|ShiftRight1~108_combout\ & ( (!\B[5]~input_o\ & 
-- (!\B[4]~input_o\ & (\Shift|ShiftRight1~109_combout\))) # (\B[5]~input_o\ & (((\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~109_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~108_combout\,
	combout => \Shift|ShiftRight1~111_combout\);

-- Location: MLABCELL_X42_Y25_N22
\Shift|ShiftRight0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = ( \B[5]~input_o\ & ( \Shift|ShiftRight1~109_combout\ & ( (\A[63]~input_o\ & (\Shift|ShiftLeft0~1_combout\ & !\B[4]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ShiftRight1~109_combout\ & ( (!\B[4]~input_o\) # 
-- (\Shift|ShiftRight1~108_combout\) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ShiftRight1~109_combout\ & ( (\A[63]~input_o\ & (\Shift|ShiftLeft0~1_combout\ & !\B[4]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ShiftRight1~109_combout\ & ( 
-- (\Shift|ShiftRight1~108_combout\ & \B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000001010000000011111111001100110000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~108_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~109_combout\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: MLABCELL_X44_Y24_N28
\Add|S[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(31) = ( \AddnSub~input_o\ & ( !\Add|C[31]~30_combout\ $ (!\B[31]~input_o\ $ (!\A[31]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[31]~30_combout\ $ (!\B[31]~input_o\ $ (\A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[31]~30_combout\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(31));

-- Location: MLABCELL_X44_Y24_N10
\Shift|ShiftLeft0~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~66_combout\ = ( \A[31]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[28]~input_o\)) ) ) ) # ( !\A[31]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[28]~input_o\)) ) ) ) # ( \A[31]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \A[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftLeft0~66_combout\);

-- Location: LABCELL_X40_Y27_N26
\Shift|ShiftLeft0~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~67_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~42_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~58_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftLeft0~50_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~66_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~58_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~50_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~42_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~66_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~67_combout\);

-- Location: MLABCELL_X42_Y25_N16
\Shift|ShiftLeft0~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~68_combout\ = ( \Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & ((\B[4]~input_o\) # (\Shift|ShiftLeft0~67_combout\))) ) ) # ( !\Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & (\Shift|ShiftLeft0~67_combout\ & !\B[4]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~67_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~68_combout\);

-- Location: MLABCELL_X42_Y25_N6
\Y_ShiftOrArith[31]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~2_combout\ = ( \Add|S\(31) & ( \Shift|ShiftLeft0~68_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~111_combout\))) ) ) ) # ( 
-- !\Add|S\(31) & ( \Shift|ShiftLeft0~68_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight0~19_combout\ & \ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Shift|ShiftRight1~111_combout\))) ) ) ) # ( \Add|S\(31) & ( 
-- !\Shift|ShiftLeft0~68_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\) # (\Shift|ShiftRight0~19_combout\)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~111_combout\ & ((\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Add|S\(31) & ( 
-- !\Shift|ShiftLeft0~68_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~111_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~111_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~19_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \Add|ALT_INV_S\(31),
	dataf => \Shift|ALT_INV_ShiftLeft0~68_combout\,
	combout => \Y_ShiftOrArith[31]~2_combout\);

-- Location: MLABCELL_X44_Y24_N12
\Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \Y_ShiftOrArith[31]~2_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\FuncClass[0]~input_o\) # (\Logic|Mux32~0_combout\))) ) ) # ( !\Y_ShiftOrArith[31]~2_combout\ & ( (!\FuncClass[1]~input_o\ & (\Logic|Mux32~0_combout\ & 
-- \FuncClass[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux32~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	combout => \Mux32~0_combout\);

-- Location: IOIBUF_X59_Y23_N1
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: MLABCELL_X44_Y24_N36
\Logic|Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[32]~input_o\) # (\A[32]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[32]~input_o\ & \B[32]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[32]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: MLABCELL_X44_Y24_N26
\Add|S[32]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(32) = ( \AddnSub~input_o\ & ( !\A[32]~input_o\ $ (!\Add|C[32]~31_combout\ $ (!\B[32]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[32]~input_o\ $ (!\Add|C[32]~31_combout\ $ (\B[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datac => \Add|ALT_INV_C[32]~31_combout\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(32));

-- Location: LABCELL_X45_Y25_N24
\Y_ShiftOrArith[32]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~3_combout\ = ( \B[4]~input_o\ & ( \Shift|ShiftRight1~19_combout\ & ( (!\B[5]~input_o\) # ((\ShiftFN[0]~input_o\ & \A[63]~input_o\)) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ShiftRight1~19_combout\ & ( (!\B[5]~input_o\ & 
-- (\Shift|ShiftRight1~14_combout\)) # (\B[5]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ShiftRight1~19_combout\ & ( (\B[5]~input_o\ & (\ShiftFN[0]~input_o\ & \A[63]~input_o\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shift|ShiftRight1~19_combout\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~14_combout\)) # (\B[5]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111000000000000001101000100010001111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~19_combout\,
	combout => \Y_ShiftOrArith[32]~3_combout\);

-- Location: MLABCELL_X44_Y24_N18
\Shift|ShiftLeft0~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~69_combout\ = ( \A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( !\A[32]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( \A[32]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\B[0]~input_o\ & ( (\A[30]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~69_combout\);

-- Location: MLABCELL_X44_Y28_N24
\Shift|ShiftLeft0~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~70_combout\ = ( \Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~60_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~52_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~44_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ShiftLeft0~52_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftLeft0~44_combout\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftLeft0~52_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~44_combout\ & (\B[3]~input_o\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~60_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~52_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~44_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~44_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~52_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~69_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~60_combout\,
	combout => \Shift|ShiftLeft0~70_combout\);

-- Location: LABCELL_X45_Y25_N6
\Y_ShiftOrArith[32]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~4_combout\ = ( \Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((!\B[4]~input_o\) # (\Shift|ShiftLeft0~36_combout\)))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~34_combout\ & ((!\B[4]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((\Shift|ShiftLeft0~36_combout\ & \B[4]~input_o\)))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~34_combout\ & ((!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~34_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~36_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~70_combout\,
	combout => \Y_ShiftOrArith[32]~4_combout\);

-- Location: LABCELL_X45_Y25_N8
\Y_ShiftOrArith[32]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_ShiftOrArith[32]~3_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(32))) # (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[32]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_S\(32),
	datac => \ALT_INV_Y_ShiftOrArith[32]~3_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[32]~4_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[32]~5_combout\);

-- Location: MLABCELL_X44_Y25_N2
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \Logic|Mux31~0_combout\ & ( \Y_ShiftOrArith[32]~5_combout\ & ( (!\FuncClass[1]~input_o\ & (((!\ExtWord~input_o\) # (\FuncClass[0]~input_o\)) # (\Y_ShiftOrArith[31]~2_combout\))) ) ) ) # ( !\Logic|Mux31~0_combout\ & ( 
-- \Y_ShiftOrArith[32]~5_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # (\Y_ShiftOrArith[31]~2_combout\)))) ) ) ) # ( \Logic|Mux31~0_combout\ & ( !\Y_ShiftOrArith[32]~5_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- (((\Y_ShiftOrArith[31]~2_combout\ & \ExtWord~input_o\)) # (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux31~0_combout\ & ( !\Y_ShiftOrArith[32]~5_combout\ & ( (\Y_ShiftOrArith[31]~2_combout\ & (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & 
-- \ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001100000111000011000000010000001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Logic|ALT_INV_Mux31~0_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[32]~5_combout\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X42_Y22_N0
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\) # (\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: MLABCELL_X42_Y22_N18
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & !\ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X44_Y24_N34
\Add|S[33]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(33) = ( \A[33]~input_o\ & ( !\Add|C[33]~32_combout\ $ (!\AddnSub~input_o\ $ (!\B[33]~input_o\)) ) ) # ( !\A[33]~input_o\ & ( !\Add|C[33]~32_combout\ $ (!\AddnSub~input_o\ $ (\B[33]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[33]~32_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \Add|S\(33));

-- Location: MLABCELL_X34_Y25_N38
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Mux30~0_combout\) # (!\ShiftFN[1]~input_o\) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\Mux30~0_combout\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: MLABCELL_X37_Y25_N34
\Mux30~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((!\Shift|ShiftRight0~2_combout\))) # (\ShiftFN[0]~input_o\ & (!\Shift|ShiftRight1~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011001010110010101100101000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~35_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~2_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LABCELL_X43_Y25_N2
\Shift|ShiftLeft0~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~71_combout\ = ( \A[30]~input_o\ & ( \A[31]~input_o\ & ( ((!\B[0]~input_o\ & (\A[33]~input_o\)) # (\B[0]~input_o\ & ((\A[32]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[30]~input_o\ & ( \A[31]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[33]~input_o\))) # (\B[0]~input_o\ & (((\A[32]~input_o\ & !\B[1]~input_o\)))) ) ) ) # ( \A[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[0]~input_o\ & (\A[33]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # 
-- (\A[32]~input_o\)))) ) ) ) # ( !\A[30]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[33]~input_o\)) # (\B[0]~input_o\ & ((\A[32]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ShiftLeft0~71_combout\);

-- Location: LABCELL_X35_Y29_N30
\Shift|ShiftLeft0~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~72_combout\ = ( \Shift|ShiftLeft0~54_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~62_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~46_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~54_combout\ & ( \B[2]~input_o\ & 
-- ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~62_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~46_combout\))) ) ) ) # ( \Shift|ShiftLeft0~54_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ShiftLeft0~71_combout\) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~54_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~71_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~71_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~62_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~46_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~54_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~72_combout\);

-- Location: MLABCELL_X37_Y29_N24
\Mux30~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \Shift|ShiftLeft0~3_combout\ & ( \Shift|ShiftLeft0~72_combout\ & ( (!\B[4]~input_o\) # ((\Shift|ShiftLeft0~39_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( 
-- \Shift|ShiftLeft0~72_combout\ & ( (!\B[4]~input_o\ & (((!\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~39_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~3_combout\ & ( !\Shift|ShiftLeft0~72_combout\ & ( 
-- (!\B[4]~input_o\ & (((\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~39_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( !\Shift|ShiftLeft0~72_combout\ & ( (\Shift|ShiftLeft0~39_combout\ & 
-- (\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000011110011001011110000001100101111111100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~39_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~72_combout\,
	combout => \Mux30~2_combout\);

-- Location: LABCELL_X38_Y26_N6
\Mux30~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = ( \Mux30~3_combout\ & ( \Mux30~2_combout\ & ( ((!\ShiftFN[1]~input_o\ & ((\Add|S\(33)))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~29_combout\))) # (\Mux18~2_combout\) ) ) ) # ( !\Mux30~3_combout\ & ( \Mux30~2_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\) # (\Add|S\(33))))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~29_combout\ & ((!\Mux18~2_combout\)))) ) ) ) # ( \Mux30~3_combout\ & ( !\Mux30~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Add|S\(33) & 
-- !\Mux18~2_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\)) # (\Shift|ShiftRight1~29_combout\))) ) ) ) # ( !\Mux30~3_combout\ & ( !\Mux30~2_combout\ & ( (!\Mux18~2_combout\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S\(33)))) # (\ShiftFN[1]~input_o\ & 
-- (\Shift|ShiftRight1~29_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~29_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Add|ALT_INV_S\(33),
	datad => \ALT_INV_Mux18~2_combout\,
	datae => \ALT_INV_Mux30~3_combout\,
	dataf => \ALT_INV_Mux30~2_combout\,
	combout => \Mux30~4_combout\);

-- Location: MLABCELL_X44_Y24_N14
\Mux30~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \A[33]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[33]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[33]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[33]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: MLABCELL_X42_Y22_N6
\Mux30~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = ( \Mux30~1_combout\ & ( (!\Mux18~1_combout\ & (((\Mux18~0_combout\ & \Mux30~4_combout\)))) # (\Mux18~1_combout\ & (((\Mux18~0_combout\)) # (\Y_ShiftOrArith[31]~2_combout\))) ) ) # ( !\Mux30~1_combout\ & ( (!\Mux18~1_combout\ & 
-- (((\Mux18~0_combout\ & \Mux30~4_combout\)))) # (\Mux18~1_combout\ & (\Y_ShiftOrArith[31]~2_combout\ & (!\Mux18~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110000010011000111110001001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux18~1_combout\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_Mux30~4_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux30~5_combout\);

-- Location: MLABCELL_X42_Y22_N22
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\B[34]~input_o\ & (\A[34]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[34]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[34]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101100001010101110110000101010111011000010101011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X42_Y22_N12
\Add|S[34]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(34) = ( \A[34]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[34]~33_combout\ $ (!\B[34]~input_o\)) ) ) # ( !\A[34]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[34]~33_combout\ $ (\B[34]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[34]~33_combout\,
	datad => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \Add|S\(34));

-- Location: LABCELL_X43_Y25_N6
\Shift|ShiftLeft0~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~73_combout\ = ( \A[34]~input_o\ & ( \A[31]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[33]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[32]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( \A[31]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\A[33]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[32]~input_o\))) ) ) ) # ( \A[34]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[33]~input_o\)))) # (\B[1]~input_o\ & 
-- (\A[32]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & (((\A[33]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[32]~input_o\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ShiftLeft0~73_combout\);

-- Location: MLABCELL_X39_Y28_N10
\Shift|ShiftLeft0~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~74_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~48_combout\ & ( (\B[3]~input_o\) # (\Shift|ShiftLeft0~64_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~48_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) 
-- # (\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~48_combout\ & ( (\Shift|ShiftLeft0~64_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ShiftLeft0~48_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftLeft0~73_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~56_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~64_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~73_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~48_combout\,
	combout => \Shift|ShiftLeft0~74_combout\);

-- Location: LABCELL_X35_Y25_N12
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \Shift|ShiftLeft0~41_combout\ & ( \Shift|ShiftLeft0~74_combout\ & ( (!\B[5]~input_o\) # ((!\B[4]~input_o\ & (\Shift|ShiftLeft0~5_combout\)) # (\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~41_combout\ & ( 
-- \Shift|ShiftLeft0~74_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\Shift|ShiftLeft0~5_combout\))) ) ) ) # ( \Shift|ShiftLeft0~41_combout\ & ( !\Shift|ShiftLeft0~74_combout\ & ( (!\B[4]~input_o\ & (\Shift|ShiftLeft0~5_combout\ & (\B[5]~input_o\))) 
-- # (\B[4]~input_o\ & (((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~41_combout\ & ( !\Shift|ShiftLeft0~74_combout\ & ( (!\B[4]~input_o\ & (\Shift|ShiftLeft0~5_combout\ & \B[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101001010100010101000101111011111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~41_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~74_combout\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X38_Y26_N28
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~54_combout\)) # (\B[5]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~4_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~4_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~54_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LABCELL_X38_Y26_N8
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = ( \Mux29~1_combout\ & ( \Mux29~2_combout\ & ( ((!\ShiftFN[1]~input_o\ & (\Add|S\(34))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~48_combout\)))) # (\Mux18~2_combout\) ) ) ) # ( !\Mux29~1_combout\ & ( \Mux29~2_combout\ & ( 
-- (!\Mux18~2_combout\ & ((!\ShiftFN[1]~input_o\ & (\Add|S\(34))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~48_combout\))))) # (\Mux18~2_combout\ & (((\ShiftFN[1]~input_o\)))) ) ) ) # ( \Mux29~1_combout\ & ( !\Mux29~2_combout\ & ( (!\Mux18~2_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (\Add|S\(34))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~48_combout\))))) # (\Mux18~2_combout\ & (((!\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Mux29~1_combout\ & ( !\Mux29~2_combout\ & ( (!\Mux18~2_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (\Add|S\(34))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~48_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(34),
	datab => \Shift|ALT_INV_ShiftRight1~48_combout\,
	datac => \ALT_INV_Mux18~2_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux29~1_combout\,
	dataf => \ALT_INV_Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: MLABCELL_X42_Y22_N30
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( \Mux29~3_combout\ & ( (!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\ & ((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & (((!\Mux18~1_combout\) # (\Mux29~0_combout\)))) ) ) # ( !\Mux29~3_combout\ & ( (\Mux18~1_combout\ & 
-- ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux29~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011100110011010001110011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: MLABCELL_X37_Y25_N36
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~71_combout\)) # (\B[5]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~6_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~71_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~6_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: MLABCELL_X42_Y22_N34
\Add|S[35]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(35) = ( \Add|C[35]~34_combout\ & ( !\B[35]~input_o\ $ (!\A[35]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[35]~34_combout\ & ( !\B[35]~input_o\ $ (!\A[35]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[35]~34_combout\,
	combout => \Add|S\(35));

-- Location: LABCELL_X43_Y25_N30
\Shift|ShiftLeft0~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~75_combout\ = ( \A[34]~input_o\ & ( \A[32]~input_o\ & ( ((!\B[1]~input_o\ & (\A[35]~input_o\)) # (\B[1]~input_o\ & ((\A[33]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[34]~input_o\ & ( \A[32]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[35]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[33]~input_o\)))) ) ) ) # ( \A[34]~input_o\ & ( !\A[32]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[35]~input_o\))) # (\B[1]~input_o\ & (((\A[33]~input_o\ & 
-- !\B[0]~input_o\)))) ) ) ) # ( !\A[34]~input_o\ & ( !\A[32]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[35]~input_o\)) # (\B[1]~input_o\ & ((\A[33]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \Shift|ShiftLeft0~75_combout\);

-- Location: LABCELL_X40_Y27_N28
\Shift|ShiftLeft0~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~76_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~75_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~58_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~50_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~75_combout\ & 
-- ( (!\B[2]~input_o\) # (\Shift|ShiftLeft0~66_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~75_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~58_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~50_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftLeft0~75_combout\ & ( (\Shift|ShiftLeft0~66_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~58_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~50_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~66_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~75_combout\,
	combout => \Shift|ShiftLeft0~76_combout\);

-- Location: MLABCELL_X37_Y26_N16
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \Shift|ShiftLeft0~76_combout\ & ( \Shift|ShiftLeft0~7_combout\ & ( (!\B[4]~input_o\) # ((\Shift|ShiftLeft0~43_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~76_combout\ & ( 
-- \Shift|ShiftLeft0~7_combout\ & ( (!\B[4]~input_o\ & (((\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~43_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~76_combout\ & ( !\Shift|ShiftLeft0~7_combout\ & ( 
-- (!\B[4]~input_o\ & (((!\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~43_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~76_combout\ & ( !\Shift|ShiftLeft0~7_combout\ & ( (\Shift|ShiftLeft0~43_combout\ & 
-- (\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010111100000011001000001111001100101111111100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~43_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~76_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	combout => \Mux28~1_combout\);

-- Location: MLABCELL_X37_Y26_N2
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux28~1_combout\ & ( (!\Mux18~2_combout\ & ((\Shift|ShiftRight1~67_combout\))) # (\Mux18~2_combout\ & (\Mux28~2_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux28~1_combout\ & ( (\Add|S\(35)) # 
-- (\Mux18~2_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux28~1_combout\ & ( (!\Mux18~2_combout\ & ((\Shift|ShiftRight1~67_combout\))) # (\Mux18~2_combout\ & (\Mux28~2_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux28~1_combout\ & ( 
-- (!\Mux18~2_combout\ & \Add|S\(35)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~2_combout\,
	datab => \ALT_INV_Mux18~2_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~67_combout\,
	datad => \Add|ALT_INV_S\(35),
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux28~1_combout\,
	combout => \Mux28~3_combout\);

-- Location: MLABCELL_X42_Y22_N32
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[35]~input_o\ & (\A[35]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[35]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[35]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[35]~input_o\ $ (((!\A[35]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[35]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X42_Y22_N28
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( \Mux28~0_combout\ & ( (!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\ & ((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & (((\Mux18~1_combout\) # (\Mux28~3_combout\)))) ) ) # ( !\Mux28~0_combout\ & ( (!\Mux18~0_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\ & ((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & (((\Mux28~3_combout\ & !\Mux18~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010000000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux28~3_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~4_combout\);

-- Location: MLABCELL_X42_Y22_N38
\Add|S[36]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(36) = ( \Add|C[36]~35_combout\ & ( !\A[36]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[36]~input_o\)) ) ) # ( !\Add|C[36]~35_combout\ & ( !\A[36]~input_o\ $ (!\AddnSub~input_o\ $ (\B[36]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	dataf => \Add|ALT_INV_C[36]~35_combout\,
	combout => \Add|S\(36));

-- Location: LABCELL_X43_Y25_N32
\Shift|ShiftLeft0~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~77_combout\ = ( \A[33]~input_o\ & ( \B[0]~input_o\ & ( (\A[35]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[33]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[35]~input_o\) ) ) ) # ( \A[33]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[36]~input_o\))) # (\B[1]~input_o\ & (\A[34]~input_o\)) ) ) ) # ( !\A[33]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[36]~input_o\))) # (\B[1]~input_o\ & (\A[34]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~77_combout\);

-- Location: MLABCELL_X44_Y28_N10
\Shift|ShiftLeft0~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~78_combout\ = ( \Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~60_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~60_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~60_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~52_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~60_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~60_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~77_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~69_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~52_combout\,
	combout => \Shift|ShiftLeft0~78_combout\);

-- Location: MLABCELL_X37_Y26_N26
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & \Shift|ShiftLeft0~45_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[4]~input_o\ & ( \Shift|ShiftLeft0~45_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[4]~input_o\ & ( 
-- (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~78_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~10_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~78_combout\))) # (\B[5]~input_o\ & 
-- (\Shift|ShiftLeft0~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001111000011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~45_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~78_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LABCELL_X38_Y26_N34
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~7_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~77_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~7_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~77_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X37_Y26_N30
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux27~2_combout\ & ( (\Shift|ShiftRight1~76_combout\) # (\Mux18~2_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux27~2_combout\ & ( (!\Mux18~2_combout\ & (\Add|S\(36))) # (\Mux18~2_combout\ & 
-- ((\Mux27~1_combout\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux27~2_combout\ & ( (!\Mux18~2_combout\ & \Shift|ShiftRight1~76_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux27~2_combout\ & ( (!\Mux18~2_combout\ & (\Add|S\(36))) # (\Mux18~2_combout\ & 
-- ((\Mux27~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(36),
	datab => \ALT_INV_Mux18~2_combout\,
	datac => \ALT_INV_Mux27~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~76_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: MLABCELL_X42_Y22_N36
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \A[36]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[36]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[36]~input_o\))) ) ) # ( !\A[36]~input_o\ & ( (\B[36]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X42_Y22_N4
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux18~0_combout\ & ( (!\Mux18~1_combout\ & (\Mux27~3_combout\)) # (\Mux18~1_combout\ & ((\Mux27~0_combout\))) ) ) # ( !\Mux18~0_combout\ & ( (\Y_ShiftOrArith[31]~2_combout\ & \Mux18~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux18~1_combout\,
	datac => \ALT_INV_Mux27~3_combout\,
	datad => \ALT_INV_Mux27~0_combout\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux27~4_combout\);

-- Location: MLABCELL_X37_Y29_N32
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \A[37]~input_o\ & ( (!\B[37]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\B[37]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[37]~input_o\ & ( (\B[37]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X38_Y26_N38
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~80_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~8_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~80_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: MLABCELL_X42_Y22_N10
\Add|S[37]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(37) = ( \Add|C[37]~36_combout\ & ( !\AddnSub~input_o\ $ (!\B[37]~input_o\ $ (!\A[37]~input_o\)) ) ) # ( !\Add|C[37]~36_combout\ & ( !\AddnSub~input_o\ $ (!\B[37]~input_o\ $ (\A[37]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \Add|ALT_INV_C[37]~36_combout\,
	combout => \Add|S\(37));

-- Location: LABCELL_X43_Y25_N16
\Shift|ShiftLeft0~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~79_combout\ = ( \A[34]~input_o\ & ( \B[0]~input_o\ & ( (\A[36]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[34]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[36]~input_o\) ) ) ) # ( \A[34]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[35]~input_o\))) ) ) ) # ( !\A[34]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[37]~input_o\)) # (\B[1]~input_o\ & ((\A[35]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~79_combout\);

-- Location: LABCELL_X35_Y29_N12
\Shift|ShiftLeft0~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~80_combout\ = ( \Shift|ShiftLeft0~54_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~71_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~54_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~71_combout\) ) ) 
-- ) # ( \Shift|ShiftLeft0~54_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~79_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~62_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~54_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~79_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~71_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~79_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~62_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~54_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~80_combout\);

-- Location: MLABCELL_X37_Y29_N28
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\) # ((\Shift|ShiftLeft0~47_combout\ & !\ShiftFN[0]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\ & 
-- ((\Shift|ShiftLeft0~80_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~47_combout\)) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ShiftLeft0~13_combout\ & ( (\Shift|ShiftLeft0~47_combout\ & (\B[4]~input_o\ & !\ShiftFN[0]~input_o\)) ) ) ) # ( !\B[5]~input_o\ & 
-- ( !\Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~80_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~47_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100000001000000010001110111011101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~47_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~80_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X38_Y26_N12
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \Shift|ShiftRight1~79_combout\ & ( \Mux18~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux26~1_combout\))) # (\ShiftFN[1]~input_o\ & (\Mux26~2_combout\)) ) ) ) # ( !\Shift|ShiftRight1~79_combout\ & ( \Mux18~2_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((\Mux26~1_combout\))) # (\ShiftFN[1]~input_o\ & (\Mux26~2_combout\)) ) ) ) # ( \Shift|ShiftRight1~79_combout\ & ( !\Mux18~2_combout\ & ( (\ShiftFN[1]~input_o\) # (\Add|S\(37)) ) ) ) # ( !\Shift|ShiftRight1~79_combout\ & ( 
-- !\Mux18~2_combout\ & ( (\Add|S\(37) & !\ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~2_combout\,
	datab => \Add|ALT_INV_S\(37),
	datac => \ALT_INV_Mux26~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~79_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: MLABCELL_X39_Y22_N2
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( \Mux26~3_combout\ & ( \Mux18~1_combout\ & ( (!\Mux18~0_combout\ & ((\Y_ShiftOrArith[31]~2_combout\))) # (\Mux18~0_combout\ & (\Mux26~0_combout\)) ) ) ) # ( !\Mux26~3_combout\ & ( \Mux18~1_combout\ & ( (!\Mux18~0_combout\ & 
-- ((\Y_ShiftOrArith[31]~2_combout\))) # (\Mux18~0_combout\ & (\Mux26~0_combout\)) ) ) ) # ( \Mux26~3_combout\ & ( !\Mux18~1_combout\ & ( \Mux18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~0_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datae => \ALT_INV_Mux26~3_combout\,
	dataf => \ALT_INV_Mux18~1_combout\,
	combout => \Mux26~4_combout\);

-- Location: LABCELL_X40_Y22_N28
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[38]~input_o\ & (\B[38]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[38]~input_o\ & (!\B[38]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[38]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X40_Y22_N30
\Add|S[38]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(38) = ( \AddnSub~input_o\ & ( !\A[38]~input_o\ $ (!\B[38]~input_o\ $ (!\Add|C[38]~37_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[38]~input_o\ $ (!\B[38]~input_o\ $ (\Add|C[38]~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \Add|ALT_INV_C[38]~37_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(38));

-- Location: LABCELL_X38_Y26_N2
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~83_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~9_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~83_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X42_Y24_N0
\Shift|ShiftLeft0~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~81_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[35]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[36]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[38]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~81_combout\);

-- Location: MLABCELL_X39_Y28_N14
\Shift|ShiftLeft0~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~82_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~81_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~81_combout\ & 
-- ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~64_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~81_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~81_combout\ & ( (\Shift|ShiftLeft0~64_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~56_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~64_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~73_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~81_combout\,
	combout => \Shift|ShiftLeft0~82_combout\);

-- Location: MLABCELL_X39_Y26_N34
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \Shift|ShiftLeft0~49_combout\ & ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\) ) ) ) # ( \Shift|ShiftLeft0~49_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftLeft0~82_combout\)) # (\B[5]~input_o\ & 
-- ((\Shift|ShiftLeft0~15_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~49_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftLeft0~82_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~82_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~49_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X38_Y26_N18
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \Shift|ShiftRight1~82_combout\ & ( \Mux25~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\)) # (\Add|S\(38)))) # (\ShiftFN[1]~input_o\ & (((!\Mux18~2_combout\) # (\Mux25~2_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~82_combout\ & ( \Mux25~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\)) # (\Add|S\(38)))) # (\ShiftFN[1]~input_o\ & (((\Mux25~2_combout\ & \Mux18~2_combout\)))) ) ) ) # ( \Shift|ShiftRight1~82_combout\ & ( 
-- !\Mux25~1_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(38) & ((!\Mux18~2_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\Mux18~2_combout\) # (\Mux25~2_combout\)))) ) ) ) # ( !\Shift|ShiftRight1~82_combout\ & ( !\Mux25~1_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Add|S\(38) & ((!\Mux18~2_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Mux25~2_combout\ & \Mux18~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(38),
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux25~2_combout\,
	datad => \ALT_INV_Mux18~2_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~82_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X39_Y22_N6
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \Mux25~3_combout\ & ( (!\Mux18~1_combout\ & (((\Mux18~0_combout\)))) # (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux25~0_combout\))))) ) ) # ( !\Mux25~3_combout\ & ( 
-- (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux25~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010100011010000111110001101000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LABCELL_X40_Y22_N24
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[39]~input_o\ & (\B[39]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[39]~input_o\ & (!\B[39]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[39]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[39]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X40_Y22_N2
\Add|S[39]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(39) = !\A[39]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[39]~input_o\ $ (!\Add|C[39]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[39]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \Add|ALT_INV_C[39]~38_combout\,
	combout => \Add|S\(39));

-- Location: MLABCELL_X39_Y27_N26
\Mux24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~10_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~86_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~10_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~86_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: MLABCELL_X42_Y24_N26
\Shift|ShiftLeft0~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~83_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[36]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[39]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~83_combout\);

-- Location: LABCELL_X40_Y27_N34
\Shift|ShiftLeft0~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~84_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~75_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~66_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~58_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~75_combout\ & 
-- ( (\B[2]~input_o\) # (\Shift|ShiftLeft0~83_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~75_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~66_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~58_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ShiftLeft0~75_combout\ & ( (\Shift|ShiftLeft0~83_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~58_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~83_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~66_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~75_combout\,
	combout => \Shift|ShiftLeft0~84_combout\);

-- Location: MLABCELL_X39_Y27_N28
\Mux24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ShiftLeft0~51_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~17_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( 
-- \Shift|ShiftLeft0~51_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~84_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~51_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~84_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X39_Y27_N14
\Mux24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \Mux24~2_combout\ & ( \Mux24~1_combout\ & ( ((!\ShiftFN[1]~input_o\ & (\Add|S\(39))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~85_combout\)))) # (\Mux18~2_combout\) ) ) ) # ( !\Mux24~2_combout\ & ( \Mux24~1_combout\ & ( 
-- (!\Mux18~2_combout\ & ((!\ShiftFN[1]~input_o\ & (\Add|S\(39))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~85_combout\))))) # (\Mux18~2_combout\ & (((!\ShiftFN[1]~input_o\)))) ) ) ) # ( \Mux24~2_combout\ & ( !\Mux24~1_combout\ & ( (!\Mux18~2_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (\Add|S\(39))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~85_combout\))))) # (\Mux18~2_combout\ & (((\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Mux24~2_combout\ & ( !\Mux24~1_combout\ & ( (!\Mux18~2_combout\ & 
-- ((!\ShiftFN[1]~input_o\ & (\Add|S\(39))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~85_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~2_combout\,
	datab => \Add|ALT_INV_S\(39),
	datac => \Shift|ALT_INV_ShiftRight1~85_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Mux24~2_combout\,
	dataf => \ALT_INV_Mux24~1_combout\,
	combout => \Mux24~3_combout\);

-- Location: MLABCELL_X39_Y22_N4
\Mux24~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( \Mux18~0_combout\ & ( (!\Mux18~1_combout\ & ((\Mux24~3_combout\))) # (\Mux18~1_combout\ & (\Mux24~0_combout\)) ) ) # ( !\Mux18~0_combout\ & ( (\Mux18~1_combout\ & \Y_ShiftOrArith[31]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux24~3_combout\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux24~4_combout\);

-- Location: LABCELL_X40_Y26_N4
\Add|S[40]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(40) = ( \Add|C[40]~39_combout\ & ( !\A[40]~input_o\ $ (!\B[40]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[40]~39_combout\ & ( !\A[40]~input_o\ $ (!\B[40]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[40]~39_combout\,
	combout => \Add|S\(40));

-- Location: LABCELL_X40_Y26_N10
\Mux23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \A[63]~input_o\ & ( (!\B[5]~input_o\ & (((\B[3]~input_o\ & \ShiftFN[0]~input_o\)) # (\Shift|ShiftRight0~11_combout\))) # (\B[5]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) # ( !\A[63]~input_o\ & ( (\Shift|ShiftRight0~11_combout\ & 
-- !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000011111110011000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight0~11_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: MLABCELL_X42_Y24_N10
\Shift|ShiftLeft0~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~85_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[37]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[40]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~85_combout\);

-- Location: MLABCELL_X44_Y28_N32
\Shift|ShiftLeft0~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~86_combout\ = ( \Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftLeft0~69_combout\))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~77_combout\) # (\B[3]~input_o\)))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~69_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~77_combout\) # (\B[3]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ShiftLeft0~69_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~77_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~60_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~69_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~77_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~69_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~77_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~85_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~60_combout\,
	combout => \Shift|ShiftLeft0~86_combout\);

-- Location: LABCELL_X40_Y26_N28
\Mux23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & \Shift|ShiftLeft0~53_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[4]~input_o\ & ( \Shift|ShiftLeft0~53_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[4]~input_o\ & ( 
-- (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~86_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~19_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~86_combout\))) # (\B[5]~input_o\ & 
-- (\Shift|ShiftLeft0~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001111000011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~53_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~86_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X40_Y26_N12
\Mux23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux23~1_combout\ & ( (!\Mux18~2_combout\ & (\Shift|ShiftRight1~88_combout\)) # (\Mux18~2_combout\ & ((\Mux23~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux23~1_combout\ & ( (\Mux18~2_combout\) # 
-- (\Add|S\(40)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux23~1_combout\ & ( (!\Mux18~2_combout\ & (\Shift|ShiftRight1~88_combout\)) # (\Mux18~2_combout\ & ((\Mux23~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux23~1_combout\ & ( (\Add|S\(40) & 
-- !\Mux18~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(40),
	datab => \ALT_INV_Mux18~2_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~88_combout\,
	datad => \ALT_INV_Mux23~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux23~1_combout\,
	combout => \Mux23~3_combout\);

-- Location: LABCELL_X40_Y26_N6
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \B[40]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[40]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[40]~input_o\ & ( (\A[40]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X39_Y22_N28
\Mux23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = ( \Mux23~0_combout\ & ( (!\Mux18~1_combout\ & (\Mux18~0_combout\ & (\Mux23~3_combout\))) # (\Mux18~1_combout\ & (((\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\))) ) ) # ( !\Mux23~0_combout\ & ( (!\Mux18~1_combout\ & 
-- (\Mux18~0_combout\ & (\Mux23~3_combout\))) # (\Mux18~1_combout\ & (!\Mux18~0_combout\ & ((\Y_ShiftOrArith[31]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux23~3_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~4_combout\);

-- Location: LABCELL_X40_Y22_N32
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[41]~input_o\ & (!\LogicFN[1]~input_o\ & \B[41]~input_o\)) # (\A[41]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[41]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[41]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[41]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100110000110000110011000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X42_Y24_N12
\Shift|ShiftLeft0~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~87_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[38]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[40]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[41]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~87_combout\);

-- Location: LABCELL_X35_Y29_N38
\Shift|ShiftLeft0~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~88_combout\ = ( \Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~62_combout\)) ) ) ) # ( !\Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & 
-- ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~62_combout\)) ) ) ) # ( \Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~71_combout\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~71_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~62_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~71_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~79_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~87_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~88_combout\);

-- Location: MLABCELL_X34_Y29_N4
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \Shift|ShiftLeft0~21_combout\ & ( \Shift|ShiftLeft0~88_combout\ & ( (!\B[4]~input_o\) # ((\Shift|ShiftLeft0~55_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~21_combout\ & ( 
-- \Shift|ShiftLeft0~88_combout\ & ( (!\B[4]~input_o\ & (((!\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~55_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~21_combout\ & ( !\Shift|ShiftLeft0~88_combout\ & ( 
-- (!\B[4]~input_o\ & (((\B[5]~input_o\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~55_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~21_combout\ & ( !\Shift|ShiftLeft0~88_combout\ & ( (\B[4]~input_o\ & 
-- (\Shift|ShiftLeft0~55_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000011000011111011000000111100101100110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~55_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~21_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~88_combout\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X40_Y22_N12
\Add|S[41]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(41) = ( \AddnSub~input_o\ & ( !\Add|C[41]~40_combout\ $ (!\B[41]~input_o\ $ (!\A[41]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[41]~40_combout\ $ (!\B[41]~input_o\ $ (\A[41]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[41]~40_combout\,
	datab => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(41));

-- Location: MLABCELL_X34_Y26_N18
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~92_combout\)) # (\B[5]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~12_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~92_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~12_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: MLABCELL_X39_Y22_N32
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux22~2_combout\ & ( (\Shift|ShiftRight1~91_combout\) # (\Mux18~2_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux22~2_combout\ & ( (!\Mux18~2_combout\ & ((\Add|S\(41)))) # (\Mux18~2_combout\ & 
-- (\Mux22~1_combout\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux22~2_combout\ & ( (!\Mux18~2_combout\ & \Shift|ShiftRight1~91_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux22~2_combout\ & ( (!\Mux18~2_combout\ & ((\Add|S\(41)))) # (\Mux18~2_combout\ & 
-- (\Mux22~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~2_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~91_combout\,
	datac => \ALT_INV_Mux22~1_combout\,
	datad => \Add|ALT_INV_S\(41),
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: MLABCELL_X39_Y22_N36
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = ( \Mux22~3_combout\ & ( (!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\ & ((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & (((!\Mux18~1_combout\) # (\Mux22~0_combout\)))) ) ) # ( !\Mux22~3_combout\ & ( (\Mux18~1_combout\ & 
-- ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux22~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011101010101001001110101010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datac => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LABCELL_X40_Y22_N6
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[42]~input_o\ & (!\LogicFN[1]~input_o\ & \A[42]~input_o\)) # (\B[42]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[42]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[42]~input_o\)) # 
-- (\B[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X37_Y27_N0
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~95_combout\)) # (\B[5]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~13_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~95_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~13_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X40_Y22_N34
\Add|S[42]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(42) = ( \AddnSub~input_o\ & ( !\B[42]~input_o\ $ (!\Add|C[42]~41_combout\ $ (!\A[42]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[42]~input_o\ $ (!\Add|C[42]~41_combout\ $ (\A[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datac => \Add|ALT_INV_C[42]~41_combout\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(42));

-- Location: MLABCELL_X42_Y24_N36
\Shift|ShiftLeft0~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~89_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[39]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[41]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[40]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[42]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~89_combout\);

-- Location: MLABCELL_X39_Y28_N36
\Shift|ShiftLeft0~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~90_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~81_combout\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~64_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~81_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~89_combout\)) 
-- # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~81_combout\ & ( (\Shift|ShiftLeft0~64_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ShiftLeft0~81_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~89_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~89_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~64_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~73_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~81_combout\,
	combout => \Shift|ShiftLeft0~90_combout\);

-- Location: MLABCELL_X37_Y27_N36
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Shift|ShiftLeft0~90_combout\ & ( \Shift|ShiftLeft0~57_combout\ & ( (!\B[5]~input_o\) # ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~23_combout\))) # (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\Shift|ShiftLeft0~90_combout\ & ( 
-- \Shift|ShiftLeft0~57_combout\ & ( (!\B[5]~input_o\ & (((\B[4]~input_o\)))) # (\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~23_combout\))) # (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~90_combout\ & ( 
-- !\Shift|ShiftLeft0~57_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\) # (\Shift|ShiftLeft0~23_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~90_combout\ & ( !\Shift|ShiftLeft0~57_combout\ & ( (\B[5]~input_o\ & (\Shift|ShiftLeft0~23_combout\ & 
-- !\B[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000101011110000000000000101111011101010111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~23_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~90_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~57_combout\,
	combout => \Mux21~1_combout\);

-- Location: MLABCELL_X39_Y22_N20
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux18~2_combout\ & ( \Mux21~2_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux18~2_combout\ & ( \Mux21~1_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux18~2_combout\ & ( \Shift|ShiftRight1~94_combout\ ) ) 
-- ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux18~2_combout\ & ( \Add|S\(42) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~2_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~94_combout\,
	datac => \Add|ALT_INV_S\(42),
	datad => \ALT_INV_Mux21~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: MLABCELL_X39_Y22_N38
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \Mux21~3_combout\ & ( (!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\ & ((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & (((!\Mux18~1_combout\) # (\Mux21~0_combout\)))) ) ) # ( !\Mux21~3_combout\ & ( (\Mux18~1_combout\ & 
-- ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux21~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011101010101001001110101010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: MLABCELL_X39_Y25_N24
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \B[5]~input_o\ & ( (\A[63]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~14_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~98_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~14_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~98_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X40_Y24_N0
\Shift|ShiftLeft0~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~91_combout\ = ( \A[40]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[42]~input_o\) ) ) ) # ( !\A[40]~input_o\ & ( \B[0]~input_o\ & ( (\A[42]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[40]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[43]~input_o\)) # (\B[1]~input_o\ & ((\A[41]~input_o\))) ) ) ) # ( !\A[40]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[43]~input_o\)) # (\B[1]~input_o\ & ((\A[41]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~91_combout\);

-- Location: LABCELL_X40_Y27_N16
\Shift|ShiftLeft0~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~92_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~66_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~83_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftLeft0~75_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~91_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~66_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~91_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~75_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~83_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~92_combout\);

-- Location: MLABCELL_X39_Y25_N30
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( (\Shift|ShiftLeft0~25_combout\ & !\B[4]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~25_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ShiftLeft0~59_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~92_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~59_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[5]~input_o\ & ( 
-- (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~92_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~59_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110101001101010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~59_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~25_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~92_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X40_Y22_N18
\Add|S[43]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(43) = ( \AddnSub~input_o\ & ( !\B[43]~input_o\ $ (!\A[43]~input_o\ $ (!\Add|C[43]~42_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[43]~input_o\ $ (!\A[43]~input_o\ $ (\Add|C[43]~42_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \Add|ALT_INV_C[43]~42_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(43));

-- Location: MLABCELL_X39_Y25_N32
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Add|S\(43) & ( (!\Mux18~2_combout\ & (\Shift|ShiftRight1~97_combout\)) # (\Mux18~2_combout\ & ((\Mux20~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Add|S\(43) & ( (!\Mux18~2_combout\) # 
-- (\Mux20~1_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Add|S\(43) & ( (!\Mux18~2_combout\ & (\Shift|ShiftRight1~97_combout\)) # (\Mux18~2_combout\ & ((\Mux20~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Add|S\(43) & ( (\Mux18~2_combout\ & 
-- \Mux20~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~97_combout\,
	datab => \ALT_INV_Mux18~2_combout\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_Mux20~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Add|ALT_INV_S\(43),
	combout => \Mux20~3_combout\);

-- Location: MLABCELL_X39_Y22_N24
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \B[43]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[43]~input_o\)) ) ) # ( !\B[43]~input_o\ & ( (\A[43]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101101111011011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X39_Y22_N30
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \Mux20~0_combout\ & ( (!\Mux18~1_combout\ & (\Mux18~0_combout\ & (\Mux20~3_combout\))) # (\Mux18~1_combout\ & (((\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\))) ) ) # ( !\Mux20~0_combout\ & ( (!\Mux18~1_combout\ & 
-- (\Mux18~0_combout\ & (\Mux20~3_combout\))) # (\Mux18~1_combout\ & (!\Mux18~0_combout\ & ((\Y_ShiftOrArith[31]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux20~3_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~4_combout\);

-- Location: MLABCELL_X39_Y22_N26
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \B[44]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[44]~input_o\)) ) ) # ( !\B[44]~input_o\ & ( (\A[44]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011011101110110111011110111011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X39_Y22_N10
\Add|S[44]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[44]~0_combout\ = ( \AddnSub~input_o\ & ( \B[44]~input_o\ & ( \A[44]~input_o\ ) ) ) # ( !\AddnSub~input_o\ & ( \B[44]~input_o\ & ( !\A[44]~input_o\ ) ) ) # ( \AddnSub~input_o\ & ( !\B[44]~input_o\ & ( !\A[44]~input_o\ ) ) ) # ( !\AddnSub~input_o\ & 
-- ( !\B[44]~input_o\ & ( \A[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[44]~input_o\,
	combout => \Add|S[44]~0_combout\);

-- Location: LABCELL_X40_Y22_N22
\Add|S[44]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(44) = !\Add|S[44]~0_combout\ $ (!\Add|C[44]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[44]~0_combout\,
	datad => \Add|ALT_INV_C[44]~43_combout\,
	combout => \Add|S\(44));

-- Location: LABCELL_X40_Y24_N26
\Shift|ShiftLeft0~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~93_combout\ = ( \A[41]~input_o\ & ( \B[0]~input_o\ & ( (\A[43]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[41]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[43]~input_o\) ) ) ) # ( \A[41]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & (\A[42]~input_o\)) ) ) ) # ( !\A[41]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[44]~input_o\))) # (\B[1]~input_o\ & (\A[42]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[42]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	datae => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~93_combout\);

-- Location: MLABCELL_X44_Y28_N36
\Shift|ShiftLeft0~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~94_combout\ = ( \Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~93_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftLeft0~85_combout\)))) # (\B[3]~input_o\ & (((\Shift|ShiftLeft0~77_combout\)) # (\B[2]~input_o\))) ) 
-- ) ) # ( !\Shift|ShiftLeft0~69_combout\ & ( \Shift|ShiftLeft0~93_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftLeft0~85_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~77_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~93_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\Shift|ShiftLeft0~85_combout\))) # (\B[3]~input_o\ & (((\Shift|ShiftLeft0~77_combout\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~69_combout\ & ( !\Shift|ShiftLeft0~93_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\Shift|ShiftLeft0~85_combout\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~77_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~85_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~77_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~69_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~93_combout\,
	combout => \Shift|ShiftLeft0~94_combout\);

-- Location: MLABCELL_X34_Y27_N30
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Shift|ShiftLeft0~61_combout\ & ( \B[4]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\) ) ) ) # ( \Shift|ShiftLeft0~61_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~94_combout\))) # (\B[5]~input_o\ 
-- & (\Shift|ShiftLeft0~27_combout\)) ) ) ) # ( !\Shift|ShiftLeft0~61_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~94_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~27_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~94_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~61_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X34_Y27_N32
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \B[5]~input_o\ & ( \A[63]~input_o\ & ( \ShiftFN[0]~input_o\ ) ) ) # ( !\B[5]~input_o\ & ( \A[63]~input_o\ & ( (!\Shift|ShiftLeft0~0_combout\ & (\Shift|ShiftRight1~18_combout\)) # (\Shift|ShiftLeft0~0_combout\ & 
-- ((\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[63]~input_o\ & ( (\Shift|ShiftRight1~18_combout\ & !\Shift|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000110011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: MLABCELL_X34_Y27_N38
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( \Shift|ShiftRight1~100_combout\ & ( \Mux19~2_combout\ & ( ((!\Mux18~2_combout\ & (\Add|S\(44))) # (\Mux18~2_combout\ & ((\Mux19~1_combout\)))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Shift|ShiftRight1~100_combout\ & ( \Mux19~2_combout\ 
-- & ( (!\ShiftFN[1]~input_o\ & ((!\Mux18~2_combout\ & (\Add|S\(44))) # (\Mux18~2_combout\ & ((\Mux19~1_combout\))))) # (\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\)))) ) ) ) # ( \Shift|ShiftRight1~100_combout\ & ( !\Mux19~2_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\Mux18~2_combout\ & (\Add|S\(44))) # (\Mux18~2_combout\ & ((\Mux19~1_combout\))))) # (\ShiftFN[1]~input_o\ & (((!\Mux18~2_combout\)))) ) ) ) # ( !\Shift|ShiftRight1~100_combout\ & ( !\Mux19~2_combout\ & ( (!\ShiftFN[1]~input_o\ 
-- & ((!\Mux18~2_combout\ & (\Add|S\(44))) # (\Mux18~2_combout\ & ((\Mux19~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(44),
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux19~1_combout\,
	datad => \ALT_INV_Mux18~2_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~100_combout\,
	dataf => \ALT_INV_Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: MLABCELL_X39_Y22_N12
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \Mux19~3_combout\ & ( (!\Mux18~1_combout\ & (\Mux18~0_combout\)) # (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux19~0_combout\))))) ) ) # ( !\Mux19~3_combout\ & ( 
-- (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux18~0_combout\ & ((\Mux19~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: MLABCELL_X39_Y24_N36
\Mux18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[45]~input_o\ & (\B[45]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[45]~input_o\ & (!\B[45]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[45]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[45]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100111100000000110011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LABCELL_X40_Y24_N8
\Shift|ShiftLeft0~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~95_combout\ = ( \A[42]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[44]~input_o\) ) ) ) # ( !\A[42]~input_o\ & ( \B[0]~input_o\ & ( (\A[44]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[42]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[45]~input_o\))) # (\B[1]~input_o\ & (\A[43]~input_o\)) ) ) ) # ( !\A[42]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[45]~input_o\))) # (\B[1]~input_o\ & (\A[43]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~95_combout\);

-- Location: LABCELL_X35_Y29_N2
\Shift|ShiftLeft0~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~96_combout\ = ( \Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~71_combout\) ) ) ) # ( !\Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~71_combout\) ) ) 
-- ) # ( \Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~95_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~95_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~95_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~71_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~79_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~87_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~96_combout\);

-- Location: MLABCELL_X34_Y25_N10
\Mux18~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~63_combout\ & ( (!\B[4]~input_o\ & (\Shift|ShiftLeft0~29_combout\)) # (\B[4]~input_o\ & ((!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~63_combout\ & ( (\B[4]~input_o\) 
-- # (\Shift|ShiftLeft0~96_combout\) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ShiftLeft0~63_combout\ & ( (\Shift|ShiftLeft0~29_combout\ & !\B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ShiftLeft0~63_combout\ & ( (\Shift|ShiftLeft0~96_combout\ & 
-- !\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000001111111111110101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~29_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~96_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~63_combout\,
	combout => \Mux18~4_combout\);

-- Location: MLABCELL_X34_Y25_N26
\Mux18~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[5]~input_o\ & (\Shift|ShiftRight1~104_combout\)) # (\B[5]~input_o\ & ((\A[63]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~16_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~104_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~16_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux18~5_combout\);

-- Location: MLABCELL_X39_Y24_N26
\Add|S[45]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(45) = ( \A[45]~input_o\ & ( !\B[45]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[45]~44_combout\)) ) ) # ( !\A[45]~input_o\ & ( !\B[45]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|C[45]~44_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[45]~44_combout\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Add|S\(45));

-- Location: MLABCELL_X34_Y25_N32
\Mux18~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = ( \Add|S\(45) & ( \Shift|ShiftRight1~103_combout\ & ( (!\Mux18~2_combout\) # ((!\ShiftFN[1]~input_o\ & (\Mux18~4_combout\)) # (\ShiftFN[1]~input_o\ & ((\Mux18~5_combout\)))) ) ) ) # ( !\Add|S\(45) & ( \Shift|ShiftRight1~103_combout\ & 
-- ( (!\ShiftFN[1]~input_o\ & (\Mux18~4_combout\ & (\Mux18~2_combout\))) # (\ShiftFN[1]~input_o\ & (((!\Mux18~2_combout\) # (\Mux18~5_combout\)))) ) ) ) # ( \Add|S\(45) & ( !\Shift|ShiftRight1~103_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\Mux18~2_combout\)) 
-- # (\Mux18~4_combout\))) # (\ShiftFN[1]~input_o\ & (((\Mux18~2_combout\ & \Mux18~5_combout\)))) ) ) ) # ( !\Add|S\(45) & ( !\Shift|ShiftRight1~103_combout\ & ( (\Mux18~2_combout\ & ((!\ShiftFN[1]~input_o\ & (\Mux18~4_combout\)) # (\ShiftFN[1]~input_o\ & 
-- ((\Mux18~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux18~4_combout\,
	datac => \ALT_INV_Mux18~2_combout\,
	datad => \ALT_INV_Mux18~5_combout\,
	datae => \Add|ALT_INV_S\(45),
	dataf => \Shift|ALT_INV_ShiftRight1~103_combout\,
	combout => \Mux18~6_combout\);

-- Location: MLABCELL_X39_Y22_N14
\Mux18~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = ( \Mux18~6_combout\ & ( (!\Mux18~1_combout\ & (\Mux18~0_combout\)) # (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & ((\Y_ShiftOrArith[31]~2_combout\))) # (\Mux18~0_combout\ & (\Mux18~3_combout\)))) ) ) # ( !\Mux18~6_combout\ & ( 
-- (\Mux18~1_combout\ & ((!\Mux18~0_combout\ & ((\Y_ShiftOrArith[31]~2_combout\))) # (\Mux18~0_combout\ & (\Mux18~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux18~3_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	dataf => \ALT_INV_Mux18~6_combout\,
	combout => \Mux18~7_combout\);

-- Location: MLABCELL_X39_Y24_N2
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[46]~input_o\ & \B[46]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[46]~input_o\)) # 
-- (\B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X40_Y24_N32
\Shift|ShiftLeft0~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~97_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[43]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[45]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[44]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[46]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~97_combout\);

-- Location: MLABCELL_X39_Y28_N2
\Shift|ShiftLeft0~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~98_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~97_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~89_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~73_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~97_combout\ & 
-- ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~81_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~97_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~89_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~73_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~97_combout\ & ( (\Shift|ShiftLeft0~81_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~73_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~81_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~89_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~97_combout\,
	combout => \Shift|ShiftLeft0~98_combout\);

-- Location: LABCELL_X38_Y27_N8
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \B[4]~input_o\ & ( \Shift|ShiftLeft0~98_combout\ & ( (\Shift|ShiftLeft0~65_combout\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ShiftLeft0~98_combout\ & ( (!\B[5]~input_o\) # 
-- (\Shift|ShiftLeft0~31_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ShiftLeft0~98_combout\ & ( (\Shift|ShiftLeft0~65_combout\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[4]~input_o\ & ( !\Shift|ShiftLeft0~98_combout\ & ( 
-- (\Shift|ShiftLeft0~31_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100110011000011110101111101010011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~31_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~65_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~98_combout\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X39_Y24_N10
\Add|S[46]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(46) = ( \AddnSub~input_o\ & ( !\B[46]~input_o\ $ (!\A[46]~input_o\ $ (!\Add|C[46]~45_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[46]~input_o\ $ (!\A[46]~input_o\ $ (\Add|C[46]~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \Add|ALT_INV_C[46]~45_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(46));

-- Location: LABCELL_X38_Y27_N22
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[63]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~17_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~107_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~17_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~107_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LABCELL_X38_Y27_N34
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \Mux17~2_combout\ & ( \Mux18~2_combout\ & ( (\ShiftFN[1]~input_o\) # (\Mux17~1_combout\) ) ) ) # ( !\Mux17~2_combout\ & ( \Mux18~2_combout\ & ( (\Mux17~1_combout\ & !\ShiftFN[1]~input_o\) ) ) ) # ( \Mux17~2_combout\ & ( 
-- !\Mux18~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S\(46)))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~106_combout\)) ) ) ) # ( !\Mux17~2_combout\ & ( !\Mux18~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S\(46)))) # (\ShiftFN[1]~input_o\ & 
-- (\Shift|ShiftRight1~106_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~106_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Add|ALT_INV_S\(46),
	datae => \ALT_INV_Mux17~2_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: MLABCELL_X39_Y22_N18
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \Y_ShiftOrArith[31]~2_combout\ & ( (!\Mux18~0_combout\ & (((\Mux18~1_combout\)))) # (\Mux18~0_combout\ & ((!\Mux18~1_combout\ & ((\Mux17~3_combout\))) # (\Mux18~1_combout\ & (\Mux17~0_combout\)))) ) ) # ( 
-- !\Y_ShiftOrArith[31]~2_combout\ & ( (\Mux18~0_combout\ & ((!\Mux18~1_combout\ & ((\Mux17~3_combout\))) # (\Mux18~1_combout\ & (\Mux17~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011111101010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux17~3_combout\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	combout => \Mux17~4_combout\);

-- Location: MLABCELL_X39_Y24_N8
\Logic|Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux16~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[47]~input_o\ & (!\LogicFN[1]~input_o\ & \B[47]~input_o\)) # (\A[47]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[47]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[47]~input_o\ & 
-- \LogicFN[1]~input_o\)) # (\B[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100110000110000110011000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux16~0_combout\);

-- Location: LABCELL_X40_Y24_N38
\Shift|ShiftLeft0~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~99_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[44]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[46]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[45]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[47]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~99_combout\);

-- Location: LABCELL_X40_Y27_N2
\Shift|ShiftLeft0~100\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~100_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~75_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~91_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|ShiftLeft0~83_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~99_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~75_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~91_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~83_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~99_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~100_combout\);

-- Location: MLABCELL_X42_Y25_N18
\Shift|ShiftLeft0~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~101_combout\ = ( \Shift|ShiftLeft0~33_combout\ & ( (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~100_combout\)) # (\B[5]~input_o\))) # (\B[4]~input_o\ & (!\B[5]~input_o\ & (\Shift|ShiftLeft0~67_combout\))) ) ) # ( 
-- !\Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~100_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~67_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~67_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~100_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~101_combout\);

-- Location: MLABCELL_X39_Y24_N28
\Add|S[47]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(47) = ( \B[47]~input_o\ & ( !\Add|C[47]~46_combout\ $ (!\AddnSub~input_o\ $ (!\A[47]~input_o\)) ) ) # ( !\B[47]~input_o\ & ( !\Add|C[47]~46_combout\ $ (!\AddnSub~input_o\ $ (\A[47]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[47]~46_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \Add|S\(47));

-- Location: MLABCELL_X42_Y25_N30
\Shift|ShiftRight1~112\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~112_combout\ = (!\Mux30~0_combout\ & (\A[63]~input_o\)) # (\Mux30~0_combout\ & ((\Shift|ShiftRight1~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~108_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	combout => \Shift|ShiftRight1~112_combout\);

-- Location: MLABCELL_X42_Y25_N28
\Shift|ShiftRight0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = ( \Shift|ShiftLeft0~1_combout\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\Shift|ShiftRight1~108_combout\))) # (\B[4]~input_o\ & (\A[63]~input_o\)))) ) ) # ( !\Shift|ShiftLeft0~1_combout\ & ( 
-- (\Shift|ShiftRight1~108_combout\ & (!\B[4]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~108_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: MLABCELL_X42_Y25_N32
\Y_ShiftOrArith[31]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~6_combout\ = ( \Shift|ShiftRight1~112_combout\ & ( \Shift|ShiftRight0~20_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Add|S\(47)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~101_combout\))) # (\ShiftFN[1]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~112_combout\ & ( \Shift|ShiftRight0~20_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Add|S\(47)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~101_combout\)))) # (\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) ) 
-- ) ) # ( \Shift|ShiftRight1~112_combout\ & ( !\Shift|ShiftRight0~20_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Add|S\(47)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~101_combout\)))) # (\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\)) ) ) ) # ( !\Shift|ShiftRight1~112_combout\ & ( !\Shift|ShiftRight0~20_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Add|S\(47)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~101_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~101_combout\,
	datad => \Add|ALT_INV_S\(47),
	datae => \Shift|ALT_INV_ShiftRight1~112_combout\,
	dataf => \Shift|ALT_INV_ShiftRight0~20_combout\,
	combout => \Y_ShiftOrArith[31]~6_combout\);

-- Location: MLABCELL_X44_Y25_N24
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \Logic|Mux16~0_combout\ & ( \Y_ShiftOrArith[31]~6_combout\ & ( (!\FuncClass[1]~input_o\ & (((!\ExtWord~input_o\) # (\FuncClass[0]~input_o\)) # (\Y_ShiftOrArith[31]~2_combout\))) ) ) ) # ( !\Logic|Mux16~0_combout\ & ( 
-- \Y_ShiftOrArith[31]~6_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # (\Y_ShiftOrArith[31]~2_combout\)))) ) ) ) # ( \Logic|Mux16~0_combout\ & ( !\Y_ShiftOrArith[31]~6_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- (((\Y_ShiftOrArith[31]~2_combout\ & \ExtWord~input_o\)) # (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux16~0_combout\ & ( !\Y_ShiftOrArith[31]~6_combout\ & ( (\Y_ShiftOrArith[31]~2_combout\ & (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & 
-- !\FuncClass[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000001101110000000011000100000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \Logic|ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[31]~6_combout\,
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X39_Y24_N14
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[48]~input_o\ & (\A[48]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[48]~input_o\ & (!\A[48]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[48]~input_o\ & 
-- \LogicFN[1]~input_o\)) # (\B[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: MLABCELL_X39_Y24_N32
\Shift|ShiftLeft0~102\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~102_combout\ = ( \A[47]~input_o\ & ( \A[45]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[48]~input_o\))) # (\B[1]~input_o\ & (\A[46]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[47]~input_o\ & ( \A[45]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\ & \A[48]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[46]~input_o\))) ) ) ) # ( \A[47]~input_o\ & ( !\A[45]~input_o\ & ( (!\B[1]~input_o\ & (((\A[48]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[46]~input_o\ & 
-- (!\B[0]~input_o\))) ) ) ) # ( !\A[47]~input_o\ & ( !\A[45]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[48]~input_o\))) # (\B[1]~input_o\ & (\A[46]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Shift|ShiftLeft0~102_combout\);

-- Location: MLABCELL_X42_Y27_N2
\Shift|ShiftLeft0~103\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~103_combout\ = ( \Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~102_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~93_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~77_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~102_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftLeft0~93_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~77_combout\ & (\B[2]~input_o\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~102_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \Shift|ShiftLeft0~93_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ShiftLeft0~77_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~102_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~93_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~77_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~77_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~93_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~85_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~102_combout\,
	combout => \Shift|ShiftLeft0~103_combout\);

-- Location: LABCELL_X45_Y25_N32
\Shift|ShiftLeft0~104\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~104_combout\ = ( \Shift|ShiftLeft0~36_combout\ & ( \Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((\Shift|ShiftLeft0~103_combout\) # (\B[4]~input_o\)))) # (\B[5]~input_o\ & (((!\B[4]~input_o\)) # (\Shift|ShiftLeft0~34_combout\))) 
-- ) ) ) # ( !\Shift|ShiftLeft0~36_combout\ & ( \Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((\Shift|ShiftLeft0~103_combout\) # (\B[4]~input_o\)))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~34_combout\ & (\B[4]~input_o\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~36_combout\ & ( !\Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((!\B[4]~input_o\ & \Shift|ShiftLeft0~103_combout\)))) # (\B[5]~input_o\ & (((!\B[4]~input_o\)) # (\Shift|ShiftLeft0~34_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~36_combout\ & ( !\Shift|ShiftLeft0~70_combout\ & ( (!\B[5]~input_o\ & (((!\B[4]~input_o\ & \Shift|ShiftLeft0~103_combout\)))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~34_combout\ & (\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~34_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~103_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~36_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~70_combout\,
	combout => \Shift|ShiftLeft0~104_combout\);

-- Location: LABCELL_X45_Y29_N38
\Add|S[48]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[48]~1_combout\ = ( \B[48]~input_o\ & ( !\AddnSub~input_o\ $ (\A[48]~input_o\) ) ) # ( !\B[48]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Add|S[48]~1_combout\);

-- Location: LABCELL_X45_Y25_N10
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \Shift|ShiftRight1~19_combout\ & ( ((\ShiftFN[0]~input_o\ & \A[63]~input_o\)) # (\Mux30~0_combout\) ) ) # ( !\Shift|ShiftRight1~19_combout\ & ( (\ShiftFN[0]~input_o\ & (!\Mux30~0_combout\ & \A[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~19_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X45_Y25_N38
\Mux15~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \Mux15~0_combout\ & ( (\ShiftFN[1]~input_o\) # (\Shift|ShiftLeft0~104_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Mux15~0_combout\ & ( (!\Add|C[48]~47_combout\ $ (!\Add|S[48]~1_combout\)) # 
-- (\ShiftFN[1]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Mux15~0_combout\ & ( (\Shift|ShiftLeft0~104_combout\ & !\ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Mux15~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\Add|C[48]~47_combout\ $ 
-- (!\Add|S[48]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000010101010000000000111100111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~104_combout\,
	datab => \Add|ALT_INV_C[48]~47_combout\,
	datac => \Add|ALT_INV_S[48]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: MLABCELL_X44_Y25_N26
\Mux15~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Logic|Mux15~0_combout\ & ( \Mux15~1_combout\ & ( (!\FuncClass[1]~input_o\ & (((!\ExtWord~input_o\) # (\FuncClass[0]~input_o\)) # (\Y_ShiftOrArith[31]~2_combout\))) ) ) ) # ( !\Logic|Mux15~0_combout\ & ( \Mux15~1_combout\ & ( 
-- (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # (\Y_ShiftOrArith[31]~2_combout\)))) ) ) ) # ( \Logic|Mux15~0_combout\ & ( !\Mux15~1_combout\ & ( (!\FuncClass[1]~input_o\ & (((\Y_ShiftOrArith[31]~2_combout\ & 
-- \ExtWord~input_o\)) # (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux15~0_combout\ & ( !\Mux15~1_combout\ & ( (\Y_ShiftOrArith[31]~2_combout\ & (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & \ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001100000111000011000000010000001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Logic|ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: MLABCELL_X44_Y25_N28
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( ((!\ExtWord~input_o\ & (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))) # (\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111001000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X44_Y25_N30
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # (\FuncClass[1]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( ((!\FuncClass[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\ExtWord~input_o\)))) # (\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111111110100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X37_Y29_N6
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \ExtWord~input_o\ ) # ( !\ExtWord~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux11~2_combout\);

-- Location: MLABCELL_X37_Y25_N22
\Add|S[49]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(49) = ( \Add|C[49]~48_combout\ & ( !\A[49]~input_o\ $ (!\B[49]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[49]~48_combout\ & ( !\A[49]~input_o\ $ (!\B[49]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[49]~48_combout\,
	combout => \Add|S\(49));

-- Location: LABCELL_X35_Y26_N36
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \ShiftFN[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X37_Y25_N4
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Mux30~0_combout\ & ((\A[63]~input_o\))) # (\Mux30~0_combout\ & (!\Shift|ShiftRight1~35_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Mux30~0_combout\ & !\Shift|ShiftRight0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~35_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~2_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X38_Y27_N12
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( !\Mux11~0_combout\ & ( \Mux11~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X37_Y25_N30
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux14~1_combout\ & ( \Y_ShiftOrArith[31]~2_combout\ & ( (!\Mux11~2_combout\ & (\Add|S\(49))) # (\Mux11~2_combout\ & (((!\Mux11~3_combout\) # (\Mux14~0_combout\)))) ) ) ) # ( \Mux14~1_combout\ & ( !\Y_ShiftOrArith[31]~2_combout\ & ( 
-- (!\Mux11~2_combout\ & (\Add|S\(49))) # (\Mux11~2_combout\ & (((\Mux11~3_combout\ & \Mux14~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010011100000000000000000111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~2_combout\,
	datab => \Add|ALT_INV_S\(49),
	datac => \ALT_INV_Mux11~3_combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_Mux14~1_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X37_Y24_N38
\Shift|ShiftLeft0~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~105_combout\ = ( \A[49]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[48]~input_o\))) # (\B[1]~input_o\ & (\A[46]~input_o\)) ) ) ) # ( !\A[49]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[48]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[46]~input_o\)) ) ) ) # ( \A[49]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[47]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[47]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~105_combout\);

-- Location: LABCELL_X35_Y29_N26
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \Shift|ShiftLeft0~87_combout\ & ( \Shift|ShiftLeft0~105_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & (\Shift|ShiftLeft0~95_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~87_combout\ & ( \Shift|ShiftLeft0~105_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ShiftLeft0~95_combout\))) # (\B[3]~input_o\ & (((\B[2]~input_o\ & \Shift|ShiftLeft0~79_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~87_combout\ & ( !\Shift|ShiftLeft0~105_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~95_combout\ & (\B[2]~input_o\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftLeft0~79_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~87_combout\ & ( !\Shift|ShiftLeft0~105_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftLeft0~95_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~79_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~95_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~79_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~87_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~105_combout\,
	combout => \Mux14~4_combout\);

-- Location: MLABCELL_X37_Y29_N14
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( \Shift|ShiftLeft0~3_combout\ & ( \Shift|ShiftLeft0~72_combout\ & ( ((!\B[5]~input_o\ & (\Mux14~4_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~39_combout\)))) # (\B[4]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( 
-- \Shift|ShiftLeft0~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux14~4_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~39_combout\))))) # (\B[4]~input_o\ & (((!\B[5]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~3_combout\ & ( 
-- !\Shift|ShiftLeft0~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux14~4_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~39_combout\))))) # (\B[4]~input_o\ & (((\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( 
-- !\Shift|ShiftLeft0~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux14~4_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~39_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~4_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~39_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~72_combout\,
	combout => \Mux14~5_combout\);

-- Location: MLABCELL_X37_Y25_N20
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[49]~input_o\ & (\B[49]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[49]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[49]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[49]~input_o\ $ (((!\A[49]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001100110110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: MLABCELL_X37_Y25_N14
\Mux14~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ( \Mux14~3_combout\ & ( ((!\Mux11~1_combout\ & ((!\Mux11~0_combout\) # (\Mux14~5_combout\)))) # (\Mux14~2_combout\) ) ) # ( !\Mux14~3_combout\ & ( ((\Mux11~0_combout\ & (!\Mux11~1_combout\ & \Mux14~5_combout\))) # (\Mux14~2_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111110001111110011111000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux14~2_combout\,
	datad => \ALT_INV_Mux14~5_combout\,
	dataf => \ALT_INV_Mux14~3_combout\,
	combout => \Mux14~6_combout\);

-- Location: MLABCELL_X37_Y24_N22
\Shift|ShiftLeft0~106\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~106_combout\ = ( \A[49]~input_o\ & ( \A[47]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[50]~input_o\))) # (\B[1]~input_o\ & (\A[48]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \A[47]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[50]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[48]~input_o\))) ) ) ) # ( \A[49]~input_o\ & ( !\A[47]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[50]~input_o\)))) # (\B[1]~input_o\ & (\A[48]~input_o\ & 
-- ((!\B[0]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[47]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[50]~input_o\))) # (\B[1]~input_o\ & (\A[48]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \Shift|ShiftLeft0~106_combout\);

-- Location: MLABCELL_X39_Y28_N26
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~97_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~81_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~106_combout\ & ( 
-- (!\B[3]~input_o\) # (\Shift|ShiftLeft0~89_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~97_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~81_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( 
-- !\Shift|ShiftLeft0~106_combout\ & ( (\Shift|ShiftLeft0~89_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~89_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~81_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~97_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~106_combout\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X35_Y25_N20
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Shift|ShiftLeft0~41_combout\ & ( \Mux13~1_combout\ & ( (!\B[4]~input_o\) # ((!\B[5]~input_o\ & ((\Shift|ShiftLeft0~74_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~5_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~41_combout\ & ( 
-- \Mux13~1_combout\ & ( (!\B[4]~input_o\ & (((!\B[5]~input_o\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & ((\Shift|ShiftLeft0~74_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~5_combout\)))) ) ) ) # ( \Shift|ShiftLeft0~41_combout\ & ( !\Mux13~1_combout\ 
-- & ( (!\B[4]~input_o\ & (((\B[5]~input_o\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & ((\Shift|ShiftLeft0~74_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~5_combout\)))) ) ) ) # ( !\Shift|ShiftLeft0~41_combout\ & ( !\Mux13~1_combout\ & ( 
-- (\B[4]~input_o\ & ((!\B[5]~input_o\ & ((\Shift|ShiftLeft0~74_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~74_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~41_combout\,
	dataf => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X35_Y25_N16
\Add|S[50]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(50) = ( \AddnSub~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\ $ (!\Add|C[50]~49_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\ $ (\Add|C[50]~49_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \Add|ALT_INV_C[50]~49_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(50));

-- Location: LABCELL_X35_Y26_N4
\Mux13~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & (\ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~4_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~54_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000111010001110100010001000100010001110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~4_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~54_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux13~7_combout\);

-- Location: LABCELL_X35_Y25_N18
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[50]~input_o\ & (\A[50]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[50]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[50]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[50]~input_o\ $ (((!\A[50]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X35_Y25_N0
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( !\Mux11~1_combout\ & ( (((!\Mux11~0_combout\ & ((\Mux13~0_combout\))) # (\Mux11~0_combout\ & (\Mux13~2_combout\)))) ) ) # ( \Mux11~1_combout\ & ( ((!\Mux11~0_combout\ & ((!\Mux11~2_combout\ & (\Add|S\(50))) # (\Mux11~2_combout\ & 
-- ((\Mux13~7_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100000011111101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~2_combout\,
	datab => \Add|ALT_INV_S\(50),
	datac => \ALT_INV_Mux11~2_combout\,
	datad => \ALT_INV_Mux13~7_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	datag => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: MLABCELL_X37_Y24_N6
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \B[51]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[51]~input_o\)) ) ) # ( !\B[51]~input_o\ & ( (\A[51]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X37_Y24_N30
\Shift|ShiftLeft0~107\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~107_combout\ = ( \A[49]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[51]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[48]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( \A[50]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[51]~input_o\)))) # (\B[1]~input_o\ & (\A[48]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & (((\A[51]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[48]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & (((\A[51]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[48]~input_o\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftLeft0~107_combout\);

-- Location: LABCELL_X40_Y27_N6
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Shift|ShiftLeft0~83_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~99_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~83_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftLeft0~99_combout\) ) ) ) # ( 
-- \Shift|ShiftLeft0~83_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~107_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~91_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~83_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~107_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~91_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~107_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~91_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~99_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~83_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X37_Y26_N34
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux12~1_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~76_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~7_combout\)) ) ) ) # ( !\Mux12~1_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & 
-- ((\Shift|ShiftLeft0~76_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~7_combout\)) ) ) ) # ( \Mux12~1_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\) # (\Shift|ShiftLeft0~43_combout\) ) ) ) # ( !\Mux12~1_combout\ & ( !\B[4]~input_o\ & ( 
-- (\Shift|ShiftLeft0~43_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~76_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~43_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_Mux12~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X37_Y25_N12
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux12~2_combout\ & ( (!\Mux11~1_combout\ & ((\Mux12~0_combout\) # (\Mux11~0_combout\))) ) ) # ( !\Mux12~2_combout\ & ( (!\Mux11~0_combout\ & (!\Mux11~1_combout\ & \Mux12~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datad => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: MLABCELL_X37_Y25_N0
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( !\Mux30~0_combout\ & ( ((!\Mux11~3_combout\ & (((\Y_ShiftOrArith[31]~2_combout\)))) # (\Mux11~3_combout\ & (\ShiftFN[0]~input_o\ & (\A[63]~input_o\)))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- ((((\Y_ShiftOrArith[31]~2_combout\))))) # (\Mux11~3_combout\ & ((!\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight0~6_combout\)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~71_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100000011000000110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~71_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~6_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_Mux11~3_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: MLABCELL_X37_Y25_N6
\Add|S[51]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[51]~2_combout\ = ( \AddnSub~input_o\ & ( !\A[51]~input_o\ $ (\B[51]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\A[51]~input_o\ $ (!\B[51]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[51]~2_combout\);

-- Location: MLABCELL_X37_Y25_N16
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Mux11~2_combout\ & ( \Add|S[51]~2_combout\ & ( ((\Mux14~1_combout\ & \Mux12~5_combout\)) # (\Mux12~3_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( \Add|S[51]~2_combout\ & ( ((\Mux14~1_combout\ & !\Add|C[51]~50_combout\)) # 
-- (\Mux12~3_combout\) ) ) ) # ( \Mux11~2_combout\ & ( !\Add|S[51]~2_combout\ & ( ((\Mux14~1_combout\ & \Mux12~5_combout\)) # (\Mux12~3_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( !\Add|S[51]~2_combout\ & ( ((\Mux14~1_combout\ & \Add|C[51]~50_combout\)) # 
-- (\Mux12~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101110101011101110111010101010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~3_combout\,
	datab => \ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_Mux12~5_combout\,
	datad => \Add|ALT_INV_C[51]~50_combout\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \Add|ALT_INV_S[51]~2_combout\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X37_Y24_N12
\Shift|ShiftLeft0~108\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~108_combout\ = ( \A[49]~input_o\ & ( \A[50]~input_o\ & ( ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[51]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \A[50]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[51]~input_o\))))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[51]~input_o\))))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[49]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[52]~input_o\)) # (\B[0]~input_o\ & ((\A[51]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftLeft0~108_combout\);

-- Location: MLABCELL_X42_Y27_N24
\Mux11~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = ( \Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~102_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~108_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~93_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~85_combout\ & ( \Shift|ShiftLeft0~102_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ShiftLeft0~108_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~93_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~102_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~108_combout\ & !\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftLeft0~93_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~85_combout\ & ( !\Shift|ShiftLeft0~102_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~108_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~93_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~93_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~108_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~85_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~102_combout\,
	combout => \Mux11~5_combout\);

-- Location: MLABCELL_X37_Y26_N38
\Mux11~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = ( \Shift|ShiftLeft0~45_combout\ & ( \Shift|ShiftLeft0~78_combout\ & ( (!\B[4]~input_o\ & (((\B[5]~input_o\)) # (\Mux11~5_combout\))) # (\B[4]~input_o\ & (((!\B[5]~input_o\) # (\Shift|ShiftLeft0~10_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~45_combout\ & ( \Shift|ShiftLeft0~78_combout\ & ( (!\B[4]~input_o\ & (\Mux11~5_combout\ & ((!\B[5]~input_o\)))) # (\B[4]~input_o\ & (((!\B[5]~input_o\) # (\Shift|ShiftLeft0~10_combout\)))) ) ) ) # ( \Shift|ShiftLeft0~45_combout\ & ( 
-- !\Shift|ShiftLeft0~78_combout\ & ( (!\B[4]~input_o\ & (((\B[5]~input_o\)) # (\Mux11~5_combout\))) # (\B[4]~input_o\ & (((\Shift|ShiftLeft0~10_combout\ & \B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~45_combout\ & ( !\Shift|ShiftLeft0~78_combout\ & ( 
-- (!\B[4]~input_o\ & (\Mux11~5_combout\ & ((!\B[5]~input_o\)))) # (\B[4]~input_o\ & (((\Shift|ShiftLeft0~10_combout\ & \B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~5_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~45_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~78_combout\,
	combout => \Mux11~6_combout\);

-- Location: LABCELL_X43_Y26_N28
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[52]~input_o\ & (\A[52]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[52]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[52]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[52]~input_o\ $ (((!\A[52]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[52]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LABCELL_X35_Y25_N26
\Mux11~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = ( \Mux11~0_combout\ & ( (\Mux11~6_combout\ & !\Mux11~1_combout\) ) ) # ( !\Mux11~0_combout\ & ( (\Mux11~4_combout\ & !\Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~6_combout\,
	datac => \ALT_INV_Mux11~4_combout\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~7_combout\);

-- Location: MLABCELL_X42_Y25_N0
\Mux11~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = ( !\Mux30~0_combout\ & ( ((!\Mux11~3_combout\ & (((\Y_ShiftOrArith[31]~2_combout\)))) # (\Mux11~3_combout\ & (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- ((((\Y_ShiftOrArith[31]~2_combout\))))) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~7_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~77_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011001100000000111100111100000011110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~77_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~7_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux11~9_combout\);

-- Location: LABCELL_X43_Y26_N38
\Add|S[52]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[52]~3_combout\ = ( \AddnSub~input_o\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[52]~input_o\ $ (!\A[52]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[52]~3_combout\);

-- Location: LABCELL_X32_Y26_N2
\Mux11~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = ( \Mux14~1_combout\ & ( \Mux11~2_combout\ & ( (\Mux11~9_combout\) # (\Mux11~7_combout\) ) ) ) # ( !\Mux14~1_combout\ & ( \Mux11~2_combout\ & ( \Mux11~7_combout\ ) ) ) # ( \Mux14~1_combout\ & ( !\Mux11~2_combout\ & ( 
-- (!\Add|C[52]~51_combout\ $ (!\Add|S[52]~3_combout\)) # (\Mux11~7_combout\) ) ) ) # ( !\Mux14~1_combout\ & ( !\Mux11~2_combout\ & ( \Mux11~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111111111010101010101010101010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~7_combout\,
	datab => \ALT_INV_Mux11~9_combout\,
	datac => \Add|ALT_INV_C[52]~51_combout\,
	datad => \Add|ALT_INV_S[52]~3_combout\,
	datae => \ALT_INV_Mux14~1_combout\,
	dataf => \ALT_INV_Mux11~2_combout\,
	combout => \Mux11~8_combout\);

-- Location: LABCELL_X32_Y26_N6
\Add|S[53]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[53]~4_combout\ = ( \B[53]~input_o\ & ( !\A[53]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[53]~input_o\ & ( !\A[53]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \Add|S[53]~4_combout\);

-- Location: LABCELL_X32_Y26_N24
\Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & (\ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~8_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~80_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000111010001110100010001000100010001110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~8_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~80_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: MLABCELL_X37_Y24_N4
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \A[53]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[53]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[53]~input_o\))) ) ) # ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X37_Y24_N18
\Shift|ShiftLeft0~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~109_combout\ = ( \A[51]~input_o\ & ( \A[50]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[51]~input_o\ & ( \A[50]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[53]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[52]~input_o\))) ) ) ) # ( \A[51]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[53]~input_o\)))) # (\B[0]~input_o\ & (\A[52]~input_o\ & 
-- ((!\B[1]~input_o\)))) ) ) ) # ( !\A[51]~input_o\ & ( !\A[50]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[53]~input_o\))) # (\B[0]~input_o\ & (\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Shift|ShiftLeft0~109_combout\);

-- Location: LABCELL_X35_Y29_N8
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ShiftLeft0~105_combout\) ) ) ) # ( !\Shift|ShiftLeft0~87_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~105_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~109_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~95_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~87_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~109_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~95_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~105_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~109_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~95_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~87_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X37_Y29_N36
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~13_combout\ & ( (\Shift|ShiftLeft0~47_combout\) # (\B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\ & (\Mux10~1_combout\)) # (\B[4]~input_o\ & 
-- ((\Shift|ShiftLeft0~80_combout\))) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\ & \Shift|ShiftLeft0~47_combout\) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ShiftLeft0~13_combout\ & ( (!\B[4]~input_o\ & (\Mux10~1_combout\)) # 
-- (\B[4]~input_o\ & ((\Shift|ShiftLeft0~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~47_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~80_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X32_Y26_N4
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \Mux10~2_combout\ & ( (!\Mux11~1_combout\ & ((\Mux11~0_combout\) # (\Mux10~0_combout\))) ) ) # ( !\Mux10~2_combout\ & ( (!\Mux11~1_combout\ & (\Mux10~0_combout\ & !\Mux11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LABCELL_X32_Y26_N28
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( \Mux10~3_combout\ & ( \Mux14~1_combout\ ) ) # ( !\Mux10~3_combout\ & ( \Mux14~1_combout\ & ( (!\Mux11~2_combout\ & (!\Add|C[53]~52_combout\ $ ((!\Add|S[53]~4_combout\)))) # (\Mux11~2_combout\ & (((\Mux10~5_combout\)))) ) ) ) # ( 
-- \Mux10~3_combout\ & ( !\Mux14~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101100110000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[53]~52_combout\,
	datab => \Add|ALT_INV_S[53]~4_combout\,
	datac => \ALT_INV_Mux10~5_combout\,
	datad => \ALT_INV_Mux11~2_combout\,
	datae => \ALT_INV_Mux10~3_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X32_Y26_N20
\Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & ((\ShiftFN[0]~input_o\)))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~83_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000100010001110100011101000111010001110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~9_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~83_combout\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LABCELL_X32_Y26_N38
\Add|S[54]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[54]~5_combout\ = ( \A[54]~input_o\ & ( !\B[54]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[54]~input_o\ & ( !\B[54]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Add|S[54]~5_combout\);

-- Location: LABCELL_X32_Y26_N32
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \A[54]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[54]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[54]~input_o\))) ) ) # ( !\A[54]~input_o\ & ( (\B[54]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X35_Y24_N22
\Shift|ShiftLeft0~110\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~110_combout\ = ( \A[51]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[53]~input_o\)))) # (\B[1]~input_o\ & (((\A[52]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[51]~input_o\ & ( \A[54]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[53]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[52]~input_o\)))) ) ) ) # ( \A[51]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[53]~input_o\))) # (\B[1]~input_o\ & 
-- (((\A[52]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[51]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[53]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[52]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftLeft0~110_combout\);

-- Location: MLABCELL_X39_Y28_N28
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~89_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~110_combout\))) # 
-- (\B[3]~input_o\ & (\Shift|ShiftLeft0~97_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ShiftLeft0~106_combout\ & ( (\Shift|ShiftLeft0~89_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftLeft0~110_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~97_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~89_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~97_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~110_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~106_combout\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X39_Y26_N36
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~1_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ShiftLeft0~49_combout\)) # (\B[4]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) ) ) ) # ( !\Mux9~1_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\Shift|ShiftLeft0~49_combout\)) # (\B[4]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) ) ) ) # ( \Mux9~1_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # (\Shift|ShiftLeft0~82_combout\) ) ) ) # ( !\Mux9~1_combout\ & ( !\B[5]~input_o\ & ( 
-- (\B[4]~input_o\ & \Shift|ShiftLeft0~82_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~49_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~82_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	datae => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X32_Y26_N12
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \Mux9~2_combout\ & ( (!\Mux11~1_combout\ & ((\Mux9~0_combout\) # (\Mux11~0_combout\))) ) ) # ( !\Mux9~2_combout\ & ( (!\Mux11~0_combout\ & (\Mux9~0_combout\ & !\Mux11~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LABCELL_X32_Y26_N18
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \Mux9~3_combout\ & ( \Mux14~1_combout\ ) ) # ( !\Mux9~3_combout\ & ( \Mux14~1_combout\ & ( (!\Mux11~2_combout\ & ((!\Add|C[54]~53_combout\ $ (!\Add|S[54]~5_combout\)))) # (\Mux11~2_combout\ & (\Mux9~5_combout\)) ) ) ) # ( 
-- \Mux9~3_combout\ & ( !\Mux14~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100011101110100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux11~2_combout\,
	datac => \Add|ALT_INV_C[54]~53_combout\,
	datad => \Add|ALT_INV_S[54]~5_combout\,
	datae => \ALT_INV_Mux9~3_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X35_Y25_N24
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \B[55]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[55]~input_o\)) ) ) # ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110011111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X35_Y24_N4
\Shift|ShiftLeft0~111\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~111_combout\ = ( \A[52]~input_o\ & ( \A[54]~input_o\ & ( ((!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[52]~input_o\ & ( \A[54]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[52]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[53]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[52]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftLeft0~111_combout\);

-- Location: LABCELL_X40_Y27_N10
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Shift|ShiftLeft0~107_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~91_combout\) ) ) ) # ( !\Shift|ShiftLeft0~107_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ShiftLeft0~91_combout\) ) ) ) # ( 
-- \Shift|ShiftLeft0~107_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~111_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~99_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~107_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~111_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~99_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~111_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~91_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~99_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~107_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X39_Y27_N18
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~17_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~51_combout\ ) ) ) # ( \B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~84_combout\ ) ) ) # 
-- ( !\B[4]~input_o\ & ( !\B[5]~input_o\ & ( \Mux8~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~51_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~84_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X39_Y27_N22
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Mux11~0_combout\ & ( (!\Mux11~1_combout\ & \Mux8~2_combout\) ) ) # ( !\Mux11~0_combout\ & ( (\Mux8~0_combout\ & !\Mux11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux11~1_combout\,
	datad => \ALT_INV_Mux8~2_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X35_Y25_N30
\Add|S[55]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[55]~6_combout\ = ( \B[55]~input_o\ & ( !\A[55]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[55]~input_o\ & ( !\A[55]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \Add|S[55]~6_combout\);

-- Location: MLABCELL_X39_Y27_N0
\Mux8~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = ( !\Mux30~0_combout\ & ( ((!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~10_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~86_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100000000000011110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~86_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~10_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_Mux11~3_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LABCELL_X32_Y27_N10
\Mux8~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \Add|C[55]~54_combout\ & ( \Mux8~5_combout\ & ( ((\Mux14~1_combout\ & ((!\Add|S[55]~6_combout\) # (\Mux11~2_combout\)))) # (\Mux8~3_combout\) ) ) ) # ( !\Add|C[55]~54_combout\ & ( \Mux8~5_combout\ & ( ((\Mux14~1_combout\ & 
-- ((\Add|S[55]~6_combout\) # (\Mux11~2_combout\)))) # (\Mux8~3_combout\) ) ) ) # ( \Add|C[55]~54_combout\ & ( !\Mux8~5_combout\ & ( ((!\Mux11~2_combout\ & (\Mux14~1_combout\ & !\Add|S[55]~6_combout\))) # (\Mux8~3_combout\) ) ) ) # ( !\Add|C[55]~54_combout\ 
-- & ( !\Mux8~5_combout\ & ( ((!\Mux11~2_combout\ & (\Mux14~1_combout\ & \Add|S[55]~6_combout\))) # (\Mux8~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111001011110000111100011111001111110011111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~2_combout\,
	datab => \ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_Mux8~3_combout\,
	datad => \Add|ALT_INV_S[55]~6_combout\,
	datae => \Add|ALT_INV_C[55]~54_combout\,
	dataf => \ALT_INV_Mux8~5_combout\,
	combout => \Mux8~4_combout\);

-- Location: LABCELL_X35_Y25_N32
\Add|S[56]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[56]~7_combout\ = ( \A[56]~input_o\ & ( !\AddnSub~input_o\ $ (\B[56]~input_o\) ) ) # ( !\A[56]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Add|S[56]~7_combout\);

-- Location: LABCELL_X35_Y26_N0
\Mux7~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = ( !\Mux11~3_combout\ & ( (((\Y_ShiftOrArith[31]~2_combout\))) ) ) # ( \Mux11~3_combout\ & ( (!\Mux30~0_combout\ & ((((\ShiftFN[0]~input_o\ & \A[63]~input_o\))))) # (\Mux30~0_combout\ & (((\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- \A[63]~input_o\))) # (\Shift|ShiftRight0~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000110000001100001111000011110000001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux11~3_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	datag => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	combout => \Mux7~5_combout\);

-- Location: LABCELL_X35_Y24_N10
\Shift|ShiftLeft0~112\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~112_combout\ = ( \B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[54]~input_o\ & ( (\B[1]~input_o\) # (\A[56]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & (\A[55]~input_o\)) # (\B[1]~input_o\ & ((\A[53]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[54]~input_o\ & ( (\A[56]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftLeft0~112_combout\);

-- Location: MLABCELL_X42_Y27_N30
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Shift|ShiftLeft0~108_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ShiftLeft0~93_combout\) ) ) ) # ( !\Shift|ShiftLeft0~108_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~93_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \Shift|ShiftLeft0~108_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~112_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~102_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~108_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ShiftLeft0~112_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~102_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~93_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~112_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~102_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~108_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X40_Y26_N16
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mux7~1_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~86_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~19_combout\)) ) ) ) # ( !\Mux7~1_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & 
-- ((\Shift|ShiftLeft0~86_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~19_combout\)) ) ) ) # ( \Mux7~1_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\) # (\Shift|ShiftLeft0~53_combout\) ) ) ) # ( !\Mux7~1_combout\ & ( !\B[4]~input_o\ & ( 
-- (\Shift|ShiftLeft0~53_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~53_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~86_combout\,
	datae => \ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X35_Y25_N28
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[56]~input_o\ & (\A[56]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[56]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[56]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[56]~input_o\ $ (((!\A[56]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X35_Y25_N34
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Mux7~0_combout\ & ( (!\Mux11~1_combout\ & ((!\Mux11~0_combout\) # (\Mux7~2_combout\))) ) ) # ( !\Mux7~0_combout\ & ( (\Mux11~0_combout\ & (\Mux7~2_combout\ & !\Mux11~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X35_Y25_N38
\Mux7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( \Mux11~2_combout\ & ( \Mux14~1_combout\ & ( (\Mux7~3_combout\) # (\Mux7~5_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( \Mux14~1_combout\ & ( (!\Add|S[56]~7_combout\ $ (!\Add|C[56]~55_combout\)) # (\Mux7~3_combout\) ) ) ) # ( 
-- \Mux11~2_combout\ & ( !\Mux14~1_combout\ & ( \Mux7~3_combout\ ) ) ) # ( !\Mux11~2_combout\ & ( !\Mux14~1_combout\ & ( \Mux7~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111101011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[56]~7_combout\,
	datab => \ALT_INV_Mux7~5_combout\,
	datac => \ALT_INV_Mux7~3_combout\,
	datad => \Add|ALT_INV_C[56]~55_combout\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: MLABCELL_X34_Y29_N24
\Add|S[57]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[57]~8_combout\ = ( \AddnSub~input_o\ & ( !\B[57]~input_o\ $ (\A[57]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[57]~8_combout\);

-- Location: MLABCELL_X34_Y26_N20
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( !\Mux30~0_combout\ & ( ((!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (((\Y_ShiftOrArith[31]~2_combout\)))) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~12_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~92_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100000000000011110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~92_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~12_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_Mux11~3_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LABCELL_X35_Y24_N34
\Shift|ShiftLeft0~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~113_combout\ = ( \B[0]~input_o\ & ( \A[54]~input_o\ & ( (\B[1]~input_o\) # (\A[56]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[54]~input_o\ & ( (!\B[1]~input_o\ & ((\A[57]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[54]~input_o\ & ( (\A[56]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[54]~input_o\ & ( (!\B[1]~input_o\ & ((\A[57]~input_o\))) # (\B[1]~input_o\ & (\A[55]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[55]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shift|ShiftLeft0~113_combout\);

-- Location: LABCELL_X35_Y29_N34
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~95_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~109_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~105_combout\ ) ) ) 
-- # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~113_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~113_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~109_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~95_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~105_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X34_Y29_N34
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Shift|ShiftLeft0~21_combout\ & ( \Shift|ShiftLeft0~88_combout\ & ( ((!\B[5]~input_o\ & (\Mux6~1_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~55_combout\)))) # (\B[4]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~21_combout\ & ( 
-- \Shift|ShiftLeft0~88_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux6~1_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~55_combout\))))) # (\B[4]~input_o\ & (((!\B[5]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~21_combout\ & ( 
-- !\Shift|ShiftLeft0~88_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux6~1_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~55_combout\))))) # (\B[4]~input_o\ & (((\B[5]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~21_combout\ & ( 
-- !\Shift|ShiftLeft0~88_combout\ & ( (!\B[4]~input_o\ & ((!\B[5]~input_o\ & (\Mux6~1_combout\)) # (\B[5]~input_o\ & ((\Shift|ShiftLeft0~55_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~55_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~21_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~88_combout\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X34_Y29_N28
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[57]~input_o\ & (!\LogicFN[0]~input_o\ & \A[57]~input_o\)) # (\B[57]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[57]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[57]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X34_Y29_N30
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \Mux6~0_combout\ & ( (!\Mux11~1_combout\ & ((!\Mux11~0_combout\) # (\Mux6~2_combout\))) ) ) # ( !\Mux6~0_combout\ & ( (!\Mux11~1_combout\ & (\Mux11~0_combout\ & \Mux6~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux6~2_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X34_Y29_N16
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Mux6~3_combout\ & ( \Mux14~1_combout\ ) ) # ( !\Mux6~3_combout\ & ( \Mux14~1_combout\ & ( (!\Mux11~2_combout\ & (!\Add|S[57]~8_combout\ $ ((!\Add|C[57]~56_combout\)))) # (\Mux11~2_combout\ & (((\Mux6~5_combout\)))) ) ) ) # ( 
-- \Mux6~3_combout\ & ( !\Mux14~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101100110000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[57]~8_combout\,
	datab => \Add|ALT_INV_C[57]~56_combout\,
	datac => \ALT_INV_Mux6~5_combout\,
	datad => \ALT_INV_Mux11~2_combout\,
	datae => \ALT_INV_Mux6~3_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: MLABCELL_X34_Y29_N10
\Add|S[58]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[58]~9_combout\ = ( \A[58]~input_o\ & ( !\AddnSub~input_o\ $ (\B[58]~input_o\) ) ) # ( !\A[58]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Add|S[58]~9_combout\);

-- Location: LABCELL_X35_Y24_N38
\Shift|ShiftLeft0~114\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~114_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[55]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( \A[56]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[57]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( \A[58]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[58]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftLeft0~114_combout\);

-- Location: MLABCELL_X39_Y28_N32
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Shift|ShiftLeft0~110_combout\ & ( \Shift|ShiftLeft0~106_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~114_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ShiftLeft0~97_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~110_combout\ & ( \Shift|ShiftLeft0~106_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~114_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (\B[3]~input_o\ & (\Shift|ShiftLeft0~97_combout\))) ) ) ) # ( 
-- \Shift|ShiftLeft0~110_combout\ & ( !\Shift|ShiftLeft0~106_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~114_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ShiftLeft0~97_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~110_combout\ & ( !\Shift|ShiftLeft0~106_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~114_combout\)))) # (\B[2]~input_o\ & (\B[3]~input_o\ & (\Shift|ShiftLeft0~97_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~97_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~114_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~110_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~106_combout\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X37_Y27_N8
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Shift|ShiftLeft0~90_combout\ & ( \Shift|ShiftLeft0~57_combout\ & ( (!\B[5]~input_o\ & (((\Mux5~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & ((!\B[4]~input_o\) # ((\Shift|ShiftLeft0~23_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~90_combout\ & ( \Shift|ShiftLeft0~57_combout\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & ((\Mux5~1_combout\)))) # (\B[5]~input_o\ & ((!\B[4]~input_o\) # ((\Shift|ShiftLeft0~23_combout\)))) ) ) ) # ( \Shift|ShiftLeft0~90_combout\ & ( 
-- !\Shift|ShiftLeft0~57_combout\ & ( (!\B[5]~input_o\ & (((\Mux5~1_combout\)) # (\B[4]~input_o\))) # (\B[5]~input_o\ & (\B[4]~input_o\ & (\Shift|ShiftLeft0~23_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~90_combout\ & ( !\Shift|ShiftLeft0~57_combout\ & ( 
-- (!\B[5]~input_o\ & (!\B[4]~input_o\ & ((\Mux5~1_combout\)))) # (\B[5]~input_o\ & (\B[4]~input_o\ & (\Shift|ShiftLeft0~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~23_combout\,
	datad => \ALT_INV_Mux5~1_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~90_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~57_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X37_Y27_N6
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \B[58]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[58]~input_o\)) ) ) # ( !\B[58]~input_o\ & ( (\A[58]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \ALT_INV_B[58]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X37_Y27_N4
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux5~0_combout\ & ( (!\Mux11~1_combout\ & ((!\Mux11~0_combout\) # (\Mux5~2_combout\))) ) ) # ( !\Mux5~0_combout\ & ( (\Mux11~0_combout\ & (\Mux5~2_combout\ & !\Mux11~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: MLABCELL_X37_Y27_N24
\Mux5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\ShiftFN[0]~input_o\ & (\A[63]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~13_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~95_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100000011010101010000110001010101000000110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~13_combout\,
	datad => \ALT_INV_Mux11~3_combout\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~95_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: MLABCELL_X37_Y27_N12
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \Mux11~2_combout\ & ( \Mux5~5_combout\ & ( (\Mux5~3_combout\) # (\Mux14~1_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( \Mux5~5_combout\ & ( ((\Mux14~1_combout\ & (!\Add|S[58]~9_combout\ $ (!\Add|C[58]~57_combout\)))) # 
-- (\Mux5~3_combout\) ) ) ) # ( \Mux11~2_combout\ & ( !\Mux5~5_combout\ & ( \Mux5~3_combout\ ) ) ) # ( !\Mux11~2_combout\ & ( !\Mux5~5_combout\ & ( ((\Mux14~1_combout\ & (!\Add|S[58]~9_combout\ $ (!\Add|C[58]~57_combout\)))) # (\Mux5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101001111000011110000111100011111010011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \Add|ALT_INV_S[58]~9_combout\,
	datac => \ALT_INV_Mux5~3_combout\,
	datad => \Add|ALT_INV_C[58]~57_combout\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux5~5_combout\,
	combout => \Mux5~4_combout\);

-- Location: MLABCELL_X42_Y22_N26
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[59]~input_o\ & (\A[59]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[59]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[59]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[59]~input_o\ $ (((!\A[59]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X35_Y27_N20
\Shift|ShiftLeft0~115\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~115_combout\ = ( \A[57]~input_o\ & ( \A[56]~input_o\ & ( ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[57]~input_o\ & ( \A[56]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\))))) # (\B[1]~input_o\ & (\B[0]~input_o\)) ) ) ) # ( \A[57]~input_o\ & ( !\A[56]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[58]~input_o\))))) # (\B[1]~input_o\ & (!\B[0]~input_o\)) ) ) ) # ( !\A[57]~input_o\ & ( !\A[56]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Shift|ShiftLeft0~115_combout\);

-- Location: LABCELL_X40_Y27_N12
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~99_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ShiftLeft0~111_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~107_combout\ ) ) ) 
-- # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ShiftLeft0~115_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~99_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~111_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~115_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~107_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: MLABCELL_X39_Y25_N38
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~1_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ShiftLeft0~59_combout\)) # (\B[4]~input_o\ & ((\Shift|ShiftLeft0~25_combout\))) ) ) ) # ( !\Mux4~1_combout\ & ( \B[5]~input_o\ & ( (!\B[4]~input_o\ & 
-- (\Shift|ShiftLeft0~59_combout\)) # (\B[4]~input_o\ & ((\Shift|ShiftLeft0~25_combout\))) ) ) ) # ( \Mux4~1_combout\ & ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # (\Shift|ShiftLeft0~92_combout\) ) ) ) # ( !\Mux4~1_combout\ & ( !\B[5]~input_o\ & ( 
-- (\B[4]~input_o\ & \Shift|ShiftLeft0~92_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~59_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~25_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~92_combout\,
	datae => \ALT_INV_Mux4~1_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X39_Y25_N22
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Mux4~2_combout\ & ( (!\Mux11~1_combout\ & ((\Mux11~0_combout\) # (\Mux4~0_combout\))) ) ) # ( !\Mux4~2_combout\ & ( (!\Mux11~1_combout\ & (\Mux4~0_combout\ & !\Mux11~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X39_Y25_N0
\Mux4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & ((((\Y_ShiftOrArith[31]~2_combout\))))) # (\Mux11~3_combout\ & (\ShiftFN[0]~input_o\ & (\A[63]~input_o\))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- ((((\Y_ShiftOrArith[31]~2_combout\))))) # (\Mux11~3_combout\ & ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~14_combout\)) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~98_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000111001101000000101100111000000001110011010001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~98_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: MLABCELL_X37_Y27_N2
\Add|S[59]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[59]~10_combout\ = ( \A[59]~input_o\ & ( !\B[59]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[59]~input_o\ & ( !\B[59]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \Add|S[59]~10_combout\);

-- Location: MLABCELL_X37_Y27_N18
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \Mux4~5_combout\ & ( \Add|S[59]~10_combout\ & ( ((\Mux14~1_combout\ & ((!\Add|C[59]~58_combout\) # (\Mux11~2_combout\)))) # (\Mux4~3_combout\) ) ) ) # ( !\Mux4~5_combout\ & ( \Add|S[59]~10_combout\ & ( ((!\Add|C[59]~58_combout\ & 
-- (\Mux14~1_combout\ & !\Mux11~2_combout\))) # (\Mux4~3_combout\) ) ) ) # ( \Mux4~5_combout\ & ( !\Add|S[59]~10_combout\ & ( ((\Mux14~1_combout\ & ((\Mux11~2_combout\) # (\Add|C[59]~58_combout\)))) # (\Mux4~3_combout\) ) ) ) # ( !\Mux4~5_combout\ & ( 
-- !\Add|S[59]~10_combout\ & ( ((\Add|C[59]~58_combout\ & (\Mux14~1_combout\ & !\Mux11~2_combout\))) # (\Mux4~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011001101110011111100111011001100110011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[59]~58_combout\,
	datab => \ALT_INV_Mux4~3_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_Mux11~2_combout\,
	datae => \ALT_INV_Mux4~5_combout\,
	dataf => \Add|ALT_INV_S[59]~10_combout\,
	combout => \Mux4~4_combout\);

-- Location: MLABCELL_X37_Y27_N20
\Mux3~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = ( !\Mux11~3_combout\ & ( (((\Y_ShiftOrArith[31]~2_combout\))) ) ) # ( \Mux11~3_combout\ & ( (!\Shift|ShiftLeft0~0_combout\ & ((!\Mux30~0_combout\ & (\A[63]~input_o\ & (\ShiftFN[0]~input_o\))) # (\Mux30~0_combout\ & 
-- (((\Shift|ShiftRight1~18_combout\)))))) # (\Shift|ShiftLeft0~0_combout\ & (\A[63]~input_o\ & (((\ShiftFN[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000101000100001111000011110000110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux11~3_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~18_combout\,
	datag => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	combout => \Mux3~6_combout\);

-- Location: LABCELL_X32_Y27_N34
\Add|S[60]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[60]~11_combout\ = ( \A[60]~input_o\ & ( !\AddnSub~input_o\ $ (\B[60]~input_o\) ) ) # ( !\A[60]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Add|S[60]~11_combout\);

-- Location: LABCELL_X32_Y27_N18
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A[60]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (\B[60]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[60]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\A[60]~input_o\ & ( (\B[60]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X35_Y27_N24
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \A[60]~input_o\ & ( \A[58]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\)))) ) ) ) # ( !\A[60]~input_o\ & ( \A[58]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & 
-- (\A[59]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[57]~input_o\)))) ) ) ) # ( \A[60]~input_o\ & ( !\A[58]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[59]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[57]~input_o\)))) 
-- ) ) ) # ( !\A[60]~input_o\ & ( !\A[58]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[59]~input_o\)) # (\B[1]~input_o\ & ((\A[57]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X42_Y27_N32
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Shift|ShiftLeft0~108_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~112_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~102_combout\)) ) ) ) # ( !\Shift|ShiftLeft0~108_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~112_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~102_combout\)) ) ) ) # ( \Shift|ShiftLeft0~108_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Mux3~1_combout\) ) ) ) # ( !\Shift|ShiftLeft0~108_combout\ & 
-- ( !\B[2]~input_o\ & ( (\Mux3~1_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~102_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~112_combout\,
	datac => \ALT_INV_Mux3~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~108_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X34_Y27_N0
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \Mux3~2_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~94_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~27_combout\)) ) ) ) # ( !\Mux3~2_combout\ & ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & 
-- ((\Shift|ShiftLeft0~94_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~27_combout\)) ) ) ) # ( \Mux3~2_combout\ & ( !\B[4]~input_o\ & ( (!\B[5]~input_o\) # (\Shift|ShiftLeft0~61_combout\) ) ) ) # ( !\Mux3~2_combout\ & ( !\B[4]~input_o\ & ( 
-- (\Shift|ShiftLeft0~61_combout\ & \B[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~61_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~27_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~94_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X32_Y27_N32
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \Mux3~3_combout\ & ( (!\Mux11~1_combout\ & ((\Mux3~0_combout\) # (\Mux11~0_combout\))) ) ) # ( !\Mux3~3_combout\ & ( (!\Mux11~0_combout\ & (!\Mux11~1_combout\ & \Mux3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LABCELL_X32_Y27_N22
\Mux3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( \Mux11~2_combout\ & ( \Mux14~1_combout\ & ( (\Mux3~4_combout\) # (\Mux3~6_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( \Mux14~1_combout\ & ( (!\Add|C[60]~59_combout\ $ (!\Add|S[60]~11_combout\)) # (\Mux3~4_combout\) ) ) ) # ( 
-- \Mux11~2_combout\ & ( !\Mux14~1_combout\ & ( \Mux3~4_combout\ ) ) ) # ( !\Mux11~2_combout\ & ( !\Mux14~1_combout\ & ( \Mux3~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011010111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[60]~59_combout\,
	datab => \ALT_INV_Mux3~6_combout\,
	datac => \Add|ALT_INV_S[60]~11_combout\,
	datad => \ALT_INV_Mux3~4_combout\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux3~5_combout\);

-- Location: MLABCELL_X34_Y25_N20
\Mux2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & (\ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~16_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~104_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000111010001110100010001000100010001110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~16_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~104_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LABCELL_X32_Y27_N6
\Add|S[61]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[61]~12_combout\ = ( \AddnSub~input_o\ & ( !\B[61]~input_o\ $ (\A[61]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[61]~input_o\ $ (!\A[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[61]~12_combout\);

-- Location: LABCELL_X32_Y27_N16
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \B[61]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[61]~input_o\)) ) ) # ( !\B[61]~input_o\ & ( (\A[61]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_B[61]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X35_Y27_N8
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A[60]~input_o\ & ( \A[61]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\)))) ) ) ) # ( !\A[60]~input_o\ & ( \A[61]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\)) # 
-- (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\))))) ) ) ) # ( \A[60]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[59]~input_o\)) # 
-- (\B[0]~input_o\ & ((\A[58]~input_o\))))) ) ) ) # ( !\A[60]~input_o\ & ( !\A[61]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[59]~input_o\)) # (\B[0]~input_o\ & ((\A[58]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X35_Y29_N18
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Mux2~1_combout\ & ( \Shift|ShiftLeft0~105_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftLeft0~109_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~113_combout\))) ) ) ) # ( 
-- !\Mux2~1_combout\ & ( \Shift|ShiftLeft0~105_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~109_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~113_combout\))) ) ) ) # ( \Mux2~1_combout\ & ( 
-- !\Shift|ShiftLeft0~105_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ShiftLeft0~109_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~113_combout\ & ((!\B[3]~input_o\)))) ) ) ) # ( !\Mux2~1_combout\ & ( !\Shift|ShiftLeft0~105_combout\ & 
-- ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~109_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~113_combout\ & ((!\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~113_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~109_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_Mux2~1_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~105_combout\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X34_Y25_N16
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \B[5]~input_o\ & ( \Shift|ShiftLeft0~63_combout\ & ( (!\B[4]~input_o\) # (\Shift|ShiftLeft0~29_combout\) ) ) ) # ( !\B[5]~input_o\ & ( \Shift|ShiftLeft0~63_combout\ & ( (!\B[4]~input_o\ & ((\Mux2~2_combout\))) # (\B[4]~input_o\ & 
-- (\Shift|ShiftLeft0~96_combout\)) ) ) ) # ( \B[5]~input_o\ & ( !\Shift|ShiftLeft0~63_combout\ & ( (\Shift|ShiftLeft0~29_combout\ & \B[4]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( !\Shift|ShiftLeft0~63_combout\ & ( (!\B[4]~input_o\ & ((\Mux2~2_combout\))) # 
-- (\B[4]~input_o\ & (\Shift|ShiftLeft0~96_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~29_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~96_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~63_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X34_Y25_N0
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux2~3_combout\ & ( (!\Mux11~1_combout\ & ((\Mux2~0_combout\) # (\Mux11~0_combout\))) ) ) # ( !\Mux2~3_combout\ & ( (!\Mux11~0_combout\ & (\Mux2~0_combout\ & !\Mux11~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X32_Y27_N28
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \Mux2~4_combout\ & ( \Mux14~1_combout\ ) ) # ( !\Mux2~4_combout\ & ( \Mux14~1_combout\ & ( (!\Mux11~2_combout\ & (!\Add|C[61]~60_combout\ $ (((!\Add|S[61]~12_combout\))))) # (\Mux11~2_combout\ & (((\Mux2~6_combout\)))) ) ) ) # ( 
-- \Mux2~4_combout\ & ( !\Mux14~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100100111100011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~2_combout\,
	datab => \Add|ALT_INV_C[61]~60_combout\,
	datac => \ALT_INV_Mux2~6_combout\,
	datad => \Add|ALT_INV_S[61]~12_combout\,
	datae => \ALT_INV_Mux2~4_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \Mux2~5_combout\);

-- Location: LABCELL_X38_Y27_N0
\Mux1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( !\Mux30~0_combout\ & ( (!\Mux11~3_combout\ & (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((\A[63]~input_o\ & (\ShiftFN[0]~input_o\))))) ) ) # ( \Mux30~0_combout\ & ( (!\Mux11~3_combout\ & 
-- (\Y_ShiftOrArith[31]~2_combout\)) # (\Mux11~3_combout\ & (((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~17_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~107_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001000111010001110100010001000100010001110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_Mux11~3_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~17_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux30~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~107_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: MLABCELL_X34_Y27_N6
\Add|S[62]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[62]~13_combout\ = ( \AddnSub~input_o\ & ( \B[62]~input_o\ & ( \A[62]~input_o\ ) ) ) # ( !\AddnSub~input_o\ & ( \B[62]~input_o\ & ( !\A[62]~input_o\ ) ) ) # ( \AddnSub~input_o\ & ( !\B[62]~input_o\ & ( !\A[62]~input_o\ ) ) ) # ( !\AddnSub~input_o\ & 
-- ( !\B[62]~input_o\ & ( \A[62]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[62]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \Add|S[62]~13_combout\);

-- Location: LABCELL_X32_Y27_N12
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \LogicFN[1]~input_o\ & ( \B[62]~input_o\ & ( (!\LogicFN[0]~input_o\) # (\A[62]~input_o\) ) ) ) # ( !\LogicFN[1]~input_o\ & ( \B[62]~input_o\ & ( (!\A[62]~input_o\) # (!\LogicFN[0]~input_o\) ) ) ) # ( \LogicFN[1]~input_o\ & ( 
-- !\B[62]~input_o\ & ( (\A[62]~input_o\ & !\LogicFN[0]~input_o\) ) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[62]~input_o\ & ( (\A[62]~input_o\ & \LogicFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000011111100111111001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X35_Y27_N12
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \A[60]~input_o\ & ( \A[62]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[61]~input_o\))) # (\B[1]~input_o\ & (\A[59]~input_o\))) ) ) ) # ( !\A[60]~input_o\ & ( \A[62]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # 
-- ((\A[61]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[59]~input_o\))) ) ) ) # ( \A[60]~input_o\ & ( !\A[62]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[61]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[59]~input_o\)))) ) 
-- ) ) # ( !\A[60]~input_o\ & ( !\A[62]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[61]~input_o\))) # (\B[1]~input_o\ & (\A[59]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X39_Y28_N18
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Shift|ShiftLeft0~110_combout\ & ( \Shift|ShiftLeft0~106_combout\ & ( ((!\B[2]~input_o\ & ((\Mux1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~114_combout\))) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~110_combout\ & ( 
-- \Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Mux1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~114_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~110_combout\ & ( 
-- !\Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Mux1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~114_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~110_combout\ & ( 
-- !\Shift|ShiftLeft0~106_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Mux1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~114_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~114_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~110_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~106_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X38_Y27_N38
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Mux1~2_combout\ & ( \Shift|ShiftLeft0~98_combout\ & ( (!\B[5]~input_o\) # ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~65_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~31_combout\))) ) ) ) # ( !\Mux1~2_combout\ & ( 
-- \Shift|ShiftLeft0~98_combout\ & ( (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~65_combout\ & \B[5]~input_o\)))) # (\B[4]~input_o\ & (((!\B[5]~input_o\)) # (\Shift|ShiftLeft0~31_combout\))) ) ) ) # ( \Mux1~2_combout\ & ( !\Shift|ShiftLeft0~98_combout\ & ( 
-- (!\B[4]~input_o\ & (((!\B[5]~input_o\) # (\Shift|ShiftLeft0~65_combout\)))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~31_combout\ & ((\B[5]~input_o\)))) ) ) ) # ( !\Mux1~2_combout\ & ( !\Shift|ShiftLeft0~98_combout\ & ( (\B[5]~input_o\ & ((!\B[4]~input_o\ & 
-- ((\Shift|ShiftLeft0~65_combout\))) # (\B[4]~input_o\ & (\Shift|ShiftLeft0~31_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~31_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~65_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_Mux1~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~98_combout\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X38_Y27_N18
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \Mux1~3_combout\ & ( (!\Mux11~1_combout\ & ((\Mux1~0_combout\) # (\Mux11~0_combout\))) ) ) # ( !\Mux1~3_combout\ & ( (!\Mux11~1_combout\ & (!\Mux11~0_combout\ & \Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X32_Y27_N36
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( \Mux11~2_combout\ & ( \Mux1~4_combout\ ) ) # ( !\Mux11~2_combout\ & ( \Mux1~4_combout\ ) ) # ( \Mux11~2_combout\ & ( !\Mux1~4_combout\ & ( (\Mux1~6_combout\ & \Mux14~1_combout\) ) ) ) # ( !\Mux11~2_combout\ & ( !\Mux1~4_combout\ & ( 
-- (\Mux14~1_combout\ & (!\Add|S[62]~13_combout\ $ (!\Add|C[62]~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~6_combout\,
	datab => \Add|ALT_INV_S[62]~13_combout\,
	datac => \Add|ALT_INV_C[62]~61_combout\,
	datad => \ALT_INV_Mux14~1_combout\,
	datae => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: MLABCELL_X44_Y25_N12
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[63]~input_o\ & (!\LogicFN[0]~input_o\ & \B[63]~input_o\)) # (\A[63]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[63]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[63]~input_o\ $ 
-- (((!\A[63]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[63]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X35_Y27_N16
\Shift|ShiftLeft0~116\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~116_combout\ = ( \A[61]~input_o\ & ( \A[63]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[62]~input_o\))) # (\B[1]~input_o\ & (\A[60]~input_o\))) ) ) ) # ( !\A[61]~input_o\ & ( \A[63]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\) # (\A[62]~input_o\)))) # (\B[1]~input_o\ & (\A[60]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[61]~input_o\ & ( !\A[63]~input_o\ & ( (!\B[1]~input_o\ & (((\A[62]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[60]~input_o\))) ) ) ) # ( !\A[61]~input_o\ & ( !\A[63]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[62]~input_o\))) # (\B[1]~input_o\ & (\A[60]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \Shift|ShiftLeft0~116_combout\);

-- Location: LABCELL_X40_Y27_N36
\Shift|ShiftLeft0~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~117_combout\ = ( \Shift|ShiftLeft0~107_combout\ & ( \B[2]~input_o\ & ( (\Shift|ShiftLeft0~115_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~107_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- \Shift|ShiftLeft0~115_combout\) ) ) ) # ( \Shift|ShiftLeft0~107_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~116_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~111_combout\)) ) ) ) # ( !\Shift|ShiftLeft0~107_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~116_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~111_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~111_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~115_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~116_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~107_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ShiftLeft0~117_combout\);

-- Location: MLABCELL_X42_Y25_N36
\Shift|ShiftLeft0~118\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~118_combout\ = ( \B[4]~input_o\ & ( \Shift|ShiftLeft0~33_combout\ & ( (\Shift|ShiftLeft0~100_combout\) # (\B[5]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & 
-- ((\Shift|ShiftLeft0~117_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~67_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & \Shift|ShiftLeft0~100_combout\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shift|ShiftLeft0~33_combout\ & ( (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~117_combout\))) # (\B[5]~input_o\ & (\Shift|ShiftLeft0~67_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~67_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~100_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~117_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~118_combout\);

-- Location: MLABCELL_X44_Y25_N14
\Add|S[63]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(63) = ( \B[63]~input_o\ & ( !\A[63]~input_o\ $ (!\Add|C[63]~62_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[63]~input_o\ & ( !\A[63]~input_o\ $ (!\Add|C[63]~62_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \Add|ALT_INV_C[63]~62_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \Add|S\(63));

-- Location: MLABCELL_X44_Y25_N38
\Y_ShiftOrArith[31]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~7_combout\ = ( \A[63]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Add|S\(63)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~118_combout\))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\A[63]~input_o\ & ( 
-- \Shift|ShiftLeft0~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Add|S\(63)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~118_combout\)))) ) ) ) # ( \A[63]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- (((\Add|S\(63) & !\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Shift|ShiftLeft0~118_combout\))) ) ) ) # ( !\A[63]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\Add|S\(63)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~118_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~118_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Add|ALT_INV_S\(63),
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_A[63]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	combout => \Y_ShiftOrArith[31]~7_combout\);

-- Location: MLABCELL_X44_Y25_N0
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Logic|Mux0~0_combout\ & ( \Y_ShiftOrArith[31]~7_combout\ & ( (!\FuncClass[1]~input_o\ & (((!\ExtWord~input_o\) # (\FuncClass[0]~input_o\)) # (\Y_ShiftOrArith[31]~2_combout\))) ) ) ) # ( !\Logic|Mux0~0_combout\ & ( 
-- \Y_ShiftOrArith[31]~7_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # (\Y_ShiftOrArith[31]~2_combout\)))) ) ) ) # ( \Logic|Mux0~0_combout\ & ( !\Y_ShiftOrArith[31]~7_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- (((\Y_ShiftOrArith[31]~2_combout\ & \ExtWord~input_o\)) # (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux0~0_combout\ & ( !\Y_ShiftOrArith[31]~7_combout\ & ( (\Y_ShiftOrArith[31]~2_combout\ & (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & 
-- !\FuncClass[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000001101110000000011000100000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[31]~2_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \Logic|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[31]~7_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X40_Y26_N2
\Add|S[40]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[40]~14_combout\ = ( \AddnSub~input_o\ & ( !\B[40]~input_o\ $ (\A[40]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[40]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[40]~14_combout\);

-- Location: MLABCELL_X44_Y29_N30
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \A[0]~input_o\ & ( (!\Add|S\(1) & \B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\Add|S\(1) & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(1),
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X44_Y29_N24
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( (!\Add|S\(4) & (!\Add|S\(5) & (!\Add|S\(3) & !\Add|S\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(4),
	datab => \Add|ALT_INV_S\(5),
	datac => \Add|ALT_INV_S\(3),
	datad => \Add|ALT_INV_S\(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X43_Y29_N18
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add|S\(9) & ( (!\Add|S\(8) & (!\Add|S\(7) & (\Equal0~1_combout\ & !\Add|S\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(8),
	datab => \Add|ALT_INV_S\(7),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \Add|ALT_INV_S\(6),
	datae => \Add|ALT_INV_S\(9),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X45_Y29_N36
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add|S\(10) & ( (\Equal0~2_combout\ & (!\Add|S\(12) & (!\Add|S\(13) & !\Add|S\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Add|ALT_INV_S\(12),
	datac => \Add|ALT_INV_S\(13),
	datad => \Add|ALT_INV_S\(11),
	dataf => \Add|ALT_INV_S\(10),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X46_Y29_N0
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Add|S\(15) & ( (!\Add|S\(16) & (\Equal0~3_combout\ & (!\Add|S\(14) & !\Add|S\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(16),
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \Add|ALT_INV_S\(14),
	datad => \Add|ALT_INV_S\(17),
	dataf => \Add|ALT_INV_S\(15),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X44_Y26_N8
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\Add|S\(18) & ( (!\Add|S\(20) & (!\Add|S\(21) & (!\Add|S\(19) & \Equal0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(20),
	datab => \Add|ALT_INV_S\(21),
	datac => \Add|ALT_INV_S\(19),
	datad => \ALT_INV_Equal0~4_combout\,
	dataf => \Add|ALT_INV_S\(18),
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X44_Y26_N4
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\Add|S\(25) & ( (\Equal0~5_combout\ & (!\Add|S\(22) & (!\Add|S\(23) & !\Add|S\(24)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \Add|ALT_INV_S\(22),
	datac => \Add|ALT_INV_S\(23),
	datad => \Add|ALT_INV_S\(24),
	dataf => \Add|ALT_INV_S\(25),
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X38_Y25_N2
\Equal0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Add|S\(27) & ( (!\Add|S\(29) & (!\Add|S\(28) & (\Equal0~6_combout\ & !\Add|S\(26)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(29),
	datab => \Add|ALT_INV_S\(28),
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \Add|ALT_INV_S\(26),
	dataf => \Add|ALT_INV_S\(27),
	combout => \Equal0~7_combout\);

-- Location: MLABCELL_X42_Y22_N16
\Equal0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Equal0~7_combout\ & ( (!\Add|S\(30) & (!\Add|S\(33) & (!\Add|S\(32) & !\Add|S\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(30),
	datab => \Add|ALT_INV_S\(33),
	datac => \Add|ALT_INV_S\(32),
	datad => \Add|ALT_INV_S\(31),
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: MLABCELL_X42_Y22_N2
\Equal0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( !\Add|S\(36) & ( (!\Add|S\(35) & (\Equal0~8_combout\ & (!\Add|S\(37) & !\Add|S\(34)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(35),
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \Add|ALT_INV_S\(37),
	datad => \Add|ALT_INV_S\(34),
	dataf => \Add|ALT_INV_S\(36),
	combout => \Equal0~9_combout\);

-- Location: LABCELL_X40_Y22_N10
\Equal0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \Equal0~9_combout\ & ( (!\Add|S\(38) & (!\Add|S\(39) & (!\Add|C[40]~39_combout\ $ (\Add|S[40]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(38),
	datab => \Add|ALT_INV_C[40]~39_combout\,
	datac => \Add|ALT_INV_S[40]~14_combout\,
	datad => \Add|ALT_INV_S\(39),
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LABCELL_X40_Y22_N38
\Equal0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \Add|S[44]~0_combout\ & ( !\Add|S\(41) & ( (!\Add|S\(42) & (\Add|C[44]~43_combout\ & (\Equal0~10_combout\ & !\Add|S\(43)))) ) ) ) # ( !\Add|S[44]~0_combout\ & ( !\Add|S\(41) & ( (!\Add|S\(42) & (!\Add|C[44]~43_combout\ & 
-- (\Equal0~10_combout\ & !\Add|S\(43)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(42),
	datab => \Add|ALT_INV_C[44]~43_combout\,
	datac => \ALT_INV_Equal0~10_combout\,
	datad => \Add|ALT_INV_S\(43),
	datae => \Add|ALT_INV_S[44]~0_combout\,
	dataf => \Add|ALT_INV_S\(41),
	combout => \Equal0~11_combout\);

-- Location: MLABCELL_X39_Y24_N18
\Equal0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( !\Add|S\(46) & ( !\Add|S\(47) & ( (!\Add|S\(45) & (\Equal0~11_combout\ & (!\Add|S[48]~1_combout\ $ (\Add|C[48]~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[48]~1_combout\,
	datab => \Add|ALT_INV_C[48]~47_combout\,
	datac => \Add|ALT_INV_S\(45),
	datad => \ALT_INV_Equal0~11_combout\,
	datae => \Add|ALT_INV_S\(46),
	dataf => \Add|ALT_INV_S\(47),
	combout => \Equal0~12_combout\);

-- Location: MLABCELL_X37_Y25_N26
\Equal0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( !\Add|S\(50) & ( (!\Add|S\(49) & (\Equal0~12_combout\ & (!\Add|C[51]~50_combout\ $ (\Add|S[51]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[51]~50_combout\,
	datab => \Add|ALT_INV_S[51]~2_combout\,
	datac => \Add|ALT_INV_S\(49),
	datad => \ALT_INV_Equal0~12_combout\,
	dataf => \Add|ALT_INV_S\(50),
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X32_Y26_N10
\Equal0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Add|S[53]~4_combout\ & ( (\Equal0~13_combout\ & (\Add|C[53]~52_combout\ & (!\Add|S[52]~3_combout\ $ (\Add|C[52]~51_combout\)))) ) ) # ( !\Add|S[53]~4_combout\ & ( (\Equal0~13_combout\ & (!\Add|C[53]~52_combout\ & 
-- (!\Add|S[52]~3_combout\ $ (\Add|C[52]~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[52]~3_combout\,
	datab => \Add|ALT_INV_C[52]~51_combout\,
	datac => \ALT_INV_Equal0~13_combout\,
	datad => \Add|ALT_INV_C[53]~52_combout\,
	dataf => \Add|ALT_INV_S[53]~4_combout\,
	combout => \Equal0~14_combout\);

-- Location: LABCELL_X32_Y26_N14
\Equal0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( \Equal0~14_combout\ & ( !\Add|S[54]~5_combout\ $ (\Add|C[54]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[54]~5_combout\,
	datac => \Add|ALT_INV_C[54]~53_combout\,
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \Equal0~15_combout\);

-- Location: LABCELL_X35_Y25_N8
\Equal0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = ( \Add|S[56]~7_combout\ & ( (\Add|C[56]~55_combout\ & (\Equal0~15_combout\ & (!\Add|S[55]~6_combout\ $ (\Add|C[55]~54_combout\)))) ) ) # ( !\Add|S[56]~7_combout\ & ( (!\Add|C[56]~55_combout\ & (\Equal0~15_combout\ & 
-- (!\Add|S[55]~6_combout\ $ (\Add|C[55]~54_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000000100000000010000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[56]~55_combout\,
	datab => \Add|ALT_INV_S[55]~6_combout\,
	datac => \ALT_INV_Equal0~15_combout\,
	datad => \Add|ALT_INV_C[55]~54_combout\,
	dataf => \Add|ALT_INV_S[56]~7_combout\,
	combout => \Equal0~16_combout\);

-- Location: MLABCELL_X34_Y29_N20
\Equal0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = ( \Equal0~16_combout\ & ( (!\Add|S[57]~8_combout\ & (!\Add|C[57]~56_combout\ & (!\Add|S[58]~9_combout\ $ (\Add|C[58]~57_combout\)))) # (\Add|S[57]~8_combout\ & (\Add|C[57]~56_combout\ & (!\Add|S[58]~9_combout\ $ 
-- (\Add|C[58]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[57]~8_combout\,
	datab => \Add|ALT_INV_C[57]~56_combout\,
	datac => \Add|ALT_INV_S[58]~9_combout\,
	datad => \Add|ALT_INV_C[58]~57_combout\,
	dataf => \ALT_INV_Equal0~16_combout\,
	combout => \Equal0~17_combout\);

-- Location: LABCELL_X32_Y27_N4
\Equal0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = ( \Equal0~17_combout\ & ( (!\Add|C[60]~59_combout\ & (!\Add|S[60]~11_combout\ & (!\Add|C[59]~58_combout\ $ (\Add|S[59]~10_combout\)))) # (\Add|C[60]~59_combout\ & (\Add|S[60]~11_combout\ & (!\Add|C[59]~58_combout\ $ 
-- (\Add|S[59]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[60]~59_combout\,
	datab => \Add|ALT_INV_S[60]~11_combout\,
	datac => \Add|ALT_INV_C[59]~58_combout\,
	datad => \Add|ALT_INV_S[59]~10_combout\,
	dataf => \ALT_INV_Equal0~17_combout\,
	combout => \Equal0~18_combout\);

-- Location: LABCELL_X32_Y27_N26
\Equal0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = ( \Add|S[62]~13_combout\ & ( (\Equal0~18_combout\ & (\Add|C[62]~61_combout\ & (!\Add|C[61]~60_combout\ $ (\Add|S[61]~12_combout\)))) ) ) # ( !\Add|S[62]~13_combout\ & ( (\Equal0~18_combout\ & (!\Add|C[62]~61_combout\ & 
-- (!\Add|C[61]~60_combout\ $ (\Add|S[61]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~18_combout\,
	datab => \Add|ALT_INV_C[61]~60_combout\,
	datac => \Add|ALT_INV_S[61]~12_combout\,
	datad => \Add|ALT_INV_C[62]~61_combout\,
	dataf => \Add|ALT_INV_S[62]~13_combout\,
	combout => \Equal0~19_combout\);

-- Location: MLABCELL_X44_Y25_N8
\Equal0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = ( \B[63]~input_o\ & ( (\Equal0~19_combout\ & (!\AddnSub~input_o\ $ (!\Add|C[63]~62_combout\ $ (\A[63]~input_o\)))) ) ) # ( !\B[63]~input_o\ & ( (\Equal0~19_combout\ & (!\AddnSub~input_o\ $ (!\Add|C[63]~62_combout\ $ 
-- (!\A[63]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000001001011000000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[63]~62_combout\,
	datac => \ALT_INV_A[63]~input_o\,
	datad => \ALT_INV_Equal0~19_combout\,
	dataf => \ALT_INV_B[63]~input_o\,
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


