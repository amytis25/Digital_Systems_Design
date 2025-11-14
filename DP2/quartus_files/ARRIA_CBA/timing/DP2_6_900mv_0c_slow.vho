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

-- DATE "11/13/2025 18:53:59"

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
-- S[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S_internal~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S_internal~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \S_internal~3_combout\ : std_logic;
SIGNAL \block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[1]~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S_internal~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S_internal~5_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S_internal~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S_internal~7_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[2]~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S_internal~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S_internal~9_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~10_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S_internal~11_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \block_carry_in[3]~5_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \S_internal~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S_internal~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \S_internal~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S_internal~15_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[4]~6_combout\ : std_logic;
SIGNAL \block_carry_in[4]~34_combout\ : std_logic;
SIGNAL \block_carry_in[4]~7_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S_internal~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S_internal~17_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \S_internal~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S_internal~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[5]~8_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[5]~9_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S_internal~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \S_internal~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \S_internal~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S_internal~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[6]~10_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[6]~11_combout\ : std_logic;
SIGNAL \S_internal~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S_internal~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S_internal~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \S_internal~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[7]~12_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[7]~13_combout\ : std_logic;
SIGNAL \S_internal~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S_internal~29_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~30_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \S_internal~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[8]~14_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[8]~15_combout\ : std_logic;
SIGNAL \S_internal~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \S_internal~33_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \S_internal~34_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \S_internal~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[9]~17_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[9]~16_combout\ : std_logic;
SIGNAL \block_carry_in[9]~18_combout\ : std_logic;
SIGNAL \S_internal~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \S_internal~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \S_internal~39_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[10]~19_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[10]~20_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \S_internal~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \S_internal~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \S_internal~43_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[11]~21_combout\ : std_logic;
SIGNAL \block_carry_in[11]~22_combout\ : std_logic;
SIGNAL \S_internal~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \S_internal~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~46_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \S_internal~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[12]~23_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[12]~24_combout\ : std_logic;
SIGNAL \S_internal~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \S_internal~49_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \S_internal~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \S_internal~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \block_carry_in[13]~25_combout\ : std_logic;
SIGNAL \block_carry_in[13]~26_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[13]~27_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \S_internal~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S_internal~53_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \S_internal~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \S_internal~55_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \block_carry_in[14]~28_combout\ : std_logic;
SIGNAL \block_carry_in[14]~29_combout\ : std_logic;
SIGNAL \block_carry_in[14]~30_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \S_internal~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \S_internal~57_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S_internal~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \S_internal~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \block_carry_in[15]~31_combout\ : std_logic;
SIGNAL \block_carry_in[15]~32_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[15]~33_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \S_internal~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \S_internal~61_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \block_carry_out~0_combout\ : std_logic;
SIGNAL \block_carry_out~1_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \GEN_BLOCKS:13:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL S_internal : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[4]~34_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[6]~10_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[5]~8_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[6]~11_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[4]~7_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[3]~5_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[4]~6_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[5]~9_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[7]~12_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[9]~17_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[11]~22_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[8]~15_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[10]~19_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[7]~13_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[9]~18_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[9]~16_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[10]~20_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[8]~14_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[11]~21_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[15]~33_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[15]~31_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_C\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[13]~26_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[12]~23_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[13]~27_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[14]~29_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[15]~32_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[13]~25_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_C\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[14]~28_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[14]~30_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_in[12]~24_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_block_carry_out~0_combout\ : std_logic;

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
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\;
\ALT_INV_block_carry_in[4]~34_combout\ <= NOT \block_carry_in[4]~34_combout\;
\ALT_INV_block_carry_in[1]~0_combout\ <= NOT \block_carry_in[1]~0_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:1:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_block_carry_in[1]~1_combout\ <= NOT \block_carry_in[1]~1_combout\;
\ALT_INV_block_carry_in[2]~2_combout\ <= NOT \block_carry_in[2]~2_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\;
\ALT_INV_block_carry_in[6]~10_combout\ <= NOT \block_carry_in[6]~10_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|Pout~combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\;
\ALT_INV_block_carry_in[5]~8_combout\ <= NOT \block_carry_in[5]~8_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[6]~11_combout\ <= NOT \block_carry_in[6]~11_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\;
\ALT_INV_block_carry_in[4]~7_combout\ <= NOT \block_carry_in[4]~7_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[3]~5_combout\ <= NOT \block_carry_in[3]~5_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\;
\ALT_INV_block_carry_in[2]~3_combout\ <= NOT \block_carry_in[2]~3_combout\;
\ALT_INV_block_carry_in[3]~4_combout\ <= NOT \block_carry_in[3]~4_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[4]~6_combout\ <= NOT \block_carry_in[4]~6_combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:2:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|Pout~combout\;
\GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\;
\ALT_INV_block_carry_in[5]~9_combout\ <= NOT \block_carry_in[5]~9_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\;
\ALT_INV_block_carry_in[7]~12_combout\ <= NOT \block_carry_in[7]~12_combout\;
\ALT_INV_block_carry_in[9]~17_combout\ <= NOT \block_carry_in[9]~17_combout\;
\ALT_INV_block_carry_in[11]~22_combout\ <= NOT \block_carry_in[11]~22_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|Pout~combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\;
\ALT_INV_block_carry_in[8]~15_combout\ <= NOT \block_carry_in[8]~15_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|Pout~combout\;
\ALT_INV_block_carry_in[10]~19_combout\ <= NOT \block_carry_in[10]~19_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:6:LACG_INST|Pout~combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_block_carry_in[7]~13_combout\ <= NOT \block_carry_in[7]~13_combout\;
\ALT_INV_block_carry_in[9]~18_combout\ <= NOT \block_carry_in[9]~18_combout\;
\ALT_INV_block_carry_in[9]~16_combout\ <= NOT \block_carry_in[9]~16_combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|Pout~combout\;
\ALT_INV_block_carry_in[10]~20_combout\ <= NOT \block_carry_in[10]~20_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:10:LACG_INST|Pout~combout\;
\GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\;
\ALT_INV_block_carry_in[8]~14_combout\ <= NOT \block_carry_in[8]~14_combout\;
\GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:8:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[11]~21_combout\ <= NOT \block_carry_in[11]~21_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[15]~33_combout\ <= NOT \block_carry_in[15]~33_combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_C~0_combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|C~0_combout\;
\GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_block_carry_in[15]~31_combout\ <= NOT \block_carry_in[15]~31_combout\;
\GEN_BLOCKS:15:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:15:LACG_INST|ALT_INV_C~0_combout\ <= NOT \GEN_BLOCKS:15:LACG_INST|C~0_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_C\(3) <= NOT \GEN_BLOCKS:12:LACG_INST|C\(3);
\GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\;
\ALT_INV_block_carry_in[13]~26_combout\ <= NOT \block_carry_in[13]~26_combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|Pout~combout\;
\ALT_INV_block_carry_in[12]~23_combout\ <= NOT \block_carry_in[12]~23_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\;
\ALT_INV_block_carry_in[13]~27_combout\ <= NOT \block_carry_in[13]~27_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_C~0_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|C~0_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|Pout~combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\;
\ALT_INV_block_carry_in[14]~29_combout\ <= NOT \block_carry_in[14]~29_combout\;
\ALT_INV_block_carry_in[15]~32_combout\ <= NOT \block_carry_in[15]~32_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\;
\ALT_INV_block_carry_in[13]~25_combout\ <= NOT \block_carry_in[13]~25_combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_C\(3) <= NOT \GEN_BLOCKS:13:LACG_INST|C\(3);
\GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\;
\GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \GEN_BLOCKS:13:LACG_INST|g_int~3_combout\;
\ALT_INV_block_carry_in[14]~28_combout\ <= NOT \block_carry_in[14]~28_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\;
\ALT_INV_block_carry_in[14]~30_combout\ <= NOT \block_carry_in[14]~30_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|Pout~combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\;
\ALT_INV_block_carry_in[12]~24_combout\ <= NOT \block_carry_in[12]~24_combout\;
\GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_C~0_combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|C~0_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\;
\GEN_BLOCKS:12:LACG_INST|ALT_INV_Pout~combout\ <= NOT \GEN_BLOCKS:12:LACG_INST|Pout~combout\;
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
\GEN_BLOCKS:15:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\;
\GEN_BLOCKS:14:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\;
\ALT_INV_block_carry_out~0_combout\ <= NOT \block_carry_out~0_combout\;

-- Location: IOOBUF_X59_Y37_N98
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\S[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X59_Y34_N36
\S[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X59_Y30_N98
\S[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\S[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X59_Y26_N5
\S[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\S[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X59_Y26_N98
\S[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X59_Y22_N67
\S[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X59_Y39_N5
\S[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X59_Y33_N33
\S[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X59_Y48_N36
\S[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X59_Y31_N98
\S[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X49_Y56_N2
\S[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\S[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X51_Y56_N67
\S[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X49_Y56_N67
\S[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\S[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\S[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X44_Y56_N36
\S[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\S[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\S[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\S[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\S[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X59_Y6_N36
\S[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\S[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\S[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\S[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\S[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\S[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X37_Y0_N98
\S[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\S[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X35_Y0_N67
\S[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X59_Y12_N67
\S[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\S[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X59_Y10_N36
\S[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X59_Y9_N98
\S[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X56_Y0_N64
\S[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
\S[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X56_Y0_N33
\S[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X55_Y0_N98
\S[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X36_Y56_N98
\S[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X38_Y56_N67
\S[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\S[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X36_Y56_N2
\S[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X54_Y0_N98
\S[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\S[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\S[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\S[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\S[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\S[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~54_combout\,
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
	i => \S_internal~55_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\S[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~56_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X59_Y23_N67
\S[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~57_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X59_Y16_N67
\S[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~58_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\S[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~59_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\S[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~60_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\S[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~61_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\S[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~62_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\S[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_internal(63),
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\Cout~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \block_carry_out~1_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X48_Y0_N5
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

-- Location: IOIBUF_X59_Y34_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\Cin~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X58_Y34_N20
\S_internal~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \S_internal~0_combout\);

-- Location: IOIBUF_X59_Y39_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X58_Y34_N26
\S_internal~1\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~1_combout\ = ( \B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\Cin~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\A[0]~input_o\ & \Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S_internal~1_combout\);

-- Location: LABCELL_X58_Y34_N24
\GEN_BLOCKS:0:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X59_Y37_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X58_Y34_N28
\GEN_BLOCKS:0:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\A[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y34_N12
\S_internal~2\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~2_combout\ = ( \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ & ( !\A[2]~input_o\ $ (\B[2]~input_o\) ) ) # ( !\GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (((\Cin~input_o\ & 
-- \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \S_internal~2_combout\);

-- Location: IOIBUF_X59_Y34_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X58_Y34_N36
\GEN_BLOCKS:0:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = (!\A[2]~input_o\ & (\B[2]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (\A[2]~input_o\ & (!\B[2]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y34_N22
\GEN_BLOCKS:0:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = ( \A[0]~input_o\ & ( (\GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & ((\B[0]~input_o\) # (\Cin~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\Cin~input_o\ & (\B[0]~input_o\ & \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X59_Y36_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X58_Y34_N38
\GEN_BLOCKS:0:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ = (!\A[2]~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \B[2]~input_o\))) # (\A[2]~input_o\ & (((\B[1]~input_o\ & \A[1]~input_o\)) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X58_Y34_N2
\S_internal~3\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~3_combout\ = ( \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ & ( !\A[3]~input_o\ $ (\B[3]~input_o\) ) ) # ( !\GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ & ( !\A[3]~input_o\ $ (!\GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ $ (\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~1_combout\,
	combout => \S_internal~3_combout\);

-- Location: LABCELL_X58_Y34_N30
\block_carry_in[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\A[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & \B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \block_carry_in[1]~0_combout\);

-- Location: LABCELL_X58_Y34_N4
\GEN_BLOCKS:0:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y34_N6
\GEN_BLOCKS:0:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = ( \A[3]~input_o\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\A[3]~input_o\ & ( (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y34_N14
\block_carry_in[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~1_combout\ = ( \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( (!\Cin~input_o\ & (\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\)) ) ) # ( !\GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( 
-- (!\GEN_BLOCKS:0:LACG_INST|Pout~1_combout\) # ((!\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((!\block_carry_in[1]~0_combout\))) # (\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & (!\Cin~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100010111111111110001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_block_carry_in[1]~0_combout\,
	datad => \GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	combout => \block_carry_in[1]~1_combout\);

-- Location: IOIBUF_X59_Y23_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X58_Y34_N0
\S_internal~4\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~4_combout\ = ( \A[4]~input_o\ & ( !\block_carry_in[1]~1_combout\ $ (!\B[4]~input_o\) ) ) # ( !\A[4]~input_o\ & ( !\block_carry_in[1]~1_combout\ $ (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[1]~1_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \S_internal~4_combout\);

-- Location: IOIBUF_X59_Y26_N63
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X58_Y34_N10
\S_internal~5\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~5_combout\ = ( \A[4]~input_o\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((!\block_carry_in[1]~1_combout\) # (\B[4]~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\ & 
-- !\block_carry_in[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100011000111001110011000110001110011100011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_block_carry_in[1]~1_combout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \S_internal~5_combout\);

-- Location: LABCELL_X58_Y34_N32
\GEN_BLOCKS:1:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X59_Y31_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X58_Y34_N34
\GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\)) # (\B[4]~input_o\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X59_Y25_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X58_Y30_N22
\S_internal~6\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~6_combout\ = ( \B[6]~input_o\ & ( !\A[6]~input_o\ $ ((((\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & !\block_carry_in[1]~1_combout\)) # (\GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\B[6]~input_o\ & ( !\A[6]~input_o\ $ 
-- (((!\GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ & ((!\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\) # (\block_carry_in[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111110000010010111111000010110100000011111011010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \ALT_INV_block_carry_in[1]~1_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \S_internal~6_combout\);

-- Location: IOIBUF_X59_Y23_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X58_Y34_N18
\GEN_BLOCKS:1:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ = ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y34_N16
\GEN_BLOCKS:1:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = ( \A[4]~input_o\ & ( (\GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ & ((!\block_carry_in[1]~1_combout\) # (\B[4]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & (\GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ & 
-- !\block_carry_in[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\,
	datad => \ALT_INV_block_carry_in[1]~1_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X58_Y30_N24
\GEN_BLOCKS:1:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = ( \B[6]~input_o\ & ( ((\A[5]~input_o\ & \B[5]~input_o\)) # (\A[6]~input_o\) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (\A[5]~input_o\ & \B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X59_Y36_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X58_Y30_N26
\S_internal~7\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~7_combout\ = ( \A[7]~input_o\ & ( !\B[7]~input_o\ $ (((\GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\))) ) ) # ( !\A[7]~input_o\ & ( !\B[7]~input_o\ $ (((!\GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:1:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \S_internal~7_combout\);

-- Location: LABCELL_X58_Y30_N8
\GEN_BLOCKS:1:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ = ( \A[7]~input_o\ & ( ((\B[6]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( (\B[6]~input_o\ & (\B[7]~input_o\ & \A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y34_N8
\block_carry_in[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~2_combout\ = ( \A[4]~input_o\ & ( (!\B[5]~input_o\ & (\B[4]~input_o\ & \A[5]~input_o\)) # (\B[5]~input_o\ & ((\A[5]~input_o\) # (\B[4]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \block_carry_in[2]~2_combout\);

-- Location: LABCELL_X58_Y30_N10
\GEN_BLOCKS:1:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\A[7]~input_o\ & ( (\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) )

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
	combout => \GEN_BLOCKS:1:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y30_N20
\block_carry_in[2]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~3_combout\ = ( \GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & ( (!\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (((\block_carry_in[2]~2_combout\) # (\GEN_BLOCKS:1:LACG_INST|g_int~2_combout\)))) # (\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & 
-- (!\block_carry_in[1]~1_combout\)) ) ) # ( !\GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101001110111011100100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \ALT_INV_block_carry_in[1]~1_combout\,
	datac => \GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \ALT_INV_block_carry_in[2]~2_combout\,
	dataf => \GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \block_carry_in[2]~3_combout\);

-- Location: IOIBUF_X59_Y28_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X58_Y30_N34
\S_internal~8\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~8_combout\ = ( \B[8]~input_o\ & ( \A[8]~input_o\ & ( \block_carry_in[2]~3_combout\ ) ) ) # ( !\B[8]~input_o\ & ( \A[8]~input_o\ & ( !\block_carry_in[2]~3_combout\ ) ) ) # ( \B[8]~input_o\ & ( !\A[8]~input_o\ & ( !\block_carry_in[2]~3_combout\ 
-- ) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ & ( \block_carry_in[2]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_block_carry_in[2]~3_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S_internal~8_combout\);

-- Location: IOIBUF_X59_Y26_N32
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
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X58_Y30_N36
\S_internal~9\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~9_combout\ = ( \A[8]~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\B[8]~input_o\) # (\block_carry_in[2]~3_combout\)))) ) ) # ( !\A[8]~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (((\block_carry_in[2]~3_combout\ & 
-- \B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_block_carry_in[2]~3_combout\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \S_internal~9_combout\);

-- Location: LABCELL_X58_Y30_N2
\GEN_BLOCKS:2:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X59_Y28_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X58_Y30_N38
\GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = ( \A[8]~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[9]~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y30_N6
\S_internal~10\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~10_combout\ = ( \A[10]~input_o\ & ( \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ & ( \B[10]~input_o\ ) ) ) # ( !\A[10]~input_o\ & ( \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ & ( !\B[10]~input_o\ ) ) ) # ( \A[10]~input_o\ & ( 
-- !\GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ & ( !\B[10]~input_o\ $ (((\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & \block_carry_in[2]~3_combout\))) ) ) ) # ( !\A[10]~input_o\ & ( !\GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ & ( !\B[10]~input_o\ $ 
-- (((!\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\) # (!\block_carry_in[2]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100111100001100001111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_block_carry_in[2]~3_combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \S_internal~10_combout\);

-- Location: LABCELL_X58_Y30_N28
\GEN_BLOCKS:2:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ = (!\A[10]~input_o\ & (\B[10]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) # (\A[10]~input_o\ & (!\B[10]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y30_N14
\GEN_BLOCKS:2:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = ( \A[8]~input_o\ & ( (\GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ & ((\B[8]~input_o\) # (\block_carry_in[2]~3_combout\))) ) ) # ( !\A[8]~input_o\ & ( (\block_carry_in[2]~3_combout\ & (\B[8]~input_o\ & 
-- \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[2]~3_combout\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X59_Y30_N32
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X58_Y30_N30
\GEN_BLOCKS:2:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = ( \B[9]~input_o\ & ( (!\A[10]~input_o\ & (\A[9]~input_o\ & \B[10]~input_o\)) # (\A[10]~input_o\ & ((\B[10]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[10]~input_o\ & \B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X59_Y30_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X58_Y30_N12
\S_internal~11\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~11_combout\ = ( \B[11]~input_o\ & ( !\A[11]~input_o\ $ (((\GEN_BLOCKS:2:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\))) ) ) # ( !\B[11]~input_o\ & ( !\A[11]~input_o\ $ (((!\GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:2:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \S_internal~11_combout\);

-- Location: LABCELL_X58_Y30_N18
\GEN_BLOCKS:2:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ = ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\))) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y30_N16
\GEN_BLOCKS:2:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ = ( \B[11]~input_o\ & ( ((\B[10]~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\A[11]~input_o\ & (\B[10]~input_o\ & \A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y30_N0
\block_carry_in[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~4_combout\ = ( \A[8]~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\ & ((\B[8]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[9]~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \block_carry_in[3]~4_combout\);

-- Location: LABCELL_X58_Y33_N6
\block_carry_in[3]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~5_combout\ = ( \block_carry_in[3]~4_combout\ & ( \block_carry_in[2]~3_combout\ & ( (!\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & !\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) ) ) ) # ( !\block_carry_in[3]~4_combout\ & ( 
-- \block_carry_in[2]~3_combout\ & ( (!\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ & ((!\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\) # (!\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\))) ) ) ) # ( \block_carry_in[3]~4_combout\ & ( !\block_carry_in[2]~3_combout\ & ( 
-- (!\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & ((!\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\))) # (\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & (\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\)) ) ) ) # ( !\block_carry_in[3]~4_combout\ & ( !\block_carry_in[2]~3_combout\ 
-- & ( (!\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) # ((\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001110111010001000111101110000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\,
	datad => \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\,
	datae => \ALT_INV_block_carry_in[3]~4_combout\,
	dataf => \ALT_INV_block_carry_in[2]~3_combout\,
	combout => \block_carry_in[3]~5_combout\);

-- Location: IOIBUF_X59_Y37_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X58_Y33_N30
\S_internal~12\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~12_combout\ = ( \A[12]~input_o\ & ( \B[12]~input_o\ & ( !\block_carry_in[3]~5_combout\ ) ) ) # ( !\A[12]~input_o\ & ( \B[12]~input_o\ & ( \block_carry_in[3]~5_combout\ ) ) ) # ( \A[12]~input_o\ & ( !\B[12]~input_o\ & ( 
-- \block_carry_in[3]~5_combout\ ) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ & ( !\block_carry_in[3]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_block_carry_in[3]~5_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \S_internal~12_combout\);

-- Location: IOIBUF_X59_Y39_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X58_Y33_N14
\S_internal~13\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~13_combout\ = ( \A[12]~input_o\ & ( \B[12]~input_o\ & ( !\A[13]~input_o\ $ (\B[13]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \B[12]~input_o\ & ( !\block_carry_in[3]~5_combout\ $ (!\A[13]~input_o\ $ (!\B[13]~input_o\)) ) ) ) # ( \A[12]~input_o\ 
-- & ( !\B[12]~input_o\ & ( !\block_carry_in[3]~5_combout\ $ (!\A[13]~input_o\ $ (!\B[13]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000110000110011110011000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[3]~5_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \S_internal~13_combout\);

-- Location: IOIBUF_X59_Y25_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X58_Y33_N38
\GEN_BLOCKS:3:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ = ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & \A[12]~input_o\)) # (\B[13]~input_o\ & ((\A[12]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\B[13]~input_o\ & \A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y33_N36
\GEN_BLOCKS:3:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = ( \B[12]~input_o\ & ( (!\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) ) # ( !\B[12]~input_o\ & ( (\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X58_Y33_N20
\S_internal~14\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~14_combout\ = ( \block_carry_in[3]~5_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (\GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\)) ) ) # ( !\block_carry_in[3]~5_combout\ & ( !\B[14]~input_o\ $ (!\A[14]~input_o\ $ 
-- (((\GEN_BLOCKS:3:LACG_INST|Pout~0_combout\) # (\GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \ALT_INV_block_carry_in[3]~5_combout\,
	combout => \S_internal~14_combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X58_Y33_N8
\GEN_BLOCKS:3:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y33_N10
\GEN_BLOCKS:3:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = ( \block_carry_in[3]~5_combout\ & ( (\B[12]~input_o\ & (\A[12]~input_o\ & \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\)) ) ) # ( !\block_carry_in[3]~5_combout\ & ( (\GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ & 
-- ((\A[12]~input_o\) # (\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_block_carry_in[3]~5_combout\,
	combout => \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X58_Y33_N24
\GEN_BLOCKS:3:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ = ( \A[14]~input_o\ & ( ((\B[13]~input_o\ & \A[13]~input_o\)) # (\B[14]~input_o\) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X59_Y36_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X58_Y33_N26
\S_internal~15\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~15_combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (((\GEN_BLOCKS:3:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\))) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:3:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \S_internal~15_combout\);

-- Location: LABCELL_X58_Y33_N32
\GEN_BLOCKS:3:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = ( \B[14]~input_o\ & ( \B[15]~input_o\ & ( (\A[14]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[14]~input_o\ & ( \B[15]~input_o\ & ( \A[15]~input_o\ ) ) ) # ( \B[14]~input_o\ & ( !\B[15]~input_o\ & ( 
-- (\A[15]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y33_N22
\GEN_BLOCKS:3:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ = ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y33_N18
\block_carry_in[4]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~6_combout\ = ( \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ( \B[12]~input_o\ & ( (!\B[13]~input_o\ & ((!\A[13]~input_o\ & ((!\GEN_BLOCKS:3:LACG_INST|g_int~2_combout\))) # (\A[13]~input_o\ & (!\A[12]~input_o\)))) # (\B[13]~input_o\ & 
-- (!\A[12]~input_o\ & (!\A[13]~input_o\))) ) ) ) # ( !\GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ( \B[12]~input_o\ & ( !\GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) ) # ( \GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ( !\B[12]~input_o\ & ( 
-- (!\GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ & ((!\B[13]~input_o\) # ((!\A[13]~input_o\)))) # (\GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ & (\A[12]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\)))) ) ) ) # ( !\GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ( 
-- !\B[12]~input_o\ & ( !\GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110100001001011111111000000001110100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\,
	datae => \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \block_carry_in[4]~6_combout\);

-- Location: LABCELL_X58_Y33_N0
\block_carry_in[4]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~34_combout\ = ( !\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( (\GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & (((\block_carry_in[3]~4_combout\ & \GEN_BLOCKS:2:LACG_INST|Pout~1_combout\)) # 
-- (\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\)))) ) ) # ( \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( (\GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ((!\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & 
-- (\GEN_BLOCKS:2:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & ((\block_carry_in[2]~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000010001000000000001000100000000000100110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\,
	datab => \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_block_carry_in[2]~3_combout\,
	datad => \GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\,
	datae => \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\,
	datag => \ALT_INV_block_carry_in[3]~4_combout\,
	combout => \block_carry_in[4]~34_combout\);

-- Location: LABCELL_X47_Y52_N22
\block_carry_in[4]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~7_combout\ = ( \block_carry_in[4]~6_combout\ & ( !\block_carry_in[4]~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_block_carry_in[4]~6_combout\,
	dataf => \ALT_INV_block_carry_in[4]~34_combout\,
	combout => \block_carry_in[4]~7_combout\);

-- Location: IOIBUF_X48_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X53_Y56_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X49_Y52_N2
\S_internal~16\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~16_combout\ = ( \B[16]~input_o\ & ( !\block_carry_in[4]~7_combout\ $ (!\A[16]~input_o\) ) ) # ( !\B[16]~input_o\ & ( !\block_carry_in[4]~7_combout\ $ (\A[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[4]~7_combout\,
	datac => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \S_internal~16_combout\);

-- Location: IOIBUF_X49_Y56_N94
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X49_Y52_N26
\S_internal~17\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~17_combout\ = ( \A[17]~input_o\ & ( \B[16]~input_o\ & ( !\B[17]~input_o\ $ (((!\block_carry_in[4]~7_combout\) # (\A[16]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \B[16]~input_o\ & ( !\B[17]~input_o\ $ (((!\A[16]~input_o\ & 
-- \block_carry_in[4]~7_combout\))) ) ) ) # ( \A[17]~input_o\ & ( !\B[16]~input_o\ & ( !\B[17]~input_o\ $ (((\A[16]~input_o\ & !\block_carry_in[4]~7_combout\))) ) ) ) # ( !\A[17]~input_o\ & ( !\B[16]~input_o\ & ( !\B[17]~input_o\ $ (((!\A[16]~input_o\) # 
-- (\block_carry_in[4]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001010101100110011010101010101010011001100101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_block_carry_in[4]~7_combout\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \S_internal~17_combout\);

-- Location: MLABCELL_X49_Y52_N28
\GEN_BLOCKS:4:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = ( \B[16]~input_o\ & ( (!\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) ) # ( !\B[16]~input_o\ & ( (\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X49_Y52_N30
\GEN_BLOCKS:4:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ = ( \B[16]~input_o\ & ( (!\B[17]~input_o\ & (\A[16]~input_o\ & \A[17]~input_o\)) # (\B[17]~input_o\ & ((\A[17]~input_o\) # (\A[16]~input_o\))) ) ) # ( !\B[16]~input_o\ & ( (\B[17]~input_o\ & \A[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X48_Y56_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X53_Y56_N94
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: MLABCELL_X49_Y52_N32
\S_internal~18\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~18_combout\ = ( \A[18]~input_o\ & ( !\B[18]~input_o\ $ ((((\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & !\block_carry_in[4]~7_combout\)) # (\GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\A[18]~input_o\ & ( !\B[18]~input_o\ $ 
-- (((!\GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ & ((!\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\) # (\block_carry_in[4]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001110001100011100111000110010001100011100111000110001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datac => \ALT_INV_block_carry_in[4]~7_combout\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \S_internal~18_combout\);

-- Location: IOIBUF_X48_Y56_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: MLABCELL_X49_Y52_N38
\GEN_BLOCKS:4:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ = ( \A[18]~input_o\ & ( ((\B[17]~input_o\ & \A[17]~input_o\)) # (\B[18]~input_o\) ) ) # ( !\A[18]~input_o\ & ( (\B[17]~input_o\ & (\B[18]~input_o\ & \A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\);

-- Location: MLABCELL_X49_Y52_N22
\GEN_BLOCKS:4:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ = ( \A[18]~input_o\ & ( (!\B[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) ) # ( !\A[18]~input_o\ & ( (\B[18]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\);

-- Location: MLABCELL_X49_Y52_N20
\GEN_BLOCKS:4:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ = ( \B[16]~input_o\ & ( (\GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ & ((!\block_carry_in[4]~7_combout\) # (\A[16]~input_o\))) ) ) # ( !\B[16]~input_o\ & ( (\A[16]~input_o\ & (!\block_carry_in[4]~7_combout\ & 
-- \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_block_carry_in[4]~7_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X55_Y56_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: MLABCELL_X49_Y52_N36
\S_internal~19\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~19_combout\ = ( \A[19]~input_o\ & ( !\B[19]~input_o\ $ (((\GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:4:LACG_INST|g_int~1_combout\))) ) ) # ( !\A[19]~input_o\ & ( !\B[19]~input_o\ $ (((!\GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ & 
-- !\GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \S_internal~19_combout\);

-- Location: IOIBUF_X44_Y56_N94
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X49_Y52_N6
\GEN_BLOCKS:4:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ = ( \A[19]~input_o\ & ( ((\A[18]~input_o\ & \B[18]~input_o\)) # (\B[19]~input_o\) ) ) # ( !\A[19]~input_o\ & ( (\A[18]~input_o\ & (\B[19]~input_o\ & \B[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X49_Y52_N4
\GEN_BLOCKS:4:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ = ( \A[19]~input_o\ & ( (!\B[19]~input_o\ & (!\A[18]~input_o\ $ (!\B[18]~input_o\))) ) ) # ( !\A[19]~input_o\ & ( (\B[19]~input_o\ & (!\A[18]~input_o\ $ (!\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\);

-- Location: MLABCELL_X49_Y52_N10
\block_carry_in[5]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~8_combout\ = ( \B[17]~input_o\ & ( \B[16]~input_o\ & ( (!\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & (((!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\)))) # (\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & (!\A[17]~input_o\ & (!\A[16]~input_o\))) ) 
-- ) ) # ( !\B[17]~input_o\ & ( \B[16]~input_o\ & ( (!\A[17]~input_o\ & (((!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\)))) # (\A[17]~input_o\ & ((!\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & ((!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\))) # 
-- (\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & (!\A[16]~input_o\)))) ) ) ) # ( \B[17]~input_o\ & ( !\B[16]~input_o\ & ( (!\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & (((!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\)))) # (\GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & 
-- (!\A[17]~input_o\ & ((!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\) # (\A[16]~input_o\)))) ) ) ) # ( !\B[17]~input_o\ & ( !\B[16]~input_o\ & ( (!\GEN_BLOCKS:4:LACG_INST|g_int~2_combout\) # ((\A[17]~input_o\ & (\A[16]~input_o\ & 
-- \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110001111100001010001011110000111001001111000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\,
	datae => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \block_carry_in[5]~8_combout\);

-- Location: MLABCELL_X49_Y52_N34
\GEN_BLOCKS:4:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|Pout~combout\ = (\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:4:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:4:LACG_INST|Pout~combout\);

-- Location: LABCELL_X47_Y52_N6
\block_carry_in[5]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~9_combout\ = ( \block_carry_in[4]~7_combout\ & ( \GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ( \block_carry_in[5]~8_combout\ ) ) ) # ( \block_carry_in[4]~7_combout\ & ( !\GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ( 
-- \block_carry_in[5]~8_combout\ ) ) ) # ( !\block_carry_in[4]~7_combout\ & ( !\GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ( \block_carry_in[5]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_block_carry_in[5]~8_combout\,
	datae => \ALT_INV_block_carry_in[4]~7_combout\,
	dataf => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[5]~9_combout\);

-- Location: IOIBUF_X46_Y56_N63
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X47_Y52_N30
\S_internal~20\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~20_combout\ = ( \A[20]~input_o\ & ( !\B[20]~input_o\ $ (!\block_carry_in[5]~9_combout\) ) ) # ( !\A[20]~input_o\ & ( !\B[20]~input_o\ $ (\block_carry_in[5]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_block_carry_in[5]~9_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \S_internal~20_combout\);

-- Location: IOIBUF_X44_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X47_Y52_N28
\S_internal~21\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~21_combout\ = ( \A[21]~input_o\ & ( !\B[21]~input_o\ $ (((!\B[20]~input_o\ & (!\block_carry_in[5]~9_combout\ & \A[20]~input_o\)) # (\B[20]~input_o\ & ((!\block_carry_in[5]~9_combout\) # (\A[20]~input_o\))))) ) ) # ( !\A[21]~input_o\ & ( 
-- !\B[21]~input_o\ $ (((!\B[20]~input_o\ & ((!\A[20]~input_o\) # (\block_carry_in[5]~9_combout\))) # (\B[20]~input_o\ & (\block_carry_in[5]~9_combout\ & !\A[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111010010010010111101001010110100001011011011010000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_block_carry_in[5]~9_combout\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \S_internal~21_combout\);

-- Location: IOIBUF_X51_Y56_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X47_Y52_N14
\GEN_BLOCKS:5:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ = ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) ) # ( !\A[21]~input_o\ & ( (\B[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X47_Y52_N12
\GEN_BLOCKS:5:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ = (!\A[21]~input_o\ & (\B[20]~input_o\ & (\A[20]~input_o\ & \B[21]~input_o\))) # (\A[21]~input_o\ & (((\B[20]~input_o\ & \A[20]~input_o\)) # (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X46_Y56_N94
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LABCELL_X47_Y52_N16
\S_internal~22\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~22_combout\ = ( \block_carry_in[5]~9_combout\ & ( !\B[22]~input_o\ $ (!\GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ $ (\A[22]~input_o\)) ) ) # ( !\block_carry_in[5]~9_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\ $ 
-- (((\GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\) # (\GEN_BLOCKS:5:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101011010101001010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_block_carry_in[5]~9_combout\,
	combout => \S_internal~22_combout\);

-- Location: IOIBUF_X48_Y56_N94
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LABCELL_X47_Y52_N24
\GEN_BLOCKS:5:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ = ( \B[22]~input_o\ & ( (!\A[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))) ) ) # ( !\B[22]~input_o\ & ( (\A[22]~input_o\ & (!\A[21]~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X47_Y52_N26
\GEN_BLOCKS:5:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ = ( \block_carry_in[5]~9_combout\ & ( (\B[20]~input_o\ & (\A[20]~input_o\ & \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\)) ) ) # ( !\block_carry_in[5]~9_combout\ & ( (\GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ & 
-- ((\A[20]~input_o\) # (\B[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_block_carry_in[5]~9_combout\,
	combout => \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X47_Y52_N0
\GEN_BLOCKS:5:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ = ( \B[22]~input_o\ & ( ((\A[21]~input_o\ & \B[21]~input_o\)) # (\A[22]~input_o\) ) ) # ( !\B[22]~input_o\ & ( (\A[22]~input_o\ & (\A[21]~input_o\ & \B[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X51_Y56_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X47_Y52_N2
\S_internal~23\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~23_combout\ = ( \B[23]~input_o\ & ( !\A[23]~input_o\ $ (((\GEN_BLOCKS:5:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\))) ) ) # ( !\B[23]~input_o\ & ( !\A[23]~input_o\ $ (((!\GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:5:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \GEN_BLOCKS:5:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \S_internal~23_combout\);

-- Location: IOIBUF_X59_Y4_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X47_Y52_N10
\GEN_BLOCKS:5:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ = ( \B[22]~input_o\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)) # (\A[23]~input_o\ & ((\A[22]~input_o\) # (\B[23]~input_o\))) ) ) # ( !\B[22]~input_o\ & ( (\A[23]~input_o\ & \B[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X47_Y52_N8
\GEN_BLOCKS:5:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ = ( \B[22]~input_o\ & ( (!\A[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) ) # ( !\B[22]~input_o\ & ( (\A[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X47_Y52_N34
\block_carry_in[6]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~10_combout\ = ( \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ & ( \A[21]~input_o\ & ( (!\B[21]~input_o\ & ((!\A[20]~input_o\ & ((!\GEN_BLOCKS:5:LACG_INST|g_int~2_combout\) # (\B[20]~input_o\))) # (\A[20]~input_o\ & ((!\B[20]~input_o\))))) ) ) 
-- ) # ( !\GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ & ( \A[21]~input_o\ & ( !\GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ ) ) ) # ( \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ & ( !\A[21]~input_o\ & ( (!\B[21]~input_o\ & 
-- (((!\GEN_BLOCKS:5:LACG_INST|g_int~2_combout\)))) # (\B[21]~input_o\ & ((!\A[20]~input_o\ & ((!\GEN_BLOCKS:5:LACG_INST|g_int~2_combout\) # (\B[20]~input_o\))) # (\A[20]~input_o\ & ((!\B[20]~input_o\))))) ) ) ) # ( !\GEN_BLOCKS:5:LACG_INST|Pout~1_combout\ & 
-- ( !\A[21]~input_o\ & ( !\GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100011110010011110000111100001010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \block_carry_in[6]~10_combout\);

-- Location: LABCELL_X47_Y52_N18
\GEN_BLOCKS:5:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|Pout~combout\ = (\GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:5:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:5:LACG_INST|Pout~combout\);

-- Location: LABCELL_X47_Y52_N36
\block_carry_in[6]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~11_combout\ = ( \GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( \block_carry_in[4]~34_combout\ & ( (!\GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (\block_carry_in[6]~10_combout\ & \block_carry_in[5]~8_combout\)) ) ) ) # ( 
-- !\GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( \block_carry_in[4]~34_combout\ & ( \block_carry_in[6]~10_combout\ ) ) ) # ( \GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( !\block_carry_in[4]~34_combout\ & ( (\block_carry_in[6]~10_combout\ & 
-- (\block_carry_in[5]~8_combout\ & ((!\GEN_BLOCKS:4:LACG_INST|Pout~combout\) # (\block_carry_in[4]~6_combout\)))) ) ) ) # ( !\GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( !\block_carry_in[4]~34_combout\ & ( \block_carry_in[6]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000100000001100110011001100110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~combout\,
	datab => \ALT_INV_block_carry_in[6]~10_combout\,
	datac => \ALT_INV_block_carry_in[5]~8_combout\,
	datad => \ALT_INV_block_carry_in[4]~6_combout\,
	datae => \GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \ALT_INV_block_carry_in[4]~34_combout\,
	combout => \block_carry_in[6]~11_combout\);

-- Location: LABCELL_X58_Y7_N22
\S_internal~24\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~24_combout\ = ( \A[24]~input_o\ & ( \block_carry_in[6]~11_combout\ & ( !\B[24]~input_o\ ) ) ) # ( !\A[24]~input_o\ & ( \block_carry_in[6]~11_combout\ & ( \B[24]~input_o\ ) ) ) # ( \A[24]~input_o\ & ( !\block_carry_in[6]~11_combout\ & ( 
-- \B[24]~input_o\ ) ) ) # ( !\A[24]~input_o\ & ( !\block_carry_in[6]~11_combout\ & ( !\B[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_block_carry_in[6]~11_combout\,
	combout => \S_internal~24_combout\);

-- Location: IOIBUF_X59_Y6_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X59_Y6_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X58_Y7_N24
\S_internal~25\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~25_combout\ = ( \B[25]~input_o\ & ( \block_carry_in[6]~11_combout\ & ( !\A[25]~input_o\ $ (((\A[24]~input_o\ & \B[24]~input_o\))) ) ) ) # ( !\B[25]~input_o\ & ( \block_carry_in[6]~11_combout\ & ( !\A[25]~input_o\ $ (((!\A[24]~input_o\) # 
-- (!\B[24]~input_o\))) ) ) ) # ( \B[25]~input_o\ & ( !\block_carry_in[6]~11_combout\ & ( !\A[25]~input_o\ $ (((\B[24]~input_o\) # (\A[24]~input_o\))) ) ) ) # ( !\B[25]~input_o\ & ( !\block_carry_in[6]~11_combout\ & ( !\A[25]~input_o\ $ (((!\A[24]~input_o\ & 
-- !\B[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000110000110000111100001111001111001111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_block_carry_in[6]~11_combout\,
	combout => \S_internal~25_combout\);

-- Location: IOIBUF_X59_Y7_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X58_Y7_N10
\GEN_BLOCKS:6:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = ( \B[24]~input_o\ & ( (!\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X58_Y7_N8
\GEN_BLOCKS:6:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ = ( \B[24]~input_o\ & ( (!\A[25]~input_o\ & (\A[24]~input_o\ & \B[25]~input_o\)) # (\A[25]~input_o\ & ((\B[25]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (\A[25]~input_o\ & \B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X58_Y7_N14
\S_internal~26\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~26_combout\ = ( \B[26]~input_o\ & ( !\A[26]~input_o\ $ ((((!\block_carry_in[6]~11_combout\ & \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\)) # (\GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\B[26]~input_o\ & ( !\A[26]~input_o\ $ 
-- (((!\GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ & ((!\GEN_BLOCKS:6:LACG_INST|Pout~0_combout\) # (\block_carry_in[6]~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111001100001110011100110011000110001100111100011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[6]~11_combout\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \S_internal~26_combout\);

-- Location: IOIBUF_X59_Y7_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LABCELL_X58_Y7_N36
\GEN_BLOCKS:6:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ = ( \B[26]~input_o\ & ( ((\A[25]~input_o\ & \B[25]~input_o\)) # (\A[26]~input_o\) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (\A[25]~input_o\ & \B[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X58_Y7_N0
\GEN_BLOCKS:6:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y7_N2
\GEN_BLOCKS:6:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ = ( \B[24]~input_o\ & ( (\GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ & ((!\block_carry_in[6]~11_combout\) # (\A[24]~input_o\))) ) ) # ( !\B[24]~input_o\ & ( (!\block_carry_in[6]~11_combout\ & (\A[24]~input_o\ & 
-- \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[6]~11_combout\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X58_Y7_N38
\S_internal~27\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~27_combout\ = ( \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ & ( !\B[27]~input_o\ $ (\A[27]~input_o\) ) ) # ( !\GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ & ( !\B[27]~input_o\ $ (!\GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ $ (\A[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \GEN_BLOCKS:6:LACG_INST|ALT_INV_C[3]~1_combout\,
	combout => \S_internal~27_combout\);

-- Location: IOIBUF_X39_Y0_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LABCELL_X58_Y7_N12
\GEN_BLOCKS:6:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (\B[27]~input_o\ & \A[27]~input_o\)) # (\A[26]~input_o\ & ((\A[27]~input_o\) # (\B[27]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\B[27]~input_o\ & \A[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y7_N6
\GEN_BLOCKS:6:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ = ( \B[26]~input_o\ & ( (!\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) ) # ( !\B[26]~input_o\ & ( (\A[26]~input_o\ & (!\B[27]~input_o\ $ (!\A[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y7_N28
\block_carry_in[7]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~12_combout\ = ( \A[24]~input_o\ & ( \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ & ( (!\A[25]~input_o\ & ((!\B[25]~input_o\ & (!\GEN_BLOCKS:6:LACG_INST|g_int~2_combout\)) # (\B[25]~input_o\ & ((!\B[24]~input_o\))))) # (\A[25]~input_o\ & 
-- (((!\B[25]~input_o\ & !\B[24]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ & ( (!\GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ & ((!\A[25]~input_o\) # ((!\B[25]~input_o\)))) # (\GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ & 
-- (\B[24]~input_o\ & (!\A[25]~input_o\ $ (!\B[25]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ & ( !\GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ ) ) ) # ( !\A[24]~input_o\ & ( !\GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ & ( 
-- !\GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001000110110101101101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \block_carry_in[7]~12_combout\);

-- Location: LABCELL_X58_Y7_N4
\GEN_BLOCKS:6:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:6:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:6:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y4_N2
\block_carry_in[7]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~13_combout\ = ( \GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( (\block_carry_in[7]~12_combout\ & \block_carry_in[6]~11_combout\) ) ) # ( !\GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( \block_carry_in[7]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[7]~12_combout\,
	datad => \ALT_INV_block_carry_in[6]~11_combout\,
	dataf => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[7]~13_combout\);

-- Location: MLABCELL_X37_Y4_N2
\S_internal~28\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~28_combout\ = ( \B[28]~input_o\ & ( \block_carry_in[7]~13_combout\ & ( !\A[28]~input_o\ ) ) ) # ( !\B[28]~input_o\ & ( \block_carry_in[7]~13_combout\ & ( \A[28]~input_o\ ) ) ) # ( \B[28]~input_o\ & ( !\block_carry_in[7]~13_combout\ & ( 
-- \A[28]~input_o\ ) ) ) # ( !\B[28]~input_o\ & ( !\block_carry_in[7]~13_combout\ & ( !\A[28]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_block_carry_in[7]~13_combout\,
	combout => \S_internal~28_combout\);

-- Location: IOIBUF_X30_Y0_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X37_Y4_N26
\S_internal~29\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~29_combout\ = ( \B[29]~input_o\ & ( \block_carry_in[7]~13_combout\ & ( !\A[29]~input_o\ $ (((\A[28]~input_o\ & \B[28]~input_o\))) ) ) ) # ( !\B[29]~input_o\ & ( \block_carry_in[7]~13_combout\ & ( !\A[29]~input_o\ $ (((!\A[28]~input_o\) # 
-- (!\B[28]~input_o\))) ) ) ) # ( \B[29]~input_o\ & ( !\block_carry_in[7]~13_combout\ & ( !\A[29]~input_o\ $ (((\B[28]~input_o\) # (\A[28]~input_o\))) ) ) ) # ( !\B[29]~input_o\ & ( !\block_carry_in[7]~13_combout\ & ( !\A[29]~input_o\ $ (((!\A[28]~input_o\ & 
-- !\B[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010100101011001010101010110010101101010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_block_carry_in[7]~13_combout\,
	combout => \S_internal~29_combout\);

-- Location: MLABCELL_X37_Y4_N28
\GEN_BLOCKS:7:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ = ( \A[28]~input_o\ & ( (!\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\B[28]~input_o\ & (!\A[29]~input_o\ $ (!\B[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: MLABCELL_X37_Y4_N30
\GEN_BLOCKS:7:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ = ( \A[28]~input_o\ & ( (!\A[29]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\)) # (\A[29]~input_o\ & ((\B[29]~input_o\) # (\B[28]~input_o\))) ) ) # ( !\A[28]~input_o\ & ( (\A[29]~input_o\ & \B[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\);

-- Location: MLABCELL_X37_Y4_N32
\S_internal~30\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~30_combout\ = ( \block_carry_in[7]~13_combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\ $ (\GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\)) ) ) # ( !\block_carry_in[7]~13_combout\ & ( !\A[30]~input_o\ $ (!\B[30]~input_o\ $ 
-- (((\GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\) # (\GEN_BLOCKS:7:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111000011011010011100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \ALT_INV_block_carry_in[7]~13_combout\,
	combout => \S_internal~30_combout\);

-- Location: MLABCELL_X37_Y4_N20
\GEN_BLOCKS:7:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ = ( \B[30]~input_o\ & ( (!\A[30]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) ) # ( !\B[30]~input_o\ & ( (\A[30]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\);

-- Location: MLABCELL_X37_Y4_N22
\GEN_BLOCKS:7:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ = ( \block_carry_in[7]~13_combout\ & ( (\GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ & (\A[28]~input_o\ & \B[28]~input_o\)) ) ) # ( !\block_carry_in[7]~13_combout\ & ( (\GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ & 
-- ((\B[28]~input_o\) # (\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~0_combout\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_block_carry_in[7]~13_combout\,
	combout => \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X33_Y0_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X33_Y0_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X37_Y4_N38
\GEN_BLOCKS:7:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ = ( \B[30]~input_o\ & ( ((\A[29]~input_o\ & \B[29]~input_o\)) # (\A[30]~input_o\) ) ) # ( !\B[30]~input_o\ & ( (\A[29]~input_o\ & (\B[29]~input_o\ & \A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\);

-- Location: MLABCELL_X37_Y4_N36
\S_internal~31\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~31_combout\ = ( \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ & ( !\A[31]~input_o\ $ (\B[31]~input_o\) ) ) # ( !\GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ & ( !\GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ $ (!\A[31]~input_o\ $ (\B[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\,
	combout => \S_internal~31_combout\);

-- Location: IOIBUF_X32_Y0_N63
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X41_Y0_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: MLABCELL_X37_Y4_N4
\GEN_BLOCKS:7:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|g_int~2_combout\ = ( \B[30]~input_o\ & ( (!\A[30]~input_o\ & (\A[31]~input_o\ & \B[31]~input_o\)) # (\A[30]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\B[30]~input_o\ & ( (\A[31]~input_o\ & \B[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X37_Y4_N6
\GEN_BLOCKS:7:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ = ( \B[30]~input_o\ & ( (!\A[30]~input_o\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\))) ) ) # ( !\B[30]~input_o\ & ( (\A[30]~input_o\ & (!\A[31]~input_o\ $ (!\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\);

-- Location: MLABCELL_X37_Y4_N8
\block_carry_in[8]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~14_combout\ = ( \B[29]~input_o\ & ( \A[28]~input_o\ & ( (!\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & (((!\B[28]~input_o\ & !\A[29]~input_o\)))) ) ) 
-- ) # ( !\B[29]~input_o\ & ( \A[28]~input_o\ & ( (!\A[29]~input_o\ & (!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\)) # (\A[29]~input_o\ & ((!\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\)) # 
-- (\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & ((!\B[28]~input_o\))))) ) ) ) # ( \B[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & 
-- (!\A[29]~input_o\ & ((!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\) # (\B[28]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\GEN_BLOCKS:7:LACG_INST|g_int~2_combout\) # ((\B[28]~input_o\ & (\A[29]~input_o\ & 
-- \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011101010101011000010101010101011001010101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~2_combout\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~1_combout\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \block_carry_in[8]~14_combout\);

-- Location: MLABCELL_X37_Y4_N34
\GEN_BLOCKS:7:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:7:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:7:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y4_N24
\block_carry_in[8]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~15_combout\ = ( \block_carry_in[7]~13_combout\ & ( \block_carry_in[8]~14_combout\ ) ) # ( !\block_carry_in[7]~13_combout\ & ( (\block_carry_in[8]~14_combout\ & !\GEN_BLOCKS:7:LACG_INST|Pout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[8]~14_combout\,
	datac => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \ALT_INV_block_carry_in[7]~13_combout\,
	combout => \block_carry_in[8]~15_combout\);

-- Location: LABCELL_X40_Y4_N26
\S_internal~32\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~32_combout\ = ( \block_carry_in[8]~15_combout\ & ( !\A[32]~input_o\ $ (!\B[32]~input_o\) ) ) # ( !\block_carry_in[8]~15_combout\ & ( !\A[32]~input_o\ $ (\B[32]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_block_carry_in[8]~15_combout\,
	combout => \S_internal~32_combout\);

-- Location: IOIBUF_X35_Y0_N1
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LABCELL_X40_Y4_N30
\S_internal~33\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~33_combout\ = ( \A[32]~input_o\ & ( \block_carry_in[8]~15_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\B[32]~input_o\)) ) ) ) # ( !\A[32]~input_o\ & ( \block_carry_in[8]~15_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\) ) ) ) # ( 
-- \A[32]~input_o\ & ( !\block_carry_in[8]~15_combout\ & ( !\B[33]~input_o\ $ (\A[33]~input_o\) ) ) ) # ( !\A[32]~input_o\ & ( !\block_carry_in[8]~15_combout\ & ( !\B[33]~input_o\ $ (!\A[33]~input_o\ $ (\B[32]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001011010010101011010010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_block_carry_in[8]~15_combout\,
	combout => \S_internal~33_combout\);

-- Location: LABCELL_X40_Y4_N32
\GEN_BLOCKS:8:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ = (!\B[33]~input_o\ & (\A[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\)))) # (\B[33]~input_o\ & (!\A[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[32]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X40_Y4_N34
\GEN_BLOCKS:8:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ = ( \A[32]~input_o\ & ( (!\B[33]~input_o\ & (\A[33]~input_o\ & \B[32]~input_o\)) # (\B[33]~input_o\ & ((\B[32]~input_o\) # (\A[33]~input_o\))) ) ) # ( !\A[32]~input_o\ & ( (\B[33]~input_o\ & \A[33]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[33]~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_A[32]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X39_Y0_N1
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X40_Y4_N16
\S_internal~34\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~34_combout\ = ( \B[34]~input_o\ & ( !\A[34]~input_o\ $ ((((\GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & !\block_carry_in[8]~15_combout\)) # (\GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\B[34]~input_o\ & ( !\A[34]~input_o\ $ 
-- (((!\GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ & ((!\GEN_BLOCKS:8:LACG_INST|Pout~0_combout\) # (\block_carry_in[8]~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001110001100011100111000110010001100011100111000110001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datac => \ALT_INV_block_carry_in[8]~15_combout\,
	datad => \ALT_INV_A[34]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \S_internal~34_combout\);

-- Location: LABCELL_X40_Y4_N22
\GEN_BLOCKS:8:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ = ( \A[33]~input_o\ & ( (!\B[33]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[33]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X40_Y4_N6
\GEN_BLOCKS:8:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ = ( \block_carry_in[8]~15_combout\ & ( (\A[32]~input_o\ & (\GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ & \B[32]~input_o\)) ) ) # ( !\block_carry_in[8]~15_combout\ & ( (\GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ & 
-- ((\B[32]~input_o\) # (\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datac => \GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~0_combout\,
	datad => \ALT_INV_B[32]~input_o\,
	dataf => \ALT_INV_block_carry_in[8]~15_combout\,
	combout => \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X40_Y4_N20
\GEN_BLOCKS:8:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ = ( \A[33]~input_o\ & ( (!\B[34]~input_o\ & (\A[34]~input_o\ & \B[33]~input_o\)) # (\B[34]~input_o\ & ((\B[33]~input_o\) # (\A[34]~input_o\))) ) ) # ( !\A[33]~input_o\ & ( (\B[34]~input_o\ & \A[34]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[34]~input_o\,
	datab => \ALT_INV_A[34]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	dataf => \ALT_INV_A[33]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X35_Y0_N94
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X40_Y4_N4
\S_internal~35\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~35_combout\ = ( \A[35]~input_o\ & ( !\B[35]~input_o\ $ (((\GEN_BLOCKS:8:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\))) ) ) # ( !\A[35]~input_o\ & ( !\B[35]~input_o\ $ (((!\GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:8:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:8:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \S_internal~35_combout\);

-- Location: IOIBUF_X59_Y12_N32
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X59_Y12_N1
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X40_Y4_N8
\GEN_BLOCKS:8:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ = ( \A[35]~input_o\ & ( ((\B[34]~input_o\ & \A[34]~input_o\)) # (\B[35]~input_o\) ) ) # ( !\A[35]~input_o\ & ( (\B[34]~input_o\ & (\A[34]~input_o\ & \B[35]~input_o\)) ) )

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
	combout => \GEN_BLOCKS:8:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X40_Y4_N10
\GEN_BLOCKS:8:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ = ( \A[35]~input_o\ & ( (!\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) ) # ( !\A[35]~input_o\ & ( (\B[35]~input_o\ & (!\B[34]~input_o\ $ (!\A[34]~input_o\))) ) )

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
	combout => \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X40_Y4_N36
\block_carry_in[9]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~17_combout\ = ( \B[32]~input_o\ & ( \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ( (!\A[33]~input_o\ & ((!\B[33]~input_o\ & (!\GEN_BLOCKS:8:LACG_INST|g_int~2_combout\)) # (\B[33]~input_o\ & ((!\A[32]~input_o\))))) # (\A[33]~input_o\ & 
-- (((!\B[33]~input_o\ & !\A[32]~input_o\)))) ) ) ) # ( !\B[32]~input_o\ & ( \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ( (!\GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ & ((!\A[33]~input_o\) # ((!\B[33]~input_o\)))) # (\GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ & 
-- (\A[32]~input_o\ & (!\A[33]~input_o\ $ (!\B[33]~input_o\)))) ) ) ) # ( \B[32]~input_o\ & ( !\GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ( !\GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ ) ) ) # ( !\B[32]~input_o\ & ( !\GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ( 
-- !\GEN_BLOCKS:8:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101111001011110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:8:LACG_INST|ALT_INV_g_int~2_combout\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \ALT_INV_B[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	datae => \ALT_INV_B[32]~input_o\,
	dataf => \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \block_carry_in[9]~17_combout\);

-- Location: LABCELL_X40_Y4_N18
\GEN_BLOCKS:8:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:8:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:8:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y4_N12
\block_carry_in[9]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~16_combout\ = ( \GEN_BLOCKS:8:LACG_INST|Pout~combout\ & ( \GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( (!\block_carry_in[8]~14_combout\) # ((\GEN_BLOCKS:7:LACG_INST|Pout~combout\ & ((!\block_carry_in[6]~11_combout\) # 
-- (!\block_carry_in[7]~12_combout\)))) ) ) ) # ( \GEN_BLOCKS:8:LACG_INST|Pout~combout\ & ( !\GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( (!\block_carry_in[8]~14_combout\) # ((\GEN_BLOCKS:7:LACG_INST|Pout~combout\ & !\block_carry_in[7]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100110000000000000000001100111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[6]~11_combout\,
	datab => \ALT_INV_block_carry_in[8]~14_combout\,
	datac => \GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\,
	datad => \ALT_INV_block_carry_in[7]~12_combout\,
	datae => \GEN_BLOCKS:8:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[9]~16_combout\);

-- Location: LABCELL_X55_Y4_N22
\block_carry_in[9]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~18_combout\ = ( !\block_carry_in[9]~16_combout\ & ( \block_carry_in[9]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[9]~17_combout\,
	dataf => \ALT_INV_block_carry_in[9]~16_combout\,
	combout => \block_carry_in[9]~18_combout\);

-- Location: LABCELL_X58_Y10_N22
\S_internal~36\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~36_combout\ = ( \block_carry_in[9]~18_combout\ & ( !\B[36]~input_o\ $ (!\A[36]~input_o\) ) ) # ( !\block_carry_in[9]~18_combout\ & ( !\B[36]~input_o\ $ (\A[36]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[36]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_block_carry_in[9]~18_combout\,
	combout => \S_internal~36_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LABCELL_X58_Y10_N26
\S_internal~37\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~37_combout\ = ( \B[36]~input_o\ & ( \A[37]~input_o\ & ( !\B[37]~input_o\ $ (((!\block_carry_in[9]~18_combout\) # (\A[36]~input_o\))) ) ) ) # ( !\B[36]~input_o\ & ( \A[37]~input_o\ & ( !\B[37]~input_o\ $ (((!\block_carry_in[9]~18_combout\ & 
-- \A[36]~input_o\))) ) ) ) # ( \B[36]~input_o\ & ( !\A[37]~input_o\ & ( !\B[37]~input_o\ $ (((\block_carry_in[9]~18_combout\ & !\A[36]~input_o\))) ) ) ) # ( !\B[36]~input_o\ & ( !\A[37]~input_o\ & ( !\B[37]~input_o\ $ (((!\A[36]~input_o\) # 
-- (\block_carry_in[9]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011110011110011000011110011000011000011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[9]~18_combout\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \S_internal~37_combout\);

-- Location: IOIBUF_X59_Y10_N63
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LABCELL_X58_Y10_N30
\GEN_BLOCKS:9:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ = ( \A[37]~input_o\ & ( (!\B[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) ) # ( !\A[37]~input_o\ & ( (\B[37]~input_o\ & (!\A[36]~input_o\ $ (!\B[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X58_Y10_N28
\GEN_BLOCKS:9:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ = ( \A[37]~input_o\ & ( ((\A[36]~input_o\ & \B[36]~input_o\)) # (\B[37]~input_o\) ) ) # ( !\A[37]~input_o\ & ( (\B[37]~input_o\ & (\A[36]~input_o\ & \B[36]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datad => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X58_Y10_N14
\S_internal~38\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~38_combout\ = ( \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ & ( !\A[38]~input_o\ $ (\B[38]~input_o\) ) ) # ( !\GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ & ( !\A[38]~input_o\ $ (!\B[38]~input_o\ $ (((!\block_carry_in[9]~18_combout\ & 
-- \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_block_carry_in[9]~18_combout\,
	datad => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \S_internal~38_combout\);

-- Location: IOIBUF_X59_Y10_N1
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LABCELL_X58_Y10_N0
\GEN_BLOCKS:9:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ = ( \A[37]~input_o\ & ( (!\B[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) ) # ( !\A[37]~input_o\ & ( (\B[37]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X58_Y10_N2
\GEN_BLOCKS:9:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ = ( \A[36]~input_o\ & ( (\GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ & ((!\block_carry_in[9]~18_combout\) # (\B[36]~input_o\))) ) ) # ( !\A[36]~input_o\ & ( (!\block_carry_in[9]~18_combout\ & (\B[36]~input_o\ & 
-- \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[9]~18_combout\,
	datac => \ALT_INV_B[36]~input_o\,
	datad => \GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_A[36]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X58_Y10_N16
\GEN_BLOCKS:9:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\ = ( \A[37]~input_o\ & ( (!\B[37]~input_o\ & (\A[38]~input_o\ & \B[38]~input_o\)) # (\B[37]~input_o\ & ((\B[38]~input_o\) # (\A[38]~input_o\))) ) ) # ( !\A[37]~input_o\ & ( (\A[38]~input_o\ & \B[38]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X59_Y22_N1
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LABCELL_X58_Y10_N18
\S_internal~39\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~39_combout\ = ( \A[39]~input_o\ & ( !\B[39]~input_o\ $ (((\GEN_BLOCKS:9:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\))) ) ) # ( !\A[39]~input_o\ & ( !\B[39]~input_o\ $ (((!\GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:9:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[39]~input_o\,
	datac => \GEN_BLOCKS:9:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \S_internal~39_combout\);

-- Location: LABCELL_X58_Y10_N12
\GEN_BLOCKS:9:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ = ( \A[39]~input_o\ & ( ((\B[38]~input_o\ & \A[38]~input_o\)) # (\B[39]~input_o\) ) ) # ( !\A[39]~input_o\ & ( (\B[38]~input_o\ & (\A[38]~input_o\ & \B[39]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[39]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y10_N6
\GEN_BLOCKS:9:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ = ( \A[39]~input_o\ & ( (!\B[39]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) ) # ( !\A[39]~input_o\ & ( (\B[39]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X58_Y10_N8
\block_carry_in[10]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~19_combout\ = ( \B[36]~input_o\ & ( \A[37]~input_o\ & ( (!\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (((!\B[37]~input_o\ & !\A[36]~input_o\)))) ) 
-- ) ) # ( !\B[36]~input_o\ & ( \A[37]~input_o\ & ( (!\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (!\B[37]~input_o\ & ((!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\) # 
-- (\A[36]~input_o\)))) ) ) ) # ( \B[36]~input_o\ & ( !\A[37]~input_o\ & ( (!\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\)) # (\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & ((!\B[37]~input_o\ & 
-- (!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\)) # (\B[37]~input_o\ & ((!\A[36]~input_o\))))) ) ) ) # ( !\B[36]~input_o\ & ( !\A[37]~input_o\ & ( (!\GEN_BLOCKS:9:LACG_INST|g_int~2_combout\) # ((\GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & (\B[37]~input_o\ & 
-- \A[36]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011101010111010100010101000101110001011100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:9:LACG_INST|ALT_INV_g_int~2_combout\,
	datab => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~1_combout\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[36]~input_o\,
	datae => \ALT_INV_B[36]~input_o\,
	dataf => \ALT_INV_A[37]~input_o\,
	combout => \block_carry_in[10]~19_combout\);

-- Location: LABCELL_X58_Y10_N4
\GEN_BLOCKS:9:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:9:LACG_INST|Pout~combout\);

-- Location: LABCELL_X55_Y4_N4
\block_carry_in[10]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~20_combout\ = ( \block_carry_in[9]~18_combout\ & ( \GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( \block_carry_in[10]~19_combout\ ) ) ) # ( \block_carry_in[9]~18_combout\ & ( !\GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( 
-- \block_carry_in[10]~19_combout\ ) ) ) # ( !\block_carry_in[9]~18_combout\ & ( !\GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( \block_carry_in[10]~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[10]~19_combout\,
	datae => \ALT_INV_block_carry_in[9]~18_combout\,
	dataf => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[10]~20_combout\);

-- Location: IOIBUF_X55_Y0_N32
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LABCELL_X55_Y4_N28
\S_internal~40\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~40_combout\ = ( \B[40]~input_o\ & ( !\block_carry_in[10]~20_combout\ $ (!\A[40]~input_o\) ) ) # ( !\B[40]~input_o\ & ( !\block_carry_in[10]~20_combout\ $ (\A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[10]~20_combout\,
	datab => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \S_internal~40_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X59_Y4_N63
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X55_Y4_N30
\S_internal~41\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~41_combout\ = ( \B[40]~input_o\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((!\block_carry_in[10]~20_combout\) # (\A[40]~input_o\)))) ) ) # ( !\B[40]~input_o\ & ( !\B[41]~input_o\ $ (!\A[41]~input_o\ $ (((!\block_carry_in[10]~20_combout\ & 
-- \A[40]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110111010010001011011101001010110100010010111011010001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[10]~20_combout\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \S_internal~41_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X55_Y0_N63
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LABCELL_X55_Y4_N34
\GEN_BLOCKS:10:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ = ( \B[40]~input_o\ & ( (!\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) ) # ( !\B[40]~input_o\ & ( (\A[40]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X55_Y4_N38
\GEN_BLOCKS:10:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ = ( \B[40]~input_o\ & ( (!\A[41]~input_o\ & (\B[41]~input_o\ & \A[40]~input_o\)) # (\A[41]~input_o\ & ((\A[40]~input_o\) # (\B[41]~input_o\))) ) ) # ( !\B[40]~input_o\ & ( (\A[41]~input_o\ & \B[41]~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[41]~input_o\,
	datac => \ALT_INV_A[40]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X55_Y4_N2
\S_internal~42\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~42_combout\ = ( \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ & ( !\B[42]~input_o\ $ (\A[42]~input_o\) ) ) # ( !\GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ & ( !\B[42]~input_o\ $ (!\A[42]~input_o\ $ (((\GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ 
-- & !\block_carry_in[10]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \ALT_INV_block_carry_in[10]~20_combout\,
	dataf => \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \S_internal~42_combout\);

-- Location: IOIBUF_X55_Y0_N1
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LABCELL_X55_Y4_N0
\GEN_BLOCKS:10:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ = (!\B[42]~input_o\ & (\A[42]~input_o\ & (\A[41]~input_o\ & \B[41]~input_o\))) # (\B[42]~input_o\ & (((\A[41]~input_o\ & \B[41]~input_o\)) # (\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X55_Y4_N36
\GEN_BLOCKS:10:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\ = ( \B[42]~input_o\ & ( (!\A[42]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) ) # ( !\B[42]~input_o\ & ( (\A[42]~input_o\ & (!\A[41]~input_o\ $ (!\B[41]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_B[41]~input_o\,
	datad => \ALT_INV_A[42]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X55_Y4_N24
\GEN_BLOCKS:10:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ = ( \B[40]~input_o\ & ( (!\GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ & ((!\GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\) # ((\block_carry_in[10]~20_combout\ & !\A[40]~input_o\)))) ) ) # ( !\B[40]~input_o\ & ( 
-- (!\GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ & (((!\A[40]~input_o\) # (!\GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\)) # (\block_carry_in[10]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010000111100001101000011110000010000001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[10]~20_combout\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X59_Y4_N94
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LABCELL_X55_Y4_N26
\S_internal~43\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~43_combout\ = ( \A[43]~input_o\ & ( !\B[43]~input_o\ $ (!\GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\) ) ) # ( !\A[43]~input_o\ & ( !\B[43]~input_o\ $ (\GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[43]~input_o\,
	datad => \GEN_BLOCKS:10:LACG_INST|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \S_internal~43_combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X38_Y56_N32
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LABCELL_X55_Y4_N8
\GEN_BLOCKS:10:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ = ( \A[43]~input_o\ & ( (!\B[43]~input_o\ & (!\A[42]~input_o\ $ (!\B[42]~input_o\))) ) ) # ( !\A[43]~input_o\ & ( (\B[43]~input_o\ & (!\A[42]~input_o\ $ (!\B[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X55_Y4_N32
\GEN_BLOCKS:10:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|Pout~combout\ = (\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~1_combout\,
	datad => \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \GEN_BLOCKS:10:LACG_INST|Pout~combout\);

-- Location: LABCELL_X55_Y4_N10
\GEN_BLOCKS:10:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ = ( \A[43]~input_o\ & ( ((\B[42]~input_o\ & \A[42]~input_o\)) # (\B[43]~input_o\) ) ) # ( !\A[43]~input_o\ & ( (\B[42]~input_o\ & (\A[42]~input_o\ & \B[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_A[43]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X55_Y4_N12
\block_carry_in[11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[11]~21_combout\ = ( \B[41]~input_o\ & ( \B[40]~input_o\ & ( (!\GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ & ((!\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\) # ((!\A[41]~input_o\ & !\A[40]~input_o\)))) ) ) ) # ( !\B[41]~input_o\ & ( 
-- \B[40]~input_o\ & ( (!\GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ & ((!\A[41]~input_o\) # ((!\A[40]~input_o\) # (!\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\)))) ) ) ) # ( \B[41]~input_o\ & ( !\B[40]~input_o\ & ( (!\GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ & 
-- ((!\A[41]~input_o\) # (!\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\))) ) ) ) # ( !\B[41]~input_o\ & ( !\B[40]~input_o\ & ( !\GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110100000000011111110000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~1_combout\,
	datad => \GEN_BLOCKS:10:LACG_INST|ALT_INV_g_int~2_combout\,
	datae => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_B[40]~input_o\,
	combout => \block_carry_in[11]~21_combout\);

-- Location: LABCELL_X55_Y4_N18
\block_carry_in[11]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[11]~22_combout\ = ( \block_carry_in[11]~21_combout\ & ( \GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( (!\GEN_BLOCKS:10:LACG_INST|Pout~combout\) # ((!\block_carry_in[9]~16_combout\ & (\block_carry_in[10]~19_combout\ & 
-- \block_carry_in[9]~17_combout\))) ) ) ) # ( !\block_carry_in[11]~21_combout\ & ( \GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( (\GEN_BLOCKS:10:LACG_INST|Pout~combout\ & (!\block_carry_in[9]~16_combout\ & (\block_carry_in[10]~19_combout\ & 
-- \block_carry_in[9]~17_combout\))) ) ) ) # ( \block_carry_in[11]~21_combout\ & ( !\GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( (!\GEN_BLOCKS:10:LACG_INST|Pout~combout\) # (\block_carry_in[10]~19_combout\) ) ) ) # ( !\block_carry_in[11]~21_combout\ & ( 
-- !\GEN_BLOCKS:9:LACG_INST|Pout~combout\ & ( (\GEN_BLOCKS:10:LACG_INST|Pout~combout\ & \block_carry_in[10]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000000000001001010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:10:LACG_INST|ALT_INV_Pout~combout\,
	datab => \ALT_INV_block_carry_in[9]~16_combout\,
	datac => \ALT_INV_block_carry_in[10]~19_combout\,
	datad => \ALT_INV_block_carry_in[9]~17_combout\,
	datae => \ALT_INV_block_carry_in[11]~21_combout\,
	dataf => \GEN_BLOCKS:9:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[11]~22_combout\);

-- Location: MLABCELL_X39_Y52_N20
\S_internal~44\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~44_combout\ = ( \B[44]~input_o\ & ( \block_carry_in[11]~22_combout\ & ( !\A[44]~input_o\ ) ) ) # ( !\B[44]~input_o\ & ( \block_carry_in[11]~22_combout\ & ( \A[44]~input_o\ ) ) ) # ( \B[44]~input_o\ & ( !\block_carry_in[11]~22_combout\ & ( 
-- \A[44]~input_o\ ) ) ) # ( !\B[44]~input_o\ & ( !\block_carry_in[11]~22_combout\ & ( !\A[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[44]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_block_carry_in[11]~22_combout\,
	combout => \S_internal~44_combout\);

-- Location: IOIBUF_X40_Y56_N1
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: MLABCELL_X39_Y52_N6
\S_internal~45\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~45_combout\ = ( \B[44]~input_o\ & ( \block_carry_in[11]~22_combout\ & ( !\A[44]~input_o\ $ (!\B[45]~input_o\ $ (\A[45]~input_o\)) ) ) ) # ( !\B[44]~input_o\ & ( \block_carry_in[11]~22_combout\ & ( !\B[45]~input_o\ $ (!\A[45]~input_o\) ) ) ) # 
-- ( \B[44]~input_o\ & ( !\block_carry_in[11]~22_combout\ & ( !\B[45]~input_o\ $ (\A[45]~input_o\) ) ) ) # ( !\B[44]~input_o\ & ( !\block_carry_in[11]~22_combout\ & ( !\A[44]~input_o\ $ (!\B[45]~input_o\ $ (\A[45]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101111100000000111100001111111100000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[45]~input_o\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_block_carry_in[11]~22_combout\,
	combout => \S_internal~45_combout\);

-- Location: IOIBUF_X35_Y56_N63
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X38_Y56_N94
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: MLABCELL_X39_Y52_N10
\GEN_BLOCKS:11:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ = ( \A[45]~input_o\ & ( (!\B[45]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) ) # ( !\A[45]~input_o\ & ( (\B[45]~input_o\ & (!\A[44]~input_o\ $ (!\B[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X39_Y52_N8
\GEN_BLOCKS:11:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ = ( \A[45]~input_o\ & ( ((\A[44]~input_o\ & \B[44]~input_o\)) # (\B[45]~input_o\) ) ) # ( !\A[45]~input_o\ & ( (\A[44]~input_o\ & (\B[45]~input_o\ & \B[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\);

-- Location: MLABCELL_X39_Y52_N34
\S_internal~46\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~46_combout\ = ( \block_carry_in[11]~22_combout\ & ( !\A[46]~input_o\ $ (!\B[46]~input_o\ $ (\GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\)) ) ) # ( !\block_carry_in[11]~22_combout\ & ( !\A[46]~input_o\ $ (!\B[46]~input_o\ $ 
-- (((\GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\) # (\GEN_BLOCKS:11:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \ALT_INV_block_carry_in[11]~22_combout\,
	combout => \S_internal~46_combout\);

-- Location: MLABCELL_X39_Y52_N0
\GEN_BLOCKS:11:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ = ( \A[45]~input_o\ & ( (!\B[45]~input_o\ & (!\B[46]~input_o\ $ (!\A[46]~input_o\))) ) ) # ( !\A[45]~input_o\ & ( (\B[45]~input_o\ & (!\B[46]~input_o\ $ (!\A[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_B[45]~input_o\,
	datad => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\);

-- Location: MLABCELL_X39_Y52_N2
\GEN_BLOCKS:11:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ = ( \block_carry_in[11]~22_combout\ & ( (\A[44]~input_o\ & (\B[44]~input_o\ & \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\)) ) ) # ( !\block_carry_in[11]~22_combout\ & ( (\GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ & 
-- ((\B[44]~input_o\) # (\A[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_block_carry_in[11]~22_combout\,
	combout => \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\);

-- Location: MLABCELL_X39_Y52_N38
\GEN_BLOCKS:11:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ = ( \A[45]~input_o\ & ( (!\A[46]~input_o\ & (\B[46]~input_o\ & \B[45]~input_o\)) # (\A[46]~input_o\ & ((\B[45]~input_o\) # (\B[46]~input_o\))) ) ) # ( !\A[45]~input_o\ & ( (\A[46]~input_o\ & \B[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	datad => \ALT_INV_B[45]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X36_Y56_N63
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X40_Y56_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: MLABCELL_X39_Y52_N36
\S_internal~47\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~47_combout\ = ( \A[47]~input_o\ & ( !\B[47]~input_o\ $ (((\GEN_BLOCKS:11:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\))) ) ) # ( !\A[47]~input_o\ & ( !\B[47]~input_o\ $ (((!\GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ & 
-- !\GEN_BLOCKS:11:LACG_INST|g_int~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:11:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \S_internal~47_combout\);

-- Location: IOIBUF_X50_Y0_N94
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X50_Y0_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: MLABCELL_X39_Y52_N32
\GEN_BLOCKS:11:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\ = ( \A[47]~input_o\ & ( ((\A[46]~input_o\ & \B[46]~input_o\)) # (\B[47]~input_o\) ) ) # ( !\A[47]~input_o\ & ( (\A[46]~input_o\ & (\B[46]~input_o\ & \B[47]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[46]~input_o\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X39_Y52_N24
\GEN_BLOCKS:11:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ = ( \A[47]~input_o\ & ( (!\B[47]~input_o\ & (!\B[46]~input_o\ $ (!\A[46]~input_o\))) ) ) # ( !\A[47]~input_o\ & ( (\B[47]~input_o\ & (!\B[46]~input_o\ $ (!\A[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[47]~input_o\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[47]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\);

-- Location: MLABCELL_X39_Y52_N30
\block_carry_in[12]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~23_combout\ = ( \B[44]~input_o\ & ( \A[45]~input_o\ & ( (!\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (((!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\)))) # (\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (!\A[44]~input_o\ & 
-- (!\B[45]~input_o\))) ) ) ) # ( !\B[44]~input_o\ & ( \A[45]~input_o\ & ( (!\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (((!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\)))) # (\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (!\B[45]~input_o\ & 
-- ((!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\) # (\A[44]~input_o\)))) ) ) ) # ( \B[44]~input_o\ & ( !\A[45]~input_o\ & ( (!\B[45]~input_o\ & (((!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\)))) # (\B[45]~input_o\ & ((!\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ 
-- & ((!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\))) # (\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (!\A[44]~input_o\)))) ) ) ) # ( !\B[44]~input_o\ & ( !\A[45]~input_o\ & ( (!\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\) # ((\A[44]~input_o\ & (\B[45]~input_o\ & 
-- \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110001111100001110001011110000110001001111000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_B[45]~input_o\,
	datac => \GEN_BLOCKS:11:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~1_combout\,
	datae => \ALT_INV_B[44]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \block_carry_in[12]~23_combout\);

-- Location: MLABCELL_X39_Y52_N26
\GEN_BLOCKS:11:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & ( \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \GEN_BLOCKS:11:LACG_INST|Pout~combout\);

-- Location: LABCELL_X50_Y4_N2
\block_carry_in[12]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~24_combout\ = ( \block_carry_in[11]~22_combout\ & ( \GEN_BLOCKS:11:LACG_INST|Pout~combout\ & ( \block_carry_in[12]~23_combout\ ) ) ) # ( \block_carry_in[11]~22_combout\ & ( !\GEN_BLOCKS:11:LACG_INST|Pout~combout\ & ( 
-- \block_carry_in[12]~23_combout\ ) ) ) # ( !\block_carry_in[11]~22_combout\ & ( !\GEN_BLOCKS:11:LACG_INST|Pout~combout\ & ( \block_carry_in[12]~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_block_carry_in[12]~23_combout\,
	datae => \ALT_INV_block_carry_in[11]~22_combout\,
	dataf => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[12]~24_combout\);

-- Location: LABCELL_X50_Y4_N24
\S_internal~48\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~48_combout\ = ( \A[48]~input_o\ & ( \block_carry_in[12]~24_combout\ & ( !\B[48]~input_o\ ) ) ) # ( !\A[48]~input_o\ & ( \block_carry_in[12]~24_combout\ & ( \B[48]~input_o\ ) ) ) # ( \A[48]~input_o\ & ( !\block_carry_in[12]~24_combout\ & ( 
-- \B[48]~input_o\ ) ) ) # ( !\A[48]~input_o\ & ( !\block_carry_in[12]~24_combout\ & ( !\B[48]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[48]~input_o\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_block_carry_in[12]~24_combout\,
	combout => \S_internal~48_combout\);

-- Location: IOIBUF_X52_Y0_N32
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X52_Y0_N63
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LABCELL_X50_Y4_N8
\S_internal~49\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~49_combout\ = ( \A[48]~input_o\ & ( \B[49]~input_o\ & ( !\A[49]~input_o\ $ (((!\block_carry_in[12]~24_combout\) # (\B[48]~input_o\))) ) ) ) # ( !\A[48]~input_o\ & ( \B[49]~input_o\ & ( !\A[49]~input_o\ $ (((\B[48]~input_o\ & 
-- !\block_carry_in[12]~24_combout\))) ) ) ) # ( \A[48]~input_o\ & ( !\B[49]~input_o\ & ( !\A[49]~input_o\ $ (((!\B[48]~input_o\ & \block_carry_in[12]~24_combout\))) ) ) ) # ( !\A[48]~input_o\ & ( !\B[49]~input_o\ & ( !\A[49]~input_o\ $ (((!\B[48]~input_o\) 
-- # (\block_carry_in[12]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111111100000101101010100101111100000000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[48]~input_o\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_block_carry_in[12]~24_combout\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \S_internal~49_combout\);

-- Location: LABCELL_X50_Y4_N12
\GEN_BLOCKS:12:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ = ( \B[49]~input_o\ & ( ((\A[48]~input_o\ & \B[48]~input_o\)) # (\A[49]~input_o\) ) ) # ( !\B[49]~input_o\ & ( (\A[49]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[48]~input_o\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X50_Y4_N14
\GEN_BLOCKS:12:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|C~0_combout\ = ( \B[48]~input_o\ & ( (!\A[48]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\))) ) ) # ( !\B[48]~input_o\ & ( (\A[48]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X54_Y0_N63
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LABCELL_X50_Y4_N36
\S_internal~50\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~50_combout\ = ( \A[50]~input_o\ & ( !\B[50]~input_o\ $ ((((\GEN_BLOCKS:12:LACG_INST|C~0_combout\ & !\block_carry_in[12]~24_combout\)) # (\GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\A[50]~input_o\ & ( !\B[50]~input_o\ $ 
-- (((!\GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ & ((!\GEN_BLOCKS:12:LACG_INST|C~0_combout\) # (\block_carry_in[12]~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001011010011110000101101010000111101001011000011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datab => \GEN_BLOCKS:12:LACG_INST|ALT_INV_C~0_combout\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_block_carry_in[12]~24_combout\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \S_internal~50_combout\);

-- Location: IOIBUF_X50_Y0_N1
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X52_Y0_N94
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LABCELL_X50_Y4_N20
\GEN_BLOCKS:12:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ = ( \A[50]~input_o\ & ( ((\A[49]~input_o\ & \B[49]~input_o\)) # (\B[50]~input_o\) ) ) # ( !\A[50]~input_o\ & ( (\A[49]~input_o\ & (\B[49]~input_o\ & \B[50]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X50_Y4_N22
\GEN_BLOCKS:12:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ = ( \B[48]~input_o\ & ( (\A[48]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X50_Y4_N6
\GEN_BLOCKS:12:LACG_INST|C[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|C\(3) = ( \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ & ( \B[50]~input_o\ & ( (!\GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ & \A[50]~input_o\) ) ) ) # ( !\GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ & ( \B[50]~input_o\ & ( 
-- (!\GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ & ((!\GEN_BLOCKS:12:LACG_INST|C~0_combout\) # ((\A[50]~input_o\) # (\block_carry_in[12]~24_combout\)))) ) ) ) # ( \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ & ( !\B[50]~input_o\ & ( 
-- (!\GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ & !\A[50]~input_o\) ) ) ) # ( !\GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ & ( !\B[50]~input_o\ & ( (!\GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ & ((!\GEN_BLOCKS:12:LACG_INST|C~0_combout\) # ((!\A[50]~input_o\) # 
-- (\block_carry_in[12]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010101010100000000010001010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~1_combout\,
	datab => \GEN_BLOCKS:12:LACG_INST|ALT_INV_C~0_combout\,
	datac => \ALT_INV_block_carry_in[12]~24_combout\,
	datad => \ALT_INV_A[50]~input_o\,
	datae => \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|C\(3));

-- Location: LABCELL_X50_Y4_N38
\S_internal~51\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~51_combout\ = ( \GEN_BLOCKS:12:LACG_INST|C\(3) & ( !\A[51]~input_o\ $ (!\B[51]~input_o\) ) ) # ( !\GEN_BLOCKS:12:LACG_INST|C\(3) & ( !\A[51]~input_o\ $ (\B[51]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[51]~input_o\,
	dataf => \GEN_BLOCKS:12:LACG_INST|ALT_INV_C\(3),
	combout => \S_internal~51_combout\);

-- Location: IOIBUF_X59_Y13_N94
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LABCELL_X50_Y4_N30
\block_carry_in[13]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~25_combout\ = ( \B[50]~input_o\ & ( (!\A[50]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\))) ) ) # ( !\B[50]~input_o\ & ( (\A[50]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \block_carry_in[13]~25_combout\);

-- Location: LABCELL_X50_Y4_N32
\block_carry_in[13]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~26_combout\ = ( \B[49]~input_o\ & ( (\block_carry_in[13]~25_combout\ & ((\A[49]~input_o\) # (\GEN_BLOCKS:12:LACG_INST|g_int~2_combout\))) ) ) # ( !\B[49]~input_o\ & ( (\GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ & 
-- \block_carry_in[13]~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \ALT_INV_A[49]~input_o\,
	datad => \ALT_INV_block_carry_in[13]~25_combout\,
	dataf => \ALT_INV_B[49]~input_o\,
	combout => \block_carry_in[13]~26_combout\);

-- Location: LABCELL_X50_Y4_N34
\GEN_BLOCKS:12:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ = ( \B[50]~input_o\ & ( (!\A[50]~input_o\ & (\A[51]~input_o\ & \B[51]~input_o\)) # (\A[50]~input_o\ & ((\B[51]~input_o\) # (\A[51]~input_o\))) ) ) # ( !\B[50]~input_o\ & ( (\A[51]~input_o\ & \B[51]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	datad => \ALT_INV_B[51]~input_o\,
	dataf => \ALT_INV_B[50]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\);

-- Location: LABCELL_X50_Y4_N28
\GEN_BLOCKS:12:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:12:LACG_INST|C~0_combout\ & ( (!\A[50]~input_o\ & (\B[50]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) # (\A[50]~input_o\ & (!\B[50]~input_o\ & (!\B[51]~input_o\ $ (!\A[51]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[50]~input_o\,
	datab => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \GEN_BLOCKS:12:LACG_INST|ALT_INV_C~0_combout\,
	combout => \GEN_BLOCKS:12:LACG_INST|Pout~combout\);

-- Location: LABCELL_X50_Y4_N18
\block_carry_in[13]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~27_combout\ = ( \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ & ( \GEN_BLOCKS:12:LACG_INST|Pout~combout\ & ( (\block_carry_in[12]~23_combout\ & ((!\GEN_BLOCKS:11:LACG_INST|Pout~combout\) # (\block_carry_in[11]~22_combout\))) ) ) ) # ( 
-- !\GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ & ( \GEN_BLOCKS:12:LACG_INST|Pout~combout\ & ( (\block_carry_in[12]~23_combout\ & ((!\GEN_BLOCKS:11:LACG_INST|Pout~combout\) # (\block_carry_in[11]~22_combout\))) ) ) ) # ( 
-- !\GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ & ( !\GEN_BLOCKS:12:LACG_INST|Pout~combout\ & ( !\block_carry_in[13]~26_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[11]~22_combout\,
	datab => \GEN_BLOCKS:11:LACG_INST|ALT_INV_Pout~combout\,
	datac => \ALT_INV_block_carry_in[12]~23_combout\,
	datad => \ALT_INV_block_carry_in[13]~26_combout\,
	datae => \GEN_BLOCKS:12:LACG_INST|ALT_INV_g_int~3_combout\,
	dataf => \GEN_BLOCKS:12:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[13]~27_combout\);

-- Location: IOIBUF_X59_Y15_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LABCELL_X58_Y13_N22
\S_internal~52\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~52_combout\ = ( \block_carry_in[13]~27_combout\ & ( \A[52]~input_o\ & ( !\B[52]~input_o\ ) ) ) # ( !\block_carry_in[13]~27_combout\ & ( \A[52]~input_o\ & ( \B[52]~input_o\ ) ) ) # ( \block_carry_in[13]~27_combout\ & ( !\A[52]~input_o\ & ( 
-- \B[52]~input_o\ ) ) ) # ( !\block_carry_in[13]~27_combout\ & ( !\A[52]~input_o\ & ( !\B[52]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[52]~input_o\,
	datae => \ALT_INV_block_carry_in[13]~27_combout\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \S_internal~52_combout\);

-- Location: IOIBUF_X59_Y18_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LABCELL_X58_Y13_N26
\S_internal~53\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~53_combout\ = ( \A[53]~input_o\ & ( !\B[53]~input_o\ $ (((!\B[52]~input_o\ & (\A[52]~input_o\ & !\block_carry_in[13]~27_combout\)) # (\B[52]~input_o\ & ((!\block_carry_in[13]~27_combout\) # (\A[52]~input_o\))))) ) ) # ( !\A[53]~input_o\ & ( 
-- !\B[53]~input_o\ $ (((!\B[52]~input_o\ & ((!\A[52]~input_o\) # (\block_carry_in[13]~27_combout\))) # (\B[52]~input_o\ & (!\A[52]~input_o\ & \block_carry_in[13]~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000011110100001111110000101111000000111101000011111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_A[52]~input_o\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_block_carry_in[13]~27_combout\,
	datae => \ALT_INV_A[53]~input_o\,
	combout => \S_internal~53_combout\);

-- Location: LABCELL_X58_Y13_N10
\GEN_BLOCKS:13:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ = ( \A[52]~input_o\ & ( (!\B[52]~input_o\ & (\B[53]~input_o\ & \A[53]~input_o\)) # (\B[52]~input_o\ & ((\A[53]~input_o\) # (\B[53]~input_o\))) ) ) # ( !\A[52]~input_o\ & ( (\B[53]~input_o\ & \A[53]~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X59_Y15_N94
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LABCELL_X58_Y13_N8
\GEN_BLOCKS:13:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|C~0_combout\ = ( \A[52]~input_o\ & ( (!\B[52]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) ) # ( !\A[52]~input_o\ & ( (\B[52]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LABCELL_X58_Y13_N14
\S_internal~54\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~54_combout\ = ( \GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( \B[54]~input_o\ & ( !\A[54]~input_o\ $ (((!\block_carry_in[13]~27_combout\) # (\GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\))) ) ) ) # ( !\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( 
-- \B[54]~input_o\ & ( !\GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ $ (\A[54]~input_o\) ) ) ) # ( \GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( !\B[54]~input_o\ & ( !\A[54]~input_o\ $ (((\block_carry_in[13]~27_combout\ & 
-- !\GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\))) ) ) ) # ( !\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( !\B[54]~input_o\ & ( !\GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ $ (!\A[54]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100101110110100010011001100001100110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[13]~27_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \ALT_INV_A[54]~input_o\,
	datae => \GEN_BLOCKS:13:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \S_internal~54_combout\);

-- Location: IOIBUF_X59_Y13_N63
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LABCELL_X58_Y13_N36
\GEN_BLOCKS:13:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ = ( \B[54]~input_o\ & ( ((\B[53]~input_o\ & \A[53]~input_o\)) # (\A[54]~input_o\) ) ) # ( !\B[54]~input_o\ & ( (\B[53]~input_o\ & (\A[54]~input_o\ & \A[53]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X58_Y13_N38
\GEN_BLOCKS:13:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\ = ( \A[52]~input_o\ & ( (\B[52]~input_o\ & (!\B[53]~input_o\ $ (!\A[53]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[52]~input_o\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	dataf => \ALT_INV_A[52]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y13_N2
\GEN_BLOCKS:13:LACG_INST|C[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|C\(3) = ( \GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( \B[54]~input_o\ & ( (!\GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ & (((\block_carry_in[13]~27_combout\ & !\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\)) # (\A[54]~input_o\))) ) ) ) # 
-- ( !\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( \B[54]~input_o\ & ( (!\GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ & ((!\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\) # (\A[54]~input_o\))) ) ) ) # ( \GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( !\B[54]~input_o\ & ( 
-- (!\GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ & ((!\A[54]~input_o\) # ((\block_carry_in[13]~27_combout\ & !\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\)))) ) ) ) # ( !\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ( !\B[54]~input_o\ & ( 
-- (!\GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ & ((!\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\) # (!\A[54]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011000100000011000000110011000100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[13]~27_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~1_combout\,
	datac => \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \ALT_INV_A[54]~input_o\,
	datae => \GEN_BLOCKS:13:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|C\(3));

-- Location: LABCELL_X58_Y13_N4
\S_internal~55\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~55_combout\ = ( \GEN_BLOCKS:13:LACG_INST|C\(3) & ( !\B[55]~input_o\ $ (!\A[55]~input_o\) ) ) # ( !\GEN_BLOCKS:13:LACG_INST|C\(3) & ( !\B[55]~input_o\ $ (\A[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	dataf => \GEN_BLOCKS:13:LACG_INST|ALT_INV_C\(3),
	combout => \S_internal~55_combout\);

-- Location: LABCELL_X58_Y13_N30
\GEN_BLOCKS:13:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|Pout~combout\ = ( \B[54]~input_o\ & ( (!\A[54]~input_o\ & (\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) ) # ( !\B[54]~input_o\ & ( (\A[54]~input_o\ & (\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & 
-- (!\A[55]~input_o\ $ (!\B[55]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000001010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \GEN_BLOCKS:13:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|Pout~combout\);

-- Location: LABCELL_X58_Y13_N28
\GEN_BLOCKS:13:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int~3_combout\ = ( \B[54]~input_o\ & ( (!\A[54]~input_o\ & (\A[55]~input_o\ & \B[55]~input_o\)) # (\A[54]~input_o\ & ((\B[55]~input_o\) # (\A[55]~input_o\))) ) ) # ( !\B[54]~input_o\ & ( (\A[55]~input_o\ & \B[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[54]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int~3_combout\);

-- Location: LABCELL_X58_Y13_N6
\block_carry_in[14]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~28_combout\ = ( \B[54]~input_o\ & ( (!\A[54]~input_o\ & (!\B[55]~input_o\ $ (!\A[55]~input_o\))) ) ) # ( !\B[54]~input_o\ & ( (\A[54]~input_o\ & (!\B[55]~input_o\ $ (!\A[55]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[55]~input_o\,
	datab => \ALT_INV_A[55]~input_o\,
	datac => \ALT_INV_A[54]~input_o\,
	dataf => \ALT_INV_B[54]~input_o\,
	combout => \block_carry_in[14]~28_combout\);

-- Location: LABCELL_X58_Y13_N34
\block_carry_in[14]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~29_combout\ = ( \block_carry_in[14]~28_combout\ & ( (!\GEN_BLOCKS:13:LACG_INST|g_int~3_combout\ & (!\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\ & ((!\A[53]~input_o\) # (!\B[53]~input_o\)))) ) ) # ( !\block_carry_in[14]~28_combout\ & ( 
-- !\GEN_BLOCKS:13:LACG_INST|g_int~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~3_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_B[53]~input_o\,
	dataf => \ALT_INV_block_carry_in[14]~28_combout\,
	combout => \block_carry_in[14]~29_combout\);

-- Location: LABCELL_X58_Y13_N32
\block_carry_in[14]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~30_combout\ = ( \block_carry_in[14]~29_combout\ & ( (!\block_carry_in[13]~27_combout\ & \GEN_BLOCKS:13:LACG_INST|Pout~combout\) ) ) # ( !\block_carry_in[14]~29_combout\ & ( (!\block_carry_in[13]~27_combout\) # 
-- (!\GEN_BLOCKS:13:LACG_INST|Pout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_block_carry_in[13]~27_combout\,
	datad => \GEN_BLOCKS:13:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \ALT_INV_block_carry_in[14]~29_combout\,
	combout => \block_carry_in[14]~30_combout\);

-- Location: IOIBUF_X59_Y19_N32
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X59_Y19_N94
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X58_Y16_N2
\S_internal~56\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~56_combout\ = ( \A[56]~input_o\ & ( \B[56]~input_o\ & ( \block_carry_in[14]~30_combout\ ) ) ) # ( !\A[56]~input_o\ & ( \B[56]~input_o\ & ( !\block_carry_in[14]~30_combout\ ) ) ) # ( \A[56]~input_o\ & ( !\B[56]~input_o\ & ( 
-- !\block_carry_in[14]~30_combout\ ) ) ) # ( !\A[56]~input_o\ & ( !\B[56]~input_o\ & ( \block_carry_in[14]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[14]~30_combout\,
	datae => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \S_internal~56_combout\);

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

-- Location: IOIBUF_X59_Y19_N1
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LABCELL_X58_Y16_N4
\S_internal~57\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~57_combout\ = ( \A[56]~input_o\ & ( \B[56]~input_o\ & ( !\B[57]~input_o\ $ (\A[57]~input_o\) ) ) ) # ( !\A[56]~input_o\ & ( \B[56]~input_o\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (\block_carry_in[14]~30_combout\)) ) ) ) # ( \A[56]~input_o\ 
-- & ( !\B[56]~input_o\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\ $ (\block_carry_in[14]~30_combout\)) ) ) ) # ( !\A[56]~input_o\ & ( !\B[56]~input_o\ & ( !\B[57]~input_o\ $ (!\A[57]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011010010110100101101001011010011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_block_carry_in[14]~30_combout\,
	datae => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \S_internal~57_combout\);

-- Location: LABCELL_X58_Y16_N10
\GEN_BLOCKS:14:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|C~0_combout\ = ( \B[56]~input_o\ & ( (!\A[56]~input_o\ & (!\B[57]~input_o\ $ (!\A[57]~input_o\))) ) ) # ( !\B[56]~input_o\ & ( (\A[56]~input_o\ & (!\B[57]~input_o\ $ (!\A[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|C~0_combout\);

-- Location: LABCELL_X58_Y16_N14
\GEN_BLOCKS:14:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\ = ( \A[56]~input_o\ & ( \B[56]~input_o\ & ( (\B[57]~input_o\) # (\A[57]~input_o\) ) ) ) # ( !\A[56]~input_o\ & ( \B[56]~input_o\ & ( (\A[57]~input_o\ & \B[57]~input_o\) ) ) ) # ( \A[56]~input_o\ & ( 
-- !\B[56]~input_o\ & ( (\A[57]~input_o\ & \B[57]~input_o\) ) ) ) # ( !\A[56]~input_o\ & ( !\B[56]~input_o\ & ( (\A[57]~input_o\ & \B[57]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	datae => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X59_Y18_N32
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LABCELL_X58_Y16_N18
\S_internal~58\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~58_combout\ = ( \A[58]~input_o\ & ( !\B[58]~input_o\ $ ((((\block_carry_in[14]~30_combout\ & \GEN_BLOCKS:14:LACG_INST|C~0_combout\)) # (\GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\))) ) ) # ( !\A[58]~input_o\ & ( !\B[58]~input_o\ $ 
-- (((!\GEN_BLOCKS:14:LACG_INST|g_int[1]~0_combout\ & ((!\block_carry_in[14]~30_combout\) # (!\GEN_BLOCKS:14:LACG_INST|C~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111100000000111111110000011100000000111111110000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[14]~30_combout\,
	datab => \GEN_BLOCKS:14:LACG_INST|ALT_INV_C~0_combout\,
	datac => \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \S_internal~58_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LABCELL_X58_Y16_N16
\GEN_BLOCKS:14:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ = ( \A[58]~input_o\ & ( (\GEN_BLOCKS:14:LACG_INST|C~0_combout\ & !\B[58]~input_o\) ) ) # ( !\A[58]~input_o\ & ( (\GEN_BLOCKS:14:LACG_INST|C~0_combout\ & \B[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:14:LACG_INST|ALT_INV_C~0_combout\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X58_Y16_N36
\GEN_BLOCKS:14:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\ = ( \B[58]~input_o\ & ( \B[56]~input_o\ & ( ((!\A[56]~input_o\ & (\B[57]~input_o\ & \A[57]~input_o\)) # (\A[56]~input_o\ & ((\A[57]~input_o\) # (\B[57]~input_o\)))) # (\A[58]~input_o\) ) ) ) # ( !\B[58]~input_o\ & 
-- ( \B[56]~input_o\ & ( (\A[58]~input_o\ & ((!\A[56]~input_o\ & (\B[57]~input_o\ & \A[57]~input_o\)) # (\A[56]~input_o\ & ((\A[57]~input_o\) # (\B[57]~input_o\))))) ) ) ) # ( \B[58]~input_o\ & ( !\B[56]~input_o\ & ( ((\B[57]~input_o\ & \A[57]~input_o\)) # 
-- (\A[58]~input_o\) ) ) ) # ( !\B[58]~input_o\ & ( !\B[56]~input_o\ & ( (\A[58]~input_o\ & (\B[57]~input_o\ & \A[57]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110011111100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_B[57]~input_o\,
	datad => \ALT_INV_A[57]~input_o\,
	datae => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X59_Y19_N63
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LABCELL_X58_Y16_N26
\S_internal~59\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~59_combout\ = ( \A[59]~input_o\ & ( \block_carry_in[14]~30_combout\ & ( !\B[59]~input_o\ $ (((\GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:14:LACG_INST|Pout~0_combout\))) ) ) ) # ( !\A[59]~input_o\ & ( 
-- \block_carry_in[14]~30_combout\ & ( !\B[59]~input_o\ $ (((!\GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & !\GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\))) ) ) ) # ( \A[59]~input_o\ & ( !\block_carry_in[14]~30_combout\ & ( !\B[59]~input_o\ $ 
-- (\GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\) ) ) ) # ( !\A[59]~input_o\ & ( !\block_carry_in[14]~30_combout\ & ( !\B[59]~input_o\ $ (!\GEN_BLOCKS:14:LACG_INST|C[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[59]~input_o\,
	datab => \GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \GEN_BLOCKS:14:LACG_INST|ALT_INV_C[3]~1_combout\,
	datae => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_block_carry_in[14]~30_combout\,
	combout => \S_internal~59_combout\);

-- Location: IOIBUF_X43_Y0_N94
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LABCELL_X58_Y16_N22
\GEN_BLOCKS:14:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|g_int~1_combout\ = ( \B[56]~input_o\ & ( (\A[56]~input_o\ & (!\B[57]~input_o\ $ (!\A[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_A[56]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X58_Y16_N32
\block_carry_in[15]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~31_combout\ = ( \B[58]~input_o\ & ( (!\A[58]~input_o\ & (!\A[59]~input_o\ $ (!\B[59]~input_o\))) ) ) # ( !\B[58]~input_o\ & ( (\A[58]~input_o\ & (!\A[59]~input_o\ $ (!\B[59]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010010010000100100000010010000100100100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datae => \ALT_INV_B[58]~input_o\,
	combout => \block_carry_in[15]~31_combout\);

-- Location: LABCELL_X58_Y16_N20
\block_carry_in[15]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~32_combout\ = ( \block_carry_in[15]~31_combout\ & ( ((\B[57]~input_o\ & \A[57]~input_o\)) # (\GEN_BLOCKS:14:LACG_INST|g_int~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datad => \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~1_combout\,
	dataf => \ALT_INV_block_carry_in[15]~31_combout\,
	combout => \block_carry_in[15]~32_combout\);

-- Location: LABCELL_X58_Y16_N28
\GEN_BLOCKS:14:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ = ( \B[59]~input_o\ & ( ((\A[58]~input_o\ & \B[58]~input_o\)) # (\A[59]~input_o\) ) ) # ( !\B[59]~input_o\ & ( (\A[59]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010101010111011100000000000100010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[59]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	datae => \ALT_INV_B[59]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X58_Y16_N8
\GEN_BLOCKS:14:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|Pout~combout\ = ( \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & ( !\B[59]~input_o\ $ (!\A[59]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	dataf => \GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \GEN_BLOCKS:14:LACG_INST|Pout~combout\);

-- Location: LABCELL_X58_Y13_N16
\block_carry_in[15]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~33_combout\ = ( \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ & ( \GEN_BLOCKS:14:LACG_INST|Pout~combout\ & ( (!\GEN_BLOCKS:13:LACG_INST|Pout~combout\ & ((!\block_carry_in[14]~29_combout\))) # (\GEN_BLOCKS:13:LACG_INST|Pout~combout\ & 
-- (!\block_carry_in[13]~27_combout\)) ) ) ) # ( !\GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ & ( \GEN_BLOCKS:14:LACG_INST|Pout~combout\ & ( (!\GEN_BLOCKS:13:LACG_INST|Pout~combout\ & ((!\block_carry_in[14]~29_combout\))) # 
-- (\GEN_BLOCKS:13:LACG_INST|Pout~combout\ & (!\block_carry_in[13]~27_combout\)) ) ) ) # ( \GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ & ( !\GEN_BLOCKS:14:LACG_INST|Pout~combout\ ) ) # ( !\GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ & ( 
-- !\GEN_BLOCKS:14:LACG_INST|Pout~combout\ & ( \block_carry_in[15]~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111101110001000101110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[13]~27_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|ALT_INV_Pout~combout\,
	datac => \ALT_INV_block_carry_in[15]~32_combout\,
	datad => \ALT_INV_block_carry_in[14]~29_combout\,
	datae => \GEN_BLOCKS:14:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \GEN_BLOCKS:14:LACG_INST|ALT_INV_Pout~combout\,
	combout => \block_carry_in[15]~33_combout\);

-- Location: IOIBUF_X48_Y0_N94
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LABCELL_X47_Y1_N26
\S_internal~60\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~60_combout\ = ( \B[60]~input_o\ & ( !\A[60]~input_o\ $ (\block_carry_in[15]~33_combout\) ) ) # ( !\B[60]~input_o\ & ( !\A[60]~input_o\ $ (!\block_carry_in[15]~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010101010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_block_carry_in[15]~33_combout\,
	datae => \ALT_INV_B[60]~input_o\,
	combout => \S_internal~60_combout\);

-- Location: IOIBUF_X48_Y0_N32
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LABCELL_X47_Y1_N28
\S_internal~61\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~61_combout\ = ( \A[61]~input_o\ & ( !\B[61]~input_o\ $ (((!\block_carry_in[15]~33_combout\ & (\A[60]~input_o\ & \B[60]~input_o\)) # (\block_carry_in[15]~33_combout\ & ((\B[60]~input_o\) # (\A[60]~input_o\))))) ) ) # ( !\A[61]~input_o\ & ( 
-- !\B[61]~input_o\ $ (((!\block_carry_in[15]~33_combout\ & ((!\A[60]~input_o\) # (!\B[60]~input_o\))) # (\block_carry_in[15]~33_combout\ & (!\A[60]~input_o\ & !\B[60]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100110010011001001100110110011011001100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[15]~33_combout\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[61]~input_o\,
	combout => \S_internal~61_combout\);

-- Location: LABCELL_X47_Y1_N12
\GEN_BLOCKS:15:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|C~0_combout\ = ( \B[60]~input_o\ & ( \B[61]~input_o\ & ( (!\A[60]~input_o\ & !\A[61]~input_o\) ) ) ) # ( !\B[60]~input_o\ & ( \B[61]~input_o\ & ( (\A[60]~input_o\ & !\A[61]~input_o\) ) ) ) # ( \B[60]~input_o\ & ( !\B[61]~input_o\ 
-- & ( (!\A[60]~input_o\ & \A[61]~input_o\) ) ) ) # ( !\B[60]~input_o\ & ( !\B[61]~input_o\ & ( (\A[60]~input_o\ & \A[61]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001010101001010101000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_A[61]~input_o\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_B[61]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X48_Y0_N63
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LABCELL_X47_Y1_N16
\GEN_BLOCKS:15:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ = ( \A[61]~input_o\ & ( ((\A[60]~input_o\ & \B[60]~input_o\)) # (\B[61]~input_o\) ) ) # ( !\A[61]~input_o\ & ( (\B[61]~input_o\ & (\A[60]~input_o\ & \B[60]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110011111100000000000000110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_A[60]~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	datae => \ALT_INV_A[61]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X47_Y1_N2
\S_internal~62\ : arriaii_lcell_comb
-- Equation(s):
-- \S_internal~62_combout\ = ( \block_carry_in[15]~33_combout\ & ( \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ & ( !\A[62]~input_o\ $ (\B[62]~input_o\) ) ) ) # ( !\block_carry_in[15]~33_combout\ & ( \GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ & ( 
-- !\A[62]~input_o\ $ (\B[62]~input_o\) ) ) ) # ( \block_carry_in[15]~33_combout\ & ( !\GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ & ( !\GEN_BLOCKS:15:LACG_INST|C~0_combout\ $ (!\A[62]~input_o\ $ (\B[62]~input_o\)) ) ) ) # ( !\block_carry_in[15]~33_combout\ 
-- & ( !\GEN_BLOCKS:15:LACG_INST|g_int[1]~0_combout\ & ( !\A[62]~input_o\ $ (!\B[62]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100011001101001100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:15:LACG_INST|ALT_INV_C~0_combout\,
	datab => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_B[62]~input_o\,
	datae => \ALT_INV_block_carry_in[15]~33_combout\,
	dataf => \GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \S_internal~62_combout\);

-- Location: IOIBUF_X47_Y0_N94
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LABCELL_X47_Y1_N4
\GEN_BLOCKS:15:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ = ( \A[62]~input_o\ & ( (!\B[62]~input_o\ & \GEN_BLOCKS:15:LACG_INST|C~0_combout\) ) ) # ( !\A[62]~input_o\ & ( (\B[62]~input_o\ & \GEN_BLOCKS:15:LACG_INST|C~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datac => \GEN_BLOCKS:15:LACG_INST|ALT_INV_C~0_combout\,
	datae => \ALT_INV_A[62]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LABCELL_X47_Y1_N38
\GEN_BLOCKS:15:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ = ( \B[60]~input_o\ & ( \A[61]~input_o\ & ( (!\B[62]~input_o\ & (\A[62]~input_o\ & ((\A[60]~input_o\) # (\B[61]~input_o\)))) # (\B[62]~input_o\ & (((\A[60]~input_o\) # (\B[61]~input_o\)) # (\A[62]~input_o\))) ) ) ) 
-- # ( !\B[60]~input_o\ & ( \A[61]~input_o\ & ( (!\B[62]~input_o\ & (\A[62]~input_o\ & \B[61]~input_o\)) # (\B[62]~input_o\ & ((\B[61]~input_o\) # (\A[62]~input_o\))) ) ) ) # ( \B[60]~input_o\ & ( !\A[61]~input_o\ & ( (!\B[62]~input_o\ & (\A[62]~input_o\ & 
-- (\B[61]~input_o\ & \A[60]~input_o\))) # (\B[62]~input_o\ & (((\B[61]~input_o\ & \A[60]~input_o\)) # (\A[62]~input_o\))) ) ) ) # ( !\B[60]~input_o\ & ( !\A[61]~input_o\ & ( (\B[62]~input_o\ & \A[62]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001011100010111000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[61]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X47_Y1_N34
\S_internal[63]\ : arriaii_lcell_comb
-- Equation(s):
-- S_internal(63) = ( \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ & ( !\A[63]~input_o\ $ (\B[63]~input_o\) ) ) # ( !\GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ & ( !\A[63]~input_o\ $ (!\B[63]~input_o\ $ (((\block_carry_in[15]~33_combout\ & 
-- \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[15]~33_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \GEN_BLOCKS:15:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \ALT_INV_B[63]~input_o\,
	dataf => \GEN_BLOCKS:15:LACG_INST|ALT_INV_C[3]~1_combout\,
	combout => S_internal(63));

-- Location: LABCELL_X47_Y1_N10
\GEN_BLOCKS:15:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ = (\B[60]~input_o\ & (\A[60]~input_o\ & (!\A[61]~input_o\ $ (!\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_B[60]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X47_Y1_N8
\block_carry_out~0\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_out~0_combout\ = ( \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ ) # ( !\GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ & ( (\A[61]~input_o\ & \B[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	dataf => \GEN_BLOCKS:15:LACG_INST|ALT_INV_g_int~1_combout\,
	combout => \block_carry_out~0_combout\);

-- Location: LABCELL_X47_Y1_N20
\block_carry_out~1\ : arriaii_lcell_comb
-- Equation(s):
-- \block_carry_out~1_combout\ = ( !\GEN_BLOCKS:15:LACG_INST|C~0_combout\ & ( (!\B[63]~input_o\ & (\A[63]~input_o\ & ((!\A[62]~input_o\ & (\block_carry_out~0_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # 
-- (\block_carry_out~0_combout\)))))) # (\B[63]~input_o\ & (((!\A[62]~input_o\ & (\block_carry_out~0_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # (\block_carry_out~0_combout\)))) # (\A[63]~input_o\))) ) ) # ( 
-- \GEN_BLOCKS:15:LACG_INST|C~0_combout\ & ( (!\B[63]~input_o\ & (\A[63]~input_o\ & ((!\A[62]~input_o\ & (\block_carry_in[15]~33_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # (\block_carry_in[15]~33_combout\)))))) # (\B[63]~input_o\ 
-- & (((!\A[62]~input_o\ & (\block_carry_in[15]~33_combout\ & \B[62]~input_o\)) # (\A[62]~input_o\ & ((\B[62]~input_o\) # (\block_carry_in[15]~33_combout\)))) # (\A[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[63]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_block_carry_in[15]~33_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	datae => \GEN_BLOCKS:15:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \ALT_INV_B[62]~input_o\,
	datag => \ALT_INV_block_carry_out~0_combout\,
	combout => \block_carry_out~1_combout\);

-- Location: LABCELL_X47_Y1_N32
\Ovfl~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = ( \GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ & ( (\B[63]~input_o\) # (\A[63]~input_o\) ) ) # ( !\GEN_BLOCKS:15:LACG_INST|C[3]~1_combout\ & ( (!\A[63]~input_o\ & ((!\block_carry_in[15]~33_combout\) # 
-- ((!\GEN_BLOCKS:15:LACG_INST|Pout~0_combout\) # (\B[63]~input_o\)))) # (\A[63]~input_o\ & ((!\B[63]~input_o\) # ((\block_carry_in[15]~33_combout\ & \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111001101111110111100110100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_block_carry_in[15]~33_combout\,
	datab => \ALT_INV_A[63]~input_o\,
	datac => \GEN_BLOCKS:15:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \ALT_INV_B[63]~input_o\,
	dataf => \GEN_BLOCKS:15:LACG_INST|ALT_INV_C[3]~1_combout\,
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


