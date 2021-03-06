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

-- DATE "03/29/2022 11:45:44"

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

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~4_cout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~8\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ : std_logic;
SIGNAL \inst2|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|Add0~9_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst2|Add0~7_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ : std_logic;
SIGNAL \inst3|decOut_n~0_combout\ : std_logic;
SIGNAL \inst3|decOut_n~1_combout\ : std_logic;
SIGNAL \inst3|decOut_n~2_combout\ : std_logic;
SIGNAL \inst3|decOut_n~3_combout\ : std_logic;
SIGNAL \inst3|decOut_n~4_combout\ : std_logic;
SIGNAL \inst3|decOut_n~5_combout\ : std_logic;
SIGNAL \inst3|decOut_n~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[53]~55_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[52]~56_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[51]~57_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[50]~58_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[49]~60_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[49]~59_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[48]~62_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ : std_logic;
SIGNAL \inst4|decOut_n~0_combout\ : std_logic;
SIGNAL \inst4|decOut_n~1_combout\ : std_logic;
SIGNAL \inst4|decOut_n~2_combout\ : std_logic;
SIGNAL \inst4|decOut_n~3_combout\ : std_logic;
SIGNAL \inst4|decOut_n~4_combout\ : std_logic;
SIGNAL \inst4|decOut_n~5_combout\ : std_logic;
SIGNAL \inst4|decOut_n~6_combout\ : std_logic;
SIGNAL \inst5|decOut_n~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n~1_combout\ : std_logic;
SIGNAL \inst2|m[2]~9_combout\ : std_logic;
SIGNAL \inst2|m[0]~10_combout\ : std_logic;
SIGNAL \inst5|decOut_n~2_combout\ : std_logic;
SIGNAL \inst2|m[3]~8_combout\ : std_logic;
SIGNAL \inst5|decOut_n~3_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst5|decOut_n~4_combout\ : std_logic;
SIGNAL \inst5|decOut_n~5_combout\ : std_logic;
SIGNAL \inst2|m[1]~11_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|ALT_INV_decOut_n~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_decOut_n~1_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_decOut_n~5_combout\ <= NOT \inst5|decOut_n~5_combout\;
\inst5|ALT_INV_decOut_n~1_combout\ <= NOT \inst5|decOut_n~1_combout\;
\inst1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~14_combout\ <= NOT \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~14_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[3]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[2]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[1]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[0]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X110_Y20_N4
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Equal0~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X113_Y16_N0
\inst2|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(5));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X113_Y16_N10
\inst2|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(3));

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X113_Y16_N30
\inst2|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X113_Y16_N4
\inst2|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(4));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X113_Y16_N2
\inst2|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X110_Y16_N20
\inst2|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X113_Y16_N16
\inst2|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(3) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst2|Mult0|auto_generated|le4a\(5) $ (\SW[7]~input_o\)))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[6]~input_o\ & 
-- (\inst2|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst2|Mult0|auto_generated|le4a\(5),
	datac => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(3));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X113_Y16_N12
