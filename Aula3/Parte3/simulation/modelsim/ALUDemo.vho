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

-- DATE "03/29/2022 10:25:01"

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
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|Add0~11_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~2_cout\ : std_logic;
SIGNAL \inst2|Add0~4\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
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
SIGNAL \inst2|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst2|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|Mux3~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Add0~9_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst|decOut_n~0_combout\ : std_logic;
SIGNAL \inst|decOut_n~1_combout\ : std_logic;
SIGNAL \inst|decOut_n~2_combout\ : std_logic;
SIGNAL \inst|decOut_n~3_combout\ : std_logic;
SIGNAL \inst|decOut_n~4_combout\ : std_logic;
SIGNAL \inst|decOut_n~5_combout\ : std_logic;
SIGNAL \inst|decOut_n~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n~19_combout\ : std_logic;
SIGNAL \inst1|decOut_n~26_combout\ : std_logic;
SIGNAL \inst1|decOut_n~14_combout\ : std_logic;
SIGNAL \inst1|decOut_n~30_combout\ : std_logic;
SIGNAL \inst1|decOut_n~20_combout\ : std_logic;
SIGNAL \inst1|decOut_n~27_combout\ : std_logic;
SIGNAL \inst1|decOut_n~21_combout\ : std_logic;
SIGNAL \inst1|decOut_n~28_combout\ : std_logic;
SIGNAL \inst2|m[1]~11_combout\ : std_logic;
SIGNAL \inst2|m[0]~8_combout\ : std_logic;
SIGNAL \inst2|m[2]~9_combout\ : std_logic;
SIGNAL \inst1|decOut_n~22_combout\ : std_logic;
SIGNAL \inst2|m[3]~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n~23_combout\ : std_logic;
SIGNAL \inst1|decOut_n~24_combout\ : std_logic;
SIGNAL \inst1|decOut_n~29_combout\ : std_logic;
SIGNAL \inst1|decOut_n~25_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|ALT_INV_m[0]~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_decOut_n~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_decOut_n~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~6_combout\ : std_logic;

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
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_m[0]~8_combout\ <= NOT \inst2|m[0]~8_combout\;
\inst|ALT_INV_decOut_n~2_combout\ <= NOT \inst|decOut_n~2_combout\;
\inst|ALT_INV_decOut_n~0_combout\ <= NOT \inst|decOut_n~0_combout\;
\inst2|ALT_INV_Mux0~1_combout\ <= NOT \inst2|Mux0~1_combout\;
\inst2|ALT_INV_Mux3~6_combout\ <= NOT \inst2|Mux3~6_combout\;
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
	i => \inst|ALT_INV_decOut_n~0_combout\,
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
	i => \inst|decOut_n~1_combout\,
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
	i => \inst|ALT_INV_decOut_n~2_combout\,
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
	i => \inst|decOut_n~3_combout\,
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
	i => \inst|decOut_n~4_combout\,
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
	i => \inst|decOut_n~5_combout\,
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
	i => \inst|decOut_n~6_combout\,
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
	i => \inst1|decOut_n~26_combout\,
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
	i => \inst1|decOut_n~30_combout\,
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
	i => \inst1|decOut_n~27_combout\,
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
	i => \inst1|decOut_n~28_combout\,
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
	i => \inst1|decOut_n~23_combout\,
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
	i => \inst1|decOut_n~29_combout\,
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
	i => \inst1|decOut_n~25_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[3]~10_combout\,
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
	i => \inst2|ALT_INV_m[0]~8_combout\,
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
	i => \inst2|ALT_INV_Mux0~1_combout\,
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
	i => \inst2|Mux1~1_combout\,
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
	i => \inst2|ALT_INV_Mux3~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X109_Y18_N8
\inst2|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X111_Y18_N24
\inst2|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\);

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

-- Location: LCCOMB_X110_Y18_N4
\inst2|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(1) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) $ ((\SW[5]~input_o\)))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) & 
-- ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(5),
	datab => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(1));

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

