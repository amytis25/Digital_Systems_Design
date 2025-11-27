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

-- DATE "11/12/2025 16:41:34"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
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
-- S[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \C[10]~115_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \G1[2]~0_combout\ : std_logic;
SIGNAL \C[11]~1_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \G1[3]~1_combout\ : std_logic;
SIGNAL \Gf[1]~0_combout\ : std_logic;
SIGNAL \G2~0_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \G1[4]~2_combout\ : std_logic;
SIGNAL \G3~0_combout\ : std_logic;
SIGNAL \P3[8]~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \C~3_combout\ : std_logic;
SIGNAL \G3~2_combout\ : std_logic;
SIGNAL \G1[5]~3_combout\ : std_logic;
SIGNAL \G3~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \G3~4_combout\ : std_logic;
SIGNAL \G3~3_combout\ : std_logic;
SIGNAL \C~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \G1[6]~4_combout\ : std_logic;
SIGNAL \Gf[6]~1_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \G3~5_combout\ : std_logic;
SIGNAL \G3~6_combout\ : std_logic;
SIGNAL \G1[7]~5_combout\ : std_logic;
SIGNAL \C~5_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \G3~7_combout\ : std_logic;
SIGNAL \G3~8_combout\ : std_logic;
SIGNAL \G1[8]~6_combout\ : std_logic;
SIGNAL \P2[8]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \C[25]~6_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \P2[9]~1_combout\ : std_logic;
SIGNAL \C[10]~7_combout\ : std_logic;
SIGNAL \G1[9]~7_combout\ : std_logic;
SIGNAL \G3~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \G1[10]~8_combout\ : std_logic;
SIGNAL \G3~10_combout\ : std_logic;
SIGNAL \G3~11_combout\ : std_logic;
SIGNAL \P2[10]~2_combout\ : std_logic;
SIGNAL \C[11]~8_combout\ : std_logic;
SIGNAL \C[27]~9_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \G3~12_combout\ : std_logic;
SIGNAL \P2[11]~3_combout\ : std_logic;
SIGNAL \C[12]~10_combout\ : std_logic;
SIGNAL \G1[11]~9_combout\ : std_logic;
SIGNAL \G3~13_combout\ : std_logic;
SIGNAL \C[36]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \G3~14_combout\ : std_logic;
SIGNAL \P2[12]~4_combout\ : std_logic;
SIGNAL \C[13]~12_combout\ : std_logic;
SIGNAL \G3~15_combout\ : std_logic;
SIGNAL \G1[12]~10_combout\ : std_logic;
SIGNAL \C[37]~13_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \G3~16_combout\ : std_logic;
SIGNAL \G3~17_combout\ : std_logic;
SIGNAL \P2[13]~5_combout\ : std_logic;
SIGNAL \G1[13]~11_combout\ : std_logic;
SIGNAL \C~14_combout\ : std_logic;
SIGNAL \G5~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \G1[14]~12_combout\ : std_logic;
SIGNAL \G3~18_combout\ : std_logic;
SIGNAL \G3~19_combout\ : std_logic;
SIGNAL \P2[14]~6_combout\ : std_logic;
SIGNAL \G5~1_combout\ : std_logic;
SIGNAL \C~15_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \G3~20_combout\ : std_logic;
SIGNAL \P2[15]~7_combout\ : std_logic;
SIGNAL \C~16_combout\ : std_logic;
SIGNAL \G3~21_combout\ : std_logic;
SIGNAL \G1[15]~13_combout\ : std_logic;
SIGNAL \G5~2_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \G1[16]~14_combout\ : std_logic;
SIGNAL \G3~22_combout\ : std_logic;
SIGNAL \G3~23_combout\ : std_logic;
SIGNAL \P2[16]~8_combout\ : std_logic;
SIGNAL \G4~0_combout\ : std_logic;
SIGNAL \C[17]~17_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \G3~24_combout\ : std_logic;
SIGNAL \G3~25_combout\ : std_logic;
SIGNAL \G1[17]~15_combout\ : std_logic;
SIGNAL \P2[17]~9_combout\ : std_logic;
SIGNAL \G4~1_combout\ : std_logic;
SIGNAL \C[18]~18_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \G3~26_combout\ : std_logic;
SIGNAL \G3~27_combout\ : std_logic;
SIGNAL \G1[18]~16_combout\ : std_logic;
SIGNAL \P2[18]~10_combout\ : std_logic;
SIGNAL \G4~2_combout\ : std_logic;
SIGNAL \G4~3_combout\ : std_logic;
SIGNAL \C[35]~19_combout\ : std_logic;
SIGNAL \C[19]~20_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \G3~28_combout\ : std_logic;
SIGNAL \P2[19]~11_combout\ : std_logic;
SIGNAL \G4~4_combout\ : std_logic;
SIGNAL \G3~29_combout\ : std_logic;
SIGNAL \G1[19]~17_combout\ : std_logic;
SIGNAL \C[20]~21_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \G3~30_combout\ : std_logic;
SIGNAL \P2[20]~12_combout\ : std_logic;
SIGNAL \G1[20]~18_combout\ : std_logic;
SIGNAL \G3~31_combout\ : std_logic;
SIGNAL \C[21]~22_combout\ : std_logic;
SIGNAL \C[21]~23_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \G3~32_combout\ : std_logic;
SIGNAL \G3~33_combout\ : std_logic;
SIGNAL \G1[21]~19_combout\ : std_logic;
SIGNAL \P2[21]~13_combout\ : std_logic;
SIGNAL \C[38]~24_combout\ : std_logic;
SIGNAL \G4~5_combout\ : std_logic;
SIGNAL \C[22]~25_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \G1[22]~20_combout\ : std_logic;
SIGNAL \G3~34_combout\ : std_logic;
SIGNAL \G3~35_combout\ : std_logic;
SIGNAL \P2[22]~14_combout\ : std_logic;
SIGNAL \C[39]~26_combout\ : std_logic;
SIGNAL \G4~6_combout\ : std_logic;
SIGNAL \C[23]~27_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \G1[23]~21_combout\ : std_logic;
SIGNAL \G3~36_combout\ : std_logic;
SIGNAL \P2[23]~15_combout\ : std_logic;
SIGNAL \G3~37_combout\ : std_logic;
SIGNAL \C[24]~28_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \G3~38_combout\ : std_logic;
SIGNAL \P2[24]~16_combout\ : std_logic;
SIGNAL \G1[24]~22_combout\ : std_logic;
SIGNAL \G3~39_combout\ : std_logic;
SIGNAL \C[41]~29_combout\ : std_logic;
SIGNAL \G4~7_combout\ : std_logic;
SIGNAL \C[25]~30_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \C[42]~31_combout\ : std_logic;
SIGNAL \G3~40_combout\ : std_logic;
SIGNAL \P2[25]~17_combout\ : std_logic;
SIGNAL \G4~8_combout\ : std_logic;
SIGNAL \G3~41_combout\ : std_logic;
SIGNAL \G1[25]~23_combout\ : std_logic;
SIGNAL \C[26]~32_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \G3~42_combout\ : std_logic;
SIGNAL \P2[26]~18_combout\ : std_logic;
SIGNAL \G3~43_combout\ : std_logic;
SIGNAL \G1[26]~24_combout\ : std_logic;
SIGNAL \G4~9_combout\ : std_logic;
SIGNAL \C[27]~33_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \G3~44_combout\ : std_logic;
SIGNAL \P2[27]~19_combout\ : std_logic;
SIGNAL \G4~10_combout\ : std_logic;
SIGNAL \G4~11_combout\ : std_logic;
SIGNAL \G1[27]~25_combout\ : std_logic;
SIGNAL \G3~45_combout\ : std_logic;
SIGNAL \P4[27]~0_combout\ : std_logic;
SIGNAL \C[28]~34_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \G1[28]~26_combout\ : std_logic;
SIGNAL \G3~46_combout\ : std_logic;
SIGNAL \P2[28]~20_combout\ : std_logic;
SIGNAL \G3~47_combout\ : std_logic;
SIGNAL \G4~12_combout\ : std_logic;
SIGNAL \G4~13_combout\ : std_logic;
SIGNAL \P4[28]~1_combout\ : std_logic;
SIGNAL \C[29]~35_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \G3~48_combout\ : std_logic;
SIGNAL \P2[29]~21_combout\ : std_logic;
SIGNAL \G4~14_combout\ : std_logic;
SIGNAL \G4~15_combout\ : std_logic;
SIGNAL \G3~49_combout\ : std_logic;
SIGNAL \G1[29]~27_combout\ : std_logic;
SIGNAL \P4[29]~2_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \G3~50_combout\ : std_logic;
SIGNAL \P2[30]~22_combout\ : std_logic;
SIGNAL \G4~16_combout\ : std_logic;
SIGNAL \P4[30]~3_combout\ : std_logic;
SIGNAL \G3~51_combout\ : std_logic;
SIGNAL \G1[30]~28_combout\ : std_logic;
SIGNAL \G4~17_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \G3~52_combout\ : std_logic;
SIGNAL \P2[31]~23_combout\ : std_logic;
SIGNAL \P4[31]~4_combout\ : std_logic;
SIGNAL \G3~53_combout\ : std_logic;
SIGNAL \G1[31]~29_combout\ : std_logic;
SIGNAL \G4~18_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \G3~54_combout\ : std_logic;
SIGNAL \P2[32]~24_combout\ : std_logic;
SIGNAL \P4[32]~5_combout\ : std_logic;
SIGNAL \C[33]~36_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \G4~19_combout\ : std_logic;
SIGNAL \G1[32]~30_combout\ : std_logic;
SIGNAL \G3~55_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \G3~56_combout\ : std_logic;
SIGNAL \P2[33]~25_combout\ : std_logic;
SIGNAL \P4[33]~6_combout\ : std_logic;
SIGNAL \G4~20_combout\ : std_logic;
SIGNAL \G3~57_combout\ : std_logic;
SIGNAL \G1[33]~31_combout\ : std_logic;
SIGNAL \C[34]~37_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \G3~58_combout\ : std_logic;
SIGNAL \G3~59_combout\ : std_logic;
SIGNAL \G1[34]~32_combout\ : std_logic;
SIGNAL \P2[34]~26_combout\ : std_logic;
SIGNAL \P4[34]~7_combout\ : std_logic;
SIGNAL \G4~21_combout\ : std_logic;
SIGNAL \C[35]~38_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \G3~60_combout\ : std_logic;
SIGNAL \P2[35]~27_combout\ : std_logic;
SIGNAL \G3~61_combout\ : std_logic;
SIGNAL \G1[35]~33_combout\ : std_logic;
SIGNAL \P4[35]~8_combout\ : std_logic;
SIGNAL \G4~22_combout\ : std_logic;
SIGNAL \C[36]~39_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \G3~62_combout\ : std_logic;
SIGNAL \P2[36]~28_combout\ : std_logic;
SIGNAL \G1[36]~34_combout\ : std_logic;
SIGNAL \G3~63_combout\ : std_logic;
SIGNAL \P4[36]~9_combout\ : std_logic;
SIGNAL \C[37]~41_combout\ : std_logic;
SIGNAL \C[37]~40_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \G1[37]~35_combout\ : std_logic;
SIGNAL \G3~64_combout\ : std_logic;
SIGNAL \G3~65_combout\ : std_logic;
SIGNAL \P2[37]~29_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \P4[37]~10_combout\ : std_logic;
SIGNAL \P4[37]~11_combout\ : std_logic;
SIGNAL \G4~23_combout\ : std_logic;
SIGNAL \C[38]~42_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \G3~66_combout\ : std_logic;
SIGNAL \G3~67_combout\ : std_logic;
SIGNAL \G1[38]~36_combout\ : std_logic;
SIGNAL \P2[38]~30_combout\ : std_logic;
SIGNAL \P4[38]~12_combout\ : std_logic;
SIGNAL \C[39]~43_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \P4[38]~13_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \G3~68_combout\ : std_logic;
SIGNAL \P2[39]~31_combout\ : std_logic;
SIGNAL \P4[39]~14_combout\ : std_logic;
SIGNAL \P4[39]~15_combout\ : std_logic;
SIGNAL \C[40]~44_combout\ : std_logic;
SIGNAL \G1[39]~37_combout\ : std_logic;
SIGNAL \G3~69_combout\ : std_logic;
SIGNAL \G4~24_combout\ : std_logic;
SIGNAL \C[40]~45_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \G3~70_combout\ : std_logic;
SIGNAL \P2[40]~32_combout\ : std_logic;
SIGNAL \G1[40]~38_combout\ : std_logic;
SIGNAL \G3~71_combout\ : std_logic;
SIGNAL \P4[40]~16_combout\ : std_logic;
SIGNAL \C[41]~46_combout\ : std_logic;
SIGNAL \G4~25_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \G3~72_combout\ : std_logic;
SIGNAL \P2[41]~33_combout\ : std_logic;
SIGNAL \G3~73_combout\ : std_logic;
SIGNAL \G1[41]~39_combout\ : std_logic;
SIGNAL \P4[41]~17_combout\ : std_logic;
SIGNAL \C[42]~47_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \G4~26_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \G3~74_combout\ : std_logic;
SIGNAL \P2[42]~34_combout\ : std_logic;
SIGNAL \P4[42]~18_combout\ : std_logic;
SIGNAL \C[43]~49_combout\ : std_logic;
SIGNAL \G3~75_combout\ : std_logic;
SIGNAL \G1[42]~40_combout\ : std_logic;
SIGNAL \C[43]~48_combout\ : std_logic;
SIGNAL \G4~27_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \G3~76_combout\ : std_logic;
SIGNAL \P2[43]~35_combout\ : std_logic;
SIGNAL \G4~28_combout\ : std_logic;
SIGNAL \G3~77_combout\ : std_logic;
SIGNAL \G1[43]~41_combout\ : std_logic;
SIGNAL \P4[43]~19_combout\ : std_logic;
SIGNAL \C[44]~50_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \G3~78_combout\ : std_logic;
SIGNAL \P2[44]~36_combout\ : std_logic;
SIGNAL \G4~29_combout\ : std_logic;
SIGNAL \P4[44]~20_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \G1[44]~42_combout\ : std_logic;
SIGNAL \G3~79_combout\ : std_logic;
SIGNAL \C[45]~51_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \G3~80_combout\ : std_logic;
SIGNAL \P2[45]~37_combout\ : std_logic;
SIGNAL \G4~30_combout\ : std_logic;
SIGNAL \P4[45]~21_combout\ : std_logic;
SIGNAL \G1[45]~43_combout\ : std_logic;
SIGNAL \G3~81_combout\ : std_logic;
SIGNAL \C[46]~52_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \G3~82_combout\ : std_logic;
SIGNAL \P2[46]~38_combout\ : std_logic;
SIGNAL \P4[46]~22_combout\ : std_logic;
SIGNAL \G3~83_combout\ : std_logic;
SIGNAL \G1[46]~44_combout\ : std_logic;
SIGNAL \G5~3_combout\ : std_logic;
SIGNAL \C[47]~53_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \G3~84_combout\ : std_logic;
SIGNAL \P2[47]~39_combout\ : std_logic;
SIGNAL \P4[47]~23_combout\ : std_logic;
SIGNAL \G3~85_combout\ : std_logic;
SIGNAL \G1[47]~45_combout\ : std_logic;
SIGNAL \G5~4_combout\ : std_logic;
SIGNAL \C[48]~54_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \G3~86_combout\ : std_logic;
SIGNAL \P2[48]~40_combout\ : std_logic;
SIGNAL \C[49]~55_combout\ : std_logic;
SIGNAL \G1[48]~46_combout\ : std_logic;
SIGNAL \G3~87_combout\ : std_logic;
SIGNAL \C[49]~58_combout\ : std_logic;
SIGNAL \C[49]~56_combout\ : std_logic;
SIGNAL \C[49]~57_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \G3~88_combout\ : std_logic;
SIGNAL \P2[49]~41_combout\ : std_logic;
SIGNAL \C[50]~59_combout\ : std_logic;
SIGNAL \G3~89_combout\ : std_logic;
SIGNAL \G1[49]~47_combout\ : std_logic;
SIGNAL \C[50]~62_combout\ : std_logic;
SIGNAL \C[50]~60_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \C[50]~61_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \G3~90_combout\ : std_logic;
SIGNAL \P2[50]~42_combout\ : std_logic;
SIGNAL \C[51]~63_combout\ : std_logic;
SIGNAL \G1[50]~48_combout\ : std_logic;
SIGNAL \G3~91_combout\ : std_logic;
SIGNAL \C[51]~64_combout\ : std_logic;
SIGNAL \C[51]~65_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \G3~92_combout\ : std_logic;
SIGNAL \P2[51]~43_combout\ : std_logic;
SIGNAL \C[52]~66_combout\ : std_logic;
SIGNAL \G3~93_combout\ : std_logic;
SIGNAL \G1[51]~49_combout\ : std_logic;
SIGNAL \C[52]~67_combout\ : std_logic;
SIGNAL \C[52]~68_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \G2~1_combout\ : std_logic;
SIGNAL \G1[52]~50_combout\ : std_logic;
SIGNAL \P2[52]~44_combout\ : std_logic;
SIGNAL \C[57]~69_combout\ : std_logic;
SIGNAL \C[53]~72_combout\ : std_logic;
SIGNAL \C[53]~71_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \C[53]~70_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \P2[53]~45_combout\ : std_logic;
SIGNAL \C[58]~73_combout\ : std_logic;
SIGNAL \C[54]~74_combout\ : std_logic;
SIGNAL \G2~2_combout\ : std_logic;
SIGNAL \G1[53]~51_combout\ : std_logic;
SIGNAL \C[54]~75_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \G2~3_combout\ : std_logic;
SIGNAL \P2[54]~46_combout\ : std_logic;
SIGNAL \C[55]~76_combout\ : std_logic;
SIGNAL \G1[54]~52_combout\ : std_logic;
SIGNAL \C[55]~78_combout\ : std_logic;
SIGNAL \C[55]~79_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \C[55]~77_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \G2~4_combout\ : std_logic;
SIGNAL \P2[55]~47_combout\ : std_logic;
SIGNAL \C[56]~80_combout\ : std_logic;
SIGNAL \C[56]~81_combout\ : std_logic;
SIGNAL \G1[55]~53_combout\ : std_logic;
SIGNAL \C[56]~82_combout\ : std_logic;
SIGNAL \C[56]~83_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \P2[56]~48_combout\ : std_logic;
SIGNAL \C[57]~84_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \G2~5_combout\ : std_logic;
SIGNAL \G1[56]~54_combout\ : std_logic;
SIGNAL \C[57]~85_combout\ : std_logic;
SIGNAL \C[57]~86_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \P2[57]~49_combout\ : std_logic;
SIGNAL \G2~6_combout\ : std_logic;
SIGNAL \G1[57]~55_combout\ : std_logic;
SIGNAL \C[58]~88_combout\ : std_logic;
SIGNAL \C[58]~89_combout\ : std_logic;
SIGNAL \C[58]~87_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \P2[58]~50_combout\ : std_logic;
SIGNAL \C[59]~90_combout\ : std_logic;
SIGNAL \G1[58]~56_combout\ : std_logic;
SIGNAL \C[59]~91_combout\ : std_logic;
SIGNAL \C[59]~92_combout\ : std_logic;
SIGNAL \C[59]~93_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \P2[59]~51_combout\ : std_logic;
SIGNAL \C[60]~94_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \G1[59]~57_combout\ : std_logic;
SIGNAL \C[60]~95_combout\ : std_logic;
SIGNAL \C[60]~96_combout\ : std_logic;
SIGNAL \C[60]~97_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \C[61]~98_combout\ : std_logic;
SIGNAL \G1[60]~58_combout\ : std_logic;
SIGNAL \C[61]~100_combout\ : std_logic;
SIGNAL \C[61]~101_combout\ : std_logic;
SIGNAL \C[61]~102_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \C[61]~99_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \C[62]~103_combout\ : std_logic;
SIGNAL \G1[61]~59_combout\ : std_logic;
SIGNAL \C[62]~105_combout\ : std_logic;
SIGNAL \C[62]~106_combout\ : std_logic;
SIGNAL \C[62]~107_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \C[62]~104_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \P4[62]~25_combout\ : std_logic;
SIGNAL \P4[62]~24_combout\ : std_logic;
SIGNAL \C[63]~109_combout\ : std_logic;
SIGNAL \P4[62]~26_combout\ : std_logic;
SIGNAL \G1[62]~60_combout\ : std_logic;
SIGNAL \C[63]~110_combout\ : std_logic;
SIGNAL \Gf~2_combout\ : std_logic;
SIGNAL \C~108_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Gf~3_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \P4[63]~28_combout\ : std_logic;
SIGNAL \P4[63]~27_combout\ : std_logic;
SIGNAL \Gf~4_combout\ : std_logic;
SIGNAL \Gf~5_combout\ : std_logic;
SIGNAL \G1[63]~61_combout\ : std_logic;
SIGNAL \C~112_combout\ : std_logic;
SIGNAL \P4[63]~29_combout\ : std_logic;
SIGNAL \C~113_combout\ : std_logic;
SIGNAL \C~111_combout\ : std_logic;
SIGNAL \C~114_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL P0 : std_logic_vector(63 DOWNTO 0);
SIGNAL P1 : std_logic_vector(63 DOWNTO 0);
SIGNAL C : std_logic_vector(64 DOWNTO 0);
SIGNAL Gf : std_logic_vector(63 DOWNTO 0);
SIGNAL G3 : std_logic_vector(63 DOWNTO 0);
SIGNAL ALT_INV_C : std_logic_vector(30 DOWNTO 4);
SIGNAL \ALT_INV_P2[9]~1_combout\ : std_logic;
SIGNAL \ALT_INV_C[27]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G1[12]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G3~16_combout\ : std_logic;
SIGNAL \ALT_INV_G3~5_combout\ : std_logic;
SIGNAL ALT_INV_G3 : std_logic_vector(55 DOWNTO 8);
SIGNAL \ALT_INV_C[36]~11_combout\ : std_logic;
SIGNAL \ALT_INV_G1[7]~5_combout\ : std_logic;
SIGNAL \ALT_INV_G3~12_combout\ : std_logic;
SIGNAL \ALT_INV_P2[12]~4_combout\ : std_logic;
SIGNAL \ALT_INV_P2[11]~3_combout\ : std_logic;
SIGNAL \ALT_INV_G1[8]~6_combout\ : std_logic;
SIGNAL \ALT_INV_C[10]~7_combout\ : std_logic;
SIGNAL \ALT_INV_P2[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G3~8_combout\ : std_logic;
SIGNAL \ALT_INV_G1[11]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G3~15_combout\ : std_logic;
SIGNAL \ALT_INV_C[37]~13_combout\ : std_logic;
SIGNAL \ALT_INV_P2[13]~5_combout\ : std_logic;
SIGNAL \ALT_INV_G5~0_combout\ : std_logic;
SIGNAL \ALT_INV_G1[13]~11_combout\ : std_logic;
SIGNAL \ALT_INV_C~15_combout\ : std_logic;
SIGNAL \ALT_INV_G3~18_combout\ : std_logic;
SIGNAL \ALT_INV_G3~20_combout\ : std_logic;
SIGNAL \ALT_INV_G3~10_combout\ : std_logic;
SIGNAL \ALT_INV_C[12]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G3~7_combout\ : std_logic;
SIGNAL \ALT_INV_G3~6_combout\ : std_logic;
SIGNAL \ALT_INV_G1[9]~7_combout\ : std_logic;
SIGNAL \ALT_INV_C[13]~12_combout\ : std_logic;
SIGNAL \ALT_INV_C~14_combout\ : std_logic;
SIGNAL ALT_INV_Gf : std_logic_vector(31 DOWNTO 2);
SIGNAL \ALT_INV_G3~14_combout\ : std_logic;
SIGNAL \ALT_INV_G3~11_combout\ : std_logic;
SIGNAL \ALT_INV_G3~17_combout\ : std_logic;
SIGNAL \ALT_INV_P2[14]~6_combout\ : std_logic;
SIGNAL \ALT_INV_C[25]~6_combout\ : std_logic;
SIGNAL \ALT_INV_C~5_combout\ : std_logic;
SIGNAL \ALT_INV_G5~1_combout\ : std_logic;
SIGNAL \ALT_INV_G1[14]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G3~19_combout\ : std_logic;
SIGNAL \ALT_INV_G3~9_combout\ : std_logic;
SIGNAL \ALT_INV_P2[10]~2_combout\ : std_logic;
SIGNAL \ALT_INV_C[11]~8_combout\ : std_logic;
SIGNAL \ALT_INV_G3~13_combout\ : std_logic;
SIGNAL \ALT_INV_G1[10]~8_combout\ : std_logic;
SIGNAL \ALT_INV_P2[22]~14_combout\ : std_logic;
SIGNAL \ALT_INV_G3~26_combout\ : std_logic;
SIGNAL \ALT_INV_G4~6_combout\ : std_logic;
SIGNAL \ALT_INV_G1[17]~15_combout\ : std_logic;
SIGNAL \ALT_INV_P2[16]~8_combout\ : std_logic;
SIGNAL \ALT_INV_G3~21_combout\ : std_logic;
SIGNAL \ALT_INV_C[39]~26_combout\ : std_logic;
SIGNAL \ALT_INV_G3~25_combout\ : std_logic;
SIGNAL \ALT_INV_G4~2_combout\ : std_logic;
SIGNAL \ALT_INV_G1[20]~18_combout\ : std_logic;
SIGNAL \ALT_INV_C[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_C[22]~25_combout\ : std_logic;
SIGNAL \ALT_INV_G1[22]~20_combout\ : std_logic;
SIGNAL \ALT_INV_P2[18]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G1[18]~16_combout\ : std_logic;
SIGNAL \ALT_INV_G3~22_combout\ : std_logic;
SIGNAL \ALT_INV_G4~0_combout\ : std_logic;
SIGNAL \ALT_INV_G3~27_combout\ : std_logic;
SIGNAL \ALT_INV_P2[21]~13_combout\ : std_logic;
SIGNAL \ALT_INV_C[19]~20_combout\ : std_logic;
SIGNAL \ALT_INV_G3~31_combout\ : std_logic;
SIGNAL \ALT_INV_G1[21]~19_combout\ : std_logic;
SIGNAL \ALT_INV_P2[15]~7_combout\ : std_logic;
SIGNAL \ALT_INV_P2[17]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G3~24_combout\ : std_logic;
SIGNAL \ALT_INV_C[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_G5~2_combout\ : std_logic;
SIGNAL \ALT_INV_C[35]~19_combout\ : std_logic;
SIGNAL \ALT_INV_G3~28_combout\ : std_logic;
SIGNAL \ALT_INV_G1[19]~17_combout\ : std_logic;
SIGNAL \ALT_INV_C~16_combout\ : std_logic;
SIGNAL \ALT_INV_G1[15]~13_combout\ : std_logic;
SIGNAL \ALT_INV_G1[16]~14_combout\ : std_logic;
SIGNAL \ALT_INV_G3~29_combout\ : std_logic;
SIGNAL \ALT_INV_C[20]~21_combout\ : std_logic;
SIGNAL \ALT_INV_P2[19]~11_combout\ : std_logic;
SIGNAL \ALT_INV_G3~30_combout\ : std_logic;
SIGNAL \ALT_INV_P2[20]~12_combout\ : std_logic;
SIGNAL \ALT_INV_G3~23_combout\ : std_logic;
SIGNAL \ALT_INV_G4~3_combout\ : std_logic;
SIGNAL \ALT_INV_C[21]~22_combout\ : std_logic;
SIGNAL \ALT_INV_G3~32_combout\ : std_logic;
SIGNAL \ALT_INV_G4~5_combout\ : std_logic;
SIGNAL \ALT_INV_C[38]~24_combout\ : std_logic;
SIGNAL \ALT_INV_G4~1_combout\ : std_logic;
SIGNAL \ALT_INV_C[21]~23_combout\ : std_logic;
SIGNAL \ALT_INV_G3~33_combout\ : std_logic;
SIGNAL \ALT_INV_G3~34_combout\ : std_logic;
SIGNAL \ALT_INV_G4~4_combout\ : std_logic;
SIGNAL ALT_INV_P0 : std_logic_vector(62 DOWNTO 2);
SIGNAL \ALT_INV_Gf[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_P3[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G3~0_combout\ : std_logic;
SIGNAL \ALT_INV_C[11]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G1[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G1[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G1[6]~4_combout\ : std_logic;
SIGNAL \ALT_INV_C~0_combout\ : std_logic;
SIGNAL \ALT_INV_C~3_combout\ : std_logic;
SIGNAL \ALT_INV_C~2_combout\ : std_logic;
SIGNAL \ALT_INV_G1[4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G1[5]~3_combout\ : std_logic;
SIGNAL \ALT_INV_G3~1_combout\ : std_logic;
SIGNAL \ALT_INV_G3~2_combout\ : std_logic;
SIGNAL \ALT_INV_G3~3_combout\ : std_logic;
SIGNAL \ALT_INV_C~4_combout\ : std_logic;
SIGNAL \ALT_INV_G2~0_combout\ : std_logic;
SIGNAL \ALT_INV_G3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Gf[6]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G4~9_combout\ : std_logic;
SIGNAL \ALT_INV_G1[24]~22_combout\ : std_logic;
SIGNAL \ALT_INV_C[29]~35_combout\ : std_logic;
SIGNAL \ALT_INV_P2[29]~21_combout\ : std_logic;
SIGNAL \ALT_INV_C[25]~30_combout\ : std_logic;
SIGNAL \ALT_INV_G3~40_combout\ : std_logic;
SIGNAL \ALT_INV_C[27]~33_combout\ : std_logic;
SIGNAL \ALT_INV_G1[27]~25_combout\ : std_logic;
SIGNAL \ALT_INV_P2[24]~16_combout\ : std_logic;
SIGNAL \ALT_INV_C[26]~32_combout\ : std_logic;
SIGNAL \ALT_INV_G3~44_combout\ : std_logic;
SIGNAL \ALT_INV_G3~41_combout\ : std_logic;
SIGNAL \ALT_INV_G4~10_combout\ : std_logic;
SIGNAL \ALT_INV_G4~7_combout\ : std_logic;
SIGNAL \ALT_INV_G3~35_combout\ : std_logic;
SIGNAL \ALT_INV_G3~39_combout\ : std_logic;
SIGNAL \ALT_INV_G1[26]~24_combout\ : std_logic;
SIGNAL \ALT_INV_P4[27]~0_combout\ : std_logic;
SIGNAL \ALT_INV_G4~13_combout\ : std_logic;
SIGNAL \ALT_INV_P4[29]~2_combout\ : std_logic;
SIGNAL \ALT_INV_G4~15_combout\ : std_logic;
SIGNAL \ALT_INV_P2[25]~17_combout\ : std_logic;
SIGNAL \ALT_INV_G3~43_combout\ : std_logic;
SIGNAL \ALT_INV_C[23]~27_combout\ : std_logic;
SIGNAL \ALT_INV_G3~36_combout\ : std_logic;
SIGNAL \ALT_INV_G3~37_combout\ : std_logic;
SIGNAL \ALT_INV_P2[26]~18_combout\ : std_logic;
SIGNAL \ALT_INV_C[28]~34_combout\ : std_logic;
SIGNAL \ALT_INV_G4~12_combout\ : std_logic;
SIGNAL \ALT_INV_G1[28]~26_combout\ : std_logic;
SIGNAL \ALT_INV_G4~8_combout\ : std_logic;
SIGNAL \ALT_INV_G3~47_combout\ : std_logic;
SIGNAL \ALT_INV_G4~14_combout\ : std_logic;
SIGNAL \ALT_INV_G1[29]~27_combout\ : std_logic;
SIGNAL \ALT_INV_P2[27]~19_combout\ : std_logic;
SIGNAL \ALT_INV_G1[23]~21_combout\ : std_logic;
SIGNAL \ALT_INV_G1[25]~23_combout\ : std_logic;
SIGNAL \ALT_INV_C[24]~28_combout\ : std_logic;
SIGNAL \ALT_INV_C[42]~31_combout\ : std_logic;
SIGNAL \ALT_INV_C[41]~29_combout\ : std_logic;
SIGNAL \ALT_INV_G3~42_combout\ : std_logic;
SIGNAL \ALT_INV_G3~45_combout\ : std_logic;
SIGNAL \ALT_INV_G3~38_combout\ : std_logic;
SIGNAL \ALT_INV_G3~46_combout\ : std_logic;
SIGNAL \ALT_INV_P2[28]~20_combout\ : std_logic;
SIGNAL \ALT_INV_G4~11_combout\ : std_logic;
SIGNAL \ALT_INV_P2[23]~15_combout\ : std_logic;
SIGNAL \ALT_INV_P4[28]~1_combout\ : std_logic;
SIGNAL \ALT_INV_G3~48_combout\ : std_logic;
SIGNAL \ALT_INV_P2[36]~28_combout\ : std_logic;
SIGNAL \ALT_INV_P4[36]~9_combout\ : std_logic;
SIGNAL \ALT_INV_G1[31]~29_combout\ : std_logic;
SIGNAL \ALT_INV_G4~19_combout\ : std_logic;
SIGNAL \ALT_INV_G3~60_combout\ : std_logic;
SIGNAL \ALT_INV_G3~53_combout\ : std_logic;
SIGNAL \ALT_INV_G1[35]~33_combout\ : std_logic;
SIGNAL \ALT_INV_C[37]~40_combout\ : std_logic;
SIGNAL \ALT_INV_G1[36]~34_combout\ : std_logic;
SIGNAL \ALT_INV_G3~52_combout\ : std_logic;
SIGNAL \ALT_INV_G1[32]~30_combout\ : std_logic;
SIGNAL \ALT_INV_G4~17_combout\ : std_logic;
SIGNAL \ALT_INV_P4[31]~4_combout\ : std_logic;
SIGNAL \ALT_INV_P2[32]~24_combout\ : std_logic;
SIGNAL \ALT_INV_G4~16_combout\ : std_logic;
SIGNAL \ALT_INV_G1[33]~31_combout\ : std_logic;
SIGNAL \ALT_INV_G1[34]~32_combout\ : std_logic;
SIGNAL \ALT_INV_G3~59_combout\ : std_logic;
SIGNAL \ALT_INV_P2[35]~27_combout\ : std_logic;
SIGNAL \ALT_INV_G3~50_combout\ : std_logic;
SIGNAL \ALT_INV_P4[32]~5_combout\ : std_logic;
SIGNAL \ALT_INV_G3~57_combout\ : std_logic;
SIGNAL \ALT_INV_P2[34]~26_combout\ : std_logic;
SIGNAL \ALT_INV_G4~21_combout\ : std_logic;
SIGNAL \ALT_INV_G3~51_combout\ : std_logic;
SIGNAL \ALT_INV_G1[30]~28_combout\ : std_logic;
SIGNAL \ALT_INV_C[36]~39_combout\ : std_logic;
SIGNAL \ALT_INV_C[35]~38_combout\ : std_logic;
SIGNAL \ALT_INV_G3~55_combout\ : std_logic;
SIGNAL \ALT_INV_G3~58_combout\ : std_logic;
SIGNAL \ALT_INV_P2[30]~22_combout\ : std_logic;
SIGNAL \ALT_INV_C[33]~36_combout\ : std_logic;
SIGNAL \ALT_INV_P4[33]~6_combout\ : std_logic;
SIGNAL \ALT_INV_C[34]~37_combout\ : std_logic;
SIGNAL \ALT_INV_P2[31]~23_combout\ : std_logic;
SIGNAL \ALT_INV_G3~49_combout\ : std_logic;
SIGNAL \ALT_INV_P4[30]~3_combout\ : std_logic;
SIGNAL \ALT_INV_G4~18_combout\ : std_logic;
SIGNAL \ALT_INV_G3~54_combout\ : std_logic;
SIGNAL \ALT_INV_P2[33]~25_combout\ : std_logic;
SIGNAL \ALT_INV_P4[34]~7_combout\ : std_logic;
SIGNAL \ALT_INV_P4[35]~8_combout\ : std_logic;
SIGNAL \ALT_INV_G4~22_combout\ : std_logic;
SIGNAL \ALT_INV_G3~56_combout\ : std_logic;
SIGNAL \ALT_INV_G3~61_combout\ : std_logic;
SIGNAL \ALT_INV_G4~20_combout\ : std_logic;
SIGNAL \ALT_INV_G3~62_combout\ : std_logic;
SIGNAL \ALT_INV_P4[40]~16_combout\ : std_logic;
SIGNAL \ALT_INV_G4~26_combout\ : std_logic;
SIGNAL \ALT_INV_G1[41]~39_combout\ : std_logic;
SIGNAL \ALT_INV_C[42]~47_combout\ : std_logic;
SIGNAL \ALT_INV_G1[37]~35_combout\ : std_logic;
SIGNAL \ALT_INV_P4[39]~15_combout\ : std_logic;
SIGNAL \ALT_INV_P2[42]~34_combout\ : std_logic;
SIGNAL \ALT_INV_G1[39]~37_combout\ : std_logic;
SIGNAL \ALT_INV_G4~24_combout\ : std_logic;
SIGNAL \ALT_INV_G4~27_combout\ : std_logic;
SIGNAL \ALT_INV_P2[41]~33_combout\ : std_logic;
SIGNAL \ALT_INV_G3~73_combout\ : std_logic;
SIGNAL \ALT_INV_G1[40]~38_combout\ : std_logic;
SIGNAL \ALT_INV_G3~75_combout\ : std_logic;
SIGNAL \ALT_INV_P2[37]~29_combout\ : std_logic;
SIGNAL \ALT_INV_G3~70_combout\ : std_logic;
SIGNAL \ALT_INV_C[41]~46_combout\ : std_logic;
SIGNAL \ALT_INV_P4[41]~17_combout\ : std_logic;
SIGNAL \ALT_INV_G1[38]~36_combout\ : std_logic;
SIGNAL \ALT_INV_G3~69_combout\ : std_logic;
SIGNAL \ALT_INV_C[43]~49_combout\ : std_logic;
SIGNAL \ALT_INV_G3~76_combout\ : std_logic;
SIGNAL \ALT_INV_G3~66_combout\ : std_logic;
SIGNAL \ALT_INV_C[40]~45_combout\ : std_logic;
SIGNAL \ALT_INV_P4[42]~18_combout\ : std_logic;
SIGNAL \ALT_INV_P2[43]~35_combout\ : std_logic;
SIGNAL \ALT_INV_C[37]~41_combout\ : std_logic;
SIGNAL \ALT_INV_G3~64_combout\ : std_logic;
SIGNAL \ALT_INV_G3~71_combout\ : std_logic;
SIGNAL \ALT_INV_G3~72_combout\ : std_logic;
SIGNAL \ALT_INV_G1[42]~40_combout\ : std_logic;
SIGNAL \ALT_INV_G4~23_combout\ : std_logic;
SIGNAL \ALT_INV_P4[37]~10_combout\ : std_logic;
SIGNAL \ALT_INV_G3~68_combout\ : std_logic;
SIGNAL \ALT_INV_P4[39]~14_combout\ : std_logic;
SIGNAL \ALT_INV_C[40]~44_combout\ : std_logic;
SIGNAL \ALT_INV_C[39]~43_combout\ : std_logic;
SIGNAL \ALT_INV_G3~74_combout\ : std_logic;
SIGNAL \ALT_INV_C[43]~48_combout\ : std_logic;
SIGNAL \ALT_INV_G3~65_combout\ : std_logic;
SIGNAL \ALT_INV_P2[40]~32_combout\ : std_logic;
SIGNAL \ALT_INV_P4[38]~13_combout\ : std_logic;
SIGNAL \ALT_INV_G3~67_combout\ : std_logic;
SIGNAL \ALT_INV_G4~25_combout\ : std_logic;
SIGNAL \ALT_INV_P4[38]~12_combout\ : std_logic;
SIGNAL \ALT_INV_P2[38]~30_combout\ : std_logic;
SIGNAL \ALT_INV_G3~63_combout\ : std_logic;
SIGNAL \ALT_INV_C[38]~42_combout\ : std_logic;
SIGNAL \ALT_INV_P4[37]~11_combout\ : std_logic;
SIGNAL \ALT_INV_P2[39]~31_combout\ : std_logic;
SIGNAL \ALT_INV_G4~29_combout\ : std_logic;
SIGNAL \ALT_INV_G5~3_combout\ : std_logic;
SIGNAL \ALT_INV_G4~28_combout\ : std_logic;
SIGNAL \ALT_INV_P4[43]~19_combout\ : std_logic;
SIGNAL \ALT_INV_G1[45]~43_combout\ : std_logic;
SIGNAL \ALT_INV_G3~81_combout\ : std_logic;
SIGNAL \ALT_INV_C[49]~56_combout\ : std_logic;
SIGNAL \ALT_INV_P2[48]~40_combout\ : std_logic;
SIGNAL \ALT_INV_P2[49]~41_combout\ : std_logic;
SIGNAL \ALT_INV_C[50]~59_combout\ : std_logic;
SIGNAL \ALT_INV_G1[43]~41_combout\ : std_logic;
SIGNAL \ALT_INV_G1[49]~47_combout\ : std_logic;
SIGNAL \ALT_INV_G3~89_combout\ : std_logic;
SIGNAL \ALT_INV_C[50]~62_combout\ : std_logic;
SIGNAL \ALT_INV_G3~87_combout\ : std_logic;
SIGNAL \ALT_INV_G3~88_combout\ : std_logic;
SIGNAL \ALT_INV_P2[46]~38_combout\ : std_logic;
SIGNAL \ALT_INV_G3~85_combout\ : std_logic;
SIGNAL \ALT_INV_C[45]~51_combout\ : std_logic;
SIGNAL \ALT_INV_G3~90_combout\ : std_logic;
SIGNAL \ALT_INV_G1[44]~42_combout\ : std_logic;
SIGNAL \ALT_INV_C[49]~58_combout\ : std_logic;
SIGNAL \ALT_INV_P2[44]~36_combout\ : std_logic;
SIGNAL \ALT_INV_G3~77_combout\ : std_logic;
SIGNAL \ALT_INV_G4~30_combout\ : std_logic;
SIGNAL \ALT_INV_P4[45]~21_combout\ : std_logic;
SIGNAL \ALT_INV_C[46]~52_combout\ : std_logic;
SIGNAL \ALT_INV_G3~83_combout\ : std_logic;
SIGNAL \ALT_INV_G3~84_combout\ : std_logic;
SIGNAL \ALT_INV_P2[47]~39_combout\ : std_logic;
SIGNAL \ALT_INV_C[48]~54_combout\ : std_logic;
SIGNAL \ALT_INV_C[44]~50_combout\ : std_logic;
SIGNAL \ALT_INV_P4[47]~23_combout\ : std_logic;
SIGNAL \ALT_INV_C[49]~57_combout\ : std_logic;
SIGNAL \ALT_INV_G3~78_combout\ : std_logic;
SIGNAL \ALT_INV_G3~80_combout\ : std_logic;
SIGNAL \ALT_INV_G3~82_combout\ : std_logic;
SIGNAL \ALT_INV_P4[44]~20_combout\ : std_logic;
SIGNAL \ALT_INV_G3~79_combout\ : std_logic;
SIGNAL \ALT_INV_C[47]~53_combout\ : std_logic;
SIGNAL \ALT_INV_G1[47]~45_combout\ : std_logic;
SIGNAL \ALT_INV_G1[48]~46_combout\ : std_logic;
SIGNAL \ALT_INV_P4[46]~22_combout\ : std_logic;
SIGNAL \ALT_INV_G3~86_combout\ : std_logic;
SIGNAL \ALT_INV_C[49]~55_combout\ : std_logic;
SIGNAL \ALT_INV_G1[46]~44_combout\ : std_logic;
SIGNAL \ALT_INV_G5~4_combout\ : std_logic;
SIGNAL \ALT_INV_C[50]~60_combout\ : std_logic;
SIGNAL \ALT_INV_C[50]~61_combout\ : std_logic;
SIGNAL \ALT_INV_P2[45]~37_combout\ : std_logic;
SIGNAL \ALT_INV_G2~3_combout\ : std_logic;
SIGNAL \ALT_INV_P2[54]~46_combout\ : std_logic;
SIGNAL \ALT_INV_C[51]~63_combout\ : std_logic;
SIGNAL \ALT_INV_G1[54]~52_combout\ : std_logic;
SIGNAL \ALT_INV_C[56]~81_combout\ : std_logic;
SIGNAL \ALT_INV_C[53]~71_combout\ : std_logic;
SIGNAL \ALT_INV_C[56]~82_combout\ : std_logic;
SIGNAL \ALT_INV_C[52]~67_combout\ : std_logic;
SIGNAL \ALT_INV_C[55]~76_combout\ : std_logic;
SIGNAL \ALT_INV_G3~91_combout\ : std_logic;
SIGNAL \ALT_INV_G1[55]~53_combout\ : std_logic;
SIGNAL \ALT_INV_C[58]~73_combout\ : std_logic;
SIGNAL \ALT_INV_P2[53]~45_combout\ : std_logic;
SIGNAL \ALT_INV_C[51]~64_combout\ : std_logic;
SIGNAL \ALT_INV_C[52]~66_combout\ : std_logic;
SIGNAL \ALT_INV_G1[51]~49_combout\ : std_logic;
SIGNAL \ALT_INV_P2[52]~44_combout\ : std_logic;
SIGNAL \ALT_INV_C[53]~70_combout\ : std_logic;
SIGNAL \ALT_INV_P2[56]~48_combout\ : std_logic;
SIGNAL \ALT_INV_C[57]~84_combout\ : std_logic;
SIGNAL \ALT_INV_G1[56]~54_combout\ : std_logic;
SIGNAL \ALT_INV_G2~5_combout\ : std_logic;
SIGNAL \ALT_INV_C[57]~85_combout\ : std_logic;
SIGNAL \ALT_INV_C[57]~86_combout\ : std_logic;
SIGNAL \ALT_INV_C[55]~78_combout\ : std_logic;
SIGNAL \ALT_INV_P2[57]~49_combout\ : std_logic;
SIGNAL \ALT_INV_C[55]~77_combout\ : std_logic;
SIGNAL \ALT_INV_C[58]~87_combout\ : std_logic;
SIGNAL \ALT_INV_G1[50]~48_combout\ : std_logic;
SIGNAL \ALT_INV_G1[57]~55_combout\ : std_logic;
SIGNAL \ALT_INV_C[56]~83_combout\ : std_logic;
SIGNAL \ALT_INV_P2[55]~47_combout\ : std_logic;
SIGNAL \ALT_INV_G2~4_combout\ : std_logic;
SIGNAL \ALT_INV_C[56]~80_combout\ : std_logic;
SIGNAL \ALT_INV_C[51]~65_combout\ : std_logic;
SIGNAL \ALT_INV_P2[51]~43_combout\ : std_logic;
SIGNAL \ALT_INV_G2~1_combout\ : std_logic;
SIGNAL \ALT_INV_P2[50]~42_combout\ : std_logic;
SIGNAL \ALT_INV_G3~92_combout\ : std_logic;
SIGNAL \ALT_INV_C[52]~68_combout\ : std_logic;
SIGNAL \ALT_INV_C[54]~74_combout\ : std_logic;
SIGNAL \ALT_INV_C[53]~72_combout\ : std_logic;
SIGNAL \ALT_INV_G1[52]~50_combout\ : std_logic;
SIGNAL \ALT_INV_G1[53]~51_combout\ : std_logic;
SIGNAL \ALT_INV_C[55]~79_combout\ : std_logic;
SIGNAL \ALT_INV_G2~2_combout\ : std_logic;
SIGNAL \ALT_INV_C[57]~69_combout\ : std_logic;
SIGNAL \ALT_INV_C[54]~75_combout\ : std_logic;
SIGNAL \ALT_INV_G3~93_combout\ : std_logic;
SIGNAL ALT_INV_P1 : std_logic_vector(61 DOWNTO 58);
SIGNAL \ALT_INV_C[59]~92_combout\ : std_logic;
SIGNAL \ALT_INV_G2~6_combout\ : std_logic;
SIGNAL \ALT_INV_C[62]~105_combout\ : std_logic;
SIGNAL \ALT_INV_P2[59]~51_combout\ : std_logic;
SIGNAL \ALT_INV_C[61]~102_combout\ : std_logic;
SIGNAL \ALT_INV_C[10]~115_combout\ : std_logic;
SIGNAL \ALT_INV_G1[59]~57_combout\ : std_logic;
SIGNAL \ALT_INV_C[62]~106_combout\ : std_logic;
SIGNAL \ALT_INV_Gf~2_combout\ : std_logic;
SIGNAL \ALT_INV_C~108_combout\ : std_logic;
SIGNAL \ALT_INV_G1[62]~60_combout\ : std_logic;
SIGNAL \ALT_INV_C[59]~90_combout\ : std_logic;
SIGNAL \ALT_INV_C[60]~97_combout\ : std_logic;
SIGNAL \ALT_INV_P4[63]~27_combout\ : std_logic;
SIGNAL \ALT_INV_C[60]~95_combout\ : std_logic;
SIGNAL \ALT_INV_C[61]~100_combout\ : std_logic;
SIGNAL \ALT_INV_C[58]~88_combout\ : std_logic;
SIGNAL \ALT_INV_C[62]~104_combout\ : std_logic;
SIGNAL \ALT_INV_G1[58]~56_combout\ : std_logic;
SIGNAL \ALT_INV_C[60]~94_combout\ : std_logic;
SIGNAL \ALT_INV_C[62]~107_combout\ : std_logic;
SIGNAL \ALT_INV_P4[62]~26_combout\ : std_logic;
SIGNAL \ALT_INV_C[63]~110_combout\ : std_logic;
SIGNAL \ALT_INV_C[59]~93_combout\ : std_logic;
SIGNAL \ALT_INV_P2[58]~50_combout\ : std_logic;
SIGNAL \ALT_INV_P4[63]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Gf~4_combout\ : std_logic;
SIGNAL \ALT_INV_C~111_combout\ : std_logic;
SIGNAL \ALT_INV_G1[63]~61_combout\ : std_logic;
SIGNAL \ALT_INV_C[60]~96_combout\ : std_logic;
SIGNAL \ALT_INV_C[58]~89_combout\ : std_logic;
SIGNAL \ALT_INV_C[59]~91_combout\ : std_logic;
SIGNAL \ALT_INV_C[61]~101_combout\ : std_logic;
SIGNAL \ALT_INV_C[62]~103_combout\ : std_logic;
SIGNAL \ALT_INV_P4[62]~24_combout\ : std_logic;
SIGNAL \ALT_INV_C~112_combout\ : std_logic;
SIGNAL \ALT_INV_C[61]~98_combout\ : std_logic;
SIGNAL \ALT_INV_Gf~3_combout\ : std_logic;
SIGNAL \ALT_INV_P4[62]~25_combout\ : std_logic;
SIGNAL \ALT_INV_C[63]~109_combout\ : std_logic;
SIGNAL \ALT_INV_C~113_combout\ : std_logic;
SIGNAL \ALT_INV_G1[60]~58_combout\ : std_logic;
SIGNAL \ALT_INV_G1[61]~59_combout\ : std_logic;
SIGNAL \ALT_INV_Gf~5_combout\ : std_logic;
SIGNAL \ALT_INV_C[61]~99_combout\ : std_logic;
SIGNAL \ALT_INV_P4[63]~29_combout\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;

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
ALT_INV_C(15) <= NOT C(15);
\ALT_INV_P2[9]~1_combout\ <= NOT \P2[9]~1_combout\;
\ALT_INV_C[27]~9_combout\ <= NOT \C[27]~9_combout\;
\ALT_INV_G1[12]~10_combout\ <= NOT \G1[12]~10_combout\;
\ALT_INV_G3~16_combout\ <= NOT \G3~16_combout\;
\ALT_INV_G3~5_combout\ <= NOT \G3~5_combout\;
ALT_INV_G3(9) <= NOT G3(9);
ALT_INV_G3(11) <= NOT G3(11);
\ALT_INV_C[36]~11_combout\ <= NOT \C[36]~11_combout\;
\ALT_INV_G1[7]~5_combout\ <= NOT \G1[7]~5_combout\;
\ALT_INV_G3~12_combout\ <= NOT \G3~12_combout\;
\ALT_INV_P2[12]~4_combout\ <= NOT \P2[12]~4_combout\;
\ALT_INV_P2[11]~3_combout\ <= NOT \P2[11]~3_combout\;
\ALT_INV_G1[8]~6_combout\ <= NOT \G1[8]~6_combout\;
\ALT_INV_C[10]~7_combout\ <= NOT \C[10]~7_combout\;
\ALT_INV_P2[8]~0_combout\ <= NOT \P2[8]~0_combout\;
\ALT_INV_G3~8_combout\ <= NOT \G3~8_combout\;
\ALT_INV_G1[11]~9_combout\ <= NOT \G1[11]~9_combout\;
\ALT_INV_G3~15_combout\ <= NOT \G3~15_combout\;
ALT_INV_G3(12) <= NOT G3(12);
\ALT_INV_C[37]~13_combout\ <= NOT \C[37]~13_combout\;
ALT_INV_G3(10) <= NOT G3(10);
\ALT_INV_P2[13]~5_combout\ <= NOT \P2[13]~5_combout\;
\ALT_INV_G5~0_combout\ <= NOT \G5~0_combout\;
\ALT_INV_G1[13]~11_combout\ <= NOT \G1[13]~11_combout\;
\ALT_INV_C~15_combout\ <= NOT \C~15_combout\;
\ALT_INV_G3~18_combout\ <= NOT \G3~18_combout\;
\ALT_INV_G3~20_combout\ <= NOT \G3~20_combout\;
ALT_INV_C(8) <= NOT C(8);
\ALT_INV_G3~10_combout\ <= NOT \G3~10_combout\;
\ALT_INV_C[12]~10_combout\ <= NOT \C[12]~10_combout\;
\ALT_INV_G3~7_combout\ <= NOT \G3~7_combout\;
\ALT_INV_G3~6_combout\ <= NOT \G3~6_combout\;
\ALT_INV_G1[9]~7_combout\ <= NOT \G1[9]~7_combout\;
\ALT_INV_C[13]~12_combout\ <= NOT \C[13]~12_combout\;
\ALT_INV_C~14_combout\ <= NOT \C~14_combout\;
ALT_INV_G3(8) <= NOT G3(8);
ALT_INV_G3(13) <= NOT G3(13);
ALT_INV_C(14) <= NOT C(14);
ALT_INV_Gf(7) <= NOT Gf(7);
\ALT_INV_G3~14_combout\ <= NOT \G3~14_combout\;
\ALT_INV_G3~11_combout\ <= NOT \G3~11_combout\;
\ALT_INV_G3~17_combout\ <= NOT \G3~17_combout\;
\ALT_INV_P2[14]~6_combout\ <= NOT \P2[14]~6_combout\;
\ALT_INV_C[25]~6_combout\ <= NOT \C[25]~6_combout\;
\ALT_INV_C~5_combout\ <= NOT \C~5_combout\;
\ALT_INV_G5~1_combout\ <= NOT \G5~1_combout\;
\ALT_INV_G1[14]~12_combout\ <= NOT \G1[14]~12_combout\;
\ALT_INV_G3~19_combout\ <= NOT \G3~19_combout\;
\ALT_INV_G3~9_combout\ <= NOT \G3~9_combout\;
\ALT_INV_P2[10]~2_combout\ <= NOT \P2[10]~2_combout\;
\ALT_INV_C[11]~8_combout\ <= NOT \C[11]~8_combout\;
\ALT_INV_G3~13_combout\ <= NOT \G3~13_combout\;
ALT_INV_G3(14) <= NOT G3(14);
\ALT_INV_G1[10]~8_combout\ <= NOT \G1[10]~8_combout\;
\ALT_INV_P2[22]~14_combout\ <= NOT \P2[22]~14_combout\;
\ALT_INV_G3~26_combout\ <= NOT \G3~26_combout\;
\ALT_INV_G4~6_combout\ <= NOT \G4~6_combout\;
\ALT_INV_G1[17]~15_combout\ <= NOT \G1[17]~15_combout\;
\ALT_INV_P2[16]~8_combout\ <= NOT \P2[16]~8_combout\;
\ALT_INV_G3~21_combout\ <= NOT \G3~21_combout\;
ALT_INV_G3(18) <= NOT G3(18);
\ALT_INV_C[39]~26_combout\ <= NOT \C[39]~26_combout\;
ALT_INV_G3(16) <= NOT G3(16);
\ALT_INV_G3~25_combout\ <= NOT \G3~25_combout\;
\ALT_INV_G4~2_combout\ <= NOT \G4~2_combout\;
\ALT_INV_G1[20]~18_combout\ <= NOT \G1[20]~18_combout\;
\ALT_INV_C[17]~17_combout\ <= NOT \C[17]~17_combout\;
ALT_INV_G3(20) <= NOT G3(20);
\ALT_INV_C[22]~25_combout\ <= NOT \C[22]~25_combout\;
\ALT_INV_G1[22]~20_combout\ <= NOT \G1[22]~20_combout\;
\ALT_INV_P2[18]~10_combout\ <= NOT \P2[18]~10_combout\;
\ALT_INV_G1[18]~16_combout\ <= NOT \G1[18]~16_combout\;
\ALT_INV_G3~22_combout\ <= NOT \G3~22_combout\;
\ALT_INV_G4~0_combout\ <= NOT \G4~0_combout\;
\ALT_INV_G3~27_combout\ <= NOT \G3~27_combout\;
\ALT_INV_P2[21]~13_combout\ <= NOT \P2[21]~13_combout\;
\ALT_INV_C[19]~20_combout\ <= NOT \C[19]~20_combout\;
\ALT_INV_G3~31_combout\ <= NOT \G3~31_combout\;
ALT_INV_G3(15) <= NOT G3(15);
\ALT_INV_G1[21]~19_combout\ <= NOT \G1[21]~19_combout\;
\ALT_INV_P2[15]~7_combout\ <= NOT \P2[15]~7_combout\;
\ALT_INV_P2[17]~9_combout\ <= NOT \P2[17]~9_combout\;
\ALT_INV_G3~24_combout\ <= NOT \G3~24_combout\;
\ALT_INV_C[18]~18_combout\ <= NOT \C[18]~18_combout\;
\ALT_INV_G5~2_combout\ <= NOT \G5~2_combout\;
\ALT_INV_C[35]~19_combout\ <= NOT \C[35]~19_combout\;
\ALT_INV_G3~28_combout\ <= NOT \G3~28_combout\;
\ALT_INV_G1[19]~17_combout\ <= NOT \G1[19]~17_combout\;
\ALT_INV_C~16_combout\ <= NOT \C~16_combout\;
\ALT_INV_G1[15]~13_combout\ <= NOT \G1[15]~13_combout\;
\ALT_INV_G1[16]~14_combout\ <= NOT \G1[16]~14_combout\;
ALT_INV_C(16) <= NOT C(16);
\ALT_INV_G3~29_combout\ <= NOT \G3~29_combout\;
ALT_INV_G3(19) <= NOT G3(19);
\ALT_INV_C[20]~21_combout\ <= NOT \C[20]~21_combout\;
\ALT_INV_P2[19]~11_combout\ <= NOT \P2[19]~11_combout\;
\ALT_INV_G3~30_combout\ <= NOT \G3~30_combout\;
\ALT_INV_P2[20]~12_combout\ <= NOT \P2[20]~12_combout\;
\ALT_INV_G3~23_combout\ <= NOT \G3~23_combout\;
\ALT_INV_G4~3_combout\ <= NOT \G4~3_combout\;
\ALT_INV_C[21]~22_combout\ <= NOT \C[21]~22_combout\;
\ALT_INV_G3~32_combout\ <= NOT \G3~32_combout\;
\ALT_INV_G4~5_combout\ <= NOT \G4~5_combout\;
\ALT_INV_C[38]~24_combout\ <= NOT \C[38]~24_combout\;
\ALT_INV_G4~1_combout\ <= NOT \G4~1_combout\;
ALT_INV_G3(17) <= NOT G3(17);
\ALT_INV_C[21]~23_combout\ <= NOT \C[21]~23_combout\;
\ALT_INV_G3~33_combout\ <= NOT \G3~33_combout\;
ALT_INV_G3(21) <= NOT G3(21);
\ALT_INV_G3~34_combout\ <= NOT \G3~34_combout\;
\ALT_INV_G4~4_combout\ <= NOT \G4~4_combout\;
ALT_INV_P0(3) <= NOT P0(3);
ALT_INV_P0(2) <= NOT P0(2);
\ALT_INV_Gf[1]~0_combout\ <= NOT \Gf[1]~0_combout\;
\ALT_INV_P3[8]~0_combout\ <= NOT \P3[8]~0_combout\;
ALT_INV_P0(5) <= NOT P0(5);
ALT_INV_C(4) <= NOT C(4);
\ALT_INV_G3~0_combout\ <= NOT \G3~0_combout\;
\ALT_INV_C[11]~1_combout\ <= NOT \C[11]~1_combout\;
\ALT_INV_G1[2]~0_combout\ <= NOT \G1[2]~0_combout\;
\ALT_INV_G1[3]~1_combout\ <= NOT \G1[3]~1_combout\;
\ALT_INV_G1[6]~4_combout\ <= NOT \G1[6]~4_combout\;
\ALT_INV_C~0_combout\ <= NOT \C~0_combout\;
\ALT_INV_C~3_combout\ <= NOT \C~3_combout\;
\ALT_INV_C~2_combout\ <= NOT \C~2_combout\;
\ALT_INV_G1[4]~2_combout\ <= NOT \G1[4]~2_combout\;
ALT_INV_C(5) <= NOT C(5);
\ALT_INV_G1[5]~3_combout\ <= NOT \G1[5]~3_combout\;
\ALT_INV_G3~1_combout\ <= NOT \G3~1_combout\;
\ALT_INV_G3~2_combout\ <= NOT \G3~2_combout\;
\ALT_INV_G3~3_combout\ <= NOT \G3~3_combout\;
\ALT_INV_C~4_combout\ <= NOT \C~4_combout\;
\ALT_INV_G2~0_combout\ <= NOT \G2~0_combout\;
ALT_INV_Gf(2) <= NOT Gf(2);
ALT_INV_Gf(5) <= NOT Gf(5);
\ALT_INV_G3~4_combout\ <= NOT \G3~4_combout\;
\ALT_INV_Gf[6]~1_combout\ <= NOT \Gf[6]~1_combout\;
\ALT_INV_G4~9_combout\ <= NOT \G4~9_combout\;
\ALT_INV_G1[24]~22_combout\ <= NOT \G1[24]~22_combout\;
\ALT_INV_C[29]~35_combout\ <= NOT \C[29]~35_combout\;
\ALT_INV_P2[29]~21_combout\ <= NOT \P2[29]~21_combout\;
\ALT_INV_C[25]~30_combout\ <= NOT \C[25]~30_combout\;
\ALT_INV_G3~40_combout\ <= NOT \G3~40_combout\;
\ALT_INV_C[27]~33_combout\ <= NOT \C[27]~33_combout\;
\ALT_INV_G1[27]~25_combout\ <= NOT \G1[27]~25_combout\;
\ALT_INV_P2[24]~16_combout\ <= NOT \P2[24]~16_combout\;
\ALT_INV_C[26]~32_combout\ <= NOT \C[26]~32_combout\;
\ALT_INV_G3~44_combout\ <= NOT \G3~44_combout\;
\ALT_INV_G3~41_combout\ <= NOT \G3~41_combout\;
\ALT_INV_G4~10_combout\ <= NOT \G4~10_combout\;
ALT_INV_G3(27) <= NOT G3(27);
\ALT_INV_G4~7_combout\ <= NOT \G4~7_combout\;
\ALT_INV_G3~35_combout\ <= NOT \G3~35_combout\;
\ALT_INV_G3~39_combout\ <= NOT \G3~39_combout\;
\ALT_INV_G1[26]~24_combout\ <= NOT \G1[26]~24_combout\;
\ALT_INV_P4[27]~0_combout\ <= NOT \P4[27]~0_combout\;
\ALT_INV_G4~13_combout\ <= NOT \G4~13_combout\;
\ALT_INV_P4[29]~2_combout\ <= NOT \P4[29]~2_combout\;
\ALT_INV_G4~15_combout\ <= NOT \G4~15_combout\;
\ALT_INV_P2[25]~17_combout\ <= NOT \P2[25]~17_combout\;
ALT_INV_C(24) <= NOT C(24);
\ALT_INV_G3~43_combout\ <= NOT \G3~43_combout\;
\ALT_INV_C[23]~27_combout\ <= NOT \C[23]~27_combout\;
\ALT_INV_G3~36_combout\ <= NOT \G3~36_combout\;
\ALT_INV_G3~37_combout\ <= NOT \G3~37_combout\;
\ALT_INV_P2[26]~18_combout\ <= NOT \P2[26]~18_combout\;
ALT_INV_G3(26) <= NOT G3(26);
\ALT_INV_C[28]~34_combout\ <= NOT \C[28]~34_combout\;
\ALT_INV_G4~12_combout\ <= NOT \G4~12_combout\;
\ALT_INV_G1[28]~26_combout\ <= NOT \G1[28]~26_combout\;
\ALT_INV_G4~8_combout\ <= NOT \G4~8_combout\;
\ALT_INV_G3~47_combout\ <= NOT \G3~47_combout\;
\ALT_INV_G4~14_combout\ <= NOT \G4~14_combout\;
\ALT_INV_G1[29]~27_combout\ <= NOT \G1[29]~27_combout\;
ALT_INV_G3(28) <= NOT G3(28);
ALT_INV_G3(22) <= NOT G3(22);
\ALT_INV_P2[27]~19_combout\ <= NOT \P2[27]~19_combout\;
\ALT_INV_G1[23]~21_combout\ <= NOT \G1[23]~21_combout\;
\ALT_INV_G1[25]~23_combout\ <= NOT \G1[25]~23_combout\;
\ALT_INV_C[24]~28_combout\ <= NOT \C[24]~28_combout\;
\ALT_INV_C[42]~31_combout\ <= NOT \C[42]~31_combout\;
ALT_INV_G3(23) <= NOT G3(23);
\ALT_INV_C[41]~29_combout\ <= NOT \C[41]~29_combout\;
\ALT_INV_G3~42_combout\ <= NOT \G3~42_combout\;
\ALT_INV_G3~45_combout\ <= NOT \G3~45_combout\;
\ALT_INV_G3~38_combout\ <= NOT \G3~38_combout\;
\ALT_INV_G3~46_combout\ <= NOT \G3~46_combout\;
\ALT_INV_P2[28]~20_combout\ <= NOT \P2[28]~20_combout\;
\ALT_INV_G4~11_combout\ <= NOT \G4~11_combout\;
\ALT_INV_P2[23]~15_combout\ <= NOT \P2[23]~15_combout\;
ALT_INV_G3(25) <= NOT G3(25);
ALT_INV_G3(24) <= NOT G3(24);
\ALT_INV_P4[28]~1_combout\ <= NOT \P4[28]~1_combout\;
\ALT_INV_G3~48_combout\ <= NOT \G3~48_combout\;
\ALT_INV_P2[36]~28_combout\ <= NOT \P2[36]~28_combout\;
\ALT_INV_P4[36]~9_combout\ <= NOT \P4[36]~9_combout\;
\ALT_INV_G1[31]~29_combout\ <= NOT \G1[31]~29_combout\;
\ALT_INV_G4~19_combout\ <= NOT \G4~19_combout\;
\ALT_INV_G3~60_combout\ <= NOT \G3~60_combout\;
\ALT_INV_G3~53_combout\ <= NOT \G3~53_combout\;
\ALT_INV_G1[35]~33_combout\ <= NOT \G1[35]~33_combout\;
\ALT_INV_C[37]~40_combout\ <= NOT \C[37]~40_combout\;
\ALT_INV_G1[36]~34_combout\ <= NOT \G1[36]~34_combout\;
ALT_INV_Gf(31) <= NOT Gf(31);
\ALT_INV_G3~52_combout\ <= NOT \G3~52_combout\;
\ALT_INV_G1[32]~30_combout\ <= NOT \G1[32]~30_combout\;
ALT_INV_G3(29) <= NOT G3(29);
\ALT_INV_G4~17_combout\ <= NOT \G4~17_combout\;
\ALT_INV_P4[31]~4_combout\ <= NOT \P4[31]~4_combout\;
ALT_INV_G3(31) <= NOT G3(31);
\ALT_INV_P2[32]~24_combout\ <= NOT \P2[32]~24_combout\;
\ALT_INV_G4~16_combout\ <= NOT \G4~16_combout\;
\ALT_INV_G1[33]~31_combout\ <= NOT \G1[33]~31_combout\;
\ALT_INV_G1[34]~32_combout\ <= NOT \G1[34]~32_combout\;
\ALT_INV_G3~59_combout\ <= NOT \G3~59_combout\;
ALT_INV_G3(33) <= NOT G3(33);
\ALT_INV_P2[35]~27_combout\ <= NOT \P2[35]~27_combout\;
\ALT_INV_G3~50_combout\ <= NOT \G3~50_combout\;
\ALT_INV_P4[32]~5_combout\ <= NOT \P4[32]~5_combout\;
\ALT_INV_G3~57_combout\ <= NOT \G3~57_combout\;
\ALT_INV_P2[34]~26_combout\ <= NOT \P2[34]~26_combout\;
\ALT_INV_G4~21_combout\ <= NOT \G4~21_combout\;
\ALT_INV_G3~51_combout\ <= NOT \G3~51_combout\;
\ALT_INV_G1[30]~28_combout\ <= NOT \G1[30]~28_combout\;
\ALT_INV_C[36]~39_combout\ <= NOT \C[36]~39_combout\;
\ALT_INV_C[35]~38_combout\ <= NOT \C[35]~38_combout\;
\ALT_INV_G3~55_combout\ <= NOT \G3~55_combout\;
\ALT_INV_G3~58_combout\ <= NOT \G3~58_combout\;
\ALT_INV_P2[30]~22_combout\ <= NOT \P2[30]~22_combout\;
ALT_INV_G3(30) <= NOT G3(30);
\ALT_INV_C[33]~36_combout\ <= NOT \C[33]~36_combout\;
\ALT_INV_P4[33]~6_combout\ <= NOT \P4[33]~6_combout\;
\ALT_INV_C[34]~37_combout\ <= NOT \C[34]~37_combout\;
ALT_INV_G3(32) <= NOT G3(32);
ALT_INV_G3(34) <= NOT G3(34);
\ALT_INV_P2[31]~23_combout\ <= NOT \P2[31]~23_combout\;
ALT_INV_Gf(30) <= NOT Gf(30);
\ALT_INV_G3~49_combout\ <= NOT \G3~49_combout\;
ALT_INV_C(30) <= NOT C(30);
\ALT_INV_P4[30]~3_combout\ <= NOT \P4[30]~3_combout\;
\ALT_INV_G4~18_combout\ <= NOT \G4~18_combout\;
\ALT_INV_G3~54_combout\ <= NOT \G3~54_combout\;
\ALT_INV_P2[33]~25_combout\ <= NOT \P2[33]~25_combout\;
\ALT_INV_P4[34]~7_combout\ <= NOT \P4[34]~7_combout\;
\ALT_INV_P4[35]~8_combout\ <= NOT \P4[35]~8_combout\;
\ALT_INV_G4~22_combout\ <= NOT \G4~22_combout\;
\ALT_INV_G3~56_combout\ <= NOT \G3~56_combout\;
\ALT_INV_G3~61_combout\ <= NOT \G3~61_combout\;
\ALT_INV_G4~20_combout\ <= NOT \G4~20_combout\;
ALT_INV_G3(35) <= NOT G3(35);
\ALT_INV_G3~62_combout\ <= NOT \G3~62_combout\;
\ALT_INV_P4[40]~16_combout\ <= NOT \P4[40]~16_combout\;
ALT_INV_G3(40) <= NOT G3(40);
\ALT_INV_G4~26_combout\ <= NOT \G4~26_combout\;
\ALT_INV_G1[41]~39_combout\ <= NOT \G1[41]~39_combout\;
\ALT_INV_C[42]~47_combout\ <= NOT \C[42]~47_combout\;
\ALT_INV_G1[37]~35_combout\ <= NOT \G1[37]~35_combout\;
\ALT_INV_P4[39]~15_combout\ <= NOT \P4[39]~15_combout\;
\ALT_INV_P2[42]~34_combout\ <= NOT \P2[42]~34_combout\;
\ALT_INV_G1[39]~37_combout\ <= NOT \G1[39]~37_combout\;
\ALT_INV_G4~24_combout\ <= NOT \G4~24_combout\;
\ALT_INV_G4~27_combout\ <= NOT \G4~27_combout\;
\ALT_INV_P2[41]~33_combout\ <= NOT \P2[41]~33_combout\;
ALT_INV_G3(37) <= NOT G3(37);
\ALT_INV_G3~73_combout\ <= NOT \G3~73_combout\;
\ALT_INV_G1[40]~38_combout\ <= NOT \G1[40]~38_combout\;
\ALT_INV_G3~75_combout\ <= NOT \G3~75_combout\;
\ALT_INV_P2[37]~29_combout\ <= NOT \P2[37]~29_combout\;
\ALT_INV_G3~70_combout\ <= NOT \G3~70_combout\;
ALT_INV_G3(42) <= NOT G3(42);
ALT_INV_G3(36) <= NOT G3(36);
\ALT_INV_C[41]~46_combout\ <= NOT \C[41]~46_combout\;
\ALT_INV_P4[41]~17_combout\ <= NOT \P4[41]~17_combout\;
\ALT_INV_G1[38]~36_combout\ <= NOT \G1[38]~36_combout\;
\ALT_INV_G3~69_combout\ <= NOT \G3~69_combout\;
\ALT_INV_C[43]~49_combout\ <= NOT \C[43]~49_combout\;
\ALT_INV_G3~76_combout\ <= NOT \G3~76_combout\;
\ALT_INV_G3~66_combout\ <= NOT \G3~66_combout\;
ALT_INV_G3(39) <= NOT G3(39);
ALT_INV_G3(38) <= NOT G3(38);
\ALT_INV_C[40]~45_combout\ <= NOT \C[40]~45_combout\;
ALT_INV_G3(41) <= NOT G3(41);
\ALT_INV_P4[42]~18_combout\ <= NOT \P4[42]~18_combout\;
\ALT_INV_P2[43]~35_combout\ <= NOT \P2[43]~35_combout\;
\ALT_INV_C[37]~41_combout\ <= NOT \C[37]~41_combout\;
\ALT_INV_G3~64_combout\ <= NOT \G3~64_combout\;
\ALT_INV_G3~71_combout\ <= NOT \G3~71_combout\;
\ALT_INV_G3~72_combout\ <= NOT \G3~72_combout\;
\ALT_INV_G1[42]~40_combout\ <= NOT \G1[42]~40_combout\;
\ALT_INV_G4~23_combout\ <= NOT \G4~23_combout\;
\ALT_INV_P4[37]~10_combout\ <= NOT \P4[37]~10_combout\;
\ALT_INV_G3~68_combout\ <= NOT \G3~68_combout\;
\ALT_INV_P4[39]~14_combout\ <= NOT \P4[39]~14_combout\;
\ALT_INV_C[40]~44_combout\ <= NOT \C[40]~44_combout\;
\ALT_INV_C[39]~43_combout\ <= NOT \C[39]~43_combout\;
\ALT_INV_G3~74_combout\ <= NOT \G3~74_combout\;
\ALT_INV_C[43]~48_combout\ <= NOT \C[43]~48_combout\;
\ALT_INV_G3~65_combout\ <= NOT \G3~65_combout\;
\ALT_INV_P2[40]~32_combout\ <= NOT \P2[40]~32_combout\;
\ALT_INV_P4[38]~13_combout\ <= NOT \P4[38]~13_combout\;
\ALT_INV_G3~67_combout\ <= NOT \G3~67_combout\;
\ALT_INV_G4~25_combout\ <= NOT \G4~25_combout\;
\ALT_INV_P4[38]~12_combout\ <= NOT \P4[38]~12_combout\;
\ALT_INV_P2[38]~30_combout\ <= NOT \P2[38]~30_combout\;
\ALT_INV_G3~63_combout\ <= NOT \G3~63_combout\;
\ALT_INV_C[38]~42_combout\ <= NOT \C[38]~42_combout\;
\ALT_INV_P4[37]~11_combout\ <= NOT \P4[37]~11_combout\;
\ALT_INV_P2[39]~31_combout\ <= NOT \P2[39]~31_combout\;
\ALT_INV_G4~29_combout\ <= NOT \G4~29_combout\;
\ALT_INV_G5~3_combout\ <= NOT \G5~3_combout\;
ALT_INV_G3(47) <= NOT G3(47);
\ALT_INV_G4~28_combout\ <= NOT \G4~28_combout\;
\ALT_INV_P4[43]~19_combout\ <= NOT \P4[43]~19_combout\;
\ALT_INV_G1[45]~43_combout\ <= NOT \G1[45]~43_combout\;
\ALT_INV_G3~81_combout\ <= NOT \G3~81_combout\;
\ALT_INV_C[49]~56_combout\ <= NOT \C[49]~56_combout\;
\ALT_INV_P2[48]~40_combout\ <= NOT \P2[48]~40_combout\;
\ALT_INV_P2[49]~41_combout\ <= NOT \P2[49]~41_combout\;
\ALT_INV_C[50]~59_combout\ <= NOT \C[50]~59_combout\;
\ALT_INV_G1[43]~41_combout\ <= NOT \G1[43]~41_combout\;
\ALT_INV_G1[49]~47_combout\ <= NOT \G1[49]~47_combout\;
\ALT_INV_G3~89_combout\ <= NOT \G3~89_combout\;
\ALT_INV_C[50]~62_combout\ <= NOT \C[50]~62_combout\;
\ALT_INV_G3~87_combout\ <= NOT \G3~87_combout\;
\ALT_INV_G3~88_combout\ <= NOT \G3~88_combout\;
\ALT_INV_P2[46]~38_combout\ <= NOT \P2[46]~38_combout\;
\ALT_INV_G3~85_combout\ <= NOT \G3~85_combout\;
ALT_INV_G3(49) <= NOT G3(49);
\ALT_INV_C[45]~51_combout\ <= NOT \C[45]~51_combout\;
\ALT_INV_G3~90_combout\ <= NOT \G3~90_combout\;
\ALT_INV_G1[44]~42_combout\ <= NOT \G1[44]~42_combout\;
ALT_INV_G3(46) <= NOT G3(46);
\ALT_INV_C[49]~58_combout\ <= NOT \C[49]~58_combout\;
ALT_INV_G3(43) <= NOT G3(43);
\ALT_INV_P2[44]~36_combout\ <= NOT \P2[44]~36_combout\;
\ALT_INV_G3~77_combout\ <= NOT \G3~77_combout\;
\ALT_INV_G4~30_combout\ <= NOT \G4~30_combout\;
\ALT_INV_P4[45]~21_combout\ <= NOT \P4[45]~21_combout\;
\ALT_INV_C[46]~52_combout\ <= NOT \C[46]~52_combout\;
\ALT_INV_G3~83_combout\ <= NOT \G3~83_combout\;
\ALT_INV_G3~84_combout\ <= NOT \G3~84_combout\;
\ALT_INV_P2[47]~39_combout\ <= NOT \P2[47]~39_combout\;
\ALT_INV_C[48]~54_combout\ <= NOT \C[48]~54_combout\;
\ALT_INV_C[44]~50_combout\ <= NOT \C[44]~50_combout\;
\ALT_INV_P4[47]~23_combout\ <= NOT \P4[47]~23_combout\;
\ALT_INV_C[49]~57_combout\ <= NOT \C[49]~57_combout\;
\ALT_INV_G3~78_combout\ <= NOT \G3~78_combout\;
\ALT_INV_G3~80_combout\ <= NOT \G3~80_combout\;
\ALT_INV_G3~82_combout\ <= NOT \G3~82_combout\;
\ALT_INV_P4[44]~20_combout\ <= NOT \P4[44]~20_combout\;
\ALT_INV_G3~79_combout\ <= NOT \G3~79_combout\;
ALT_INV_G3(45) <= NOT G3(45);
\ALT_INV_C[47]~53_combout\ <= NOT \C[47]~53_combout\;
\ALT_INV_G1[47]~45_combout\ <= NOT \G1[47]~45_combout\;
\ALT_INV_G1[48]~46_combout\ <= NOT \G1[48]~46_combout\;
\ALT_INV_P4[46]~22_combout\ <= NOT \P4[46]~22_combout\;
ALT_INV_G3(44) <= NOT G3(44);
\ALT_INV_G3~86_combout\ <= NOT \G3~86_combout\;
\ALT_INV_C[49]~55_combout\ <= NOT \C[49]~55_combout\;
\ALT_INV_G1[46]~44_combout\ <= NOT \G1[46]~44_combout\;
\ALT_INV_G5~4_combout\ <= NOT \G5~4_combout\;
ALT_INV_G3(48) <= NOT G3(48);
\ALT_INV_C[50]~60_combout\ <= NOT \C[50]~60_combout\;
\ALT_INV_C[50]~61_combout\ <= NOT \C[50]~61_combout\;
\ALT_INV_P2[45]~37_combout\ <= NOT \P2[45]~37_combout\;
\ALT_INV_G2~3_combout\ <= NOT \G2~3_combout\;
\ALT_INV_P2[54]~46_combout\ <= NOT \P2[54]~46_combout\;
\ALT_INV_C[51]~63_combout\ <= NOT \C[51]~63_combout\;
\ALT_INV_G1[54]~52_combout\ <= NOT \G1[54]~52_combout\;
\ALT_INV_C[56]~81_combout\ <= NOT \C[56]~81_combout\;
\ALT_INV_C[53]~71_combout\ <= NOT \C[53]~71_combout\;
\ALT_INV_C[56]~82_combout\ <= NOT \C[56]~82_combout\;
ALT_INV_P0(57) <= NOT P0(57);
\ALT_INV_C[52]~67_combout\ <= NOT \C[52]~67_combout\;
\ALT_INV_C[55]~76_combout\ <= NOT \C[55]~76_combout\;
\ALT_INV_G3~91_combout\ <= NOT \G3~91_combout\;
\ALT_INV_G1[55]~53_combout\ <= NOT \G1[55]~53_combout\;
\ALT_INV_C[58]~73_combout\ <= NOT \C[58]~73_combout\;
ALT_INV_G3(50) <= NOT G3(50);
\ALT_INV_P2[53]~45_combout\ <= NOT \P2[53]~45_combout\;
\ALT_INV_C[51]~64_combout\ <= NOT \C[51]~64_combout\;
\ALT_INV_C[52]~66_combout\ <= NOT \C[52]~66_combout\;
\ALT_INV_G1[51]~49_combout\ <= NOT \G1[51]~49_combout\;
\ALT_INV_P2[52]~44_combout\ <= NOT \P2[52]~44_combout\;
\ALT_INV_C[53]~70_combout\ <= NOT \C[53]~70_combout\;
ALT_INV_G3(52) <= NOT G3(52);
\ALT_INV_P2[56]~48_combout\ <= NOT \P2[56]~48_combout\;
\ALT_INV_C[57]~84_combout\ <= NOT \C[57]~84_combout\;
\ALT_INV_G1[56]~54_combout\ <= NOT \G1[56]~54_combout\;
\ALT_INV_G2~5_combout\ <= NOT \G2~5_combout\;
\ALT_INV_C[57]~85_combout\ <= NOT \C[57]~85_combout\;
\ALT_INV_C[57]~86_combout\ <= NOT \C[57]~86_combout\;
ALT_INV_G3(55) <= NOT G3(55);
ALT_INV_P0(58) <= NOT P0(58);
\ALT_INV_C[55]~78_combout\ <= NOT \C[55]~78_combout\;
\ALT_INV_P2[57]~49_combout\ <= NOT \P2[57]~49_combout\;
\ALT_INV_C[55]~77_combout\ <= NOT \C[55]~77_combout\;
\ALT_INV_C[58]~87_combout\ <= NOT \C[58]~87_combout\;
\ALT_INV_G1[50]~48_combout\ <= NOT \G1[50]~48_combout\;
\ALT_INV_G1[57]~55_combout\ <= NOT \G1[57]~55_combout\;
\ALT_INV_C[56]~83_combout\ <= NOT \C[56]~83_combout\;
\ALT_INV_P2[55]~47_combout\ <= NOT \P2[55]~47_combout\;
\ALT_INV_G2~4_combout\ <= NOT \G2~4_combout\;
\ALT_INV_C[56]~80_combout\ <= NOT \C[56]~80_combout\;
\ALT_INV_C[51]~65_combout\ <= NOT \C[51]~65_combout\;
\ALT_INV_P2[51]~43_combout\ <= NOT \P2[51]~43_combout\;
ALT_INV_G3(51) <= NOT G3(51);
\ALT_INV_G2~1_combout\ <= NOT \G2~1_combout\;
\ALT_INV_P2[50]~42_combout\ <= NOT \P2[50]~42_combout\;
\ALT_INV_G3~92_combout\ <= NOT \G3~92_combout\;
\ALT_INV_C[52]~68_combout\ <= NOT \C[52]~68_combout\;
\ALT_INV_C[54]~74_combout\ <= NOT \C[54]~74_combout\;
\ALT_INV_C[53]~72_combout\ <= NOT \C[53]~72_combout\;
\ALT_INV_G1[52]~50_combout\ <= NOT \G1[52]~50_combout\;
\ALT_INV_G1[53]~51_combout\ <= NOT \G1[53]~51_combout\;
ALT_INV_G3(53) <= NOT G3(53);
ALT_INV_G3(54) <= NOT G3(54);
\ALT_INV_C[55]~79_combout\ <= NOT \C[55]~79_combout\;
\ALT_INV_G2~2_combout\ <= NOT \G2~2_combout\;
\ALT_INV_C[57]~69_combout\ <= NOT \C[57]~69_combout\;
\ALT_INV_C[54]~75_combout\ <= NOT \C[54]~75_combout\;
\ALT_INV_G3~93_combout\ <= NOT \G3~93_combout\;
ALT_INV_P1(60) <= NOT P1(60);
\ALT_INV_C[59]~92_combout\ <= NOT \C[59]~92_combout\;
\ALT_INV_G2~6_combout\ <= NOT \G2~6_combout\;
ALT_INV_P0(61) <= NOT P0(61);
\ALT_INV_C[62]~105_combout\ <= NOT \C[62]~105_combout\;
\ALT_INV_P2[59]~51_combout\ <= NOT \P2[59]~51_combout\;
\ALT_INV_C[61]~102_combout\ <= NOT \C[61]~102_combout\;
ALT_INV_P1(61) <= NOT P1(61);
\ALT_INV_C[10]~115_combout\ <= NOT \C[10]~115_combout\;
ALT_INV_P0(59) <= NOT P0(59);
\ALT_INV_G1[59]~57_combout\ <= NOT \G1[59]~57_combout\;
ALT_INV_P0(62) <= NOT P0(62);
\ALT_INV_C[62]~106_combout\ <= NOT \C[62]~106_combout\;
\ALT_INV_Gf~2_combout\ <= NOT \Gf~2_combout\;
\ALT_INV_C~108_combout\ <= NOT \C~108_combout\;
\ALT_INV_G1[62]~60_combout\ <= NOT \G1[62]~60_combout\;
\ALT_INV_C[59]~90_combout\ <= NOT \C[59]~90_combout\;
\ALT_INV_C[60]~97_combout\ <= NOT \C[60]~97_combout\;
\ALT_INV_P4[63]~27_combout\ <= NOT \P4[63]~27_combout\;
\ALT_INV_C[60]~95_combout\ <= NOT \C[60]~95_combout\;
ALT_INV_P1(58) <= NOT P1(58);
\ALT_INV_C[61]~100_combout\ <= NOT \C[61]~100_combout\;
\ALT_INV_C[58]~88_combout\ <= NOT \C[58]~88_combout\;
\ALT_INV_C[62]~104_combout\ <= NOT \C[62]~104_combout\;
\ALT_INV_G1[58]~56_combout\ <= NOT \G1[58]~56_combout\;
\ALT_INV_C[60]~94_combout\ <= NOT \C[60]~94_combout\;
\ALT_INV_C[62]~107_combout\ <= NOT \C[62]~107_combout\;
ALT_INV_P1(59) <= NOT P1(59);
\ALT_INV_P4[62]~26_combout\ <= NOT \P4[62]~26_combout\;
\ALT_INV_C[63]~110_combout\ <= NOT \C[63]~110_combout\;
\ALT_INV_C[59]~93_combout\ <= NOT \C[59]~93_combout\;
\ALT_INV_P2[58]~50_combout\ <= NOT \P2[58]~50_combout\;
\ALT_INV_P4[63]~28_combout\ <= NOT \P4[63]~28_combout\;
\ALT_INV_Gf~4_combout\ <= NOT \Gf~4_combout\;
\ALT_INV_C~111_combout\ <= NOT \C~111_combout\;
\ALT_INV_G1[63]~61_combout\ <= NOT \G1[63]~61_combout\;
\ALT_INV_C[60]~96_combout\ <= NOT \C[60]~96_combout\;
\ALT_INV_C[58]~89_combout\ <= NOT \C[58]~89_combout\;
\ALT_INV_C[59]~91_combout\ <= NOT \C[59]~91_combout\;
ALT_INV_P0(60) <= NOT P0(60);
\ALT_INV_C[61]~101_combout\ <= NOT \C[61]~101_combout\;
\ALT_INV_C[62]~103_combout\ <= NOT \C[62]~103_combout\;
\ALT_INV_P4[62]~24_combout\ <= NOT \P4[62]~24_combout\;
\ALT_INV_C~112_combout\ <= NOT \C~112_combout\;
\ALT_INV_C[61]~98_combout\ <= NOT \C[61]~98_combout\;
\ALT_INV_Gf~3_combout\ <= NOT \Gf~3_combout\;
\ALT_INV_P4[62]~25_combout\ <= NOT \P4[62]~25_combout\;
\ALT_INV_C[63]~109_combout\ <= NOT \C[63]~109_combout\;
\ALT_INV_C~113_combout\ <= NOT \C~113_combout\;
\ALT_INV_G1[60]~58_combout\ <= NOT \G1[60]~58_combout\;
\ALT_INV_G1[61]~59_combout\ <= NOT \G1[61]~59_combout\;
\ALT_INV_Gf~5_combout\ <= NOT \Gf~5_combout\;
\ALT_INV_C[61]~99_combout\ <= NOT \C[61]~99_combout\;
\ALT_INV_P4[63]~29_combout\ <= NOT \P4[63]~29_combout\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;

-- Location: IOOBUF_X23_Y56_N98
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X25_Y56_N33
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X14_Y56_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X25_Y56_N5
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X19_Y56_N2
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y18_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X36_Y56_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X14_Y56_N98
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X12_Y56_N98
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X15_Y56_N36
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X49_Y56_N98
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X8_Y56_N2
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X59_Y39_N33
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X59_Y30_N2
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y15_N33
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~54_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X15_Y56_N2
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y15_N67
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~56_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X44_Y56_N98
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~57_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X56_Y56_N2
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~59_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X15_Y56_N98
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~60_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X17_Y56_N33
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~63_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~114_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X49_Y56_N36
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X33_Y56_N94
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X21_Y56_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X38_Y47_N20
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = !\Cin~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X12_Y56_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X38_Y47_N22
\S~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\Cin~input_o\ & ((!\A[0]~input_o\) 
-- # (!\B[0]~input_o\))) # (\Cin~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \S~1_combout\);

-- Location: LABCELL_X38_Y47_N8
\C[10]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \C[10]~115_combout\ = ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\)))) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \C[10]~115_combout\);

-- Location: IOIBUF_X59_Y10_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X10_Y56_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X38_Y47_N6
\P0[2]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(2) = !\A[2]~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => P0(2));

-- Location: MLABCELL_X37_Y47_N2
\S~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = !\C[10]~115_combout\ $ (!P0(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[10]~115_combout\,
	datab => ALT_INV_P0(2),
	combout => \S~2_combout\);

-- Location: IOIBUF_X19_Y56_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X36_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X37_Y47_N26
\P0[3]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(3) = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => P0(3));

-- Location: LABCELL_X38_Y47_N12
\C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \C~0_combout\);

-- Location: LABCELL_X38_Y47_N14
\G1[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[2]~0_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \G1[2]~0_combout\);

-- Location: LABCELL_X38_Y47_N16
\C[11]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \C[11]~1_combout\ = ( !\G1[2]~0_combout\ & ( (!\C~0_combout\) # ((!\B[0]~input_o\ & ((!\A[0]~input_o\) # (!\Cin~input_o\))) # (\B[0]~input_o\ & (!\A[0]~input_o\ & !\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111110100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_C~0_combout\,
	dataf => \ALT_INV_G1[2]~0_combout\,
	combout => \C[11]~1_combout\);

-- Location: LABCELL_X35_Y49_N22
\S~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = ( \C[11]~1_combout\ & ( P0(3) ) ) # ( !\C[11]~1_combout\ & ( !P0(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_P0(3),
	dataf => \ALT_INV_C[11]~1_combout\,
	combout => \S~3_combout\);

-- Location: IOIBUF_X19_Y56_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X31_Y56_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X38_Y47_N18
\C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \C~2_combout\ = ( \Cin~input_o\ & ( (\C~0_combout\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_C~0_combout\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \C~2_combout\);

-- Location: LABCELL_X38_Y47_N4
\G1[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[3]~1_combout\ = ( \A[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \G1[3]~1_combout\);

-- Location: LABCELL_X38_Y47_N10
\Gf[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf[1]~0_combout\ = ( \A[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Gf[1]~0_combout\);

-- Location: LABCELL_X38_Y47_N2
\G2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~0_combout\ = ( P0(3) & ( (P0(2) & \Gf[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P0(2),
	datad => \ALT_INV_Gf[1]~0_combout\,
	dataf => ALT_INV_P0(3),
	combout => \G2~0_combout\);

-- Location: MLABCELL_X39_Y47_N2
\C[4]\ : arriaii_lcell_comb
-- Equation(s):
-- C(4) = ( !\G2~0_combout\ & ( (!\G1[3]~1_combout\ & ((!\C~2_combout\) # (!P0(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C~2_combout\,
	datac => ALT_INV_P0(3),
	datad => \ALT_INV_G1[3]~1_combout\,
	dataf => \ALT_INV_G2~0_combout\,
	combout => C(4));

-- Location: MLABCELL_X37_Y47_N8
\S~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = ( C(4) & ( !\A[4]~input_o\ $ (!\B[4]~input_o\) ) ) # ( !C(4) & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => ALT_INV_C(4),
	combout => \S~4_combout\);

-- Location: MLABCELL_X37_Y47_N24
\G1[4]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[4]~2_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) # (\B[3]~input_o\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\A[4]~input_o\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \G1[4]~2_combout\);

-- Location: LABCELL_X38_Y47_N26
\G3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~0_combout\ = ( \G1[2]~0_combout\ & ( (P0(3) & (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(3),
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_G1[2]~0_combout\,
	combout => \G3~0_combout\);

-- Location: LABCELL_X38_Y47_N24
\P3[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \P3[8]~0_combout\ = (P0(3) & (\C~0_combout\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(3),
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_C~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \P3[8]~0_combout\);

-- Location: LABCELL_X38_Y47_N28
\C[5]\ : arriaii_lcell_comb
-- Equation(s):
-- C(5) = ( \B[0]~input_o\ & ( \P3[8]~0_combout\ & ( (!\G1[4]~2_combout\ & (!\A[0]~input_o\ & (!\Cin~input_o\ & !\G3~0_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( \P3[8]~0_combout\ & ( (!\G1[4]~2_combout\ & (!\G3~0_combout\ & ((!\A[0]~input_o\) # 
-- (!\Cin~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\P3[8]~0_combout\ & ( (!\G1[4]~2_combout\ & !\G3~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( !\P3[8]~0_combout\ & ( (!\G1[4]~2_combout\ & !\G3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[4]~2_combout\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_G3~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_P3[8]~0_combout\,
	combout => C(5));

-- Location: IOIBUF_X28_Y56_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X12_Y56_N63
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X37_Y49_N0
\P0[5]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(5) = ( \A[5]~input_o\ & ( !\B[5]~input_o\ ) ) # ( !\A[5]~input_o\ & ( \B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => P0(5));

-- Location: LABCELL_X38_Y51_N2
\S~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = ( P0(5) & ( C(5) ) ) # ( !P0(5) & ( !C(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111111111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_C(5),
	datae => ALT_INV_P0(5),
	combout => \S~5_combout\);

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

-- Location: LABCELL_X38_Y47_N32
\C~3\ : arriaii_lcell_comb
-- Equation(s):
-- \C~3_combout\ = ( \P3[8]~0_combout\ & ( (\Cin~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_P3[8]~0_combout\,
	combout => \C~3_combout\);

-- Location: MLABCELL_X37_Y47_N32
\G3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~2_combout\ = ( \G1[3]~1_combout\ & ( (P0(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => ALT_INV_P0(5),
	dataf => \ALT_INV_G1[3]~1_combout\,
	combout => \G3~2_combout\);

-- Location: MLABCELL_X37_Y49_N2
\G1[5]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[5]~3_combout\ = ( \A[5]~input_o\ & ( ((\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G1[5]~3_combout\);

-- Location: MLABCELL_X37_Y47_N34
\G3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~1_combout\ = (P0(3) & (P0(5) & (!\B[4]~input_o\ $ (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => ALT_INV_P0(3),
	datad => ALT_INV_P0(5),
	combout => \G3~1_combout\);

-- Location: MLABCELL_X37_Y47_N16
\Gf[5]\ : arriaii_lcell_comb
-- Equation(s):
-- Gf(5) = ( P0(2) & ( (!\G3~2_combout\ & (!\G1[5]~3_combout\ & ((!\Gf[1]~0_combout\) # (!\G3~1_combout\)))) ) ) # ( !P0(2) & ( (!\G3~2_combout\ & !\G1[5]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~2_combout\,
	datab => \ALT_INV_G1[5]~3_combout\,
	datac => \ALT_INV_Gf[1]~0_combout\,
	datad => \ALT_INV_G3~1_combout\,
	dataf => ALT_INV_P0(2),
	combout => Gf(5));

-- Location: IOIBUF_X28_Y56_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X37_Y47_N10
\S~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = ( P0(5) & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (((!Gf(5)) # (\C~3_combout\)))) ) ) # ( !P0(5) & ( !\A[6]~input_o\ $ (!Gf(5) $ (!\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010100110010110011010011001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_C~3_combout\,
	datac => ALT_INV_Gf(5),
	datad => \ALT_INV_B[6]~input_o\,
	dataf => ALT_INV_P0(5),
	combout => \S~6_combout\);

-- Location: LABCELL_X38_Y47_N34
\Gf[2]\ : arriaii_lcell_comb
-- Equation(s):
-- Gf(2) = ( !\G1[2]~0_combout\ & ( (!\B[0]~input_o\) # ((!\A[0]~input_o\) # (!\C~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_C~0_combout\,
	dataf => \ALT_INV_G1[2]~0_combout\,
	combout => Gf(2));

-- Location: MLABCELL_X37_Y47_N22
\G3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~4_combout\ = ( !Gf(2) & ( (\G3~1_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_G3~1_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => ALT_INV_Gf(2),
	combout => \G3~4_combout\);

-- Location: MLABCELL_X37_Y49_N24
\G3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~3_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G3~3_combout\);

-- Location: LABCELL_X38_Y47_N38
\C~4\ : arriaii_lcell_comb
-- Equation(s):
-- \C~4_combout\ = ( \P3[8]~0_combout\ & ( (\Cin~input_o\ & (\G3~3_combout\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_G3~3_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_P3[8]~0_combout\,
	combout => \C~4_combout\);

-- Location: IOIBUF_X48_Y56_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X48_Y56_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X37_Y49_N26
\G1[6]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[6]~4_combout\ = ( \A[5]~input_o\ & ( (!\A[6]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)) # (\A[6]~input_o\ & ((\B[6]~input_o\) # (\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & \B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \G1[6]~4_combout\);

-- Location: MLABCELL_X37_Y49_N28
\Gf[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf[6]~1_combout\ = ( \G3~3_combout\ & ( (!\G1[6]~4_combout\ & !\G1[4]~2_combout\) ) ) # ( !\G3~3_combout\ & ( !\G1[6]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[6]~4_combout\,
	datad => \ALT_INV_G1[4]~2_combout\,
	dataf => \ALT_INV_G3~3_combout\,
	combout => \Gf[6]~1_combout\);

-- Location: MLABCELL_X46_Y49_N22
\S~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = ( \Gf[6]~1_combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\C~4_combout\) # (\G3~4_combout\)))) ) ) # ( !\Gf[6]~1_combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~4_combout\,
	datab => \ALT_INV_C~4_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Gf[6]~1_combout\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X23_Y56_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X37_Y49_N14
\G3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~5_combout\ = ( \G3~3_combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_G3~3_combout\,
	combout => \G3~5_combout\);

-- Location: MLABCELL_X37_Y49_N36
\G3~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~6_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (\G1[5]~3_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (\G1[5]~3_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_G1[5]~3_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \G3~6_combout\);

-- Location: MLABCELL_X37_Y49_N12
\G1[7]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[7]~5_combout\ = (!\A[7]~input_o\ & (\B[7]~input_o\ & (\A[6]~input_o\ & \B[6]~input_o\))) # (\A[7]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	combout => \G1[7]~5_combout\);

-- Location: MLABCELL_X39_Y47_N30
\Gf[7]\ : arriaii_lcell_comb
-- Equation(s):
-- Gf(7) = ( \G2~0_combout\ & ( (!\G3~5_combout\ & (!\G3~6_combout\ & !\G1[7]~5_combout\)) ) ) # ( !\G2~0_combout\ & ( (!\G3~6_combout\ & (!\G1[7]~5_combout\ & ((!\G3~5_combout\) # (!\G1[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~5_combout\,
	datab => \ALT_INV_G3~6_combout\,
	datac => \ALT_INV_G1[7]~5_combout\,
	datad => \ALT_INV_G1[3]~1_combout\,
	dataf => \ALT_INV_G2~0_combout\,
	combout => Gf(7));

-- Location: MLABCELL_X39_Y47_N24
\C~5\ : arriaii_lcell_comb
-- Equation(s):
-- \C~5_combout\ = ( \G3~5_combout\ & ( (\C~2_combout\ & P0(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~2_combout\,
	datad => ALT_INV_P0(3),
	dataf => \ALT_INV_G3~5_combout\,
	combout => \C~5_combout\);

-- Location: MLABCELL_X39_Y47_N28
\C[8]\ : arriaii_lcell_comb
-- Equation(s):
-- C(8) = ( !\C~5_combout\ & ( Gf(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Gf(7),
	dataf => \ALT_INV_C~5_combout\,
	combout => C(8));

-- Location: IOIBUF_X21_Y56_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X23_Y51_N2
\S~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = ( C(8) & ( \B[8]~input_o\ & ( !\A[8]~input_o\ ) ) ) # ( !C(8) & ( \B[8]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( C(8) & ( !\B[8]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !C(8) & ( !\B[8]~input_o\ & ( !\A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datae => ALT_INV_C(8),
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \S~8_combout\);

-- Location: MLABCELL_X37_Y49_N20
\G3~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~7_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & (!\B[7]~input_o\ $ (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G3~7_combout\);

-- Location: MLABCELL_X37_Y49_N30
\G3~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~8_combout\ = ( \G3~7_combout\ & ( \G1[6]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[6]~4_combout\,
	dataf => \ALT_INV_G3~7_combout\,
	combout => \G3~8_combout\);

-- Location: MLABCELL_X37_Y49_N22
\G1[8]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[8]~6_combout\ = ( \B[8]~input_o\ & ( ((\A[7]~input_o\ & \B[7]~input_o\)) # (\A[8]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\A[7]~input_o\ & (\B[7]~input_o\ & \A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G1[8]~6_combout\);

-- Location: MLABCELL_X37_Y49_N4
\P2[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[8]~0_combout\ = ( \G3~3_combout\ & ( \G3~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~7_combout\,
	dataf => \ALT_INV_G3~3_combout\,
	combout => \P2[8]~0_combout\);

-- Location: LABCELL_X38_Y47_N0
\G3[8]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(8) = ( \G1[4]~2_combout\ & ( (!\G3~8_combout\ & (!\G1[8]~6_combout\ & !\P2[8]~0_combout\)) ) ) # ( !\G1[4]~2_combout\ & ( (!\G3~8_combout\ & (!\G1[8]~6_combout\ & ((!\P2[8]~0_combout\) # (!\G3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~8_combout\,
	datab => \ALT_INV_G1[8]~6_combout\,
	datac => \ALT_INV_P2[8]~0_combout\,
	datad => \ALT_INV_G3~0_combout\,
	dataf => \ALT_INV_G1[4]~2_combout\,
	combout => G3(8));

-- Location: IOIBUF_X17_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X38_Y47_N36
\C[25]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \C[25]~6_combout\ = ( \P3[8]~0_combout\ & ( (\P2[8]~0_combout\ & ((!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_P2[8]~0_combout\,
	dataf => \ALT_INV_P3[8]~0_combout\,
	combout => \C[25]~6_combout\);

-- Location: LABCELL_X43_Y48_N20
\S~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ( \C[25]~6_combout\ & ( !\A[9]~input_o\ $ (\B[9]~input_o\) ) ) # ( !\C[25]~6_combout\ & ( !G3(8) $ (!\A[9]~input_o\ $ (!\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(8),
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_C[25]~6_combout\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X23_Y56_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X37_Y49_N38
\P2[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[9]~1_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\G3~7_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (\G3~7_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_G3~7_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \P2[9]~1_combout\);

-- Location: MLABCELL_X37_Y47_N0
\C[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \C[10]~7_combout\ = ( \P2[9]~1_combout\ & ( (\C[10]~115_combout\ & (P0(2) & \G3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[10]~115_combout\,
	datab => ALT_INV_P0(2),
	datad => \ALT_INV_G3~1_combout\,
	dataf => \ALT_INV_P2[9]~1_combout\,
	combout => \C[10]~7_combout\);

-- Location: MLABCELL_X37_Y49_N10
\G1[9]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[9]~7_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) # (\A[8]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (\B[9]~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \G1[9]~7_combout\);

-- Location: MLABCELL_X37_Y49_N8
\G3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~9_combout\ = ( \A[9]~input_o\ & ( (!\B[9]~input_o\ & (\G1[7]~5_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) ) # ( !\A[9]~input_o\ & ( (\B[9]~input_o\ & (\G1[7]~5_combout\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_G1[7]~5_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \G3~9_combout\);

-- Location: MLABCELL_X37_Y47_N18
\G3[9]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(9) = ( !\G3~9_combout\ & ( (!\G1[9]~7_combout\ & ((!\P2[9]~1_combout\) # ((!\G3~2_combout\ & !\G1[5]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~2_combout\,
	datab => \ALT_INV_G1[5]~3_combout\,
	datac => \ALT_INV_P2[9]~1_combout\,
	datad => \ALT_INV_G1[9]~7_combout\,
	dataf => \ALT_INV_G3~9_combout\,
	combout => G3(9));

-- Location: LABCELL_X38_Y49_N0
\S~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = ( G3(9) & ( !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\C[10]~7_combout\)) ) ) # ( !G3(9) & ( !\A[10]~input_o\ $ (\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_C[10]~7_combout\,
	dataf => ALT_INV_G3(9),
	combout => \S~10_combout\);

-- Location: IOIBUF_X21_Y56_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X38_Y49_N2
\G1[10]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[10]~8_combout\ = ( \B[9]~input_o\ & ( (!\A[10]~input_o\ & (\B[10]~input_o\ & \A[9]~input_o\)) # (\A[10]~input_o\ & ((\A[9]~input_o\) # (\B[10]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \G1[10]~8_combout\);

-- Location: LABCELL_X38_Y49_N6
\G3~10\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~10_combout\ = ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \G3~10_combout\);

-- Location: LABCELL_X38_Y49_N10
\G3~11\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~11_combout\ = ( \G3~10_combout\ & ( \G1[8]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[8]~6_combout\,
	dataf => \ALT_INV_G3~10_combout\,
	combout => \G3~11_combout\);

-- Location: MLABCELL_X37_Y49_N6
\P2[10]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[10]~2_combout\ = ( \G3~10_combout\ & ( \G3~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~7_combout\,
	dataf => \ALT_INV_G3~10_combout\,
	combout => \P2[10]~2_combout\);

-- Location: MLABCELL_X37_Y49_N32
\G3[10]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(10) = ( !\G1[6]~4_combout\ & ( \P2[10]~2_combout\ & ( (!\G1[10]~8_combout\ & (!\G3~11_combout\ & ((!\G1[4]~2_combout\) # (!\G3~3_combout\)))) ) ) ) # ( \G1[6]~4_combout\ & ( !\P2[10]~2_combout\ & ( (!\G1[10]~8_combout\ & !\G3~11_combout\) ) ) ) # ( 
-- !\G1[6]~4_combout\ & ( !\P2[10]~2_combout\ & ( (!\G1[10]~8_combout\ & !\G3~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[10]~8_combout\,
	datab => \ALT_INV_G1[4]~2_combout\,
	datac => \ALT_INV_G3~3_combout\,
	datad => \ALT_INV_G3~11_combout\,
	datae => \ALT_INV_G1[6]~4_combout\,
	dataf => \ALT_INV_P2[10]~2_combout\,
	combout => G3(10));

-- Location: MLABCELL_X37_Y47_N20
\C[11]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \C[11]~8_combout\ = ( \P2[10]~2_combout\ & ( (\G3~1_combout\ & (!\C[11]~1_combout\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_G3~1_combout\,
	datac => \ALT_INV_C[11]~1_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_P2[10]~2_combout\,
	combout => \C[11]~8_combout\);

-- Location: LABCELL_X45_Y48_N20
\C[27]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \C[27]~9_combout\ = ( !\C[11]~8_combout\ & ( G3(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(10),
	dataf => \ALT_INV_C[11]~8_combout\,
	combout => \C[27]~9_combout\);

-- Location: LABCELL_X38_Y49_N14
\S~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = ( \C[27]~9_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\) ) ) # ( !\C[27]~9_combout\ & ( !\B[11]~input_o\ $ (\A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_C[27]~9_combout\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X12_Y56_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X38_Y49_N36
\G3~12\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~12_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G3~12_combout\);

-- Location: MLABCELL_X37_Y49_N16
\P2[11]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[11]~3_combout\ = ( \B[8]~input_o\ & ( (\G3~12_combout\ & (!\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) ) # ( !\B[8]~input_o\ & ( (\G3~12_combout\ & (\A[8]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~12_combout\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \P2[11]~3_combout\);

-- Location: MLABCELL_X39_Y47_N0
\C[12]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \C[12]~10_combout\ = ( \G3~5_combout\ & ( (!C(4) & \P2[11]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_C(4),
	datac => \ALT_INV_P2[11]~3_combout\,
	dataf => \ALT_INV_G3~5_combout\,
	combout => \C[12]~10_combout\);

-- Location: LABCELL_X38_Y49_N38
\G1[11]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[11]~9_combout\ = ( \A[11]~input_o\ & ( ((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G1[11]~9_combout\);

-- Location: MLABCELL_X37_Y49_N18
\G3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~13_combout\ = ( \G1[9]~7_combout\ & ( \G3~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~12_combout\,
	dataf => \ALT_INV_G1[9]~7_combout\,
	combout => \G3~13_combout\);

-- Location: MLABCELL_X39_Y47_N14
\G3[11]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(11) = ( \G3~6_combout\ & ( (!\P2[11]~3_combout\ & (!\G1[11]~9_combout\ & !\G3~13_combout\)) ) ) # ( !\G3~6_combout\ & ( (!\G1[11]~9_combout\ & (!\G3~13_combout\ & ((!\P2[11]~3_combout\) # (!\G1[7]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[11]~3_combout\,
	datab => \ALT_INV_G1[7]~5_combout\,
	datac => \ALT_INV_G1[11]~9_combout\,
	datad => \ALT_INV_G3~13_combout\,
	dataf => \ALT_INV_G3~6_combout\,
	combout => G3(11));

-- Location: LABCELL_X40_Y46_N0
\C[36]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \C[36]~11_combout\ = (!\C[12]~10_combout\ & G3(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[12]~10_combout\,
	datab => ALT_INV_G3(11),
	combout => \C[36]~11_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X38_Y49_N22
\S~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\C[36]~11_combout\) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (\C[36]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_C[36]~11_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X33_Y56_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X14_Y56_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X38_Y49_N4
\G3~14\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~14_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \G3~14_combout\);

-- Location: LABCELL_X38_Y49_N24
\P2[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[12]~4_combout\ = ( \G3~10_combout\ & ( \G3~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~14_combout\,
	dataf => \ALT_INV_G3~10_combout\,
	combout => \P2[12]~4_combout\);

-- Location: MLABCELL_X42_Y48_N0
\C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \C[13]~12_combout\ = (\P2[12]~4_combout\ & (\P2[8]~0_combout\ & !C(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[12]~4_combout\,
	datac => \ALT_INV_P2[8]~0_combout\,
	datad => ALT_INV_C(5),
	combout => \C[13]~12_combout\);

-- Location: LABCELL_X38_Y49_N30
\G3~15\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~15_combout\ = ( \G1[10]~8_combout\ & ( \G3~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~14_combout\,
	dataf => \ALT_INV_G1[10]~8_combout\,
	combout => \G3~15_combout\);

-- Location: LABCELL_X38_Y49_N12
\G1[12]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[12]~10_combout\ = ( \A[12]~input_o\ & ( ((\B[11]~input_o\ & \A[11]~input_o\)) # (\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( (\B[11]~input_o\ & (\A[11]~input_o\ & \B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \G1[12]~10_combout\);

-- Location: MLABCELL_X42_Y48_N26
\G3[12]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(12) = ( \P2[12]~4_combout\ & ( (!\G3~15_combout\ & (!\G1[12]~10_combout\ & (!\G1[8]~6_combout\ & !\G3~8_combout\))) ) ) # ( !\P2[12]~4_combout\ & ( (!\G3~15_combout\ & !\G1[12]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~15_combout\,
	datab => \ALT_INV_G1[12]~10_combout\,
	datac => \ALT_INV_G1[8]~6_combout\,
	datad => \ALT_INV_G3~8_combout\,
	dataf => \ALT_INV_P2[12]~4_combout\,
	combout => G3(12));

-- Location: MLABCELL_X42_Y48_N28
\C[37]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \C[37]~13_combout\ = (!\C[13]~12_combout\ & G3(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[13]~12_combout\,
	datab => ALT_INV_G3(12),
	combout => \C[37]~13_combout\);

-- Location: LABCELL_X38_Y49_N34
\S~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = ( \C[37]~13_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\) ) ) # ( !\C[37]~13_combout\ & ( !\B[13]~input_o\ $ (\A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_C[37]~13_combout\,
	combout => \S~13_combout\);

-- Location: LABCELL_X38_Y49_N18
\G3~16\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~16_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \G3~16_combout\);

-- Location: LABCELL_X38_Y48_N2
\G3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~17_combout\ = ( \G3~16_combout\ & ( \G1[11]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G3~16_combout\,
	dataf => \ALT_INV_G1[11]~9_combout\,
	combout => \G3~17_combout\);

-- Location: LABCELL_X35_Y49_N6
\P2[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[13]~5_combout\ = ( \G3~16_combout\ & ( \G3~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~12_combout\,
	dataf => \ALT_INV_G3~16_combout\,
	combout => \P2[13]~5_combout\);

-- Location: LABCELL_X38_Y49_N16
\G1[13]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[13]~11_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[12]~input_o\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((\A[13]~input_o\) # (\A[12]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \G1[13]~11_combout\);

-- Location: MLABCELL_X37_Y47_N30
\G3[13]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(13) = ( !\G1[13]~11_combout\ & ( (!\G3~17_combout\ & ((!\P2[13]~5_combout\) # ((!\G1[9]~7_combout\ & !\G3~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[9]~7_combout\,
	datab => \ALT_INV_G3~9_combout\,
	datac => \ALT_INV_G3~17_combout\,
	datad => \ALT_INV_P2[13]~5_combout\,
	dataf => \ALT_INV_G1[13]~11_combout\,
	combout => G3(13));

-- Location: MLABCELL_X37_Y47_N4
\C~14\ : arriaii_lcell_comb
-- Equation(s):
-- \C~14_combout\ = ( \C~3_combout\ & ( (\P2[13]~5_combout\ & (\P2[9]~1_combout\ & P0(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[13]~5_combout\,
	datab => \ALT_INV_P2[9]~1_combout\,
	datac => ALT_INV_P0(5),
	dataf => \ALT_INV_C~3_combout\,
	combout => \C~14_combout\);

-- Location: MLABCELL_X37_Y47_N6
\G5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G5~0_combout\ = ( !Gf(5) & ( (\P2[13]~5_combout\ & \P2[9]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[13]~5_combout\,
	datab => \ALT_INV_P2[9]~1_combout\,
	dataf => ALT_INV_Gf(5),
	combout => \G5~0_combout\);

-- Location: MLABCELL_X37_Y47_N28
\C[14]\ : arriaii_lcell_comb
-- Equation(s):
-- C(14) = ( !\G5~0_combout\ & ( (G3(13) & !\C~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(13),
	datad => \ALT_INV_C~14_combout\,
	dataf => \ALT_INV_G5~0_combout\,
	combout => C(14));

-- Location: IOIBUF_X36_Y56_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X39_Y49_N22
\S~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = ( \A[14]~input_o\ & ( \B[14]~input_o\ & ( !C(14) ) ) ) # ( !\A[14]~input_o\ & ( \B[14]~input_o\ & ( C(14) ) ) ) # ( \A[14]~input_o\ & ( !\B[14]~input_o\ & ( C(14) ) ) ) # ( !\A[14]~input_o\ & ( !\B[14]~input_o\ & ( !C(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_C(14),
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \S~14_combout\);

-- Location: LABCELL_X38_Y49_N32
\G1[14]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[14]~12_combout\ = ( \B[14]~input_o\ & ( ((\B[13]~input_o\ & \A[13]~input_o\)) # (\A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (\B[13]~input_o\ & (\A[13]~input_o\ & \A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \G1[14]~12_combout\);

-- Location: LABCELL_X38_Y49_N20
\G3~18\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~18_combout\ = ( \B[14]~input_o\ & ( (!\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \G3~18_combout\);

-- Location: LABCELL_X38_Y49_N8
\G3~19\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~19_combout\ = ( \G3~18_combout\ & ( \G1[12]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[12]~10_combout\,
	dataf => \ALT_INV_G3~18_combout\,
	combout => \G3~19_combout\);

-- Location: LABCELL_X38_Y49_N28
\P2[14]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[14]~6_combout\ = ( \G3~18_combout\ & ( \G3~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~14_combout\,
	dataf => \ALT_INV_G3~18_combout\,
	combout => \P2[14]~6_combout\);

-- Location: LABCELL_X38_Y49_N26
\G3[14]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(14) = ( \G1[10]~8_combout\ & ( (!\G1[14]~12_combout\ & (!\G3~19_combout\ & !\P2[14]~6_combout\)) ) ) # ( !\G1[10]~8_combout\ & ( (!\G1[14]~12_combout\ & (!\G3~19_combout\ & ((!\G3~11_combout\) # (!\P2[14]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[14]~12_combout\,
	datab => \ALT_INV_G3~11_combout\,
	datac => \ALT_INV_G3~19_combout\,
	datad => \ALT_INV_P2[14]~6_combout\,
	dataf => \ALT_INV_G1[10]~8_combout\,
	combout => G3(14));

-- Location: MLABCELL_X46_Y49_N8
\G5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G5~1_combout\ = ( \P2[10]~2_combout\ & ( (\P2[14]~6_combout\ & ((!\Gf[6]~1_combout\) # (\G3~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[14]~6_combout\,
	datac => \ALT_INV_Gf[6]~1_combout\,
	datad => \ALT_INV_G3~4_combout\,
	dataf => \ALT_INV_P2[10]~2_combout\,
	combout => \G5~1_combout\);

-- Location: MLABCELL_X46_Y49_N6
\C~15\ : arriaii_lcell_comb
-- Equation(s):
-- \C~15_combout\ = ( \P2[10]~2_combout\ & ( (\C~4_combout\ & \P2[14]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~4_combout\,
	datad => \ALT_INV_P2[14]~6_combout\,
	dataf => \ALT_INV_P2[10]~2_combout\,
	combout => \C~15_combout\);

-- Location: LABCELL_X45_Y49_N20
\C[15]\ : arriaii_lcell_comb
-- Equation(s):
-- C(15) = ( !\C~15_combout\ & ( (G3(14) & !\G5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(14),
	datad => \ALT_INV_G5~1_combout\,
	dataf => \ALT_INV_C~15_combout\,
	combout => C(15));

-- Location: IOIBUF_X38_Y56_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X39_Y49_N6
\S~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = ( \B[15]~input_o\ & ( \A[15]~input_o\ & ( !C(15) ) ) ) # ( !\B[15]~input_o\ & ( \A[15]~input_o\ & ( C(15) ) ) ) # ( \B[15]~input_o\ & ( !\A[15]~input_o\ & ( C(15) ) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ & ( !C(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_C(15),
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \S~15_combout\);

-- Location: IOIBUF_X31_Y56_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X39_Y49_N10
\G3~20\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~20_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G3~20_combout\);

-- Location: MLABCELL_X39_Y47_N16
\P2[15]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[15]~7_combout\ = ( \G3~16_combout\ & ( \G3~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~20_combout\,
	dataf => \ALT_INV_G3~16_combout\,
	combout => \P2[15]~7_combout\);

-- Location: MLABCELL_X39_Y47_N22
\C~16\ : arriaii_lcell_comb
-- Equation(s):
-- \C~16_combout\ = ( \C~5_combout\ & ( (\P2[11]~3_combout\ & \P2[15]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[11]~3_combout\,
	datac => \ALT_INV_P2[15]~7_combout\,
	dataf => \ALT_INV_C~5_combout\,
	combout => \C~16_combout\);

-- Location: MLABCELL_X39_Y47_N18
\G3~21\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~21_combout\ = (\G3~20_combout\ & \G1[13]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~20_combout\,
	datad => \ALT_INV_G1[13]~11_combout\,
	combout => \G3~21_combout\);

-- Location: MLABCELL_X39_Y49_N14
\G1[15]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[15]~13_combout\ = ( \A[14]~input_o\ & ( \A[15]~input_o\ & ( (\B[14]~input_o\) # (\B[15]~input_o\) ) ) ) # ( !\A[14]~input_o\ & ( \A[15]~input_o\ & ( \B[15]~input_o\ ) ) ) # ( \A[14]~input_o\ & ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & \B[14]~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G1[15]~13_combout\);

-- Location: MLABCELL_X39_Y47_N4
\G3[15]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(15) = ( !\G1[15]~13_combout\ & ( (!\G3~21_combout\ & ((!\P2[15]~7_combout\) # ((!\G3~13_combout\ & !\G1[11]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~21_combout\,
	datab => \ALT_INV_P2[15]~7_combout\,
	datac => \ALT_INV_G3~13_combout\,
	datad => \ALT_INV_G1[11]~9_combout\,
	dataf => \ALT_INV_G1[15]~13_combout\,
	combout => G3(15));

-- Location: MLABCELL_X39_Y47_N6
\G5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G5~2_combout\ = (\P2[15]~7_combout\ & (!Gf(7) & \P2[11]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[15]~7_combout\,
	datac => ALT_INV_Gf(7),
	datad => \ALT_INV_P2[11]~3_combout\,
	combout => \G5~2_combout\);

-- Location: MLABCELL_X39_Y45_N0
\C[16]\ : arriaii_lcell_comb
-- Equation(s):
-- C(16) = ( !\G5~2_combout\ & ( (!\C~16_combout\ & G3(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~16_combout\,
	datad => ALT_INV_G3(15),
	dataf => \ALT_INV_G5~2_combout\,
	combout => C(16));

-- Location: MLABCELL_X39_Y49_N16
\S~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (!C(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => ALT_INV_C(16),
	combout => \S~16_combout\);

-- Location: MLABCELL_X39_Y49_N2
\G1[16]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[16]~14_combout\ = ( \A[15]~input_o\ & ( (!\B[16]~input_o\ & (\A[16]~input_o\ & \B[15]~input_o\)) # (\B[16]~input_o\ & ((\B[15]~input_o\) # (\A[16]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[16]~input_o\ & \A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G1[16]~14_combout\);

-- Location: MLABCELL_X39_Y49_N0
\G3~22\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~22_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\B[15]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \G3~22_combout\);

-- Location: MLABCELL_X39_Y49_N24
\G3~23\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~23_combout\ = ( \G1[14]~12_combout\ & ( \G3~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~22_combout\,
	dataf => \ALT_INV_G1[14]~12_combout\,
	combout => \G3~23_combout\);

-- Location: MLABCELL_X39_Y49_N26
\P2[16]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[16]~8_combout\ = ( \G3~18_combout\ & ( \G3~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~22_combout\,
	dataf => \ALT_INV_G3~18_combout\,
	combout => \P2[16]~8_combout\);

-- Location: MLABCELL_X42_Y48_N24
\G3[16]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(16) = ( \P2[16]~8_combout\ & ( (!\G3~15_combout\ & (!\G1[12]~10_combout\ & (!\G1[16]~14_combout\ & !\G3~23_combout\))) ) ) # ( !\P2[16]~8_combout\ & ( (!\G1[16]~14_combout\ & !\G3~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~15_combout\,
	datab => \ALT_INV_G1[12]~10_combout\,
	datac => \ALT_INV_G1[16]~14_combout\,
	datad => \ALT_INV_G3~23_combout\,
	dataf => \ALT_INV_P2[16]~8_combout\,
	combout => G3(16));

-- Location: MLABCELL_X42_Y48_N2
\G4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~0_combout\ = ( \P2[16]~8_combout\ & ( \P2[12]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[12]~4_combout\,
	dataf => \ALT_INV_P2[16]~8_combout\,
	combout => \G4~0_combout\);

-- Location: LABCELL_X43_Y48_N26
\C[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \C[17]~17_combout\ = ( \C[25]~6_combout\ & ( (G3(16) & !\G4~0_combout\) ) ) # ( !\C[25]~6_combout\ & ( (G3(16) & ((!\G4~0_combout\) # (G3(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(16),
	datac => \ALT_INV_G4~0_combout\,
	datad => ALT_INV_G3(8),
	dataf => \ALT_INV_C[25]~6_combout\,
	combout => \C[17]~17_combout\);

-- Location: IOIBUF_X14_Y56_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X15_Y56_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X39_Y49_N30
\S~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = ( \A[17]~input_o\ & ( !\C[17]~17_combout\ $ (!\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( !\C[17]~17_combout\ $ (\B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[17]~17_combout\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \S~17_combout\);

-- Location: IOIBUF_X17_Y56_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X39_Y49_N18
\G3~24\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~24_combout\ = ( \A[17]~input_o\ & ( (!\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (!\B[16]~input_o\ $ (!\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \G3~24_combout\);

-- Location: MLABCELL_X39_Y49_N28
\G3~25\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~25_combout\ = ( \G1[15]~13_combout\ & ( \G3~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~24_combout\,
	dataf => \ALT_INV_G1[15]~13_combout\,
	combout => \G3~25_combout\);

-- Location: MLABCELL_X39_Y49_N32
\G1[17]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[17]~15_combout\ = ( \B[17]~input_o\ & ( ((\B[16]~input_o\ & \A[16]~input_o\)) # (\A[17]~input_o\) ) ) # ( !\B[17]~input_o\ & ( (\A[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010101111100000000000001010101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[17]~input_o\,
	combout => \G1[17]~15_combout\);

-- Location: LABCELL_X40_Y47_N2
\P2[17]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[17]~9_combout\ = ( \G3~20_combout\ & ( \G3~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G3~20_combout\,
	dataf => \ALT_INV_G3~24_combout\,
	combout => \P2[17]~9_combout\);

-- Location: MLABCELL_X42_Y45_N24
\G3[17]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(17) = ( \G3~17_combout\ & ( (!\G3~25_combout\ & (!\G1[17]~15_combout\ & !\P2[17]~9_combout\)) ) ) # ( !\G3~17_combout\ & ( (!\G3~25_combout\ & (!\G1[17]~15_combout\ & ((!\P2[17]~9_combout\) # (!\G1[13]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~25_combout\,
	datab => \ALT_INV_G1[17]~15_combout\,
	datac => \ALT_INV_P2[17]~9_combout\,
	datad => \ALT_INV_G1[13]~11_combout\,
	dataf => \ALT_INV_G3~17_combout\,
	combout => G3(17));

-- Location: MLABCELL_X42_Y45_N2
\G4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~1_combout\ = (\P2[17]~9_combout\ & \P2[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[17]~9_combout\,
	datac => \ALT_INV_P2[13]~5_combout\,
	combout => \G4~1_combout\);

-- Location: MLABCELL_X42_Y45_N0
\C[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \C[18]~18_combout\ = ( \G4~1_combout\ & ( (G3(9) & (G3(17) & !\C[10]~7_combout\)) ) ) # ( !\G4~1_combout\ & ( G3(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(9),
	datac => ALT_INV_G3(17),
	datad => \ALT_INV_C[10]~7_combout\,
	dataf => \ALT_INV_G4~1_combout\,
	combout => \C[18]~18_combout\);

-- Location: MLABCELL_X39_Y48_N22
\S~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = ( \C[18]~18_combout\ & ( !\B[18]~input_o\ $ (!\A[18]~input_o\) ) ) # ( !\C[18]~18_combout\ & ( !\B[18]~input_o\ $ (\A[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_C[18]~18_combout\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X38_Y56_N94
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X7_Y56_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X39_Y48_N24
\G3~26\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~26_combout\ = ( \B[18]~input_o\ & ( (!\A[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) # ( !\B[18]~input_o\ & ( (\A[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \G3~26_combout\);

-- Location: MLABCELL_X39_Y49_N38
\G3~27\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~27_combout\ = ( \G1[16]~14_combout\ & ( \G3~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~26_combout\,
	dataf => \ALT_INV_G1[16]~14_combout\,
	combout => \G3~27_combout\);

-- Location: MLABCELL_X39_Y48_N8
\G1[18]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[18]~16_combout\ = ( \B[18]~input_o\ & ( ((\B[17]~input_o\ & \A[17]~input_o\)) # (\A[18]~input_o\) ) ) # ( !\B[18]~input_o\ & ( (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \G1[18]~16_combout\);

-- Location: MLABCELL_X39_Y49_N36
\P2[18]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[18]~10_combout\ = (\G3~26_combout\ & \G3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~26_combout\,
	datac => \ALT_INV_G3~22_combout\,
	combout => \P2[18]~10_combout\);

-- Location: MLABCELL_X46_Y49_N14
\G3[18]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(18) = ( \G1[14]~12_combout\ & ( (!\G3~27_combout\ & (!\G1[18]~16_combout\ & !\P2[18]~10_combout\)) ) ) # ( !\G1[14]~12_combout\ & ( (!\G3~27_combout\ & (!\G1[18]~16_combout\ & ((!\P2[18]~10_combout\) # (!\G3~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~27_combout\,
	datab => \ALT_INV_G1[18]~16_combout\,
	datac => \ALT_INV_P2[18]~10_combout\,
	datad => \ALT_INV_G3~19_combout\,
	dataf => \ALT_INV_G1[14]~12_combout\,
	combout => G3(18));

-- Location: MLABCELL_X46_Y49_N20
\G4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~2_combout\ = ( \P2[18]~10_combout\ & ( \P2[14]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P2[14]~6_combout\,
	dataf => \ALT_INV_P2[18]~10_combout\,
	combout => \G4~2_combout\);

-- Location: LABCELL_X45_Y48_N22
\G4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~3_combout\ = (!G3(10) & \G4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(10),
	datac => \ALT_INV_G4~2_combout\,
	combout => \G4~3_combout\);

-- Location: LABCELL_X45_Y48_N4
\C[35]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \C[35]~19_combout\ = ( \C[11]~8_combout\ & ( \G4~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G4~2_combout\,
	dataf => \ALT_INV_C[11]~8_combout\,
	combout => \C[35]~19_combout\);

-- Location: LABCELL_X45_Y48_N28
\C[19]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \C[19]~20_combout\ = (G3(18) & (!\G4~3_combout\ & !\C[35]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(18),
	datab => \ALT_INV_G4~3_combout\,
	datac => \ALT_INV_C[35]~19_combout\,
	combout => \C[19]~20_combout\);

-- Location: MLABCELL_X39_Y48_N12
\S~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = ( \C[19]~20_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) ) # ( !\C[19]~20_combout\ & ( !\B[19]~input_o\ $ (\A[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_C[19]~20_combout\,
	combout => \S~19_combout\);

-- Location: IOIBUF_X19_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X35_Y56_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X39_Y48_N14
\G3~28\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~28_combout\ = (!\B[19]~input_o\ & (\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\B[19]~input_o\ & (!\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \G3~28_combout\);

-- Location: MLABCELL_X39_Y49_N8
\P2[19]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[19]~11_combout\ = (\G3~24_combout\ & \G3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~24_combout\,
	datac => \ALT_INV_G3~28_combout\,
	combout => \P2[19]~11_combout\);

-- Location: MLABCELL_X39_Y47_N10
\G4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~4_combout\ = ( \P2[15]~7_combout\ & ( \P2[19]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[19]~11_combout\,
	dataf => \ALT_INV_P2[15]~7_combout\,
	combout => \G4~4_combout\);

-- Location: MLABCELL_X39_Y47_N34
\G3~29\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~29_combout\ = (\G1[17]~15_combout\ & \G3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[17]~15_combout\,
	datad => \ALT_INV_G3~28_combout\,
	combout => \G3~29_combout\);

-- Location: MLABCELL_X39_Y48_N38
\G1[19]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[19]~17_combout\ = (!\B[19]~input_o\ & (\A[19]~input_o\ & (\B[18]~input_o\ & \A[18]~input_o\))) # (\B[19]~input_o\ & (((\B[18]~input_o\ & \A[18]~input_o\)) # (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \G1[19]~17_combout\);

-- Location: MLABCELL_X39_Y47_N32
\G3[19]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(19) = ( \P2[19]~11_combout\ & ( (!\G3~21_combout\ & (!\G3~29_combout\ & (!\G1[15]~13_combout\ & !\G1[19]~17_combout\))) ) ) # ( !\P2[19]~11_combout\ & ( (!\G3~29_combout\ & !\G1[19]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~21_combout\,
	datab => \ALT_INV_G3~29_combout\,
	datac => \ALT_INV_G1[15]~13_combout\,
	datad => \ALT_INV_G1[19]~17_combout\,
	dataf => \ALT_INV_P2[19]~11_combout\,
	combout => G3(19));

-- Location: LABCELL_X40_Y46_N2
\C[20]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \C[20]~21_combout\ = ( G3(19) & ( (!\G4~4_combout\) # ((!\C[12]~10_combout\ & G3(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[12]~10_combout\,
	datab => ALT_INV_G3(11),
	datad => \ALT_INV_G4~4_combout\,
	dataf => ALT_INV_G3(19),
	combout => \C[20]~21_combout\);

-- Location: MLABCELL_X39_Y48_N2
\S~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = ( \C[20]~21_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\) ) ) # ( !\C[20]~21_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_C[20]~21_combout\,
	combout => \S~20_combout\);

-- Location: MLABCELL_X39_Y48_N36
\G3~30\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~30_combout\ = ( \B[20]~input_o\ & ( (!\A[20]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) ) # ( !\B[20]~input_o\ & ( (\A[20]~input_o\ & (!\B[19]~input_o\ $ (!\A[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \G3~30_combout\);

-- Location: MLABCELL_X42_Y48_N14
\P2[20]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[20]~12_combout\ = ( \G3~30_combout\ & ( \G3~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~26_combout\,
	dataf => \ALT_INV_G3~30_combout\,
	combout => \P2[20]~12_combout\);

-- Location: MLABCELL_X39_Y48_N6
\G1[20]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[20]~18_combout\ = (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[19]~input_o\ & \B[19]~input_o\))) # (\A[20]~input_o\ & (((\A[19]~input_o\ & \B[19]~input_o\)) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	combout => \G1[20]~18_combout\);

-- Location: LABCELL_X47_Y48_N0
\G3~31\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~31_combout\ = ( \G1[18]~16_combout\ & ( \G3~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~30_combout\,
	datae => \ALT_INV_G1[18]~16_combout\,
	combout => \G3~31_combout\);

-- Location: MLABCELL_X42_Y48_N12
\G3[20]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(20) = ( !\G3~31_combout\ & ( (!\G1[20]~18_combout\ & ((!\P2[20]~12_combout\) # ((!\G1[16]~14_combout\ & !\G3~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[20]~12_combout\,
	datab => \ALT_INV_G1[20]~18_combout\,
	datac => \ALT_INV_G1[16]~14_combout\,
	datad => \ALT_INV_G3~23_combout\,
	dataf => \ALT_INV_G3~31_combout\,
	combout => G3(20));

-- Location: MLABCELL_X42_Y48_N36
\C[21]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \C[21]~22_combout\ = ( \G4~0_combout\ & ( (\P2[20]~12_combout\ & (\P2[8]~0_combout\ & !C(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[20]~12_combout\,
	datac => \ALT_INV_P2[8]~0_combout\,
	datad => ALT_INV_C(5),
	dataf => \ALT_INV_G4~0_combout\,
	combout => \C[21]~22_combout\);

-- Location: MLABCELL_X42_Y48_N38
\C[21]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \C[21]~23_combout\ = ( !\C[21]~22_combout\ & ( (G3(20) & ((!\P2[16]~8_combout\) # ((!\P2[20]~12_combout\) # (G3(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[16]~8_combout\,
	datab => \ALT_INV_P2[20]~12_combout\,
	datac => ALT_INV_G3(12),
	datad => ALT_INV_G3(20),
	dataf => \ALT_INV_C[21]~22_combout\,
	combout => \C[21]~23_combout\);

-- Location: IOIBUF_X17_Y56_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X10_Y56_N63
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X39_Y48_N10
\S~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = ( \A[21]~input_o\ & ( !\C[21]~23_combout\ $ (!\B[21]~input_o\) ) ) # ( !\A[21]~input_o\ & ( !\C[21]~23_combout\ $ (\B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C[21]~23_combout\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S~21_combout\);

-- Location: MLABCELL_X39_Y48_N4
\G3~32\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~32_combout\ = ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & (!\A[20]~input_o\ $ (!\B[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \G3~32_combout\);

-- Location: MLABCELL_X39_Y48_N20
\G3~33\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~33_combout\ = ( \G1[19]~17_combout\ & ( \G3~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~32_combout\,
	dataf => \ALT_INV_G1[19]~17_combout\,
	combout => \G3~33_combout\);

-- Location: MLABCELL_X39_Y48_N0
\G1[21]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[21]~19_combout\ = ( \B[20]~input_o\ & ( (!\A[20]~input_o\ & (\A[21]~input_o\ & \B[21]~input_o\)) # (\A[20]~input_o\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) ) ) # ( !\B[20]~input_o\ & ( (\A[21]~input_o\ & \B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \G1[21]~19_combout\);

-- Location: MLABCELL_X42_Y45_N10
\P2[21]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[21]~13_combout\ = ( \G3~32_combout\ & ( \G3~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~28_combout\,
	dataf => \ALT_INV_G3~32_combout\,
	combout => \P2[21]~13_combout\);

-- Location: MLABCELL_X42_Y45_N26
\G3[21]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(21) = ( \P2[21]~13_combout\ & ( (!\G3~25_combout\ & (!\G1[17]~15_combout\ & (!\G3~33_combout\ & !\G1[21]~19_combout\))) ) ) # ( !\P2[21]~13_combout\ & ( (!\G3~33_combout\ & !\G1[21]~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~25_combout\,
	datab => \ALT_INV_G1[17]~15_combout\,
	datac => \ALT_INV_G3~33_combout\,
	datad => \ALT_INV_G1[21]~19_combout\,
	dataf => \ALT_INV_P2[21]~13_combout\,
	combout => G3(21));

-- Location: MLABCELL_X37_Y47_N12
\C[38]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \C[38]~24_combout\ = ( \P2[21]~13_combout\ & ( \G4~1_combout\ & ( (\P2[9]~1_combout\ & ((!Gf(5)) # ((P0(5) & \C~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(5),
	datab => ALT_INV_Gf(5),
	datac => \ALT_INV_C~3_combout\,
	datad => \ALT_INV_P2[9]~1_combout\,
	datae => \ALT_INV_P2[21]~13_combout\,
	dataf => \ALT_INV_G4~1_combout\,
	combout => \C[38]~24_combout\);

-- Location: MLABCELL_X42_Y44_N2
\G4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~5_combout\ = ( \P2[21]~13_combout\ & ( (\P2[17]~9_combout\ & !G3(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[17]~9_combout\,
	datad => ALT_INV_G3(13),
	dataf => \ALT_INV_P2[21]~13_combout\,
	combout => \G4~5_combout\);

-- Location: MLABCELL_X42_Y44_N24
\C[22]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \C[22]~25_combout\ = ( !\G4~5_combout\ & ( (G3(21) & !\C[38]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(21),
	datac => \ALT_INV_C[38]~24_combout\,
	dataf => \ALT_INV_G4~5_combout\,
	combout => \C[22]~25_combout\);

-- Location: IOIBUF_X30_Y56_N32
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: MLABCELL_X39_Y48_N28
\S~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = !\C[22]~25_combout\ $ (!\A[22]~input_o\ $ (!\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C[22]~25_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X40_Y56_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: MLABCELL_X39_Y48_N34
\G1[22]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[22]~20_combout\ = ( \B[21]~input_o\ & ( (!\A[22]~input_o\ & (\A[21]~input_o\ & \B[22]~input_o\)) # (\A[22]~input_o\ & ((\B[22]~input_o\) # (\A[21]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (\A[22]~input_o\ & \B[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \G1[22]~20_combout\);

-- Location: MLABCELL_X39_Y48_N32
\G3~34\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~34_combout\ = (!\A[22]~input_o\ & (\B[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\)))) # (\A[22]~input_o\ & (!\B[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \G3~34_combout\);

-- Location: MLABCELL_X39_Y48_N26
\G3~35\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~35_combout\ = ( \G1[20]~18_combout\ & ( \G3~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~34_combout\,
	dataf => \ALT_INV_G1[20]~18_combout\,
	combout => \G3~35_combout\);

-- Location: LABCELL_X47_Y48_N4
\P2[22]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[22]~14_combout\ = ( \G3~30_combout\ & ( \G3~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~34_combout\,
	dataf => \ALT_INV_G3~30_combout\,
	combout => \P2[22]~14_combout\);

-- Location: MLABCELL_X46_Y49_N12
\G3[22]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(22) = ( \P2[22]~14_combout\ & ( (!\G3~27_combout\ & (!\G1[18]~16_combout\ & (!\G1[22]~20_combout\ & !\G3~35_combout\))) ) ) # ( !\P2[22]~14_combout\ & ( (!\G1[22]~20_combout\ & !\G3~35_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~27_combout\,
	datab => \ALT_INV_G1[18]~16_combout\,
	datac => \ALT_INV_G1[22]~20_combout\,
	datad => \ALT_INV_G3~35_combout\,
	dataf => \ALT_INV_P2[22]~14_combout\,
	combout => G3(22));

-- Location: MLABCELL_X46_Y49_N2
\C[39]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \C[39]~26_combout\ = ( \G3~4_combout\ & ( \G4~2_combout\ & ( (\P2[10]~2_combout\ & \P2[22]~14_combout\) ) ) ) # ( !\G3~4_combout\ & ( \G4~2_combout\ & ( (\P2[10]~2_combout\ & (\P2[22]~14_combout\ & ((!\Gf[6]~1_combout\) # (\C~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[10]~2_combout\,
	datab => \ALT_INV_C~4_combout\,
	datac => \ALT_INV_P2[22]~14_combout\,
	datad => \ALT_INV_Gf[6]~1_combout\,
	datae => \ALT_INV_G3~4_combout\,
	dataf => \ALT_INV_G4~2_combout\,
	combout => \C[39]~26_combout\);

-- Location: MLABCELL_X46_Y49_N38
\G4~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~6_combout\ = ( \P2[22]~14_combout\ & ( (!G3(14) & \P2[18]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(14),
	datad => \ALT_INV_P2[18]~10_combout\,
	dataf => \ALT_INV_P2[22]~14_combout\,
	combout => \G4~6_combout\);

-- Location: MLABCELL_X46_Y49_N26
\C[23]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \C[23]~27_combout\ = ( !\G4~6_combout\ & ( (G3(22) & !\C[39]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(22),
	datac => \ALT_INV_C[39]~26_combout\,
	dataf => \ALT_INV_G4~6_combout\,
	combout => \C[23]~27_combout\);

-- Location: LABCELL_X47_Y48_N28
\S~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = ( \C[23]~27_combout\ & ( !\A[23]~input_o\ $ (!\B[23]~input_o\) ) ) # ( !\C[23]~27_combout\ & ( !\A[23]~input_o\ $ (\B[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011001100001100110011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	datae => \ALT_INV_C[23]~27_combout\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X56_Y56_N94
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X56_Y56_N63
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X39_Y48_N18
\G1[23]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[23]~21_combout\ = ( \A[23]~input_o\ & ( ((\B[22]~input_o\ & \A[22]~input_o\)) # (\B[23]~input_o\) ) ) # ( !\A[23]~input_o\ & ( (\B[22]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \G1[23]~21_combout\);

-- Location: MLABCELL_X39_Y48_N16
\G3~36\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~36_combout\ = ( \A[23]~input_o\ & ( (!\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) ) # ( !\A[23]~input_o\ & ( (\B[23]~input_o\ & (!\B[22]~input_o\ $ (!\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \G3~36_combout\);

-- Location: MLABCELL_X39_Y47_N36
\P2[23]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[23]~15_combout\ = ( \G3~36_combout\ & ( \G3~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~32_combout\,
	dataf => \ALT_INV_G3~36_combout\,
	combout => \P2[23]~15_combout\);

-- Location: MLABCELL_X39_Y48_N30
\G3~37\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~37_combout\ = ( \G3~36_combout\ & ( \G1[21]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[21]~19_combout\,
	dataf => \ALT_INV_G3~36_combout\,
	combout => \G3~37_combout\);

-- Location: MLABCELL_X39_Y47_N38
\G3[23]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(23) = ( !\G3~37_combout\ & ( (!\G1[23]~21_combout\ & ((!\P2[23]~15_combout\) # ((!\G3~29_combout\ & !\G1[19]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000101010101000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[23]~21_combout\,
	datab => \ALT_INV_G3~29_combout\,
	datac => \ALT_INV_G1[19]~17_combout\,
	datad => \ALT_INV_P2[23]~15_combout\,
	dataf => \ALT_INV_G3~37_combout\,
	combout => G3(23));

-- Location: MLABCELL_X39_Y47_N20
\C[24]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \C[24]~28_combout\ = ( Gf(7) & ( G3(23) ) ) # ( !Gf(7) & ( (G3(23) & ((!\P2[11]~3_combout\) # ((!\G4~4_combout\) # (!\P2[23]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[11]~3_combout\,
	datab => \ALT_INV_G4~4_combout\,
	datac => ALT_INV_G3(23),
	datad => \ALT_INV_P2[23]~15_combout\,
	dataf => ALT_INV_Gf(7),
	combout => \C[24]~28_combout\);

-- Location: MLABCELL_X39_Y47_N8
\C[24]\ : arriaii_lcell_comb
-- Equation(s):
-- C(24) = ( G3(15) & ( (\C[24]~28_combout\ & ((!\P2[19]~11_combout\) # ((!\C~16_combout\) # (!\P2[23]~15_combout\)))) ) ) # ( !G3(15) & ( (\C[24]~28_combout\ & ((!\P2[19]~11_combout\) # (!\P2[23]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[24]~28_combout\,
	datab => \ALT_INV_P2[19]~11_combout\,
	datac => \ALT_INV_C~16_combout\,
	datad => \ALT_INV_P2[23]~15_combout\,
	dataf => ALT_INV_G3(15),
	combout => C(24));

-- Location: LABCELL_X47_Y48_N12
\S~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = ( C(24) & ( !\B[24]~input_o\ $ (!\A[24]~input_o\) ) ) # ( !C(24) & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101010101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => ALT_INV_C(24),
	combout => \S~24_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X47_Y48_N16
\G3~38\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~38_combout\ = ( \B[23]~input_o\ & ( (!\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\A[23]~input_o\ & (!\B[24]~input_o\ $ (!\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000011001100000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	combout => \G3~38_combout\);

-- Location: LABCELL_X47_Y48_N22
\P2[24]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[24]~16_combout\ = ( \G3~38_combout\ & ( \G3~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~34_combout\,
	dataf => \ALT_INV_G3~38_combout\,
	combout => \P2[24]~16_combout\);

-- Location: LABCELL_X47_Y48_N26
\G1[24]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[24]~22_combout\ = ( \B[23]~input_o\ & ( (!\B[24]~input_o\ & (\A[24]~input_o\ & \A[23]~input_o\)) # (\B[24]~input_o\ & ((\A[23]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[23]~input_o\ & ( (\B[24]~input_o\ & \A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010001000100010001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[23]~input_o\,
	combout => \G1[24]~22_combout\);

-- Location: LABCELL_X47_Y48_N8
\G3~39\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~39_combout\ = ( \G3~38_combout\ & ( \G1[22]~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[22]~20_combout\,
	dataf => \ALT_INV_G3~38_combout\,
	combout => \G3~39_combout\);

-- Location: LABCELL_X43_Y48_N14
\G3[24]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(24) = ( !\G3~39_combout\ & ( (!\G1[24]~22_combout\ & ((!\P2[24]~16_combout\) # ((!\G1[20]~18_combout\ & !\G3~31_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[20]~18_combout\,
	datab => \ALT_INV_P2[24]~16_combout\,
	datac => \ALT_INV_G1[24]~22_combout\,
	datad => \ALT_INV_G3~31_combout\,
	dataf => \ALT_INV_G3~39_combout\,
	combout => G3(24));

-- Location: LABCELL_X43_Y48_N22
\C[41]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \C[41]~29_combout\ = ( \G4~0_combout\ & ( (!G3(8)) # (\C[25]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[25]~6_combout\,
	datab => ALT_INV_G3(8),
	dataf => \ALT_INV_G4~0_combout\,
	combout => \C[41]~29_combout\);

-- Location: LABCELL_X43_Y48_N10
\G4~7\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~7_combout\ = (\P2[20]~12_combout\ & \P2[24]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[20]~12_combout\,
	datad => \ALT_INV_P2[24]~16_combout\,
	combout => \G4~7_combout\);

-- Location: LABCELL_X43_Y48_N16
\C[25]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \C[25]~30_combout\ = ( \G4~7_combout\ & ( (G3(24) & (G3(16) & !\C[41]~29_combout\)) ) ) # ( !\G4~7_combout\ & ( G3(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(24),
	datac => ALT_INV_G3(16),
	datad => \ALT_INV_C[41]~29_combout\,
	dataf => \ALT_INV_G4~7_combout\,
	combout => \C[25]~30_combout\);

-- Location: LABCELL_X50_Y48_N22
\S~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = ( \C[25]~30_combout\ & ( !\A[25]~input_o\ $ (!\B[25]~input_o\) ) ) # ( !\C[25]~30_combout\ & ( !\A[25]~input_o\ $ (\B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_C[25]~30_combout\,
	combout => \S~25_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X42_Y45_N20
\C[42]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \C[42]~31_combout\ = ( \G4~1_combout\ & ( (!G3(9)) # (\C[10]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(9),
	datac => \ALT_INV_C[10]~7_combout\,
	dataf => \ALT_INV_G4~1_combout\,
	combout => \C[42]~31_combout\);

-- Location: LABCELL_X50_Y48_N20
\G3~40\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~40_combout\ = ( \B[24]~input_o\ & ( (!\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \G3~40_combout\);

-- Location: MLABCELL_X42_Y45_N32
\P2[25]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[25]~17_combout\ = ( \G3~36_combout\ & ( \G3~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~40_combout\,
	dataf => \ALT_INV_G3~36_combout\,
	combout => \P2[25]~17_combout\);

-- Location: MLABCELL_X42_Y45_N16
\G4~8\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~8_combout\ = ( \P2[21]~13_combout\ & ( \P2[25]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[25]~17_combout\,
	dataf => \ALT_INV_P2[21]~13_combout\,
	combout => \G4~8_combout\);

-- Location: MLABCELL_X42_Y45_N4
\G3~41\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~41_combout\ = ( \G1[23]~21_combout\ & ( \G3~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~40_combout\,
	dataf => \ALT_INV_G1[23]~21_combout\,
	combout => \G3~41_combout\);

-- Location: LABCELL_X50_Y48_N4
\G1[25]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[25]~23_combout\ = ( \B[24]~input_o\ & ( (!\B[25]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)) # (\B[25]~input_o\ & ((\A[25]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\B[25]~input_o\ & \A[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \G1[25]~23_combout\);

-- Location: MLABCELL_X42_Y45_N28
\G3[25]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(25) = ( \P2[25]~17_combout\ & ( (!\G3~41_combout\ & (!\G1[25]~23_combout\ & (!\G1[21]~19_combout\ & !\G3~33_combout\))) ) ) # ( !\P2[25]~17_combout\ & ( (!\G3~41_combout\ & !\G1[25]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~41_combout\,
	datab => \ALT_INV_G1[25]~23_combout\,
	datac => \ALT_INV_G1[21]~19_combout\,
	datad => \ALT_INV_G3~33_combout\,
	dataf => \ALT_INV_P2[25]~17_combout\,
	combout => G3(25));

-- Location: MLABCELL_X42_Y45_N8
\C[26]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \C[26]~32_combout\ = ( G3(25) & ( (!\G4~8_combout\) # ((!\C[42]~31_combout\ & G3(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C[42]~31_combout\,
	datac => ALT_INV_G3(17),
	datad => \ALT_INV_G4~8_combout\,
	dataf => ALT_INV_G3(25),
	combout => \C[26]~32_combout\);

-- Location: IOIBUF_X59_Y26_N32
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X43_Y45_N20
\S~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = ( \A[26]~input_o\ & ( !\B[26]~input_o\ $ (!\C[26]~32_combout\) ) ) # ( !\A[26]~input_o\ & ( !\B[26]~input_o\ $ (\C[26]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_C[26]~32_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X59_Y48_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X50_Y48_N28
\G3~42\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~42_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\B[25]~input_o\ $ (!\A[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G3~42_combout\);

-- Location: LABCELL_X47_Y48_N34
\P2[26]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[26]~18_combout\ = ( \G3~42_combout\ & ( \G3~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~38_combout\,
	datae => \ALT_INV_G3~42_combout\,
	combout => \P2[26]~18_combout\);

-- Location: LABCELL_X50_Y48_N14
\G3~43\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~43_combout\ = ( \G1[24]~22_combout\ & ( \G3~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~42_combout\,
	dataf => \ALT_INV_G1[24]~22_combout\,
	combout => \G3~43_combout\);

-- Location: LABCELL_X50_Y48_N30
\G1[26]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[26]~24_combout\ = ( \B[26]~input_o\ & ( ((\B[25]~input_o\ & \A[25]~input_o\)) # (\A[26]~input_o\) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (\B[25]~input_o\ & \A[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G1[26]~24_combout\);

-- Location: MLABCELL_X46_Y49_N30
\G3[26]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(26) = ( \G1[22]~20_combout\ & ( (!\P2[26]~18_combout\ & (!\G3~43_combout\ & !\G1[26]~24_combout\)) ) ) # ( !\G1[22]~20_combout\ & ( (!\G3~43_combout\ & (!\G1[26]~24_combout\ & ((!\P2[26]~18_combout\) # (!\G3~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[26]~18_combout\,
	datab => \ALT_INV_G3~43_combout\,
	datac => \ALT_INV_G3~35_combout\,
	datad => \ALT_INV_G1[26]~24_combout\,
	dataf => \ALT_INV_G1[22]~20_combout\,
	combout => G3(26));

-- Location: MLABCELL_X46_Y49_N28
\G4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~9_combout\ = ( \P2[22]~14_combout\ & ( \P2[26]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[26]~18_combout\,
	dataf => \ALT_INV_P2[22]~14_combout\,
	combout => \G4~9_combout\);

-- Location: LABCELL_X45_Y48_N32
\C[27]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \C[27]~33_combout\ = ( \C[27]~9_combout\ & ( (G3(26) & ((!\G4~9_combout\) # (G3(18)))) ) ) # ( !\C[27]~9_combout\ & ( (G3(26) & ((!\G4~9_combout\) # ((G3(18) & !\G4~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000100000011110000010000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(18),
	datab => \ALT_INV_G4~2_combout\,
	datac => ALT_INV_G3(26),
	datad => \ALT_INV_G4~9_combout\,
	dataf => \ALT_INV_C[27]~9_combout\,
	combout => \C[27]~33_combout\);

-- Location: LABCELL_X50_Y48_N38
\S~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = ( \C[27]~33_combout\ & ( !\B[27]~input_o\ $ (!\A[27]~input_o\) ) ) # ( !\C[27]~33_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_C[27]~33_combout\,
	combout => \S~27_combout\);

-- Location: LABCELL_X50_Y48_N6
\G3~44\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~44_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \G3~44_combout\);

-- Location: LABCELL_X40_Y45_N2
\P2[27]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[27]~19_combout\ = ( \G3~40_combout\ & ( \G3~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~44_combout\,
	dataf => \ALT_INV_G3~40_combout\,
	combout => \P2[27]~19_combout\);

-- Location: LABCELL_X40_Y45_N6
\G4~10\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~10_combout\ = ( \P2[27]~19_combout\ & ( \P2[23]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[23]~15_combout\,
	dataf => \ALT_INV_P2[27]~19_combout\,
	combout => \G4~10_combout\);

-- Location: LABCELL_X40_Y46_N4
\G4~11\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~11_combout\ = ( !G3(19) & ( \G4~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G4~10_combout\,
	dataf => ALT_INV_G3(19),
	combout => \G4~11_combout\);

-- Location: LABCELL_X50_Y48_N0
\G1[27]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[27]~25_combout\ = (!\B[27]~input_o\ & (\A[27]~input_o\ & (\B[26]~input_o\ & \A[26]~input_o\))) # (\B[27]~input_o\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	combout => \G1[27]~25_combout\);

-- Location: LABCELL_X40_Y45_N30
\G3~45\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~45_combout\ = ( \G3~44_combout\ & ( \G1[25]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[25]~23_combout\,
	dataf => \ALT_INV_G3~44_combout\,
	combout => \G3~45_combout\);

-- Location: LABCELL_X40_Y45_N14
\G3[27]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(27) = ( \P2[27]~19_combout\ & ( (!\G1[27]~25_combout\ & (!\G3~45_combout\ & (!\G3~37_combout\ & !\G1[23]~21_combout\))) ) ) # ( !\P2[27]~19_combout\ & ( (!\G1[27]~25_combout\ & !\G3~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[27]~25_combout\,
	datab => \ALT_INV_G3~45_combout\,
	datac => \ALT_INV_G3~37_combout\,
	datad => \ALT_INV_G1[23]~21_combout\,
	dataf => \ALT_INV_P2[27]~19_combout\,
	combout => G3(27));

-- Location: LABCELL_X40_Y46_N6
\P4[27]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[27]~0_combout\ = (\G4~10_combout\ & \G4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G4~10_combout\,
	datad => \ALT_INV_G4~4_combout\,
	combout => \P4[27]~0_combout\);

-- Location: LABCELL_X40_Y46_N30
\C[28]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \C[28]~34_combout\ = ( \P4[27]~0_combout\ & ( (!\G4~11_combout\ & (G3(27) & (G3(11) & !\C[12]~10_combout\))) ) ) # ( !\P4[27]~0_combout\ & ( (!\G4~11_combout\ & G3(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~11_combout\,
	datab => ALT_INV_G3(27),
	datac => ALT_INV_G3(11),
	datad => \ALT_INV_C[12]~10_combout\,
	dataf => \ALT_INV_P4[27]~0_combout\,
	combout => \C[28]~34_combout\);

-- Location: IOIBUF_X59_Y49_N63
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X50_Y48_N26
\S~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ( \A[28]~input_o\ & ( !\C[28]~34_combout\ $ (!\B[28]~input_o\) ) ) # ( !\A[28]~input_o\ & ( !\C[28]~34_combout\ $ (\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C[28]~34_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \S~28_combout\);

-- Location: LABCELL_X50_Y48_N36
\G1[28]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[28]~26_combout\ = ( \A[28]~input_o\ & ( ((\B[27]~input_o\ & \A[27]~input_o\)) # (\B[28]~input_o\) ) ) # ( !\A[28]~input_o\ & ( (\B[27]~input_o\ & (\A[27]~input_o\ & \B[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G1[28]~26_combout\);

-- Location: LABCELL_X50_Y48_N2
\G3~46\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~46_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G3~46_combout\);

-- Location: LABCELL_X50_Y48_N12
\P2[28]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[28]~20_combout\ = ( \G3~46_combout\ & ( \G3~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~42_combout\,
	dataf => \ALT_INV_G3~46_combout\,
	combout => \P2[28]~20_combout\);

-- Location: LABCELL_X50_Y48_N8
\G3~47\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~47_combout\ = ( \G1[26]~24_combout\ & ( \G3~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~46_combout\,
	dataf => \ALT_INV_G1[26]~24_combout\,
	combout => \G3~47_combout\);

-- Location: MLABCELL_X44_Y48_N2
\G3[28]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(28) = ( \G3~39_combout\ & ( (!\G1[28]~26_combout\ & (!\P2[28]~20_combout\ & !\G3~47_combout\)) ) ) # ( !\G3~39_combout\ & ( (!\G1[28]~26_combout\ & (!\G3~47_combout\ & ((!\P2[28]~20_combout\) # (!\G1[24]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[28]~26_combout\,
	datab => \ALT_INV_P2[28]~20_combout\,
	datac => \ALT_INV_G1[24]~22_combout\,
	datad => \ALT_INV_G3~47_combout\,
	dataf => \ALT_INV_G3~39_combout\,
	combout => G3(28));

-- Location: LABCELL_X43_Y48_N0
\G4~12\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~12_combout\ = (\P2[28]~20_combout\ & \P2[24]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[28]~20_combout\,
	datad => \ALT_INV_P2[24]~16_combout\,
	combout => \G4~12_combout\);

-- Location: MLABCELL_X42_Y48_N4
\G4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~13_combout\ = (!G3(20) & \G4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(20),
	datab => \ALT_INV_G4~12_combout\,
	combout => \G4~13_combout\);

-- Location: MLABCELL_X42_Y48_N20
\P4[28]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[28]~1_combout\ = ( \P2[20]~12_combout\ & ( (\P2[16]~8_combout\ & \G4~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[16]~8_combout\,
	datab => \ALT_INV_G4~12_combout\,
	dataf => \ALT_INV_P2[20]~12_combout\,
	combout => \P4[28]~1_combout\);

-- Location: MLABCELL_X42_Y48_N30
\C[29]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \C[29]~35_combout\ = ( \P4[28]~1_combout\ & ( (!\C[13]~12_combout\ & (G3(12) & (G3(28) & !\G4~13_combout\))) ) ) # ( !\P4[28]~1_combout\ & ( (G3(28) & !\G4~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[13]~12_combout\,
	datab => ALT_INV_G3(12),
	datac => ALT_INV_G3(28),
	datad => \ALT_INV_G4~13_combout\,
	dataf => \ALT_INV_P4[28]~1_combout\,
	combout => \C[29]~35_combout\);

-- Location: IOIBUF_X53_Y56_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X56_Y56_N32
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X44_Y48_N24
\S~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = ( \B[29]~input_o\ & ( !\C[29]~35_combout\ $ (!\A[29]~input_o\) ) ) # ( !\B[29]~input_o\ & ( !\C[29]~35_combout\ $ (\A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C[29]~35_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X59_Y28_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X50_Y48_N32
\G3~48\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~48_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G3~48_combout\);

-- Location: LABCELL_X40_Y45_N0
\P2[29]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[29]~21_combout\ = (\G3~44_combout\ & \G3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~44_combout\,
	datac => \ALT_INV_G3~48_combout\,
	combout => \P2[29]~21_combout\);

-- Location: MLABCELL_X42_Y45_N18
\G4~14\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~14_combout\ = ( \P2[29]~21_combout\ & ( \P2[25]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[25]~17_combout\,
	dataf => \ALT_INV_P2[29]~21_combout\,
	combout => \G4~14_combout\);

-- Location: MLABCELL_X42_Y45_N6
\G4~15\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~15_combout\ = (\G4~14_combout\ & !G3(21))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~14_combout\,
	datac => ALT_INV_G3(21),
	combout => \G4~15_combout\);

-- Location: LABCELL_X40_Y45_N4
\G3~49\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~49_combout\ = ( \G1[27]~25_combout\ & ( \G3~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~48_combout\,
	dataf => \ALT_INV_G1[27]~25_combout\,
	combout => \G3~49_combout\);

-- Location: LABCELL_X50_Y48_N34
\G1[29]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[29]~27_combout\ = ( \A[28]~input_o\ & ( (!\B[29]~input_o\ & (\A[29]~input_o\ & \B[28]~input_o\)) # (\B[29]~input_o\ & ((\B[28]~input_o\) # (\A[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[29]~input_o\ & \A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \G1[29]~27_combout\);

-- Location: MLABCELL_X42_Y45_N30
\G3[29]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(29) = ( !\G1[29]~27_combout\ & ( (!\G3~49_combout\ & ((!\P2[29]~21_combout\) # ((!\G3~41_combout\ & !\G1[25]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~41_combout\,
	datab => \ALT_INV_G1[25]~23_combout\,
	datac => \ALT_INV_P2[29]~21_combout\,
	datad => \ALT_INV_G3~49_combout\,
	dataf => \ALT_INV_G1[29]~27_combout\,
	combout => G3(29));

-- Location: MLABCELL_X42_Y45_N34
\P4[29]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[29]~2_combout\ = ( \P2[21]~13_combout\ & ( (\G4~14_combout\ & \P2[17]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~14_combout\,
	datad => \ALT_INV_P2[17]~9_combout\,
	dataf => \ALT_INV_P2[21]~13_combout\,
	combout => \P4[29]~2_combout\);

-- Location: MLABCELL_X37_Y47_N36
\C[30]\ : arriaii_lcell_comb
-- Equation(s):
-- C(30) = ( G3(13) & ( \G5~0_combout\ & ( (!\G4~15_combout\ & (G3(29) & !\P4[29]~2_combout\)) ) ) ) # ( !G3(13) & ( \G5~0_combout\ & ( (!\G4~15_combout\ & (G3(29) & !\P4[29]~2_combout\)) ) ) ) # ( G3(13) & ( !\G5~0_combout\ & ( (!\G4~15_combout\ & (G3(29) & 
-- ((!\C~14_combout\) # (!\P4[29]~2_combout\)))) ) ) ) # ( !G3(13) & ( !\G5~0_combout\ & ( (!\G4~15_combout\ & (G3(29) & !\P4[29]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100010000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~15_combout\,
	datab => ALT_INV_G3(29),
	datac => \ALT_INV_C~14_combout\,
	datad => \ALT_INV_P4[29]~2_combout\,
	datae => ALT_INV_G3(13),
	dataf => \ALT_INV_G5~0_combout\,
	combout => C(30));

-- Location: IOIBUF_X59_Y33_N94
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X50_Y48_N18
\S~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = ( \A[30]~input_o\ & ( !\B[30]~input_o\ $ (!C(30)) ) ) # ( !\A[30]~input_o\ & ( !\B[30]~input_o\ $ (C(30)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datac => ALT_INV_C(30),
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \S~30_combout\);

-- Location: LABCELL_X50_Y48_N24
\G3~50\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~50_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G3~50_combout\);

-- Location: LABCELL_X50_Y48_N10
\P2[30]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[30]~22_combout\ = ( \G3~50_combout\ & ( \G3~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~46_combout\,
	dataf => \ALT_INV_G3~50_combout\,
	combout => \P2[30]~22_combout\);

-- Location: MLABCELL_X46_Y49_N32
\G4~16\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~16_combout\ = ( \P2[26]~18_combout\ & ( \P2[30]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[30]~22_combout\,
	dataf => \ALT_INV_P2[26]~18_combout\,
	combout => \G4~16_combout\);

-- Location: MLABCELL_X46_Y49_N34
\P4[30]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[30]~3_combout\ = ( \P2[22]~14_combout\ & ( (\P2[18]~10_combout\ & \G4~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[18]~10_combout\,
	datac => \ALT_INV_G4~16_combout\,
	dataf => \ALT_INV_P2[22]~14_combout\,
	combout => \P4[30]~3_combout\);

-- Location: MLABCELL_X44_Y48_N8
\G3~51\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~51_combout\ = (\G3~50_combout\ & \G1[28]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~50_combout\,
	datac => \ALT_INV_G1[28]~26_combout\,
	combout => \G3~51_combout\);

-- Location: LABCELL_X50_Y48_N16
\G1[30]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[30]~28_combout\ = ( \A[30]~input_o\ & ( ((\A[29]~input_o\ & \B[29]~input_o\)) # (\B[30]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (\A[29]~input_o\ & \B[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G1[30]~28_combout\);

-- Location: MLABCELL_X46_Y49_N36
\G3[30]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(30) = ( !\G1[30]~28_combout\ & ( (!\G3~51_combout\ & ((!\P2[30]~22_combout\) # ((!\G1[26]~24_combout\ & !\G3~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[26]~24_combout\,
	datab => \ALT_INV_G3~51_combout\,
	datac => \ALT_INV_G3~43_combout\,
	datad => \ALT_INV_P2[30]~22_combout\,
	dataf => \ALT_INV_G1[30]~28_combout\,
	combout => G3(30));

-- Location: MLABCELL_X46_Y49_N24
\G4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~17_combout\ = ( \G4~16_combout\ & ( !G3(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(22),
	dataf => \ALT_INV_G4~16_combout\,
	combout => \G4~17_combout\);

-- Location: LABCELL_X45_Y49_N24
\Gf[30]\ : arriaii_lcell_comb
-- Equation(s):
-- Gf(30) = ( !\G4~17_combout\ & ( G3(14) & ( (G3(30) & ((!\G5~1_combout\) # (!\P4[30]~3_combout\))) ) ) ) # ( !\G4~17_combout\ & ( !G3(14) & ( (!\P4[30]~3_combout\ & G3(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G5~1_combout\,
	datac => \ALT_INV_P4[30]~3_combout\,
	datad => ALT_INV_G3(30),
	datae => \ALT_INV_G4~17_combout\,
	dataf => ALT_INV_G3(14),
	combout => Gf(30));

-- Location: IOIBUF_X59_Y46_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X45_Y49_N30
\S~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = ( \A[31]~input_o\ & ( \B[31]~input_o\ & ( (!Gf(30)) # ((\C~15_combout\ & \P4[30]~3_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( \B[31]~input_o\ & ( (Gf(30) & ((!\C~15_combout\) # (!\P4[30]~3_combout\))) ) ) ) # ( \A[31]~input_o\ & ( 
-- !\B[31]~input_o\ & ( (Gf(30) & ((!\C~15_combout\) # (!\P4[30]~3_combout\))) ) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ & ( (!Gf(30)) # ((\C~15_combout\ & \P4[30]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111010101010101000001010101010100001010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Gf(30),
	datac => \ALT_INV_C~15_combout\,
	datad => \ALT_INV_P4[30]~3_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X59_Y16_N63
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: MLABCELL_X44_Y45_N20
\G3~52\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~52_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[30]~input_o\ & (!\B[31]~input_o\ $ (!\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G3~52_combout\);

-- Location: LABCELL_X40_Y45_N28
\P2[31]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[31]~23_combout\ = (\G3~52_combout\ & \G3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~52_combout\,
	datac => \ALT_INV_G3~48_combout\,
	combout => \P2[31]~23_combout\);

-- Location: MLABCELL_X39_Y45_N24
\P4[31]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[31]~4_combout\ = ( \G4~10_combout\ & ( (\P2[31]~23_combout\ & \P2[19]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[31]~23_combout\,
	datad => \ALT_INV_P2[19]~11_combout\,
	dataf => \ALT_INV_G4~10_combout\,
	combout => \P4[31]~4_combout\);

-- Location: MLABCELL_X44_Y45_N6
\G3~53\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~53_combout\ = ( \G3~52_combout\ & ( \G1[29]~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[29]~27_combout\,
	dataf => \ALT_INV_G3~52_combout\,
	combout => \G3~53_combout\);

-- Location: MLABCELL_X44_Y45_N22
\G1[31]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[31]~29_combout\ = ( \A[30]~input_o\ & ( (!\B[30]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\)) # (\B[30]~input_o\ & ((\A[31]~input_o\) # (\B[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[31]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \G1[31]~29_combout\);

-- Location: LABCELL_X40_Y45_N12
\G3[31]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(31) = ( !\G1[31]~29_combout\ & ( (!\G3~53_combout\ & ((!\P2[31]~23_combout\) # ((!\G1[27]~25_combout\ & !\G3~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[27]~25_combout\,
	datab => \ALT_INV_G3~45_combout\,
	datac => \ALT_INV_G3~53_combout\,
	datad => \ALT_INV_P2[31]~23_combout\,
	dataf => \ALT_INV_G1[31]~29_combout\,
	combout => G3(31));

-- Location: LABCELL_X40_Y45_N16
\G4~18\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~18_combout\ = ( \P2[27]~19_combout\ & ( (\P2[31]~23_combout\ & !G3(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[31]~23_combout\,
	datad => ALT_INV_G3(23),
	dataf => \ALT_INV_P2[27]~19_combout\,
	combout => \G4~18_combout\);

-- Location: MLABCELL_X39_Y45_N26
\Gf[31]\ : arriaii_lcell_comb
-- Equation(s):
-- Gf(31) = ( \P4[31]~4_combout\ & ( (G3(31) & (!\G5~2_combout\ & (!\G4~18_combout\ & G3(15)))) ) ) # ( !\P4[31]~4_combout\ & ( (G3(31) & !\G4~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(31),
	datab => \ALT_INV_G5~2_combout\,
	datac => \ALT_INV_G4~18_combout\,
	datad => ALT_INV_G3(15),
	dataf => \ALT_INV_P4[31]~4_combout\,
	combout => Gf(31));

-- Location: MLABCELL_X44_Y45_N10
\S~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = ( \C~16_combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\ $ (((!Gf(31)) # (\P4[31]~4_combout\)))) ) ) # ( !\C~16_combout\ & ( !\B[32]~input_o\ $ (!\A[32]~input_o\ $ (!Gf(31))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_P4[31]~4_combout\,
	datad => ALT_INV_Gf(31),
	dataf => \ALT_INV_C~16_combout\,
	combout => \S~32_combout\);

-- Location: MLABCELL_X44_Y45_N8
\G3~54\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~54_combout\ = ( \B[31]~input_o\ & ( (!\A[31]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) ) # ( !\B[31]~input_o\ & ( (\A[31]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[32]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \G3~54_combout\);

-- Location: MLABCELL_X44_Y48_N10
\P2[32]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[32]~24_combout\ = ( \G3~54_combout\ & ( \G3~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~50_combout\,
	dataf => \ALT_INV_G3~54_combout\,
	combout => \P2[32]~24_combout\);

-- Location: LABCELL_X43_Y48_N12
\P4[32]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[32]~5_combout\ = ( \G4~7_combout\ & ( (\P2[28]~20_combout\ & \P2[32]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[28]~20_combout\,
	datad => \ALT_INV_P2[32]~24_combout\,
	dataf => \ALT_INV_G4~7_combout\,
	combout => \P4[32]~5_combout\);

-- Location: LABCELL_X43_Y48_N24
\C[33]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \C[33]~36_combout\ = ( \C[25]~6_combout\ & ( (\P4[32]~5_combout\ & ((!G3(16)) # (\G4~0_combout\))) ) ) # ( !\C[25]~6_combout\ & ( (\P4[32]~5_combout\ & ((!G3(16)) # ((\G4~0_combout\ & !G3(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111010000000001011101000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(16),
	datab => \ALT_INV_G4~0_combout\,
	datac => ALT_INV_G3(8),
	datad => \ALT_INV_P4[32]~5_combout\,
	dataf => \ALT_INV_C[25]~6_combout\,
	combout => \C[33]~36_combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X43_Y48_N18
\G4~19\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~19_combout\ = (\P2[32]~24_combout\ & (!G3(24) & \P2[28]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[32]~24_combout\,
	datab => ALT_INV_G3(24),
	datad => \ALT_INV_P2[28]~20_combout\,
	combout => \G4~19_combout\);

-- Location: MLABCELL_X44_Y45_N12
\G1[32]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[32]~30_combout\ = ( \B[31]~input_o\ & ( (!\B[32]~input_o\ & (\A[31]~input_o\ & \A[32]~input_o\)) # (\B[32]~input_o\ & ((\A[32]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\B[31]~input_o\ & ( (\B[32]~input_o\ & \A[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \G1[32]~30_combout\);

-- Location: MLABCELL_X44_Y48_N34
\G3~55\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~55_combout\ = ( \G3~54_combout\ & ( \G1[30]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[30]~28_combout\,
	dataf => \ALT_INV_G3~54_combout\,
	combout => \G3~55_combout\);

-- Location: MLABCELL_X44_Y48_N16
\G3[32]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(32) = ( \P2[32]~24_combout\ & ( (!\G1[32]~30_combout\ & (!\G3~55_combout\ & (!\G1[28]~26_combout\ & !\G3~47_combout\))) ) ) # ( !\P2[32]~24_combout\ & ( (!\G1[32]~30_combout\ & !\G3~55_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[32]~30_combout\,
	datab => \ALT_INV_G3~55_combout\,
	datac => \ALT_INV_G1[28]~26_combout\,
	datad => \ALT_INV_G3~47_combout\,
	dataf => \ALT_INV_P2[32]~24_combout\,
	combout => G3(32));

-- Location: LABCELL_X43_Y48_N8
\S~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = ( G3(32) & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (((\G4~19_combout\) # (\C[33]~36_combout\)))) ) ) # ( !G3(32) & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[33]~36_combout\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_G4~19_combout\,
	dataf => ALT_INV_G3(32),
	combout => \S~33_combout\);

-- Location: IOIBUF_X59_Y34_N63
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: MLABCELL_X44_Y45_N38
\G3~56\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~56_combout\ = ( \A[33]~input_o\ & ( (!\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G3~56_combout\);

-- Location: MLABCELL_X44_Y45_N0
\P2[33]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[33]~25_combout\ = ( \G3~52_combout\ & ( \G3~56_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~56_combout\,
	dataf => \ALT_INV_G3~52_combout\,
	combout => \P2[33]~25_combout\);

-- Location: LABCELL_X43_Y45_N26
\P4[33]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[33]~6_combout\ = ( \P2[33]~25_combout\ & ( \P2[29]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[29]~21_combout\,
	dataf => \ALT_INV_P2[33]~25_combout\,
	combout => \P4[33]~6_combout\);

-- Location: LABCELL_X43_Y45_N28
\G4~20\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~20_combout\ = (!G3(25) & \P4[33]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(25),
	datad => \ALT_INV_P4[33]~6_combout\,
	combout => \G4~20_combout\);

-- Location: MLABCELL_X44_Y45_N2
\G3~57\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~57_combout\ = (\G3~56_combout\ & \G1[31]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~56_combout\,
	datac => \ALT_INV_G1[31]~29_combout\,
	combout => \G3~57_combout\);

-- Location: MLABCELL_X44_Y45_N36
\G1[33]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[33]~31_combout\ = ( \A[33]~input_o\ & ( ((\B[32]~input_o\ & \A[32]~input_o\)) # (\B[33]~input_o\) ) ) # ( !\A[33]~input_o\ & ( (\B[32]~input_o\ & (\B[33]~input_o\ & \A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G1[33]~31_combout\);

-- Location: MLABCELL_X44_Y45_N24
\G3[33]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(33) = ( \G3~49_combout\ & ( (!\G3~57_combout\ & (!\G1[33]~31_combout\ & !\P2[33]~25_combout\)) ) ) # ( !\G3~49_combout\ & ( (!\G3~57_combout\ & (!\G1[33]~31_combout\ & ((!\P2[33]~25_combout\) # (!\G1[29]~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~57_combout\,
	datab => \ALT_INV_G1[33]~31_combout\,
	datac => \ALT_INV_P2[33]~25_combout\,
	datad => \ALT_INV_G1[29]~27_combout\,
	dataf => \ALT_INV_G3~49_combout\,
	combout => G3(33));

-- Location: MLABCELL_X42_Y45_N12
\C[34]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \C[34]~37_combout\ = ( \C[10]~7_combout\ & ( \G4~1_combout\ & ( (\G4~8_combout\ & \P4[33]~6_combout\) ) ) ) # ( !\C[10]~7_combout\ & ( \G4~1_combout\ & ( (\G4~8_combout\ & (\P4[33]~6_combout\ & ((!G3(17)) # (!G3(9))))) ) ) ) # ( \C[10]~7_combout\ & ( 
-- !\G4~1_combout\ & ( (!G3(17) & (\G4~8_combout\ & \P4[33]~6_combout\)) ) ) ) # ( !\C[10]~7_combout\ & ( !\G4~1_combout\ & ( (!G3(17) & (\G4~8_combout\ & \P4[33]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000011100000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(17),
	datab => ALT_INV_G3(9),
	datac => \ALT_INV_G4~8_combout\,
	datad => \ALT_INV_P4[33]~6_combout\,
	datae => \ALT_INV_C[10]~7_combout\,
	dataf => \ALT_INV_G4~1_combout\,
	combout => \C[34]~37_combout\);

-- Location: MLABCELL_X44_Y45_N28
\S~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = ( \C[34]~37_combout\ & ( !\B[34]~input_o\ $ (\A[34]~input_o\) ) ) # ( !\C[34]~37_combout\ & ( !\B[34]~input_o\ $ (!\A[34]~input_o\ $ (((!G3(33)) # (\G4~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_G4~20_combout\,
	datad => ALT_INV_G3(33),
	dataf => \ALT_INV_C[34]~37_combout\,
	combout => \S~34_combout\);

-- Location: IOIBUF_X59_Y46_N63
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: MLABCELL_X44_Y45_N14
\G3~58\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~58_combout\ = ( \B[34]~input_o\ & ( (!\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) ) # ( !\B[34]~input_o\ & ( (\A[34]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \G3~58_combout\);

-- Location: MLABCELL_X44_Y48_N22
\G3~59\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~59_combout\ = (\G3~58_combout\ & \G1[32]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~58_combout\,
	datad => \ALT_INV_G1[32]~30_combout\,
	combout => \G3~59_combout\);

-- Location: MLABCELL_X44_Y45_N32
\G1[34]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[34]~32_combout\ = ( \A[33]~input_o\ & ( (!\B[34]~input_o\ & (\A[34]~input_o\ & \B[33]~input_o\)) # (\B[34]~input_o\ & ((\B[33]~input_o\) # (\A[34]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[34]~input_o\ & \A[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \G1[34]~32_combout\);

-- Location: MLABCELL_X44_Y48_N20
\P2[34]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[34]~26_combout\ = ( \G3~54_combout\ & ( \G3~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~58_combout\,
	dataf => \ALT_INV_G3~54_combout\,
	combout => \P2[34]~26_combout\);

-- Location: MLABCELL_X44_Y49_N2
\G3[34]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(34) = ( \G1[30]~28_combout\ & ( (!\G3~59_combout\ & (!\G1[34]~32_combout\ & !\P2[34]~26_combout\)) ) ) # ( !\G1[30]~28_combout\ & ( (!\G3~59_combout\ & (!\G1[34]~32_combout\ & ((!\P2[34]~26_combout\) # (!\G3~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~59_combout\,
	datab => \ALT_INV_G1[34]~32_combout\,
	datac => \ALT_INV_P2[34]~26_combout\,
	datad => \ALT_INV_G3~51_combout\,
	dataf => \ALT_INV_G1[30]~28_combout\,
	combout => G3(34));

-- Location: LABCELL_X45_Y48_N16
\P4[34]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[34]~7_combout\ = ( \P2[34]~26_combout\ & ( (\G4~9_combout\ & \P2[30]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G4~9_combout\,
	datac => \ALT_INV_P2[30]~22_combout\,
	dataf => \ALT_INV_P2[34]~26_combout\,
	combout => \P4[34]~7_combout\);

-- Location: LABCELL_X45_Y48_N6
\G4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~21_combout\ = ( !G3(26) & ( (\P2[34]~26_combout\ & \P2[30]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[34]~26_combout\,
	datad => \ALT_INV_P2[30]~22_combout\,
	dataf => ALT_INV_G3(26),
	combout => \G4~21_combout\);

-- Location: LABCELL_X45_Y48_N30
\C[35]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \C[35]~38_combout\ = ( !\G4~21_combout\ & ( (!\P4[34]~7_combout\) # ((G3(18) & (!\G4~3_combout\ & !\C[35]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110000111101001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(18),
	datab => \ALT_INV_G4~3_combout\,
	datac => \ALT_INV_P4[34]~7_combout\,
	datad => \ALT_INV_C[35]~19_combout\,
	dataf => \ALT_INV_G4~21_combout\,
	combout => \C[35]~38_combout\);

-- Location: MLABCELL_X46_Y48_N0
\S~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = ( \C[35]~38_combout\ & ( !\A[35]~input_o\ $ (!\B[35]~input_o\ $ (!G3(34))) ) ) # ( !\C[35]~38_combout\ & ( !\A[35]~input_o\ $ (\B[35]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datac => ALT_INV_G3(34),
	dataf => \ALT_INV_C[35]~38_combout\,
	combout => \S~35_combout\);

-- Location: MLABCELL_X44_Y45_N34
\G3~60\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~60_combout\ = ( \A[35]~input_o\ & ( (!\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) ) # ( !\A[35]~input_o\ & ( (\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \G3~60_combout\);

-- Location: MLABCELL_X44_Y45_N18
\P2[35]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[35]~27_combout\ = ( \G3~56_combout\ & ( \G3~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~60_combout\,
	dataf => \ALT_INV_G3~56_combout\,
	combout => \P2[35]~27_combout\);

-- Location: MLABCELL_X44_Y45_N4
\G3~61\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~61_combout\ = (\G1[33]~31_combout\ & \G3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G1[33]~31_combout\,
	datad => \ALT_INV_G3~60_combout\,
	combout => \G3~61_combout\);

-- Location: MLABCELL_X44_Y45_N30
\G1[35]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[35]~33_combout\ = ( \A[35]~input_o\ & ( ((\B[34]~input_o\ & \A[34]~input_o\)) # (\B[35]~input_o\) ) ) # ( !\A[35]~input_o\ & ( (\B[34]~input_o\ & (\A[34]~input_o\ & \B[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \G1[35]~33_combout\);

-- Location: LABCELL_X40_Y45_N26
\G3[35]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(35) = ( \G1[31]~29_combout\ & ( (!\P2[35]~27_combout\ & (!\G3~61_combout\ & !\G1[35]~33_combout\)) ) ) # ( !\G1[31]~29_combout\ & ( (!\G3~61_combout\ & (!\G1[35]~33_combout\ & ((!\P2[35]~27_combout\) # (!\G3~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[35]~27_combout\,
	datab => \ALT_INV_G3~61_combout\,
	datac => \ALT_INV_G1[35]~33_combout\,
	datad => \ALT_INV_G3~53_combout\,
	dataf => \ALT_INV_G1[31]~29_combout\,
	combout => G3(35));

-- Location: LABCELL_X40_Y45_N20
\P4[35]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[35]~8_combout\ = ( \G4~10_combout\ & ( (\P2[31]~23_combout\ & \P2[35]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[31]~23_combout\,
	datac => \ALT_INV_P2[35]~27_combout\,
	dataf => \ALT_INV_G4~10_combout\,
	combout => \P4[35]~8_combout\);

-- Location: LABCELL_X40_Y45_N24
\G4~22\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~22_combout\ = ( \P2[31]~23_combout\ & ( (\P2[35]~27_combout\ & !G3(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[35]~27_combout\,
	datac => ALT_INV_G3(27),
	dataf => \ALT_INV_P2[31]~23_combout\,
	combout => \G4~22_combout\);

-- Location: LABCELL_X40_Y45_N22
\C[36]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \C[36]~39_combout\ = ( !\G4~22_combout\ & ( (G3(35) & ((!\P4[35]~8_combout\) # (G3(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(19),
	datac => ALT_INV_G3(35),
	datad => \ALT_INV_P4[35]~8_combout\,
	dataf => \ALT_INV_G4~22_combout\,
	combout => \C[36]~39_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: MLABCELL_X46_Y48_N26
\S~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = ( \A[36]~input_o\ & ( \B[36]~input_o\ & ( (!\C[36]~39_combout\) # ((\G4~4_combout\ & (!\C[36]~11_combout\ & \P4[35]~8_combout\))) ) ) ) # ( !\A[36]~input_o\ & ( \B[36]~input_o\ & ( (\C[36]~39_combout\ & ((!\G4~4_combout\) # 
-- ((!\P4[35]~8_combout\) # (\C[36]~11_combout\)))) ) ) ) # ( \A[36]~input_o\ & ( !\B[36]~input_o\ & ( (\C[36]~39_combout\ & ((!\G4~4_combout\) # ((!\P4[35]~8_combout\) # (\C[36]~11_combout\)))) ) ) ) # ( !\A[36]~input_o\ & ( !\B[36]~input_o\ & ( 
-- (!\C[36]~39_combout\) # ((\G4~4_combout\ & (!\C[36]~11_combout\ & \P4[35]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111010010101010100010101010101010001011010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[36]~39_combout\,
	datab => \ALT_INV_G4~4_combout\,
	datac => \ALT_INV_C[36]~11_combout\,
	datad => \ALT_INV_P4[35]~8_combout\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \S~36_combout\);

-- Location: IOIBUF_X59_Y48_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: MLABCELL_X46_Y48_N2
\G3~62\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~62_combout\ = ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[35]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \G3~62_combout\);

-- Location: MLABCELL_X44_Y48_N32
\P2[36]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[36]~28_combout\ = ( \G3~62_combout\ & ( \G3~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~58_combout\,
	dataf => \ALT_INV_G3~62_combout\,
	combout => \P2[36]~28_combout\);

-- Location: MLABCELL_X46_Y48_N8
\G1[36]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[36]~34_combout\ = (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[35]~input_o\ & \B[35]~input_o\))) # (\A[36]~input_o\ & (((\A[35]~input_o\ & \B[35]~input_o\)) # (\B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datac => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	combout => \G1[36]~34_combout\);

-- Location: MLABCELL_X44_Y48_N0
\G3~63\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~63_combout\ = ( \G3~62_combout\ & ( \G1[34]~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G1[34]~32_combout\,
	dataf => \ALT_INV_G3~62_combout\,
	combout => \G3~63_combout\);

-- Location: MLABCELL_X44_Y48_N18
\G3[36]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(36) = ( !\G3~63_combout\ & ( (!\G1[36]~34_combout\ & ((!\P2[36]~28_combout\) # ((!\G1[32]~30_combout\ & !\G3~55_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[32]~30_combout\,
	datab => \ALT_INV_G3~55_combout\,
	datac => \ALT_INV_P2[36]~28_combout\,
	datad => \ALT_INV_G1[36]~34_combout\,
	dataf => \ALT_INV_G3~63_combout\,
	combout => G3(36));

-- Location: MLABCELL_X44_Y48_N4
\P4[36]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[36]~9_combout\ = (\P2[36]~28_combout\ & \P2[32]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[36]~28_combout\,
	datac => \ALT_INV_P2[32]~24_combout\,
	combout => \P4[36]~9_combout\);

-- Location: MLABCELL_X42_Y48_N6
\C[37]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \C[37]~41_combout\ = ( G3(28) & ( (G3(36) & (((!\G4~12_combout\) # (!\P4[36]~9_combout\)) # (G3(20)))) ) ) # ( !G3(28) & ( (G3(36) & !\P4[36]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(20),
	datab => \ALT_INV_G4~12_combout\,
	datac => ALT_INV_G3(36),
	datad => \ALT_INV_P4[36]~9_combout\,
	dataf => ALT_INV_G3(28),
	combout => \C[37]~41_combout\);

-- Location: MLABCELL_X42_Y48_N22
\C[37]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \C[37]~40_combout\ = ( \P2[20]~12_combout\ & ( (\P2[16]~8_combout\ & (\G4~12_combout\ & \P4[36]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[16]~8_combout\,
	datab => \ALT_INV_G4~12_combout\,
	datad => \ALT_INV_P4[36]~9_combout\,
	dataf => \ALT_INV_P2[20]~12_combout\,
	combout => \C[37]~40_combout\);

-- Location: MLABCELL_X46_Y48_N12
\S~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = ( \C[37]~40_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (((!\C[37]~41_combout\) # (!\C[37]~13_combout\)))) ) ) # ( !\C[37]~40_combout\ & ( !\A[37]~input_o\ $ (!\B[37]~input_o\ $ (!\C[37]~41_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010011001100101101001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_C[37]~41_combout\,
	datad => \ALT_INV_C[37]~13_combout\,
	dataf => \ALT_INV_C[37]~40_combout\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X46_Y48_N36
\G1[37]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[37]~35_combout\ = ( \B[36]~input_o\ & ( (!\A[37]~input_o\ & (\B[37]~input_o\ & \A[36]~input_o\)) # (\A[37]~input_o\ & ((\A[36]~input_o\) # (\B[37]~input_o\))) ) ) # ( !\B[36]~input_o\ & ( (\A[37]~input_o\ & \B[37]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \G1[37]~35_combout\);

-- Location: MLABCELL_X46_Y48_N10
\G3~64\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~64_combout\ = ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) ) # ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[36]~input_o\,
	datab => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \G3~64_combout\);

-- Location: LABCELL_X43_Y45_N24
\G3~65\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~65_combout\ = (\G1[35]~33_combout\ & \G3~64_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G1[35]~33_combout\,
	datac => \ALT_INV_G3~64_combout\,
	combout => \G3~65_combout\);

-- Location: MLABCELL_X44_Y45_N16
\P2[37]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[37]~29_combout\ = (\G3~60_combout\ & \G3~64_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~60_combout\,
	datac => \ALT_INV_G3~64_combout\,
	combout => \P2[37]~29_combout\);

-- Location: MLABCELL_X44_Y45_N26
\G3[37]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(37) = ( \P2[37]~29_combout\ & ( (!\G3~57_combout\ & (!\G1[33]~31_combout\ & (!\G1[37]~35_combout\ & !\G3~65_combout\))) ) ) # ( !\P2[37]~29_combout\ & ( (!\G1[37]~35_combout\ & !\G3~65_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~57_combout\,
	datab => \ALT_INV_G1[33]~31_combout\,
	datac => \ALT_INV_G1[37]~35_combout\,
	datad => \ALT_INV_G3~65_combout\,
	dataf => \ALT_INV_P2[37]~29_combout\,
	combout => G3(37));

-- Location: IOIBUF_X53_Y56_N32
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X43_Y45_N30
\P4[37]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[37]~10_combout\ = ( \P2[33]~25_combout\ & ( \P2[37]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[37]~29_combout\,
	dataf => \ALT_INV_P2[33]~25_combout\,
	combout => \P4[37]~10_combout\);

-- Location: MLABCELL_X42_Y45_N22
\P4[37]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[37]~11_combout\ = ( \P4[37]~10_combout\ & ( \G4~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~14_combout\,
	dataf => \ALT_INV_P4[37]~10_combout\,
	combout => \P4[37]~11_combout\);

-- Location: MLABCELL_X42_Y44_N8
\G4~23\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~23_combout\ = ( !G3(29) & ( \P4[37]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P4[37]~10_combout\,
	dataf => ALT_INV_G3(29),
	combout => \G4~23_combout\);

-- Location: MLABCELL_X42_Y44_N10
\C[38]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \C[38]~42_combout\ = ( !\G4~23_combout\ & ( (!\P4[37]~11_combout\) # ((!\C[38]~24_combout\ & (!\G4~5_combout\ & G3(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[38]~24_combout\,
	datab => \ALT_INV_G4~5_combout\,
	datac => ALT_INV_G3(21),
	datad => \ALT_INV_P4[37]~11_combout\,
	dataf => \ALT_INV_G4~23_combout\,
	combout => \C[38]~42_combout\);

-- Location: MLABCELL_X46_Y48_N20
\S~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = ( \C[38]~42_combout\ & ( !\A[38]~input_o\ $ (!G3(37) $ (!\B[38]~input_o\)) ) ) # ( !\C[38]~42_combout\ & ( !\A[38]~input_o\ $ (\B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[38]~input_o\,
	datac => ALT_INV_G3(37),
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_C[38]~42_combout\,
	combout => \S~38_combout\);

-- Location: MLABCELL_X46_Y48_N38
\G3~66\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~66_combout\ = (!\A[37]~input_o\ & (\B[37]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\)))) # (\A[37]~input_o\ & (!\B[37]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G3~66_combout\);

-- Location: MLABCELL_X46_Y48_N30
\G3~67\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~67_combout\ = (\G3~66_combout\ & \G1[36]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~66_combout\,
	datad => \ALT_INV_G1[36]~34_combout\,
	combout => \G3~67_combout\);

-- Location: MLABCELL_X46_Y48_N14
\G1[38]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[38]~36_combout\ = (!\B[38]~input_o\ & (\A[37]~input_o\ & (\B[37]~input_o\ & \A[38]~input_o\))) # (\B[38]~input_o\ & (((\A[37]~input_o\ & \B[37]~input_o\)) # (\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G1[38]~36_combout\);

-- Location: MLABCELL_X46_Y48_N4
\P2[38]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[38]~30_combout\ = ( \G3~66_combout\ & ( \G3~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~62_combout\,
	dataf => \ALT_INV_G3~66_combout\,
	combout => \P2[38]~30_combout\);

-- Location: MLABCELL_X44_Y49_N0
\G3[38]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(38) = ( \P2[38]~30_combout\ & ( (!\G3~59_combout\ & (!\G1[34]~32_combout\ & (!\G3~67_combout\ & !\G1[38]~36_combout\))) ) ) # ( !\P2[38]~30_combout\ & ( (!\G3~67_combout\ & !\G1[38]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~59_combout\,
	datab => \ALT_INV_G1[34]~32_combout\,
	datac => \ALT_INV_G3~67_combout\,
	datad => \ALT_INV_G1[38]~36_combout\,
	dataf => \ALT_INV_P2[38]~30_combout\,
	combout => G3(38));

-- Location: LABCELL_X45_Y48_N0
\P4[38]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[38]~12_combout\ = ( \P2[34]~26_combout\ & ( \P2[38]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[38]~30_combout\,
	dataf => \ALT_INV_P2[34]~26_combout\,
	combout => \P4[38]~12_combout\);

-- Location: MLABCELL_X46_Y49_N18
\C[39]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \C[39]~43_combout\ = ( \P4[38]~12_combout\ & ( G3(22) & ( (G3(38) & (G3(30) & ((!\G4~6_combout\) # (!\G4~16_combout\)))) ) ) ) # ( !\P4[38]~12_combout\ & ( G3(22) & ( G3(38) ) ) ) # ( \P4[38]~12_combout\ & ( !G3(22) & ( (G3(38) & (G3(30) & 
-- !\G4~16_combout\)) ) ) ) # ( !\P4[38]~12_combout\ & ( !G3(22) & ( G3(38) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000000000110011001100110000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~6_combout\,
	datab => ALT_INV_G3(38),
	datac => ALT_INV_G3(30),
	datad => \ALT_INV_G4~16_combout\,
	datae => \ALT_INV_P4[38]~12_combout\,
	dataf => ALT_INV_G3(22),
	combout => \C[39]~43_combout\);

-- Location: IOIBUF_X49_Y56_N63
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: MLABCELL_X46_Y49_N10
\P4[38]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[38]~13_combout\ = ( \G4~16_combout\ & ( \P4[38]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P4[38]~12_combout\,
	dataf => \ALT_INV_G4~16_combout\,
	combout => \P4[38]~13_combout\);

-- Location: IOIBUF_X55_Y56_N63
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X46_Y49_N4
\S~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = ( \A[39]~input_o\ & ( !\B[39]~input_o\ $ (((!\C[39]~43_combout\) # ((\C[39]~26_combout\ & \P4[38]~13_combout\)))) ) ) # ( !\A[39]~input_o\ & ( !\B[39]~input_o\ $ (((\C[39]~43_combout\ & ((!\C[39]~26_combout\) # (!\P4[38]~13_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110110100101001011011010001011010010010110101101001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[39]~43_combout\,
	datab => \ALT_INV_C[39]~26_combout\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_P4[38]~13_combout\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: MLABCELL_X46_Y48_N32
\G3~68\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~68_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G3~68_combout\);

-- Location: LABCELL_X40_Y45_N10
\P2[39]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[39]~31_combout\ = (\G3~68_combout\ & \G3~64_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~68_combout\,
	datad => \ALT_INV_G3~64_combout\,
	combout => \P2[39]~31_combout\);

-- Location: LABCELL_X40_Y45_N32
\P4[39]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[39]~14_combout\ = (\P2[39]~31_combout\ & \P2[35]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[39]~31_combout\,
	datad => \ALT_INV_P2[35]~27_combout\,
	combout => \P4[39]~14_combout\);

-- Location: LABCELL_X40_Y45_N38
\P4[39]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[39]~15_combout\ = ( \P2[27]~19_combout\ & ( (\P4[39]~14_combout\ & \P2[31]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P4[39]~14_combout\,
	datac => \ALT_INV_P2[31]~23_combout\,
	dataf => \ALT_INV_P2[27]~19_combout\,
	combout => \P4[39]~15_combout\);

-- Location: MLABCELL_X39_Y47_N26
\C[40]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \C[40]~44_combout\ = ( \P4[39]~15_combout\ & ( (\P2[11]~3_combout\ & (\P2[23]~15_combout\ & (\G4~4_combout\ & !C(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[11]~3_combout\,
	datab => \ALT_INV_P2[23]~15_combout\,
	datac => \ALT_INV_G4~4_combout\,
	datad => ALT_INV_C(8),
	dataf => \ALT_INV_P4[39]~15_combout\,
	combout => \C[40]~44_combout\);

-- Location: MLABCELL_X46_Y48_N34
\G1[39]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[39]~37_combout\ = (!\B[39]~input_o\ & (\B[38]~input_o\ & (\A[39]~input_o\ & \A[38]~input_o\))) # (\B[39]~input_o\ & (((\B[38]~input_o\ & \A[38]~input_o\)) # (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100000101000101110000010100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	combout => \G1[39]~37_combout\);

-- Location: LABCELL_X40_Y45_N8
\G3~69\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~69_combout\ = ( \G1[37]~35_combout\ & ( \G3~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~68_combout\,
	dataf => \ALT_INV_G1[37]~35_combout\,
	combout => \G3~69_combout\);

-- Location: LABCELL_X40_Y45_N34
\G3[39]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(39) = ( !\G3~69_combout\ & ( (!\G1[39]~37_combout\ & ((!\P2[39]~31_combout\) # ((!\G1[35]~33_combout\ & !\G3~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[39]~37_combout\,
	datab => \ALT_INV_P2[39]~31_combout\,
	datac => \ALT_INV_G1[35]~33_combout\,
	datad => \ALT_INV_G3~61_combout\,
	dataf => \ALT_INV_G3~69_combout\,
	combout => G3(39));

-- Location: MLABCELL_X39_Y47_N12
\G4~24\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~24_combout\ = ( \P2[19]~11_combout\ & ( (!G3(15) & \P2[23]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(15),
	datad => \ALT_INV_P2[23]~15_combout\,
	dataf => \ALT_INV_P2[19]~11_combout\,
	combout => \G4~24_combout\);

-- Location: LABCELL_X40_Y45_N36
\C[40]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \C[40]~45_combout\ = ( \G4~24_combout\ & ( (!\P4[39]~15_combout\ & ((!\P4[39]~14_combout\) # (G3(31)))) ) ) # ( !\G4~24_combout\ & ( (!G3(31) & (!\P4[39]~14_combout\ & ((!\P4[39]~15_combout\) # (G3(23))))) # (G3(31) & (((!\P4[39]~15_combout\) # 
-- (G3(23))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011011101110100001101110111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(31),
	datab => \ALT_INV_P4[39]~14_combout\,
	datac => \ALT_INV_P4[39]~15_combout\,
	datad => ALT_INV_G3(23),
	dataf => \ALT_INV_G4~24_combout\,
	combout => \C[40]~45_combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: MLABCELL_X39_Y45_N2
\S~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = ( \B[40]~input_o\ & ( !\A[40]~input_o\ $ ((((!G3(39)) # (!\C[40]~45_combout\)) # (\C[40]~44_combout\))) ) ) # ( !\B[40]~input_o\ & ( !\A[40]~input_o\ $ (((!\C[40]~44_combout\ & (G3(39) & \C[40]~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100110101010101010011001010101010110010101010101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[40]~input_o\,
	datab => \ALT_INV_C[40]~44_combout\,
	datac => ALT_INV_G3(39),
	datad => \ALT_INV_C[40]~45_combout\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X59_Y19_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: MLABCELL_X46_Y48_N22
\G3~70\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~70_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[39]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G3~70_combout\);

-- Location: MLABCELL_X46_Y48_N28
\P2[40]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[40]~32_combout\ = (\G3~66_combout\ & \G3~70_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~66_combout\,
	datad => \ALT_INV_G3~70_combout\,
	combout => \P2[40]~32_combout\);

-- Location: MLABCELL_X46_Y48_N16
\G1[40]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[40]~38_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) # (\B[39]~input_o\ & ((\B[40]~input_o\) # (\A[40]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\A[40]~input_o\ & \B[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \G1[40]~38_combout\);

-- Location: MLABCELL_X46_Y48_N18
\G3~71\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~71_combout\ = ( \G1[38]~36_combout\ & ( \G3~70_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~70_combout\,
	dataf => \ALT_INV_G1[38]~36_combout\,
	combout => \G3~71_combout\);

-- Location: MLABCELL_X44_Y48_N12
\G3[40]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(40) = ( \P2[40]~32_combout\ & ( (!\G1[40]~38_combout\ & (!\G3~71_combout\ & (!\G3~63_combout\ & !\G1[36]~34_combout\))) ) ) # ( !\P2[40]~32_combout\ & ( (!\G1[40]~38_combout\ & !\G3~71_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[40]~38_combout\,
	datab => \ALT_INV_G3~71_combout\,
	datac => \ALT_INV_G3~63_combout\,
	datad => \ALT_INV_G1[36]~34_combout\,
	dataf => \ALT_INV_P2[40]~32_combout\,
	combout => G3(40));

-- Location: MLABCELL_X44_Y48_N30
\P4[40]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[40]~16_combout\ = ( \P2[40]~32_combout\ & ( (\P4[36]~9_combout\ & \P2[28]~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[36]~9_combout\,
	datac => \ALT_INV_P2[28]~20_combout\,
	dataf => \ALT_INV_P2[40]~32_combout\,
	combout => \P4[40]~16_combout\);

-- Location: LABCELL_X43_Y48_N6
\C[41]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \C[41]~46_combout\ = ( \P4[40]~16_combout\ & ( G3(24) & ( (G3(40) & ((!\G4~7_combout\) # ((!\C[41]~29_combout\ & G3(16))))) ) ) ) # ( !\P4[40]~16_combout\ & ( G3(24) & ( G3(40) ) ) ) # ( !\P4[40]~16_combout\ & ( !G3(24) & ( G3(40) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010101000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(40),
	datab => \ALT_INV_C[41]~29_combout\,
	datac => \ALT_INV_G4~7_combout\,
	datad => ALT_INV_G3(16),
	datae => \ALT_INV_P4[40]~16_combout\,
	dataf => ALT_INV_G3(24),
	combout => \C[41]~46_combout\);

-- Location: LABCELL_X43_Y48_N2
\G4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~25_combout\ = ( !G3(32) & ( \P2[36]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[36]~28_combout\,
	dataf => ALT_INV_G3(32),
	combout => \G4~25_combout\);

-- Location: LABCELL_X43_Y46_N0
\S~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = ( \G4~25_combout\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((!\C[41]~46_combout\) # (\P2[40]~32_combout\)))) ) ) # ( !\G4~25_combout\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (!\C[41]~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_P2[40]~32_combout\,
	datad => \ALT_INV_C[41]~46_combout\,
	dataf => \ALT_INV_G4~25_combout\,
	combout => \S~41_combout\);

-- Location: LABCELL_X43_Y46_N2
\G3~72\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~72_combout\ = ( \A[40]~input_o\ & ( (!\B[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) ) # ( !\A[40]~input_o\ & ( (\B[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \G3~72_combout\);

-- Location: LABCELL_X43_Y45_N14
\P2[41]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[41]~33_combout\ = ( \G3~68_combout\ & ( \G3~72_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~72_combout\,
	dataf => \ALT_INV_G3~68_combout\,
	combout => \P2[41]~33_combout\);

-- Location: LABCELL_X43_Y45_N12
\G3~73\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~73_combout\ = ( \G1[39]~37_combout\ & ( \G3~72_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~72_combout\,
	dataf => \ALT_INV_G1[39]~37_combout\,
	combout => \G3~73_combout\);

-- Location: LABCELL_X43_Y46_N6
\G1[41]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[41]~39_combout\ = ( \A[41]~input_o\ & ( ((\A[40]~input_o\ & \B[40]~input_o\)) # (\B[41]~input_o\) ) ) # ( !\A[41]~input_o\ & ( (\B[41]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[40]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G1[41]~39_combout\);

-- Location: LABCELL_X43_Y45_N2
\G3[41]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(41) = ( !\G1[41]~39_combout\ & ( (!\G3~73_combout\ & ((!\P2[41]~33_combout\) # ((!\G3~65_combout\ & !\G1[37]~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~65_combout\,
	datab => \ALT_INV_P2[41]~33_combout\,
	datac => \ALT_INV_G3~73_combout\,
	datad => \ALT_INV_G1[37]~35_combout\,
	dataf => \ALT_INV_G1[41]~39_combout\,
	combout => G3(41));

-- Location: LABCELL_X43_Y45_N0
\P4[41]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[41]~17_combout\ = ( \P4[37]~10_combout\ & ( (\P2[41]~33_combout\ & \P2[29]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[41]~33_combout\,
	datad => \ALT_INV_P2[29]~21_combout\,
	dataf => \ALT_INV_P4[37]~10_combout\,
	combout => \P4[41]~17_combout\);

-- Location: LABCELL_X43_Y45_N4
\C[42]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \C[42]~47_combout\ = ( G3(25) & ( \P4[41]~17_combout\ & ( (G3(41) & ((!\G4~8_combout\) # ((G3(17) & !\C[42]~31_combout\)))) ) ) ) # ( G3(25) & ( !\P4[41]~17_combout\ & ( G3(41) ) ) ) # ( !G3(25) & ( !\P4[41]~17_combout\ & ( G3(41) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(17),
	datab => \ALT_INV_G4~8_combout\,
	datac => \ALT_INV_C[42]~31_combout\,
	datad => ALT_INV_G3(41),
	datae => ALT_INV_G3(25),
	dataf => \ALT_INV_P4[41]~17_combout\,
	combout => \C[42]~47_combout\);

-- Location: IOIBUF_X59_Y34_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X43_Y45_N18
\G4~26\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~26_combout\ = ( !G3(33) & ( \P2[37]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P2[37]~29_combout\,
	dataf => ALT_INV_G3(33),
	combout => \G4~26_combout\);

-- Location: IOIBUF_X53_Y56_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LABCELL_X43_Y45_N16
\S~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = ( \B[42]~input_o\ & ( !\A[42]~input_o\ $ (((!\C[42]~47_combout\) # ((\P2[41]~33_combout\ & \G4~26_combout\)))) ) ) # ( !\B[42]~input_o\ & ( !\A[42]~input_o\ $ (((\C[42]~47_combout\ & ((!\P2[41]~33_combout\) # (!\G4~26_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110110100101001011011010001011010010010110101101001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[42]~47_combout\,
	datab => \ALT_INV_P2[41]~33_combout\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_G4~26_combout\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \S~42_combout\);

-- Location: IOIBUF_X59_Y34_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X43_Y46_N30
\G3~74\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~74_combout\ = ( \A[41]~input_o\ & ( (!\B[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[41]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G3~74_combout\);

-- Location: MLABCELL_X46_Y48_N6
\P2[42]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[42]~34_combout\ = (\G3~74_combout\ & \G3~70_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~74_combout\,
	datac => \ALT_INV_G3~70_combout\,
	combout => \P2[42]~34_combout\);

-- Location: MLABCELL_X44_Y49_N24
\P4[42]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[42]~18_combout\ = ( \P4[38]~12_combout\ & ( (\P2[30]~22_combout\ & \P2[42]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[30]~22_combout\,
	datad => \ALT_INV_P2[42]~34_combout\,
	dataf => \ALT_INV_P4[38]~12_combout\,
	combout => \P4[42]~18_combout\);

-- Location: LABCELL_X45_Y48_N34
\C[43]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \C[43]~49_combout\ = ( \C[27]~9_combout\ & ( (!G3(18) & (\P4[42]~18_combout\ & \G4~9_combout\)) ) ) # ( !\C[27]~9_combout\ & ( (\P4[42]~18_combout\ & (\G4~9_combout\ & ((!G3(18)) # (\G4~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(18),
	datab => \ALT_INV_G4~2_combout\,
	datac => \ALT_INV_P4[42]~18_combout\,
	datad => \ALT_INV_G4~9_combout\,
	dataf => \ALT_INV_C[27]~9_combout\,
	combout => \C[43]~49_combout\);

-- Location: MLABCELL_X44_Y46_N2
\G3~75\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~75_combout\ = ( \G1[40]~38_combout\ & ( \G3~74_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~74_combout\,
	dataf => \ALT_INV_G1[40]~38_combout\,
	combout => \G3~75_combout\);

-- Location: LABCELL_X43_Y46_N28
\G1[42]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[42]~40_combout\ = ( \A[41]~input_o\ & ( (!\B[41]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) # (\B[41]~input_o\ & ((\A[42]~input_o\) # (\B[42]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[42]~input_o\ & \A[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \G1[42]~40_combout\);

-- Location: MLABCELL_X44_Y49_N30
\G3[42]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(42) = ( !\G1[42]~40_combout\ & ( (!\G3~75_combout\ & ((!\P2[42]~34_combout\) # ((!\G3~67_combout\ & !\G1[38]~36_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~67_combout\,
	datab => \ALT_INV_P2[42]~34_combout\,
	datac => \ALT_INV_G3~75_combout\,
	datad => \ALT_INV_G1[38]~36_combout\,
	dataf => \ALT_INV_G1[42]~40_combout\,
	combout => G3(42));

-- Location: LABCELL_X45_Y48_N2
\C[43]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \C[43]~48_combout\ = ( G3(26) & ( G3(42) ) ) # ( !G3(26) & ( (G3(42) & !\P4[42]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G3(42),
	datac => \ALT_INV_P4[42]~18_combout\,
	dataf => ALT_INV_G3(26),
	combout => \C[43]~48_combout\);

-- Location: LABCELL_X47_Y48_N36
\G4~27\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~27_combout\ = ( !G3(34) & ( (\P2[38]~30_combout\ & \P2[42]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[38]~30_combout\,
	datad => \ALT_INV_P2[42]~34_combout\,
	dataf => ALT_INV_G3(34),
	combout => \G4~27_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X47_Y48_N38
\S~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = ( \B[43]~input_o\ & ( !\A[43]~input_o\ $ ((((!\C[43]~48_combout\) # (\G4~27_combout\)) # (\C[43]~49_combout\))) ) ) # ( !\B[43]~input_o\ & ( !\A[43]~input_o\ $ (((!\C[43]~49_combout\ & (\C[43]~48_combout\ & !\G4~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010101010101001101010101001011001010101010101100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_C[43]~49_combout\,
	datac => \ALT_INV_C[43]~48_combout\,
	datad => \ALT_INV_G4~27_combout\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \S~43_combout\);

-- Location: LABCELL_X43_Y46_N14
\G3~76\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~76_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G3~76_combout\);

-- Location: LABCELL_X43_Y46_N18
\P2[43]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[43]~35_combout\ = (\G3~76_combout\ & \G3~72_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~76_combout\,
	datad => \ALT_INV_G3~72_combout\,
	combout => \P2[43]~35_combout\);

-- Location: LABCELL_X40_Y46_N12
\G4~28\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~28_combout\ = ( \P2[39]~31_combout\ & ( (\P2[43]~35_combout\ & !G3(35)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datad => ALT_INV_G3(35),
	dataf => \ALT_INV_P2[39]~31_combout\,
	combout => \G4~28_combout\);

-- Location: LABCELL_X43_Y46_N16
\G3~77\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~77_combout\ = ( \G1[41]~39_combout\ & ( \G3~76_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~76_combout\,
	dataf => \ALT_INV_G1[41]~39_combout\,
	combout => \G3~77_combout\);

-- Location: LABCELL_X43_Y46_N12
\G1[43]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[43]~41_combout\ = ( \A[43]~input_o\ & ( ((\B[42]~input_o\ & \A[42]~input_o\)) # (\B[43]~input_o\) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G1[43]~41_combout\);

-- Location: LABCELL_X40_Y46_N16
\G3[43]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(43) = ( \G1[39]~37_combout\ & ( (!\G3~77_combout\ & (!\G1[43]~41_combout\ & !\P2[43]~35_combout\)) ) ) # ( !\G1[39]~37_combout\ & ( (!\G3~77_combout\ & (!\G1[43]~41_combout\ & ((!\G3~69_combout\) # (!\P2[43]~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~77_combout\,
	datab => \ALT_INV_G1[43]~41_combout\,
	datac => \ALT_INV_G3~69_combout\,
	datad => \ALT_INV_P2[43]~35_combout\,
	dataf => \ALT_INV_G1[39]~37_combout\,
	combout => G3(43));

-- Location: LABCELL_X40_Y46_N14
\P4[43]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[43]~19_combout\ = ( \P4[39]~14_combout\ & ( (\P2[43]~35_combout\ & \P2[31]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datac => \ALT_INV_P2[31]~23_combout\,
	dataf => \ALT_INV_P4[39]~14_combout\,
	combout => \P4[43]~19_combout\);

-- Location: LABCELL_X40_Y46_N28
\C[44]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \C[44]~50_combout\ = ( \P4[43]~19_combout\ & ( (!\G4~11_combout\ & (G3(27) & (!\G4~28_combout\ & G3(43)))) ) ) # ( !\P4[43]~19_combout\ & ( (!\G4~28_combout\ & G3(43)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~11_combout\,
	datab => ALT_INV_G3(27),
	datac => \ALT_INV_G4~28_combout\,
	datad => ALT_INV_G3(43),
	dataf => \ALT_INV_P4[43]~19_combout\,
	combout => \C[44]~50_combout\);

-- Location: IOIBUF_X35_Y56_N94
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X40_Y46_N20
\S~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = ( \B[44]~input_o\ & ( \P4[27]~0_combout\ & ( !\A[44]~input_o\ $ (((!\C[44]~50_combout\) # ((!\C[36]~11_combout\ & \P4[43]~19_combout\)))) ) ) ) # ( !\B[44]~input_o\ & ( \P4[27]~0_combout\ & ( !\A[44]~input_o\ $ (((\C[44]~50_combout\ & 
-- ((!\P4[43]~19_combout\) # (\C[36]~11_combout\))))) ) ) ) # ( \B[44]~input_o\ & ( !\P4[27]~0_combout\ & ( !\C[44]~50_combout\ $ (!\A[44]~input_o\) ) ) ) # ( !\B[44]~input_o\ & ( !\P4[27]~0_combout\ & ( !\C[44]~50_combout\ $ (\A[44]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101010110100101101010100101111000010101101000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[44]~50_combout\,
	datab => \ALT_INV_C[36]~11_combout\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_P4[43]~19_combout\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_P4[27]~0_combout\,
	combout => \S~44_combout\);

-- Location: LABCELL_X43_Y46_N20
\G3~78\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~78_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G3~78_combout\);

-- Location: MLABCELL_X44_Y46_N6
\P2[44]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[44]~36_combout\ = ( \G3~78_combout\ & ( \G3~74_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~74_combout\,
	dataf => \ALT_INV_G3~78_combout\,
	combout => \P2[44]~36_combout\);

-- Location: MLABCELL_X44_Y48_N6
\G4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~29_combout\ = ( \P2[40]~32_combout\ & ( \P2[44]~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[44]~36_combout\,
	dataf => \ALT_INV_P2[40]~32_combout\,
	combout => \G4~29_combout\);

-- Location: MLABCELL_X44_Y48_N26
\P4[44]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[44]~20_combout\ = ( \G4~29_combout\ & ( \P4[36]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[36]~9_combout\,
	dataf => \ALT_INV_G4~29_combout\,
	combout => \P4[44]~20_combout\);

-- Location: IOIBUF_X21_Y56_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LABCELL_X43_Y46_N22
\G1[44]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[44]~42_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (\B[44]~input_o\ & \A[44]~input_o\)) # (\B[43]~input_o\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[44]~input_o\ & \A[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[43]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \G1[44]~42_combout\);

-- Location: LABCELL_X43_Y46_N24
\G3~79\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~79_combout\ = ( \G1[42]~40_combout\ & ( \G3~78_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~78_combout\,
	dataf => \ALT_INV_G1[42]~40_combout\,
	combout => \G3~79_combout\);

-- Location: MLABCELL_X44_Y48_N14
\G3[44]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(44) = ( !\G3~79_combout\ & ( (!\G1[44]~42_combout\ & ((!\P2[44]~36_combout\) # ((!\G1[40]~38_combout\ & !\G3~71_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[40]~38_combout\,
	datab => \ALT_INV_G3~71_combout\,
	datac => \ALT_INV_G1[44]~42_combout\,
	datad => \ALT_INV_P2[44]~36_combout\,
	dataf => \ALT_INV_G3~79_combout\,
	combout => G3(44));

-- Location: MLABCELL_X42_Y48_N8
\C[45]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \C[45]~51_combout\ = ( \G4~13_combout\ & ( G3(28) & ( (G3(44) & ((!\G4~29_combout\) # ((!\P4[36]~9_combout\ & G3(36))))) ) ) ) # ( !\G4~13_combout\ & ( G3(28) & ( (G3(44) & ((!\G4~29_combout\) # (G3(36)))) ) ) ) # ( \G4~13_combout\ & ( !G3(28) & ( (G3(44) 
-- & ((!\G4~29_combout\) # ((!\P4[36]~9_combout\ & G3(36))))) ) ) ) # ( !\G4~13_combout\ & ( !G3(28) & ( (G3(44) & ((!\G4~29_combout\) # ((!\P4[36]~9_combout\ & G3(36))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110010001100000011001000110000001100110011000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[36]~9_combout\,
	datab => ALT_INV_G3(44),
	datac => \ALT_INV_G4~29_combout\,
	datad => ALT_INV_G3(36),
	datae => \ALT_INV_G4~13_combout\,
	dataf => ALT_INV_G3(28),
	combout => \C[45]~51_combout\);

-- Location: IOIBUF_X59_Y33_N63
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: MLABCELL_X42_Y48_N34
\S~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = ( \C[45]~51_combout\ & ( \B[45]~input_o\ & ( !\A[45]~input_o\ $ (((!\C[37]~13_combout\ & (\P4[44]~20_combout\ & \P4[28]~1_combout\)))) ) ) ) # ( !\C[45]~51_combout\ & ( \B[45]~input_o\ & ( \A[45]~input_o\ ) ) ) # ( \C[45]~51_combout\ & ( 
-- !\B[45]~input_o\ & ( !\A[45]~input_o\ $ ((((!\P4[44]~20_combout\) # (!\P4[28]~1_combout\)) # (\C[37]~13_combout\))) ) ) ) # ( !\C[45]~51_combout\ & ( !\B[45]~input_o\ & ( !\A[45]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110010110100001111000011111111000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[37]~13_combout\,
	datab => \ALT_INV_P4[44]~20_combout\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_P4[28]~1_combout\,
	datae => \ALT_INV_C[45]~51_combout\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \S~45_combout\);

-- Location: LABCELL_X43_Y46_N8
\G3~80\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~80_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G3~80_combout\);

-- Location: LABCELL_X43_Y46_N32
\P2[45]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[45]~37_combout\ = ( \G3~76_combout\ & ( \G3~80_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~80_combout\,
	dataf => \ALT_INV_G3~76_combout\,
	combout => \P2[45]~37_combout\);

-- Location: LABCELL_X43_Y45_N22
\G4~30\ : arriaii_lcell_comb
-- Equation(s):
-- \G4~30_combout\ = ( \P2[41]~33_combout\ & ( \P2[45]~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[45]~37_combout\,
	dataf => \ALT_INV_P2[41]~33_combout\,
	combout => \G4~30_combout\);

-- Location: LABCELL_X43_Y44_N2
\P4[45]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[45]~21_combout\ = ( \G4~30_combout\ & ( \P4[37]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P4[37]~10_combout\,
	dataf => \ALT_INV_G4~30_combout\,
	combout => \P4[45]~21_combout\);

-- Location: LABCELL_X43_Y46_N10
\G1[45]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[45]~43_combout\ = ( \B[45]~input_o\ & ( ((\B[44]~input_o\ & \A[44]~input_o\)) # (\A[45]~input_o\) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (\B[44]~input_o\ & \A[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G1[45]~43_combout\);

-- Location: LABCELL_X43_Y46_N34
\G3~81\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~81_combout\ = ( \G1[43]~41_combout\ & ( \G3~80_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~80_combout\,
	dataf => \ALT_INV_G1[43]~41_combout\,
	combout => \G3~81_combout\);

-- Location: LABCELL_X43_Y44_N26
\G3[45]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(45) = ( \G3~73_combout\ & ( (!\P2[45]~37_combout\ & (!\G1[45]~43_combout\ & !\G3~81_combout\)) ) ) # ( !\G3~73_combout\ & ( (!\G1[45]~43_combout\ & (!\G3~81_combout\ & ((!\P2[45]~37_combout\) # (!\G1[41]~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[45]~37_combout\,
	datab => \ALT_INV_G1[45]~43_combout\,
	datac => \ALT_INV_G1[41]~39_combout\,
	datad => \ALT_INV_G3~81_combout\,
	dataf => \ALT_INV_G3~73_combout\,
	combout => G3(45));

-- Location: MLABCELL_X42_Y45_N36
\C[46]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \C[46]~52_combout\ = ( G3(45) & ( G3(37) & ( (!\P4[37]~10_combout\) # ((!\G4~30_combout\) # ((G3(29) & !\G4~15_combout\))) ) ) ) # ( G3(45) & ( !G3(37) & ( !\G4~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[37]~10_combout\,
	datab => ALT_INV_G3(29),
	datac => \ALT_INV_G4~30_combout\,
	datad => \ALT_INV_G4~15_combout\,
	datae => ALT_INV_G3(45),
	dataf => ALT_INV_G3(37),
	combout => \C[46]~52_combout\);

-- Location: IOIBUF_X59_Y39_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X42_Y46_N2
\S~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = ( \B[46]~input_o\ & ( \A[46]~input_o\ & ( (!\C[46]~52_combout\) # ((\P4[29]~2_combout\ & (\P4[45]~21_combout\ & !C(14)))) ) ) ) # ( !\B[46]~input_o\ & ( \A[46]~input_o\ & ( (\C[46]~52_combout\ & ((!\P4[29]~2_combout\) # 
-- ((!\P4[45]~21_combout\) # (C(14))))) ) ) ) # ( \B[46]~input_o\ & ( !\A[46]~input_o\ & ( (\C[46]~52_combout\ & ((!\P4[29]~2_combout\) # ((!\P4[45]~21_combout\) # (C(14))))) ) ) ) # ( !\B[46]~input_o\ & ( !\A[46]~input_o\ & ( (!\C[46]~52_combout\) # 
-- ((\P4[29]~2_combout\ & (\P4[45]~21_combout\ & !C(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110000000011100000111100001110000011111111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[29]~2_combout\,
	datab => \ALT_INV_P4[45]~21_combout\,
	datac => \ALT_INV_C[46]~52_combout\,
	datad => ALT_INV_C(14),
	datae => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_A[46]~input_o\,
	combout => \S~46_combout\);

-- Location: LABCELL_X43_Y46_N36
\G3~82\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~82_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[45]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G3~82_combout\);

-- Location: MLABCELL_X44_Y46_N30
\P2[46]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[46]~38_combout\ = ( \G3~82_combout\ & ( \G3~78_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~78_combout\,
	dataf => \ALT_INV_G3~82_combout\,
	combout => \P2[46]~38_combout\);

-- Location: MLABCELL_X44_Y49_N34
\P4[46]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[46]~22_combout\ = ( \P2[42]~34_combout\ & ( (\P4[38]~12_combout\ & \P2[46]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P4[38]~12_combout\,
	datad => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_P2[42]~34_combout\,
	combout => \P4[46]~22_combout\);

-- Location: LABCELL_X43_Y46_N26
\G3~83\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~83_combout\ = (\G3~82_combout\ & \G1[44]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~82_combout\,
	datac => \ALT_INV_G1[44]~42_combout\,
	combout => \G3~83_combout\);

-- Location: LABCELL_X43_Y46_N38
\G1[46]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[46]~44_combout\ = ( \B[45]~input_o\ & ( (!\A[45]~input_o\ & (\A[46]~input_o\ & \B[46]~input_o\)) # (\A[45]~input_o\ & ((\B[46]~input_o\) # (\A[46]~input_o\))) ) ) # ( !\B[45]~input_o\ & ( (\A[46]~input_o\ & \B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[45]~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \G1[46]~44_combout\);

-- Location: MLABCELL_X44_Y49_N20
\G3[46]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(46) = ( \G3~75_combout\ & ( (!\G3~83_combout\ & (!\G1[46]~44_combout\ & !\P2[46]~38_combout\)) ) ) # ( !\G3~75_combout\ & ( (!\G3~83_combout\ & (!\G1[46]~44_combout\ & ((!\G1[42]~40_combout\) # (!\P2[46]~38_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~83_combout\,
	datab => \ALT_INV_G1[46]~44_combout\,
	datac => \ALT_INV_G1[42]~40_combout\,
	datad => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_G3~75_combout\,
	combout => G3(46));

-- Location: MLABCELL_X44_Y49_N16
\G5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G5~3_combout\ = ( \P2[42]~34_combout\ & ( (!G3(38) & \P2[46]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(38),
	datad => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_P2[42]~34_combout\,
	combout => \G5~3_combout\);

-- Location: LABCELL_X45_Y49_N22
\C[47]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \C[47]~53_combout\ = ( !\G5~3_combout\ & ( (G3(46) & ((!\P4[46]~22_combout\) # ((G3(30) & !\G4~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100010001010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(46),
	datab => \ALT_INV_P4[46]~22_combout\,
	datac => ALT_INV_G3(30),
	datad => \ALT_INV_G4~17_combout\,
	dataf => \ALT_INV_G5~3_combout\,
	combout => \C[47]~53_combout\);

-- Location: IOIBUF_X42_Y56_N32
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LABCELL_X45_Y49_N34
\S~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = ( \B[47]~input_o\ & ( \P4[30]~3_combout\ & ( !\A[47]~input_o\ $ (((!\C[47]~53_combout\) # ((!C(15) & \P4[46]~22_combout\)))) ) ) ) # ( !\B[47]~input_o\ & ( \P4[30]~3_combout\ & ( !\A[47]~input_o\ $ (((\C[47]~53_combout\ & 
-- ((!\P4[46]~22_combout\) # (C(15)))))) ) ) ) # ( \B[47]~input_o\ & ( !\P4[30]~3_combout\ & ( !\C[47]~53_combout\ $ (!\A[47]~input_o\) ) ) ) # ( !\B[47]~input_o\ & ( !\P4[30]~3_combout\ & ( !\C[47]~53_combout\ $ (\A[47]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000011111111000011110010000011010000110111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(15),
	datab => \ALT_INV_P4[46]~22_combout\,
	datac => \ALT_INV_C[47]~53_combout\,
	datad => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_P4[30]~3_combout\,
	combout => \S~47_combout\);

-- Location: MLABCELL_X42_Y46_N24
\G3~84\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~84_combout\ = ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100001010000010100000010100000101000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[47]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datae => \ALT_INV_B[46]~input_o\,
	combout => \G3~84_combout\);

-- Location: LABCELL_X43_Y46_N4
\P2[47]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[47]~39_combout\ = ( \G3~84_combout\ & ( \G3~80_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~80_combout\,
	dataf => \ALT_INV_G3~84_combout\,
	combout => \P2[47]~39_combout\);

-- Location: MLABCELL_X39_Y45_N30
\P4[47]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[47]~23_combout\ = ( \P4[39]~14_combout\ & ( (\P2[43]~35_combout\ & \P2[47]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datab => \ALT_INV_P2[47]~39_combout\,
	dataf => \ALT_INV_P4[39]~14_combout\,
	combout => \P4[47]~23_combout\);

-- Location: MLABCELL_X42_Y46_N32
\G3~85\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~85_combout\ = ( \G1[45]~43_combout\ & ( \G3~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~84_combout\,
	dataf => \ALT_INV_G1[45]~43_combout\,
	combout => \G3~85_combout\);

-- Location: MLABCELL_X42_Y46_N30
\G1[47]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[47]~45_combout\ = ( \B[46]~input_o\ & ( (!\A[47]~input_o\ & (\B[47]~input_o\ & \A[46]~input_o\)) # (\A[47]~input_o\ & ((\A[46]~input_o\) # (\B[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[47]~input_o\ & \B[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010101111100000101000001010000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_B[46]~input_o\,
	combout => \G1[47]~45_combout\);

-- Location: MLABCELL_X42_Y46_N18
\G3[47]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(47) = ( \P2[47]~39_combout\ & ( (!\G3~85_combout\ & (!\G1[47]~45_combout\ & (!\G3~77_combout\ & !\G1[43]~41_combout\))) ) ) # ( !\P2[47]~39_combout\ & ( (!\G3~85_combout\ & !\G1[47]~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~85_combout\,
	datab => \ALT_INV_G1[47]~45_combout\,
	datac => \ALT_INV_G3~77_combout\,
	datad => \ALT_INV_G1[43]~41_combout\,
	dataf => \ALT_INV_P2[47]~39_combout\,
	combout => G3(47));

-- Location: MLABCELL_X39_Y45_N28
\G5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G5~4_combout\ = ( !G3(39) & ( (\P2[43]~35_combout\ & \P2[47]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datab => \ALT_INV_P2[47]~39_combout\,
	dataf => ALT_INV_G3(39),
	combout => \G5~4_combout\);

-- Location: MLABCELL_X39_Y45_N32
\C[48]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \C[48]~54_combout\ = ( !\G5~4_combout\ & ( (G3(47) & ((!\P4[47]~23_combout\) # ((!\G4~18_combout\ & G3(31))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001110000010100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[47]~23_combout\,
	datab => \ALT_INV_G4~18_combout\,
	datac => ALT_INV_G3(47),
	datad => ALT_INV_G3(31),
	dataf => \ALT_INV_G5~4_combout\,
	combout => \C[48]~54_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X43_Y47_N20
\S~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = ( \P4[31]~4_combout\ & ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ (((!\C[48]~54_combout\) # ((!C(16) & \P4[47]~23_combout\)))) ) ) ) # ( !\P4[31]~4_combout\ & ( \B[48]~input_o\ & ( !\C[48]~54_combout\ $ (!\A[48]~input_o\) ) ) ) # ( 
-- \P4[31]~4_combout\ & ( !\B[48]~input_o\ & ( !\A[48]~input_o\ $ (((\C[48]~54_combout\ & ((!\P4[47]~23_combout\) # (C(16)))))) ) ) ) # ( !\P4[31]~4_combout\ & ( !\B[48]~input_o\ & ( !\C[48]~54_combout\ $ (\A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011100011000100110011110011000011000111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(16),
	datab => \ALT_INV_C[48]~54_combout\,
	datac => \ALT_INV_P4[47]~23_combout\,
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_P4[31]~4_combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \S~48_combout\);

-- Location: IOIBUF_X59_Y49_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X43_Y47_N24
\G3~86\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~86_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[47]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \G3~86_combout\);

-- Location: LABCELL_X43_Y47_N30
\P2[48]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[48]~40_combout\ = (\G3~82_combout\ & \G3~86_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~82_combout\,
	datad => \ALT_INV_G3~86_combout\,
	combout => \P2[48]~40_combout\);

-- Location: MLABCELL_X44_Y48_N28
\C[49]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \C[49]~55_combout\ = ( \P2[48]~40_combout\ & ( \G4~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G4~29_combout\,
	dataf => \ALT_INV_P2[48]~40_combout\,
	combout => \C[49]~55_combout\);

-- Location: LABCELL_X43_Y47_N12
\G1[48]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[48]~46_combout\ = ( \B[47]~input_o\ & ( (!\A[47]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) # (\A[47]~input_o\ & ((\B[48]~input_o\) # (\A[48]~input_o\))) ) ) # ( !\B[47]~input_o\ & ( (\A[48]~input_o\ & \B[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[47]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[47]~input_o\,
	combout => \G1[48]~46_combout\);

-- Location: LABCELL_X43_Y47_N14
\G3~87\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~87_combout\ = ( \G1[46]~44_combout\ & ( \G3~86_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~86_combout\,
	dataf => \ALT_INV_G1[46]~44_combout\,
	combout => \G3~87_combout\);

-- Location: MLABCELL_X44_Y47_N20
\G3[48]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(48) = ( !\G3~87_combout\ & ( (!\G1[48]~46_combout\ & ((!\P2[48]~40_combout\) # ((!\G3~79_combout\ & !\G1[44]~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[48]~46_combout\,
	datab => \ALT_INV_P2[48]~40_combout\,
	datac => \ALT_INV_G3~79_combout\,
	datad => \ALT_INV_G1[44]~42_combout\,
	dataf => \ALT_INV_G3~87_combout\,
	combout => G3(48));

-- Location: LABCELL_X43_Y48_N30
\C[49]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \C[49]~58_combout\ = ( \G4~25_combout\ & ( (!\C[49]~55_combout\ & G3(48)) ) ) # ( !\G4~25_combout\ & ( (G3(48) & ((!\P2[36]~28_combout\) # ((!\C[49]~55_combout\) # (!\G4~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[36]~28_combout\,
	datab => \ALT_INV_C[49]~55_combout\,
	datac => ALT_INV_G3(48),
	datad => \ALT_INV_G4~19_combout\,
	dataf => \ALT_INV_G4~25_combout\,
	combout => \C[49]~58_combout\);

-- Location: LABCELL_X43_Y48_N28
\C[49]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \C[49]~56_combout\ = (\P2[36]~28_combout\ & (\C[49]~55_combout\ & (\P4[32]~5_combout\ & !\C[17]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[36]~28_combout\,
	datab => \ALT_INV_C[49]~55_combout\,
	datac => \ALT_INV_P4[32]~5_combout\,
	datad => \ALT_INV_C[17]~17_combout\,
	combout => \C[49]~56_combout\);

-- Location: LABCELL_X43_Y48_N32
\C[49]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \C[49]~57_combout\ = ( \P2[44]~36_combout\ & ( (!G3(40) & \P2[48]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G3(40),
	datad => \ALT_INV_P2[48]~40_combout\,
	dataf => \ALT_INV_P2[44]~36_combout\,
	combout => \C[49]~57_combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X43_Y48_N34
\S~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = ( \A[49]~input_o\ & ( !\B[49]~input_o\ $ (((!\C[49]~58_combout\) # ((\C[49]~57_combout\) # (\C[49]~56_combout\)))) ) ) # ( !\A[49]~input_o\ & ( !\B[49]~input_o\ $ (((\C[49]~58_combout\ & (!\C[49]~56_combout\ & !\C[49]~57_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101010101010100110101010101001100101010101010110010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_C[49]~58_combout\,
	datac => \ALT_INV_C[49]~56_combout\,
	datad => \ALT_INV_C[49]~57_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \S~49_combout\);

-- Location: LABCELL_X43_Y47_N26
\G3~88\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~88_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\B[48]~input_o\ $ (!\A[48]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G3~88_combout\);

-- Location: MLABCELL_X42_Y46_N20
\P2[49]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[49]~41_combout\ = ( \G3~88_combout\ & ( \G3~84_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~84_combout\,
	datae => \ALT_INV_G3~88_combout\,
	combout => \P2[49]~41_combout\);

-- Location: LABCELL_X43_Y44_N24
\C[50]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \C[50]~59_combout\ = ( \G4~30_combout\ & ( \P2[49]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[49]~41_combout\,
	dataf => \ALT_INV_G4~30_combout\,
	combout => \C[50]~59_combout\);

-- Location: MLABCELL_X42_Y46_N6
\G3~89\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~89_combout\ = ( \G1[47]~45_combout\ & ( \G3~88_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G3~88_combout\,
	datae => \ALT_INV_G1[47]~45_combout\,
	combout => \G3~89_combout\);

-- Location: LABCELL_X43_Y47_N28
\G1[49]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[49]~47_combout\ = ( \A[49]~input_o\ & ( ((\A[48]~input_o\ & \B[48]~input_o\)) # (\B[49]~input_o\) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[49]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G1[49]~47_combout\);

-- Location: LABCELL_X43_Y44_N10
\G3[49]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(49) = ( !\G1[49]~47_combout\ & ( (!\G3~89_combout\ & ((!\P2[49]~41_combout\) # ((!\G1[45]~43_combout\ & !\G3~81_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[49]~41_combout\,
	datab => \ALT_INV_G3~89_combout\,
	datac => \ALT_INV_G1[45]~43_combout\,
	datad => \ALT_INV_G3~81_combout\,
	dataf => \ALT_INV_G1[49]~47_combout\,
	combout => G3(49));

-- Location: LABCELL_X43_Y45_N8
\C[50]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \C[50]~62_combout\ = ( G3(49) & ( (!\C[50]~59_combout\) # ((!\G4~26_combout\ & ((!\P2[37]~29_combout\) # (!\G4~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110110011001111111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[37]~29_combout\,
	datab => \ALT_INV_C[50]~59_combout\,
	datac => \ALT_INV_G4~20_combout\,
	datad => \ALT_INV_G4~26_combout\,
	dataf => ALT_INV_G3(49),
	combout => \C[50]~62_combout\);

-- Location: LABCELL_X43_Y45_N10
\C[50]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \C[50]~60_combout\ = ( \G4~8_combout\ & ( (\P2[37]~29_combout\ & (\C[50]~59_combout\ & (\P4[33]~6_combout\ & !\C[18]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[37]~29_combout\,
	datab => \ALT_INV_C[50]~59_combout\,
	datac => \ALT_INV_P4[33]~6_combout\,
	datad => \ALT_INV_C[18]~18_combout\,
	dataf => \ALT_INV_G4~8_combout\,
	combout => \C[50]~60_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X43_Y45_N32
\C[50]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \C[50]~61_combout\ = ( !G3(41) & ( (\P2[45]~37_combout\ & \P2[49]~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[45]~37_combout\,
	datad => \ALT_INV_P2[49]~41_combout\,
	dataf => ALT_INV_G3(41),
	combout => \C[50]~61_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X43_Y45_N34
\S~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = ( \B[50]~input_o\ & ( !\A[50]~input_o\ $ (((!\C[50]~62_combout\) # ((\C[50]~61_combout\) # (\C[50]~60_combout\)))) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ $ (((\C[50]~62_combout\ & (!\C[50]~60_combout\ & !\C[50]~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000101101001111000001001011000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[50]~62_combout\,
	datab => \ALT_INV_C[50]~60_combout\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_C[50]~61_combout\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \S~50_combout\);

-- Location: LABCELL_X43_Y47_N36
\G3~90\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~90_combout\ = ( \A[49]~input_o\ & ( (!\B[49]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[49]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G3~90_combout\);

-- Location: LABCELL_X43_Y47_N0
\P2[50]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[50]~42_combout\ = (\G3~90_combout\ & \G3~86_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~90_combout\,
	datad => \ALT_INV_G3~86_combout\,
	combout => \P2[50]~42_combout\);

-- Location: MLABCELL_X44_Y49_N6
\C[51]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \C[51]~63_combout\ = ( \P2[38]~30_combout\ & ( (\P2[50]~42_combout\ & (\P2[46]~38_combout\ & \P2[42]~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[50]~42_combout\,
	datab => \ALT_INV_P2[46]~38_combout\,
	datac => \ALT_INV_P2[42]~34_combout\,
	dataf => \ALT_INV_P2[38]~30_combout\,
	combout => \C[51]~63_combout\);

-- Location: LABCELL_X43_Y47_N38
\G1[50]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[50]~48_combout\ = ( \A[49]~input_o\ & ( (!\B[50]~input_o\ & (\A[50]~input_o\ & \B[49]~input_o\)) # (\B[50]~input_o\ & ((\B[49]~input_o\) # (\A[50]~input_o\))) ) ) # ( !\A[49]~input_o\ & ( (\B[50]~input_o\ & \A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \G1[50]~48_combout\);

-- Location: LABCELL_X43_Y47_N2
\G3~91\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~91_combout\ = (\G3~90_combout\ & \G1[48]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G3~90_combout\,
	datad => \ALT_INV_G1[48]~46_combout\,
	combout => \G3~91_combout\);

-- Location: MLABCELL_X44_Y49_N22
\G3[50]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(50) = ( !\G3~91_combout\ & ( (!\G1[50]~48_combout\ & ((!\P2[50]~42_combout\) # ((!\G3~83_combout\ & !\G1[46]~44_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~83_combout\,
	datab => \ALT_INV_G1[46]~44_combout\,
	datac => \ALT_INV_G1[50]~48_combout\,
	datad => \ALT_INV_P2[50]~42_combout\,
	dataf => \ALT_INV_G3~91_combout\,
	combout => G3(50));

-- Location: MLABCELL_X44_Y49_N4
\C[51]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \C[51]~64_combout\ = ( G3(42) & ( G3(50) ) ) # ( !G3(42) & ( (G3(50) & ((!\P2[50]~42_combout\) # (!\P2[46]~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[50]~42_combout\,
	datab => \ALT_INV_P2[46]~38_combout\,
	datad => ALT_INV_G3(50),
	dataf => ALT_INV_G3(42),
	combout => \C[51]~64_combout\);

-- Location: LABCELL_X45_Y48_N18
\C[51]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \C[51]~65_combout\ = ( \G4~21_combout\ & ( (!\C[51]~63_combout\ & \C[51]~64_combout\) ) ) # ( !\G4~21_combout\ & ( (\C[51]~64_combout\ & ((!\C[51]~63_combout\) # (G3(34)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[51]~63_combout\,
	datac => \ALT_INV_C[51]~64_combout\,
	datad => ALT_INV_G3(34),
	dataf => \ALT_INV_G4~21_combout\,
	combout => \C[51]~65_combout\);

-- Location: IOIBUF_X59_Y46_N1
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X45_Y48_N26
\S~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = ( \C[51]~63_combout\ & ( \A[51]~input_o\ & ( !\B[51]~input_o\ $ (((!\C[51]~65_combout\) # ((\P4[34]~7_combout\ & !\C[19]~20_combout\)))) ) ) ) # ( !\C[51]~63_combout\ & ( \A[51]~input_o\ & ( !\C[51]~65_combout\ $ (!\B[51]~input_o\) ) ) ) 
-- # ( \C[51]~63_combout\ & ( !\A[51]~input_o\ & ( !\B[51]~input_o\ $ (((\C[51]~65_combout\ & ((!\P4[34]~7_combout\) # (\C[19]~20_combout\))))) ) ) ) # ( !\C[51]~63_combout\ & ( !\A[51]~input_o\ & ( !\C[51]~65_combout\ $ (\B[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100111001001100101100110011001100110001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[51]~65_combout\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_P4[34]~7_combout\,
	datad => \ALT_INV_C[19]~20_combout\,
	datae => \ALT_INV_C[51]~63_combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \S~51_combout\);

-- Location: IOIBUF_X59_Y31_N1
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X43_Y47_N4
\G3~92\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~92_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G3~92_combout\);

-- Location: MLABCELL_X42_Y46_N10
\P2[51]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[51]~43_combout\ = ( \G3~88_combout\ & ( \G3~92_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_G3~92_combout\,
	datae => \ALT_INV_G3~88_combout\,
	combout => \P2[51]~43_combout\);

-- Location: MLABCELL_X39_Y45_N18
\C[52]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \C[52]~66_combout\ = ( \P2[39]~31_combout\ & ( (\P2[43]~35_combout\ & (\P2[47]~39_combout\ & \P2[51]~43_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datab => \ALT_INV_P2[47]~39_combout\,
	datad => \ALT_INV_P2[51]~43_combout\,
	dataf => \ALT_INV_P2[39]~31_combout\,
	combout => \C[52]~66_combout\);

-- Location: LABCELL_X43_Y43_N22
\G3~93\ : arriaii_lcell_comb
-- Equation(s):
-- \G3~93_combout\ = ( \G3~92_combout\ & ( \G1[49]~47_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_G3~92_combout\,
	dataf => \ALT_INV_G1[49]~47_combout\,
	combout => \G3~93_combout\);

-- Location: LABCELL_X43_Y47_N6
\G1[51]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[51]~49_combout\ = ( \A[51]~input_o\ & ( ((\A[50]~input_o\ & \B[50]~input_o\)) # (\B[51]~input_o\) ) ) # ( !\A[51]~input_o\ & ( (\A[50]~input_o\ & (\B[51]~input_o\ & \B[50]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G1[51]~49_combout\);

-- Location: MLABCELL_X42_Y46_N16
\G3[51]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(51) = ( !\G1[51]~49_combout\ & ( (!\G3~93_combout\ & ((!\P2[51]~43_combout\) # ((!\G3~85_combout\ & !\G1[47]~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~85_combout\,
	datab => \ALT_INV_G1[47]~45_combout\,
	datac => \ALT_INV_P2[51]~43_combout\,
	datad => \ALT_INV_G3~93_combout\,
	dataf => \ALT_INV_G1[51]~49_combout\,
	combout => G3(51));

-- Location: LABCELL_X40_Y46_N24
\C[52]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \C[52]~67_combout\ = ( \P2[47]~39_combout\ & ( (G3(51) & ((!\P2[51]~43_combout\) # (G3(43)))) ) ) # ( !\P2[47]~39_combout\ & ( G3(51) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[51]~43_combout\,
	datac => ALT_INV_G3(51),
	datad => ALT_INV_G3(43),
	dataf => \ALT_INV_P2[47]~39_combout\,
	combout => \C[52]~67_combout\);

-- Location: LABCELL_X40_Y46_N26
\C[52]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \C[52]~68_combout\ = ( \C[52]~66_combout\ & ( (!\G4~22_combout\ & (G3(35) & \C[52]~67_combout\)) ) ) # ( !\C[52]~66_combout\ & ( \C[52]~67_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G4~22_combout\,
	datac => ALT_INV_G3(35),
	datad => \ALT_INV_C[52]~67_combout\,
	dataf => \ALT_INV_C[52]~66_combout\,
	combout => \C[52]~68_combout\);

-- Location: IOIBUF_X59_Y28_N32
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X40_Y46_N8
\S~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = ( \A[52]~input_o\ & ( \C[20]~21_combout\ & ( !\B[52]~input_o\ $ (!\C[52]~68_combout\) ) ) ) # ( !\A[52]~input_o\ & ( \C[20]~21_combout\ & ( !\B[52]~input_o\ $ (\C[52]~68_combout\) ) ) ) # ( \A[52]~input_o\ & ( !\C[20]~21_combout\ & ( 
-- !\B[52]~input_o\ $ (((!\C[52]~68_combout\) # ((\C[52]~66_combout\ & \P4[35]~8_combout\)))) ) ) ) # ( !\A[52]~input_o\ & ( !\C[20]~21_combout\ & ( !\B[52]~input_o\ $ (((\C[52]~68_combout\ & ((!\C[52]~66_combout\) # (!\P4[35]~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010110010101011010100110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_C[52]~66_combout\,
	datac => \ALT_INV_P4[35]~8_combout\,
	datad => \ALT_INV_C[52]~68_combout\,
	datae => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_C[20]~21_combout\,
	combout => \S~52_combout\);

-- Location: LABCELL_X43_Y47_N8
\G2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~1_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G1[50]~48_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G1[50]~48_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_G1[50]~48_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G2~1_combout\);

-- Location: LABCELL_X43_Y47_N34
\G1[52]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[52]~50_combout\ = ( \A[51]~input_o\ & ( (!\A[52]~input_o\ & (\B[51]~input_o\ & \B[52]~input_o\)) # (\A[52]~input_o\ & ((\B[52]~input_o\) # (\B[51]~input_o\))) ) ) # ( !\A[51]~input_o\ & ( (\A[52]~input_o\ & \B[52]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \G1[52]~50_combout\);

-- Location: LABCELL_X43_Y47_N10
\P2[52]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[52]~44_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G3~90_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G3~90_combout\ & (!\B[52]~input_o\ $ (!\A[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_G3~90_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \P2[52]~44_combout\);

-- Location: MLABCELL_X44_Y47_N12
\G3[52]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(52) = ( \G3~87_combout\ & ( (!\G2~1_combout\ & (!\G1[52]~50_combout\ & !\P2[52]~44_combout\)) ) ) # ( !\G3~87_combout\ & ( (!\G2~1_combout\ & (!\G1[52]~50_combout\ & ((!\G1[48]~46_combout\) # (!\P2[52]~44_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G2~1_combout\,
	datab => \ALT_INV_G1[52]~50_combout\,
	datac => \ALT_INV_G1[48]~46_combout\,
	datad => \ALT_INV_P2[52]~44_combout\,
	dataf => \ALT_INV_G3~87_combout\,
	combout => G3(52));

-- Location: MLABCELL_X44_Y47_N6
\C[57]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \C[57]~69_combout\ = ( \P2[52]~44_combout\ & ( (\P2[48]~40_combout\ & \G4~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[48]~40_combout\,
	datad => \ALT_INV_G4~29_combout\,
	dataf => \ALT_INV_P2[52]~44_combout\,
	combout => \C[57]~69_combout\);

-- Location: MLABCELL_X42_Y48_N16
\C[53]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \C[53]~72_combout\ = ( G3(28) & ( (G3(52) & ((!\C[57]~69_combout\) # (G3(36)))) ) ) # ( !G3(28) & ( (G3(52) & ((!\C[57]~69_combout\) # ((!\P4[36]~9_combout\ & G3(36))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000010000011110000001000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[36]~9_combout\,
	datab => ALT_INV_G3(36),
	datac => ALT_INV_G3(52),
	datad => \ALT_INV_C[57]~69_combout\,
	dataf => ALT_INV_G3(28),
	combout => \C[53]~72_combout\);

-- Location: MLABCELL_X44_Y47_N28
\C[53]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \C[53]~71_combout\ = ( !G3(44) & ( (\P2[48]~40_combout\ & \P2[52]~44_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[48]~40_combout\,
	datac => \ALT_INV_P2[52]~44_combout\,
	dataf => ALT_INV_G3(44),
	combout => \C[53]~71_combout\);

-- Location: IOIBUF_X59_Y15_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: MLABCELL_X42_Y48_N18
\C[53]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \C[53]~70_combout\ = ( \G4~12_combout\ & ( (\P4[36]~9_combout\ & \C[57]~69_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[36]~9_combout\,
	datad => \ALT_INV_C[57]~69_combout\,
	dataf => \ALT_INV_G4~12_combout\,
	combout => \C[53]~70_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: MLABCELL_X42_Y44_N14
\S~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ( \A[53]~input_o\ & ( \C[21]~23_combout\ & ( !\B[53]~input_o\ $ (((!\C[53]~72_combout\) # (\C[53]~71_combout\))) ) ) ) # ( !\A[53]~input_o\ & ( \C[21]~23_combout\ & ( !\B[53]~input_o\ $ (((\C[53]~72_combout\ & !\C[53]~71_combout\))) ) ) ) 
-- # ( \A[53]~input_o\ & ( !\C[21]~23_combout\ & ( !\B[53]~input_o\ $ (((!\C[53]~72_combout\) # ((\C[53]~70_combout\) # (\C[53]~71_combout\)))) ) ) ) # ( !\A[53]~input_o\ & ( !\C[21]~23_combout\ & ( !\B[53]~input_o\ $ (((\C[53]~72_combout\ & 
-- (!\C[53]~71_combout\ & !\C[53]~70_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000010010110000111110110100101101000100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[53]~72_combout\,
	datab => \ALT_INV_C[53]~71_combout\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_C[53]~70_combout\,
	datae => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_C[21]~23_combout\,
	combout => \S~53_combout\);

-- Location: MLABCELL_X42_Y44_N0
\P2[53]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[53]~45_combout\ = ( \B[52]~input_o\ & ( (\G3~92_combout\ & (!\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) ) # ( !\B[52]~input_o\ & ( (\G3~92_combout\ & (\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G3~92_combout\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \P2[53]~45_combout\);

-- Location: LABCELL_X43_Y44_N32
\C[58]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \C[58]~73_combout\ = ( \G4~30_combout\ & ( (\P2[49]~41_combout\ & \P2[53]~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[49]~41_combout\,
	datac => \ALT_INV_P2[53]~45_combout\,
	dataf => \ALT_INV_G4~30_combout\,
	combout => \C[58]~73_combout\);

-- Location: LABCELL_X43_Y44_N34
\C[54]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \C[54]~74_combout\ = (\P2[49]~41_combout\ & (!G3(45) & \P2[53]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[49]~41_combout\,
	datac => ALT_INV_G3(45),
	datad => \ALT_INV_P2[53]~45_combout\,
	combout => \C[54]~74_combout\);

-- Location: MLABCELL_X42_Y44_N20
\G2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~2_combout\ = ( \G1[51]~49_combout\ & ( (!\B[52]~input_o\ & (\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) # (\B[52]~input_o\ & (!\A[52]~input_o\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_G1[51]~49_combout\,
	combout => \G2~2_combout\);

-- Location: MLABCELL_X42_Y44_N38
\G1[53]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[53]~51_combout\ = ( \B[52]~input_o\ & ( (!\A[52]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)) # (\A[52]~input_o\ & ((\A[53]~input_o\) # (\B[53]~input_o\))) ) ) # ( !\B[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[52]~input_o\,
	combout => \G1[53]~51_combout\);

-- Location: LABCELL_X43_Y44_N36
\G3[53]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(53) = ( \G1[49]~47_combout\ & ( (!\G2~2_combout\ & (!\G1[53]~51_combout\ & !\P2[53]~45_combout\)) ) ) # ( !\G1[49]~47_combout\ & ( (!\G2~2_combout\ & (!\G1[53]~51_combout\ & ((!\P2[53]~45_combout\) # (!\G3~89_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G2~2_combout\,
	datab => \ALT_INV_G1[53]~51_combout\,
	datac => \ALT_INV_P2[53]~45_combout\,
	datad => \ALT_INV_G3~89_combout\,
	dataf => \ALT_INV_G1[49]~47_combout\,
	combout => G3(53));

-- Location: LABCELL_X43_Y44_N0
\C[54]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \C[54]~75_combout\ = ( \G4~23_combout\ & ( (!\C[58]~73_combout\ & (!\C[54]~74_combout\ & G3(53))) ) ) # ( !\G4~23_combout\ & ( (!\C[54]~74_combout\ & (G3(53) & ((!\C[58]~73_combout\) # (G3(37))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[58]~73_combout\,
	datab => ALT_INV_G3(37),
	datac => \ALT_INV_C[54]~74_combout\,
	datad => ALT_INV_G3(53),
	dataf => \ALT_INV_G4~23_combout\,
	combout => \C[54]~75_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X42_Y44_N6
\S~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = ( \P4[37]~11_combout\ & ( \A[54]~input_o\ & ( !\B[54]~input_o\ $ (((!\C[54]~75_combout\) # ((\C[58]~73_combout\ & !\C[22]~25_combout\)))) ) ) ) # ( !\P4[37]~11_combout\ & ( \A[54]~input_o\ & ( !\C[54]~75_combout\ $ (!\B[54]~input_o\) ) ) 
-- ) # ( \P4[37]~11_combout\ & ( !\A[54]~input_o\ & ( !\B[54]~input_o\ $ (((\C[54]~75_combout\ & ((!\C[58]~73_combout\) # (\C[22]~25_combout\))))) ) ) ) # ( !\P4[37]~11_combout\ & ( !\A[54]~input_o\ & ( !\C[54]~75_combout\ $ (\B[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110100101100001100111100001111000010110100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[58]~73_combout\,
	datab => \ALT_INV_C[54]~75_combout\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_C[22]~25_combout\,
	datae => \ALT_INV_P4[37]~11_combout\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \S~54_combout\);

-- Location: MLABCELL_X42_Y44_N26
\G2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~3_combout\ = ( \B[54]~input_o\ & ( (!\A[54]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) ) # ( !\B[54]~input_o\ & ( (\A[54]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \G2~3_combout\);

-- Location: LABCELL_X43_Y47_N32
\P2[54]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[54]~46_combout\ = ( \A[51]~input_o\ & ( (!\B[51]~input_o\ & (\G2~3_combout\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\)))) ) ) # ( !\A[51]~input_o\ & ( (\B[51]~input_o\ & (\G2~3_combout\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_G2~3_combout\,
	dataf => \ALT_INV_A[51]~input_o\,
	combout => \P2[54]~46_combout\);

-- Location: MLABCELL_X44_Y49_N28
\C[55]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \C[55]~76_combout\ = (\P2[50]~42_combout\ & \P2[54]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[50]~42_combout\,
	datad => \ALT_INV_P2[54]~46_combout\,
	combout => \C[55]~76_combout\);

-- Location: MLABCELL_X42_Y44_N28
\G1[54]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[54]~52_combout\ = ( \B[53]~input_o\ & ( (!\A[54]~input_o\ & (\B[54]~input_o\ & \A[53]~input_o\)) # (\A[54]~input_o\ & ((\A[53]~input_o\) # (\B[54]~input_o\))) ) ) # ( !\B[53]~input_o\ & ( (\A[54]~input_o\ & \B[54]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \G1[54]~52_combout\);

-- Location: LABCELL_X43_Y47_N16
\G3[54]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(54) = ( \G1[52]~50_combout\ & ( \G1[50]~48_combout\ & ( (!\P2[54]~46_combout\ & (!\G2~3_combout\ & !\G1[54]~52_combout\)) ) ) ) # ( !\G1[52]~50_combout\ & ( \G1[50]~48_combout\ & ( (!\P2[54]~46_combout\ & !\G1[54]~52_combout\) ) ) ) # ( 
-- \G1[52]~50_combout\ & ( !\G1[50]~48_combout\ & ( (!\G2~3_combout\ & (!\G1[54]~52_combout\ & ((!\P2[54]~46_combout\) # (!\G3~91_combout\)))) ) ) ) # ( !\G1[52]~50_combout\ & ( !\G1[50]~48_combout\ & ( (!\G1[54]~52_combout\ & ((!\P2[54]~46_combout\) # 
-- (!\G3~91_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000110000001000000010100000101000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[54]~46_combout\,
	datab => \ALT_INV_G2~3_combout\,
	datac => \ALT_INV_G1[54]~52_combout\,
	datad => \ALT_INV_G3~91_combout\,
	datae => \ALT_INV_G1[52]~50_combout\,
	dataf => \ALT_INV_G1[50]~48_combout\,
	combout => G3(54));

-- Location: MLABCELL_X44_Y49_N10
\C[55]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \C[55]~78_combout\ = ( G3(54) & ( \P2[42]~34_combout\ & ( (!\C[55]~76_combout\) # ((G3(46) & ((!\P2[46]~38_combout\) # (G3(38))))) ) ) ) # ( G3(54) & ( !\P2[42]~34_combout\ & ( (!\C[55]~76_combout\) # (G3(46)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000001111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(38),
	datab => \ALT_INV_P2[46]~38_combout\,
	datac => \ALT_INV_C[55]~76_combout\,
	datad => ALT_INV_G3(46),
	datae => ALT_INV_G3(54),
	dataf => \ALT_INV_P2[42]~34_combout\,
	combout => \C[55]~78_combout\);

-- Location: MLABCELL_X44_Y49_N32
\C[55]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \C[55]~79_combout\ = ( \C[55]~78_combout\ & ( (!\C[51]~63_combout\) # ((!\P2[34]~26_combout\) # ((!\P2[54]~46_combout\) # (G3(30)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[51]~63_combout\,
	datab => \ALT_INV_P2[34]~26_combout\,
	datac => ALT_INV_G3(30),
	datad => \ALT_INV_P2[54]~46_combout\,
	dataf => \ALT_INV_C[55]~78_combout\,
	combout => \C[55]~79_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: MLABCELL_X44_Y49_N18
\C[55]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \C[55]~77_combout\ = ( \P4[38]~13_combout\ & ( (\P2[42]~34_combout\ & (\C[55]~76_combout\ & \P2[46]~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[42]~34_combout\,
	datac => \ALT_INV_C[55]~76_combout\,
	datad => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_P4[38]~13_combout\,
	combout => \C[55]~77_combout\);

-- Location: IOIBUF_X25_Y56_N94
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: MLABCELL_X44_Y49_N26
\S~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ( \A[55]~input_o\ & ( !\B[55]~input_o\ $ (((!\C[55]~79_combout\) # ((!\C[23]~27_combout\ & \C[55]~77_combout\)))) ) ) # ( !\A[55]~input_o\ & ( !\B[55]~input_o\ $ (((\C[55]~79_combout\ & ((!\C[55]~77_combout\) # (\C[23]~27_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010111100001101001011110000101011010000111100101101000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[55]~79_combout\,
	datab => \ALT_INV_C[23]~27_combout\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_C[55]~77_combout\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \S~55_combout\);

-- Location: IOIBUF_X59_Y31_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: MLABCELL_X42_Y44_N30
\G2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~4_combout\ = ( \B[55]~input_o\ & ( (!\A[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) ) # ( !\B[55]~input_o\ & ( (\A[55]~input_o\ & (!\A[54]~input_o\ $ (!\B[54]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_B[55]~input_o\,
	combout => \G2~4_combout\);

-- Location: MLABCELL_X42_Y44_N22
\P2[55]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[55]~47_combout\ = ( \A[52]~input_o\ & ( (!\B[52]~input_o\ & (\G2~4_combout\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) ) # ( !\A[52]~input_o\ & ( (\B[52]~input_o\ & (\G2~4_combout\ & (!\A[53]~input_o\ $ (!\B[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_G2~4_combout\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \P2[55]~47_combout\);

-- Location: MLABCELL_X39_Y45_N34
\C[56]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \C[56]~80_combout\ = ( \P2[55]~47_combout\ & ( \P2[51]~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_P2[51]~43_combout\,
	dataf => \ALT_INV_P2[55]~47_combout\,
	combout => \C[56]~80_combout\);

-- Location: MLABCELL_X39_Y45_N16
\C[56]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \C[56]~81_combout\ = ( \P4[39]~15_combout\ & ( (\P2[43]~35_combout\ & (\P2[47]~39_combout\ & \C[56]~80_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[43]~35_combout\,
	datab => \ALT_INV_P2[47]~39_combout\,
	datad => \ALT_INV_C[56]~80_combout\,
	dataf => \ALT_INV_P4[39]~15_combout\,
	combout => \C[56]~81_combout\);

-- Location: MLABCELL_X42_Y44_N36
\G1[55]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[55]~53_combout\ = ( \A[54]~input_o\ & ( (!\B[54]~input_o\ & (\B[55]~input_o\ & \A[55]~input_o\)) # (\B[54]~input_o\ & ((\A[55]~input_o\) # (\B[55]~input_o\))) ) ) # ( !\A[54]~input_o\ & ( (\B[55]~input_o\ & \A[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[54]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \G1[55]~53_combout\);

-- Location: MLABCELL_X42_Y44_N34
\G3[55]\ : arriaii_lcell_comb
-- Equation(s):
-- G3(55) = ( \G3~93_combout\ & ( \G1[51]~49_combout\ & ( (!\G1[55]~53_combout\ & (!\P2[55]~47_combout\ & ((!\G2~4_combout\) # (!\G1[53]~51_combout\)))) ) ) ) # ( !\G3~93_combout\ & ( \G1[51]~49_combout\ & ( (!\G1[55]~53_combout\ & (!\P2[55]~47_combout\ & 
-- ((!\G2~4_combout\) # (!\G1[53]~51_combout\)))) ) ) ) # ( \G3~93_combout\ & ( !\G1[51]~49_combout\ & ( (!\G1[55]~53_combout\ & (!\P2[55]~47_combout\ & ((!\G2~4_combout\) # (!\G1[53]~51_combout\)))) ) ) ) # ( !\G3~93_combout\ & ( !\G1[51]~49_combout\ & ( 
-- (!\G1[55]~53_combout\ & ((!\G2~4_combout\) # (!\G1[53]~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101000001000000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[55]~53_combout\,
	datab => \ALT_INV_G2~4_combout\,
	datac => \ALT_INV_P2[55]~47_combout\,
	datad => \ALT_INV_G1[53]~51_combout\,
	datae => \ALT_INV_G3~93_combout\,
	dataf => \ALT_INV_G1[51]~49_combout\,
	combout => G3(55));

-- Location: MLABCELL_X39_Y45_N22
\C[56]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \C[56]~82_combout\ = ( \P2[43]~35_combout\ & ( G3(39) & ( (G3(55) & ((!\C[56]~80_combout\) # (G3(47)))) ) ) ) # ( !\P2[43]~35_combout\ & ( G3(39) & ( (G3(55) & ((!\C[56]~80_combout\) # (G3(47)))) ) ) ) # ( \P2[43]~35_combout\ & ( !G3(39) & ( (G3(55) & 
-- ((!\C[56]~80_combout\) # ((G3(47) & !\P2[47]~39_combout\)))) ) ) ) # ( !\P2[43]~35_combout\ & ( !G3(39) & ( (G3(55) & ((!\C[56]~80_combout\) # (G3(47)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(47),
	datab => \ALT_INV_P2[47]~39_combout\,
	datac => \ALT_INV_C[56]~80_combout\,
	datad => ALT_INV_G3(55),
	datae => \ALT_INV_P2[43]~35_combout\,
	dataf => ALT_INV_G3(39),
	combout => \C[56]~82_combout\);

-- Location: LABCELL_X40_Y45_N18
\C[56]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \C[56]~83_combout\ = ( \P2[55]~47_combout\ & ( (\C[56]~82_combout\ & (((!\C[52]~66_combout\) # (!\P2[35]~27_combout\)) # (G3(31)))) ) ) # ( !\P2[55]~47_combout\ & ( \C[56]~82_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(31),
	datab => \ALT_INV_C[56]~82_combout\,
	datac => \ALT_INV_C[52]~66_combout\,
	datad => \ALT_INV_P2[35]~27_combout\,
	dataf => \ALT_INV_P2[55]~47_combout\,
	combout => \C[56]~83_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X44_Y44_N2
\S~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ( \C[56]~83_combout\ & ( \A[56]~input_o\ & ( !\B[56]~input_o\ $ (((!C(24) & \C[56]~81_combout\))) ) ) ) # ( !\C[56]~83_combout\ & ( \A[56]~input_o\ & ( \B[56]~input_o\ ) ) ) # ( \C[56]~83_combout\ & ( !\A[56]~input_o\ & ( !\B[56]~input_o\ 
-- $ (((!\C[56]~81_combout\) # (C(24)))) ) ) ) # ( !\C[56]~83_combout\ & ( !\A[56]~input_o\ & ( !\B[56]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001110010011100100110011001100111100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(24),
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_C[56]~81_combout\,
	datae => \ALT_INV_C[56]~83_combout\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \S~56_combout\);

-- Location: MLABCELL_X44_Y47_N38
\P2[56]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[56]~48_combout\ = ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (\G2~3_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (\G2~3_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_G2~3_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \P2[56]~48_combout\);

-- Location: MLABCELL_X44_Y47_N22
\C[57]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \C[57]~84_combout\ = ( \P2[56]~48_combout\ & ( (\P2[48]~40_combout\ & (\P2[44]~36_combout\ & \P2[52]~44_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[48]~40_combout\,
	datac => \ALT_INV_P2[44]~36_combout\,
	datad => \ALT_INV_P2[52]~44_combout\,
	dataf => \ALT_INV_P2[56]~48_combout\,
	combout => \C[57]~84_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: MLABCELL_X44_Y44_N24
\P0[57]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(57) = ( \B[57]~input_o\ & ( !\A[57]~input_o\ ) ) # ( !\B[57]~input_o\ & ( \A[57]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => P0(57));

-- Location: MLABCELL_X44_Y47_N36
\G2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~5_combout\ = ( \A[55]~input_o\ & ( (!\B[55]~input_o\ & (\G1[54]~52_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) ) # ( !\A[55]~input_o\ & ( (\B[55]~input_o\ & (\G1[54]~52_combout\ & (!\B[56]~input_o\ $ (!\A[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_G1[54]~52_combout\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \G2~5_combout\);

-- Location: MLABCELL_X44_Y47_N0
\G1[56]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[56]~54_combout\ = ( \A[55]~input_o\ & ( (!\A[56]~input_o\ & (\B[56]~input_o\ & \B[55]~input_o\)) # (\A[56]~input_o\ & ((\B[55]~input_o\) # (\B[56]~input_o\))) ) ) # ( !\A[55]~input_o\ & ( (\A[56]~input_o\ & \B[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[55]~input_o\,
	combout => \G1[56]~54_combout\);

-- Location: MLABCELL_X44_Y47_N14
\C[57]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \C[57]~85_combout\ = ( !\G1[56]~54_combout\ & ( (!\G2~5_combout\ & ((!\P2[56]~48_combout\) # ((!\G2~1_combout\ & !\G1[52]~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G2~1_combout\,
	datab => \ALT_INV_G1[52]~50_combout\,
	datac => \ALT_INV_G2~5_combout\,
	datad => \ALT_INV_P2[56]~48_combout\,
	dataf => \ALT_INV_G1[56]~54_combout\,
	combout => \C[57]~85_combout\);

-- Location: MLABCELL_X44_Y47_N26
\C[57]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \C[57]~86_combout\ = ( G3(48) & ( \P2[52]~44_combout\ & ( (\C[57]~85_combout\ & ((!\P2[56]~48_combout\) # ((!\C[57]~69_combout\) # (!\G4~25_combout\)))) ) ) ) # ( !G3(48) & ( \P2[52]~44_combout\ & ( (!\P2[56]~48_combout\ & \C[57]~85_combout\) ) ) ) # ( 
-- G3(48) & ( !\P2[52]~44_combout\ & ( (\C[57]~85_combout\ & ((!\P2[56]~48_combout\) # ((!\C[57]~69_combout\) # (!\G4~25_combout\)))) ) ) ) # ( !G3(48) & ( !\P2[52]~44_combout\ & ( (\C[57]~85_combout\ & ((!\P2[56]~48_combout\) # ((!\C[57]~69_combout\) # 
-- (!\G4~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111000001010000010100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[56]~48_combout\,
	datab => \ALT_INV_C[57]~69_combout\,
	datac => \ALT_INV_C[57]~85_combout\,
	datad => \ALT_INV_G4~25_combout\,
	datae => ALT_INV_G3(48),
	dataf => \ALT_INV_P2[52]~44_combout\,
	combout => \C[57]~86_combout\);

-- Location: LABCELL_X43_Y48_N38
\S~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ( \P4[40]~16_combout\ & ( G3(40) & ( !P0(57) $ (((\C[57]~86_combout\ & ((!\C[57]~84_combout\) # (\C[25]~30_combout\))))) ) ) ) # ( !\P4[40]~16_combout\ & ( G3(40) & ( !P0(57) $ (\C[57]~86_combout\) ) ) ) # ( \P4[40]~16_combout\ & ( 
-- !G3(40) & ( !P0(57) $ (((!\C[57]~84_combout\ & \C[57]~86_combout\))) ) ) ) # ( !\P4[40]~16_combout\ & ( !G3(40) & ( !P0(57) $ (((!\C[57]~84_combout\ & \C[57]~86_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111100111100000011110011110000000011111111000000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[25]~30_combout\,
	datab => \ALT_INV_C[57]~84_combout\,
	datac => ALT_INV_P0(57),
	datad => \ALT_INV_C[57]~86_combout\,
	datae => \ALT_INV_P4[40]~16_combout\,
	dataf => ALT_INV_G3(40),
	combout => \S~57_combout\);

-- Location: MLABCELL_X44_Y44_N8
\P2[57]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[57]~49_combout\ = ( !\B[56]~input_o\ & ( \A[56]~input_o\ & ( (P0(57) & \G2~4_combout\) ) ) ) # ( \B[56]~input_o\ & ( !\A[56]~input_o\ & ( (P0(57) & \G2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(57),
	datac => \ALT_INV_G2~4_combout\,
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \P2[57]~49_combout\);

-- Location: MLABCELL_X44_Y44_N38
\G2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \G2~6_combout\ = ( \A[56]~input_o\ & ( (P0(57) & (!\B[56]~input_o\ & \G1[55]~53_combout\)) ) ) # ( !\A[56]~input_o\ & ( (P0(57) & (\B[56]~input_o\ & \G1[55]~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(57),
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_G1[55]~53_combout\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \G2~6_combout\);

-- Location: MLABCELL_X44_Y44_N14
\G1[57]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[57]~55_combout\ = ( \A[56]~input_o\ & ( (!\B[57]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)) # (\B[57]~input_o\ & ((\B[56]~input_o\) # (\A[57]~input_o\))) ) ) # ( !\A[56]~input_o\ & ( (\B[57]~input_o\ & \A[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \G1[57]~55_combout\);

-- Location: LABCELL_X43_Y44_N38
\C[58]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \C[58]~88_combout\ = ( !\G1[57]~55_combout\ & ( (!\G2~6_combout\ & ((!\P2[57]~49_combout\) # ((!\G2~2_combout\ & !\G1[53]~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G2~2_combout\,
	datab => \ALT_INV_G1[53]~51_combout\,
	datac => \ALT_INV_P2[57]~49_combout\,
	datad => \ALT_INV_G2~6_combout\,
	dataf => \ALT_INV_G1[57]~55_combout\,
	combout => \C[58]~88_combout\);

-- Location: LABCELL_X43_Y44_N20
\C[58]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \C[58]~89_combout\ = ( \G4~26_combout\ & ( \C[58]~73_combout\ & ( (\C[58]~88_combout\ & !\P2[57]~49_combout\) ) ) ) # ( !\G4~26_combout\ & ( \C[58]~73_combout\ & ( (\C[58]~88_combout\ & (((!\P2[53]~45_combout\) # (!\P2[57]~49_combout\)) # (G3(49)))) ) ) ) 
-- # ( \G4~26_combout\ & ( !\C[58]~73_combout\ & ( (\C[58]~88_combout\ & (((!\P2[53]~45_combout\) # (!\P2[57]~49_combout\)) # (G3(49)))) ) ) ) # ( !\G4~26_combout\ & ( !\C[58]~73_combout\ & ( (\C[58]~88_combout\ & (((!\P2[53]~45_combout\) # 
-- (!\P2[57]~49_combout\)) # (G3(49)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101000101010101010100010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[58]~88_combout\,
	datab => ALT_INV_G3(49),
	datac => \ALT_INV_P2[53]~45_combout\,
	datad => \ALT_INV_P2[57]~49_combout\,
	datae => \ALT_INV_G4~26_combout\,
	dataf => \ALT_INV_C[58]~73_combout\,
	combout => \C[58]~89_combout\);

-- Location: LABCELL_X43_Y44_N8
\C[58]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \C[58]~87_combout\ = ( \P2[57]~49_combout\ & ( (\P2[49]~41_combout\ & (\P2[45]~37_combout\ & \P2[53]~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[49]~41_combout\,
	datac => \ALT_INV_P2[45]~37_combout\,
	datad => \ALT_INV_P2[53]~45_combout\,
	dataf => \ALT_INV_P2[57]~49_combout\,
	combout => \C[58]~87_combout\);

-- Location: IOIBUF_X59_Y37_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X59_Y19_N32
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: MLABCELL_X44_Y44_N26
\P0[58]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(58) = !\B[58]~input_o\ $ (!\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	combout => P0(58));

-- Location: LABCELL_X43_Y45_N38
\S~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ( P0(58) & ( \P4[41]~17_combout\ & ( (\C[58]~89_combout\ & ((!\C[58]~87_combout\) # ((G3(41) & \C[26]~32_combout\)))) ) ) ) # ( !P0(58) & ( \P4[41]~17_combout\ & ( (!\C[58]~89_combout\) # ((\C[58]~87_combout\ & ((!G3(41)) # 
-- (!\C[26]~32_combout\)))) ) ) ) # ( P0(58) & ( !\P4[41]~17_combout\ & ( (\C[58]~89_combout\ & ((!\C[58]~87_combout\) # (G3(41)))) ) ) ) # ( !P0(58) & ( !\P4[41]~17_combout\ & ( (!\C[58]~89_combout\) # ((\C[58]~87_combout\ & !G3(41))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010111010010001010100010110111011101110100100010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[58]~89_combout\,
	datab => \ALT_INV_C[58]~87_combout\,
	datac => ALT_INV_G3(41),
	datad => \ALT_INV_C[26]~32_combout\,
	datae => ALT_INV_P0(58),
	dataf => \ALT_INV_P4[41]~17_combout\,
	combout => \S~58_combout\);

-- Location: MLABCELL_X44_Y44_N12
\P1[58]\ : arriaii_lcell_comb
-- Equation(s):
-- P1(58) = (!\B[57]~input_o\ & (\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\)))) # (\B[57]~input_o\ & (!\A[57]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	combout => P1(58));

-- Location: MLABCELL_X44_Y47_N2
\P2[58]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[58]~50_combout\ = ( \B[56]~input_o\ & ( (!\A[56]~input_o\ & (P1(58) & (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) ) # ( !\B[56]~input_o\ & ( (\A[56]~input_o\ & (P1(58) & (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => ALT_INV_P1(58),
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \P2[58]~50_combout\);

-- Location: LABCELL_X45_Y48_N8
\C[59]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \C[59]~90_combout\ = ( \C[55]~76_combout\ & ( (\P2[58]~50_combout\ & \P2[46]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[58]~50_combout\,
	datac => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_C[55]~76_combout\,
	combout => \C[59]~90_combout\);

-- Location: MLABCELL_X44_Y44_N4
\G1[58]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[58]~56_combout\ = ( \B[57]~input_o\ & ( (!\B[58]~input_o\ & (\A[58]~input_o\ & \A[57]~input_o\)) # (\B[58]~input_o\ & ((\A[57]~input_o\) # (\A[58]~input_o\))) ) ) # ( !\B[57]~input_o\ & ( (\B[58]~input_o\ & \A[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_B[57]~input_o\,
	combout => \G1[58]~56_combout\);

-- Location: MLABCELL_X44_Y47_N10
\C[59]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \C[59]~91_combout\ = ( \G1[56]~54_combout\ & ( (!\G1[58]~56_combout\ & !P1(58)) ) ) # ( !\G1[56]~54_combout\ & ( !\G1[58]~56_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G1[58]~56_combout\,
	datad => ALT_INV_P1(58),
	dataf => \ALT_INV_G1[56]~54_combout\,
	combout => \C[59]~91_combout\);

-- Location: MLABCELL_X44_Y47_N32
\C[59]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \C[59]~92_combout\ = ( \C[59]~91_combout\ & ( (!\P2[58]~50_combout\) # ((!\G1[54]~52_combout\ & ((!\G2~3_combout\) # (!\G1[52]~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111010101111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[58]~50_combout\,
	datab => \ALT_INV_G2~3_combout\,
	datac => \ALT_INV_G1[54]~52_combout\,
	datad => \ALT_INV_G1[52]~50_combout\,
	dataf => \ALT_INV_C[59]~91_combout\,
	combout => \C[59]~92_combout\);

-- Location: LABCELL_X45_Y48_N14
\C[59]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \C[59]~93_combout\ = ( G3(34) & ( \P2[54]~46_combout\ & ( (\C[59]~92_combout\ & ((!\P2[58]~50_combout\) # (G3(50)))) ) ) ) # ( !G3(34) & ( \P2[54]~46_combout\ & ( (\C[59]~92_combout\ & ((!\P2[58]~50_combout\) # ((!\C[51]~63_combout\ & G3(50))))) ) ) ) # ( 
-- G3(34) & ( !\P2[54]~46_combout\ & ( \C[59]~92_combout\ ) ) ) # ( !G3(34) & ( !\P2[54]~46_combout\ & ( \C[59]~92_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000100000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[51]~63_combout\,
	datab => ALT_INV_G3(50),
	datac => \ALT_INV_C[59]~92_combout\,
	datad => \ALT_INV_P2[58]~50_combout\,
	datae => ALT_INV_G3(34),
	dataf => \ALT_INV_P2[54]~46_combout\,
	combout => \C[59]~93_combout\);

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

-- Location: IOIBUF_X59_Y21_N32
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: MLABCELL_X44_Y44_N22
\P0[59]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(59) = !\B[59]~input_o\ $ (!\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	combout => P0(59));

-- Location: LABCELL_X45_Y48_N36
\S~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = ( P0(59) & ( G3(42) & ( (\C[59]~93_combout\ & (((!\P4[42]~18_combout\) # (!\C[59]~90_combout\)) # (\C[27]~33_combout\))) ) ) ) # ( !P0(59) & ( G3(42) & ( (!\C[59]~93_combout\) # ((!\C[27]~33_combout\ & (\P4[42]~18_combout\ & 
-- \C[59]~90_combout\))) ) ) ) # ( P0(59) & ( !G3(42) & ( (!\C[59]~90_combout\ & \C[59]~93_combout\) ) ) ) # ( !P0(59) & ( !G3(42) & ( (!\C[59]~93_combout\) # (\C[59]~90_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111000000001111000011111111000000100000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[27]~33_combout\,
	datab => \ALT_INV_P4[42]~18_combout\,
	datac => \ALT_INV_C[59]~90_combout\,
	datad => \ALT_INV_C[59]~93_combout\,
	datae => ALT_INV_P0(59),
	dataf => ALT_INV_G3(42),
	combout => \S~59_combout\);

-- Location: MLABCELL_X44_Y44_N6
\P1[59]\ : arriaii_lcell_comb
-- Equation(s):
-- P1(59) = ( \B[59]~input_o\ & ( (!\A[59]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))) ) ) # ( !\B[59]~input_o\ & ( (\A[59]~input_o\ & (!\B[58]~input_o\ $ (!\A[58]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_B[59]~input_o\,
	combout => P1(59));

-- Location: MLABCELL_X44_Y44_N36
\P2[59]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \P2[59]~51_combout\ = ( \A[56]~input_o\ & ( (P0(57) & (!\B[56]~input_o\ & P1(59))) ) ) # ( !\A[56]~input_o\ & ( (P0(57) & (\B[56]~input_o\ & P1(59))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P0(57),
	datab => \ALT_INV_B[56]~input_o\,
	datac => ALT_INV_P1(59),
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \P2[59]~51_combout\);

-- Location: LABCELL_X40_Y46_N18
\C[60]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \C[60]~94_combout\ = ( \P2[47]~39_combout\ & ( (\P2[59]~51_combout\ & \C[56]~80_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[59]~51_combout\,
	datad => \ALT_INV_C[56]~80_combout\,
	dataf => \ALT_INV_P2[47]~39_combout\,
	combout => \C[60]~94_combout\);

-- Location: IOIBUF_X59_Y28_N63
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

-- Location: MLABCELL_X44_Y44_N30
\P0[60]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(60) = !\B[60]~input_o\ $ (!\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	combout => P0(60));

-- Location: MLABCELL_X44_Y44_N20
\G1[59]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[59]~57_combout\ = (!\B[59]~input_o\ & (\A[59]~input_o\ & (\B[58]~input_o\ & \A[58]~input_o\))) # (\B[59]~input_o\ & (((\B[58]~input_o\ & \A[58]~input_o\)) # (\A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[58]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	combout => \G1[59]~57_combout\);

-- Location: LABCELL_X43_Y44_N4
\C[60]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \C[60]~95_combout\ = ( P1(59) & ( (!\G1[57]~55_combout\ & !\G1[59]~57_combout\) ) ) # ( !P1(59) & ( !\G1[59]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_G1[57]~55_combout\,
	datad => \ALT_INV_G1[59]~57_combout\,
	dataf => ALT_INV_P1(59),
	combout => \C[60]~95_combout\);

-- Location: MLABCELL_X42_Y44_N18
\C[60]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \C[60]~96_combout\ = ( \C[60]~95_combout\ & ( (!\P2[59]~51_combout\) # ((!\G1[55]~53_combout\ & ((!\G1[53]~51_combout\) # (!\G2~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111011001111110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[53]~51_combout\,
	datab => \ALT_INV_P2[59]~51_combout\,
	datac => \ALT_INV_G1[55]~53_combout\,
	datad => \ALT_INV_G2~4_combout\,
	dataf => \ALT_INV_C[60]~95_combout\,
	combout => \C[60]~96_combout\);

-- Location: LABCELL_X40_Y46_N34
\C[60]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \C[60]~97_combout\ = ( \P2[59]~51_combout\ & ( \C[52]~66_combout\ & ( (\C[60]~96_combout\ & ((!\P2[55]~47_combout\) # ((G3(51) & G3(35))))) ) ) ) # ( !\P2[59]~51_combout\ & ( \C[52]~66_combout\ & ( \C[60]~96_combout\ ) ) ) # ( \P2[59]~51_combout\ & ( 
-- !\C[52]~66_combout\ & ( (\C[60]~96_combout\ & ((!\P2[55]~47_combout\) # (G3(51)))) ) ) ) # ( !\P2[59]~51_combout\ & ( !\C[52]~66_combout\ & ( \C[60]~96_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111010100000000111111110000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(51),
	datab => ALT_INV_G3(35),
	datac => \ALT_INV_P2[55]~47_combout\,
	datad => \ALT_INV_C[60]~96_combout\,
	datae => \ALT_INV_P2[59]~51_combout\,
	dataf => \ALT_INV_C[52]~66_combout\,
	combout => \C[60]~97_combout\);

-- Location: LABCELL_X40_Y46_N36
\S~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = ( \C[28]~34_combout\ & ( \P4[43]~19_combout\ & ( !P0(60) $ (((\C[60]~97_combout\ & ((!\C[60]~94_combout\) # (G3(43)))))) ) ) ) # ( !\C[28]~34_combout\ & ( \P4[43]~19_combout\ & ( !P0(60) $ (((!\C[60]~94_combout\ & \C[60]~97_combout\))) ) 
-- ) ) # ( \C[28]~34_combout\ & ( !\P4[43]~19_combout\ & ( !P0(60) $ (((\C[60]~97_combout\ & ((!\C[60]~94_combout\) # (G3(43)))))) ) ) ) # ( !\C[28]~34_combout\ & ( !\P4[43]~19_combout\ & ( !P0(60) $ (((\C[60]~97_combout\ & ((!\C[60]~94_combout\) # 
-- (G3(43)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001001011111100000100101111110000010110101111000001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[60]~94_combout\,
	datab => ALT_INV_G3(43),
	datac => ALT_INV_P0(60),
	datad => \ALT_INV_C[60]~97_combout\,
	datae => \ALT_INV_C[28]~34_combout\,
	dataf => \ALT_INV_P4[43]~19_combout\,
	combout => \S~60_combout\);

-- Location: LABCELL_X45_Y48_N10
\P1[60]\ : arriaii_lcell_comb
-- Equation(s):
-- P1(60) = (P0(60) & P0(59))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P0(60),
	datad => ALT_INV_P0(59),
	combout => P1(60));

-- Location: MLABCELL_X44_Y47_N30
\C[61]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \C[61]~98_combout\ = ( P1(60) & ( P1(58) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P1(58),
	dataf => ALT_INV_P1(60),
	combout => \C[61]~98_combout\);

-- Location: MLABCELL_X44_Y44_N32
\G1[60]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[60]~58_combout\ = ( \B[60]~input_o\ & ( ((\A[59]~input_o\ & \B[59]~input_o\)) # (\A[60]~input_o\) ) ) # ( !\B[60]~input_o\ & ( (\A[59]~input_o\ & (\B[59]~input_o\ & \A[60]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \G1[60]~58_combout\);

-- Location: MLABCELL_X44_Y47_N8
\C[61]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \C[61]~100_combout\ = ( P1(60) & ( (!\G1[58]~56_combout\ & (!\G1[60]~58_combout\ & ((!\G1[56]~54_combout\) # (!P1(58))))) ) ) # ( !P1(60) & ( !\G1[60]~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G1[56]~54_combout\,
	datab => \ALT_INV_G1[58]~56_combout\,
	datac => \ALT_INV_G1[60]~58_combout\,
	datad => ALT_INV_P1(58),
	dataf => ALT_INV_P1(60),
	combout => \C[61]~100_combout\);

-- Location: MLABCELL_X44_Y47_N4
\C[61]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \C[61]~101_combout\ = ( \P2[56]~48_combout\ & ( (\C[61]~100_combout\ & ((!\C[61]~98_combout\) # ((G3(52) & !\G2~5_combout\)))) ) ) # ( !\P2[56]~48_combout\ & ( (\C[61]~100_combout\ & ((!\C[61]~98_combout\) # (!\G2~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001101000011000000110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(52),
	datab => \ALT_INV_C[61]~98_combout\,
	datac => \ALT_INV_C[61]~100_combout\,
	datad => \ALT_INV_G2~5_combout\,
	dataf => \ALT_INV_P2[56]~48_combout\,
	combout => \C[61]~101_combout\);

-- Location: MLABCELL_X44_Y47_N16
\C[61]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \C[61]~102_combout\ = ( \C[57]~69_combout\ & ( (\C[61]~101_combout\ & ((!\P2[56]~48_combout\) # ((!\C[61]~98_combout\) # (G3(36))))) ) ) # ( !\C[57]~69_combout\ & ( \C[61]~101_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[56]~48_combout\,
	datab => \ALT_INV_C[61]~98_combout\,
	datac => ALT_INV_G3(36),
	datad => \ALT_INV_C[61]~101_combout\,
	dataf => \ALT_INV_C[57]~69_combout\,
	combout => \C[61]~102_combout\);

-- Location: IOIBUF_X59_Y22_N63
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: MLABCELL_X44_Y44_N34
\P0[61]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(61) = !\A[61]~input_o\ $ (!\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	combout => P0(61));

-- Location: MLABCELL_X44_Y47_N18
\C[61]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \C[61]~99_combout\ = ( \P2[56]~48_combout\ & ( (\C[61]~98_combout\ & (\P2[48]~40_combout\ & \P2[52]~44_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C[61]~98_combout\,
	datac => \ALT_INV_P2[48]~40_combout\,
	datad => \ALT_INV_P2[52]~44_combout\,
	dataf => \ALT_INV_P2[56]~48_combout\,
	combout => \C[61]~99_combout\);

-- Location: MLABCELL_X44_Y48_N36
\S~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = ( \C[29]~35_combout\ & ( \C[61]~99_combout\ & ( !P0(61) $ (((\C[61]~102_combout\ & G3(44)))) ) ) ) # ( !\C[29]~35_combout\ & ( \C[61]~99_combout\ & ( !P0(61) $ (((\C[61]~102_combout\ & (G3(44) & !\P4[44]~20_combout\)))) ) ) ) # ( 
-- \C[29]~35_combout\ & ( !\C[61]~99_combout\ & ( !\C[61]~102_combout\ $ (P0(61)) ) ) ) # ( !\C[29]~35_combout\ & ( !\C[61]~99_combout\ & ( !\C[61]~102_combout\ $ (P0(61)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111100001110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[61]~102_combout\,
	datab => ALT_INV_G3(44),
	datac => ALT_INV_P0(61),
	datad => \ALT_INV_P4[44]~20_combout\,
	datae => \ALT_INV_C[29]~35_combout\,
	dataf => \ALT_INV_C[61]~99_combout\,
	combout => \S~61_combout\);

-- Location: MLABCELL_X44_Y44_N16
\P1[61]\ : arriaii_lcell_comb
-- Equation(s):
-- P1(61) = ( P0(60) & ( P0(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P0(61),
	dataf => ALT_INV_P0(60),
	combout => P1(61));

-- Location: LABCELL_X43_Y44_N28
\C[62]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \C[62]~103_combout\ = (P1(61) & P1(59))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P1(61),
	datab => ALT_INV_P1(59),
	combout => \C[62]~103_combout\);

-- Location: MLABCELL_X44_Y44_N28
\G1[61]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[61]~59_combout\ = (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[60]~input_o\ & \A[61]~input_o\))) # (\B[61]~input_o\ & (((\B[60]~input_o\ & \A[60]~input_o\)) # (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	combout => \G1[61]~59_combout\);

-- Location: LABCELL_X43_Y44_N30
\C[62]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \C[62]~105_combout\ = ( \G1[57]~55_combout\ & ( (!\G1[61]~59_combout\ & ((!P1(61)) # ((!P1(59) & !\G1[59]~57_combout\)))) ) ) # ( !\G1[57]~55_combout\ & ( (!\G1[61]~59_combout\ & ((!P1(61)) # (!\G1[59]~57_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_P1(61),
	datab => ALT_INV_P1(59),
	datac => \ALT_INV_G1[61]~59_combout\,
	datad => \ALT_INV_G1[59]~57_combout\,
	dataf => \ALT_INV_G1[57]~55_combout\,
	combout => \C[62]~105_combout\);

-- Location: LABCELL_X43_Y44_N6
\C[62]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \C[62]~106_combout\ = ( G3(53) & ( (\C[62]~105_combout\ & ((!\C[62]~103_combout\) # (!\G2~6_combout\))) ) ) # ( !G3(53) & ( (\C[62]~105_combout\ & ((!\C[62]~103_combout\) # ((!\P2[57]~49_combout\ & !\G2~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010001100100010001000110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[62]~103_combout\,
	datab => \ALT_INV_C[62]~105_combout\,
	datac => \ALT_INV_P2[57]~49_combout\,
	datad => \ALT_INV_G2~6_combout\,
	dataf => ALT_INV_G3(53),
	combout => \C[62]~106_combout\);

-- Location: LABCELL_X43_Y44_N12
\C[62]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \C[62]~107_combout\ = ( \C[62]~106_combout\ & ( (!\C[62]~103_combout\) # ((!\P2[57]~49_combout\) # ((!\C[58]~73_combout\) # (G3(37)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[62]~103_combout\,
	datab => \ALT_INV_P2[57]~49_combout\,
	datac => \ALT_INV_C[58]~73_combout\,
	datad => ALT_INV_G3(37),
	dataf => \ALT_INV_C[62]~106_combout\,
	combout => \C[62]~107_combout\);

-- Location: IOIBUF_X48_Y56_N1
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X45_Y49_N18
\P0[62]\ : arriaii_lcell_comb
-- Equation(s):
-- P0(62) = !\A[62]~input_o\ $ (!\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	combout => P0(62));

-- Location: LABCELL_X43_Y44_N14
\C[62]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \C[62]~104_combout\ = ( \P2[49]~41_combout\ & ( (\C[62]~103_combout\ & (\P2[57]~49_combout\ & \P2[53]~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[62]~103_combout\,
	datab => \ALT_INV_P2[57]~49_combout\,
	datad => \ALT_INV_P2[53]~45_combout\,
	dataf => \ALT_INV_P2[49]~41_combout\,
	combout => \C[62]~104_combout\);

-- Location: LABCELL_X43_Y44_N18
\S~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ( C(30) & ( \C[62]~104_combout\ & ( !P0(62) $ (((\C[62]~107_combout\ & G3(45)))) ) ) ) # ( !C(30) & ( \C[62]~104_combout\ & ( !P0(62) $ (((\C[62]~107_combout\ & (G3(45) & !\P4[45]~21_combout\)))) ) ) ) # ( C(30) & ( !\C[62]~104_combout\ & 
-- ( !\C[62]~107_combout\ $ (P0(62)) ) ) ) # ( !C(30) & ( !\C[62]~104_combout\ & ( !\C[62]~107_combout\ $ (P0(62)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111100001110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[62]~107_combout\,
	datab => ALT_INV_G3(45),
	datac => ALT_INV_P0(62),
	datad => \ALT_INV_P4[45]~21_combout\,
	datae => ALT_INV_C(30),
	dataf => \ALT_INV_C[62]~104_combout\,
	combout => \S~62_combout\);

-- Location: MLABCELL_X44_Y47_N34
\P4[62]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[62]~25_combout\ = ( P1(60) & ( \P2[58]~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[58]~50_combout\,
	dataf => ALT_INV_P1(60),
	combout => \P4[62]~25_combout\);

-- Location: MLABCELL_X44_Y44_N18
\P4[62]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[62]~24_combout\ = ( P0(62) & ( P0(61) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_P0(61),
	dataf => ALT_INV_P0(62),
	combout => \P4[62]~24_combout\);

-- Location: MLABCELL_X44_Y49_N38
\C[63]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \C[63]~109_combout\ = ( \C[61]~100_combout\ & ( (\P4[62]~25_combout\ & (\P4[62]~24_combout\ & !G3(54))) ) ) # ( !\C[61]~100_combout\ & ( \P4[62]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[62]~25_combout\,
	datab => \ALT_INV_P4[62]~24_combout\,
	datad => ALT_INV_G3(54),
	dataf => \ALT_INV_C[61]~100_combout\,
	combout => \C[63]~109_combout\);

-- Location: MLABCELL_X44_Y49_N36
\P4[62]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[62]~26_combout\ = (\P4[62]~25_combout\ & (\P4[62]~24_combout\ & \C[55]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[62]~25_combout\,
	datab => \ALT_INV_P4[62]~24_combout\,
	datad => \ALT_INV_C[55]~76_combout\,
	combout => \P4[62]~26_combout\);

-- Location: LABCELL_X45_Y49_N16
\G1[62]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[62]~60_combout\ = ( \A[61]~input_o\ & ( (!\A[62]~input_o\ & (\B[62]~input_o\ & \B[61]~input_o\)) # (\A[62]~input_o\ & ((\B[61]~input_o\) # (\B[62]~input_o\))) ) ) # ( !\A[61]~input_o\ & ( (\A[62]~input_o\ & \B[62]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[62]~input_o\,
	datab => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \G1[62]~60_combout\);

-- Location: LABCELL_X45_Y49_N4
\C[63]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \C[63]~110_combout\ = ( !\G1[62]~60_combout\ & ( (!\C[63]~109_combout\ & ((!\P4[62]~26_combout\) # ((!\G5~3_combout\ & G3(46))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001000101010100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[63]~109_combout\,
	datab => \ALT_INV_G5~3_combout\,
	datac => ALT_INV_G3(46),
	datad => \ALT_INV_P4[62]~26_combout\,
	dataf => \ALT_INV_G1[62]~60_combout\,
	combout => \C[63]~110_combout\);

-- Location: MLABCELL_X44_Y49_N14
\Gf~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf~2_combout\ = ( \P2[46]~38_combout\ & ( \P2[42]~34_combout\ & ( (\P4[38]~12_combout\ & (\P4[62]~24_combout\ & (\C[55]~76_combout\ & \P4[62]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[38]~12_combout\,
	datab => \ALT_INV_P4[62]~24_combout\,
	datac => \ALT_INV_C[55]~76_combout\,
	datad => \ALT_INV_P4[62]~25_combout\,
	datae => \ALT_INV_P2[46]~38_combout\,
	dataf => \ALT_INV_P2[42]~34_combout\,
	combout => \Gf~2_combout\);

-- Location: LABCELL_X45_Y49_N6
\C~108\ : arriaii_lcell_comb
-- Equation(s):
-- \C~108_combout\ = ( \C~15_combout\ & ( (\Gf~2_combout\ & \P4[30]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Gf~2_combout\,
	datad => \ALT_INV_P4[30]~3_combout\,
	dataf => \ALT_INV_C~15_combout\,
	combout => \C~108_combout\);

-- Location: IOIBUF_X46_Y56_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X45_Y49_N0
\Gf~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf~3_combout\ = ( G3(30) & ( \Gf~2_combout\ & ( ((\P4[30]~3_combout\ & ((!G3(14)) # (\G5~1_combout\)))) # (\G4~17_combout\) ) ) ) # ( !G3(30) & ( \Gf~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(14),
	datab => \ALT_INV_G4~17_combout\,
	datac => \ALT_INV_P4[30]~3_combout\,
	datad => \ALT_INV_G5~1_combout\,
	datae => ALT_INV_G3(30),
	dataf => \ALT_INV_Gf~2_combout\,
	combout => \Gf~3_combout\);

-- Location: IOIBUF_X44_Y56_N63
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X45_Y49_N8
\S~63\ : arriaii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = ( \A[63]~input_o\ & ( !\B[63]~input_o\ $ (((!\C[63]~110_combout\) # ((\Gf~3_combout\) # (\C~108_combout\)))) ) ) # ( !\A[63]~input_o\ & ( !\B[63]~input_o\ $ (((\C[63]~110_combout\ & (!\C~108_combout\ & !\Gf~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010011110000101101001111000001001011000011110100101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[63]~110_combout\,
	datab => \ALT_INV_C~108_combout\,
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_Gf~3_combout\,
	dataf => \ALT_INV_A[63]~input_o\,
	combout => \S~63_combout\);

-- Location: LABCELL_X45_Y49_N14
\P4[63]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[63]~28_combout\ = ( P0(62) & ( !\B[63]~input_o\ $ (!\A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	dataf => ALT_INV_P0(62),
	combout => \P4[63]~28_combout\);

-- Location: MLABCELL_X42_Y44_N16
\P4[63]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[63]~27_combout\ = (\P2[59]~51_combout\ & P1(61))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P2[59]~51_combout\,
	datac => ALT_INV_P1(61),
	combout => \P4[63]~27_combout\);

-- Location: MLABCELL_X39_Y45_N4
\Gf~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf~4_combout\ = ( \C[56]~80_combout\ & ( \P4[63]~27_combout\ & ( (\P4[39]~14_combout\ & (\P2[47]~39_combout\ & (\P2[43]~35_combout\ & \P4[63]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P4[39]~14_combout\,
	datab => \ALT_INV_P2[47]~39_combout\,
	datac => \ALT_INV_P2[43]~35_combout\,
	datad => \ALT_INV_P4[63]~28_combout\,
	datae => \ALT_INV_C[56]~80_combout\,
	dataf => \ALT_INV_P4[63]~27_combout\,
	combout => \Gf~4_combout\);

-- Location: MLABCELL_X39_Y45_N8
\Gf~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Gf~5_combout\ = ( G3(31) & ( \P4[31]~4_combout\ & ( (\Gf~4_combout\ & ((!G3(15)) # ((\G4~18_combout\) # (\G5~2_combout\)))) ) ) ) # ( !G3(31) & ( \P4[31]~4_combout\ & ( \Gf~4_combout\ ) ) ) # ( G3(31) & ( !\P4[31]~4_combout\ & ( (\Gf~4_combout\ & 
-- \G4~18_combout\) ) ) ) # ( !G3(31) & ( !\P4[31]~4_combout\ & ( \Gf~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000111100001111000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_G3(15),
	datab => \ALT_INV_G5~2_combout\,
	datac => \ALT_INV_Gf~4_combout\,
	datad => \ALT_INV_G4~18_combout\,
	datae => ALT_INV_G3(31),
	dataf => \ALT_INV_P4[31]~4_combout\,
	combout => \Gf~5_combout\);

-- Location: LABCELL_X45_Y49_N12
\G1[63]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \G1[63]~61_combout\ = ( \B[62]~input_o\ & ( (!\B[63]~input_o\ & (\A[63]~input_o\ & \A[62]~input_o\)) # (\B[63]~input_o\ & ((\A[62]~input_o\) # (\A[63]~input_o\))) ) ) # ( !\B[62]~input_o\ & ( (\B[63]~input_o\ & \A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \G1[63]~61_combout\);

-- Location: MLABCELL_X39_Y45_N36
\C~112\ : arriaii_lcell_comb
-- Equation(s):
-- \C~112_combout\ = ( \P4[63]~27_combout\ & ( (\P4[63]~28_combout\ & ((!G3(55)) # (!\C[62]~105_combout\))) ) ) # ( !\P4[63]~27_combout\ & ( (\P4[63]~28_combout\ & !\C[62]~105_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P4[63]~28_combout\,
	datac => ALT_INV_G3(55),
	datad => \ALT_INV_C[62]~105_combout\,
	dataf => \ALT_INV_P4[63]~27_combout\,
	combout => \C~112_combout\);

-- Location: MLABCELL_X39_Y45_N38
\P4[63]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \P4[63]~29_combout\ = ( \P4[63]~27_combout\ & ( (\P4[63]~28_combout\ & \C[56]~80_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_P4[63]~28_combout\,
	datac => \ALT_INV_C[56]~80_combout\,
	dataf => \ALT_INV_P4[63]~27_combout\,
	combout => \P4[63]~29_combout\);

-- Location: MLABCELL_X39_Y45_N12
\C~113\ : arriaii_lcell_comb
-- Equation(s):
-- \C~113_combout\ = ( \P4[63]~29_combout\ & ( (!\G5~4_combout\ & (!\G1[63]~61_combout\ & (G3(47) & !\C~112_combout\))) ) ) # ( !\P4[63]~29_combout\ & ( (!\G1[63]~61_combout\ & !\C~112_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G5~4_combout\,
	datab => \ALT_INV_G1[63]~61_combout\,
	datac => ALT_INV_G3(47),
	datad => \ALT_INV_C~112_combout\,
	dataf => \ALT_INV_P4[63]~29_combout\,
	combout => \C~113_combout\);

-- Location: MLABCELL_X39_Y45_N14
\C~111\ : arriaii_lcell_comb
-- Equation(s):
-- \C~111_combout\ = ( \P4[31]~4_combout\ & ( (\C~16_combout\ & \Gf~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~16_combout\,
	datad => \ALT_INV_Gf~4_combout\,
	dataf => \ALT_INV_P4[31]~4_combout\,
	combout => \C~111_combout\);

-- Location: LABCELL_X45_Y49_N10
\C~114\ : arriaii_lcell_comb
-- Equation(s):
-- \C~114_combout\ = ( \C~111_combout\ ) # ( !\C~111_combout\ & ( (!\C~113_combout\) # (\Gf~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Gf~5_combout\,
	datad => \ALT_INV_C~113_combout\,
	dataf => \ALT_INV_C~111_combout\,
	combout => \C~114_combout\);

-- Location: LABCELL_X45_Y49_N36
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \C~113_combout\ & ( \C~111_combout\ & ( (!\Gf~3_combout\ & (\C[63]~110_combout\ & !\C~108_combout\)) ) ) ) # ( !\C~113_combout\ & ( \C~111_combout\ & ( (!\Gf~3_combout\ & (\C[63]~110_combout\ & !\C~108_combout\)) ) ) ) # ( 
-- \C~113_combout\ & ( !\C~111_combout\ & ( !\Gf~5_combout\ $ (((!\Gf~3_combout\ & (\C[63]~110_combout\ & !\C~108_combout\)))) ) ) ) # ( !\C~113_combout\ & ( !\C~111_combout\ & ( (!\Gf~3_combout\ & (\C[63]~110_combout\ & !\C~108_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000110001101100110000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Gf~3_combout\,
	datab => \ALT_INV_Gf~5_combout\,
	datac => \ALT_INV_C[63]~110_combout\,
	datad => \ALT_INV_C~108_combout\,
	datae => \ALT_INV_C~113_combout\,
	dataf => \ALT_INV_C~111_combout\,
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