\inst2|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X113_Y16_N6
\inst2|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(2) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[6]~input_o\ $ ((\inst2|Mult0|auto_generated|le4a\(5))))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\inst2|Mult0|auto_generated|le4a\(5) & 
-- !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst2|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \inst2|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X113_Y16_N8
\inst2|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & ((\SW[7]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X112_Y15_N22
\inst2|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[6]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X113_Y16_N18
\inst2|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~0_combout\ = (\inst2|Mult0|auto_generated|le3a\(2) & (\inst2|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst2|Mult0|auto_generated|le3a\(2) & (\inst2|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst2|Mult0|auto_generated|op_1~1\ = CARRY((\inst2|Mult0|auto_generated|le3a\(2) & \inst2|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le3a\(2),
	datab => \inst2|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst2|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X113_Y16_N20
\inst2|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~2_combout\ = (\inst2|Mult0|auto_generated|le3a\(3) & (!\inst2|Mult0|auto_generated|op_1~1\)) # (!\inst2|Mult0|auto_generated|le3a\(3) & ((\inst2|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst2|Mult0|auto_generated|op_1~3\ = CARRY((!\inst2|Mult0|auto_generated|op_1~1\) # (!\inst2|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~1\,
	combout => \inst2|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X113_Y16_N22
\inst2|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|auto_generated|le3a\(4) $ (\inst2|Mult0|auto_generated|le4a\(2) $ (!\inst2|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|auto_generated|le3a\(4) & ((\inst2|Mult0|auto_generated|le4a\(2)) # (!\inst2|Mult0|auto_generated|op_1~3\))) # (!\inst2|Mult0|auto_generated|le3a\(4) & (\inst2|Mult0|auto_generated|le4a\(2) & 
-- !\inst2|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le3a\(4),
	datab => \inst2|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~3\,
	combout => \inst2|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X113_Y16_N24
\inst2|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~6_combout\ = (\inst2|Mult0|auto_generated|le5a\(1) & ((\inst2|Mult0|auto_generated|le4a\(3) & (\inst2|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst2|Mult0|auto_generated|le4a\(3) & 
-- (!\inst2|Mult0|auto_generated|op_1~5\)))) # (!\inst2|Mult0|auto_generated|le5a\(1) & ((\inst2|Mult0|auto_generated|le4a\(3) & (!\inst2|Mult0|auto_generated|op_1~5\)) # (!\inst2|Mult0|auto_generated|le4a\(3) & ((\inst2|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \inst2|Mult0|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|auto_generated|le5a\(1) & (!\inst2|Mult0|auto_generated|le4a\(3) & !\inst2|Mult0|auto_generated|op_1~5\)) # (!\inst2|Mult0|auto_generated|le5a\(1) & ((!\inst2|Mult0|auto_generated|op_1~5\) # 
-- (!\inst2|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le5a\(1),
	datab => \inst2|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~5\,
	combout => \inst2|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X113_Y16_N26
\inst2|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|auto_generated|le5a\(2) $ (\inst2|Mult0|auto_generated|le4a\(4) $ (!\inst2|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|auto_generated|le5a\(2) & ((\inst2|Mult0|auto_generated|le4a\(4)) # (!\inst2|Mult0|auto_generated|op_1~7\))) # (!\inst2|Mult0|auto_generated|le5a\(2) & (\inst2|Mult0|auto_generated|le4a\(4) & 
-- !\inst2|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le5a\(2),
	datab => \inst2|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~7\,
	combout => \inst2|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X113_Y16_N28
\inst2|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~10_combout\ = \inst2|Mult0|auto_generated|le4a\(5) $ (\inst2|Mult0|auto_generated|op_1~9\ $ (!\inst2|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|le4a\(5),
	datad => \inst2|Mult0|auto_generated|le5a\(3),
	cin => \inst2|Mult0|auto_generated|op_1~9\,
	combout => \inst2|Mult0|auto_generated|op_1~10_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X110_Y16_N22
\inst2|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X113_Y16_N14
\inst2|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(1) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) $ ((\SW[5]~input_o\)))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) & 
-- ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst2|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X112_Y15_N0
\inst2|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[4]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X112_Y15_N26
\inst2|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X110_Y16_N18
\inst2|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X110_Y16_N2
\inst2|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~0_combout\ = (\inst2|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\inst2|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ & VCC))
-- \inst2|Mult0|auto_generated|op_3~1\ = CARRY((\inst2|Mult0|auto_generated|le3a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le3a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \inst2|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X110_Y16_N4
\inst2|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~2_combout\ = (\inst2|Mult0|auto_generated|le3a\(1) & (!\inst2|Mult0|auto_generated|op_3~1\)) # (!\inst2|Mult0|auto_generated|le3a\(1) & ((\inst2|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst2|Mult0|auto_generated|op_3~3\ = CARRY((!\inst2|Mult0|auto_generated|op_3~1\) # (!\inst2|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~1\,
	combout => \inst2|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X110_Y16_N6
\inst2|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~4_combout\ = ((\inst2|Mult0|auto_generated|op_1~0_combout\ $ (\inst2|Mult0|auto_generated|le4a\(0) $ (!\inst2|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_3~5\ = CARRY((\inst2|Mult0|auto_generated|op_1~0_combout\ & ((\inst2|Mult0|auto_generated|le4a\(0)) # (!\inst2|Mult0|auto_generated|op_3~3\))) # (!\inst2|Mult0|auto_generated|op_1~0_combout\ & 
-- (\inst2|Mult0|auto_generated|le4a\(0) & !\inst2|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_1~0_combout\,
	datab => \inst2|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~3\,
	combout => \inst2|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X110_Y16_N8
\inst2|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~6_combout\ = (\inst2|Mult0|auto_generated|op_1~2_combout\ & ((\inst2|Mult0|auto_generated|le4a\(1) & (\inst2|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst2|Mult0|auto_generated|le4a\(1) & 
-- (!\inst2|Mult0|auto_generated|op_3~5\)))) # (!\inst2|Mult0|auto_generated|op_1~2_combout\ & ((\inst2|Mult0|auto_generated|le4a\(1) & (!\inst2|Mult0|auto_generated|op_3~5\)) # (!\inst2|Mult0|auto_generated|le4a\(1) & ((\inst2|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \inst2|Mult0|auto_generated|op_3~7\ = CARRY((\inst2|Mult0|auto_generated|op_1~2_combout\ & (!\inst2|Mult0|auto_generated|le4a\(1) & !\inst2|Mult0|auto_generated|op_3~5\)) # (!\inst2|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\inst2|Mult0|auto_generated|op_3~5\) # (!\inst2|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_1~2_combout\,
	datab => \inst2|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~5\,
	combout => \inst2|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X110_Y16_N10
\inst2|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~8_combout\ = ((\inst2|Mult0|auto_generated|le5a\(0) $ (\inst2|Mult0|auto_generated|op_1~4_combout\ $ (!\inst2|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_3~9\ = CARRY((\inst2|Mult0|auto_generated|le5a\(0) & ((\inst2|Mult0|auto_generated|op_1~4_combout\) # (!\inst2|Mult0|auto_generated|op_3~7\))) # (!\inst2|Mult0|auto_generated|le5a\(0) & 
-- (\inst2|Mult0|auto_generated|op_1~4_combout\ & !\inst2|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le5a\(0),
	datab => \inst2|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~7\,
	combout => \inst2|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X110_Y16_N12
\inst2|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~10_combout\ = (\inst2|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (\inst2|Mult0|auto_generated|op_3~9\ & VCC)) # (!\SW[1]~input_o\ & (!\inst2|Mult0|auto_generated|op_3~9\)))) # 
-- (!\inst2|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((\inst2|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst2|Mult0|auto_generated|op_3~11\ = CARRY((\inst2|Mult0|auto_generated|op_1~6_combout\ & (!\SW[1]~input_o\ & !\inst2|Mult0|auto_generated|op_3~9\)) # (!\inst2|Mult0|auto_generated|op_1~6_combout\ & ((!\inst2|Mult0|auto_generated|op_3~9\) # 
-- (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_1~6_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~9\,
	combout => \inst2|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X110_Y16_N14
\inst2|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~12_combout\ = ((\inst2|Mult0|auto_generated|op_1~8_combout\ $ (\SW[1]~input_o\ $ (!\inst2|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_3~13\ = CARRY((\inst2|Mult0|auto_generated|op_1~8_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mult0|auto_generated|op_3~11\))) # (!\inst2|Mult0|auto_generated|op_1~8_combout\ & (\SW[1]~input_o\ & 
-- !\inst2|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_1~8_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~11\,
	combout => \inst2|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X110_Y16_N16
\inst2|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~14_combout\ = \inst2|Mult0|auto_generated|op_1~10_combout\ $ (\SW[1]~input_o\ $ (!\inst2|Mult0|auto_generated|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_1~10_combout\,
	datab => \SW[1]~input_o\,
	cin => \inst2|Mult0|auto_generated|op_3~13\,
	combout => \inst2|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X110_Y16_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X110_Y16_N26
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|Equal0~1_combout\ & ((\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\inst2|Mult0|auto_generated|op_3~12_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\inst2|Equal0~1_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\inst2|Mult0|auto_generated|op_3~12_combout\) # (!\inst2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X110_Y16_N28
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\inst2|Equal0~1_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & VCC))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~14_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst2|Equal0~1_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X110_Y16_N30
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X110_Y19_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\);

-- Location: LCCOMB_X110_Y19_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X110_Y19_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\);

-- Location: LCCOMB_X110_Y16_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X110_Y19_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|Mult0|auto_generated|op_3~10_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X110_Y19_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X109_Y19_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst2|Mult0|auto_generated|op_3~8_combout\ & \inst2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X109_Y19_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X109_Y19_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\inst2|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X110_Y19_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X110_Y19_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X110_Y19_N26
\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~35_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X110_Y19_N28
\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X110_Y19_N30
\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X110_Y19_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[27]~32_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\);

-- Location: LCCOMB_X109_Y19_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\);

-- Location: LCCOMB_X110_Y19_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\);

-- Location: LCCOMB_X110_Y19_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\);

-- Location: LCCOMB_X108_Y19_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\);

-- Location: LCCOMB_X110_Y19_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\);

-- Location: LCCOMB_X109_Y19_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\);

-- Location: LCCOMB_X109_Y19_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\);

-- Location: LCCOMB_X112_Y15_N8
\inst2|Mod0|auto_generated|divider|divider|selnose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: LCCOMB_X112_Y15_N4
\inst2|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X110_Y20_N18
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y20_N24
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y16_N4
\inst2|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~11_combout\ = \SW[3]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst2|Add0~11_combout\);

-- Location: LCCOMB_X111_Y16_N8
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X111_Y16_N26
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \SW[8]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X111_Y16_N20
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Add0~2_combout\);

-- Location: LCCOMB_X111_Y16_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst2|Add0~4_cout\);

-- Location: LCCOMB_X111_Y16_N12
\inst2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = (\SW[4]~input_o\ & ((\inst2|Add0~2_combout\ & (\inst2|Add0~4_cout\ & VCC)) # (!\inst2|Add0~2_combout\ & (!\inst2|Add0~4_cout\)))) # (!\SW[4]~input_o\ & ((\inst2|Add0~2_combout\ & (!\inst2|Add0~4_cout\)) # (!\inst2|Add0~2_combout\ 
-- & ((\inst2|Add0~4_cout\) # (GND)))))
-- \inst2|Add0~6\ = CARRY((\SW[4]~input_o\ & (!\inst2|Add0~2_combout\ & !\inst2|Add0~4_cout\)) # (!\SW[4]~input_o\ & ((!\inst2|Add0~4_cout\) # (!\inst2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|Add0~4_cout\,
	combout => \inst2|Add0~5_combout\,
	cout => \inst2|Add0~6\);

-- Location: LCCOMB_X111_Y16_N14
\inst2|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~7_combout\ = ((\inst2|Add0~1_combout\ $ (\SW[5]~input_o\ $ (!\inst2|Add0~6\)))) # (GND)
-- \inst2|Add0~8\ = CARRY((\inst2|Add0~1_combout\ & ((\SW[5]~input_o\) # (!\inst2|Add0~6\))) # (!\inst2|Add0~1_combout\ & (\SW[5]~input_o\ & !\inst2|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~1_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~6\,
	combout => \inst2|Add0~7_combout\,
	cout => \inst2|Add0~8\);

-- Location: LCCOMB_X111_Y16_N16
\inst2|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_combout\ = (\inst2|Add0~0_combout\ & ((\SW[6]~input_o\ & (\inst2|Add0~8\ & VCC)) # (!\SW[6]~input_o\ & (!\inst2|Add0~8\)))) # (!\inst2|Add0~0_combout\ & ((\SW[6]~input_o\ & (!\inst2|Add0~8\)) # (!\SW[6]~input_o\ & ((\inst2|Add0~8\) # 
-- (GND)))))
-- \inst2|Add0~10\ = CARRY((\inst2|Add0~0_combout\ & (!\SW[6]~input_o\ & !\inst2|Add0~8\)) # (!\inst2|Add0~0_combout\ & ((!\inst2|Add0~8\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~8\,
	combout => \inst2|Add0~9_combout\,
	cout => \inst2|Add0~10\);

-- Location: LCCOMB_X111_Y16_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = \inst2|Add0~11_combout\ $ (\inst2|Add0~10\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~11_combout\,
	datad => \SW[7]~input_o\,
	cin => \inst2|Add0~10\,
	combout => \inst2|Add0~12_combout\);

-- Location: LCCOMB_X111_Y16_N4
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|Mux1~0_combout\ & (((\inst2|Equal0~0_combout\)))) # (!\inst2|Mux1~0_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Mult0|auto_generated|op_3~6_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~6_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y15_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X113_Y15_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X112_Y15_N24
\inst2|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((!\SW[7]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X112_Y15_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ = (\SW[6]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\);

-- Location: LCCOMB_X113_Y15_N18
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y15_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (\SW[1]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y15_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y15_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y15_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\SW[3]~input_o\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X113_Y15_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\);

-- Location: LCCOMB_X113_Y15_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ = (\SW[3]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[5]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\);

-- Location: LCCOMB_X112_Y16_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X112_Y16_N12
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & (\SW[1]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X112_Y16_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X112_Y16_N16
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (\SW[3]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X112_Y16_N18
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X112_Y16_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X112_Y16_N20
\inst2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\SW[3]~input_o\ & ((\SW[9]~input_o\ $ (\SW[7]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mux0~2_combout\);

-- Location: LCCOMB_X112_Y16_N6
\inst2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_combout\ = (\inst2|Mux0~2_combout\ & ((\SW[9]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst2|Mux0~2_combout\,
	combout => \inst2|Mux0~3_combout\);

-- Location: LCCOMB_X112_Y16_N30
\inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux1~0_combout\ & ((\inst2|Mux0~0_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|selnose\(0))) # (!\inst2|Mux0~0_combout\ & ((\inst2|Mux0~3_combout\))))) # (!\inst2|Mux1~0_combout\ & (((\inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose\(0),
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|Mux0~3_combout\,
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y19_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\);

-- Location: LCCOMB_X108_Y19_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\);

-- Location: LCCOMB_X108_Y19_N4
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~44_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[32]~45_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X108_Y19_N6
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~43_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X108_Y19_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~42_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X108_Y19_N10
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~41_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X108_Y19_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~40_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X108_Y19_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X112_Y15_N30
\inst2|Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[6]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X111_Y16_N28
\inst2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~3_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\ $ (\SW[2]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[9]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mux1~3_combout\);

-- Location: LCCOMB_X112_Y16_N8
\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\);

-- Location: LCCOMB_X111_Y16_N6
\inst2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~4_combout\ = (\inst2|Mux1~3_combout\ & ((\SW[8]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Mux1~3_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|Mux1~4_combout\);

-- Location: LCCOMB_X111_Y16_N30
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|Mux1~0_combout\ & ((\inst2|Mux1~4_combout\) # ((\inst2|Equal0~0_combout\)))) # (!\inst2|Mux1~0_combout\ & (((!\inst2|Equal0~0_combout\ & \inst2|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~4_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Add0~9_combout\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y16_N0
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mux1~1_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\)) # (!\inst2|Mux1~1_combout\ & ((\inst2|Mult0|auto_generated|op_3~4_combout\))))) # 
-- (!\inst2|Equal0~0_combout\ & (((\inst2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~4_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Mux1~1_combout\,
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X106_Y19_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\);

-- Location: LCCOMB_X106_Y19_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X106_Y19_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X109_Y19_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[36]~66_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\);

-- Location: LCCOMB_X108_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\);

-- Location: LCCOMB_X109_Y19_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[35]~67_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\);

-- Location: LCCOMB_X108_Y19_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\);

-- Location: LCCOMB_X108_Y19_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\);

-- Location: LCCOMB_X108_Y19_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[34]~68_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\);

-- Location: LCCOMB_X109_Y19_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\);

-- Location: LCCOMB_X106_Y19_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\);

-- Location: LCCOMB_X108_Y19_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\ = (\inst2|Mux0~1_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~1_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\);

-- Location: LCCOMB_X107_Y19_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\);

-- Location: LCCOMB_X106_Y19_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~50_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X106_Y19_N16
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~49_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X106_Y19_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~48_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X106_Y19_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~47_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X106_Y19_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~46_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X106_Y19_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X106_Y19_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\);

-- Location: LCCOMB_X106_Y19_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\);

-- Location: LCCOMB_X106_Y19_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58_combout\);

-- Location: LCCOMB_X108_Y20_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[45]~70_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74_combout\);

-- Location: LCCOMB_X107_Y19_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59_combout\);

-- Location: LCCOMB_X108_Y19_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[44]~71_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75_combout\);

-- Location: LCCOMB_X108_Y19_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[43]~72_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LCCOMB_X106_Y19_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60_combout\);

-- Location: LCCOMB_X106_Y19_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[42]~73_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77_combout\);

-- Location: LCCOMB_X106_Y19_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X107_Y19_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\);

-- Location: LCCOMB_X108_Y19_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst2|Mux0~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst2|Mux0~1_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\);

-- Location: LCCOMB_X113_Y15_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y15_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (\SW[1]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y15_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\SW[2]~input_o\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\SW[2]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y15_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y15_N0
\inst2|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(10) = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X111_Y16_N22
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mult0|auto_generated|op_3~2_combout\) # ((\inst2|Mux1~0_combout\)))) # (!\inst2|Equal0~0_combout\ & (((\inst2|Add0~7_combout\ & !\inst2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~2_combout\,
	datac => \inst2|Add0~7_combout\,
	datad => \inst2|Mux1~0_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y16_N24
\inst2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X112_Y16_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X112_Y16_N26
\inst2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|Mux2~2_combout\ & ((\SW[8]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Mux2~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X112_Y16_N28
\inst2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|Mux2~0_combout\ & (((!\inst2|Mux1~0_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|selnose\(10)))) # (!\inst2|Mux2~0_combout\ & (((\inst2|Mux2~3_combout\ & \inst2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \inst2|Mux2~0_combout\,
	datac => \inst2|Mux2~3_combout\,
	datad => \inst2|Mux1~0_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X107_Y19_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\);

-- Location: LCCOMB_X107_Y19_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\);

-- Location: LCCOMB_X107_Y19_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~56_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X107_Y19_N10
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X107_Y19_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X107_Y19_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y19_N16
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~76_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~60_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X107_Y19_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~59_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~75_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X107_Y19_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~58_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~74_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X107_Y19_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X107_Y19_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~55_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~54_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\);

-- Location: LCCOMB_X112_Y16_N22
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\SW[4]~input_o\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[8]~input_o\ & ((\SW[4]~input_o\))) # 
-- (!\SW[8]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y16_N24
\inst2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst2|Mux3~0_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mux3~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y16_N2
\inst2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (!\inst2|Mux3~1_combout\))) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[9]~input_o\ & (\inst2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mux3~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X107_Y23_N24
\inst2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|Mux1~0_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|Mux1~0_combout\ & ((\inst2|Mux3~2_combout\))) # (!\inst2|Mux1~0_combout\ & (\inst2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Add0~5_combout\,
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X113_Y15_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X113_Y15_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X113_Y15_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X112_Y15_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y15_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\SW[1]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\SW[1]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X112_Y15_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\SW[2]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X112_Y15_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\SW[3]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\SW[3]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X112_Y15_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X107_Y23_N2
\inst2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~4_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mux3~3_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\inst2|Mux3~3_combout\ & (\inst2|Mult0|auto_generated|op_3~0_combout\)))) # 
-- (!\inst2|Equal0~0_combout\ & (\inst2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst2|Mux3~4_combout\);

-- Location: LCCOMB_X107_Y19_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mux2~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\);

-- Location: LCCOMB_X107_Y19_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~78_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\);

-- Location: LCCOMB_X107_Y23_N20
\inst3|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~0_combout\ = (\inst2|Mux3~4_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\)))) # (!\inst2|Mux3~4_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~0_combout\);

-- Location: LCCOMB_X107_Y23_N22
\inst3|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~1_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst2|Mux3~4_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ $ 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ & ((\inst2|Mux3~4_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~1_combout\);

-- Location: LCCOMB_X107_Y23_N16
\inst3|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & (((\inst2|Mux3~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~2_combout\);

-- Location: LCCOMB_X107_Y23_N10
\inst3|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~3_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst2|Mux3~4_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (!\inst2|Mux3~4_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ $ (\inst2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~3_combout\);

-- Location: LCCOMB_X107_Y23_N12
\inst3|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\) # 
-- (!\inst2|Mux3~4_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (!\inst2|Mux3~4_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~4_combout\);

-- Location: LCCOMB_X107_Y23_N6
\inst3|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~5_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & ((\inst2|Mux3~4_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\))) # (!\inst2|Mux3~4_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst2|Mux3~4_combout\ $ 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~5_combout\);

-- Location: LCCOMB_X107_Y23_N0
\inst3|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ & (\inst2|Mux3~4_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\ & (\inst2|Mux3~4_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~63_combout\,
	datab => \inst2|Mux3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst3|decOut_n~6_combout\);

-- Location: LCCOMB_X110_Y23_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X110_Y23_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|Equal0~1_combout\ & ((\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\inst2|Mult0|auto_generated|op_3~12_combout\ & (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # (!\inst2|Equal0~1_combout\ & (((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\inst2|Mult0|auto_generated|op_3~12_combout\) # (!\inst2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X110_Y23_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\inst2|Equal0~1_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & VCC))) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~14_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst2|Equal0~1_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X110_Y23_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X110_Y23_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\ = (\inst2|Mult0|auto_generated|op_3~14_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\);

-- Location: LCCOMB_X110_Y23_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X109_Y23_N16
\inst1|Div0|auto_generated|divider|divider|StageOut[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\);

-- Location: LCCOMB_X110_Y23_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X110_Y23_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\inst2|Mult0|auto_generated|op_3~10_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X110_Y23_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X109_Y19_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Mult0|auto_generated|op_3~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X109_Y19_N10
\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst2|Mult0|auto_generated|op_3~8_combout\ & \inst2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X109_Y19_N22
\inst1|Div0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X110_Y23_N10
\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X110_Y23_N12
\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X110_Y23_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[26]~35_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X110_Y23_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X110_Y23_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y23_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[36]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\);

-- Location: LCCOMB_X109_Y23_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[36]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|StageOut[27]~32_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\);

-- Location: LCCOMB_X109_Y23_N18
\inst1|Div0|auto_generated|divider|divider|StageOut[35]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\);

-- Location: LCCOMB_X110_Y23_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[35]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\);

-- Location: LCCOMB_X110_Y23_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[34]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\);

-- Location: LCCOMB_X109_Y23_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[34]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\);

-- Location: LCCOMB_X109_Y23_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X109_Y23_N14
\inst1|Div0|auto_generated|divider|divider|StageOut[33]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\);

-- Location: LCCOMB_X109_Y26_N26
\inst1|Div0|auto_generated|divider|divider|StageOut[32]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\);

-- Location: LCCOMB_X109_Y26_N16
\inst1|Div0|auto_generated|divider|divider|StageOut[32]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\);

-- Location: LCCOMB_X109_Y23_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[32]~45_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[32]~44_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y23_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[33]~43_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y23_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[34]~42_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y23_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[35]~41_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X109_Y23_N28
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\))))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\) # (GND))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\) # ((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[36]~40_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X109_Y23_N30
\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X110_Y26_N0
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X110_Y26_N2
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X110_Y26_N4
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y26_N6
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X110_Y26_N8
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X110_Y26_N10
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X110_Y26_N12
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X111_Y26_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\);

-- Location: LCCOMB_X111_Y26_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\);

-- Location: LCCOMB_X109_Y25_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[45]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\);