-- Location: LCCOMB_X110_Y18_N2
\inst2|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[7]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X110_Y18_N24
\inst2|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X110_Y18_N10
\inst2|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~0_combout\ = (\inst2|Mult0|auto_generated|le4a\(5) & (\inst2|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\inst2|Mult0|auto_generated|le4a\(5) & (\inst2|Mult0|auto_generated|le3a\(2) & VCC))
-- \inst2|Mult0|auto_generated|op_1~1\ = CARRY((\inst2|Mult0|auto_generated|le4a\(5) & \inst2|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(5),
	datab => \inst2|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \inst2|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X110_Y18_N12
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

-- Location: LCCOMB_X109_Y18_N30
\inst2|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X109_Y18_N28
\inst2|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X109_Y18_N10
\inst2|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X109_Y18_N12
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

-- Location: LCCOMB_X109_Y18_N14
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

-- Location: LCCOMB_X109_Y18_N16
\inst2|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~4_combout\ = ((\inst2|Mult0|auto_generated|le4a\(0) $ (\inst2|Mult0|auto_generated|op_1~0_combout\ $ (!\inst2|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_3~5\ = CARRY((\inst2|Mult0|auto_generated|le4a\(0) & ((\inst2|Mult0|auto_generated|op_1~0_combout\) # (!\inst2|Mult0|auto_generated|op_3~3\))) # (!\inst2|Mult0|auto_generated|le4a\(0) & 
-- (\inst2|Mult0|auto_generated|op_1~0_combout\ & !\inst2|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(0),
	datab => \inst2|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~3\,
	combout => \inst2|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X109_Y18_N18
\inst2|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~6_combout\ = (\inst2|Mult0|auto_generated|le4a\(1) & ((\inst2|Mult0|auto_generated|op_1~2_combout\ & (\inst2|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst2|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst2|Mult0|auto_generated|op_3~5\)))) # (!\inst2|Mult0|auto_generated|le4a\(1) & ((\inst2|Mult0|auto_generated|op_1~2_combout\ & (!\inst2|Mult0|auto_generated|op_3~5\)) # (!\inst2|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\inst2|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \inst2|Mult0|auto_generated|op_3~7\ = CARRY((\inst2|Mult0|auto_generated|le4a\(1) & (!\inst2|Mult0|auto_generated|op_1~2_combout\ & !\inst2|Mult0|auto_generated|op_3~5\)) # (!\inst2|Mult0|auto_generated|le4a\(1) & ((!\inst2|Mult0|auto_generated|op_3~5\) # 
-- (!\inst2|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(1),
	datab => \inst2|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_3~5\,
	combout => \inst2|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst2|Mult0|auto_generated|op_3~7\);

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

-- Location: LCCOMB_X110_Y19_N20
\inst2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X110_Y19_N30
\inst2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~4_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \inst2|Mux3~4_combout\);

-- Location: LCCOMB_X111_Y19_N4
\inst2|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~11_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst2|Add0~11_combout\);

-- Location: LCCOMB_X111_Y19_N8
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Add0~8_combout\);

-- Location: LCCOMB_X111_Y19_N30
\inst2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = \SW[8]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Add0~5_combout\);

-- Location: LCCOMB_X111_Y19_N28
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \SW[0]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X111_Y19_N10
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst2|Add0~2_cout\);

-- Location: LCCOMB_X111_Y19_N12
\inst2|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_combout\ = (\SW[4]~input_o\ & ((\inst2|Add0~0_combout\ & (\inst2|Add0~2_cout\ & VCC)) # (!\inst2|Add0~0_combout\ & (!\inst2|Add0~2_cout\)))) # (!\SW[4]~input_o\ & ((\inst2|Add0~0_combout\ & (!\inst2|Add0~2_cout\)) # (!\inst2|Add0~0_combout\ 
-- & ((\inst2|Add0~2_cout\) # (GND)))))
-- \inst2|Add0~4\ = CARRY((\SW[4]~input_o\ & (!\inst2|Add0~0_combout\ & !\inst2|Add0~2_cout\)) # (!\SW[4]~input_o\ & ((!\inst2|Add0~2_cout\) # (!\inst2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~2_cout\,
	combout => \inst2|Add0~3_combout\,
	cout => \inst2|Add0~4\);

-- Location: LCCOMB_X111_Y19_N14
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = ((\SW[5]~input_o\ $ (\inst2|Add0~5_combout\ $ (!\inst2|Add0~4\)))) # (GND)
-- \inst2|Add0~7\ = CARRY((\SW[5]~input_o\ & ((\inst2|Add0~5_combout\) # (!\inst2|Add0~4\))) # (!\SW[5]~input_o\ & (\inst2|Add0~5_combout\ & !\inst2|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Add0~5_combout\,
	datad => VCC,
	cin => \inst2|Add0~4\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X111_Y19_N16
\inst2|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_combout\ = (\SW[6]~input_o\ & ((\inst2|Add0~8_combout\ & (\inst2|Add0~7\ & VCC)) # (!\inst2|Add0~8_combout\ & (!\inst2|Add0~7\)))) # (!\SW[6]~input_o\ & ((\inst2|Add0~8_combout\ & (!\inst2|Add0~7\)) # (!\inst2|Add0~8_combout\ & 
-- ((\inst2|Add0~7\) # (GND)))))
-- \inst2|Add0~10\ = CARRY((\SW[6]~input_o\ & (!\inst2|Add0~8_combout\ & !\inst2|Add0~7\)) # (!\SW[6]~input_o\ & ((!\inst2|Add0~7\) # (!\inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~9_combout\,
	cout => \inst2|Add0~10\);

-- Location: LCCOMB_X111_Y19_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = \inst2|Add0~11_combout\ $ (\inst2|Add0~10\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~11_combout\,
	datad => \SW[7]~input_o\,
	cin => \inst2|Add0~10\,
	combout => \inst2|Add0~12_combout\);

-- Location: LCCOMB_X109_Y23_N6
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|Mux3~3_combout\ & (((\inst2|Mux3~4_combout\)))) # (!\inst2|Mux3~3_combout\ & ((\inst2|Mux3~4_combout\ & (!\inst2|Mult0|auto_generated|op_3~6_combout\)) # (!\inst2|Mux3~4_combout\ & ((!\inst2|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~6_combout\,
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|Mux3~4_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y19_N22
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

-- Location: LCCOMB_X110_Y19_N8
\inst2|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose\(0) = (\SW[1]~input_o\) # (((!\SW[7]~input_o\ & \SW[0]~input_o\)) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X111_Y19_N24
\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X111_Y19_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\SW[3]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X110_Y19_N24
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

-- Location: LCCOMB_X110_Y19_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X109_Y16_N6
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X109_Y16_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X109_Y16_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X109_Y16_N12
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

-- Location: LCCOMB_X109_Y16_N24
\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X109_Y16_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X109_Y16_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X109_Y19_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X109_Y19_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\SW[1]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X109_Y19_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X109_Y19_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X109_Y19_N28
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

-- Location: LCCOMB_X109_Y19_N6
\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X110_Y19_N12
\inst2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\ & (\SW[3]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Mux0~2_combout\);

-- Location: LCCOMB_X110_Y19_N6
\inst2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_combout\ = (\inst2|Mux0~2_combout\ & ((\SW[9]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst2|Mux0~2_combout\,
	combout => \inst2|Mux0~3_combout\);

-- Location: LCCOMB_X109_Y23_N0
\inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux0~0_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|selnose\(0))) # (!\inst2|Mux3~3_combout\))) # (!\inst2|Mux0~0_combout\ & (\inst2|Mux3~3_combout\ & ((!\inst2|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|selnose\(0),
	datad => \inst2|Mux0~3_combout\,
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y19_N28
\inst2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[9]~input_o\ $ (\SW[1]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X109_Y19_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\);

-- Location: LCCOMB_X110_Y19_N14
\inst2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|Mux2~2_combout\ & ((\SW[9]~input_o\) # ((\SW[8]~input_o\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mux2~2_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X109_Y23_N10
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|Mux3~4_combout\ & (\inst2|Mux3~3_combout\)) # (!\inst2|Mux3~4_combout\ & ((\inst2|Mux3~3_combout\ & (\inst2|Mux2~3_combout\)) # (!\inst2|Mux3~3_combout\ & ((\inst2|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~4_combout\,
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|Mux2~3_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y16_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X109_Y16_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X109_Y16_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X109_Y16_N22
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

-- Location: LCCOMB_X109_Y16_N4
\inst2|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(10) = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X109_Y23_N28
\inst2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|Mux2~0_combout\ & (((!\inst2|Mux3~4_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|selnose\(10)))) # (!\inst2|Mux2~0_combout\ & (((\inst2|Mux3~4_combout\ & \inst2|Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|selnose\(10),
	datac => \inst2|Mux3~4_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~2_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y19_N0
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\SW[8]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[8]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y19_N2
\inst2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst2|Mux3~0_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mux3~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y19_N4
\inst2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\ & ((!\SW[4]~input_o\) # (!\inst2|Mux3~1_combout\))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\))))) # (!\SW[9]~input_o\ & (\inst2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|Mux3~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X109_Y16_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X109_Y16_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X109_Y16_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X109_Y19_N10
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

-- Location: LCCOMB_X109_Y19_N12
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

-- Location: LCCOMB_X109_Y19_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X109_Y19_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\))) 
-- # (!\SW[3]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X109_Y19_N18
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

-- Location: LCCOMB_X110_Y19_N0
\inst2|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~5_combout\ = (\inst2|Mux3~4_combout\ & (((\inst2|Mux3~3_combout\)) # (!\inst2|Mult0|auto_generated|op_3~0_combout\))) # (!\inst2|Mux3~4_combout\ & (((!\inst2|Add0~3_combout\ & !\inst2|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~4_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~0_combout\,
	datac => \inst2|Add0~3_combout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux3~5_combout\);

-- Location: LCCOMB_X109_Y23_N24
\inst2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~6_combout\ = (\inst2|Mux3~5_combout\ & (((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (!\inst2|Mux3~3_combout\)))) # (!\inst2|Mux3~5_combout\ & (!\inst2|Mux3~2_combout\ & ((\inst2|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~2_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst2|Mux3~5_combout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux3~6_combout\);

-- Location: LCCOMB_X109_Y19_N8
\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X110_Y19_N16
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\ $ (\SW[2]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[9]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

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
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y19_N10
\inst2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~3_combout\ = (\inst2|Mux1~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst2|Mux1~2_combout\,
	combout => \inst2|Mux1~3_combout\);

-- Location: LCCOMB_X110_Y19_N26
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|Mux3~3_combout\ & ((\inst2|Mux1~3_combout\) # ((\inst2|Mux3~4_combout\)))) # (!\inst2|Mux3~3_combout\ & (((!\inst2|Mux3~4_combout\ & \inst2|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~3_combout\,
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|Mux3~4_combout\,
	datad => \inst2|Add0~9_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y19_N4
\inst2|Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[6]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X110_Y19_N22
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|Mux1~0_combout\ & (((!\inst2|Mux3~4_combout\)) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\))) # (!\inst2|Mux1~0_combout\ & (((\inst2|Mux3~4_combout\ & 
-- \inst2|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \inst2|Mux3~4_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~4_combout\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X109_Y23_N2
\inst|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~0_combout\ = (\inst2|Mux3~6_combout\ & ((\inst2|Mux2~1_combout\) # (\inst2|Mux0~1_combout\ $ (!\inst2|Mux1~1_combout\)))) # (!\inst2|Mux3~6_combout\ & ((\inst2|Mux2~1_combout\ $ (\inst2|Mux1~1_combout\)) # (!\inst2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~1_combout\,
	datab => \inst2|Mux2~1_combout\,
	datac => \inst2|Mux3~6_combout\,
	datad => \inst2|Mux1~1_combout\,
	combout => \inst|decOut_n~0_combout\);

-- Location: LCCOMB_X100_Y68_N24
\inst|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~1_combout\ = (\inst2|Mux1~1_combout\ & (!\inst2|Mux3~6_combout\ & (\inst2|Mux0~1_combout\ $ (!\inst2|Mux2~1_combout\)))) # (!\inst2|Mux1~1_combout\ & (\inst2|Mux0~1_combout\ & ((\inst2|Mux2~1_combout\) # (!\inst2|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~1_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Mux3~6_combout\,
	combout => \inst|decOut_n~1_combout\);

-- Location: LCCOMB_X100_Y68_N26
\inst|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~2_combout\ = (\inst2|Mux2~1_combout\ & (((\inst2|Mux3~6_combout\) # (!\inst2|Mux0~1_combout\)))) # (!\inst2|Mux2~1_combout\ & ((\inst2|Mux1~1_combout\ & (!\inst2|Mux0~1_combout\)) # (!\inst2|Mux1~1_combout\ & ((\inst2|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~1_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Mux3~6_combout\,
	combout => \inst|decOut_n~2_combout\);

-- Location: LCCOMB_X109_Y23_N20
\inst|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~3_combout\ = (\inst2|Mux2~1_combout\ & ((\inst2|Mux3~6_combout\ & (!\inst2|Mux0~1_combout\ & !\inst2|Mux1~1_combout\)) # (!\inst2|Mux3~6_combout\ & ((\inst2|Mux1~1_combout\))))) # (!\inst2|Mux2~1_combout\ & (\inst2|Mux0~1_combout\ & 
-- (\inst2|Mux3~6_combout\ $ (!\inst2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~1_combout\,
	datab => \inst2|Mux2~1_combout\,
	datac => \inst2|Mux3~6_combout\,
	datad => \inst2|Mux1~1_combout\,
	combout => \inst|decOut_n~3_combout\);

-- Location: LCCOMB_X100_Y68_N4
\inst|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~4_combout\ = (\inst2|Mux1~1_combout\ & (!\inst2|Mux0~1_combout\ & ((\inst2|Mux2~1_combout\) # (\inst2|Mux3~6_combout\)))) # (!\inst2|Mux1~1_combout\ & (\inst2|Mux0~1_combout\ & (\inst2|Mux2~1_combout\ & \inst2|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~1_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Mux3~6_combout\,
	combout => \inst|decOut_n~4_combout\);

-- Location: LCCOMB_X100_Y68_N6
\inst|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~5_combout\ = (\inst2|Mux0~1_combout\ & (\inst2|Mux1~1_combout\ & (\inst2|Mux2~1_combout\ $ (!\inst2|Mux3~6_combout\)))) # (!\inst2|Mux0~1_combout\ & ((\inst2|Mux3~6_combout\ & (\inst2|Mux1~1_combout\)) # (!\inst2|Mux3~6_combout\ & 
-- ((\inst2|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~1_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Mux3~6_combout\,
	combout => \inst|decOut_n~5_combout\);

-- Location: LCCOMB_X100_Y68_N0
\inst|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~6_combout\ = (\inst2|Mux1~1_combout\ & (!\inst2|Mux2~1_combout\ & (\inst2|Mux0~1_combout\ $ (!\inst2|Mux3~6_combout\)))) # (!\inst2|Mux1~1_combout\ & (!\inst2|Mux3~6_combout\ & (\inst2|Mux0~1_combout\ $ (\inst2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~1_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux2~1_combout\,
	datad => \inst2|Mux3~6_combout\,
	combout => \inst|decOut_n~6_combout\);

-- Location: LCCOMB_X109_Y18_N0
\inst2|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X110_Y18_N30
\inst2|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst2|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X110_Y18_N8
\inst2|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(2) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) $ ((\SW[6]~input_o\)))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) & 
-- ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(5),
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \inst2|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X110_Y18_N14
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

-- Location: LCCOMB_X109_Y18_N20
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

-- Location: LCCOMB_X110_Y18_N6
\inst2|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X110_Y18_N26
\inst2|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X110_Y18_N28
\inst2|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X110_Y18_N22
\inst2|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le4a\(3) = (\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) $ (((\SW[7]~input_o\))))) # (!\inst2|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst2|Mult0|auto_generated|le4a\(5) & 
-- (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(5),
	datab => \inst2|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X110_Y18_N0
\inst2|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X110_Y18_N16
\inst2|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~6_combout\ = (\inst2|Mult0|auto_generated|le4a\(3) & ((\inst2|Mult0|auto_generated|le5a\(1) & (\inst2|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst2|Mult0|auto_generated|le5a\(1) & 
-- (!\inst2|Mult0|auto_generated|op_1~5\)))) # (!\inst2|Mult0|auto_generated|le4a\(3) & ((\inst2|Mult0|auto_generated|le5a\(1) & (!\inst2|Mult0|auto_generated|op_1~5\)) # (!\inst2|Mult0|auto_generated|le5a\(1) & ((\inst2|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \inst2|Mult0|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|auto_generated|le4a\(3) & (!\inst2|Mult0|auto_generated|le5a\(1) & !\inst2|Mult0|auto_generated|op_1~5\)) # (!\inst2|Mult0|auto_generated|le4a\(3) & ((!\inst2|Mult0|auto_generated|op_1~5\) # 
-- (!\inst2|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(3),
	datab => \inst2|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~5\,
	combout => \inst2|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y18_N18
\inst2|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|auto_generated|le4a\(4) $ (\inst2|Mult0|auto_generated|le5a\(2) $ (!\inst2|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult0|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|auto_generated|le4a\(4) & ((\inst2|Mult0|auto_generated|le5a\(2)) # (!\inst2|Mult0|auto_generated|op_1~7\))) # (!\inst2|Mult0|auto_generated|le4a\(4) & (\inst2|Mult0|auto_generated|le5a\(2) & 
-- !\inst2|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(4),
	datab => \inst2|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \inst2|Mult0|auto_generated|op_1~7\,
	combout => \inst2|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X110_Y18_N20
\inst2|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_1~10_combout\ = \inst2|Mult0|auto_generated|le4a\(5) $ (\inst2|Mult0|auto_generated|op_1~9\ $ (!\inst2|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|le4a\(5),
	datad => \inst2|Mult0|auto_generated|le5a\(3),
	cin => \inst2|Mult0|auto_generated|op_1~9\,
	combout => \inst2|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X109_Y18_N22
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

-- Location: LCCOMB_X109_Y18_N24
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

-- Location: LCCOMB_X109_Y18_N26
\inst2|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|auto_generated|op_3~14_combout\ = \inst2|Mult0|auto_generated|op_1~10_combout\ $ (\inst2|Mult0|auto_generated|op_3~13\ $ (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|op_1~10_combout\,
	datad => \SW[1]~input_o\,
	cin => \inst2|Mult0|auto_generated|op_3~13\,
	combout => \inst2|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X111_Y21_N0
\inst1|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~19_combout\ = (\inst2|Mult0|auto_generated|op_3~8_combout\ & ((\inst2|Mult0|auto_generated|op_3~14_combout\) # (\inst2|Mult0|auto_generated|op_3~12_combout\ $ (\inst2|Mult0|auto_generated|op_3~10_combout\)))) # 
-- (!\inst2|Mult0|auto_generated|op_3~8_combout\ & ((\inst2|Mult0|auto_generated|op_3~10_combout\) # (\inst2|Mult0|auto_generated|op_3~14_combout\ $ (\inst2|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|decOut_n~19_combout\);

-- Location: LCCOMB_X111_Y21_N22
\inst1|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~26_combout\ = (\SW[8]~input_o\) # (((\SW[10]~input_o\) # (!\SW[9]~input_o\)) # (!\inst1|decOut_n~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|decOut_n~19_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n~26_combout\);

-- Location: LCCOMB_X111_Y21_N14
\inst1|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~14_combout\ = (\inst2|Mult0|auto_generated|op_3~8_combout\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ $ (((\inst2|Mult0|auto_generated|op_3~10_combout\) # (!\inst2|Mult0|auto_generated|op_3~12_combout\))))) # 
-- (!\inst2|Mult0|auto_generated|op_3~8_combout\ & (!\inst2|Mult0|auto_generated|op_3~14_combout\ & (!\inst2|Mult0|auto_generated|op_3~12_combout\ & \inst2|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|decOut_n~14_combout\);

-- Location: LCCOMB_X110_Y19_N2
\inst1|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~30_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & \inst1|decOut_n~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \inst1|decOut_n~14_combout\,
	combout => \inst1|decOut_n~30_combout\);

-- Location: LCCOMB_X111_Y21_N26
\inst1|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~20_combout\ = (\inst2|Mult0|auto_generated|op_3~10_combout\ & (\inst2|Mult0|auto_generated|op_3~8_combout\ & (!\inst2|Mult0|auto_generated|op_3~14_combout\))) # (!\inst2|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\inst2|Mult0|auto_generated|op_3~12_combout\ & ((!\inst2|Mult0|auto_generated|op_3~14_combout\))) # (!\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst2|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|decOut_n~20_combout\);

-- Location: LCCOMB_X111_Y21_N8
\inst1|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~27_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\inst1|decOut_n~20_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst1|decOut_n~20_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n~27_combout\);

-- Location: LCCOMB_X111_Y21_N20
\inst1|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~21_combout\ = (\inst2|Mult0|auto_generated|op_3~10_combout\ & ((\inst2|Mult0|auto_generated|op_3~8_combout\ & ((\inst2|Mult0|auto_generated|op_3~12_combout\))) # (!\inst2|Mult0|auto_generated|op_3~8_combout\ & 
-- (\inst2|Mult0|auto_generated|op_3~14_combout\ & !\inst2|Mult0|auto_generated|op_3~12_combout\)))) # (!\inst2|Mult0|auto_generated|op_3~10_combout\ & (!\inst2|Mult0|auto_generated|op_3~14_combout\ & (\inst2|Mult0|auto_generated|op_3~8_combout\ $ 
-- (\inst2|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|decOut_n~21_combout\);

-- Location: LCCOMB_X111_Y21_N18
\inst1|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~28_combout\ = (!\SW[8]~input_o\ & (\inst1|decOut_n~21_combout\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|decOut_n~21_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst1|decOut_n~28_combout\);

-- Location: LCCOMB_X111_Y21_N6
\inst2|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[1]~11_combout\ = (!\SW[8]~input_o\ & (\inst2|Mult0|auto_generated|op_3~10_combout\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|m[1]~11_combout\);

-- Location: LCCOMB_X111_Y21_N24
\inst2|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[0]~8_combout\ = (\SW[8]~input_o\) # ((\SW[10]~input_o\) # ((!\SW[9]~input_o\) # (!\inst2|Mult0|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|m[0]~8_combout\);

-- Location: LCCOMB_X111_Y21_N2
\inst2|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[2]~9_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\inst2|Mult0|auto_generated|op_3~12_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|m[2]~9_combout\);

-- Location: LCCOMB_X111_Y21_N30
\inst1|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~22_combout\ = (\inst2|m[1]~11_combout\ & (((\inst2|m[2]~9_combout\) # (!\inst2|Mult0|auto_generated|op_3~14_combout\)))) # (!\inst2|m[1]~11_combout\ & (\inst2|m[0]~8_combout\ & ((\inst2|m[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|m[1]~11_combout\,
	datab => \inst2|m[0]~8_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst2|m[2]~9_combout\,
	combout => \inst1|decOut_n~22_combout\);

-- Location: LCCOMB_X111_Y21_N28
\inst2|m[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[3]~10_combout\ = (!\SW[8]~input_o\ & (\inst2|Mult0|auto_generated|op_3~14_combout\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|m[3]~10_combout\);

-- Location: LCCOMB_X111_Y21_N16
\inst1|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~23_combout\ = (\inst1|decOut_n~22_combout\ & ((\inst2|m[2]~9_combout\ & (\inst2|m[3]~10_combout\)) # (!\inst2|m[2]~9_combout\ & ((!\inst2|Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~22_combout\,
	datab => \inst2|m[3]~10_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst2|m[2]~9_combout\,
	combout => \inst1|decOut_n~23_combout\);

-- Location: LCCOMB_X111_Y21_N10
\inst1|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~24_combout\ = (\inst2|Mult0|auto_generated|op_3~14_combout\ & ((\inst2|Mult0|auto_generated|op_3~8_combout\ & ((\inst2|Mult0|auto_generated|op_3~10_combout\))) # (!\inst2|Mult0|auto_generated|op_3~8_combout\ & 
-- (\inst2|Mult0|auto_generated|op_3~12_combout\)))) # (!\inst2|Mult0|auto_generated|op_3~14_combout\ & (\inst2|Mult0|auto_generated|op_3~12_combout\ & (\inst2|Mult0|auto_generated|op_3~8_combout\ $ (\inst2|Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst2|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst2|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst2|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst1|decOut_n~24_combout\);

-- Location: LCCOMB_X111_Y21_N12
\inst1|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~29_combout\ = (\inst1|decOut_n~24_combout\ & (\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~24_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst1|decOut_n~29_combout\);

-- Location: LCCOMB_X111_Y21_N4
\inst1|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~25_combout\ = (\inst2|m[3]~10_combout\ & (!\inst2|m[0]~8_combout\ & (\inst2|m[1]~11_combout\ $ (\inst2|m[2]~9_combout\)))) # (!\inst2|m[3]~10_combout\ & (!\inst2|m[1]~11_combout\ & (\inst2|m[0]~8_combout\ $ (!\inst2|m[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|m[1]~11_combout\,
	datab => \inst2|m[0]~8_combout\,
	datac => \inst2|m[3]~10_combout\,
	datad => \inst2|m[2]~9_combout\,
	combout => \inst1|decOut_n~25_combout\);

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

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


