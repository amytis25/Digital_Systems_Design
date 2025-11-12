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

-- DATE "11/11/2025 16:20:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	MagComp IS
    PORT (
	X : IN std_logic_vector(63 DOWNTO 0);
	Y : IN std_logic_vector(63 DOWNTO 0);
	EQ : BUFFER std_logic;
	GT : BUFFER std_logic
	);
END MagComp;

-- Design Ports Information
-- EQ	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GT	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[62]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[61]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[60]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[59]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[58]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[63]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[57]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[56]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[54]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[55]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[52]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[51]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[50]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[49]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[48]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[53]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[41]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[40]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[43]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[42]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[47]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[46]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[45]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[44]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[39]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[38]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[37]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[36]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[35]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[34]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[33]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[32]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[30]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[29]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[28]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[27]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[26]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[31]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[25]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[24]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[22]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[21]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[20]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[19]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[18]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[17]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[16]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MagComp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_EQ : std_logic;
SIGNAL ww_GT : std_logic;
SIGNAL \EQ~output_o\ : std_logic;
SIGNAL \GT~output_o\ : std_logic;
SIGNAL \X[17]~input_o\ : std_logic;
SIGNAL \Y[16]~input_o\ : std_logic;
SIGNAL \X[16]~input_o\ : std_logic;
SIGNAL \Y[17]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|EQ~3_combout\ : std_logic;
SIGNAL \Y[18]~input_o\ : std_logic;
SIGNAL \X[19]~input_o\ : std_logic;
SIGNAL \X[18]~input_o\ : std_logic;
SIGNAL \Y[19]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \Y[20]~input_o\ : std_logic;
SIGNAL \X[20]~input_o\ : std_logic;
SIGNAL \Y[22]~input_o\ : std_logic;
SIGNAL \X[22]~input_o\ : std_logic;
SIGNAL \Y[21]~input_o\ : std_logic;
SIGNAL \X[21]~input_o\ : std_logic;
SIGNAL \Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Y[23]~input_o\ : std_logic;
SIGNAL \X[23]~input_o\ : std_logic;
SIGNAL \Y[29]~input_o\ : std_logic;
SIGNAL \X[29]~input_o\ : std_logic;
SIGNAL \X[30]~input_o\ : std_logic;
SIGNAL \Y[30]~input_o\ : std_logic;
SIGNAL \Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Y[28]~input_o\ : std_logic;
SIGNAL \X[28]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \X[27]~input_o\ : std_logic;
SIGNAL \Y[26]~input_o\ : std_logic;
SIGNAL \Y[27]~input_o\ : std_logic;
SIGNAL \X[26]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Y[31]~input_o\ : std_logic;
SIGNAL \Y[25]~input_o\ : std_logic;
SIGNAL \X[31]~input_o\ : std_logic;
SIGNAL \X[25]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \X[24]~input_o\ : std_logic;
SIGNAL \Y[24]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|EQ~4_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \EQ~2_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \EQ~3_combout\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \X[11]~input_o\ : std_logic;
SIGNAL \Y[10]~input_o\ : std_logic;
SIGNAL \X[10]~input_o\ : std_logic;
SIGNAL \Y[11]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Y[12]~input_o\ : std_logic;
SIGNAL \X[12]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ : std_logic;
SIGNAL \Y[13]~input_o\ : std_logic;
SIGNAL \Y[15]~input_o\ : std_logic;
SIGNAL \X[14]~input_o\ : std_logic;
SIGNAL \Y[14]~input_o\ : std_logic;
SIGNAL \X[15]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ : std_logic;
SIGNAL \X[13]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \Y[9]~input_o\ : std_logic;
SIGNAL \Y[8]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \EQ~0_combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \EQ~1_combout\ : std_logic;
SIGNAL \EQ~4_combout\ : std_logic;
SIGNAL \X[33]~input_o\ : std_logic;
SIGNAL \Y[32]~input_o\ : std_logic;
SIGNAL \X[32]~input_o\ : std_logic;
SIGNAL \Y[33]~input_o\ : std_logic;
SIGNAL \Recur:Upper|EQ~3_combout\ : std_logic;
SIGNAL \Y[34]~input_o\ : std_logic;
SIGNAL \Y[35]~input_o\ : std_logic;
SIGNAL \X[35]~input_o\ : std_logic;
SIGNAL \X[34]~input_o\ : std_logic;
SIGNAL \Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \Recur:Upper|EQ~4_combout\ : std_logic;
SIGNAL \Y[39]~input_o\ : std_logic;
SIGNAL \X[39]~input_o\ : std_logic;
SIGNAL \X[43]~input_o\ : std_logic;
SIGNAL \Y[42]~input_o\ : std_logic;
SIGNAL \Y[43]~input_o\ : std_logic;
SIGNAL \X[42]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Y[47]~input_o\ : std_logic;
SIGNAL \X[46]~input_o\ : std_logic;
SIGNAL \X[47]~input_o\ : std_logic;
SIGNAL \Y[46]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ : std_logic;
SIGNAL \Y[45]~input_o\ : std_logic;
SIGNAL \Y[44]~input_o\ : std_logic;
SIGNAL \X[44]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ : std_logic;
SIGNAL \X[45]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\ : std_logic;
SIGNAL \Y[40]~input_o\ : std_logic;
SIGNAL \X[40]~input_o\ : std_logic;
SIGNAL \Y[41]~input_o\ : std_logic;
SIGNAL \X[41]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \X[53]~input_o\ : std_logic;
SIGNAL \Y[55]~input_o\ : std_logic;
SIGNAL \X[55]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \X[56]~input_o\ : std_logic;
SIGNAL \Y[56]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\ : std_logic;
SIGNAL \Y[60]~input_o\ : std_logic;
SIGNAL \X[60]~input_o\ : std_logic;
SIGNAL \Y[62]~input_o\ : std_logic;
SIGNAL \Y[61]~input_o\ : std_logic;
SIGNAL \X[62]~input_o\ : std_logic;
SIGNAL \X[61]~input_o\ : std_logic;
SIGNAL \GT~0_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \X[57]~input_o\ : std_logic;
SIGNAL \X[63]~input_o\ : std_logic;
SIGNAL \Y[57]~input_o\ : std_logic;
SIGNAL \Y[63]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \Y[59]~input_o\ : std_logic;
SIGNAL \X[59]~input_o\ : std_logic;
SIGNAL \X[58]~input_o\ : std_logic;
SIGNAL \Y[58]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\ : std_logic;
SIGNAL \X[54]~input_o\ : std_logic;
SIGNAL \Y[54]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|EQ~0_combout\ : std_logic;
SIGNAL \Y[53]~input_o\ : std_logic;
SIGNAL \Y[50]~input_o\ : std_logic;
SIGNAL \X[49]~input_o\ : std_logic;
SIGNAL \X[50]~input_o\ : std_logic;
SIGNAL \Y[49]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|EQ~2_combout\ : std_logic;
SIGNAL \Y[48]~input_o\ : std_logic;
SIGNAL \X[48]~input_o\ : std_logic;
SIGNAL \X[51]~input_o\ : std_logic;
SIGNAL \Y[52]~input_o\ : std_logic;
SIGNAL \Y[51]~input_o\ : std_logic;
SIGNAL \X[52]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|EQ~3_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Upper|EQ~4_combout\ : std_logic;
SIGNAL \X[38]~input_o\ : std_logic;
SIGNAL \Y[37]~input_o\ : std_logic;
SIGNAL \X[37]~input_o\ : std_logic;
SIGNAL \Y[38]~input_o\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Y[36]~input_o\ : std_logic;
SIGNAL \X[36]~input_o\ : std_logic;
SIGNAL \Recur:Upper|EQ~1_combout\ : std_logic;
SIGNAL \Recur:Upper|EQ~5_combout\ : std_logic;
SIGNAL \EQ~5_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~10_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~11_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~5_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~6_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~2_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~3_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~4_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~7_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~8_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~9_combout\ : std_logic;
SIGNAL \Recur:Lower|GT~12_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~7_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~3_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~2_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~4_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~5_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~6_combout\ : std_logic;
SIGNAL \Recur:Lower|Recur:Lower|GT~8_combout\ : std_logic;
SIGNAL \GT~1_combout\ : std_logic;
SIGNAL \GT~7_combout\ : std_logic;
SIGNAL \GT~12_combout\ : std_logic;
SIGNAL \GT~13_combout\ : std_logic;
SIGNAL \GT~9_combout\ : std_logic;
SIGNAL \GT~10_combout\ : std_logic;
SIGNAL \GT~11_combout\ : std_logic;
SIGNAL \GT~14_combout\ : std_logic;
SIGNAL \GT~8_combout\ : std_logic;
SIGNAL \GT~3_combout\ : std_logic;
SIGNAL \GT~4_combout\ : std_logic;
SIGNAL \GT~2_combout\ : std_logic;
SIGNAL \GT~5_combout\ : std_logic;
SIGNAL \GT~6_combout\ : std_logic;
SIGNAL \GT~15_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|GT~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~7_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~5_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~6_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~1_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~2_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~3_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~4_combout\ : std_logic;
SIGNAL \Recur:Upper|Recur:Lower|GT~8_combout\ : std_logic;
SIGNAL \GT~16_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_Y <= Y;
EQ <= ww_EQ;
GT <= ww_GT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y0_N2
\EQ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ~5_combout\,
	devoe => ww_devoe,
	o => \EQ~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\GT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GT~16_combout\,
	devoe => ww_devoe,
	o => \GT~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\X[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(17),
	o => \X[17]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Y[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(16),
	o => \Y[16]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\X[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(16),
	o => \X[16]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\Y[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(17),
	o => \Y[17]~input_o\);

-- Location: LCCOMB_X1_Y23_N6
\Recur:Lower|Recur:Upper|EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|EQ~3_combout\ = (\X[17]~input_o\ & (\Y[17]~input_o\ & (\Y[16]~input_o\ $ (!\X[16]~input_o\)))) # (!\X[17]~input_o\ & (!\Y[17]~input_o\ & (\Y[16]~input_o\ $ (!\X[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~input_o\,
	datab => \Y[16]~input_o\,
	datac => \X[16]~input_o\,
	datad => \Y[17]~input_o\,
	combout => \Recur:Lower|Recur:Upper|EQ~3_combout\);

-- Location: IOIBUF_X0_Y22_N22
\Y[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(18),
	o => \Y[18]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\X[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(19),
	o => \X[19]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\X[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(18),
	o => \X[18]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Y[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(19),
	o => \Y[19]~input_o\);

-- Location: LCCOMB_X1_Y23_N28
\Recur:Lower|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|EQ~2_combout\ = (\Y[18]~input_o\ & (\X[18]~input_o\ & (\X[19]~input_o\ $ (!\Y[19]~input_o\)))) # (!\Y[18]~input_o\ & (!\X[18]~input_o\ & (\X[19]~input_o\ $ (!\Y[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[18]~input_o\,
	datab => \X[19]~input_o\,
	datac => \X[18]~input_o\,
	datad => \Y[19]~input_o\,
	combout => \Recur:Lower|Recur:Upper|EQ~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\Y[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(20),
	o => \Y[20]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\X[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(20),
	o => \X[20]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Y[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(22),
	o => \Y[22]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\X[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(22),
	o => \X[22]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\Y[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(21),
	o => \Y[21]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\X[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(21),
	o => \X[21]~input_o\);

-- Location: LCCOMB_X1_Y23_N0
\Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~1_combout\ = (\Y[22]~input_o\ & (\X[22]~input_o\ & (\Y[21]~input_o\ $ (!\X[21]~input_o\)))) # (!\Y[22]~input_o\ & (!\X[22]~input_o\ & (\Y[21]~input_o\ $ (!\X[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[22]~input_o\,
	datab => \X[22]~input_o\,
	datac => \Y[21]~input_o\,
	datad => \X[21]~input_o\,
	combout => \Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X1_Y23_N26
\Recur:Lower|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|EQ~1_combout\ = (\Recur:Lower|GT~1_combout\ & (\Y[20]~input_o\ $ (!\X[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[20]~input_o\,
	datac => \X[20]~input_o\,
	datad => \Recur:Lower|GT~1_combout\,
	combout => \Recur:Lower|Recur:Upper|EQ~1_combout\);

-- Location: IOIBUF_X0_Y44_N15
\Y[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(23),
	o => \Y[23]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\X[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(23),
	o => \X[23]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\Y[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(29),
	o => \Y[29]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\X[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(29),
	o => \X[29]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\X[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(30),
	o => \X[30]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\Y[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(30),
	o => \Y[30]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~0_combout\ = (\Y[29]~input_o\ & (\X[29]~input_o\ & (\X[30]~input_o\ $ (!\Y[30]~input_o\)))) # (!\Y[29]~input_o\ & (!\X[29]~input_o\ & (\X[30]~input_o\ $ (!\Y[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[29]~input_o\,
	datab => \X[29]~input_o\,
	datac => \X[30]~input_o\,
	datad => \Y[30]~input_o\,
	combout => \Recur:Lower|GT~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\Y[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(28),
	o => \Y[28]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\X[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(28),
	o => \X[28]~input_o\);

-- Location: LCCOMB_X1_Y46_N10
\Recur:Lower|Recur:Upper|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\ = (\Recur:Lower|GT~0_combout\ & (\Y[28]~input_o\ $ (!\X[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Lower|GT~0_combout\,
	datac => \Y[28]~input_o\,
	datad => \X[28]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\);

-- Location: IOIBUF_X0_Y47_N22
\X[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(27),
	o => \X[27]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\Y[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(26),
	o => \Y[26]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\Y[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(27),
	o => \Y[27]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\X[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(26),
	o => \X[26]~input_o\);

-- Location: LCCOMB_X1_Y46_N20
\Recur:Lower|Recur:Upper|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\ = (\X[27]~input_o\ & (\Y[27]~input_o\ & (\Y[26]~input_o\ $ (!\X[26]~input_o\)))) # (!\X[27]~input_o\ & (!\Y[27]~input_o\ & (\Y[26]~input_o\ $ (!\X[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[27]~input_o\,
	datab => \Y[26]~input_o\,
	datac => \Y[27]~input_o\,
	datad => \X[26]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\);

-- Location: IOIBUF_X0_Y43_N15
\Y[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(31),
	o => \Y[31]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\Y[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(25),
	o => \Y[25]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\X[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(31),
	o => \X[31]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\X[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(25),
	o => \X[25]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\Recur:Lower|Recur:Upper|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Upper|EQ~2_combout\ = (\Y[31]~input_o\ & (\X[31]~input_o\ & (\Y[25]~input_o\ $ (!\X[25]~input_o\)))) # (!\Y[31]~input_o\ & (!\X[31]~input_o\ & (\Y[25]~input_o\ $ (!\X[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[31]~input_o\,
	datab => \Y[25]~input_o\,
	datac => \X[31]~input_o\,
	datad => \X[25]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~2_combout\);

-- Location: IOIBUF_X0_Y44_N1
\X[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(24),
	o => \X[24]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\Y[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(24),
	o => \Y[24]~input_o\);

-- Location: LCCOMB_X1_Y46_N0
\Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\ = \X[24]~input_o\ $ (\Y[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[24]~input_o\,
	datad => \Y[24]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\);

-- Location: LCCOMB_X1_Y46_N18
\Recur:Lower|Recur:Upper|Recur:Upper|EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\ = (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\ & (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\ & (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~2_combout\ & 
-- !\Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\,
	datab => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\,
	datac => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~2_combout\,
	datad => \Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\,
	combout => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\);

-- Location: LCCOMB_X1_Y46_N28
\Recur:Lower|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|EQ~0_combout\ = (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\ & (\Y[23]~input_o\ $ (!\X[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[23]~input_o\,
	datac => \X[23]~input_o\,
	datad => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\,
	combout => \Recur:Lower|Recur:Upper|EQ~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\Recur:Lower|Recur:Upper|EQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|EQ~4_combout\ = (\Recur:Lower|Recur:Upper|EQ~3_combout\ & (\Recur:Lower|Recur:Upper|EQ~2_combout\ & (\Recur:Lower|Recur:Upper|EQ~1_combout\ & \Recur:Lower|Recur:Upper|EQ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Upper|EQ~3_combout\,
	datab => \Recur:Lower|Recur:Upper|EQ~2_combout\,
	datac => \Recur:Lower|Recur:Upper|EQ~1_combout\,
	datad => \Recur:Lower|Recur:Upper|EQ~0_combout\,
	combout => \Recur:Lower|Recur:Upper|EQ~4_combout\);

-- Location: IOIBUF_X40_Y0_N15
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X45_Y4_N12
\EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~2_combout\ = (\Y[2]~input_o\ & (\X[2]~input_o\ & (\Y[3]~input_o\ $ (!\X[3]~input_o\)))) # (!\Y[2]~input_o\ & (!\X[2]~input_o\ & (\Y[3]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \EQ~2_combout\);

-- Location: IOIBUF_X42_Y0_N22
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X45_Y4_N6
\EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~3_combout\ = (\X[0]~input_o\ & (\Y[0]~input_o\ & (\X[1]~input_o\ $ (!\Y[1]~input_o\)))) # (!\X[0]~input_o\ & (!\Y[0]~input_o\ & (\X[1]~input_o\ $ (!\Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \EQ~3_combout\);

-- Location: IOIBUF_X42_Y73_N1
\Y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\X[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(11),
	o => \X[11]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\Y[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(10),
	o => \Y[10]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\X[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(10),
	o => \X[10]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\Y[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(11),
	o => \Y[11]~input_o\);

-- Location: LCCOMB_X39_Y72_N18
\Recur:Lower|Recur:Lower|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\ = (\X[11]~input_o\ & (\Y[11]~input_o\ & (\Y[10]~input_o\ $ (!\X[10]~input_o\)))) # (!\X[11]~input_o\ & (!\Y[11]~input_o\ & (\Y[10]~input_o\ $ (!\X[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[11]~input_o\,
	datab => \Y[10]~input_o\,
	datac => \X[10]~input_o\,
	datad => \Y[11]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\);

-- Location: IOIBUF_X38_Y73_N15
\Y[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(12),
	o => \Y[12]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\X[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(12),
	o => \X[12]~input_o\);

-- Location: LCCOMB_X39_Y72_N22
\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ = \Y[12]~input_o\ $ (\X[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[12]~input_o\,
	datad => \X[12]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\);

-- Location: IOIBUF_X52_Y73_N1
\Y[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(13),
	o => \Y[13]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\Y[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(15),
	o => \Y[15]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\X[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(14),
	o => \X[14]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\Y[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(14),
	o => \Y[14]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\X[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(15),
	o => \X[15]~input_o\);

-- Location: LCCOMB_X39_Y72_N4
\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ = (\Y[15]~input_o\ & (\X[15]~input_o\ & (\X[14]~input_o\ $ (!\Y[14]~input_o\)))) # (!\Y[15]~input_o\ & (!\X[15]~input_o\ & (\X[14]~input_o\ $ (!\Y[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[15]~input_o\,
	datab => \X[14]~input_o\,
	datac => \Y[14]~input_o\,
	datad => \X[15]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\);

-- Location: IOIBUF_X31_Y73_N1
\X[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(13),
	o => \X[13]~input_o\);

-- Location: LCCOMB_X39_Y72_N8
\Recur:Lower|Recur:Lower|Recur:Upper|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\ = (!\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ & (\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ & (\Y[13]~input_o\ $ (!\X[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\,
	datab => \Y[13]~input_o\,
	datac => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\,
	datad => \X[13]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\X[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\X[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\Y[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(9),
	o => \Y[9]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\Y[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(8),
	o => \Y[8]~input_o\);

-- Location: LCCOMB_X39_Y72_N24
\Recur:Lower|Recur:Lower|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|EQ~0_combout\ = (\X[8]~input_o\ & (\Y[8]~input_o\ & (\X[9]~input_o\ $ (!\Y[9]~input_o\)))) # (!\X[8]~input_o\ & (!\Y[8]~input_o\ & (\X[9]~input_o\ $ (!\Y[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~input_o\,
	datab => \X[9]~input_o\,
	datac => \Y[9]~input_o\,
	datad => \Y[8]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~0_combout\);

-- Location: LCCOMB_X39_Y72_N26
\Recur:Lower|Recur:Lower|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\ = (\Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\ & (\Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\ & \Recur:Lower|Recur:Lower|Recur:Upper|EQ~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\,
	datac => \Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\,
	datad => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~0_combout\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\);

-- Location: LCCOMB_X39_Y72_N12
\EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~0_combout\ = (\Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\ & (\Y[7]~input_o\ $ (!\X[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[7]~input_o\,
	datab => \X[7]~input_o\,
	datac => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\,
	combout => \EQ~0_combout\);

-- Location: IOIBUF_X47_Y0_N1
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\Y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\Y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LCCOMB_X45_Y4_N8
\Recur:Lower|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~0_combout\ = (\Y[5]~input_o\ & (\X[5]~input_o\ & (\X[6]~input_o\ $ (!\Y[6]~input_o\)))) # (!\Y[5]~input_o\ & (!\X[5]~input_o\ & (\X[6]~input_o\ $ (!\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[5]~input_o\,
	datab => \X[6]~input_o\,
	datac => \X[5]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \Recur:Lower|Recur:Lower|GT~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\Y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: LCCOMB_X45_Y4_N10
\EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~1_combout\ = (\Recur:Lower|Recur:Lower|GT~0_combout\ & (\X[4]~input_o\ $ (!\Y[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datac => \Recur:Lower|Recur:Lower|GT~0_combout\,
	datad => \Y[4]~input_o\,
	combout => \EQ~1_combout\);

-- Location: LCCOMB_X45_Y4_N16
\EQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~4_combout\ = (\EQ~2_combout\ & (\EQ~3_combout\ & (\EQ~0_combout\ & \EQ~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EQ~2_combout\,
	datab => \EQ~3_combout\,
	datac => \EQ~0_combout\,
	datad => \EQ~1_combout\,
	combout => \EQ~4_combout\);

-- Location: IOIBUF_X52_Y73_N15
\X[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(33),
	o => \X[33]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\Y[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(32),
	o => \Y[32]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\X[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(32),
	o => \X[32]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\Y[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(33),
	o => \Y[33]~input_o\);

-- Location: LCCOMB_X50_Y72_N24
\Recur:Upper|EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~3_combout\ = (\X[33]~input_o\ & (\Y[33]~input_o\ & (\Y[32]~input_o\ $ (!\X[32]~input_o\)))) # (!\X[33]~input_o\ & (!\Y[33]~input_o\ & (\Y[32]~input_o\ $ (!\X[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[33]~input_o\,
	datab => \Y[32]~input_o\,
	datac => \X[32]~input_o\,
	datad => \Y[33]~input_o\,
	combout => \Recur:Upper|EQ~3_combout\);

-- Location: IOIBUF_X60_Y0_N1
\Y[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(34),
	o => \Y[34]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\Y[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(35),
	o => \Y[35]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\X[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(35),
	o => \X[35]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\X[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(34),
	o => \X[34]~input_o\);

-- Location: LCCOMB_X56_Y1_N0
\Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~2_combout\ = (\Y[34]~input_o\ & (\X[34]~input_o\ & (\Y[35]~input_o\ $ (!\X[35]~input_o\)))) # (!\Y[34]~input_o\ & (!\X[34]~input_o\ & (\Y[35]~input_o\ $ (!\X[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[34]~input_o\,
	datab => \Y[35]~input_o\,
	datac => \X[35]~input_o\,
	datad => \X[34]~input_o\,
	combout => \Recur:Upper|EQ~2_combout\);

-- Location: LCCOMB_X42_Y2_N16
\Recur:Upper|EQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~4_combout\ = (\Recur:Upper|EQ~3_combout\ & \Recur:Upper|EQ~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Upper|EQ~3_combout\,
	datad => \Recur:Upper|EQ~2_combout\,
	combout => \Recur:Upper|EQ~4_combout\);

-- Location: IOIBUF_X54_Y0_N15
\Y[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(39),
	o => \Y[39]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\X[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(39),
	o => \X[39]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\X[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(43),
	o => \X[43]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\Y[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(42),
	o => \Y[42]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\Y[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(43),
	o => \Y[43]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\X[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(42),
	o => \X[42]~input_o\);

-- Location: LCCOMB_X55_Y1_N2
\Recur:Upper|Recur:Lower|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\ = (\X[43]~input_o\ & (\Y[43]~input_o\ & (\Y[42]~input_o\ $ (!\X[42]~input_o\)))) # (!\X[43]~input_o\ & (!\Y[43]~input_o\ & (\Y[42]~input_o\ $ (!\X[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[43]~input_o\,
	datab => \Y[42]~input_o\,
	datac => \Y[43]~input_o\,
	datad => \X[42]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\);

-- Location: IOIBUF_X49_Y0_N15
\Y[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(47),
	o => \Y[47]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\X[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(46),
	o => \X[46]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\X[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(47),
	o => \X[47]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Y[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(46),
	o => \Y[46]~input_o\);

-- Location: LCCOMB_X55_Y1_N12
\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ = (\Y[47]~input_o\ & (\X[47]~input_o\ & (\X[46]~input_o\ $ (!\Y[46]~input_o\)))) # (!\Y[47]~input_o\ & (!\X[47]~input_o\ & (\X[46]~input_o\ $ (!\Y[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[47]~input_o\,
	datab => \X[46]~input_o\,
	datac => \X[47]~input_o\,
	datad => \Y[46]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\);

-- Location: IOIBUF_X56_Y0_N22
\Y[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(45),
	o => \Y[45]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\Y[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(44),
	o => \Y[44]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\X[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(44),
	o => \X[44]~input_o\);

-- Location: LCCOMB_X55_Y1_N30
\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ = \Y[44]~input_o\ $ (\X[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[44]~input_o\,
	datac => \X[44]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\X[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(45),
	o => \X[45]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\Recur:Upper|Recur:Lower|Recur:Upper|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ & (!\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\ & (\Y[45]~input_o\ $ (!\X[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\,
	datab => \Y[45]~input_o\,
	datac => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|EQ~0_combout\,
	datad => \X[45]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\Y[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(40),
	o => \Y[40]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\X[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(40),
	o => \X[40]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Y[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(41),
	o => \Y[41]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\X[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(41),
	o => \X[41]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\Recur:Upper|Recur:Lower|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|EQ~0_combout\ = (\Y[40]~input_o\ & (\X[40]~input_o\ & (\Y[41]~input_o\ $ (!\X[41]~input_o\)))) # (!\Y[40]~input_o\ & (!\X[40]~input_o\ & (\Y[41]~input_o\ $ (!\X[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[40]~input_o\,
	datab => \X[40]~input_o\,
	datac => \Y[41]~input_o\,
	datad => \X[41]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~0_combout\);

-- Location: LCCOMB_X55_Y1_N10
\Recur:Upper|Recur:Lower|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\ & (\Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\ & \Recur:Upper|Recur:Lower|Recur:Upper|EQ~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\,
	datac => \Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\,
	datad => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~0_combout\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\);

-- Location: LCCOMB_X55_Y1_N28
\Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~0_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\ & (\Y[39]~input_o\ $ (!\X[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[39]~input_o\,
	datab => \X[39]~input_o\,
	datad => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\,
	combout => \Recur:Upper|EQ~0_combout\);

-- Location: IOIBUF_X33_Y0_N8
\X[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(53),
	o => \X[53]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\Y[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(55),
	o => \Y[55]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\X[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(55),
	o => \X[55]~input_o\);

-- Location: LCCOMB_X19_Y1_N28
\Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ = \Y[55]~input_o\ $ (\X[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[55]~input_o\,
	datad => \X[55]~input_o\,
	combout => \Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\X[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(56),
	o => \X[56]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\Y[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(56),
	o => \Y[56]~input_o\);

-- Location: LCCOMB_X19_Y1_N0
\Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\ = \X[56]~input_o\ $ (\Y[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[56]~input_o\,
	datad => \Y[56]~input_o\,
	combout => \Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\Y[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(60),
	o => \Y[60]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\X[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(60),
	o => \X[60]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Y[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(62),
	o => \Y[62]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Y[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(61),
	o => \Y[61]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\X[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(62),
	o => \X[62]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\X[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(61),
	o => \X[61]~input_o\);

-- Location: LCCOMB_X19_Y1_N8
\GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~0_combout\ = (\Y[62]~input_o\ & (\X[62]~input_o\ & (\Y[61]~input_o\ $ (!\X[61]~input_o\)))) # (!\Y[62]~input_o\ & (!\X[62]~input_o\ & (\Y[61]~input_o\ $ (!\X[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[62]~input_o\,
	datab => \Y[61]~input_o\,
	datac => \X[62]~input_o\,
	datad => \X[61]~input_o\,
	combout => \GT~0_combout\);

-- Location: LCCOMB_X19_Y1_N2
\Recur:Upper|Recur:Upper|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ = (\GT~0_combout\ & (\Y[60]~input_o\ $ (!\X[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[60]~input_o\,
	datab => \X[60]~input_o\,
	datac => \GT~0_combout\,
	combout => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\);

-- Location: IOIBUF_X9_Y0_N15
\X[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(57),
	o => \X[57]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\X[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(63),
	o => \X[63]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\Y[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(57),
	o => \Y[57]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\Y[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(63),
	o => \Y[63]~input_o\);

-- Location: LCCOMB_X19_Y1_N14
\Recur:Upper|Recur:Upper|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Upper|EQ~2_combout\ = (\X[57]~input_o\ & (\Y[57]~input_o\ & (\X[63]~input_o\ $ (!\Y[63]~input_o\)))) # (!\X[57]~input_o\ & (!\Y[57]~input_o\ & (\X[63]~input_o\ $ (!\Y[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[57]~input_o\,
	datab => \X[63]~input_o\,
	datac => \Y[57]~input_o\,
	datad => \Y[63]~input_o\,
	combout => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~2_combout\);

-- Location: IOIBUF_X20_Y0_N1
\Y[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(59),
	o => \Y[59]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\X[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(59),
	o => \X[59]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\X[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(58),
	o => \X[58]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\Y[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(58),
	o => \Y[58]~input_o\);

-- Location: LCCOMB_X19_Y1_N20
\Recur:Upper|Recur:Upper|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\ = (\Y[59]~input_o\ & (\X[59]~input_o\ & (\X[58]~input_o\ $ (!\Y[58]~input_o\)))) # (!\Y[59]~input_o\ & (!\X[59]~input_o\ & (\X[58]~input_o\ $ (!\Y[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[59]~input_o\,
	datab => \X[59]~input_o\,
	datac => \X[58]~input_o\,
	datad => \Y[58]~input_o\,
	combout => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\);

-- Location: LCCOMB_X19_Y1_N18
\Recur:Upper|Recur:Upper|Recur:Upper|EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\ = (!\Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|Recur:Upper|EQ~2_combout\ & 
-- \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Upper|Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|EQ~0_combout\,
	datab => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\,
	datac => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~2_combout\,
	datad => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\,
	combout => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\);

-- Location: IOIBUF_X20_Y0_N8
\X[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(54),
	o => \X[54]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\Y[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(54),
	o => \Y[54]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\Recur:Upper|Recur:Upper|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|EQ~0_combout\ = (!\Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\ & (\X[54]~input_o\ $ (!\Y[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\,
	datab => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\,
	datac => \X[54]~input_o\,
	datad => \Y[54]~input_o\,
	combout => \Recur:Upper|Recur:Upper|EQ~0_combout\);

-- Location: IOIBUF_X33_Y73_N1
\Y[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(53),
	o => \Y[53]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\Y[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(50),
	o => \Y[50]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\X[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(49),
	o => \X[49]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\X[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(50),
	o => \X[50]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Y[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(49),
	o => \Y[49]~input_o\);

-- Location: LCCOMB_X35_Y1_N10
\Recur:Upper|Recur:Upper|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|EQ~2_combout\ = (\Y[50]~input_o\ & (\X[50]~input_o\ & (\X[49]~input_o\ $ (!\Y[49]~input_o\)))) # (!\Y[50]~input_o\ & (!\X[50]~input_o\ & (\X[49]~input_o\ $ (!\Y[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[50]~input_o\,
	datab => \X[49]~input_o\,
	datac => \X[50]~input_o\,
	datad => \Y[49]~input_o\,
	combout => \Recur:Upper|Recur:Upper|EQ~2_combout\);

-- Location: IOIBUF_X31_Y0_N8
\Y[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(48),
	o => \Y[48]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\X[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(48),
	o => \X[48]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\X[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(51),
	o => \X[51]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\Y[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(52),
	o => \Y[52]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\Y[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(51),
	o => \Y[51]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\X[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(52),
	o => \X[52]~input_o\);

-- Location: LCCOMB_X35_Y1_N24
\Recur:Upper|Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|EQ~1_combout\ = (\X[51]~input_o\ & (\Y[51]~input_o\ & (\Y[52]~input_o\ $ (!\X[52]~input_o\)))) # (!\X[51]~input_o\ & (!\Y[51]~input_o\ & (\Y[52]~input_o\ $ (!\X[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[51]~input_o\,
	datab => \Y[52]~input_o\,
	datac => \Y[51]~input_o\,
	datad => \X[52]~input_o\,
	combout => \Recur:Upper|Recur:Upper|EQ~1_combout\);

-- Location: LCCOMB_X35_Y1_N20
\Recur:Upper|Recur:Upper|EQ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|EQ~3_combout\ = (\Recur:Upper|Recur:Upper|EQ~2_combout\ & (\Recur:Upper|Recur:Upper|EQ~1_combout\ & (\Y[48]~input_o\ $ (!\X[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Upper|EQ~2_combout\,
	datab => \Y[48]~input_o\,
	datac => \X[48]~input_o\,
	datad => \Recur:Upper|Recur:Upper|EQ~1_combout\,
	combout => \Recur:Upper|Recur:Upper|EQ~3_combout\);

-- Location: LCCOMB_X35_Y1_N22
\Recur:Upper|Recur:Upper|EQ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Upper|EQ~4_combout\ = (\Recur:Upper|Recur:Upper|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|EQ~3_combout\ & (\X[53]~input_o\ $ (!\Y[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[53]~input_o\,
	datab => \Recur:Upper|Recur:Upper|EQ~0_combout\,
	datac => \Y[53]~input_o\,
	datad => \Recur:Upper|Recur:Upper|EQ~3_combout\,
	combout => \Recur:Upper|Recur:Upper|EQ~4_combout\);

-- Location: IOIBUF_X115_Y27_N8
\X[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(38),
	o => \X[38]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\Y[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(37),
	o => \Y[37]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\X[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(37),
	o => \X[37]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\Y[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(38),
	o => \Y[38]~input_o\);

-- Location: LCCOMB_X114_Y27_N24
\Recur:Upper|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~0_combout\ = (\X[38]~input_o\ & (\Y[38]~input_o\ & (\Y[37]~input_o\ $ (!\X[37]~input_o\)))) # (!\X[38]~input_o\ & (!\Y[38]~input_o\ & (\Y[37]~input_o\ $ (!\X[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[38]~input_o\,
	datab => \Y[37]~input_o\,
	datac => \X[37]~input_o\,
	datad => \Y[38]~input_o\,
	combout => \Recur:Upper|Recur:Lower|GT~0_combout\);

-- Location: IOIBUF_X115_Y26_N15
\Y[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(36),
	o => \Y[36]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\X[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(36),
	o => \X[36]~input_o\);

-- Location: LCCOMB_X114_Y27_N10
\Recur:Upper|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~1_combout\ = (\Recur:Upper|Recur:Lower|GT~0_combout\ & (\Y[36]~input_o\ $ (!\X[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Upper|Recur:Lower|GT~0_combout\,
	datac => \Y[36]~input_o\,
	datad => \X[36]~input_o\,
	combout => \Recur:Upper|EQ~1_combout\);

-- Location: LCCOMB_X35_Y1_N16
\Recur:Upper|EQ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|EQ~5_combout\ = (\Recur:Upper|EQ~4_combout\ & (\Recur:Upper|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|EQ~4_combout\ & \Recur:Upper|EQ~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|EQ~4_combout\,
	datab => \Recur:Upper|EQ~0_combout\,
	datac => \Recur:Upper|Recur:Upper|EQ~4_combout\,
	datad => \Recur:Upper|EQ~1_combout\,
	combout => \Recur:Upper|EQ~5_combout\);

-- Location: LCCOMB_X35_Y1_N26
\EQ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \EQ~5_combout\ = (\Recur:Lower|Recur:Upper|EQ~4_combout\ & (\EQ~4_combout\ & \Recur:Upper|EQ~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Upper|EQ~4_combout\,
	datac => \EQ~4_combout\,
	datad => \Recur:Upper|EQ~5_combout\,
	combout => \EQ~5_combout\);

-- Location: LCCOMB_X1_Y23_N24
\Recur:Lower|GT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~10_combout\ = (\Y[22]~input_o\ & (\X[22]~input_o\ & (!\Y[21]~input_o\ & \X[21]~input_o\))) # (!\Y[22]~input_o\ & ((\X[22]~input_o\) # ((!\Y[21]~input_o\ & \X[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[22]~input_o\,
	datab => \X[22]~input_o\,
	datac => \Y[21]~input_o\,
	datad => \X[21]~input_o\,
	combout => \Recur:Lower|GT~10_combout\);

-- Location: LCCOMB_X1_Y23_N10
\Recur:Lower|GT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~11_combout\ = (\Recur:Lower|GT~10_combout\) # ((!\Y[20]~input_o\ & (\Recur:Lower|GT~1_combout\ & \X[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[20]~input_o\,
	datab => \Recur:Lower|GT~1_combout\,
	datac => \X[20]~input_o\,
	datad => \Recur:Lower|GT~10_combout\,
	combout => \Recur:Lower|GT~11_combout\);

-- Location: LCCOMB_X1_Y46_N12
\Recur:Lower|GT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~5_combout\ = (\X[30]~input_o\ & (((!\Y[29]~input_o\ & \X[29]~input_o\)) # (!\Y[30]~input_o\))) # (!\X[30]~input_o\ & (!\Y[29]~input_o\ & (\X[29]~input_o\ & !\Y[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[29]~input_o\,
	datab => \X[29]~input_o\,
	datac => \X[30]~input_o\,
	datad => \Y[30]~input_o\,
	combout => \Recur:Lower|GT~5_combout\);

-- Location: LCCOMB_X1_Y46_N14
\Recur:Lower|GT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~6_combout\ = (\Recur:Lower|GT~5_combout\) # ((\Recur:Lower|GT~0_combout\ & (!\Y[28]~input_o\ & \X[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|GT~5_combout\,
	datab => \Recur:Lower|GT~0_combout\,
	datac => \Y[28]~input_o\,
	datad => \X[28]~input_o\,
	combout => \Recur:Lower|GT~6_combout\);

-- Location: LCCOMB_X1_Y46_N6
\Recur:Lower|GT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~2_combout\ = (\X[27]~input_o\ & (((!\Y[26]~input_o\ & \X[26]~input_o\)) # (!\Y[27]~input_o\))) # (!\X[27]~input_o\ & (!\Y[26]~input_o\ & (!\Y[27]~input_o\ & \X[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[27]~input_o\,
	datab => \Y[26]~input_o\,
	datac => \Y[27]~input_o\,
	datad => \X[26]~input_o\,
	combout => \Recur:Lower|GT~2_combout\);

-- Location: LCCOMB_X1_Y46_N8
\Recur:Lower|GT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~3_combout\ = (\Y[25]~input_o\ & (!\Y[24]~input_o\ & (\X[24]~input_o\ & \X[25]~input_o\))) # (!\Y[25]~input_o\ & ((\X[25]~input_o\) # ((!\Y[24]~input_o\ & \X[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[24]~input_o\,
	datab => \Y[25]~input_o\,
	datac => \X[24]~input_o\,
	datad => \X[25]~input_o\,
	combout => \Recur:Lower|GT~3_combout\);

-- Location: LCCOMB_X1_Y46_N26
\Recur:Lower|GT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~4_combout\ = (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\ & ((\Recur:Lower|GT~2_combout\) # ((\Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\ & \Recur:Lower|GT~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|GT~2_combout\,
	datab => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~1_combout\,
	datac => \Recur:Lower|GT~3_combout\,
	datad => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~0_combout\,
	combout => \Recur:Lower|GT~4_combout\);

-- Location: LCCOMB_X1_Y46_N16
\Recur:Lower|GT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~7_combout\ = (\Y[31]~input_o\ & (\X[31]~input_o\ & ((\Recur:Lower|GT~6_combout\) # (\Recur:Lower|GT~4_combout\)))) # (!\Y[31]~input_o\ & ((\Recur:Lower|GT~6_combout\) # ((\X[31]~input_o\) # (\Recur:Lower|GT~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[31]~input_o\,
	datab => \Recur:Lower|GT~6_combout\,
	datac => \X[31]~input_o\,
	datad => \Recur:Lower|GT~4_combout\,
	combout => \Recur:Lower|GT~7_combout\);

-- Location: LCCOMB_X1_Y46_N2
\Recur:Lower|GT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~8_combout\ = (\Recur:Lower|GT~7_combout\) # ((!\Y[23]~input_o\ & (\Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\ & \X[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[23]~input_o\,
	datab => \Recur:Lower|Recur:Upper|Recur:Upper|EQ~3_combout\,
	datac => \X[23]~input_o\,
	datad => \Recur:Lower|GT~7_combout\,
	combout => \Recur:Lower|GT~8_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1_combout\ = (\X[17]~input_o\ & (((!\Y[16]~input_o\ & \X[16]~input_o\)) # (!\Y[17]~input_o\))) # (!\X[17]~input_o\ & (!\Y[16]~input_o\ & (\X[16]~input_o\ & !\Y[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[17]~input_o\,
	datab => \Y[16]~input_o\,
	datac => \X[16]~input_o\,
	datad => \Y[17]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X1_Y23_N18
\Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0_combout\ = (\X[19]~input_o\ & (((!\Y[18]~input_o\ & \X[18]~input_o\)) # (!\Y[19]~input_o\))) # (!\X[19]~input_o\ & (!\Y[18]~input_o\ & (\X[18]~input_o\ & !\Y[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[18]~input_o\,
	datab => \X[19]~input_o\,
	datac => \X[18]~input_o\,
	datad => \Y[19]~input_o\,
	combout => \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\Recur:Lower|GT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~9_combout\ = (\Recur:Lower|Recur:Upper|EQ~1_combout\ & ((\Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0_combout\) # ((\Recur:Lower|Recur:Upper|EQ~2_combout\ & \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Upper|EQ~2_combout\,
	datab => \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~1_combout\,
	datac => \Recur:Lower|Recur:Upper|EQ~1_combout\,
	datad => \Recur:Lower|Recur:Upper|Recur:Lower|Recur:Lower|GT~0_combout\,
	combout => \Recur:Lower|GT~9_combout\);

-- Location: LCCOMB_X1_Y23_N4
\Recur:Lower|GT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|GT~12_combout\ = (\Recur:Lower|GT~8_combout\) # ((\Recur:Lower|Recur:Upper|EQ~0_combout\ & ((\Recur:Lower|GT~11_combout\) # (\Recur:Lower|GT~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|GT~11_combout\,
	datab => \Recur:Lower|GT~8_combout\,
	datac => \Recur:Lower|GT~9_combout\,
	datad => \Recur:Lower|Recur:Upper|EQ~0_combout\,
	combout => \Recur:Lower|GT~12_combout\);

-- Location: LCCOMB_X39_Y72_N10
\Recur:Lower|Recur:Lower|GT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~7_combout\ = (\Y[15]~input_o\ & (\X[14]~input_o\ & (!\Y[14]~input_o\ & \X[15]~input_o\))) # (!\Y[15]~input_o\ & ((\X[15]~input_o\) # ((\X[14]~input_o\ & !\Y[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[15]~input_o\,
	datab => \X[14]~input_o\,
	datac => \Y[14]~input_o\,
	datad => \X[15]~input_o\,
	combout => \Recur:Lower|Recur:Lower|GT~7_combout\);

-- Location: LCCOMB_X39_Y72_N30
\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ = (\X[9]~input_o\ & (((\X[8]~input_o\ & !\Y[8]~input_o\)) # (!\Y[9]~input_o\))) # (!\X[9]~input_o\ & (\X[8]~input_o\ & (!\Y[9]~input_o\ & !\Y[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[8]~input_o\,
	datab => \X[9]~input_o\,
	datac => \Y[9]~input_o\,
	datad => \Y[8]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X39_Y72_N20
\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\ = (\X[11]~input_o\ & (((!\Y[10]~input_o\ & \X[10]~input_o\)) # (!\Y[11]~input_o\))) # (!\X[11]~input_o\ & (!\Y[10]~input_o\ & (\X[10]~input_o\ & !\Y[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[11]~input_o\,
	datab => \Y[10]~input_o\,
	datac => \X[10]~input_o\,
	datad => \Y[11]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\);

-- Location: LCCOMB_X39_Y72_N16
\Recur:Lower|Recur:Lower|Recur:Upper|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|GT~1_combout\ = (\Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\ & ((\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\) # ((\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ & 
-- \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\,
	datab => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\,
	datac => \Recur:Lower|Recur:Lower|Recur:Upper|GT~0_combout\,
	datad => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~1_combout\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|GT~1_combout\);

-- Location: LCCOMB_X45_Y4_N20
\Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\ = (\X[1]~input_o\ & (((\X[0]~input_o\ & !\Y[0]~input_o\)) # (!\Y[1]~input_o\))) # (!\X[1]~input_o\ & (\X[0]~input_o\ & (!\Y[0]~input_o\ & !\Y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X45_Y4_N26
\Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\ = (\Y[3]~input_o\ & (!\Y[2]~input_o\ & (\X[2]~input_o\ & \X[3]~input_o\))) # (!\Y[3]~input_o\ & ((\X[3]~input_o\) # ((!\Y[2]~input_o\ & \X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\);

-- Location: LCCOMB_X45_Y4_N22
\Recur:Lower|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~1_combout\ = (\EQ~1_combout\ & ((\Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\) # ((\EQ~2_combout\ & \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EQ~2_combout\,
	datab => \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\,
	datac => \Recur:Lower|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\,
	datad => \EQ~1_combout\,
	combout => \Recur:Lower|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X45_Y4_N18
\Recur:Lower|Recur:Lower|GT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~3_combout\ = (\X[6]~input_o\ & (((!\Y[5]~input_o\ & \X[5]~input_o\)) # (!\Y[6]~input_o\))) # (!\X[6]~input_o\ & (!\Y[5]~input_o\ & (\X[5]~input_o\ & !\Y[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[5]~input_o\,
	datab => \X[6]~input_o\,
	datac => \X[5]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \Recur:Lower|Recur:Lower|GT~3_combout\);

-- Location: LCCOMB_X45_Y4_N24
\Recur:Lower|Recur:Lower|GT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~2_combout\ = (\X[4]~input_o\ & (\Recur:Lower|Recur:Lower|GT~0_combout\ & !\Y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datac => \Recur:Lower|Recur:Lower|GT~0_combout\,
	datad => \Y[4]~input_o\,
	combout => \Recur:Lower|Recur:Lower|GT~2_combout\);

-- Location: LCCOMB_X45_Y4_N4
\Recur:Lower|Recur:Lower|GT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~4_combout\ = (\EQ~0_combout\ & ((\Recur:Lower|Recur:Lower|GT~1_combout\) # ((\Recur:Lower|Recur:Lower|GT~3_combout\) # (\Recur:Lower|Recur:Lower|GT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Lower|GT~1_combout\,
	datab => \Recur:Lower|Recur:Lower|GT~3_combout\,
	datac => \EQ~0_combout\,
	datad => \Recur:Lower|Recur:Lower|GT~2_combout\,
	combout => \Recur:Lower|Recur:Lower|GT~4_combout\);

-- Location: LCCOMB_X39_Y72_N6
\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ = (!\Y[12]~input_o\ & \X[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[12]~input_o\,
	datad => \X[12]~input_o\,
	combout => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\);

-- Location: LCCOMB_X39_Y72_N0
\Recur:Lower|Recur:Lower|GT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~5_combout\ = (\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ & ((\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ & ((\X[13]~input_o\) # (!\Y[13]~input_o\))) # 
-- (!\Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ & (!\Y[13]~input_o\ & \X[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\,
	datab => \Recur:Lower|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\,
	datac => \Y[13]~input_o\,
	datad => \X[13]~input_o\,
	combout => \Recur:Lower|Recur:Lower|GT~5_combout\);

-- Location: LCCOMB_X39_Y72_N2
\Recur:Lower|Recur:Lower|GT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~6_combout\ = (\Recur:Lower|Recur:Lower|GT~5_combout\) # ((!\Y[7]~input_o\ & (\X[7]~input_o\ & \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[7]~input_o\,
	datab => \X[7]~input_o\,
	datac => \Recur:Lower|Recur:Lower|Recur:Upper|EQ~2_combout\,
	datad => \Recur:Lower|Recur:Lower|GT~5_combout\,
	combout => \Recur:Lower|Recur:Lower|GT~6_combout\);

-- Location: LCCOMB_X39_Y72_N28
\Recur:Lower|Recur:Lower|GT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Lower|Recur:Lower|GT~8_combout\ = (\Recur:Lower|Recur:Lower|GT~7_combout\) # ((\Recur:Lower|Recur:Lower|Recur:Upper|GT~1_combout\) # ((\Recur:Lower|Recur:Lower|GT~4_combout\) # (\Recur:Lower|Recur:Lower|GT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|Recur:Lower|GT~7_combout\,
	datab => \Recur:Lower|Recur:Lower|Recur:Upper|GT~1_combout\,
	datac => \Recur:Lower|Recur:Lower|GT~4_combout\,
	datad => \Recur:Lower|Recur:Lower|GT~6_combout\,
	combout => \Recur:Lower|Recur:Lower|GT~8_combout\);

-- Location: LCCOMB_X35_Y1_N12
\GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~1_combout\ = (\Recur:Upper|EQ~5_combout\ & ((\Recur:Lower|GT~12_combout\) # ((\Recur:Lower|Recur:Upper|EQ~4_combout\ & \Recur:Lower|Recur:Lower|GT~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Lower|GT~12_combout\,
	datab => \Recur:Upper|EQ~5_combout\,
	datac => \Recur:Lower|Recur:Upper|EQ~4_combout\,
	datad => \Recur:Lower|Recur:Lower|GT~8_combout\,
	combout => \GT~1_combout\);

-- Location: LCCOMB_X19_Y1_N24
\GT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~7_combout\ = (!\Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ & (\Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\ & (\X[54]~input_o\ & !\Y[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\,
	datab => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\,
	datac => \X[54]~input_o\,
	datad => \Y[54]~input_o\,
	combout => \GT~7_combout\);

-- Location: LCCOMB_X19_Y1_N10
\GT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~12_combout\ = (\Y[62]~input_o\ & (!\Y[61]~input_o\ & (\X[62]~input_o\ & \X[61]~input_o\))) # (!\Y[62]~input_o\ & ((\X[62]~input_o\) # ((!\Y[61]~input_o\ & \X[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[62]~input_o\,
	datab => \Y[61]~input_o\,
	datac => \X[62]~input_o\,
	datad => \X[61]~input_o\,
	combout => \GT~12_combout\);

-- Location: LCCOMB_X19_Y1_N4
\GT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~13_combout\ = (\GT~12_combout\) # ((!\Y[60]~input_o\ & (\X[60]~input_o\ & \GT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[60]~input_o\,
	datab => \X[60]~input_o\,
	datac => \GT~0_combout\,
	datad => \GT~12_combout\,
	combout => \GT~13_combout\);

-- Location: LCCOMB_X19_Y1_N12
\GT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~9_combout\ = (\Y[59]~input_o\ & (\X[59]~input_o\ & (\X[58]~input_o\ & !\Y[58]~input_o\))) # (!\Y[59]~input_o\ & ((\X[59]~input_o\) # ((\X[58]~input_o\ & !\Y[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[59]~input_o\,
	datab => \X[59]~input_o\,
	datac => \X[58]~input_o\,
	datad => \Y[58]~input_o\,
	combout => \GT~9_combout\);

-- Location: LCCOMB_X19_Y1_N30
\GT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~10_combout\ = (\X[57]~input_o\ & (((\X[56]~input_o\ & !\Y[56]~input_o\)) # (!\Y[57]~input_o\))) # (!\X[57]~input_o\ & (\X[56]~input_o\ & (!\Y[57]~input_o\ & !\Y[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[57]~input_o\,
	datab => \X[56]~input_o\,
	datac => \Y[57]~input_o\,
	datad => \Y[56]~input_o\,
	combout => \GT~10_combout\);

-- Location: LCCOMB_X19_Y1_N16
\GT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~11_combout\ = (\Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\ & ((\GT~9_combout\) # ((\GT~10_combout\ & \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GT~9_combout\,
	datab => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~0_combout\,
	datac => \GT~10_combout\,
	datad => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~1_combout\,
	combout => \GT~11_combout\);

-- Location: LCCOMB_X19_Y1_N22
\GT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~14_combout\ = (\Y[63]~input_o\ & (\X[63]~input_o\ & ((\GT~13_combout\) # (\GT~11_combout\)))) # (!\Y[63]~input_o\ & ((\X[63]~input_o\) # ((\GT~13_combout\) # (\GT~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[63]~input_o\,
	datab => \X[63]~input_o\,
	datac => \GT~13_combout\,
	datad => \GT~11_combout\,
	combout => \GT~14_combout\);

-- Location: LCCOMB_X19_Y1_N26
\GT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~8_combout\ = (\X[55]~input_o\ & (!\Y[55]~input_o\ & \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[55]~input_o\,
	datac => \Y[55]~input_o\,
	datad => \Recur:Upper|Recur:Upper|Recur:Upper|EQ~3_combout\,
	combout => \GT~8_combout\);

-- Location: LCCOMB_X35_Y1_N0
\GT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~3_combout\ = (\Y[50]~input_o\ & (\X[49]~input_o\ & (\X[50]~input_o\ & !\Y[49]~input_o\))) # (!\Y[50]~input_o\ & ((\X[50]~input_o\) # ((\X[49]~input_o\ & !\Y[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[50]~input_o\,
	datab => \X[49]~input_o\,
	datac => \X[50]~input_o\,
	datad => \Y[49]~input_o\,
	combout => \GT~3_combout\);

-- Location: LCCOMB_X35_Y1_N18
\GT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~4_combout\ = (\GT~3_combout\) # ((\Recur:Upper|Recur:Upper|EQ~2_combout\ & (!\Y[48]~input_o\ & \X[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Upper|EQ~2_combout\,
	datab => \Y[48]~input_o\,
	datac => \X[48]~input_o\,
	datad => \GT~3_combout\,
	combout => \GT~4_combout\);

-- Location: LCCOMB_X35_Y1_N30
\GT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~2_combout\ = (\Y[52]~input_o\ & (\X[51]~input_o\ & (!\Y[51]~input_o\ & \X[52]~input_o\))) # (!\Y[52]~input_o\ & ((\X[52]~input_o\) # ((\X[51]~input_o\ & !\Y[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[51]~input_o\,
	datab => \Y[52]~input_o\,
	datac => \Y[51]~input_o\,
	datad => \X[52]~input_o\,
	combout => \GT~2_combout\);

-- Location: LCCOMB_X35_Y1_N28
\GT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~5_combout\ = (\GT~2_combout\) # ((\GT~4_combout\ & \Recur:Upper|Recur:Upper|EQ~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GT~4_combout\,
	datac => \GT~2_combout\,
	datad => \Recur:Upper|Recur:Upper|EQ~1_combout\,
	combout => \GT~5_combout\);

-- Location: LCCOMB_X35_Y1_N6
\GT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~6_combout\ = (\Recur:Upper|Recur:Upper|EQ~0_combout\ & ((\X[53]~input_o\ & ((\GT~5_combout\) # (!\Y[53]~input_o\))) # (!\X[53]~input_o\ & (!\Y[53]~input_o\ & \GT~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[53]~input_o\,
	datab => \Recur:Upper|Recur:Upper|EQ~0_combout\,
	datac => \Y[53]~input_o\,
	datad => \GT~5_combout\,
	combout => \GT~6_combout\);

-- Location: LCCOMB_X25_Y1_N24
\GT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~15_combout\ = (\GT~7_combout\) # ((\GT~14_combout\) # ((\GT~8_combout\) # (\GT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GT~7_combout\,
	datab => \GT~14_combout\,
	datac => \GT~8_combout\,
	datad => \GT~6_combout\,
	combout => \GT~15_combout\);

-- Location: LCCOMB_X55_Y1_N22
\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\ = (\X[43]~input_o\ & (((!\Y[42]~input_o\ & \X[42]~input_o\)) # (!\Y[43]~input_o\))) # (!\X[43]~input_o\ & (!\Y[42]~input_o\ & (!\Y[43]~input_o\ & \X[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[43]~input_o\,
	datab => \Y[42]~input_o\,
	datac => \Y[43]~input_o\,
	datad => \X[42]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\);

-- Location: LCCOMB_X55_Y1_N0
\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ = (\Y[41]~input_o\ & (!\Y[40]~input_o\ & (\X[40]~input_o\ & \X[41]~input_o\))) # (!\Y[41]~input_o\ & ((\X[41]~input_o\) # ((!\Y[40]~input_o\ & \X[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[40]~input_o\,
	datab => \X[40]~input_o\,
	datac => \Y[41]~input_o\,
	datad => \X[41]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X55_Y1_N26
\Recur:Upper|Recur:Lower|Recur:Upper|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|GT~1_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\ & ((\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\) # ((\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\ & 
-- \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~0_combout\,
	datab => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Lower|GT~1_combout\,
	datac => \Recur:Upper|Recur:Lower|Recur:Upper|GT~0_combout\,
	datad => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~1_combout\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|GT~1_combout\);

-- Location: LCCOMB_X55_Y1_N20
\Recur:Upper|Recur:Lower|GT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~7_combout\ = (\Y[47]~input_o\ & (\X[46]~input_o\ & (\X[47]~input_o\ & !\Y[46]~input_o\))) # (!\Y[47]~input_o\ & ((\X[47]~input_o\) # ((\X[46]~input_o\ & !\Y[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[47]~input_o\,
	datab => \X[46]~input_o\,
	datac => \X[47]~input_o\,
	datad => \Y[46]~input_o\,
	combout => \Recur:Upper|Recur:Lower|GT~7_combout\);

-- Location: LCCOMB_X55_Y1_N16
\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ = (!\Y[44]~input_o\ & \X[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[44]~input_o\,
	datac => \X[44]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\);

-- Location: LCCOMB_X55_Y1_N18
\Recur:Upper|Recur:Lower|GT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~5_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\ & ((\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ & ((\X[45]~input_o\) # (!\Y[45]~input_o\))) # 
-- (!\Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\ & (!\Y[45]~input_o\ & \X[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~0_combout\,
	datab => \Recur:Upper|Recur:Lower|Recur:Upper|Recur:Upper|GT~1_combout\,
	datac => \Y[45]~input_o\,
	datad => \X[45]~input_o\,
	combout => \Recur:Upper|Recur:Lower|GT~5_combout\);

-- Location: LCCOMB_X55_Y1_N4
\Recur:Upper|Recur:Lower|GT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~6_combout\ = (\Recur:Upper|Recur:Lower|GT~5_combout\) # ((!\Y[39]~input_o\ & (\X[39]~input_o\ & \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[39]~input_o\,
	datab => \Recur:Upper|Recur:Lower|GT~5_combout\,
	datac => \X[39]~input_o\,
	datad => \Recur:Upper|Recur:Lower|Recur:Upper|EQ~2_combout\,
	combout => \Recur:Upper|Recur:Lower|GT~6_combout\);

-- Location: LCCOMB_X56_Y1_N2
\Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\ = (\Y[35]~input_o\ & (!\Y[34]~input_o\ & (\X[35]~input_o\ & \X[34]~input_o\))) # (!\Y[35]~input_o\ & ((\X[35]~input_o\) # ((!\Y[34]~input_o\ & \X[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[34]~input_o\,
	datab => \Y[35]~input_o\,
	datac => \X[35]~input_o\,
	datad => \X[34]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\);

-- Location: LCCOMB_X50_Y72_N18
\Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\ = (\X[33]~input_o\ & (((!\Y[32]~input_o\ & \X[32]~input_o\)) # (!\Y[33]~input_o\))) # (!\X[33]~input_o\ & (!\Y[32]~input_o\ & (\X[32]~input_o\ & !\Y[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[33]~input_o\,
	datab => \Y[32]~input_o\,
	datac => \X[32]~input_o\,
	datad => \Y[33]~input_o\,
	combout => \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X50_Y3_N0
\Recur:Upper|Recur:Lower|GT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~1_combout\ = (\Recur:Upper|EQ~1_combout\ & ((\Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\) # ((\Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\ & \Recur:Upper|EQ~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~0_combout\,
	datab => \Recur:Upper|Recur:Lower|Recur:Lower|Recur:Lower|GT~1_combout\,
	datac => \Recur:Upper|EQ~1_combout\,
	datad => \Recur:Upper|EQ~2_combout\,
	combout => \Recur:Upper|Recur:Lower|GT~1_combout\);

-- Location: LCCOMB_X114_Y27_N12
\Recur:Upper|Recur:Lower|GT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~2_combout\ = (\X[38]~input_o\ & (((!\Y[37]~input_o\ & \X[37]~input_o\)) # (!\Y[38]~input_o\))) # (!\X[38]~input_o\ & (!\Y[37]~input_o\ & (\X[37]~input_o\ & !\Y[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[38]~input_o\,
	datab => \Y[37]~input_o\,
	datac => \X[37]~input_o\,
	datad => \Y[38]~input_o\,
	combout => \Recur:Upper|Recur:Lower|GT~2_combout\);

-- Location: LCCOMB_X114_Y27_N30
\Recur:Upper|Recur:Lower|GT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~3_combout\ = (\Recur:Upper|Recur:Lower|GT~2_combout\) # ((\Recur:Upper|Recur:Lower|GT~0_combout\ & (!\Y[36]~input_o\ & \X[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|GT~2_combout\,
	datab => \Recur:Upper|Recur:Lower|GT~0_combout\,
	datac => \Y[36]~input_o\,
	datad => \X[36]~input_o\,
	combout => \Recur:Upper|Recur:Lower|GT~3_combout\);

-- Location: LCCOMB_X55_Y1_N6
\Recur:Upper|Recur:Lower|GT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~4_combout\ = (\Recur:Upper|EQ~0_combout\ & ((\Recur:Upper|Recur:Lower|GT~1_combout\) # (\Recur:Upper|Recur:Lower|GT~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Recur:Upper|Recur:Lower|GT~1_combout\,
	datac => \Recur:Upper|Recur:Lower|GT~3_combout\,
	datad => \Recur:Upper|EQ~0_combout\,
	combout => \Recur:Upper|Recur:Lower|GT~4_combout\);

-- Location: LCCOMB_X55_Y1_N14
\Recur:Upper|Recur:Lower|GT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Recur:Upper|Recur:Lower|GT~8_combout\ = (\Recur:Upper|Recur:Lower|Recur:Upper|GT~1_combout\) # ((\Recur:Upper|Recur:Lower|GT~7_combout\) # ((\Recur:Upper|Recur:Lower|GT~6_combout\) # (\Recur:Upper|Recur:Lower|GT~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Recur:Upper|Recur:Lower|Recur:Upper|GT~1_combout\,
	datab => \Recur:Upper|Recur:Lower|GT~7_combout\,
	datac => \Recur:Upper|Recur:Lower|GT~6_combout\,
	datad => \Recur:Upper|Recur:Lower|GT~4_combout\,
	combout => \Recur:Upper|Recur:Lower|GT~8_combout\);

-- Location: LCCOMB_X35_Y1_N8
\GT~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GT~16_combout\ = (\GT~1_combout\) # ((\GT~15_combout\) # ((\Recur:Upper|Recur:Upper|EQ~4_combout\ & \Recur:Upper|Recur:Lower|GT~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GT~1_combout\,
	datab => \GT~15_combout\,
	datac => \Recur:Upper|Recur:Upper|EQ~4_combout\,
	datad => \Recur:Upper|Recur:Lower|GT~8_combout\,
	combout => \GT~16_combout\);

ww_EQ <= \EQ~output_o\;

ww_GT <= \GT~output_o\;
END structure;


