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

-- DATE "12/02/2025 18:28:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
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
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : BUFFER std_logic_vector(15 DOWNTO 0);
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~11_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~8_combout\ : std_logic;
SIGNAL \Add|P[11]~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~9_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~4_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~10_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|Cout~2_combout\ : std_logic;
SIGNAL \Add|Cout~3_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~7_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~9_combout\ : std_logic;
SIGNAL \Logic|Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~21_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \Add|P[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~22_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~23_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~11_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~26_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~24_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~11_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~15_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[1]~2_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~25_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~17_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add|G\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|P\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|ALT_INV_Cout~3_combout\ : std_logic;
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
\Add|ALT_INV_Cout~3_combout\ <= NOT \Add|Cout~3_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~5_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~9_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~5_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~5_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~9_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~11_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~10_combout\,
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
	i => \Mux2~7_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~6_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X83_Y73_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~3_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X67_Y73_N1
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X61_Y69_N8
\Logic|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = (\B[0]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[0]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X61_Y70_N18
\Shift|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~2_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~2_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X61_Y70_N8
\Shift|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~5_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~5_combout\);

-- Location: LCCOMB_X60_Y69_N20
\Shift|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~6_combout\ = (\Shift|ShiftRight0~5_combout\) # ((\Shift|ShiftRight1~2_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~2_combout\,
	datab => \Shift|ShiftRight0~5_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~6_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X61_Y69_N30
\Shift|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = (\B[0]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X61_Y69_N28
\Shift|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = (\A[0]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X61_Y69_N18
\Shift|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~3_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Shift|ShiftRight1~3_combout\);

-- Location: LCCOMB_X61_Y69_N24
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (\B[1]~input_o\ & (((\Shift|ShiftRight1~3_combout\)))) # (!\B[1]~input_o\ & ((\Shift|ShiftLeft0~7_combout\) # ((\Shift|ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~7_combout\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight1~3_combout\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: IOIBUF_X58_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X60_Y69_N22
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~6_combout\)) # (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~6_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X61_Y71_N12
\Shift|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~9_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftRight0~9_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X61_Y71_N30
\Shift|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~10_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ShiftRight0~10_combout\);

-- Location: LCCOMB_X61_Y71_N16
\Shift|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~11_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~9_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~9_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~10_combout\,
	combout => \Shift|ShiftRight0~11_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X63_Y71_N18
\Shift|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X63_Y71_N24
\Shift|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~7_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~7_combout\);

-- Location: LCCOMB_X62_Y71_N8
\Shift|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~8_combout\ = (\Shift|ShiftRight0~7_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datad => \Shift|ShiftRight0~7_combout\,
	combout => \Shift|ShiftRight0~8_combout\);