-- Location: LCCOMB_X109_Y23_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[45]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\);

-- Location: LCCOMB_X110_Y24_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[44]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\);

-- Location: LCCOMB_X110_Y24_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[44]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\);

-- Location: LCCOMB_X109_Y25_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[43]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\);

-- Location: LCCOMB_X109_Y23_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[43]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[34]~65_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\);

-- Location: LCCOMB_X109_Y23_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[42]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\);

-- Location: LCCOMB_X109_Y25_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[42]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\);

-- Location: LCCOMB_X109_Y25_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[41]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\);

-- Location: LCCOMB_X109_Y25_N14
\inst1|Div0|auto_generated|divider|divider|StageOut[41]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\);

-- Location: LCCOMB_X110_Y24_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[40]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X110_Y24_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[40]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\);

-- Location: LCCOMB_X109_Y25_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[40]~52_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X109_Y25_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[41]~51_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[41]~50_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X109_Y25_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[42]~49_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X109_Y25_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[43]~48_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X109_Y25_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\))))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\) # (GND))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\) # ((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[44]~47_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X109_Y25_N28
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[45]~46_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X109_Y25_N30
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X110_Y26_N30
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X110_Y26_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\);

-- Location: LCCOMB_X110_Y26_N16
\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\);

-- Location: LCCOMB_X111_Y26_N0
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X111_Y26_N2
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X110_Y26_N20
\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4_combout\);

