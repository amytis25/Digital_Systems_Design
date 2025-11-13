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

-- DATE "11/12/2025 16:43:51"

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
-- S[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|S[1]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|S[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|S[1]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~1_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|S[1]~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|S[1]~1_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|S[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|S[1]~1_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|S[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|S[1]~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|S[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~1_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|S[1]~1_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|S[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \recur:UQ2|P[3]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|S[1]~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|S[2]~0_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|S[1]~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|S[2]~0_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|S[1]~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|Pout~1_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~1_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|S[1]~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|S[1]~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|S[1]~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|S[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|S[1]~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Cout~2_combout\ : std_logic;
SIGNAL \Cout~3_combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \Cout~4_combout\ : std_logic;
SIGNAL \Cout~5_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ0|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ1|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ3|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ0|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ3|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|ALT_INV_Gout~1_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|ALT_INV_P[3]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|ALT_INV_g_int\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \recur:UQ1|recur:UQ2|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:combine_q16:Q1_GRP|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|ALT_INV_Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~3_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|ALT_INV_P\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \ALT_INV_Cout~4_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\ : std_logic;

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
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\;
\recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~2_combout\ <= NOT \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\;
\recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\;
\recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1) <= NOT \recur:UQ0|recur:TOP_FANOUT|g_int\(1);
\recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\;
\recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\;
\recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\;
\recur:TOP_FANOUT|ALT_INV_C~0_combout\ <= NOT \recur:TOP_FANOUT|C~0_combout\;
\recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\;
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~2_combout\ <= NOT \recur:UQ0|recur:TOP_FANOUT|C~2_combout\;
\recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ <= NOT \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\;
\recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\;
\recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\;
\recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\;
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ <= NOT \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\;
\recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\;
\recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~combout\ <= NOT \recur:blk_q0:3:Q0_BLK|Pout~combout\;
\recur:blk_q0:3:Q0_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:blk_q0:3:Q0_BLK|g_int~0_combout\;
\recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\;
\recur:combine_q16:Q0_GRP|ALT_INV_Gout~0_combout\ <= NOT \recur:combine_q16:Q0_GRP|Gout~0_combout\;
\recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ <= NOT \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\;
\recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\;
\recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:combine_q16:Q1_GRP|ALT_INV_Pout~0_combout\ <= NOT \recur:combine_q16:Q1_GRP|Pout~0_combout\;
\recur:UQ1|recur:UQ0|ALT_INV_P\(2) <= NOT \recur:UQ1|recur:UQ0|P\(2);
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\ <= NOT \recur:UQ0|recur:TOP_FANOUT|C~0_combout\;
\recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\;
\recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\;
\recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\;
\recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\;
\recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:blk_q0:3:Q0_BLK|Pout~0_combout\;
\recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\ <= NOT \recur:combine_q16:Q0_GRP|Gout~1_combout\;
\recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\ <= NOT \recur:UQ0|recur:TOP_FANOUT|C~1_combout\;
\recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ <= NOT \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\;
\recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\;
\recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ <= NOT \recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~0_combout\ <= NOT \recur:UQ1|recur:TOP_FANOUT|C~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ <= NOT \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\;
\recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\;
\recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ <= NOT \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~1_combout\ <= NOT \recur:UQ1|recur:TOP_FANOUT|C~1_combout\;
\recur:combine_q16:Q1_GRP|ALT_INV_Gout~1_combout\ <= NOT \recur:combine_q16:Q1_GRP|Gout~1_combout\;
\recur:combine_q16:Q1_GRP|ALT_INV_Pout~1_combout\ <= NOT \recur:combine_q16:Q1_GRP|Pout~1_combout\;
\recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\;
\recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\;
\recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\;
\recur:UQ1|recur:UQ3|ALT_INV_P\(2) <= NOT \recur:UQ1|recur:UQ3|P\(2);
\recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~2_combout\ <= NOT \recur:UQ1|recur:TOP_FANOUT|C~2_combout\;
\recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\;
\recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\ <= NOT \recur:combine_q16:Q2_GRP|Pout~0_combout\;
\recur:UQ2|ALT_INV_P[3]~0_combout\ <= NOT \recur:UQ2|P[3]~0_combout\;
\recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ1|recur:UQ1|ALT_INV_P\(2) <= NOT \recur:UQ1|recur:UQ1|P\(2);
\recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:blk_q1:3:Q1_BLK|Pout~0_combout\;
\recur:UQ2|recur:UQ0|ALT_INV_P\(2) <= NOT \recur:UQ2|recur:UQ0|P\(2);
\recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\;
\recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~combout\ <= NOT \recur:blk_q1:3:Q1_BLK|Pout~combout\;
\recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\;
\recur:blk_q1:3:Q1_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:blk_q1:3:Q1_BLK|g_int~0_combout\;
\recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\ <= NOT \recur:combine_q16:Q1_GRP|Pout~combout\;
\recur:TOP_FANOUT|ALT_INV_g_int\(1) <= NOT \recur:TOP_FANOUT|g_int\(1);
\recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\;
\recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\;
\recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1) <= NOT \recur:UQ1|recur:TOP_FANOUT|g_int\(1);
\recur:UQ1|recur:UQ2|ALT_INV_P\(2) <= NOT \recur:UQ1|recur:UQ2|P\(2);
\recur:combine_q16:Q1_GRP|ALT_INV_Gout~0_combout\ <= NOT \recur:combine_q16:Q1_GRP|Gout~0_combout\;
\recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\;
\recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\;
\recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~0_combout\ <= NOT \recur:UQ2|recur:TOP_FANOUT|C~0_combout\;
\recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\;
\recur:TOP_FANOUT|ALT_INV_C~1_combout\ <= NOT \recur:TOP_FANOUT|C~1_combout\;
\recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\;
\recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\;
\recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\;
\recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\;
\recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\;
\recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\;
\recur:combine_q16:Q2_GRP|ALT_INV_Gout~0_combout\ <= NOT \recur:combine_q16:Q2_GRP|Gout~0_combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~1_combout\ <= NOT \recur:UQ2|recur:TOP_FANOUT|C~1_combout\;
\recur:UQ2|recur:UQ1|ALT_INV_P\(2) <= NOT \recur:UQ2|recur:UQ1|P\(2);
\recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~1_combout\ <= NOT \recur:blk_q2:3:Q2_BLK|Pout~1_combout\;
\recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~1_combout\ <= NOT \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\;
\recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0_combout\;
\recur:TOP_FANOUT|ALT_INV_C~2_combout\ <= NOT \recur:TOP_FANOUT|C~2_combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1) <= NOT \recur:UQ2|recur:TOP_FANOUT|g_int\(1);
\recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\;
\recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\;
\recur:combine_q16:Q2_GRP|ALT_INV_Pout~1_combout\ <= NOT \recur:combine_q16:Q2_GRP|Pout~1_combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\ <= NOT \recur:UQ2|recur:TOP_FANOUT|C~2_combout\;
\recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~combout\ <= NOT \recur:blk_q2:3:Q2_BLK|Pout~combout\;
\recur:combine_q16:Q2_GRP|ALT_INV_Pout~combout\ <= NOT \recur:combine_q16:Q2_GRP|Pout~combout\;
\recur:blk_q2:3:Q2_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:blk_q2:3:Q2_BLK|g_int~0_combout\;
\recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\;
\recur:TOP_FANOUT|ALT_INV_g_int\(2) <= NOT \recur:TOP_FANOUT|g_int\(2);
\recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\;
\recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|C~1_combout\;
\recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~0_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|C~0_combout\;
\recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\;
\recur:UQ2|recur:UQ2|ALT_INV_P\(2) <= NOT \recur:UQ2|recur:UQ2|P\(2);
\recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\;
\recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\;
\recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\;
\recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\ <= NOT \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\;
\recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:blk_q2:3:Q2_BLK|Pout~0_combout\;
\recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ <= NOT \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\;
\recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\;
\recur:combine_q16:Q2_GRP|ALT_INV_Gout~1_combout\ <= NOT \recur:combine_q16:Q2_GRP|Gout~1_combout\;
\recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\;
\recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\;
\recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~1_combout\ <= NOT \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\;
\recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\;
\recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\ <= NOT \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\;
\recur:UQ3|recur:UQ3|ALT_INV_P\(2) <= NOT \recur:UQ3|recur:UQ3|P\(2);
\ALT_INV_Cout~1_combout\ <= NOT \Cout~1_combout\;
\recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\ <= NOT \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\;
\recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~2_combout\ <= NOT \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\;
\ALT_INV_Cout~3_combout\ <= NOT \Cout~3_combout\;
\recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\;
\recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\ <= NOT \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\;
\ALT_INV_Cout~2_combout\ <= NOT \Cout~2_combout\;
\recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\;
\ALT_INV_Cout~0_combout\ <= NOT \Cout~0_combout\;
\recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\ <= NOT \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\;
\recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1) <= NOT \recur:UQ3|recur:TOP_FANOUT|g_int\(1);
\recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\;
\recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\ <= NOT \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\;
\recur:UQ3|recur:UQ2|ALT_INV_P\(2) <= NOT \recur:UQ3|recur:UQ2|P\(2);
\recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\ <= NOT \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\;
\recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\ <= NOT \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\;
\recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\ <= NOT \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~3_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|C~3_combout\;
\recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C\(3) <= NOT \recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3);
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|C~4_combout\;
\ALT_INV_Cout~4_combout\ <= NOT \Cout~4_combout\;
\recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\ <= NOT \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\;
\recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~2_combout\ <= NOT \recur:UQ3|recur:TOP_FANOUT|C~2_combout\;
\recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\ <= NOT \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\;
\recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\ <= NOT \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\;

-- Location: IOOBUF_X35_Y0_N2
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N67
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y36_N36
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(2),
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y37_N67
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y46_N2
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X40_Y56_N33
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X38_Y56_N98
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X59_Y23_N98
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X54_Y0_N67
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X59_Y7_N98
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X59_Y6_N67
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X59_Y10_N67
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X59_Y10_N36
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X59_Y12_N67
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X59_Y12_N2
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X50_Y0_N98
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X59_Y26_N33
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y19_N2
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y19_N36
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X59_Y15_N5
\S[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X56_Y0_N64
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X54_Y0_N98
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S[1]~0_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X59_Y28_N2
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~5_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X59_Y28_N67
\Ovfl~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X33_Y0_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: MLABCELL_X39_Y4_N2
\recur:UQ0|recur:UQ0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(0) = ( \B[0]~input_o\ & ( \Cin~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Cin~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\Cin~input_o\ 
-- & ( \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \recur:UQ0|recur:UQ0|S\(0));

-- Location: IOIBUF_X39_Y0_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X39_Y4_N26
\recur:UQ0|recur:UQ0|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(1) = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\)) # (\A[0]~input_o\ & ((\Cin~input_o\) # (\B[0]~input_o\))))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\A[0]~input_o\ & 
-- ((!\B[0]~input_o\) # (!\Cin~input_o\))) # (\A[0]~input_o\ & (!\B[0]~input_o\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011100011110011110001110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \recur:UQ0|recur:UQ0|S\(1));

-- Location: IOIBUF_X39_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X39_Y4_N30
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ = ( \Cin~input_o\ & ( (!\A[0]~input_o\ & (\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (\A[0]~input_o\ & (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\);

-- Location: MLABCELL_X39_Y4_N28
\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = ( \B[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: MLABCELL_X39_Y4_N32
\recur:UQ0|recur:UQ0|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(2) = ( \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( !\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( 
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) ) # ( 
-- !\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	dataf => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ0|S\(2));

-- Location: MLABCELL_X39_Y4_N38
\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = ( \B[2]~input_o\ & ( ((\A[1]~input_o\ & \B[1]~input_o\)) # (\A[2]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X39_Y0_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X39_Y4_N22
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ = ( \A[2]~input_o\ & ( (!\B[2]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\);

-- Location: MLABCELL_X39_Y4_N20
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ = ( \A[0]~input_o\ & ( (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & ((\B[0]~input_o\) # (\Cin~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & 
-- (\Cin~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\);

-- Location: MLABCELL_X39_Y4_N36
\recur:UQ0|recur:UQ0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(3) = ( \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) # ( !\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ & ( !\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ $ (!\A[3]~input_o\ $ 
-- (\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\,
	combout => \recur:UQ0|recur:UQ0|S\(3));

-- Location: IOIBUF_X41_Y0_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X39_Y4_N4
\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = ( \B[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000100011111111100000000000100010001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: MLABCELL_X39_Y4_N12
\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = ( \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\ & (((\B[3]~input_o\) # (\B[2]~input_o\)) # 
-- (\A[2]~input_o\))) ) ) # ( !\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\A[3]~input_o\ & (\A[2]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\))) # (\A[3]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000101010111111100000001010101110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	combout => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: MLABCELL_X39_Y4_N8
\recur:UQ0|recur:TOP_FANOUT|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~0_combout\ = ( \B[3]~input_o\ & ( \A[0]~input_o\ & ( (\Cin~input_o\ & (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & (!\A[3]~input_o\ & !\B[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \A[0]~input_o\ & ( (\Cin~input_o\ & 
-- (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & (\A[3]~input_o\ & !\B[0]~input_o\))) ) ) ) # ( \B[3]~input_o\ & ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & (!\A[3]~input_o\ & \B[0]~input_o\))) ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ & (\A[3]~input_o\ & \B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001000000000001000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \recur:UQ0|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~0_combout\);

-- Location: MLABCELL_X42_Y4_N20
\recur:UQ0|recur:UQ1|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(0) = ( \recur:UQ0|recur:TOP_FANOUT|C~0_combout\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) ) # ( !\recur:UQ0|recur:TOP_FANOUT|C~0_combout\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ0|recur:UQ1|S\(0));

-- Location: IOIBUF_X45_Y0_N94
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X42_Y4_N14
\recur:UQ0|recur:UQ1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S[1]~0_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\recur:UQ0|recur:TOP_FANOUT|C~0_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))) # (\B[4]~input_o\ & 
-- (((\recur:UQ0|recur:TOP_FANOUT|C~0_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)) # (\A[4]~input_o\))) ) ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\B[4]~input_o\ & ((!\A[4]~input_o\) # 
-- ((!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & !\recur:UQ0|recur:TOP_FANOUT|C~0_combout\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & (!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & !\recur:UQ0|recur:TOP_FANOUT|C~0_combout\))) ) ) ) # ( 
-- \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[4]~input_o\ & ((!\A[4]~input_o\) # ((!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & !\recur:UQ0|recur:TOP_FANOUT|C~0_combout\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & 
-- (!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & !\recur:UQ0|recur:TOP_FANOUT|C~0_combout\))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\recur:UQ0|recur:TOP_FANOUT|C~0_combout\) # 
-- (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))) # (\B[4]~input_o\ & (((\recur:UQ0|recur:TOP_FANOUT|C~0_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)) # (\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111111010001000100011101000100010000001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|S[1]~0_combout\);

-- Location: IOIBUF_X43_Y0_N32
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X42_Y4_N26
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\) ) ) # ( !\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & ( (\recur:UQ0|recur:TOP_FANOUT|C~0_combout\ & 
-- (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	dataf => \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X43_Y0_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X42_Y4_N24
\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = (!\A[5]~input_o\ & (\B[4]~input_o\ & (\A[4]~input_o\ & \B[5]~input_o\))) # (\A[5]~input_o\ & (((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: MLABCELL_X42_Y4_N10
\recur:UQ0|recur:UQ1|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(2) = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\)) ) ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ 
-- (((\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (((\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\) # 
-- (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011010010101101001101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|S\(2));

-- Location: MLABCELL_X42_Y4_N32
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\);

-- Location: MLABCELL_X42_Y4_N34
\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = ( \A[5]~input_o\ & ( (!\B[6]~input_o\ & (\A[6]~input_o\ & \B[5]~input_o\)) # (\B[6]~input_o\ & ((\B[5]~input_o\) # (\A[6]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\B[6]~input_o\ & \A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: MLABCELL_X42_Y4_N36
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ = ( !\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~0_combout\ & ( (!\B[4]~input_o\) # (!\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X42_Y4_N38
\recur:UQ0|recur:UQ1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(3) = ( \A[7]~input_o\ & ( !\B[7]~input_o\ $ ((((\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ & !\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\)) # (\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\))) ) ) # ( !\A[7]~input_o\ 
-- & ( !\B[7]~input_o\ $ (((!\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ((!\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\) # (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001110001100011100111000110010001100011100111000110001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~2_combout\,
	datab => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datac => \recur:UQ0|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \recur:UQ0|recur:UQ1|S\(3));

-- Location: MLABCELL_X42_Y4_N0
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: MLABCELL_X42_Y4_N6
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) ) # ( !\A[5]~input_o\ & ( (\B[5]~input_o\ & 
-- (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: MLABCELL_X42_Y4_N28
\recur:UQ0|recur:TOP_FANOUT|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~1_combout\ = ( \recur:UQ0|recur:TOP_FANOUT|C~0_combout\ & ( \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~1_combout\);

-- Location: IOIBUF_X59_Y39_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X42_Y4_N4
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = ( \A[5]~input_o\ & ( ((\B[4]~input_o\ & \A[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[5]~input_o\ & ( (\B[4]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: MLABCELL_X42_Y4_N2
\recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = ( \A[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: MLABCELL_X42_Y4_N30
\recur:UQ0|recur:TOP_FANOUT|g_int[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int\(1) = ( !\recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ & ( (!\recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & ((!\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\) # 
-- ((!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))) # (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & (!\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ((!\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\) # 
-- (!\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\,
	datab => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	datac => \recur:UQ0|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	datad => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	dataf => \recur:UQ0|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X59_Y48_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X58_Y36_N2
\recur:UQ0|recur:UQ2|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(0) = ( \B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\recur:UQ0|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\))) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\recur:UQ0|recur:TOP_FANOUT|C~1_combout\ & 
-- \recur:UQ0|recur:TOP_FANOUT|g_int\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011000111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \recur:UQ0|recur:UQ2|S\(0));

-- Location: IOIBUF_X59_Y36_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y36_N38
\recur:UQ0|recur:UQ2|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S[1]~0_combout\ = ( \A[9]~input_o\ & ( \B[8]~input_o\ & ( !\B[9]~input_o\ $ (((!\recur:UQ0|recur:TOP_FANOUT|g_int\(1)) # ((\recur:UQ0|recur:TOP_FANOUT|C~1_combout\) # (\A[8]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( \B[8]~input_o\ & 
-- ( !\B[9]~input_o\ $ (((\recur:UQ0|recur:TOP_FANOUT|g_int\(1) & (!\A[8]~input_o\ & !\recur:UQ0|recur:TOP_FANOUT|C~1_combout\)))) ) ) ) # ( \A[9]~input_o\ & ( !\B[8]~input_o\ & ( !\B[9]~input_o\ $ (((\A[8]~input_o\ & 
-- ((!\recur:UQ0|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\))))) ) ) ) # ( !\A[9]~input_o\ & ( !\B[8]~input_o\ & ( !\B[9]~input_o\ $ (((!\A[8]~input_o\) # ((\recur:UQ0|recur:TOP_FANOUT|g_int\(1) & 
-- !\recur:UQ0|recur:TOP_FANOUT|C~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011010101001101010010110011010101010100110010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datac => \ALT_INV_A[8]~input_o\,
	datad => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \recur:UQ0|recur:UQ2|S[1]~0_combout\);

-- Location: LABCELL_X58_Y36_N4
\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ = (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\))) # (\B[9]~input_o\ & (((\B[8]~input_o\ & \A[8]~input_o\)) # (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y36_N0
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & ((!\recur:UQ0|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\))) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & 
-- ((!\recur:UQ0|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X59_Y39_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y36_N30
\recur:UQ0|recur:UQ2|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(2) = ( \B[10]~input_o\ & ( \A[10]~input_o\ & ( ((\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\) ) ) ) # ( !\B[10]~input_o\ & ( 
-- \A[10]~input_o\ & ( (!\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ & ((!\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\) # (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) ) ) # ( \B[10]~input_o\ & ( !\A[10]~input_o\ & ( 
-- (!\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ & ((!\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\) # (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ & ( ((\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\ & 
-- (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101101111111100001001000011110000100100000000111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datad => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|S\(2));

-- Location: IOIBUF_X59_Y39_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X58_Y36_N14
\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = ( \A[10]~input_o\ & ( ((\B[9]~input_o\ & \A[9]~input_o\)) # (\B[10]~input_o\) ) ) # ( !\A[10]~input_o\ & ( (\B[9]~input_o\ & (\A[9]~input_o\ & \B[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y36_N12
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\ = ( \A[10]~input_o\ & ( (!\B[10]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\);

-- Location: LABCELL_X58_Y36_N6
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\ = (!\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\B[8]~input_o\) # (!\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datad => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\);

-- Location: LABCELL_X58_Y36_N16
\recur:UQ0|recur:UQ2|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(3) = ( \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\ & ( !\B[11]~input_o\ $ (!\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ $ (\A[11]~input_o\)) ) ) # ( !\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~1_combout\ & ( !\B[11]~input_o\ 
-- $ (!\A[11]~input_o\ $ (((\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\) # (\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110100101011010011010010101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~2_combout\,
	dataf => \recur:UQ0|recur:UQ2|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	combout => \recur:UQ0|recur:UQ2|S\(3));

-- Location: IOIBUF_X59_Y34_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X58_Y36_N18
\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = ( \A[10]~input_o\ & ( (!\B[10]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LABCELL_X58_Y36_N22
\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ = ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & 
-- (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y36_N8
\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = ( \A[10]~input_o\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & \B[10]~input_o\)) # (\A[11]~input_o\ & ((\B[10]~input_o\) # (\B[11]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\A[11]~input_o\ & 
-- \B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y36_N20
\recur:UQ0|recur:TOP_FANOUT|g_int[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\ = ( \A[8]~input_o\ & ( (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ((!\B[8]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)) # (\B[8]~input_o\ & ((\B[9]~input_o\) # (\A[9]~input_o\))))) ) ) # ( 
-- !\A[8]~input_o\ & ( (\A[9]~input_o\ & (\B[9]~input_o\ & \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000101110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: LABCELL_X58_Y36_N10
\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ = ( !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\ & ( (!\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ((!\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int\(1)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datac => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datad => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\);

-- Location: LABCELL_X58_Y36_N24
\recur:UQ0|recur:TOP_FANOUT|C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ = (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\ & \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\);

-- Location: LABCELL_X58_Y34_N22
\recur:UQ0|recur:UQ3|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(0) = ( \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) ) ) # ( !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( 
-- \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) ) ) # ( \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) ) ) # ( 
-- !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datae => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \recur:UQ0|recur:UQ3|S\(0));

-- Location: IOIBUF_X59_Y34_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X58_Y34_N28
\recur:UQ0|recur:UQ3|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S[1]~0_combout\ = ( \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( 
-- !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( 
-- !\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\A[12]~input_o\ & \B[12]~input_o\)))) ) ) ) # ( !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( !\B[13]~input_o\ $ 
-- (!\A[13]~input_o\ $ (((\B[12]~input_o\) # (\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \recur:UQ0|recur:UQ3|S[1]~0_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X58_Y34_N10
\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # (\A[12]~input_o\ & 
-- (!\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) ) # ( !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # 
-- (\A[12]~input_o\ & (!\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) ) # ( !\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & (!\A[13]~input_o\ $ 
-- (!\B[13]~input_o\)))) # (\A[12]~input_o\ & (!\B[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X59_Y49_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y34_N24
\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = ( \B[12]~input_o\ & ( (!\A[13]~input_o\ & (\B[13]~input_o\ & \A[12]~input_o\)) # (\A[13]~input_o\ & ((\A[12]~input_o\) # (\B[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[13]~input_o\ & 
-- \B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y34_N34
\recur:UQ0|recur:UQ3|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(2) = ( \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[14]~input_o\ $ (\A[14]~input_o\) ) ) # ( !\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\B[14]~input_o\ $ 
-- (!\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ $ (\A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ3|S\(2));

-- Location: IOIBUF_X59_Y34_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y34_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X58_Y34_N26
\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y34_N4
\recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\ = ( !\A[14]~input_o\ & ( \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ( !\B[14]~input_o\ ) ) ) # ( \A[14]~input_o\ & ( !\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ( (!\B[14]~input_o\ & 
-- (!\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ((!\B[13]~input_o\) # (!\A[13]~input_o\)))) ) ) ) # ( !\A[14]~input_o\ & ( !\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ( (!\B[14]~input_o\) # ((!\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & 
-- ((!\B[13]~input_o\) # (!\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101010100010001000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\);

-- Location: LABCELL_X58_Y34_N36
\recur:UQ0|recur:UQ3|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(3) = !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (!\recur:UQ0|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	combout => \recur:UQ0|recur:UQ3|S\(3));

-- Location: IOIBUF_X51_Y56_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LABCELL_X58_Y34_N32
\recur:blk_q0:3:Q0_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ = ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\);

-- Location: LABCELL_X58_Y34_N2
\recur:blk_q0:3:Q0_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|Pout~combout\ = ( \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) # (\B[13]~input_o\ & (!\A[13]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:blk_q0:3:Q0_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y34_N38
\recur:blk_q0:3:Q0_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|g_int~0_combout\ = ( \B[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & \A[14]~input_o\)) # (\A[15]~input_o\ & ((\A[14]~input_o\) # (\B[15]~input_o\))) ) ) # ( !\B[14]~input_o\ & ( (\A[15]~input_o\ & \B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \recur:blk_q0:3:Q0_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y34_N0
\recur:combine_q16:Q0_GRP|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~0_combout\ = ( \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ & ( (!\recur:blk_q0:3:Q0_BLK|g_int~0_combout\ & (!\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ((!\B[13]~input_o\) # (!\A[13]~input_o\)))) ) ) # ( 
-- !\recur:blk_q0:3:Q0_BLK|Pout~0_combout\ & ( !\recur:blk_q0:3:Q0_BLK|g_int~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \recur:blk_q0:3:Q0_BLK|ALT_INV_g_int~0_combout\,
	datad => \recur:UQ0|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	dataf => \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:combine_q16:Q0_GRP|Gout~0_combout\);

-- Location: LABCELL_X58_Y36_N34
\recur:combine_q16:Q0_GRP|Gout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~1_combout\ = ( \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|g_int\(1) & ( (!\recur:blk_q0:3:Q0_BLK|Pout~combout\ & \recur:combine_q16:Q0_GRP|Gout~0_combout\) ) ) ) # ( 
-- !\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( \recur:UQ0|recur:TOP_FANOUT|g_int\(1) & ( (\recur:combine_q16:Q0_GRP|Gout~0_combout\ & ((!\recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\) # (!\recur:blk_q0:3:Q0_BLK|Pout~combout\))) ) ) ) # ( 
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( !\recur:UQ0|recur:TOP_FANOUT|g_int\(1) & ( (!\recur:blk_q0:3:Q0_BLK|Pout~combout\ & \recur:combine_q16:Q0_GRP|Gout~0_combout\) ) ) ) # ( !\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( 
-- !\recur:UQ0|recur:TOP_FANOUT|g_int\(1) & ( (\recur:combine_q16:Q0_GRP|Gout~0_combout\ & ((!\recur:blk_q0:3:Q0_BLK|Pout~combout\) # ((!\recur:UQ0|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001100110000000000111011100000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datab => \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~combout\,
	datac => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datad => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~0_combout\,
	datae => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	combout => \recur:combine_q16:Q0_GRP|Gout~1_combout\);

-- Location: IOIBUF_X49_Y56_N32
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X58_Y36_N26
\recur:TOP_FANOUT|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~0_combout\ = (\recur:UQ0|recur:TOP_FANOUT|C~1_combout\ & (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:blk_q0:3:Q0_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datac => \recur:blk_q0:3:Q0_BLK|ALT_INV_Pout~combout\,
	combout => \recur:TOP_FANOUT|C~0_combout\);

-- Location: LABCELL_X50_Y52_N2
\recur:UQ1|recur:UQ0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(0) = ( \B[16]~input_o\ & ( \recur:TOP_FANOUT|C~0_combout\ & ( \A[16]~input_o\ ) ) ) # ( !\B[16]~input_o\ & ( \recur:TOP_FANOUT|C~0_combout\ & ( !\A[16]~input_o\ ) ) ) # ( \B[16]~input_o\ & ( !\recur:TOP_FANOUT|C~0_combout\ & ( 
-- !\A[16]~input_o\ $ (!\recur:combine_q16:Q0_GRP|Gout~1_combout\) ) ) ) # ( !\B[16]~input_o\ & ( !\recur:TOP_FANOUT|C~0_combout\ & ( !\A[16]~input_o\ $ (\recur:combine_q16:Q0_GRP|Gout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datad => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ0|S\(0));

-- Location: IOIBUF_X49_Y56_N94
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X49_Y56_N63
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X50_Y52_N38
\recur:UQ1|recur:UQ0|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S[1]~0_combout\ = ( \B[16]~input_o\ & ( \recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\recur:TOP_FANOUT|C~0_combout\) # (\A[16]~input_o\)))) ) ) ) # ( !\B[16]~input_o\ & ( 
-- \recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (((\A[16]~input_o\ & \recur:TOP_FANOUT|C~0_combout\)))) ) ) ) # ( \B[16]~input_o\ & ( !\recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( !\A[17]~input_o\ $ (\B[17]~input_o\) 
-- ) ) ) # ( !\B[16]~input_o\ & ( !\recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( !\A[16]~input_o\ $ (!\A[17]~input_o\ $ (\B[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001110011000011001100110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	combout => \recur:UQ1|recur:UQ0|S[1]~0_combout\);

-- Location: LABCELL_X50_Y52_N34
\recur:combine_q16:Q1_GRP|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~0_combout\ = ( \B[16]~input_o\ & ( (!\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) ) # ( !\B[16]~input_o\ & ( (\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010010110100000000000000000010110100101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Pout~0_combout\);

-- Location: LABCELL_X50_Y52_N10
\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = ( \A[17]~input_o\ & ( ((\A[16]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( (\B[17]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X46_Y56_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X50_Y52_N24
\recur:UQ1|recur:UQ0|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|P\(2) = ( \B[18]~input_o\ & ( !\A[18]~input_o\ ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \recur:UQ1|recur:UQ0|P\(2));

-- Location: LABCELL_X50_Y52_N18
\recur:UQ1|recur:UQ0|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(2) = ( \recur:TOP_FANOUT|C~0_combout\ & ( !\recur:UQ1|recur:UQ0|P\(2) $ (((!\recur:combine_q16:Q1_GRP|Pout~0_combout\ & !\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\))) ) ) # ( !\recur:TOP_FANOUT|C~0_combout\ & ( 
-- !\recur:UQ1|recur:UQ0|P\(2) $ (((!\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ((!\recur:combine_q16:Q1_GRP|Pout~0_combout\) # (\recur:combine_q16:Q0_GRP|Gout~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111010000001011111101000000111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	datab => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~0_combout\,
	datac => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datad => \recur:UQ1|recur:UQ0|ALT_INV_P\(2),
	dataf => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ0|S\(2));

-- Location: LABCELL_X50_Y52_N20
\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ = (!\B[18]~input_o\ & (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\))) # (\B[18]~input_o\ & (((\B[17]~input_o\ & \A[17]~input_o\)) # (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\);

-- Location: LABCELL_X50_Y52_N16
\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ = ( \recur:TOP_FANOUT|C~0_combout\ & ( (\recur:combine_q16:Q1_GRP|Pout~0_combout\ & \recur:UQ1|recur:UQ0|P\(2)) ) ) # ( !\recur:TOP_FANOUT|C~0_combout\ & ( (!\recur:combine_q16:Q0_GRP|Gout~1_combout\ & 
-- (\recur:combine_q16:Q1_GRP|Pout~0_combout\ & \recur:UQ1|recur:UQ0|P\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	datab => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~0_combout\,
	datac => \recur:UQ1|recur:UQ0|ALT_INV_P\(2),
	dataf => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X50_Y52_N22
\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = ( \recur:UQ1|recur:UQ0|P\(2) & ( (\B[16]~input_o\ & (\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \recur:UQ1|recur:UQ0|ALT_INV_P\(2),
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X59_Y51_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X50_Y52_N26
\recur:UQ1|recur:UQ0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(3) = ( \B[19]~input_o\ & ( !\A[19]~input_o\ $ ((((\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\)) # (\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\))) ) ) # ( 
-- !\B[19]~input_o\ & ( !\A[19]~input_o\ $ (((!\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ & (!\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ & !\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110000000011111111000000010000000011111111000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~2_combout\,
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \recur:UQ1|recur:UQ0|S\(3));

-- Location: IOIBUF_X33_Y56_N1
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X44_Y56_N1
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LABCELL_X50_Y52_N8
\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = ( \A[17]~input_o\ & ( ((\A[16]~input_o\ & \B[16]~input_o\)) # (\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & (\B[17]~input_o\ & \B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LABCELL_X50_Y52_N28
\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = ( \B[18]~input_o\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\A[18]~input_o\) # (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)))) # (\A[19]~input_o\ & (((\A[18]~input_o\) # 
-- (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)) # (\B[19]~input_o\))) ) ) # ( !\B[18]~input_o\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & \A[18]~input_o\))) # (\A[19]~input_o\ & 
-- (((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & \A[18]~input_o\)) # (\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: LABCELL_X50_Y52_N6
\recur:UQ1|recur:TOP_FANOUT|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ = ( \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\B[19]~input_o\ $ (!\A[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~0_combout\);

-- Location: MLABCELL_X44_Y52_N2
\recur:UQ1|recur:UQ1|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(0) = ( \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( !\A[20]~input_o\ $ (\B[20]~input_o\) ) ) # ( !\recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( !\A[20]~input_o\ $ (!\B[20]~input_o\ $ 
-- (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ1|S\(0));

-- Location: IOIBUF_X38_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X44_Y52_N34
\recur:UQ1|recur:UQ1|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S[1]~1_combout\ = ( \A[21]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( !\B[21]~input_o\ $ (((\A[20]~input_o\) # (\B[20]~input_o\))) ) ) ) # ( !\A[21]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( 
-- !\B[21]~input_o\ $ (((!\B[20]~input_o\ & !\A[20]~input_o\))) ) ) ) # ( \A[21]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( !\B[21]~input_o\ $ (((!\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & (\B[20]~input_o\ & \A[20]~input_o\)) # 
-- (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))))) ) ) ) # ( !\A[21]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( !\B[21]~input_o\ $ (((!\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & 
-- ((!\B[20]~input_o\) # (!\A[20]~input_o\))) # (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & (!\B[20]~input_o\ & !\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100110010011001001100111100110011001100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ1|S[1]~1_combout\);

-- Location: IOIBUF_X38_Y56_N32
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X44_Y52_N4
\recur:UQ1|recur:UQ1|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|P\(2) = !\B[22]~input_o\ $ (!\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	combout => \recur:UQ1|recur:UQ1|P\(2));

-- Location: MLABCELL_X44_Y52_N30
\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\ = ( \A[21]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( (!\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) ) # ( !\A[21]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( 
-- (\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) ) # ( \A[21]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & (!\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) ) ) ) 
-- # ( !\A[21]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~0_combout\ & ( (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & (\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000001000100000000000011001100000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\);

-- Location: MLABCELL_X44_Y52_N10
\recur:UQ1|recur:UQ1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S[2]~0_combout\ = ( \A[21]~input_o\ & ( \B[20]~input_o\ & ( !\recur:UQ1|recur:UQ1|P\(2) $ (((!\B[21]~input_o\ & (!\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\ & !\A[20]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \B[20]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ1|P\(2) $ (((!\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\ & ((!\B[21]~input_o\) # (!\A[20]~input_o\))))) ) ) ) # ( \A[21]~input_o\ & ( !\B[20]~input_o\ & ( !\recur:UQ1|recur:UQ1|P\(2) $ (((!\B[21]~input_o\ & 
-- !\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\))) ) ) ) # ( !\A[21]~input_o\ & ( !\B[20]~input_o\ & ( !\recur:UQ1|recur:UQ1|P\(2) $ (!\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010100110101001011010011010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ1|ALT_INV_P\(2),
	datab => \ALT_INV_B[21]~input_o\,
	datac => \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|S[2]~0_combout\);

-- Location: MLABCELL_X44_Y52_N12
\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ = ( \B[20]~input_o\ & ( (\A[20]~input_o\ & (!\B[21]~input_o\ $ (!\A[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\);

-- Location: IOIBUF_X38_Y56_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

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

-- Location: MLABCELL_X44_Y52_N6
\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = (!\B[22]~input_o\ & (\A[22]~input_o\ & (\B[21]~input_o\ & \A[21]~input_o\))) # (\B[22]~input_o\ & (((\B[21]~input_o\ & \A[21]~input_o\)) # (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: MLABCELL_X44_Y52_N16
\recur:UQ1|recur:UQ1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(3) = ( \A[23]~input_o\ & ( \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ( \B[23]~input_o\ ) ) ) # ( !\A[23]~input_o\ & ( \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ( !\B[23]~input_o\ ) ) ) # ( \A[23]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ( !\B[23]~input_o\ $ (((\recur:UQ1|recur:UQ1|P\(2) & ((\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\) # (\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\))))) ) ) ) # ( !\A[23]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ( !\B[23]~input_o\ $ (((!\recur:UQ1|recur:UQ1|P\(2)) # ((!\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ & !\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000111100110010011100001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \recur:UQ1|recur:UQ1|ALT_INV_P\(2),
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datae => \ALT_INV_A[23]~input_o\,
	dataf => \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	combout => \recur:UQ1|recur:UQ1|S\(3));

-- Location: IOIBUF_X55_Y56_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X44_Y52_N20
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = ( \A[22]~input_o\ & ( (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) # ( !\A[22]~input_o\ & ( (\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: MLABCELL_X44_Y52_N14
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ = ( \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ( (!\A[20]~input_o\ & (\B[20]~input_o\ & (!\B[21]~input_o\ $ (!\A[21]~input_o\)))) # (\A[20]~input_o\ & (!\B[20]~input_o\ & (!\B[21]~input_o\ $ 
-- (!\A[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LABCELL_X50_Y52_N30
\recur:UQ1|recur:TOP_FANOUT|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ = ( \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ & ( (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ & (!\A[19]~input_o\ $ (!\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	dataf => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~1_combout\);

-- Location: IOIBUF_X53_Y56_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: MLABCELL_X44_Y52_N26
\recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = ( \A[22]~input_o\ & ( (!\B[22]~input_o\ & (\B[23]~input_o\ & \A[23]~input_o\)) # (\B[22]~input_o\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) ) ) # ( !\A[22]~input_o\ & ( (\B[23]~input_o\ & 
-- \A[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: MLABCELL_X44_Y52_N24
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = ( \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ( ((\B[21]~input_o\ & \A[21]~input_o\)) # (\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: MLABCELL_X44_Y52_N22
\recur:UQ1|recur:TOP_FANOUT|g_int[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|g_int\(1) = ( \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & ( (!\recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ & (!\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & !\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\)) ) ) 
-- # ( !\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & ( (!\recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ & !\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\,
	datac => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\,
	datad => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	dataf => \recur:UQ1|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~1_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|g_int\(1));

-- Location: LABCELL_X53_Y52_N20
\recur:UQ1|recur:UQ2|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(0) = ( \recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( !\B[24]~input_o\ $ (!\recur:UQ1|recur:TOP_FANOUT|C~1_combout\ $ (\A[24]~input_o\)) ) ) # ( !\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( !\B[24]~input_o\ $ (\A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datad => \ALT_INV_A[24]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	combout => \recur:UQ1|recur:UQ2|S\(0));

-- Location: IOIBUF_X56_Y56_N63
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X53_Y56_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X53_Y52_N36
\recur:UQ1|recur:UQ2|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S[1]~1_combout\ = ( \A[25]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( !\B[25]~input_o\ $ (((\B[24]~input_o\) # (\A[24]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( 
-- !\B[25]~input_o\ $ (((!\A[24]~input_o\ & !\B[24]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( !\B[25]~input_o\ $ (((!\A[24]~input_o\ & (\B[24]~input_o\ & !\recur:UQ1|recur:TOP_FANOUT|g_int\(1))) # 
-- (\A[24]~input_o\ & ((!\recur:UQ1|recur:TOP_FANOUT|g_int\(1)) # (\B[24]~input_o\))))) ) ) ) # ( !\A[25]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( !\B[25]~input_o\ $ (((!\A[24]~input_o\ & ((!\B[24]~input_o\) # 
-- (\recur:UQ1|recur:TOP_FANOUT|g_int\(1)))) # (\A[24]~input_o\ & (!\B[24]~input_o\ & \recur:UQ1|recur:TOP_FANOUT|g_int\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110000110110100100111100100101101100011011001001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	combout => \recur:UQ1|recur:UQ2|S[1]~1_combout\);

-- Location: IOIBUF_X53_Y56_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X55_Y56_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X53_Y52_N6
\recur:UQ1|recur:UQ2|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|P\(2) = !\A[26]~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	combout => \recur:UQ1|recur:UQ2|P\(2));

-- Location: LABCELL_X53_Y52_N8
\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\ = ( \A[25]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( (!\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( 
-- (\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\))) ) ) ) # ( \A[25]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( (!\B[25]~input_o\ & (!\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) ) ) # ( 
-- !\A[25]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~1_combout\ & ( (\B[25]~input_o\ & (!\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000010010000000000000010010000100100100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X53_Y52_N12
\recur:UQ1|recur:UQ2|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S[2]~0_combout\ = ( \B[24]~input_o\ & ( \B[25]~input_o\ & ( !\recur:UQ1|recur:UQ2|P\(2) $ (((!\A[25]~input_o\ & (!\A[24]~input_o\ & !\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\)))) ) ) ) # ( !\B[24]~input_o\ & ( \B[25]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ2|P\(2) $ (((!\A[25]~input_o\ & !\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\))) ) ) ) # ( \B[24]~input_o\ & ( !\B[25]~input_o\ & ( !\recur:UQ1|recur:UQ2|P\(2) $ (((!\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\A[25]~input_o\) 
-- # (!\A[24]~input_o\))))) ) ) ) # ( !\B[24]~input_o\ & ( !\B[25]~input_o\ & ( !\recur:UQ1|recur:UQ2|P\(2) $ (!\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001101101100110001100110110011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \recur:UQ1|recur:UQ2|ALT_INV_P\(2),
	datac => \ALT_INV_A[24]~input_o\,
	datad => \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datae => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|S[2]~0_combout\);

-- Location: LABCELL_X53_Y52_N22
\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ = ( \B[25]~input_o\ & ( (\A[24]~input_o\ & (\B[24]~input_o\ & !\A[25]~input_o\)) ) ) # ( !\B[25]~input_o\ & ( (\A[24]~input_o\ & (\B[24]~input_o\ & \A[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\);

-- Location: IOIBUF_X56_Y56_N1
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X53_Y52_N32
\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = ( \B[25]~input_o\ & ( (!\A[26]~input_o\ & (\B[26]~input_o\ & \A[25]~input_o\)) # (\A[26]~input_o\ & ((\A[25]~input_o\) # (\B[26]~input_o\))) ) ) # ( !\B[25]~input_o\ & ( (\A[26]~input_o\ & 
-- \B[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X55_Y56_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X53_Y52_N18
\recur:UQ1|recur:UQ2|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(3) = ( \A[27]~input_o\ & ( \recur:UQ1|recur:UQ2|P\(2) & ( !\B[27]~input_o\ $ ((((\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\)) # 
-- (\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\))) ) ) ) # ( !\A[27]~input_o\ & ( \recur:UQ1|recur:UQ2|P\(2) & ( !\B[27]~input_o\ $ (((!\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~0_combout\ & (!\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ & 
-- !\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\)))) ) ) ) # ( \A[27]~input_o\ & ( !\recur:UQ1|recur:UQ2|P\(2) & ( !\B[27]~input_o\ $ (\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) ) ) ) # ( !\A[27]~input_o\ & ( !\recur:UQ1|recur:UQ2|P\(2) & ( 
-- !\B[27]~input_o\ $ (!\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111101111000111100001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datab => \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \recur:UQ1|recur:UQ2|ALT_INV_P\(2),
	combout => \recur:UQ1|recur:UQ2|S\(3));

-- Location: LABCELL_X53_Y52_N4
\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = ( \B[27]~input_o\ & ( (!\A[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) ) # ( !\B[27]~input_o\ & ( (\A[27]~input_o\ & (!\A[26]~input_o\ $ (!\B[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LABCELL_X53_Y52_N0
\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ = ( \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ( (!\A[25]~input_o\ & (\B[25]~input_o\ & (!\A[24]~input_o\ $ (!\B[24]~input_o\)))) # (\A[25]~input_o\ & (!\B[25]~input_o\ & (!\A[24]~input_o\ $ 
-- (!\B[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: MLABCELL_X52_Y52_N22
\recur:combine_q16:Q1_GRP|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~1_combout\ = ( \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ & ( \A[19]~input_o\ & ( (!\B[19]~input_o\ & \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\) ) ) ) # ( \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ & ( 
-- !\A[19]~input_o\ & ( (\B[19]~input_o\ & \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datae => \recur:UQ1|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Pout~1_combout\);

-- Location: LABCELL_X50_Y52_N12
\recur:UQ1|recur:TOP_FANOUT|C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ = ( \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( \recur:combine_q16:Q1_GRP|Pout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~1_combout\,
	dataf => \recur:UQ1|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~2_combout\);

-- Location: IOIBUF_X49_Y56_N1
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X44_Y56_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X53_Y52_N2
\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ = ( \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ( ((\A[25]~input_o\ & \B[25]~input_o\)) # (\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	datac => \recur:UQ1|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: LABCELL_X53_Y52_N34
\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = ( \B[27]~input_o\ & ( ((\A[26]~input_o\ & \B[26]~input_o\)) # (\A[27]~input_o\) ) ) # ( !\B[27]~input_o\ & ( (\A[26]~input_o\ & (\B[26]~input_o\ & \A[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LABCELL_X53_Y52_N26
\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ = ( !\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ ) ) ) # ( 
-- !\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( (!\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datae => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	combout => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\);

-- Location: MLABCELL_X49_Y52_N0
\recur:UQ1|recur:UQ3|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(0) = ( \B[28]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|C~2_combout\ $ (\A[28]~input_o\) ) ) ) # ( !\B[28]~input_o\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( 
-- !\recur:UQ1|recur:TOP_FANOUT|C~2_combout\ $ (!\A[28]~input_o\) ) ) ) # ( \B[28]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \A[28]~input_o\ ) ) ) # ( !\B[28]~input_o\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( 
-- !\A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datac => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	combout => \recur:UQ1|recur:UQ3|S\(0));

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

-- Location: IOIBUF_X46_Y56_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X49_Y52_N32
\recur:UQ1|recur:UQ3|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S[1]~1_combout\ = ( \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\B[28]~input_o\) # (\A[28]~input_o\)))) ) ) ) # ( 
-- !\recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\A[28]~input_o\ & \B[28]~input_o\)))) ) ) ) # ( \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( 
-- !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\B[28]~input_o\) # (\A[28]~input_o\)))) ) ) ) # ( !\recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( 
-- !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (((\B[28]~input_o\) # (\A[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111000011011010011100001100111100011010010110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	combout => \recur:UQ1|recur:UQ3|S[1]~1_combout\);

-- Location: MLABCELL_X49_Y52_N28
\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( (!\A[28]~input_o\ & (\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\)))) # (\A[28]~input_o\ & 
-- (!\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\)))) ) ) ) # ( \recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( (!\A[28]~input_o\ & (\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\)))) # 
-- (\A[28]~input_o\ & (!\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\)))) ) ) ) # ( !\recur:UQ1|recur:TOP_FANOUT|C~2_combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( (!\A[28]~input_o\ & (\B[28]~input_o\ & (!\A[29]~input_o\ $ 
-- (!\B[29]~input_o\)))) # (\A[28]~input_o\ & (!\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100000000000000000000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X42_Y56_N32
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X48_Y56_N1
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X49_Y52_N6
\recur:UQ1|recur:UQ3|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|P\(2) = ( \B[30]~input_o\ & ( !\A[30]~input_o\ ) ) # ( !\B[30]~input_o\ & ( \A[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \recur:UQ1|recur:UQ3|P\(2));

-- Location: MLABCELL_X49_Y52_N10
\recur:UQ1|recur:UQ3|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S[2]~0_combout\ = ( \B[28]~input_o\ & ( \A[28]~input_o\ & ( !\recur:UQ1|recur:UQ3|P\(2) $ (((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ & (!\A[29]~input_o\ & !\B[29]~input_o\)))) ) ) ) # ( !\B[28]~input_o\ & ( \A[28]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ3|P\(2) $ (((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ((!\A[29]~input_o\) # (!\B[29]~input_o\))))) ) ) ) # ( \B[28]~input_o\ & ( !\A[28]~input_o\ & ( !\recur:UQ1|recur:UQ3|P\(2) $ 
-- (((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ((!\A[29]~input_o\) # (!\B[29]~input_o\))))) ) ) ) # ( !\B[28]~input_o\ & ( !\A[28]~input_o\ & ( !\recur:UQ1|recur:UQ3|P\(2) $ (((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\ & ((!\A[29]~input_o\) # 
-- (!\B[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001111000010110100111100001011010011110000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \recur:UQ1|recur:UQ3|ALT_INV_P\(2),
	datad => \ALT_INV_B[29]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \recur:UQ1|recur:UQ3|S[2]~0_combout\);

-- Location: MLABCELL_X49_Y52_N12
\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\ = ( \A[28]~input_o\ & ( (\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\);

-- Location: IOIBUF_X48_Y56_N32
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X49_Y52_N14
\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = ( \B[30]~input_o\ & ( ((\B[29]~input_o\ & \A[29]~input_o\)) # (\A[30]~input_o\) ) ) # ( !\B[30]~input_o\ & ( (\B[29]~input_o\ & (\A[29]~input_o\ & \A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: MLABCELL_X49_Y52_N16
\recur:UQ1|recur:UQ3|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(3) = ( \B[31]~input_o\ & ( \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ( \A[31]~input_o\ ) ) ) # ( !\B[31]~input_o\ & ( \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ( !\A[31]~input_o\ ) ) ) # ( \B[31]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ( !\A[31]~input_o\ $ (((\recur:UQ1|recur:UQ3|P\(2) & ((\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\) # (\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\))))) ) ) ) # ( !\B[31]~input_o\ & ( 
-- !\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & ( !\A[31]~input_o\ $ (((!\recur:UQ1|recur:UQ3|P\(2)) # ((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\ & !\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101101100110011001001001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \recur:UQ1|recur:UQ3|ALT_INV_P\(2),
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	combout => \recur:UQ1|recur:UQ3|S\(3));

-- Location: MLABCELL_X49_Y52_N22
\recur:blk_q1:3:Q1_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|Pout~0_combout\ = ( \recur:UQ1|recur:UQ3|P\(2) & ( !\B[31]~input_o\ $ (!\A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	dataf => \recur:UQ1|recur:UQ3|ALT_INV_P\(2),
	combout => \recur:blk_q1:3:Q1_BLK|Pout~0_combout\);

-- Location: MLABCELL_X49_Y52_N26
\recur:blk_q1:3:Q1_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|Pout~combout\ = ( \A[28]~input_o\ & ( (\recur:blk_q1:3:Q1_BLK|Pout~0_combout\ & (!\B[28]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\)))) ) ) # ( !\A[28]~input_o\ & ( (\recur:blk_q1:3:Q1_BLK|Pout~0_combout\ & (\B[28]~input_o\ & 
-- (!\B[29]~input_o\ $ (!\A[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~0_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \recur:blk_q1:3:Q1_BLK|Pout~combout\);

-- Location: LABCELL_X50_Y52_N14
\recur:combine_q16:Q1_GRP|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~combout\ = ( \recur:UQ1|recur:UQ0|P\(2) & ( (\recur:combine_q16:Q1_GRP|Pout~1_combout\ & (\recur:blk_q1:3:Q1_BLK|Pout~combout\ & \recur:combine_q16:Q1_GRP|Pout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~1_combout\,
	datac => \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~combout\,
	datad => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~0_combout\,
	dataf => \recur:UQ1|recur:UQ0|ALT_INV_P\(2),
	combout => \recur:combine_q16:Q1_GRP|Pout~combout\);

-- Location: LABCELL_X55_Y26_N6
\recur:TOP_FANOUT|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~1_combout\ = ( \recur:TOP_FANOUT|C~0_combout\ & ( \recur:combine_q16:Q1_GRP|Pout~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\,
	dataf => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:TOP_FANOUT|C~1_combout\);

-- Location: MLABCELL_X49_Y52_N20
\recur:blk_q1:3:Q1_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|g_int~0_combout\ = ( \A[30]~input_o\ & ( (!\B[31]~input_o\ & (\A[31]~input_o\ & \B[30]~input_o\)) # (\B[31]~input_o\ & ((\B[30]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[31]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \recur:blk_q1:3:Q1_BLK|g_int~0_combout\);

-- Location: MLABCELL_X49_Y52_N24
\recur:combine_q16:Q1_GRP|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~0_combout\ = ( !\recur:blk_q1:3:Q1_BLK|g_int~0_combout\ & ( (!\recur:blk_q1:3:Q1_BLK|Pout~0_combout\) # ((!\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~0_combout\ & ((!\B[29]~input_o\) # (!\A[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100000111111111110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \recur:UQ1|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datad => \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~0_combout\,
	dataf => \recur:blk_q1:3:Q1_BLK|ALT_INV_g_int~0_combout\,
	combout => \recur:combine_q16:Q1_GRP|Gout~0_combout\);

-- Location: LABCELL_X53_Y52_N28
\recur:combine_q16:Q1_GRP|Gout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~1_combout\ = ( \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( (\recur:combine_q16:Q1_GRP|Gout~0_combout\ & ((!\recur:blk_q1:3:Q1_BLK|Pout~combout\) # 
-- ((!\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) ) # ( !\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( \recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( (\recur:combine_q16:Q1_GRP|Gout~0_combout\ 
-- & ((!\recur:blk_q1:3:Q1_BLK|Pout~combout\) # ((!\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) ) # ( \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & 
-- ( (\recur:combine_q16:Q1_GRP|Gout~0_combout\ & !\recur:blk_q1:3:Q1_BLK|Pout~combout\) ) ) ) # ( !\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( !\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & ( (\recur:combine_q16:Q1_GRP|Gout~0_combout\ & 
-- ((!\recur:blk_q1:3:Q1_BLK|Pout~combout\) # ((!\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010100000101000001010100010100000101010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|ALT_INV_Gout~0_combout\,
	datab => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datac => \recur:blk_q1:3:Q1_BLK|ALT_INV_Pout~combout\,
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	datae => \recur:UQ1|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	dataf => \recur:UQ1|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	combout => \recur:combine_q16:Q1_GRP|Gout~1_combout\);

-- Location: LABCELL_X55_Y26_N20
\recur:TOP_FANOUT|g_int[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|g_int\(1) = ( \recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( \recur:combine_q16:Q1_GRP|Gout~1_combout\ ) ) # ( !\recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( (!\recur:combine_q16:Q1_GRP|Pout~combout\ & 
-- \recur:combine_q16:Q1_GRP|Gout~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\,
	datac => \recur:combine_q16:Q1_GRP|ALT_INV_Gout~1_combout\,
	dataf => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	combout => \recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X59_Y23_N1
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LABCELL_X58_Y21_N22
\recur:UQ2|recur:UQ0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(0) = ( \A[32]~input_o\ & ( !\B[32]~input_o\ $ (((!\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~1_combout\))) ) ) # ( !\A[32]~input_o\ & ( !\B[32]~input_o\ $ (((!\recur:TOP_FANOUT|C~1_combout\ & \recur:TOP_FANOUT|g_int\(1)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100001010111101010000101000001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|S\(0));

-- Location: IOIBUF_X59_Y16_N94
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LABCELL_X58_Y21_N36
\recur:UQ2|recur:UQ0|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S[1]~1_combout\ = ( \recur:TOP_FANOUT|g_int\(1) & ( \A[32]~input_o\ & ( !\A[33]~input_o\ $ (!\B[33]~input_o\ $ (((\recur:TOP_FANOUT|C~1_combout\) # (\B[32]~input_o\)))) ) ) ) # ( !\recur:TOP_FANOUT|g_int\(1) & ( \A[32]~input_o\ & ( 
-- !\A[33]~input_o\ $ (\B[33]~input_o\) ) ) ) # ( \recur:TOP_FANOUT|g_int\(1) & ( !\A[32]~input_o\ & ( !\A[33]~input_o\ $ (!\B[33]~input_o\ $ (((\B[32]~input_o\ & \recur:TOP_FANOUT|C~1_combout\)))) ) ) ) # ( !\recur:TOP_FANOUT|g_int\(1) & ( !\A[32]~input_o\ 
-- & ( !\B[32]~input_o\ $ (!\A[33]~input_o\ $ (\B[33]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001001101101100100111001100001100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datad => \ALT_INV_B[33]~input_o\,
	datae => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|S[1]~1_combout\);

-- Location: IOIBUF_X59_Y21_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

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

-- Location: LABCELL_X58_Y21_N6
\recur:UQ2|recur:UQ0|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|P\(2) = !\B[34]~input_o\ $ (!\A[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	combout => \recur:UQ2|recur:UQ0|P\(2));

-- Location: LABCELL_X58_Y21_N10
\recur:combine_q16:Q2_GRP|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~0_combout\ = ( \A[32]~input_o\ & ( (!\B[32]~input_o\ & (!\B[33]~input_o\ $ (!\A[33]~input_o\))) ) ) # ( !\A[32]~input_o\ & ( (\B[32]~input_o\ & (!\B[33]~input_o\ $ (!\A[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Pout~0_combout\);

-- Location: LABCELL_X58_Y21_N14
\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ = ( \recur:combine_q16:Q2_GRP|Pout~0_combout\ & ( (!\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datad => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	dataf => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X58_Y21_N34
\recur:UQ2|recur:UQ0|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S[2]~0_combout\ = ( \A[33]~input_o\ & ( \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\recur:UQ2|recur:UQ0|P\(2) ) ) ) # ( !\A[33]~input_o\ & ( \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\recur:UQ2|recur:UQ0|P\(2) ) ) ) # 
-- ( \A[33]~input_o\ & ( !\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( !\recur:UQ2|recur:UQ0|P\(2) $ (((!\B[33]~input_o\ & ((!\A[32]~input_o\) # (!\B[32]~input_o\))))) ) ) ) # ( !\A[33]~input_o\ & ( !\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( 
-- !\recur:UQ2|recur:UQ0|P\(2) $ (((!\A[32]~input_o\) # ((!\B[33]~input_o\) # (!\B[32]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110001111000111100011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datac => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	datad => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_A[33]~input_o\,
	dataf => \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ2|recur:UQ0|S[2]~0_combout\);

-- Location: LABCELL_X58_Y21_N20
\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = ( \B[33]~input_o\ & ( (!\A[33]~input_o\ & (\A[34]~input_o\ & \B[34]~input_o\)) # (\A[33]~input_o\ & ((\B[34]~input_o\) # (\A[34]~input_o\))) ) ) # ( !\B[33]~input_o\ & ( (\A[34]~input_o\ & 
-- \B[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[34]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y21_N8
\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\ = ( \A[32]~input_o\ & ( (\B[32]~input_o\ & (!\B[33]~input_o\ $ (!\A[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[33]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\);

-- Location: IOIBUF_X59_Y21_N32
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X59_Y21_N94
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: MLABCELL_X57_Y21_N22
\recur:UQ2|P[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|P[3]~0_combout\ = ( \A[35]~input_o\ & ( !\B[35]~input_o\ ) ) # ( !\A[35]~input_o\ & ( \B[35]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[35]~input_o\,
	datae => \ALT_INV_A[35]~input_o\,
	combout => \recur:UQ2|P[3]~0_combout\);

-- Location: LABCELL_X58_Y21_N12
\recur:UQ2|recur:UQ0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(3) = ( \recur:UQ2|recur:UQ0|P\(2) & ( !\recur:UQ2|P[3]~0_combout\ $ (((!\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ & (!\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~0_combout\ & !\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\)))) ) 
-- ) # ( !\recur:UQ2|recur:UQ0|P\(2) & ( !\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ $ (!\recur:UQ2|P[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001111111100000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datab => \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datad => \recur:UQ2|ALT_INV_P[3]~0_combout\,
	dataf => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	combout => \recur:UQ2|recur:UQ0|S\(3));

-- Location: LABCELL_X58_Y21_N4
\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = ( \A[35]~input_o\ & ( ((\B[34]~input_o\ & \A[34]~input_o\)) # (\B[35]~input_o\) ) ) # ( !\A[35]~input_o\ & ( (\B[34]~input_o\ & (\B[35]~input_o\ & \A[34]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y21_N18
\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = ( \recur:UQ2|P[3]~0_combout\ & ( \B[33]~input_o\ & ( (!\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ & ((!\recur:UQ2|recur:UQ0|P\(2)) # ((!\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\ & 
-- !\A[33]~input_o\)))) ) ) ) # ( !\recur:UQ2|P[3]~0_combout\ & ( \B[33]~input_o\ & ( !\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ ) ) ) # ( \recur:UQ2|P[3]~0_combout\ & ( !\B[33]~input_o\ & ( (!\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ & 
-- ((!\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int~0_combout\) # (!\recur:UQ2|recur:UQ0|P\(2)))) ) ) ) # ( !\recur:UQ2|P[3]~0_combout\ & ( !\B[33]~input_o\ & ( !\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111011100000000011111111000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datab => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	datac => \ALT_INV_A[33]~input_o\,
	datad => \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\,
	datae => \recur:UQ2|ALT_INV_P[3]~0_combout\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: IOIBUF_X50_Y0_N32
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X58_Y21_N2
\recur:UQ2|recur:TOP_FANOUT|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~0_combout\ = ( \recur:UQ2|recur:UQ0|P\(2) & ( (\recur:UQ2|P[3]~0_combout\ & (\recur:combine_q16:Q2_GRP|Pout~0_combout\ & ((!\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000010000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \recur:UQ2|ALT_INV_P[3]~0_combout\,
	datac => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\,
	datad => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	combout => \recur:UQ2|recur:TOP_FANOUT|C~0_combout\);

-- Location: LABCELL_X58_Y9_N2
\recur:UQ2|recur:UQ1|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(0) = ( \A[36]~input_o\ & ( \recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & ( \B[36]~input_o\ ) ) ) # ( !\A[36]~input_o\ & ( \recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & ( !\B[36]~input_o\ ) ) ) # ( \A[36]~input_o\ & ( 
-- !\recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & ( !\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ $ (!\B[36]~input_o\) ) ) ) # ( !\A[36]~input_o\ & ( !\recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & ( !\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ $ 
-- (\B[36]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datad => \ALT_INV_B[36]~input_o\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:UQ2|recur:UQ1|S\(0));

-- Location: IOIBUF_X59_Y9_N32
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LABCELL_X58_Y9_N14
\recur:UQ2|recur:UQ1|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S[1]~1_combout\ = ( \A[36]~input_o\ & ( \B[37]~input_o\ & ( !\A[37]~input_o\ $ ((((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\B[36]~input_o\)) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\))) ) ) ) # ( !\A[36]~input_o\ & ( 
-- \B[37]~input_o\ & ( !\A[37]~input_o\ $ (((\B[36]~input_o\ & ((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\))))) ) ) ) # ( \A[36]~input_o\ & ( !\B[37]~input_o\ & ( !\A[37]~input_o\ $ 
-- (((!\recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & (\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & !\B[36]~input_o\)))) ) ) ) # ( !\A[36]~input_o\ & ( !\B[37]~input_o\ & ( !\A[37]~input_o\ $ (((!\B[36]~input_o\) # 
-- ((!\recur:UQ2|recur:TOP_FANOUT|C~0_combout\ & \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100110101001101010101010101010010110010101100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datac => \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datad => \ALT_INV_B[36]~input_o\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:UQ1|S[1]~1_combout\);

-- Location: LABCELL_X58_Y9_N28
\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ = ( \A[36]~input_o\ & ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (!\B[36]~input_o\ & ((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\)))) ) ) ) # ( 
-- !\A[36]~input_o\ & ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (\B[36]~input_o\ & ((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\)))) ) ) ) # ( \A[36]~input_o\ & ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & 
-- (!\B[36]~input_o\ & ((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\)))) ) ) ) # ( !\A[36]~input_o\ & ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & (\B[36]~input_o\ & 
-- ((!\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001010100000001000000001010000000101010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datac => \ALT_INV_B[36]~input_o\,
	datad => \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datae => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X59_Y7_N32
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X58_Y9_N6
\recur:UQ2|recur:UQ1|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|P\(2) = ( \B[38]~input_o\ & ( !\A[38]~input_o\ ) ) # ( !\B[38]~input_o\ & ( \A[38]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_B[38]~input_o\,
	combout => \recur:UQ2|recur:UQ1|P\(2));

-- Location: LABCELL_X58_Y9_N10
\recur:UQ2|recur:UQ1|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S[2]~0_combout\ = ( \A[37]~input_o\ & ( \B[37]~input_o\ & ( !\recur:UQ2|recur:UQ1|P\(2) ) ) ) # ( !\A[37]~input_o\ & ( \B[37]~input_o\ & ( !\recur:UQ2|recur:UQ1|P\(2) $ (((!\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ & 
-- ((!\A[36]~input_o\) # (!\B[36]~input_o\))))) ) ) ) # ( \A[37]~input_o\ & ( !\B[37]~input_o\ & ( !\recur:UQ2|recur:UQ1|P\(2) $ (((!\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ & ((!\A[36]~input_o\) # (!\B[36]~input_o\))))) ) ) ) # ( !\A[37]~input_o\ & ( 
-- !\B[37]~input_o\ & ( !\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ $ (!\recur:UQ2|recur:UQ1|P\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110110001100110011011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datab => \recur:UQ2|recur:UQ1|ALT_INV_P\(2),
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	datae => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:UQ1|S[2]~0_combout\);

-- Location: IOIBUF_X59_Y7_N1
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LABCELL_X58_Y9_N32
\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = ( \B[37]~input_o\ & ( (!\B[38]~input_o\ & (\A[37]~input_o\ & \A[38]~input_o\)) # (\B[38]~input_o\ & ((\A[38]~input_o\) # (\A[37]~input_o\))) ) ) # ( !\B[37]~input_o\ & ( (\B[38]~input_o\ & 
-- \A[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y9_N34
\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ = ( \B[36]~input_o\ & ( (\A[36]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\);

-- Location: IOIBUF_X59_Y9_N63
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X58_Y9_N38
\recur:UQ2|recur:UQ1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(3) = ( \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ & ( \A[39]~input_o\ & ( !\B[39]~input_o\ $ (((\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ2|recur:UQ1|P\(2)))) ) ) ) # ( 
-- !\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ & ( \A[39]~input_o\ & ( !\B[39]~input_o\ $ ((((\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\ & \recur:UQ2|recur:UQ1|P\(2))) # (\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\))) ) ) ) # ( 
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ & ( !\A[39]~input_o\ & ( !\B[39]~input_o\ $ (((!\recur:UQ2|recur:UQ1|P\(2) & !\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\))) ) ) ) # ( !\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\ & ( 
-- !\A[39]~input_o\ & ( !\B[39]~input_o\ $ (((!\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ & ((!\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~0_combout\) # (!\recur:UQ2|recur:UQ1|P\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011110000001111001111000011100001000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datab => \recur:UQ2|recur:UQ1|ALT_INV_P\(2),
	datac => \ALT_INV_B[39]~input_o\,
	datad => \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datae => \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \recur:UQ2|recur:UQ1|S\(3));

-- Location: IOIBUF_X59_Y13_N94
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LABCELL_X58_Y9_N4
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = ( \B[39]~input_o\ & ( (!\A[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) ) # ( !\B[39]~input_o\ & ( (\A[39]~input_o\ & (!\B[38]~input_o\ $ (!\A[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[38]~input_o\,
	datab => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: LABCELL_X58_Y9_N20
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ = ( \B[37]~input_o\ & ( (!\A[37]~input_o\ & (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (!\B[36]~input_o\ $ (!\A[36]~input_o\)))) ) ) # ( !\B[37]~input_o\ & ( (\A[37]~input_o\ & 
-- (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (!\B[36]~input_o\ $ (!\A[36]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_B[36]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y9_N22
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = ( \B[37]~input_o\ & ( (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ((\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\) # (\A[37]~input_o\))) ) ) # ( !\B[37]~input_o\ & ( 
-- (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[37]~input_o\,
	datab => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datac => \recur:UQ2|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	dataf => \ALT_INV_B[37]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LABCELL_X58_Y9_N26
\recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = ( \A[38]~input_o\ & ( \A[39]~input_o\ & ( (\B[38]~input_o\) # (\B[39]~input_o\) ) ) ) # ( !\A[38]~input_o\ & ( \A[39]~input_o\ & ( \B[39]~input_o\ ) ) ) # ( \A[38]~input_o\ & ( !\A[39]~input_o\ & ( 
-- (\B[39]~input_o\ & \B[38]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[39]~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	datae => \ALT_INV_A[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y13_N22
\recur:UQ2|recur:TOP_FANOUT|g_int[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|g_int\(1) = ( \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & !\recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\) ) ) # ( 
-- !\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (!\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & !\recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	datac => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\,
	datad => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\,
	dataf => \recur:UQ2|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|g_int\(1));

-- Location: LABCELL_X58_Y21_N24
\recur:UQ2|recur:TOP_FANOUT|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~1_combout\ = ( \recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ2|recur:UQ0|P\(2) & ( (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\recur:UQ2|P[3]~0_combout\ & (\recur:TOP_FANOUT|C~1_combout\ & 
-- \recur:combine_q16:Q2_GRP|Pout~0_combout\))) ) ) ) # ( !\recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ2|recur:UQ0|P\(2) & ( (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\recur:UQ2|P[3]~0_combout\ & \recur:combine_q16:Q2_GRP|Pout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	datab => \recur:UQ2|ALT_INV_P[3]~0_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datad => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\,
	datae => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	combout => \recur:UQ2|recur:TOP_FANOUT|C~1_combout\);

-- Location: LABCELL_X58_Y13_N6
\recur:UQ2|recur:UQ2|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(0) = ( \recur:UQ2|recur:TOP_FANOUT|C~1_combout\ & ( !\B[40]~input_o\ $ (\A[40]~input_o\) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|C~1_combout\ & ( !\B[40]~input_o\ $ (!\A[40]~input_o\ $ (!\recur:UQ2|recur:TOP_FANOUT|g_int\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	combout => \recur:UQ2|recur:UQ2|S\(0));

-- Location: IOIBUF_X59_Y15_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X58_Y13_N38
\recur:UQ2|recur:UQ2|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S[1]~1_combout\ = ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \B[40]~input_o\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((\A[40]~input_o\) # (\recur:UQ2|recur:TOP_FANOUT|C~1_combout\)))) ) ) ) # ( 
-- !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \B[40]~input_o\ & ( !\B[41]~input_o\ $ (\A[41]~input_o\) ) ) ) # ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\B[40]~input_o\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((\recur:UQ2|recur:TOP_FANOUT|C~1_combout\ 
-- & \A[40]~input_o\)))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\B[40]~input_o\ & ( !\B[41]~input_o\ $ (!\A[40]~input_o\ $ (\A[41]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001101101100100111001100001100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[41]~input_o\,
	datae => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S[1]~1_combout\);

-- Location: LABCELL_X58_Y13_N14
\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \B[40]~input_o\ & ( (\recur:UQ2|recur:TOP_FANOUT|C~1_combout\ & (!\A[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\)))) ) ) ) # ( 
-- !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \B[40]~input_o\ & ( (!\A[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) ) ) # ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\B[40]~input_o\ & ( (\recur:UQ2|recur:TOP_FANOUT|C~1_combout\ & 
-- (\A[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\)))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\B[40]~input_o\ & ( (\A[40]~input_o\ & (!\B[41]~input_o\ $ (!\A[41]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000010000010000110000110000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[41]~input_o\,
	datae => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X59_Y13_N1
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X58_Y13_N8
\recur:UQ2|recur:UQ2|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|P\(2) = !\B[42]~input_o\ $ (!\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	combout => \recur:UQ2|recur:UQ2|P\(2));

-- Location: LABCELL_X58_Y13_N34
\recur:UQ2|recur:UQ2|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S[2]~0_combout\ = ( \recur:UQ2|recur:UQ2|P\(2) & ( \B[40]~input_o\ & ( (!\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\A[41]~input_o\ & ((!\B[41]~input_o\) # (!\A[40]~input_o\))) # (\A[41]~input_o\ & (!\B[41]~input_o\ & 
-- !\A[40]~input_o\)))) ) ) ) # ( !\recur:UQ2|recur:UQ2|P\(2) & ( \B[40]~input_o\ & ( ((!\A[41]~input_o\ & (\B[41]~input_o\ & \A[40]~input_o\)) # (\A[41]~input_o\ & ((\A[40]~input_o\) # (\B[41]~input_o\)))) # (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\) ) 
-- ) ) # ( \recur:UQ2|recur:UQ2|P\(2) & ( !\B[40]~input_o\ & ( (!\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\A[41]~input_o\) # (!\B[41]~input_o\))) ) ) ) # ( !\recur:UQ2|recur:UQ2|P\(2) & ( !\B[40]~input_o\ & ( ((\A[41]~input_o\ & \B[41]~input_o\)) # 
-- (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111110010001100100000110111011111111100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[40]~input_o\,
	datae => \recur:UQ2|recur:UQ2|ALT_INV_P\(2),
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S[2]~0_combout\);

-- Location: IOIBUF_X59_Y6_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X58_Y13_N4
\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ = ( \A[41]~input_o\ & ( (\B[40]~input_o\ & (\A[40]~input_o\ & !\B[41]~input_o\)) ) ) # ( !\A[41]~input_o\ & ( (\B[40]~input_o\ & (\A[40]~input_o\ & \B[41]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\);

-- Location: LABCELL_X58_Y13_N18
\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = ( \A[41]~input_o\ & ( (!\B[42]~input_o\ & (\A[42]~input_o\ & \B[41]~input_o\)) # (\B[42]~input_o\ & ((\B[41]~input_o\) # (\A[42]~input_o\))) ) ) # ( !\A[41]~input_o\ & ( (\B[42]~input_o\ & 
-- \A[42]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X59_Y13_N63
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X58_Y13_N2
\recur:UQ2|recur:UQ2|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(3) = ( \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ & ( \B[43]~input_o\ & ( \A[43]~input_o\ ) ) ) # ( !\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ & ( \B[43]~input_o\ & ( !\A[43]~input_o\ $ (((\recur:UQ2|recur:UQ2|P\(2) 
-- & ((\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\) # (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\))))) ) ) ) # ( \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ & ( !\B[43]~input_o\ & ( !\A[43]~input_o\ ) ) ) # ( 
-- !\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ & ( !\B[43]~input_o\ & ( !\A[43]~input_o\ $ (((!\recur:UQ2|recur:UQ2|P\(2)) # ((!\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~0_combout\ & !\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010111100001111000011100001101001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|ALT_INV_P\(2),
	datab => \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \ALT_INV_A[43]~input_o\,
	datad => \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datae => \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S\(3));

-- Location: IOIBUF_X56_Y0_N32
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LABCELL_X58_Y13_N10
\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = ( \B[43]~input_o\ & ( (!\A[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) ) # ( !\B[43]~input_o\ & ( (\A[43]~input_o\ & (!\B[42]~input_o\ $ (!\A[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_B[43]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LABCELL_X58_Y13_N24
\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ = ( \B[40]~input_o\ & ( (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (!\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\)))) ) ) # ( !\B[40]~input_o\ & ( 
-- (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y13_N26
\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ = (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (((\A[41]~input_o\ & \B[41]~input_o\)) # (\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \recur:UQ2|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: LABCELL_X58_Y13_N16
\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = ( \A[43]~input_o\ & ( ((\B[42]~input_o\ & \A[42]~input_o\)) # (\B[43]~input_o\) ) ) # ( !\A[43]~input_o\ & ( (\B[42]~input_o\ & (\A[42]~input_o\ & \B[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y13_N20
\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ = ( !\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( (!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ & ((!\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\) # (\recur:UQ2|recur:TOP_FANOUT|g_int\(1)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datac => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datad => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	dataf => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\);

-- Location: LABCELL_X58_Y21_N0
\recur:combine_q16:Q2_GRP|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~1_combout\ = ( \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( (\recur:UQ2|P[3]~0_combout\ & \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ2|ALT_INV_P[3]~0_combout\,
	datac => \recur:UQ2|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~combout\,
	dataf => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	combout => \recur:combine_q16:Q2_GRP|Pout~1_combout\);

-- Location: LABCELL_X58_Y21_N30
\recur:UQ2|recur:TOP_FANOUT|C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~2_combout\ = ( \recur:combine_q16:Q2_GRP|Pout~0_combout\ & ( (\recur:combine_q16:Q2_GRP|Pout~1_combout\ & (\recur:UQ2|recur:UQ0|P\(2) & ((!\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~1_combout\,
	datab => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datad => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	dataf => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|C~2_combout\);

-- Location: LABCELL_X58_Y12_N0
\recur:UQ2|recur:UQ3|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(0) = ( \recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\B[44]~input_o\ $ (\A[44]~input_o\) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\B[44]~input_o\ $ (!\A[44]~input_o\ $ 
-- (!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \recur:UQ2|recur:UQ3|S\(0));

-- Location: IOIBUF_X59_Y4_N94
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X58_Y12_N38
\recur:UQ2|recur:UQ3|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S[1]~0_combout\ = ( \B[44]~input_o\ & ( \recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\A[45]~input_o\ $ (\B[45]~input_o\) ) ) ) # ( !\B[44]~input_o\ & ( \recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\A[44]~input_o\ $ (!\A[45]~input_o\ 
-- $ (\B[45]~input_o\)) ) ) ) # ( \B[44]~input_o\ & ( !\recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\A[45]~input_o\ $ (!\B[45]~input_o\ $ (((!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\) # (\A[44]~input_o\)))) ) ) ) # ( !\B[44]~input_o\ & ( 
-- !\recur:UQ2|recur:TOP_FANOUT|C~2_combout\ & ( !\A[45]~input_o\ $ (!\B[45]~input_o\ $ (((\A[44]~input_o\ & !\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100110001100011100101100110100110011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	datad => \ALT_INV_B[45]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \recur:UQ2|recur:UQ3|S[1]~0_combout\);

-- Location: IOIBUF_X55_Y0_N1
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LABCELL_X58_Y12_N10
\recur:blk_q2:3:Q2_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|Pout~0_combout\ = ( \B[44]~input_o\ & ( (!\A[44]~input_o\ & (!\A[45]~input_o\ $ (!\B[45]~input_o\))) ) ) # ( !\B[44]~input_o\ & ( (\A[44]~input_o\ & (!\A[45]~input_o\ $ (!\B[45]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100001000101000100000010001010001000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[45]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|Pout~0_combout\);

-- Location: LABCELL_X58_Y12_N24
\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = ( \A[44]~input_o\ & ( (!\B[45]~input_o\ & (\A[45]~input_o\ & \B[44]~input_o\)) # (\B[45]~input_o\ & ((\B[44]~input_o\) # (\A[45]~input_o\))) ) ) # ( !\A[44]~input_o\ & ( (\B[45]~input_o\ & 
-- \A[45]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010111011100010001000100010001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X59_Y12_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LABCELL_X58_Y12_N14
\recur:UQ2|recur:UQ3|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(2) = ( \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \B[46]~input_o\ & ( !\A[46]~input_o\ $ ((((\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & \recur:UQ2|recur:TOP_FANOUT|C~2_combout\)) # 
-- (\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \B[46]~input_o\ & ( !\A[46]~input_o\ $ (((\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\) # 
-- (\recur:blk_q2:3:Q2_BLK|Pout~0_combout\))) ) ) ) # ( \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\B[46]~input_o\ & ( !\A[46]~input_o\ $ (((!\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ & ((!\recur:blk_q2:3:Q2_BLK|Pout~0_combout\) # 
-- (!\recur:UQ2|recur:TOP_FANOUT|C~2_combout\))))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\B[46]~input_o\ & ( !\A[46]~input_o\ $ (((!\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & !\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010010110100110101010010101100101011010010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~0_combout\,
	datac => \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datad => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datae => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|S\(2));

-- Location: IOIBUF_X59_Y4_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X59_Y4_N1
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LABCELL_X58_Y12_N18
\recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & \recur:UQ2|recur:TOP_FANOUT|C~2_combout\)) ) ) ) # ( 
-- !\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & \recur:blk_q2:3:Q2_BLK|Pout~0_combout\) ) ) ) # ( \recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & 
-- (\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & \recur:UQ2|recur:TOP_FANOUT|C~2_combout\)) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int[2]~1_combout\ & ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & \recur:blk_q2:3:Q2_BLK|Pout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000010100001010000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datac => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~0_combout\,
	datad => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datae => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~1_combout\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X58_Y12_N34
\recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\ = ( \A[44]~input_o\ & ( \B[46]~input_o\ & ( ((!\B[45]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)) # (\B[45]~input_o\ & ((\A[45]~input_o\) # (\B[44]~input_o\)))) # (\A[46]~input_o\) ) ) ) # ( 
-- !\A[44]~input_o\ & ( \B[46]~input_o\ & ( ((\B[45]~input_o\ & \A[45]~input_o\)) # (\A[46]~input_o\) ) ) ) # ( \A[44]~input_o\ & ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & ((!\B[45]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)) # (\B[45]~input_o\ & 
-- ((\A[45]~input_o\) # (\B[44]~input_o\))))) ) ) ) # ( !\A[44]~input_o\ & ( !\B[46]~input_o\ & ( (\B[45]~input_o\ & (\A[45]~input_o\ & \A[46]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000001011100000101111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[45]~input_o\,
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\);

-- Location: LABCELL_X58_Y12_N4
\recur:UQ2|recur:UQ3|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(3) = !\B[47]~input_o\ $ (!\A[47]~input_o\ $ (((\recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]~1_combout\) # (\recur:UQ2|recur:UQ3|leaf:U_LEAF|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	combout => \recur:UQ2|recur:UQ3|S\(3));

-- Location: IOIBUF_X59_Y22_N32
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X59_Y22_N1
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LABCELL_X58_Y12_N6
\recur:blk_q2:3:Q2_BLK|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|Pout~1_combout\ = ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[46]~input_o\ & (!\B[47]~input_o\ $ (!\A[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_A[47]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|Pout~1_combout\);

-- Location: LABCELL_X58_Y12_N28
\recur:blk_q2:3:Q2_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|Pout~combout\ = ( \recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & ( \recur:blk_q2:3:Q2_BLK|Pout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~1_combout\,
	dataf => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~0_combout\,
	combout => \recur:blk_q2:3:Q2_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y21_N28
\recur:combine_q16:Q2_GRP|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~combout\ = ( \recur:combine_q16:Q2_GRP|Pout~0_combout\ & ( (\recur:combine_q16:Q2_GRP|Pout~1_combout\ & (\recur:UQ2|recur:UQ0|P\(2) & \recur:blk_q2:3:Q2_BLK|Pout~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~1_combout\,
	datab => \recur:UQ2|recur:UQ0|ALT_INV_P\(2),
	datac => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~combout\,
	dataf => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~0_combout\,
	combout => \recur:combine_q16:Q2_GRP|Pout~combout\);

-- Location: LABCELL_X55_Y26_N28
\recur:TOP_FANOUT|C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~2_combout\ = ( \recur:combine_q16:Q2_GRP|Pout~combout\ & ( \recur:TOP_FANOUT|C~0_combout\ & ( \recur:combine_q16:Q1_GRP|Pout~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\,
	datae => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~combout\,
	dataf => \recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	combout => \recur:TOP_FANOUT|C~2_combout\);

-- Location: LABCELL_X58_Y12_N20
\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = ( \B[45]~input_o\ & ( (\B[44]~input_o\ & (\A[44]~input_o\ & !\A[45]~input_o\)) ) ) # ( !\B[45]~input_o\ & ( (\B[44]~input_o\ & (\A[44]~input_o\ & \A[45]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[44]~input_o\,
	datac => \ALT_INV_A[44]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y12_N22
\recur:blk_q2:3:Q2_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|g_int~0_combout\ = ( \B[46]~input_o\ & ( (!\A[46]~input_o\ & (\A[47]~input_o\ & \B[47]~input_o\)) # (\A[46]~input_o\ & ((\B[47]~input_o\) # (\A[47]~input_o\))) ) ) # ( !\B[46]~input_o\ & ( (\A[47]~input_o\ & \B[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_B[46]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y12_N30
\recur:combine_q16:Q2_GRP|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~0_combout\ = ( \B[45]~input_o\ & ( (!\recur:blk_q2:3:Q2_BLK|g_int~0_combout\ & ((!\recur:blk_q2:3:Q2_BLK|Pout~1_combout\) # ((!\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & !\A[45]~input_o\)))) ) ) # ( !\B[45]~input_o\ 
-- & ( (!\recur:blk_q2:3:Q2_BLK|g_int~0_combout\ & ((!\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\) # (!\recur:blk_q2:3:Q2_BLK|Pout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datab => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~1_combout\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \recur:blk_q2:3:Q2_BLK|ALT_INV_g_int~0_combout\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Gout~0_combout\);

-- Location: LABCELL_X58_Y13_N28
\recur:combine_q16:Q2_GRP|Gout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~1_combout\ = ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( (\recur:combine_q16:Q2_GRP|Gout~0_combout\ & ((!\recur:blk_q2:3:Q2_BLK|Pout~combout\) # 
-- ((!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( (\recur:combine_q16:Q2_GRP|Gout~0_combout\ 
-- & !\recur:blk_q2:3:Q2_BLK|Pout~combout\) ) ) ) # ( \recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( (\recur:combine_q16:Q2_GRP|Gout~0_combout\ & ((!\recur:blk_q2:3:Q2_BLK|Pout~combout\) # 
-- ((!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) ) # ( !\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & ( !\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & ( (\recur:combine_q16:Q2_GRP|Gout~0_combout\ 
-- & ((!\recur:blk_q2:3:Q2_BLK|Pout~combout\) # ((!\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ & !\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010101000101000001010000010100000101010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|ALT_INV_Gout~0_combout\,
	datab => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datac => \recur:blk_q2:3:Q2_BLK|ALT_INV_Pout~combout\,
	datad => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	datae => \recur:UQ2|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ2|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	combout => \recur:combine_q16:Q2_GRP|Gout~1_combout\);

-- Location: LABCELL_X55_Y26_N32
\recur:TOP_FANOUT|g_int[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|g_int\(2) = ( \recur:combine_q16:Q2_GRP|Gout~1_combout\ & ( \recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( (!\recur:combine_q16:Q2_GRP|Pout~combout\) # (\recur:combine_q16:Q1_GRP|Gout~1_combout\) ) ) ) # ( 
-- \recur:combine_q16:Q2_GRP|Gout~1_combout\ & ( !\recur:combine_q16:Q0_GRP|Gout~1_combout\ & ( (!\recur:combine_q16:Q2_GRP|Pout~combout\) # ((\recur:combine_q16:Q1_GRP|Gout~1_combout\ & !\recur:combine_q16:Q1_GRP|Pout~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011100110000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|ALT_INV_Gout~1_combout\,
	datab => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~combout\,
	datad => \recur:combine_q16:Q1_GRP|ALT_INV_Pout~combout\,
	datae => \recur:combine_q16:Q2_GRP|ALT_INV_Gout~1_combout\,
	dataf => \recur:combine_q16:Q0_GRP|ALT_INV_Gout~1_combout\,
	combout => \recur:TOP_FANOUT|g_int\(2));

-- Location: LABCELL_X58_Y22_N0
\recur:UQ3|recur:UQ0|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(0) = ( \recur:TOP_FANOUT|C~2_combout\ & ( \recur:TOP_FANOUT|g_int\(2) & ( !\B[48]~input_o\ $ (\A[48]~input_o\) ) ) ) # ( !\recur:TOP_FANOUT|C~2_combout\ & ( \recur:TOP_FANOUT|g_int\(2) & ( !\B[48]~input_o\ $ (!\A[48]~input_o\) ) ) 
-- ) # ( \recur:TOP_FANOUT|C~2_combout\ & ( !\recur:TOP_FANOUT|g_int\(2) & ( !\B[48]~input_o\ $ (\A[48]~input_o\) ) ) ) # ( !\recur:TOP_FANOUT|C~2_combout\ & ( !\recur:TOP_FANOUT|g_int\(2) & ( !\B[48]~input_o\ $ (\A[48]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datae => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	combout => \recur:UQ3|recur:UQ0|S\(0));

-- Location: IOIBUF_X59_Y25_N63
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X58_Y22_N38
\recur:UQ3|recur:UQ0|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S[1]~0_combout\ = ( \A[49]~input_o\ & ( \B[49]~input_o\ & ( (!\B[48]~input_o\ & (\A[48]~input_o\ & ((!\recur:TOP_FANOUT|g_int\(2)) # (\recur:TOP_FANOUT|C~2_combout\)))) # (\B[48]~input_o\ & (((!\recur:TOP_FANOUT|g_int\(2)) # 
-- (\A[48]~input_o\)) # (\recur:TOP_FANOUT|C~2_combout\))) ) ) ) # ( !\A[49]~input_o\ & ( \B[49]~input_o\ & ( (!\B[48]~input_o\ & ((!\A[48]~input_o\) # ((!\recur:TOP_FANOUT|C~2_combout\ & \recur:TOP_FANOUT|g_int\(2))))) # (\B[48]~input_o\ & 
-- (!\recur:TOP_FANOUT|C~2_combout\ & (\recur:TOP_FANOUT|g_int\(2) & !\A[48]~input_o\))) ) ) ) # ( \A[49]~input_o\ & ( !\B[49]~input_o\ & ( (!\B[48]~input_o\ & ((!\A[48]~input_o\) # ((!\recur:TOP_FANOUT|C~2_combout\ & \recur:TOP_FANOUT|g_int\(2))))) # 
-- (\B[48]~input_o\ & (!\recur:TOP_FANOUT|C~2_combout\ & (\recur:TOP_FANOUT|g_int\(2) & !\A[48]~input_o\))) ) ) ) # ( !\A[49]~input_o\ & ( !\B[49]~input_o\ & ( (!\B[48]~input_o\ & (\A[48]~input_o\ & ((!\recur:TOP_FANOUT|g_int\(2)) # 
-- (\recur:TOP_FANOUT|C~2_combout\)))) # (\B[48]~input_o\ & (((!\recur:TOP_FANOUT|g_int\(2)) # (\A[48]~input_o\)) # (\recur:TOP_FANOUT|C~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111110111101011100000100010101110000010000101000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	datad => \ALT_INV_A[48]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S[1]~0_combout\);

-- Location: IOIBUF_X59_Y33_N32
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LABCELL_X58_Y22_N26
\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = ( \B[49]~input_o\ & ( ((\B[48]~input_o\ & \A[48]~input_o\)) # (\A[49]~input_o\) ) ) # ( !\B[49]~input_o\ & ( (\B[48]~input_o\ & (\A[48]~input_o\ & \A[49]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y22_N10
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\ = ( \A[49]~input_o\ & ( \A[48]~input_o\ & ( (!\B[48]~input_o\ & !\B[49]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( \A[48]~input_o\ & ( (!\B[48]~input_o\ & \B[49]~input_o\) ) ) ) # ( \A[49]~input_o\ & ( 
-- !\A[48]~input_o\ & ( (\B[48]~input_o\ & !\B[49]~input_o\) ) ) ) # ( !\A[49]~input_o\ & ( !\A[48]~input_o\ & ( (\B[48]~input_o\ & \B[49]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_A[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X58_Y22_N12
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ = ( \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( (!\recur:TOP_FANOUT|g_int\(2)) # (\recur:TOP_FANOUT|C~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	dataf => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X59_Y25_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X58_Y22_N14
\recur:UQ3|recur:UQ0|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(2) = ( \A[50]~input_o\ & ( !\B[50]~input_o\ $ (((\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\) # (\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\))) ) ) # ( !\A[50]~input_o\ & ( !\B[50]~input_o\ $ 
-- (((!\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & !\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datac => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datad => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~1_combout\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S\(2));

-- Location: IOIBUF_X59_Y18_N94
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LABCELL_X58_Y22_N24
\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = ( \B[49]~input_o\ & ( (\A[48]~input_o\ & (\B[48]~input_o\ & !\A[49]~input_o\)) ) ) # ( !\B[49]~input_o\ & ( (\A[48]~input_o\ & (\B[48]~input_o\ & \A[49]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	datad => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y22_N34
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ = ( !\B[50]~input_o\ & ( \A[50]~input_o\ & ( (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ & (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ & ((!\A[49]~input_o\) # (!\B[49]~input_o\)))) ) ) ) # ( 
-- \B[50]~input_o\ & ( !\A[50]~input_o\ & ( (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ & (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ & ((!\A[49]~input_o\) # (!\B[49]~input_o\)))) ) ) ) # ( !\B[50]~input_o\ & ( !\A[50]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~1_combout\,
	datac => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_B[49]~input_o\,
	datae => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X58_Y22_N16
\recur:UQ3|recur:UQ0|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(3) = ( \B[51]~input_o\ & ( !\A[51]~input_o\ $ (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\) ) ) # ( !\B[51]~input_o\ & ( !\A[51]~input_o\ $ (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[51]~input_o\,
	datad => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S\(3));

-- Location: IOIBUF_X59_Y23_N32
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y22_N22
\recur:UQ3|recur:TOP_FANOUT|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~0_combout\ = ( \B[51]~input_o\ & ( (!\A[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) ) # ( !\B[51]~input_o\ & ( (\A[51]~input_o\ & (!\A[50]~input_o\ $ (!\B[50]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~0_combout\);

-- Location: LABCELL_X58_Y22_N4
\recur:UQ3|recur:TOP_FANOUT|C~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ = ( \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( (\recur:UQ3|recur:TOP_FANOUT|C~0_combout\ & ((!\recur:TOP_FANOUT|g_int\(2)) # (\recur:TOP_FANOUT|C~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	datad => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~1_combout\);

-- Location: LABCELL_X58_Y22_N20
\recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = ( \B[51]~input_o\ & ( ((\A[50]~input_o\ & \B[50]~input_o\)) # (\A[51]~input_o\) ) ) # ( !\B[51]~input_o\ & ( (\A[51]~input_o\ & (\A[50]~input_o\ & \B[50]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_A[50]~input_o\,
	datad => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y22_N6
\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = ( \B[49]~input_o\ & ( (!\recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ & ((!\recur:UQ3|recur:TOP_FANOUT|C~0_combout\) # ((!\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ & !\A[49]~input_o\)))) ) ) # 
-- ( !\B[49]~input_o\ & ( (!\recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ & ((!\recur:UQ3|recur:TOP_FANOUT|C~0_combout\) # (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_g_int~0_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	datac => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_A[49]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LABCELL_X58_Y19_N22
\recur:UQ3|recur:UQ1|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(0) = ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( 
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( !\B[52]~input_o\ $ (!\A[52]~input_o\) ) ) ) # ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( !\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) ) # ( 
-- !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( !\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( !\B[52]~input_o\ $ (\A[52]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	dataf => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	combout => \recur:UQ3|recur:UQ1|S\(0));

-- Location: IOIBUF_X59_Y16_N1
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LABCELL_X58_Y19_N36
\recur:UQ3|recur:UQ1|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S[1]~0_combout\ = ( \B[52]~input_o\ & ( \A[53]~input_o\ & ( !\B[53]~input_o\ $ ((((!\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~1_combout\)) # (\A[52]~input_o\))) ) ) ) # ( !\B[52]~input_o\ & ( 
-- \A[53]~input_o\ & ( !\B[53]~input_o\ $ (((\A[52]~input_o\ & ((!\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~1_combout\))))) ) ) ) # ( \B[52]~input_o\ & ( !\A[53]~input_o\ & ( !\B[53]~input_o\ $ (((!\A[52]~input_o\ & 
-- (\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\)))) ) ) ) # ( !\B[52]~input_o\ & ( !\A[53]~input_o\ & ( !\B[53]~input_o\ $ (((!\A[52]~input_o\) # ((\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & 
-- !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010110111010110111110010000010111010010001010010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datad => \ALT_INV_B[53]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|S[1]~0_combout\);

-- Location: IOIBUF_X59_Y19_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LABCELL_X58_Y19_N26
\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = ( \B[52]~input_o\ & ( (!\A[53]~input_o\ & (\B[53]~input_o\ & \A[52]~input_o\)) # (\A[53]~input_o\ & ((\A[52]~input_o\) # (\B[53]~input_o\))) ) ) # ( !\B[52]~input_o\ & ( (\A[53]~input_o\ & 
-- \B[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010101111100000101000001010000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[53]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y19_N28
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = ( \A[53]~input_o\ & ( (!\B[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) ) # ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & (!\A[52]~input_o\ $ (!\B[52]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: IOIBUF_X59_Y23_N63
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X58_Y19_N14
\recur:UQ3|recur:UQ1|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(2) = ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( \A[54]~input_o\ & ( !\B[54]~input_o\ $ (((\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\) # (\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\))) ) ) ) # ( 
-- !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( \A[54]~input_o\ & ( !\B[54]~input_o\ $ ((((!\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\)) # (\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\))) ) ) 
-- ) # ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( !\A[54]~input_o\ & ( !\B[54]~input_o\ $ (((!\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ & !\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\))) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ 
-- & ( !\A[54]~input_o\ & ( !\B[54]~input_o\ $ (((!\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ & ((!\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\) # (\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010100110011001101010101010011001010110011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	datac => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datad => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datae => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \recur:UQ3|recur:UQ1|S\(2));

-- Location: IOIBUF_X59_Y19_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LABCELL_X58_Y19_N16
\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( \A[54]~input_o\ & ( (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & !\B[54]~input_o\) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( 
-- \A[54]~input_o\ & ( (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (!\B[54]~input_o\ & !\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)) ) ) ) # ( \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( !\A[54]~input_o\ & ( 
-- (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & \B[54]~input_o\) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|C~1_combout\ & ( !\A[54]~input_o\ & ( (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\B[54]~input_o\ & 
-- !\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000010101010000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	datae => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X59_Y15_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X58_Y19_N32
\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ = ( \B[52]~input_o\ & ( \A[54]~input_o\ & ( ((!\A[52]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)) # (\A[52]~input_o\ & ((\A[53]~input_o\) # (\B[53]~input_o\)))) # (\B[54]~input_o\) ) ) ) # ( 
-- !\B[52]~input_o\ & ( \A[54]~input_o\ & ( ((\B[53]~input_o\ & \A[53]~input_o\)) # (\B[54]~input_o\) ) ) ) # ( \B[52]~input_o\ & ( !\A[54]~input_o\ & ( (\B[54]~input_o\ & ((!\A[52]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)) # (\A[52]~input_o\ & 
-- ((\A[53]~input_o\) # (\B[53]~input_o\))))) ) ) ) # ( !\B[52]~input_o\ & ( !\A[54]~input_o\ & ( (\B[53]~input_o\ & (\B[54]~input_o\ & \A[53]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000010000011100001111001111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	datae => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\);

-- Location: LABCELL_X58_Y19_N0
\recur:UQ3|recur:UQ1|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(3) = ( \A[55]~input_o\ & ( \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ & ( \B[55]~input_o\ ) ) ) # ( !\A[55]~input_o\ & ( \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ & ( !\B[55]~input_o\ ) ) ) # ( \A[55]~input_o\ & ( 
-- !\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ & ( !\B[55]~input_o\ $ (\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\) ) ) ) # ( !\A[55]~input_o\ & ( !\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]~1_combout\ & ( !\B[55]~input_o\ $ 
-- (!\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datab => \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datae => \ALT_INV_A[55]~input_o\,
	dataf => \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_C[3]~1_combout\,
	combout => \recur:UQ3|recur:UQ1|S\(3));

-- Location: IOIBUF_X50_Y0_N63
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LABCELL_X58_Y19_N4
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\ = ( \A[54]~input_o\ & ( (!\B[54]~input_o\ & (!\A[55]~input_o\ $ (!\B[55]~input_o\))) ) ) # ( !\A[54]~input_o\ & ( (\B[54]~input_o\ & (!\A[55]~input_o\ $ (!\B[55]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\);

-- Location: LABCELL_X58_Y19_N6
\recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = ( \A[54]~input_o\ & ( (!\B[54]~input_o\ & (\A[55]~input_o\ & \B[55]~input_o\)) # (\B[54]~input_o\ & ((\B[55]~input_o\) # (\A[55]~input_o\))) ) ) # ( !\A[54]~input_o\ & ( (\A[55]~input_o\ & 
-- \B[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LABCELL_X58_Y19_N30
\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = ( \A[53]~input_o\ & ( (\A[52]~input_o\ & (!\B[53]~input_o\ & \B[52]~input_o\)) ) ) # ( !\A[53]~input_o\ & ( (\A[52]~input_o\ & (\B[53]~input_o\ & \B[52]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y19_N8
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = ( \B[53]~input_o\ & ( (!\A[53]~input_o\ & !\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) ) ) # ( !\B[53]~input_o\ & ( !\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[53]~input_o\,
	datad => \recur:UQ3|recur:UQ1|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LABCELL_X58_Y19_N10
\recur:UQ3|recur:TOP_FANOUT|g_int[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|g_int\(1) = ( \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ & ((!\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\) # 
-- (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\))) ) ) # ( !\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & ( (!\recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ & ((!\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\) # 
-- ((!\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001000100010001100100010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~1_combout\,
	datab => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_g_int~0_combout\,
	datac => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datad => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Gout~0_combout\,
	dataf => \recur:UQ3|recur:blk_q0:0:Q0_BLK|ALT_INV_Gout~0_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X54_Y0_N32
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X58_Y22_N18
\recur:UQ3|recur:TOP_FANOUT|C~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ = ( \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~0_combout\ & ( (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~1_combout\ & \recur:UQ3|recur:TOP_FANOUT|C~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~0_combout\,
	datac => \recur:UQ3|recur:blk_q1:0:Q1_BLK|ALT_INV_Pout~1_combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~0_combout\,
	dataf => \recur:UQ3|recur:UQ0|leaf:U_LEAF|ALT_INV_C~0_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~2_combout\);

-- Location: LABCELL_X58_Y22_N28
\recur:UQ3|recur:TOP_FANOUT|C~3\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ = ( \recur:TOP_FANOUT|C~2_combout\ & ( \recur:TOP_FANOUT|g_int\(2) & ( \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ ) ) ) # ( \recur:TOP_FANOUT|C~2_combout\ & ( !\recur:TOP_FANOUT|g_int\(2) & ( 
-- \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ ) ) ) # ( !\recur:TOP_FANOUT|C~2_combout\ & ( !\recur:TOP_FANOUT|g_int\(2) & ( \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datae => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	combout => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\);

-- Location: LABCELL_X55_Y4_N22
\recur:UQ3|recur:UQ2|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(0) = ( \B[56]~input_o\ & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( \A[56]~input_o\ ) ) ) # ( !\B[56]~input_o\ & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\A[56]~input_o\ ) ) ) # ( \B[56]~input_o\ & ( 
-- !\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\A[56]~input_o\ $ (!\recur:UQ3|recur:TOP_FANOUT|g_int\(1)) ) ) ) # ( !\B[56]~input_o\ & ( !\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\A[56]~input_o\ $ (\recur:UQ3|recur:TOP_FANOUT|g_int\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011001100111100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[56]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datae => \ALT_INV_B[56]~input_o\,
	dataf => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~3_combout\,
	combout => \recur:UQ3|recur:UQ2|S\(0));

-- Location: IOIBUF_X52_Y0_N1
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X55_Y4_N16
\recur:UQ3|recur:UQ2|S[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S[1]~1_combout\ = ( \recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((\A[56]~input_o\) # (\B[56]~input_o\)))) ) ) ) # ( 
-- !\recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((\A[56]~input_o\) # (\B[56]~input_o\)))) ) ) ) # ( \recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( 
-- !\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (((\B[56]~input_o\ & \A[56]~input_o\)))) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( !\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( !\B[57]~input_o\ $ 
-- (!\A[57]~input_o\ $ (((\A[56]~input_o\) # (\B[56]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~3_combout\,
	combout => \recur:UQ3|recur:UQ2|S[1]~1_combout\);

-- Location: LABCELL_X55_Y4_N10
\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\ = ( \recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( (!\B[56]~input_o\ & (\A[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\)))) # (\B[56]~input_o\ & 
-- (!\A[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\)))) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( (!\B[56]~input_o\ & (\A[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\)))) # 
-- (\B[56]~input_o\ & (!\A[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\)))) ) ) ) # ( !\recur:UQ3|recur:TOP_FANOUT|g_int\(1) & ( !\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & ( (!\B[56]~input_o\ & (\A[56]~input_o\ & (!\A[57]~input_o\ $ 
-- (!\B[57]~input_o\)))) # (\B[56]~input_o\ & (!\A[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000000000000000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	datae => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~3_combout\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X52_Y0_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X55_Y4_N24
\recur:UQ3|recur:UQ2|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|P\(2) = ( \A[58]~input_o\ & ( !\B[58]~input_o\ ) ) # ( !\A[58]~input_o\ & ( \B[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datae => \ALT_INV_A[58]~input_o\,
	combout => \recur:UQ3|recur:UQ2|P\(2));

-- Location: LABCELL_X55_Y4_N32
\recur:UQ3|recur:UQ2|S[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S[2]~0_combout\ = ( \A[57]~input_o\ & ( \recur:UQ3|recur:UQ2|P\(2) & ( (!\B[57]~input_o\ & (!\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\B[56]~input_o\) # (!\A[56]~input_o\)))) ) ) ) # ( !\A[57]~input_o\ & ( 
-- \recur:UQ3|recur:UQ2|P\(2) & ( (!\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\ & ((!\B[56]~input_o\) # ((!\A[56]~input_o\) # (!\B[57]~input_o\)))) ) ) ) # ( \A[57]~input_o\ & ( !\recur:UQ3|recur:UQ2|P\(2) & ( (((\B[56]~input_o\ & \A[56]~input_o\)) # 
-- (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\)) # (\B[57]~input_o\) ) ) ) # ( !\A[57]~input_o\ & ( !\recur:UQ3|recur:UQ2|P\(2) & ( ((\B[56]~input_o\ & (\A[56]~input_o\ & \B[57]~input_o\))) # (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000111111111111111111110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[56]~input_o\,
	datab => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datae => \ALT_INV_A[57]~input_o\,
	dataf => \recur:UQ3|recur:UQ2|ALT_INV_P\(2),
	combout => \recur:UQ3|recur:UQ2|S[2]~0_combout\);

-- Location: LABCELL_X55_Y4_N12
\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ = ( \A[56]~input_o\ & ( (\B[56]~input_o\ & (!\A[57]~input_o\ $ (!\B[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\);

-- Location: LABCELL_X55_Y4_N36
\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = ( \A[57]~input_o\ & ( (!\B[58]~input_o\ & (\A[58]~input_o\ & \B[57]~input_o\)) # (\B[58]~input_o\ & ((\B[57]~input_o\) # (\A[58]~input_o\))) ) ) # ( !\A[57]~input_o\ & ( (\B[58]~input_o\ & 
-- \A[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010001000100010001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datae => \ALT_INV_A[57]~input_o\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X55_Y0_N94
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X55_Y0_N32
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X55_Y4_N2
\recur:UQ3|recur:UQ2|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(3) = ( \A[59]~input_o\ & ( \recur:UQ3|recur:UQ2|P\(2) & ( !\B[59]~input_o\ $ ((((\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\)) # 
-- (\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\))) ) ) ) # ( !\A[59]~input_o\ & ( \recur:UQ3|recur:UQ2|P\(2) & ( !\B[59]~input_o\ $ (((!\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\ & (!\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~0_combout\ & 
-- !\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\)))) ) ) ) # ( \A[59]~input_o\ & ( !\recur:UQ3|recur:UQ2|P\(2) & ( !\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ $ (\B[59]~input_o\) ) ) ) # ( !\A[59]~input_o\ & ( !\recur:UQ3|recur:UQ2|P\(2) & ( 
-- !\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ $ (!\B[59]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111101111111100000001000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	datab => \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_B[59]~input_o\,
	datae => \ALT_INV_A[59]~input_o\,
	dataf => \recur:UQ3|recur:UQ2|ALT_INV_P\(2),
	combout => \recur:UQ3|recur:UQ2|S\(3));

-- Location: LABCELL_X55_Y4_N14
\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = ( \recur:UQ3|recur:UQ2|P\(2) & ( !\B[59]~input_o\ $ (!\A[59]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	dataf => \recur:UQ3|recur:UQ2|ALT_INV_P\(2),
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LABCELL_X55_Y4_N4
\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ = ( \A[56]~input_o\ & ( (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (!\B[56]~input_o\ & (!\B[57]~input_o\ $ (!\A[57]~input_o\)))) ) ) # ( !\A[56]~input_o\ & ( 
-- (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\B[56]~input_o\ & (!\B[57]~input_o\ $ (!\A[57]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LABCELL_X58_Y30_N20
\recur:UQ3|recur:TOP_FANOUT|C~4\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ = ( \recur:TOP_FANOUT|g_int\(2) & ( (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\recur:UQ3|recur:TOP_FANOUT|C~2_combout\ & \recur:TOP_FANOUT|C~2_combout\)) ) ) # ( !\recur:TOP_FANOUT|g_int\(2) & ( 
-- (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ3|recur:TOP_FANOUT|C~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	datad => \recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	dataf => \recur:TOP_FANOUT|ALT_INV_g_int\(2),
	combout => \recur:UQ3|recur:TOP_FANOUT|C~4_combout\);

-- Location: LABCELL_X55_Y4_N30
\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = ( \A[59]~input_o\ & ( \B[59]~input_o\ ) ) # ( !\A[59]~input_o\ & ( \B[59]~input_o\ & ( (\B[58]~input_o\ & \A[58]~input_o\) ) ) ) # ( \A[59]~input_o\ & ( !\B[59]~input_o\ & ( (\B[58]~input_o\ & 
-- \A[58]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datac => \ALT_INV_A[58]~input_o\,
	datae => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_B[59]~input_o\,
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LABCELL_X55_Y4_N6
\Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (((\B[57]~input_o\ & \A[57]~input_o\)) # (\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \recur:UQ3|recur:UQ2|leaf:U_LEAF|ALT_INV_g_int~0_combout\,
	combout => \Cout~0_combout\);

-- Location: LABCELL_X58_Y30_N22
\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\ = ( !\Cout~0_combout\ & ( (!\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ((!\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\) # (\recur:UQ3|recur:TOP_FANOUT|g_int\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datac => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	dataf => \ALT_INV_Cout~0_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: IOIBUF_X59_Y30_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X58_Y30_N6
\recur:UQ3|recur:UQ3|S[0]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(0) = ( \A[60]~input_o\ & ( !\B[60]~input_o\ $ (((!\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\))) ) ) # ( !\A[60]~input_o\ & ( !\B[60]~input_o\ $ 
-- (((!\recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100100010110111010010001000100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|S\(0));

-- Location: IOIBUF_X59_Y28_N32
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
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LABCELL_X58_Y30_N16
\recur:UQ3|recur:UQ3|S[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S[1]~0_combout\ = ( \B[60]~input_o\ & ( \A[60]~input_o\ & ( !\A[61]~input_o\ $ (\B[61]~input_o\) ) ) ) # ( !\B[60]~input_o\ & ( \A[60]~input_o\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ 
-- (((!\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\)))) ) ) ) # ( \B[60]~input_o\ & ( !\A[60]~input_o\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ (((!\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # 
-- (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\)))) ) ) ) # ( !\B[60]~input_o\ & ( !\A[60]~input_o\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000110110100111000011011010011100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\,
	datab => \ALT_INV_A[61]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|S[1]~0_combout\);

-- Location: IOIBUF_X59_Y30_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X58_Y30_N8
\recur:UQ3|recur:UQ3|P[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|P\(2) = ( \B[62]~input_o\ & ( !\A[62]~input_o\ ) ) # ( !\B[62]~input_o\ & ( \A[62]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \recur:UQ3|recur:UQ3|P\(2));

-- Location: LABCELL_X58_Y30_N36
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\ = ( \A[60]~input_o\ & ( (!\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\))) ) ) # ( !\A[60]~input_o\ & ( (\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[61]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\);

-- Location: LABCELL_X58_Y30_N34
\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = ( \A[60]~input_o\ & ( (!\B[61]~input_o\ & (\A[61]~input_o\ & \B[60]~input_o\)) # (\B[61]~input_o\ & ((\B[60]~input_o\) # (\A[61]~input_o\))) ) ) # ( !\A[60]~input_o\ & ( (\B[61]~input_o\ & 
-- \A[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[61]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y30_N4
\recur:UQ3|recur:UQ3|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(2) = ( \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\recur:UQ3|recur:UQ3|P\(2) ) ) # ( !\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ & ( !\recur:UQ3|recur:UQ3|P\(2) $ 
-- (((!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\) # ((!\recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111010010000011111101001011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datac => \recur:UQ3|recur:UQ3|ALT_INV_P\(2),
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	dataf => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int[1]~0_combout\,
	combout => \recur:UQ3|recur:UQ3|S\(2));

-- Location: IOIBUF_X59_Y30_N1
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X58_Y30_N38
\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = ( \B[62]~input_o\ & ( ((\B[61]~input_o\ & \A[61]~input_o\)) # (\A[62]~input_o\) ) ) # ( !\B[62]~input_o\ & ( (\B[61]~input_o\ & (\A[61]~input_o\ & \A[62]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[61]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_B[62]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LABCELL_X58_Y30_N32
\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ = ( \A[60]~input_o\ & ( (\recur:UQ3|recur:UQ3|P\(2) & (\B[60]~input_o\ & (!\B[61]~input_o\ $ (!\A[61]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[61]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datac => \recur:UQ3|recur:UQ3|ALT_INV_P\(2),
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\);

-- Location: LABCELL_X58_Y30_N2
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3) = ( \recur:UQ3|recur:UQ3|P\(2) & ( \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & ( (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\ & 
-- !\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\)) ) ) ) # ( !\recur:UQ3|recur:UQ3|P\(2) & ( \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & ( (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & !\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\) ) ) ) # ( 
-- \recur:UQ3|recur:UQ3|P\(2) & ( !\recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & ( (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ & ((!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\) # 
-- (\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\)))) ) ) ) # ( !\recur:UQ3|recur:UQ3|P\(2) & ( !\recur:UQ3|recur:TOP_FANOUT|C~4_combout\ & ( (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ & !\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101000100000000010101010000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~1_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int[2]~0_combout\,
	datac => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_g_int~2_combout\,
	datae => \recur:UQ3|recur:UQ3|ALT_INV_P\(2),
	dataf => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~4_combout\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X59_Y31_N1
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X58_Y30_N26
\recur:UQ3|recur:UQ3|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(3) = ( \B[63]~input_o\ & ( !\A[63]~input_o\ $ (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3)) ) ) # ( !\B[63]~input_o\ & ( !\A[63]~input_o\ $ (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C\(3),
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \recur:UQ3|recur:UQ3|S\(3));

-- Location: LABCELL_X58_Y30_N12
\Cout~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~2_combout\ = ( \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( \A[60]~input_o\ & ( (!\A[61]~input_o\ & !\B[61]~input_o\) ) ) ) # ( !\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( \A[60]~input_o\ & ( (!\A[61]~input_o\ & 
-- ((!\B[61]~input_o\) # ((!\B[60]~input_o\ & !\Cout~0_combout\)))) # (\A[61]~input_o\ & (!\B[60]~input_o\ & (!\B[61]~input_o\ & !\Cout~0_combout\))) ) ) ) # ( \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( !\A[60]~input_o\ & ( (!\B[60]~input_o\ & 
-- ((!\A[61]~input_o\) # (!\B[61]~input_o\))) # (\B[60]~input_o\ & (!\A[61]~input_o\ & !\B[61]~input_o\)) ) ) ) # ( !\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ( !\A[60]~input_o\ & ( (!\A[61]~input_o\ & ((!\B[60]~input_o\) # ((!\B[61]~input_o\) # 
-- (!\Cout~0_combout\)))) # (\A[61]~input_o\ & (!\B[61]~input_o\ & ((!\B[60]~input_o\) # (!\Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001110100011101000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[61]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_Cout~0_combout\,
	datae => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_g_int~0_combout\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Cout~2_combout\);

-- Location: LABCELL_X58_Y30_N28
\Cout~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~3_combout\ = (\Cout~2_combout\ & ((!\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\) # ((!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datad => \ALT_INV_Cout~2_combout\,
	combout => \Cout~3_combout\);

-- Location: LABCELL_X58_Y30_N30
\Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~0_combout\ & \recur:UQ3|recur:TOP_FANOUT|C~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|ALT_INV_Pout~combout\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C~0_combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|ALT_INV_C~2_combout\,
	combout => \Cout~1_combout\);

-- Location: LABCELL_X55_Y26_N16
\Cout~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~4_combout\ = ( \recur:combine_q16:Q2_GRP|Gout~1_combout\ & ( \Cout~1_combout\ & ( (\Cout~3_combout\ & ((!\recur:combine_q16:Q2_GRP|Pout~combout\) # ((!\recur:TOP_FANOUT|C~1_combout\ & \recur:TOP_FANOUT|g_int\(1))))) ) ) ) # ( 
-- \recur:combine_q16:Q2_GRP|Gout~1_combout\ & ( !\Cout~1_combout\ & ( \Cout~3_combout\ ) ) ) # ( !\recur:combine_q16:Q2_GRP|Gout~1_combout\ & ( !\Cout~1_combout\ & ( \Cout~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cout~3_combout\,
	datab => \recur:TOP_FANOUT|ALT_INV_C~1_combout\,
	datac => \recur:TOP_FANOUT|ALT_INV_g_int\(1),
	datad => \recur:combine_q16:Q2_GRP|ALT_INV_Pout~combout\,
	datae => \recur:combine_q16:Q2_GRP|ALT_INV_Gout~1_combout\,
	dataf => \ALT_INV_Cout~1_combout\,
	combout => \Cout~4_combout\);

-- Location: LABCELL_X58_Y30_N10
\Cout~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Cout~5_combout\ = ( \B[63]~input_o\ & ( ((!\B[62]~input_o\ & (\A[62]~input_o\ & !\Cout~4_combout\)) # (\B[62]~input_o\ & ((!\Cout~4_combout\) # (\A[62]~input_o\)))) # (\A[63]~input_o\) ) ) # ( !\B[63]~input_o\ & ( (\A[63]~input_o\ & ((!\B[62]~input_o\ & 
-- (\A[62]~input_o\ & !\Cout~4_combout\)) # (\B[62]~input_o\ & ((!\Cout~4_combout\) # (\A[62]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001000000000111000101110001111111110111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_Cout~4_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_B[63]~input_o\,
	combout => \Cout~5_combout\);

-- Location: LABCELL_X58_Y30_N24
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \B[63]~input_o\ & ( (!\A[63]~input_o\) # (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3)) ) ) # ( !\B[63]~input_o\ & ( (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C\(3)) # (\A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|ALT_INV_C\(3),
	dataf => \ALT_INV_B[63]~input_o\,
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