-- Location: LCCOMB_X60_Y69_N16
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~8_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~8_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: IOIBUF_X54_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X60_Y69_N0
\Shift|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: IOIBUF_X52_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X60_Y69_N18
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\ShiftFN[0]~input_o\ & (\A[0]~input_o\ & (\Shift|ShiftRight0~4_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Shift|ShiftRight0~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X60_Y69_N10
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\Y_ShiftOrArith[0]~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~2_combout\,
	datab => \Y_ShiftOrArith[0]~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: IOIBUF_X81_Y73_N1
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X66_Y72_N6
\Add|P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(10) = \B[10]~input_o\ $ (\AddnSub~input_o\ $ (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|P\(10));

-- Location: LCCOMB_X66_Y72_N26
\Add|G[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(10) = (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|G\(10));

-- Location: IOIBUF_X38_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X66_Y72_N20
\Add|GEN_BLOCKS:2:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ = (\Add|G\(10) & ((\A[11]~input_o\) # (\B[11]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(10) & (\A[11]~input_o\ & (\B[11]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(10),
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X65_Y72_N12
\Add|G[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Add|G\(8));

-- Location: IOIBUF_X72_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X66_Y72_N18
\Add|block_carry_in[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~8_combout\ = (\Add|G\(8) & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Add|G\(8) & (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(8),
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|block_carry_in[3]~8_combout\);

-- Location: LCCOMB_X66_Y72_N0
\Add|P[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[11]~0_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P[11]~0_combout\);

-- Location: LCCOMB_X66_Y72_N12
\Add|block_carry_in[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~9_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\) # ((\Add|P\(10) & (\Add|block_carry_in[3]~8_combout\ & \Add|P[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(10),
	datab => \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\,
	datac => \Add|block_carry_in[3]~8_combout\,
	datad => \Add|P[11]~0_combout\,
	combout => \Add|block_carry_in[3]~9_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X61_Y72_N24
\Add|G[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(4) = (\A[4]~input_o\ & (\B[4]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[4]~input_o\,
	combout => \Add|G\(4));

-- Location: LCCOMB_X61_Y72_N10
\Add|block_carry_in[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~1_combout\ = (\Add|G\(4) & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(4) & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add|G\(4),
	datac => \AddnSub~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|block_carry_in[2]~1_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X65_Y72_N26
\Add|block_carry_in[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~0_combout\ = (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \Add|block_carry_in[2]~0_combout\);

-- Location: LCCOMB_X65_Y72_N16
\Add|P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(6) = \AddnSub~input_o\ $ (\B[6]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \Add|P\(6));

-- Location: LCCOMB_X61_Y72_N28
\Add|block_carry_in[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~2_combout\ = (\Add|block_carry_in[2]~0_combout\) # ((\Add|block_carry_in[2]~1_combout\ & \Add|P\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~1_combout\,
	datab => \Add|block_carry_in[2]~0_combout\,
	datad => \Add|P\(6),
	combout => \Add|block_carry_in[2]~2_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X61_Y72_N6
\Add|block_carry_in[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~3_combout\ = (\A[7]~input_o\ & ((\Add|block_carry_in[2]~2_combout\) # (\AddnSub~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\Add|block_carry_in[2]~2_combout\ & (\AddnSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add|block_carry_in[2]~2_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add|block_carry_in[2]~3_combout\);

-- Location: LCCOMB_X61_Y71_N10
\Add|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(1) = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(1));

-- Location: LCCOMB_X60_Y72_N0
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = (\Add|P\(1) & (\A[0]~input_o\ $ (\AddnSub~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(1),
	datad => \B[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X60_Y72_N2
\Add|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(2) = \B[2]~input_o\ $ (\AddnSub~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[2]~input_o\,
	combout => \Add|P\(2));

-- Location: LCCOMB_X60_Y72_N20
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = (\Add|P\(2) & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X60_Y72_N18
\Add|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(0) = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|G\(0));

-- Location: LCCOMB_X60_Y72_N4
\Add|block_carry_in[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~5_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add|G\(0),
	datac => \AddnSub~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add|block_carry_in[1]~5_combout\);

-- Location: LCCOMB_X61_Y72_N22
\Add|G[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(2) = (\A[2]~input_o\ & (\AddnSub~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[2]~input_o\,
	combout => \Add|G\(2));

-- Location: LCCOMB_X60_Y72_N24
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = (\A[3]~input_o\ & ((\Add|G\(2)) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[3]~input_o\ & (\Add|G\(2) & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X60_Y72_N6
\Add|block_carry_in[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~6_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[1]~5_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\)))) # 
-- (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datac => \Add|block_carry_in[1]~5_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\,
	combout => \Add|block_carry_in[1]~6_combout\);

-- Location: LCCOMB_X61_Y71_N0
\Add|P[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(4) = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(4));

-- Location: LCCOMB_X61_Y72_N26
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = (\Add|P\(6) & (\B[7]~input_o\ $ (\AddnSub~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \B[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[7]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X61_Y72_N0
\Add|P[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(5) = \A[5]~input_o\ $ (\AddnSub~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[5]~input_o\,
	combout => \Add|P\(5));

-- Location: LCCOMB_X61_Y72_N4
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = (\Add|P\(4) & (\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \Add|P\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|P\(4),
	datac => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(5),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X60_Y72_N22
\Add|block_carry_in[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~4_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & (\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[1]~4_combout\);

-- Location: LCCOMB_X61_Y72_N16
\Add|block_carry_in[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~7_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[1]~6_combout\) # (\Add|block_carry_in[1]~4_combout\)))) # (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & (\Add|block_carry_in[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~3_combout\,
	datab => \Add|block_carry_in[1]~6_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\,
	datad => \Add|block_carry_in[1]~4_combout\,
	combout => \Add|block_carry_in[2]~7_combout\);

-- Location: LCCOMB_X66_Y72_N14
\Add|P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(9) = \AddnSub~input_o\ $ (\B[9]~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|P\(9));

-- Location: LCCOMB_X66_Y72_N16
\Add|GEN_BLOCKS:2:LACG_INST|Pout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\ = (\Add|P\(9) & (\B[8]~input_o\ $ (\AddnSub~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(9),
	datad => \A[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\);

-- Location: LCCOMB_X66_Y72_N22
\Add|GEN_BLOCKS:2:LACG_INST|Pout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\ & (\B[10]~input_o\ $ (\AddnSub~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\);

-- Location: LCCOMB_X66_Y72_N2
\Add|block_carry_in[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~10_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\ & ((\Add|P[11]~0_combout\ & ((\Add|block_carry_in[2]~7_combout\))) # (!\Add|P[11]~0_combout\ & (\Add|block_carry_in[3]~9_combout\)))) # 
-- (!\Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\ & (\Add|block_carry_in[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~9_combout\,
	datab => \Add|block_carry_in[2]~7_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\,
	datad => \Add|P[11]~0_combout\,
	combout => \Add|block_carry_in[3]~10_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X67_Y72_N18
\Add|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(14) = \AddnSub~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|P\(14));

-- Location: IOIBUF_X38_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X67_Y72_N6
\Add|G[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|G\(12));

-- Location: IOIBUF_X69_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X67_Y72_N4
\Add|P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(13) = \AddnSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|P\(13));

-- Location: LCCOMB_X66_Y72_N8
\Add|G[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(13) = (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Add|G\(13));

-- Location: LCCOMB_X67_Y72_N0
\Add|GEN_BLOCKS:3:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ = (\Add|G\(13) & ((\A[14]~input_o\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\Add|G\(13) & (\A[14]~input_o\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(13),
	datab => \A[14]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X67_Y72_N8
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\) # ((\Add|G\(12) & (\Add|P\(14) & \Add|P\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(12),
	datab => \Add|P\(14),
	datac => \Add|P\(13),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X67_Y72_N10
\Add|GEN_BLOCKS:3:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\ = (\Add|P\(13) & (\AddnSub~input_o\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(13),
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X67_Y72_N12
\Add|GEN_BLOCKS:3:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C\(3) = (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\) # ((\Add|block_carry_in[3]~10_combout\ & (\Add|P\(14) & \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~10_combout\,
	datab => \Add|P\(14),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C\(3));

-- Location: IOIBUF_X87_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X65_Y69_N0
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|C\(3) & ((\AddnSub~input_o\ $ (!\B[15]~input_o\)) # (!\A[15]~input_o\))) # (!\Add|GEN_BLOCKS:3:LACG_INST|C\(3) & (!\A[15]~input_o\ & (\AddnSub~input_o\ $ (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|C\(3),
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X65_Y69_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\FuncClass[0]~input_o\ & (((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & ((\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X67_Y72_N24
\Add|GEN_BLOCKS:3:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ = (\Add|P\(13) & (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(13),
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X67_Y72_N2
\Add|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = (\Add|P\(14) & ((\Add|G\(13)) # ((\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\) # (\Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(13),
	datab => \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\,
	datac => \Add|P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\,
	combout => \Add|Cout~1_combout\);

-- Location: LCCOMB_X67_Y72_N14
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\A[14]~input_o\ & (\AddnSub~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: LCCOMB_X67_Y72_N28
\Add|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~2_combout\ = (\Add|Cout~1_combout\ & ((\Add|block_carry_in[3]~10_combout\) # ((!\Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\)))) # (!\Add|Cout~1_combout\ & (((\Add|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~10_combout\,
	datab => \Add|Cout~1_combout\,
	datac => \Add|Cout~0_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\,
	combout => \Add|Cout~2_combout\);

-- Location: LCCOMB_X65_Y69_N12
\Add|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~3_combout\ = (\Add|Cout~2_combout\ & ((\A[15]~input_o\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\Add|Cout~2_combout\ & (\A[15]~input_o\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~2_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|Cout~3_combout\);

-- Location: LCCOMB_X65_Y69_N14
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((!\FuncClass[0]~input_o\) # (!\Add|Cout~3_combout\)))) # (!\Mux15~0_combout\ & (\Logic|Mux15~0_combout\ & ((\FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux15~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add|Cout~3_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X61_Y71_N26
\Shift|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LCCOMB_X61_Y71_N28
\Shift|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~9_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~7_combout\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: LCCOMB_X63_Y69_N16
\Shift|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = (!\B[0]~input_o\ & (\A[15]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: LCCOMB_X63_Y71_N28
\Shift|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: LCCOMB_X63_Y69_N18
\Shift|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight0~17_combout\) # (\Shift|ShiftRight0~16_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~15_combout\,
	datab => \Shift|ShiftRight0~17_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LCCOMB_X63_Y69_N20
\Shift|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = (\A[15]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: LCCOMB_X63_Y69_N22
\Shift|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight1~8_combout\) # (\Shift|ShiftRight0~16_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~15_combout\,
	datab => \Shift|ShiftRight1~8_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: LCCOMB_X61_Y71_N6
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \Add|P\(1) $ (((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Add|P\(1),
	combout => \Add|S\(1));

-- Location: LCCOMB_X61_Y69_N22
\Shift|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X62_Y70_N28
\Shift|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = (\Shift|ShiftLeft0~8_combout\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X66_Y69_N0
\Y_ShiftOrArith[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~7_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|ShiftLeft0~45_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|ShiftLeft0~45_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[1]~7_combout\);

-- Location: LCCOMB_X66_Y69_N10
\Y_ShiftOrArith[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~7_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (!\Y_ShiftOrArith[1]~7_combout\ & (\Shift|ShiftRight0~18_combout\)))) # (!\ShiftFN[1]~input_o\ & 
-- (((\Y_ShiftOrArith[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~18_combout\,
	datab => \Shift|ShiftRight1~9_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[1]~7_combout\,
	combout => \Y_ShiftOrArith[1]~8_combout\);

-- Location: LCCOMB_X61_Y69_N20
\Shift|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: LCCOMB_X60_Y69_N28
\Shift|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Y_ShiftOrArith[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~5_combout\ = (\Shift|ShiftRight0~14_combout\) # ((\Shift|ShiftRight1~6_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~14_combout\,
	datab => \Shift|ShiftRight1~6_combout\,
	datac => \B[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~5_combout\);

-- Location: LCCOMB_X61_Y70_N6
\Shift|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: LCCOMB_X61_Y70_N20
\Shift|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~12_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~12_combout\);

-- Location: LCCOMB_X61_Y70_N0
\Shift|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~13_combout\ = (\Shift|ShiftRight0~12_combout\) # ((\Shift|ShiftRight1~5_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~5_combout\,
	datab => \Shift|ShiftRight0~12_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~13_combout\);

-- Location: LCCOMB_X60_Y69_N24
\Y_ShiftOrArith[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~6_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~13_combout\))) # (!\B[2]~input_o\ & (\Y_ShiftOrArith[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~5_combout\,
	datac => \Shift|ShiftRight0~13_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[1]~6_combout\);

-- Location: LCCOMB_X60_Y69_N26
\Y_ShiftOrArith[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~9_combout\ = (\B[3]~input_o\ & (\Y_ShiftOrArith[1]~8_combout\)) # (!\B[3]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~6_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~8_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[1]~6_combout\,
	combout => \Y_ShiftOrArith[1]~9_combout\);

-- Location: LCCOMB_X61_Y69_N10
\Logic|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux14~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux14~0_combout\);

-- Location: LCCOMB_X66_Y69_N12
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux14~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_ShiftOrArith[1]~9_combout\,
	datac => \Logic|Mux14~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X63_Y70_N16
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X63_Y71_N8
\Shift|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LCCOMB_X63_Y71_N26
\Shift|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~11_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~7_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~11_combout\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LCCOMB_X62_Y71_N4
\Shift|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & ((\Shift|ShiftRight1~4_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \Shift|ShiftRight1~4_combout\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: LCCOMB_X63_Y69_N24
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X62_Y69_N0
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux12~1_combout\ & (((\Shift|ShiftRight0~19_combout\) # (\Mux12~0_combout\)))) # (!\Mux12~1_combout\ & (\Shift|ShiftRight1~3_combout\ & ((!\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Shift|ShiftRight1~3_combout\,
	datac => \Shift|ShiftRight0~19_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X61_Y70_N10
\Shift|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LCCOMB_X61_Y71_N8
\Shift|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LCCOMB_X62_Y71_N14
\Shift|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = (\Shift|ShiftRight1~14_combout\) # ((\B[0]~input_o\ & \Shift|ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~14_combout\,
	datad => \Shift|ShiftRight1~15_combout\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\ & (((\Shift|ShiftRight1~16_combout\) # (!\Mux12~0_combout\)))) # (!\Mux13~1_combout\ & (\Shift|ShiftRight1~2_combout\ & ((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \Shift|ShiftRight1~16_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X60_Y72_N8
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add|G\(0),
	datac => \AddnSub~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X60_Y72_N26
\Add|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(2) = \Add|P\(2) $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(2),
	combout => \Add|S\(2));

-- Location: LCCOMB_X63_Y72_N26
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X61_Y69_N26
\Shift|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X61_Y69_N4
\Shift|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X62_Y70_N16
\Shift|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~9_combout\) # (\Shift|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~9_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~10_combout\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X63_Y72_N16
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X62_Y69_N20
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux12~3_combout\ & (((\Shift|ShiftLeft0~11_combout\ & \Mux12~2_combout\)))) # (!\Mux12~3_combout\ & ((\Add|S\(2)) # ((!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(2),
	datab => \Mux12~3_combout\,
	datac => \Shift|ShiftLeft0~11_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X63_Y71_N22
\Shift|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = (\B[1]~input_o\ & (((\A[15]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LCCOMB_X62_Y71_N10
\Shift|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~10_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \Shift|ShiftRight1~10_combout\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LCCOMB_X62_Y69_N6
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & ((\Mux13~2_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux13~3_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux13~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~13_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X61_Y69_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X66_Y69_N30
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux13~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux13~4_combout\,
	datac => \Mux13~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X61_Y69_N14
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X63_Y71_N12
\Shift|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: LCCOMB_X63_Y71_N14
\Shift|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = (\Shift|ShiftRight1~17_combout\) # ((!\B[0]~input_o\ & \Shift|ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~17_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~11_combout\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: LCCOMB_X63_Y69_N2
\Shift|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = (!\B[0]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: LCCOMB_X62_Y69_N2
\Shift|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~21_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & ((\Shift|ShiftRight0~20_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~18_combout\,
	datac => \Shift|ShiftRight0~20_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~21_combout\);

-- Location: LCCOMB_X62_Y69_N12
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~1_combout\ & ((\Shift|ShiftRight0~21_combout\) # ((\Mux12~0_combout\)))) # (!\Mux12~1_combout\ & (((\Shift|ShiftRight1~6_combout\ & !\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Shift|ShiftRight0~21_combout\,
	datac => \Shift|ShiftRight1~6_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X62_Y71_N16
\Shift|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~10_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~15_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~10_combout\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: LCCOMB_X62_Y69_N14
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & (((\Shift|ShiftRight1~20_combout\) # (!\Mux12~0_combout\)))) # (!\Mux12~5_combout\ & (\Shift|ShiftRight1~5_combout\ & ((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~5_combout\,
	datab => \Shift|ShiftRight1~5_combout\,
	datac => \Shift|ShiftRight1~20_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X62_Y69_N8
\Shift|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = (\B[2]~input_o\ & (\A[15]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Shift|ShiftRight1~18_combout\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: LCCOMB_X60_Y72_N10
\Add|P[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[3]~1_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P[3]~1_combout\);

-- Location: LCCOMB_X60_Y72_N14
\Add|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(1) = (\A[1]~input_o\ & (\AddnSub~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add|G\(1));

-- Location: LCCOMB_X60_Y72_N16
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = (\A[2]~input_o\ & ((\Add|G\(1)) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[2]~input_o\ & (\Add|G\(1) & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[2]~input_o\,
	datad => \Add|G\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X60_Y72_N12
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = (\Add|P\(2) & ((\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\AddnSub~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add|P\(2),
	datac => \AddnSub~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X60_Y72_N28
\Add|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(3) = \Add|P[3]~1_combout\ $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) # ((\Add|P\(1) & \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P[3]~1_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\,
	datac => \Add|P\(1),
	datad => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\,
	combout => \Add|S\(3));

-- Location: LCCOMB_X61_Y70_N28
\Shift|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X62_Y70_N26
\Shift|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\) # ((\Shift|ShiftLeft0~8_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~12_combout\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X62_Y69_N16
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~3_combout\ & (((\Shift|ShiftLeft0~13_combout\ & \Mux12~2_combout\)))) # (!\Mux12~3_combout\ & ((\Add|S\(3)) # ((!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(3),
	datab => \Mux12~3_combout\,
	datac => \Shift|ShiftLeft0~13_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X62_Y69_N18
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux12~7_combout\ & (\Mux12~6_combout\)) # (!\Mux12~7_combout\ & ((\Shift|ShiftRight1~19_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|ShiftRight1~19_combout\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X62_Y69_N4
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux12~4_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux12~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux12~8_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X61_Y72_N2
\Add|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(4) = \Add|P\(4) $ (((\Add|block_carry_in[1]~4_combout\) # (\Add|block_carry_in[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|block_carry_in[1]~4_combout\,
	datac => \Add|block_carry_in[1]~6_combout\,
	datad => \Add|P\(4),
	combout => \Add|S\(4));

-- Location: LCCOMB_X61_Y71_N18
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X63_Y72_N24
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X63_Y72_N14
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X62_Y71_N18
\Shift|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~22_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~7_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~7_combout\,
	combout => \Shift|ShiftRight0~22_combout\);

-- Location: LCCOMB_X62_Y69_N22
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\B[3]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[3]~input_o\ & ((\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux8~1_combout\ & (((\B[3]~input_o\)))) # (!\Mux8~1_combout\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~22_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~22_combout\,
	datab => \Shift|ShiftRight0~6_combout\,
	datac => \Mux8~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X63_Y69_N4
\Shift|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = (\Shift|ShiftRight0~22_combout\) # ((\A[15]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~22_combout\,
	datab => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & (((\Shift|ShiftRight1~21_combout\) # (!\Mux8~1_combout\)))) # (!\Mux11~1_combout\ & (\Shift|ShiftRight0~11_combout\ & ((\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \Mux11~1_combout\,
	datac => \Shift|ShiftRight1~21_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X62_Y72_N8
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux8~3_combout\ & (\Mux11~0_combout\ & (\Mux8~2_combout\))) # (!\Mux8~3_combout\ & (((\Mux11~2_combout\) # (!\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X61_Y70_N30
\Shift|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X61_Y69_N0
\Shift|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X61_Y69_N2
\Shift|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = (\Shift|ShiftLeft0~14_combout\) # ((!\B[0]~input_o\ & \Shift|ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~15_combout\,
	datad => \Shift|ShiftLeft0~14_combout\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X61_Y69_N12
\Shift|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~6_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~16_combout\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X63_Y72_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\ShiftFN[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X62_Y72_N18
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & ((\Add|S\(4)) # ((!\Mux8~0_combout\)))) # (!\Mux11~3_combout\ & (((\Shift|ShiftLeft0~17_combout\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(4),
	datab => \Mux11~3_combout\,
	datac => \Shift|ShiftLeft0~17_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X62_Y72_N28
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X61_Y70_N16
\Shift|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X61_Y70_N2
\Shift|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~15_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~15_combout\,
	datad => \Shift|ShiftLeft0~18_combout\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X62_Y70_N4
\Shift|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~19_combout\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X63_Y69_N14
\Shift|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~23_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~16_combout\) # ((\Shift|ShiftRight0~20_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~16_combout\,
	datab => \Shift|ShiftRight0~20_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~23_combout\);

-- Location: LCCOMB_X60_Y69_N8
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux8~1_combout\ & (\B[3]~input_o\)) # (!\Mux8~1_combout\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~23_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~13_combout\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X63_Y71_N0
\Shift|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: LCCOMB_X63_Y69_N30
\Shift|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\A[15]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \Shift|ShiftRight1~22_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LCCOMB_X60_Y69_N2
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux8~1_combout\ & ((\Mux10~1_combout\ & ((\Shift|ShiftRight1~24_combout\))) # (!\Mux10~1_combout\ & (\Shift|ShiftRight0~15_combout\)))) # (!\Mux8~1_combout\ & (((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Shift|ShiftRight0~15_combout\,
	datac => \Mux10~1_combout\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X62_Y72_N14
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X62_Y72_N0
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux8~2_combout\ & ((\Mux8~3_combout\ & ((\Mux10~0_combout\))) # (!\Mux8~3_combout\ & (\Mux10~2_combout\)))) # (!\Mux8~2_combout\ & (((!\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X60_Y72_N30
\Add|block_carry_in[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~11_combout\ = (\Add|block_carry_in[1]~6_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[1]~6_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[1]~11_combout\);

-- Location: LCCOMB_X61_Y71_N20
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~11_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~11_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[1]~11_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X62_Y72_N22
\Add|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(5) = \AddnSub~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(5));

-- Location: LCCOMB_X62_Y72_N26
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((\Add|S\(5)) # (!\Mux8~0_combout\)))) # (!\Mux10~3_combout\ & (\Shift|ShiftLeft0~20_combout\ & ((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~20_combout\,
	datab => \Mux10~3_combout\,
	datac => \Add|S\(5),
	datad => \Mux8~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X62_Y72_N4
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X62_Y70_N0
\Shift|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X63_Y71_N2
\Shift|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = (\Shift|ShiftLeft0~24_combout\ & (\A[15]~input_o\)) # (!\Shift|ShiftLeft0~24_combout\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~24_combout\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LCCOMB_X62_Y71_N2
\Shift|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~26_combout\ = (!\B[1]~input_o\ & (!\B[2]~input_o\ & \Shift|ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~4_combout\,
	combout => \Shift|ShiftRight0~26_combout\);

-- Location: LCCOMB_X62_Y71_N28
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\B[3]~input_o\ & ((\Mux8~1_combout\) # ((\Shift|ShiftRight0~26_combout\)))) # (!\B[3]~input_o\ & (!\Mux8~1_combout\ & (\Shift|ShiftRight1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux8~1_combout\,
	datac => \Shift|ShiftRight1~16_combout\,
	datad => \Shift|ShiftRight0~26_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X62_Y71_N22
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\ & ((\Shift|ShiftRight1~23_combout\) # ((!\Mux8~1_combout\)))) # (!\Mux9~1_combout\ & (((\Shift|ShiftRight1~12_combout\ & \Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~23_combout\,
	datab => \Mux9~1_combout\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X65_Y72_N14
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X62_Y72_N6
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux8~3_combout\ & (((\Mux8~2_combout\ & \Mux9~0_combout\)))) # (!\Mux8~3_combout\ & ((\Mux9~2_combout\) # ((!\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X61_Y72_N12
\Add|GEN_BLOCKS:1:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ = (\Add|P\(5) & (\B[4]~input_o\ $ (\A[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(5),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X61_Y72_N30
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(4) & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(4) & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add|G\(4),
	datac => \AddnSub~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X61_Y72_N8
\Add|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(6) = \Add|P\(6) $ (((\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & \Add|block_carry_in[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\,
	datab => \Add|block_carry_in[1]~11_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|P\(6),
	combout => \Add|S\(6));

-- Location: LCCOMB_X61_Y70_N12
\Shift|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X61_Y70_N14
\Shift|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~18_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~18_combout\,
	datad => \Shift|ShiftLeft0~21_combout\,
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X62_Y70_N22
\Shift|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~10_combout\) # ((\Shift|ShiftLeft0~9_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~10_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~9_combout\,
	datad => \Shift|ShiftLeft0~22_combout\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X62_Y72_N16
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & ((\Add|S\(6)) # ((!\Mux8~0_combout\)))) # (!\Mux9~3_combout\ & (((\Shift|ShiftLeft0~23_combout\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Add|S\(6),
	datac => \Shift|ShiftLeft0~23_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X62_Y69_N24
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X65_Y72_N24
\Add|G[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(5) = (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(5));

-- Location: LCCOMB_X65_Y72_N18
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = (\Add|G\(5) & ((\A[6]~input_o\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\Add|G\(5) & (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(5),
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X61_Y72_N18
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = (\Add|G\(4)) # ((\Add|P\(4) & ((\Add|block_carry_in[1]~6_combout\) # (\Add|block_carry_in[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(4),
	datab => \Add|P\(4),
	datac => \Add|block_carry_in[1]~6_combout\,
	datad => \Add|block_carry_in[1]~4_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y72_N20
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # ((\Add|P\(5) & (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & \Add|P\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\,
	datab => \Add|P\(5),
	datac => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(6),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X61_Y72_N14
\Add|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(7) = \A[7]~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ $ (\AddnSub~input_o\ $ (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add|S\(7));

-- Location: LCCOMB_X62_Y71_N0
\Shift|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~24_combout\ = (!\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[15]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~24_combout\);

-- Location: LCCOMB_X62_Y71_N26
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~1_combout\ & (((\B[3]~input_o\)))) # (!\Mux8~1_combout\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~24_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~20_combout\,
	datab => \Mux8~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~24_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X62_Y72_N10
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~1_combout\ & ((\Mux8~5_combout\ & (\A[15]~input_o\)) # (!\Mux8~5_combout\ & ((\Shift|ShiftRight1~18_combout\))))) # (!\Mux8~1_combout\ & (((\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Mux8~1_combout\,
	datac => \Mux8~5_combout\,
	datad => \Shift|ShiftRight1~18_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X65_Y72_N20
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X62_Y72_N20
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~3_combout\ & (((\Mux8~2_combout\ & \Mux8~4_combout\)))) # (!\Mux8~3_combout\ & ((\Mux8~6_combout\) # ((!\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X61_Y69_N6
\Shift|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X61_Y70_N24
\Shift|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X61_Y70_N26
\Shift|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~21_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~25_combout\,
	datad => \Shift|ShiftLeft0~21_combout\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X62_Y70_N10
\Shift|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~27_combout\) # ((\Shift|ShiftLeft0~12_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~26_combout\,
	datad => \Shift|ShiftLeft0~12_combout\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X62_Y72_N30
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\Add|S\(7)) # ((!\Mux8~0_combout\)))) # (!\Mux8~7_combout\ & (((\Shift|ShiftLeft0~28_combout\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(7),
	datab => \Mux8~7_combout\,
	datac => \Shift|ShiftLeft0~28_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X62_Y72_N24
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux8~8_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X65_Y72_N0
\Add|S[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(8) = \AddnSub~input_o\ $ (\Add|block_carry_in[2]~7_combout\ $ (\B[8]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[2]~7_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|S\(8));

-- Location: LCCOMB_X61_Y70_N4
\Shift|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = (\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X61_Y70_N22
\Shift|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~25_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~25_combout\,
	datac => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X63_Y70_N2
\Y_ShiftOrArith[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~12_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~16_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~16_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~30_combout\,
	combout => \Y_ShiftOrArith[8]~12_combout\);

-- Location: LCCOMB_X63_Y72_N20
\Y_ShiftOrArith[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~13_combout\ = (\Y_ShiftOrArith[8]~12_combout\) # ((\B[3]~input_o\ & (\A[0]~input_o\ & !\Shift|ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Y_ShiftOrArith[8]~12_combout\,
	combout => \Y_ShiftOrArith[8]~13_combout\);

-- Location: LCCOMB_X60_Y69_N4
\Y_ShiftOrArith[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~10_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~8_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~8_combout\,
	combout => \Y_ShiftOrArith[8]~10_combout\);

-- Location: LCCOMB_X63_Y72_N18
\Y_ShiftOrArith[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~11_combout\ = (\Y_ShiftOrArith[8]~10_combout\) # ((\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_ShiftOrArith[8]~10_combout\,
	datad => \A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~11_combout\);

-- Location: LCCOMB_X63_Y72_N6
\Y_ShiftOrArith[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~14_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[8]~11_combout\)))) # (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\Y_ShiftOrArith[8]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_ShiftOrArith[8]~13_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[8]~11_combout\,
	combout => \Y_ShiftOrArith[8]~14_combout\);

-- Location: LCCOMB_X63_Y72_N0
\Y_ShiftOrArith[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~15_combout\ = (\Y_ShiftOrArith[8]~14_combout\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \Add|S\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Add|S\(8),
	datad => \Y_ShiftOrArith[8]~14_combout\,
	combout => \Y_ShiftOrArith[8]~15_combout\);

-- Location: LCCOMB_X65_Y72_N6
\Logic|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = (\B[8]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[8]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Logic|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y69_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux7~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \Logic|Mux7~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X65_Y72_N28
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: IOIBUF_X72_Y73_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X62_Y71_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X60_Y69_N30
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ((!\ShiftFN[0]~input_o\ & !\B[3]~input_o\)) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X63_Y72_N2
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X62_Y70_N12
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\B[3]~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X63_Y70_N4
\Shift|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X63_Y70_N22
\Shift|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = (\Shift|ShiftLeft0~31_combout\) # ((\Shift|ShiftLeft0~29_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~29_combout\,
	datac => \Shift|ShiftLeft0~31_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X62_Y70_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ((\B[2]~input_o\ & !\B[3]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X62_Y70_N8
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux4~2_combout\ & ((\Shift|ShiftLeft0~19_combout\) # ((\Mux4~1_combout\)))) # (!\Mux4~2_combout\ & (((\Shift|ShiftLeft0~32_combout\ & !\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~19_combout\,
	datab => \Shift|ShiftLeft0~32_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X65_Y72_N10
\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[2]~7_combout\ & ((\A[8]~input_o\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\Add|block_carry_in[2]~7_combout\ & (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[2]~7_combout\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X65_Y72_N4
\Add|S[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(9) = \AddnSub~input_o\ $ (\B[9]~input_o\ $ (\A[9]~input_o\ $ (\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(9));

-- Location: LCCOMB_X62_Y70_N6
\Shift|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~46_combout\ = (\Shift|ShiftLeft0~8_combout\ & (!\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X62_Y70_N18
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux4~1_combout\ & ((\Mux6~1_combout\ & (\Add|S\(9))) # (!\Mux6~1_combout\ & ((\Shift|ShiftLeft0~46_combout\))))) # (!\Mux4~1_combout\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux6~1_combout\,
	datac => \Add|S\(9),
	datad => \Shift|ShiftLeft0~46_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X63_Y69_N0
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux4~3_combout\ & ((\Mux4~4_combout\ & (\Shift|ShiftRight0~18_combout\)) # (!\Mux4~4_combout\ & ((\Mux6~2_combout\))))) # (!\Mux4~3_combout\ & (((!\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~18_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~4_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X63_Y69_N26
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux4~0_combout\ & ((\Mux6~3_combout\ & (\Shift|ShiftRight1~9_combout\)) # (!\Mux6~3_combout\ & ((\A[15]~input_o\))))) # (!\Mux4~0_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~9_combout\,
	datab => \A[15]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X65_Y69_N16
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!\ExtWord~input_o\ & (\Mux6~4_combout\ & (!\FuncClass[1]~input_o\ & !\FuncClass[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Mux6~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X65_Y69_N26
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (!\FuncClass[1]~input_o\ & \FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X66_Y69_N18
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Y_ShiftOrArith[8]~15_combout\ & (\ExtWord~input_o\ & (!\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X65_Y69_N20
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~5_combout\) # ((\Mux6~0_combout\) # ((\Mux6~6_combout\ & \Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux6~5_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X65_Y70_N16
\Shift|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X63_Y70_N8
\Shift|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = (\B[0]~input_o\ & ((\A[9]~input_o\))) # (!\B[0]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X63_Y70_N18
\Shift|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = (\Shift|ShiftLeft0~33_combout\) # ((\Shift|ShiftLeft0~34_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~33_combout\,
	datac => \Shift|ShiftLeft0~34_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X62_Y70_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux4~1_combout\ & ((\Shift|ShiftLeft0~11_combout\) # ((\Mux4~2_combout\)))) # (!\Mux4~1_combout\ & (((!\Mux4~2_combout\ & \Shift|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Shift|ShiftLeft0~11_combout\,
	datac => \Mux4~2_combout\,
	datad => \Shift|ShiftLeft0~35_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X66_Y72_N28
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(8) & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Add|G\(8) & (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(8),
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X66_Y72_N30
\Add|S[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(10) = \Add|P\(10) $ (((\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[2]~7_combout\ & \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(10),
	datab => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|block_carry_in[2]~7_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|Pout~2_combout\,
	combout => \Add|S\(10));

-- Location: LCCOMB_X62_Y70_N30
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\Add|S\(10)) # (!\Mux4~2_combout\)))) # (!\Mux5~0_combout\ & (\Shift|ShiftLeft0~22_combout\ & (\Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~22_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \Add|S\(10),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X63_Y69_N12
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux4~3_combout\ & ((\Mux4~4_combout\ & ((\Shift|ShiftRight0~19_combout\))) # (!\Mux4~4_combout\ & (\Mux5~1_combout\)))) # (!\Mux4~3_combout\ & (((!\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~4_combout\,
	datad => \Shift|ShiftRight0~19_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X62_Y69_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\Shift|ShiftRight1~13_combout\)) # (!\Mux4~0_combout\))) # (!\Mux5~2_combout\ & (\Mux4~0_combout\ & (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \A[15]~input_o\,
	datad => \Shift|ShiftRight1~13_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X65_Y69_N30
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (!\ExtWord~input_o\ & (\Mux5~3_combout\ & (!\FuncClass[1]~input_o\ & !\FuncClass[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Mux5~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X61_Y71_N22
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\B[10]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[10]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[10]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X65_Y69_N24
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~4_combout\) # ((\Mux6~0_combout\) # ((\Mux5~5_combout\ & \Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~5_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X61_Y71_N24
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X63_Y70_N28
\Shift|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (\B[0]~input_o\ & ((\A[10]~input_o\))) # (!\B[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X65_Y72_N30
\Shift|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[8]~input_o\))) # (!\B[0]~input_o\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X63_Y70_N6
\Shift|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = (\Shift|ShiftLeft0~36_combout\) # ((\Shift|ShiftLeft0~37_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~37_combout\,
	datac => \Shift|ShiftLeft0~36_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X62_Y70_N24
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~1_combout\ & (\Mux4~2_combout\)) # (!\Mux4~1_combout\ & ((\Mux4~2_combout\ & (\Shift|ShiftLeft0~26_combout\)) # (!\Mux4~2_combout\ & ((\Shift|ShiftLeft0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ShiftLeft0~26_combout\,
	datad => \Shift|ShiftLeft0~38_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X66_Y72_N24
\Add|G[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(9) = (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|G\(9));

-- Location: LCCOMB_X66_Y72_N10
\Add|GEN_BLOCKS:2:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ = (\Add|G\(9) & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(9) & (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Add|G\(9),
	datac => \AddnSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X66_Y72_N4
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) # ((\Add|P\(10) & (\Add|P\(9) & \Add|G\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(10),
	datab => \Add|P\(9),
	datac => \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\,
	datad => \Add|G\(8),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X65_Y72_N8
\Add|S[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(11) = \Add|P[11]~0_combout\ $ (((\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\) # ((\Add|block_carry_in[2]~7_combout\ & \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\,
	datab => \Add|block_carry_in[2]~7_combout\,
	datac => \Add|P[11]~0_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|Pout~3_combout\,
	combout => \Add|S\(11));

-- Location: LCCOMB_X62_Y70_N2
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~1_combout\ & ((\Mux4~5_combout\ & ((\Add|S\(11)))) # (!\Mux4~5_combout\ & (\Shift|ShiftLeft0~13_combout\)))) # (!\Mux4~1_combout\ & (\Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~5_combout\,
	datac => \Shift|ShiftLeft0~13_combout\,
	datad => \Add|S\(11),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X62_Y69_N28
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~3_combout\ & ((\Mux4~4_combout\ & ((\Shift|ShiftRight0~21_combout\))) # (!\Mux4~4_combout\ & (\Mux4~6_combout\)))) # (!\Mux4~3_combout\ & (((!\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Shift|ShiftRight0~21_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X62_Y69_N30
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & ((\Shift|ShiftRight1~19_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux4~7_combout\ & (((\A[15]~input_o\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Shift|ShiftRight1~19_combout\,
	datac => \A[15]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X65_Y69_N10
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~8_combout\ & (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~8_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X65_Y69_N4
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux6~0_combout\) # ((\Mux4~9_combout\) # ((\Mux4~10_combout\ & \Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~10_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X66_Y69_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\FuncClass[0]~input_o\) # (\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X63_Y70_N10
\Shift|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X63_Y70_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X63_Y70_N12
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux12~1_combout\ & (((\Shift|ShiftLeft0~30_combout\) # (\Mux3~2_combout\)))) # (!\Mux12~1_combout\ & (\Shift|ShiftLeft0~39_combout\ & ((!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~39_combout\,
	datab => \Shift|ShiftLeft0~30_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X63_Y70_N30
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & ((\Shift|ShiftLeft0~17_combout\) # ((!\Mux3~2_combout\)))) # (!\Mux3~3_combout\ & (((\Shift|ShiftLeft0~34_combout\ & \Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~17_combout\,
	datab => \Shift|ShiftLeft0~34_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X63_Y69_N6
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux4~3_combout\ & ((\Mux4~4_combout\ & ((\Shift|ShiftRight0~22_combout\))) # (!\Mux4~4_combout\ & (\Mux3~4_combout\)))) # (!\Mux4~3_combout\ & (((!\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~4_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X63_Y69_N8
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux4~0_combout\ & ((\Mux3~5_combout\ & ((\Shift|ShiftRight1~21_combout\))) # (!\Mux3~5_combout\ & (\A[15]~input_o\)))) # (!\Mux4~0_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \A[15]~input_o\,
	datac => \Shift|ShiftRight1~21_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X66_Y69_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X67_Y72_N22
\Add|S[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(12) = \AddnSub~input_o\ $ (\A[12]~input_o\ $ (\B[12]~input_o\ $ (\Add|block_carry_in[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Add|block_carry_in[3]~10_combout\,
	combout => \Add|S\(12));

-- Location: LCCOMB_X66_Y69_N8
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~0_combout\ & (((\Mux3~1_combout\)))) # (!\Mux3~0_combout\ & ((\Mux3~1_combout\ & ((\Add|S\(12)))) # (!\Mux3~1_combout\ & (\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \Add|S\(12),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X61_Y71_N2
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\B[12]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[12]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X66_Y69_N26
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~0_combout\ & ((\Mux3~7_combout\ & ((\Mux3~8_combout\))) # (!\Mux3~7_combout\ & (\Y_ShiftOrArith[8]~15_combout\)))) # (!\Mux3~0_combout\ & (((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~7_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X66_Y69_N20
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~9_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~9_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X65_Y72_N2
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\B[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X63_Y71_N20
\Shift|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = (\B[0]~input_o\ & (\A[12]~input_o\)) # (!\B[0]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X63_Y70_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~2_combout\ & (((\Mux12~1_combout\)))) # (!\Mux3~2_combout\ & ((\Mux12~1_combout\ & (\Shift|ShiftLeft0~32_combout\)) # (!\Mux12~1_combout\ & ((\Shift|ShiftLeft0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~32_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux12~1_combout\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y70_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux3~2_combout\ & ((\Mux2~0_combout\ & ((\Shift|ShiftLeft0~20_combout\))) # (!\Mux2~0_combout\ & (\Shift|ShiftLeft0~37_combout\)))) # (!\Mux3~2_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Shift|ShiftLeft0~37_combout\,
	datac => \Shift|ShiftLeft0~20_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X63_Y69_N10
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux4~3_combout\ & ((\Mux4~4_combout\ & ((\Shift|ShiftRight0~23_combout\))) # (!\Mux4~4_combout\ & (\Mux2~1_combout\)))) # (!\Mux4~3_combout\ & (((!\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~4_combout\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X63_Y69_N28
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\Shift|ShiftRight1~24_combout\) # (!\Mux4~0_combout\)))) # (!\Mux2~2_combout\ & (\A[15]~input_o\ & (\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \A[15]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X66_Y69_N22
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux3~1_combout\ & (((\Mux3~0_combout\)))) # (!\Mux3~1_combout\ & ((\Mux3~0_combout\ & (\Y_ShiftOrArith[8]~15_combout\)) # (!\Mux3~0_combout\ & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X67_Y72_N16
\Add|GEN_BLOCKS:3:LACG_INST|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[1]~2_combout\ = (\A[12]~input_o\ & ((\Add|block_carry_in[3]~10_combout\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\Add|block_carry_in[3]~10_combout\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Add|block_carry_in[3]~10_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~2_combout\);

-- Location: LCCOMB_X67_Y72_N30
\Add|S[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(13) = \AddnSub~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[1]~2_combout\ $ (\B[13]~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~2_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|S\(13));

-- Location: LCCOMB_X66_Y69_N24
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux3~1_combout\ & ((\Mux2~4_combout\ & (\Mux2~5_combout\)) # (!\Mux2~4_combout\ & ((\Add|S\(13)))))) # (!\Mux3~1_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux2~4_combout\,
	datad => \Add|S\(13),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X66_Y69_N2
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~6_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X65_Y69_N22
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[14]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y72_N26
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2_combout\ = (\A[13]~input_o\ & ((\Add|G\(12)) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[13]~input_o\ & (\Add|G\(12) & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(12),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2_combout\);

-- Location: LCCOMB_X67_Y72_N20
\Add|S[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(14) = \Add|P\(14) $ (((\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2_combout\) # ((\Add|block_carry_in[3]~10_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~10_combout\,
	datab => \Add|P\(14),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~2_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C~1_combout\,
	combout => \Add|S\(14));

-- Location: LCCOMB_X62_Y71_N12
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\ShiftFN[1]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftRight0~26_combout\))) # (!\ShiftFN[1]~input_o\ & (((\Add|S\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~26_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Add|S\(14),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X63_Y71_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[11]~input_o\))) # (!\B[0]~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X63_Y71_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X63_Y71_N10
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftLeft0~35_combout\)))) # (!\B[2]~input_o\ & ((\Mux1~0_combout\) # ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~35_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X62_Y71_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\B[3]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~23_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~23_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X62_Y71_N24
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\B[3]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[15]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\Shift|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X62_Y71_N6
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\ShiftFN[0]~input_o\ & (((\Mux1~3_combout\) # (\Mux1~4_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X66_Y69_N4
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~15_combout\)) # (!\ExtWord~input_o\ & ((\Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \ExtWord~input_o\,
	datac => \Mux1~8_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X66_Y69_N6
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux1~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Logic|Mux1~0_combout\,
	datac => \Mux1~5_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X65_Y69_N28
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y71_N4
\Shift|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X63_Y71_N30
\Shift|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~41_combout\) # ((\Shift|ShiftLeft0~40_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~40_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~41_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X63_Y70_N20
\Shift|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~42_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~42_combout\,
	datad => \Shift|ShiftLeft0~38_combout\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X63_Y70_N14
\Shift|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = (\Shift|ShiftLeft0~43_combout\) # ((\Shift|ShiftLeft0~28_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~28_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~43_combout\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X63_Y72_N12
\Shift|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~25_combout\ = (!\Shift|ShiftLeft0~24_combout\ & (!\B[3]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~24_combout\,
	datac => \B[3]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight0~25_combout\);

-- Location: LCCOMB_X65_Y69_N8
\Add|S_internal[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S_internal\(15) = \Add|GEN_BLOCKS:3:LACG_INST|C\(3) $ (\AddnSub~input_o\ $ (\A[15]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|C\(3),
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|S_internal\(15));

-- Location: LCCOMB_X63_Y72_N30
\Y_ShiftOrArith[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~16_combout\ = (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight0~25_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\ & \Add|S_internal\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~25_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S_internal\(15),
	combout => \Y_ShiftOrArith[8]~16_combout\);

-- Location: LCCOMB_X63_Y72_N8
\Y_ShiftOrArith[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~17_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[8]~16_combout\ & ((\A[15]~input_o\))) # (!\Y_ShiftOrArith[8]~16_combout\ & (\Shift|ShiftLeft0~44_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~44_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_ShiftOrArith[8]~16_combout\,
	datad => \A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~17_combout\);

-- Location: LCCOMB_X65_Y69_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Y_ShiftOrArith[8]~17_combout\ & (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~17_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X65_Y69_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\Mux6~0_combout\) # ((\Logic|Mux0~0_combout\ & \Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux0~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X62_Y72_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add|S\(6)) # ((\Add|S\(8)) # (\Add|S\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|S\(6),
	datac => \Add|S\(8),
	datad => \Add|S\(7),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X63_Y72_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\) # ((\Add|S\(10)) # ((\Add|S\(11)) # (\Add|S\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Add|S\(10),
	datac => \Add|S\(11),
	datad => \Add|S\(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X61_Y71_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add|S\(1) & (!\Add|S\(9) & (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ $ (!\Add|P\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\,
	datac => \Add|S\(9),
	datad => \Add|P\(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X61_Y71_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add|S\(13) & (\Equal0~0_combout\ & (\A[0]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(13),
	datab => \A[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X62_Y72_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add|S\(3) & (\Equal0~1_combout\ & (!\Add|S\(2) & !\Add|S\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(3),
	datab => \Equal0~1_combout\,
	datac => \Add|S\(2),
	datad => \Add|S\(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X63_Y72_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Equal0~4_combout\ & (!\Add|S\(12) & (\Equal0~2_combout\ & !\Add|S_internal\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Add|S\(12),
	datac => \Equal0~2_combout\,
	datad => \Add|S_internal\(15),
	combout => \Equal0~5_combout\);

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

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