-- Location: LCCOMB_X110_Y26_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5_combout\);

-- Location: LCCOMB_X111_Y26_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6_combout\);

-- Location: LCCOMB_X110_Y26_N18
\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8_combout\);

-- Location: LCCOMB_X110_Y26_N24
\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X110_Y26_N14
\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\);

-- Location: LCCOMB_X110_Y26_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X111_Y26_N4
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X111_Y26_N6
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~8_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y26_N8
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~6_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X111_Y26_N10
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~5_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X111_Y26_N12
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~4_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X111_Y26_N14
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X111_Y26_N16
\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~0_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~1_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\);

-- Location: LCCOMB_X111_Y26_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~10_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\);

-- Location: LCCOMB_X109_Y25_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[54]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[54]~71_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[45]~67_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~71_combout\);

-- Location: LCCOMB_X110_Y25_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X110_Y24_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[53]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[44]~68_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X110_Y25_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[53]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[53]~55_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~55_combout\);

-- Location: LCCOMB_X109_Y25_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[52]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[43]~69_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\);

-- Location: LCCOMB_X110_Y25_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[52]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[52]~56_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~56_combout\);

-- Location: LCCOMB_X110_Y25_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[51]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[51]~57_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~57_combout\);

-- Location: LCCOMB_X109_Y25_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[42]~70_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\);

-- Location: LCCOMB_X109_Y25_N16
\inst1|Div0|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst2|Mux0~1_combout\))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X110_Y25_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[50]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[50]~58_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~58_combout\);

-- Location: LCCOMB_X110_Y25_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[49]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[49]~60_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~60_combout\);

-- Location: LCCOMB_X110_Y24_N14
\inst1|Div0|auto_generated|divider|divider|StageOut[49]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[49]~59_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~59_combout\);

-- Location: LCCOMB_X110_Y25_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X110_Y25_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[48]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[48]~62_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[48]~62_combout\);

-- Location: LCCOMB_X110_Y25_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[48]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[48]~62_combout\,
	datad => VCC,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X110_Y25_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[49]~60_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[49]~59_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~60_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~59_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X110_Y25_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[50]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X110_Y25_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[51]~57_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~57_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y25_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\) # ((\inst1|Div0|auto_generated|divider|divider|StageOut[52]~56_combout\) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~56_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X110_Y25_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[53]~55_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~55_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X110_Y25_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[54]~71_combout\) # ((\inst1|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X110_Y25_N28
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X111_Y26_N24
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X111_Y26_N18
\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\);

-- Location: LCCOMB_X111_Y26_N20
\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~2_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~3_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\);

-- Location: LCCOMB_X114_Y26_N0
\inst4|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~0_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ $ 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ $ (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y26_N18
\inst4|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~1_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y26_N28
\inst4|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & (((!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\)))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y26_N22
\inst4|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~3_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & !\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\)))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y26_N8
\inst4|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y26_N2
\inst4|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~5_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ $ (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y26_N12
\inst4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ $ 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ $ (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~11_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~13_combout\,
	combout => \inst4|decOut_n~6_combout\);

-- Location: LCCOMB_X110_Y20_N14
\inst5|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~0_combout\ = ((!\inst2|Mult0|auto_generated|op_3~8_combout\ & (!\inst2|Mult0|auto_generated|op_3~10_combout\ & !\inst2|Mux0~1_combout\))) # (!\inst2|Mult0|auto_generated|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst5|decOut_n~0_combout\);

-- Location: LCCOMB_X110_Y20_N0
\inst5|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~1_combout\ = ((\inst5|decOut_n~0_combout\) # (!\inst2|Equal0~1_combout\)) # (!\inst2|Mult0|auto_generated|op_3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datab => \inst5|decOut_n~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	combout => \inst5|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y20_N20
\inst2|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[2]~9_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\inst2|Mult0|auto_generated|op_3~12_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst2|m[2]~9_combout\);

-- Location: LCCOMB_X110_Y20_N22
\inst2|m[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[0]~10_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\inst2|Mult0|auto_generated|op_3~8_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst2|m[0]~10_combout\);

-- Location: LCCOMB_X110_Y20_N10
\inst5|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~2_combout\ = (\inst2|m[2]~9_combout\ & ((\inst2|Mux1~2_combout\) # ((\inst2|m[0]~10_combout\) # (\inst2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|m[2]~9_combout\,
	datab => \inst2|Mux1~2_combout\,
	datac => \inst2|m[0]~10_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst5|decOut_n~2_combout\);

-- Location: LCCOMB_X110_Y20_N2
\inst2|m[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[3]~8_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst2|m[3]~8_combout\);

-- Location: LCCOMB_X110_Y20_N28
\inst5|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~3_combout\ = (\inst2|m[3]~8_combout\) # ((\inst5|decOut_n~2_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~2_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst2|m[3]~8_combout\,
	combout => \inst5|decOut_n~3_combout\);

-- Location: LCCOMB_X111_Y22_N8
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ $ (GND)
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X111_Y22_N10
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y22_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X111_Y22_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X111_Y22_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X111_Y22_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X111_Y22_N20
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X112_Y22_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X112_Y22_N26
\inst1|Div1|auto_generated|divider|divider|StageOut[53]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X111_Y22_N0
\inst1|Div1|auto_generated|divider|divider|StageOut[52]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\);

-- Location: LCCOMB_X111_Y22_N26
\inst1|Div1|auto_generated|divider|divider|StageOut[51]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[51]~3_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: LCCOMB_X112_Y22_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[51]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[51]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X112_Y22_N30
\inst1|Div1|auto_generated|divider|divider|StageOut[50]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[50]~6_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X111_Y22_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[50]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[50]~5_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[50]~5_combout\);

-- Location: LCCOMB_X111_Y22_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[49]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[49]~7_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X112_Y22_N0
\inst1|Div1|auto_generated|divider|divider|StageOut[49]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[49]~8_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X111_Y22_N22
\inst1|Div1|auto_generated|divider|divider|StageOut[48]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[48]~9_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[48]~9_combout\);

-- Location: LCCOMB_X110_Y22_N8
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X111_Y22_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[48]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[48]~10_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[48]~10_combout\);

-- Location: LCCOMB_X112_Y22_N4
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[48]~9_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[48]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datad => VCC,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y22_N6
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[49]~7_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[49]~8_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y22_N8
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[50]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y22_N10
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[51]~3_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[51]~4_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[51]~3_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y22_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X112_Y22_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[53]~1_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X112_Y22_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X112_Y22_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X110_Y20_N30
\inst5|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~4_combout\ = ((!\inst2|Mult0|auto_generated|op_3~8_combout\ & (!\inst2|Mux1~2_combout\ & !\inst2|Mux0~1_combout\))) # (!\inst2|Mult0|auto_generated|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mux1~2_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst5|decOut_n~4_combout\);

-- Location: LCCOMB_X110_Y20_N8
\inst5|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~5_combout\ = ((!\inst2|m[3]~8_combout\ & ((\inst5|decOut_n~4_combout\) # (!\inst2|m[2]~9_combout\)))) # (!\inst5|decOut_n~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|m[2]~9_combout\,
	datab => \inst5|decOut_n~1_combout\,
	datac => \inst5|decOut_n~4_combout\,
	datad => \inst2|m[3]~8_combout\,
	combout => \inst5|decOut_n~5_combout\);

-- Location: LCCOMB_X110_Y20_N16
\inst2|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[1]~11_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\inst2|Mult0|auto_generated|op_3~10_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst2|m[1]~11_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


