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

-- DATE "05/24/2022 11:54:24"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksMachine IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst2|s_dirtyIn~q\ : std_logic;
SIGNAL \inst2|s_previousIn~q\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[13]~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[13]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[13]~0_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[13]~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~q\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst5|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst5|s_dirtyIn~q\ : std_logic;
SIGNAL \inst5|s_previousIn~q\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|LessThan0~6_combout\ : std_logic;
SIGNAL \inst5|LessThan0~7_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[11]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[11]~3_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt[11]~4_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst5|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|s_currentState~18_combout\ : std_logic;
SIGNAL \inst|s_currentState~13_combout\ : std_logic;
SIGNAL \inst|s_currentState.E1~q\ : std_logic;
SIGNAL \inst|s_currentState~12_combout\ : std_logic;
SIGNAL \inst|s_currentState.E2~q\ : std_logic;
SIGNAL \inst|s_currentState~8_combout\ : std_logic;
SIGNAL \inst|s_currentState~9_combout\ : std_logic;
SIGNAL \inst|s_currentState.E4~q\ : std_logic;
SIGNAL \inst|s_currentState~10_combout\ : std_logic;
SIGNAL \inst|s_currentState~11_combout\ : std_logic;
SIGNAL \inst|s_currentState.E5~q\ : std_logic;
SIGNAL \inst|s_currentState~16_combout\ : std_logic;
SIGNAL \inst|s_currentState~17_combout\ : std_logic;
SIGNAL \inst|s_currentState.E0~q\ : std_logic;
SIGNAL \inst|s_currentState~14_combout\ : std_logic;
SIGNAL \inst|s_currentState~15_combout\ : std_logic;
SIGNAL \inst|s_currentState.E3~q\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|s_count[0]~32_combout\ : std_logic;
SIGNAL \inst9|Equal1~1_combout\ : std_logic;
SIGNAL \inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst9|Equal1~2_combout\ : std_logic;
SIGNAL \inst9|Equal1~3_combout\ : std_logic;
SIGNAL \inst9|Equal1~4_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|s_count[25]~84\ : std_logic;
SIGNAL \inst9|s_count[26]~85_combout\ : std_logic;
SIGNAL \inst9|s_count[26]~86\ : std_logic;
SIGNAL \inst9|s_count[27]~87_combout\ : std_logic;
SIGNAL \inst9|s_count[27]~88\ : std_logic;
SIGNAL \inst9|s_count[28]~89_combout\ : std_logic;
SIGNAL \inst9|s_count[28]~90\ : std_logic;
SIGNAL \inst9|s_count[29]~91_combout\ : std_logic;
SIGNAL \inst9|s_count[29]~92\ : std_logic;
SIGNAL \inst9|s_count[30]~93_combout\ : std_logic;
SIGNAL \inst9|s_count[30]~94\ : std_logic;
SIGNAL \inst9|s_count[31]~95_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst9|Equal1~5_combout\ : std_logic;
SIGNAL \inst9|s_count~48_combout\ : std_logic;
SIGNAL \inst9|s_count[0]~33\ : std_logic;
SIGNAL \inst9|s_count[1]~34_combout\ : std_logic;
SIGNAL \inst9|s_count[1]~35\ : std_logic;
SIGNAL \inst9|s_count[2]~36_combout\ : std_logic;
SIGNAL \inst9|s_count[2]~37\ : std_logic;
SIGNAL \inst9|s_count[3]~38_combout\ : std_logic;
SIGNAL \inst9|s_count[3]~39\ : std_logic;
SIGNAL \inst9|s_count[4]~40_combout\ : std_logic;
SIGNAL \inst9|s_count[4]~41\ : std_logic;
SIGNAL \inst9|s_count[5]~42_combout\ : std_logic;
SIGNAL \inst9|s_count[5]~43\ : std_logic;
SIGNAL \inst9|s_count[6]~44_combout\ : std_logic;
SIGNAL \inst9|s_count[6]~45\ : std_logic;
SIGNAL \inst9|s_count[7]~46_combout\ : std_logic;
SIGNAL \inst9|s_count[7]~47\ : std_logic;
SIGNAL \inst9|s_count[8]~49_combout\ : std_logic;
SIGNAL \inst9|s_count[8]~50\ : std_logic;
SIGNAL \inst9|s_count[9]~51_combout\ : std_logic;
SIGNAL \inst9|s_count[9]~52\ : std_logic;
SIGNAL \inst9|s_count[10]~53_combout\ : std_logic;
SIGNAL \inst9|s_count[10]~54\ : std_logic;
SIGNAL \inst9|s_count[11]~55_combout\ : std_logic;
SIGNAL \inst9|s_count[11]~56\ : std_logic;
SIGNAL \inst9|s_count[12]~57_combout\ : std_logic;
SIGNAL \inst9|s_count[12]~58\ : std_logic;
SIGNAL \inst9|s_count[13]~59_combout\ : std_logic;
SIGNAL \inst9|s_count[13]~60\ : std_logic;
SIGNAL \inst9|s_count[14]~61_combout\ : std_logic;
SIGNAL \inst9|s_count[14]~62\ : std_logic;
SIGNAL \inst9|s_count[15]~63_combout\ : std_logic;
SIGNAL \inst9|s_count[15]~64\ : std_logic;
SIGNAL \inst9|s_count[16]~65_combout\ : std_logic;
SIGNAL \inst9|s_count[16]~66\ : std_logic;
SIGNAL \inst9|s_count[17]~67_combout\ : std_logic;
SIGNAL \inst9|s_count[17]~68\ : std_logic;
SIGNAL \inst9|s_count[18]~69_combout\ : std_logic;
SIGNAL \inst9|s_count[18]~70\ : std_logic;
SIGNAL \inst9|s_count[19]~71_combout\ : std_logic;
SIGNAL \inst9|s_count[19]~72\ : std_logic;
SIGNAL \inst9|s_count[20]~73_combout\ : std_logic;
SIGNAL \inst9|s_count[20]~74\ : std_logic;
SIGNAL \inst9|s_count[21]~75_combout\ : std_logic;
SIGNAL \inst9|s_count[21]~76\ : std_logic;
SIGNAL \inst9|s_count[22]~77_combout\ : std_logic;
SIGNAL \inst9|s_count[22]~78\ : std_logic;
SIGNAL \inst9|s_count[23]~79_combout\ : std_logic;
SIGNAL \inst9|s_count[23]~80\ : std_logic;
SIGNAL \inst9|s_count[24]~81_combout\ : std_logic;
SIGNAL \inst9|s_count[24]~82\ : std_logic;
SIGNAL \inst9|s_count[25]~83_combout\ : std_logic;
SIGNAL \inst9|Equal0~5_combout\ : std_logic;
SIGNAL \inst9|Equal0~6_combout\ : std_logic;
SIGNAL \inst9|Equal0~7_combout\ : std_logic;
SIGNAL \inst9|Equal0~8_combout\ : std_logic;
SIGNAL \inst9|Equal0~9_combout\ : std_logic;
SIGNAL \inst9|Equal0~10_combout\ : std_logic;
SIGNAL \inst9|timerOut~0_combout\ : std_logic;
SIGNAL \inst9|timerOut~q\ : std_logic;
SIGNAL \inst2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst4|ALT_INV_Mux1~0_combout\ <= NOT \inst4|Mux1~0_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
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
	i => \inst4|ALT_INV_Mux0~0_combout\,
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
	i => \inst4|ALT_INV_Mux1~0_combout\,
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
	i => \inst4|Mux2~0_combout\,
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
	i => \inst4|ALT_INV_Mux3~0_combout\,
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
	i => \inst4|Mux4~0_combout\,
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
	i => \inst4|Mux5~0_combout\,
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
	i => \inst4|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|timerOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
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
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X113_Y59_N10
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_debounceCnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

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

-- Location: LCCOMB_X110_Y59_N6
\inst2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \inst2|s_dirtyIn~0_combout\);

-- Location: FF_X110_Y59_N7
\inst2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_dirtyIn~q\);

-- Location: FF_X111_Y59_N11
\inst2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_previousIn~q\);

-- Location: LCCOMB_X113_Y59_N14
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_debounceCnt\(2) & ((GND) # (!\inst2|Add0~3\))) # (!\inst2|s_debounceCnt\(2) & (\inst2|Add0~3\ $ (GND)))
-- \inst2|Add0~5\ = CARRY((\inst2|s_debounceCnt\(2)) # (!\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X113_Y59_N16
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_debounceCnt\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst2|s_debounceCnt\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|s_debounceCnt\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X113_Y59_N4
\inst2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~22_combout\ = (\inst2|Add0~6_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~6_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~22_combout\);

-- Location: FF_X113_Y59_N5
\inst2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~22_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(3));

-- Location: LCCOMB_X113_Y59_N18
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_debounceCnt\(4) & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|s_debounceCnt\(4) & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|s_debounceCnt\(4)) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X112_Y59_N18
\inst2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~23_combout\ = (\inst2|Add0~8_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y59_N19
\inst2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~23_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(4));

-- Location: LCCOMB_X113_Y59_N20
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_debounceCnt\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst2|s_debounceCnt\(5) & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((!\inst2|s_debounceCnt\(5) & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X113_Y59_N0
\inst2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~27_combout\ = (\inst2|Add0~10_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~10_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~27_combout\);

-- Location: FF_X113_Y59_N1
\inst2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~27_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(5));

-- Location: LCCOMB_X113_Y59_N22
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_debounceCnt\(6) & ((GND) # (!\inst2|Add0~11\))) # (!\inst2|s_debounceCnt\(6) & (\inst2|Add0~11\ $ (GND)))
-- \inst2|Add0~13\ = CARRY((\inst2|s_debounceCnt\(6)) # (!\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X112_Y59_N16
\inst2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~1_combout\ = (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~12_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|Add0~12_combout\,
	datad => \inst2|s_debounceCnt[13]~0_combout\,
	combout => \inst2|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y59_N17
\inst2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~1_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(6));

-- Location: LCCOMB_X113_Y59_N24
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_debounceCnt\(7) & (\inst2|Add0~13\ & VCC)) # (!\inst2|s_debounceCnt\(7) & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((!\inst2|s_debounceCnt\(7) & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X114_Y59_N20
\inst2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~12_combout\ = (\inst2|Add0~14_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~14_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~12_combout\);

-- Location: FF_X114_Y59_N21
\inst2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~12_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(7));

-- Location: LCCOMB_X113_Y59_N26
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_debounceCnt\(8) & ((GND) # (!\inst2|Add0~15\))) # (!\inst2|s_debounceCnt\(8) & (\inst2|Add0~15\ $ (GND)))
-- \inst2|Add0~17\ = CARRY((\inst2|s_debounceCnt\(8)) # (!\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X112_Y59_N14
\inst2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~13_combout\ = (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~16_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|s_debounceCnt[13]~0_combout\,
	combout => \inst2|s_debounceCnt~13_combout\);

-- Location: FF_X112_Y59_N15
\inst2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~13_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(8));

-- Location: LCCOMB_X113_Y59_N28
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_debounceCnt\(9) & (\inst2|Add0~17\ & VCC)) # (!\inst2|s_debounceCnt\(9) & (!\inst2|Add0~17\))
-- \inst2|Add0~19\ = CARRY((!\inst2|s_debounceCnt\(9) & !\inst2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X112_Y59_N0
\inst2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~14_combout\ = (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~18_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|s_debounceCnt[13]~0_combout\,
	combout => \inst2|s_debounceCnt~14_combout\);

-- Location: FF_X112_Y59_N1
\inst2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~14_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(9));

-- Location: LCCOMB_X113_Y59_N30
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_debounceCnt\(10) & ((GND) # (!\inst2|Add0~19\))) # (!\inst2|s_debounceCnt\(10) & (\inst2|Add0~19\ $ (GND)))
-- \inst2|Add0~21\ = CARRY((\inst2|s_debounceCnt\(10)) # (!\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X112_Y59_N26
\inst2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~15_combout\ = (\inst2|Add0~20_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~15_combout\);

-- Location: FF_X112_Y59_N27
\inst2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~15_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(10));

-- Location: LCCOMB_X113_Y58_N0
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_debounceCnt\(11) & (\inst2|Add0~21\ & VCC)) # (!\inst2|s_debounceCnt\(11) & (!\inst2|Add0~21\))
-- \inst2|Add0~23\ = CARRY((!\inst2|s_debounceCnt\(11) & !\inst2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X111_Y59_N30
\inst2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~16_combout\ = (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~22_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|s_debounceCnt[13]~0_combout\,
	combout => \inst2|s_debounceCnt~16_combout\);

-- Location: FF_X111_Y59_N31
\inst2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~16_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(11));

-- Location: LCCOMB_X113_Y58_N2
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_debounceCnt\(12) & ((GND) # (!\inst2|Add0~23\))) # (!\inst2|s_debounceCnt\(12) & (\inst2|Add0~23\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((\inst2|s_debounceCnt\(12)) # (!\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X112_Y59_N8
\inst2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~8_combout\ = (\inst2|Add0~24_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~24_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~8_combout\);

-- Location: FF_X112_Y59_N9
\inst2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~8_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(12));

-- Location: LCCOMB_X113_Y58_N4
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_debounceCnt\(13) & (\inst2|Add0~25\ & VCC)) # (!\inst2|s_debounceCnt\(13) & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((!\inst2|s_debounceCnt\(13) & !\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X112_Y59_N22
\inst2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~9_combout\ = (\inst2|Add0~26_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~9_combout\);

-- Location: FF_X112_Y59_N23
\inst2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~9_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(13));

-- Location: LCCOMB_X113_Y58_N6
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_debounceCnt\(14) & ((GND) # (!\inst2|Add0~27\))) # (!\inst2|s_debounceCnt\(14) & (\inst2|Add0~27\ $ (GND)))
-- \inst2|Add0~29\ = CARRY((\inst2|s_debounceCnt\(14)) # (!\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X112_Y59_N6
\inst2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~17_combout\ = (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~28_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|s_debounceCnt[13]~0_combout\,
	combout => \inst2|s_debounceCnt~17_combout\);

-- Location: FF_X112_Y59_N7
\inst2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~17_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(14));

-- Location: LCCOMB_X113_Y58_N8
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_debounceCnt\(15) & (\inst2|Add0~29\ & VCC)) # (!\inst2|s_debounceCnt\(15) & (!\inst2|Add0~29\))
-- \inst2|Add0~31\ = CARRY((!\inst2|s_debounceCnt\(15) & !\inst2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X113_Y58_N24
\inst2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~5_combout\ = (\inst2|Add0~30_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~5_combout\);

-- Location: FF_X113_Y58_N25
\inst2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~5_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(15));

-- Location: LCCOMB_X113_Y58_N10
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_debounceCnt\(16) & ((GND) # (!\inst2|Add0~31\))) # (!\inst2|s_debounceCnt\(16) & (\inst2|Add0~31\ $ (GND)))
-- \inst2|Add0~33\ = CARRY((\inst2|s_debounceCnt\(16)) # (!\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X111_Y59_N0
\inst2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~6_combout\ = (\inst2|s_debounceCnt[13]~4_combout\ & \inst2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[13]~4_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|s_debounceCnt~6_combout\);

-- Location: FF_X111_Y59_N1
\inst2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~6_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(16));

-- Location: LCCOMB_X113_Y58_N12
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_debounceCnt\(17) & (\inst2|Add0~33\ & VCC)) # (!\inst2|s_debounceCnt\(17) & (!\inst2|Add0~33\))
-- \inst2|Add0~35\ = CARRY((!\inst2|s_debounceCnt\(17) & !\inst2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X113_Y58_N30
\inst2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~7_combout\ = (\inst2|Add0~34_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~34_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~7_combout\);

-- Location: FF_X113_Y58_N31
\inst2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~7_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(17));

-- Location: LCCOMB_X113_Y58_N14
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_debounceCnt\(18) & ((GND) # (!\inst2|Add0~35\))) # (!\inst2|s_debounceCnt\(18) & (\inst2|Add0~35\ $ (GND)))
-- \inst2|Add0~37\ = CARRY((\inst2|s_debounceCnt\(18)) # (!\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X111_Y59_N24
\inst2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[18]~18_combout\ = (\inst2|s_debounceCnt[13]~3_combout\ & (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~36_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[13]~3_combout\,
	datab => \inst2|s_debounceCnt[13]~0_combout\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X111_Y59_N25
\inst2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(18));

-- Location: LCCOMB_X111_Y59_N16
\inst2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~3_combout\ = (!\inst2|s_debounceCnt\(19) & (!\inst2|s_debounceCnt\(18) & (!\inst2|s_debounceCnt\(11) & !\inst2|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datab => \inst2|s_debounceCnt\(18),
	datac => \inst2|s_debounceCnt\(11),
	datad => \inst2|s_debounceCnt\(14),
	combout => \inst2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X113_Y58_N18
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_debounceCnt\(20) & ((GND) # (!\inst2|Add0~39\))) # (!\inst2|s_debounceCnt\(20) & (\inst2|Add0~39\ $ (GND)))
-- \inst2|Add0~41\ = CARRY((\inst2|s_debounceCnt\(20)) # (!\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X113_Y58_N20
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_debounceCnt\(21) & (\inst2|Add0~41\ & VCC)) # (!\inst2|s_debounceCnt\(21) & (!\inst2|Add0~41\))
-- \inst2|Add0~43\ = CARRY((!\inst2|s_debounceCnt\(21) & !\inst2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X113_Y58_N26
\inst2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[21]~11_combout\ = (\inst2|Add0~42_combout\ & (\inst2|s_debounceCnt[13]~3_combout\ & \inst2|s_debounceCnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~42_combout\,
	datac => \inst2|s_debounceCnt[13]~3_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X113_Y58_N27
\inst2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(21));

-- Location: LCCOMB_X112_Y59_N24
\inst2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~1_combout\ = (!\inst2|s_debounceCnt\(13) & (!\inst2|s_debounceCnt\(12) & (!\inst2|s_debounceCnt\(20) & !\inst2|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(12),
	datac => \inst2|s_debounceCnt\(20),
	datad => \inst2|s_debounceCnt\(21),
	combout => \inst2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X112_Y59_N4
\inst2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~2_combout\ = (!\inst2|s_debounceCnt\(10) & (!\inst2|s_debounceCnt\(8) & (!\inst2|s_debounceCnt\(7) & !\inst2|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(10),
	datab => \inst2|s_debounceCnt\(8),
	datac => \inst2|s_debounceCnt\(7),
	datad => \inst2|s_debounceCnt\(9),
	combout => \inst2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X112_Y59_N2
\inst2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~0_combout\ = (!\inst2|s_debounceCnt\(16) & (!\inst2|s_debounceCnt\(6) & (!\inst2|s_debounceCnt\(17) & !\inst2|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(16),
	datab => \inst2|s_debounceCnt\(6),
	datac => \inst2|s_debounceCnt\(17),
	datad => \inst2|s_debounceCnt\(15),
	combout => \inst2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y59_N12
\inst2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~4_combout\ = (\inst2|s_pulsedOut~3_combout\ & (\inst2|s_pulsedOut~1_combout\ & (\inst2|s_pulsedOut~2_combout\ & \inst2|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~3_combout\,
	datab => \inst2|s_pulsedOut~1_combout\,
	datac => \inst2|s_pulsedOut~2_combout\,
	datad => \inst2|s_pulsedOut~0_combout\,
	combout => \inst2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X112_Y59_N20
\inst2|s_debounceCnt[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[13]~2_combout\ = (\inst2|s_debounceCnt\(0)) # (((\inst2|s_debounceCnt\(5)) # (!\inst2|s_pulsedOut~4_combout\)) # (!\inst2|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datab => \inst2|s_pulsedOut~5_combout\,
	datac => \inst2|s_debounceCnt\(5),
	datad => \inst2|s_pulsedOut~4_combout\,
	combout => \inst2|s_debounceCnt[13]~2_combout\);

-- Location: LCCOMB_X112_Y59_N30
\inst2|s_debounceCnt[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[13]~3_combout\ = ((\inst2|s_debounceCnt\(22)) # ((\inst2|s_debounceCnt[13]~2_combout\) # (!\inst2|s_dirtyIn~q\))) # (!\inst2|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_dirtyIn~q\,
	datad => \inst2|s_debounceCnt[13]~2_combout\,
	combout => \inst2|s_debounceCnt[13]~3_combout\);

-- Location: LCCOMB_X113_Y58_N16
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|Add0~37\ & VCC)) # (!\inst2|s_debounceCnt\(19) & (!\inst2|Add0~37\))
-- \inst2|Add0~39\ = CARRY((!\inst2|s_debounceCnt\(19) & !\inst2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X111_Y59_N22
\inst2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~19_combout\ = (\inst2|s_debounceCnt[13]~3_combout\ & (\inst2|s_debounceCnt[13]~0_combout\ & ((\inst2|Add0~38_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[13]~3_combout\,
	datab => \inst2|s_debounceCnt[13]~0_combout\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X111_Y59_N23
\inst2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(19));

-- Location: LCCOMB_X113_Y58_N28
\inst2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[20]~10_combout\ = (\inst2|Add0~40_combout\ & (\inst2|s_debounceCnt[13]~3_combout\ & \inst2|s_debounceCnt[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~40_combout\,
	datac => \inst2|s_debounceCnt[13]~3_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X113_Y58_N29
\inst2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y59_N8
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_debounceCnt\(13)) # ((\inst2|s_debounceCnt\(12)) # ((\inst2|s_debounceCnt\(11) & \inst2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datab => \inst2|s_debounceCnt\(13),
	datac => \inst2|s_debounceCnt\(12),
	datad => \inst2|s_debounceCnt\(10),
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y59_N2
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|s_debounceCnt\(16)) # ((\inst2|s_debounceCnt\(15)) # ((\inst2|s_debounceCnt\(14) & \inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(14),
	datab => \inst2|s_debounceCnt\(16),
	datac => \inst2|LessThan0~4_combout\,
	datad => \inst2|s_debounceCnt\(15),
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y59_N4
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|s_debounceCnt\(18) & ((\inst2|s_debounceCnt\(17)) # (\inst2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datab => \inst2|s_debounceCnt\(18),
	datac => \inst2|s_debounceCnt\(17),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X111_Y59_N28
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|s_debounceCnt\(18) & (\inst2|s_debounceCnt\(8) & \inst2|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datab => \inst2|s_debounceCnt\(18),
	datac => \inst2|s_debounceCnt\(8),
	datad => \inst2|s_debounceCnt\(14),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y59_N14
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|s_debounceCnt\(11) & \inst2|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datac => \inst2|s_debounceCnt\(9),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y59_N12
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|s_debounceCnt\(6) & ((\inst2|s_debounceCnt\(5)) # ((\inst2|s_debounceCnt\(0)) # (!\inst2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(5),
	datab => \inst2|s_debounceCnt\(6),
	datac => \inst2|s_debounceCnt\(0),
	datad => \inst2|s_pulsedOut~5_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y59_N18
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|LessThan0~0_combout\ & (\inst2|LessThan0~1_combout\ & ((\inst2|s_debounceCnt\(7)) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y59_N6
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (\inst2|s_debounceCnt\(20)) # ((\inst2|s_debounceCnt\(21)) # ((\inst2|LessThan0~6_combout\) # (\inst2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(20),
	datab => \inst2|s_debounceCnt\(21),
	datac => \inst2|LessThan0~6_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X111_Y59_N20
\inst2|s_debounceCnt[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[13]~0_combout\ = (\inst2|s_dirtyIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_dirtyIn~q\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[13]~0_combout\);

-- Location: LCCOMB_X111_Y59_N26
\inst2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~25_combout\ = (\inst2|s_dirtyIn~q\ & ((\inst2|s_debounceCnt\(22) & ((!\inst2|LessThan0~7_combout\))) # (!\inst2|s_debounceCnt\(22) & (\inst2|s_debounceCnt[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_debounceCnt[13]~2_combout\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X113_Y58_N22
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|Add0~43\ $ (\inst2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_debounceCnt\(22),
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X112_Y59_N10
\inst2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~26_combout\ = (\inst2|s_previousIn~q\ & (((\inst2|s_debounceCnt[22]~25_combout\ & \inst2|Add0~44_combout\)))) # (!\inst2|s_previousIn~q\ & (\inst2|s_debounceCnt[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_debounceCnt[13]~0_combout\,
	datac => \inst2|s_debounceCnt[22]~25_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X112_Y59_N11
\inst2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y59_N10
\inst2|s_debounceCnt[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[13]~4_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[13]~4_combout\);

-- Location: LCCOMB_X113_Y59_N6
\inst2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~24_combout\ = (\inst2|Add0~0_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~24_combout\);

-- Location: FF_X113_Y59_N7
\inst2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~24_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(0));

-- Location: LCCOMB_X113_Y59_N12
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_debounceCnt\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst2|s_debounceCnt\(1) & (!\inst2|Add0~1\))
-- \inst2|Add0~3\ = CARRY((!\inst2|s_debounceCnt\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X113_Y59_N8
\inst2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~20_combout\ = (\inst2|Add0~2_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~20_combout\);

-- Location: FF_X113_Y59_N9
\inst2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~20_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(1));

-- Location: LCCOMB_X113_Y59_N2
\inst2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~21_combout\ = (\inst2|Add0~4_combout\ & \inst2|s_debounceCnt[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|s_debounceCnt[13]~4_combout\,
	combout => \inst2|s_debounceCnt~21_combout\);

-- Location: FF_X113_Y59_N3
\inst2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~21_combout\,
	ena => \inst2|s_debounceCnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(2));

-- Location: LCCOMB_X112_Y59_N28
\inst2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~5_combout\ = (!\inst2|s_debounceCnt\(2) & (!\inst2|s_debounceCnt\(4) & (!\inst2|s_debounceCnt\(1) & !\inst2|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(2),
	datab => \inst2|s_debounceCnt\(4),
	datac => \inst2|s_debounceCnt\(1),
	datad => \inst2|s_debounceCnt\(3),
	combout => \inst2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X110_Y59_N28
\inst2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~6_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & (\inst2|s_debounceCnt\(0) & !\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt\(0),
	datad => \inst2|s_debounceCnt\(22),
	combout => \inst2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y59_N24
\inst2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~7_combout\ = (\inst2|s_pulsedOut~5_combout\ & (\inst2|s_pulsedOut~6_combout\ & (\inst2|s_pulsedOut~4_combout\ & !\inst2|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~5_combout\,
	datab => \inst2|s_pulsedOut~6_combout\,
	datac => \inst2|s_pulsedOut~4_combout\,
	datad => \inst2|s_debounceCnt\(5),
	combout => \inst2|s_pulsedOut~7_combout\);

-- Location: FF_X110_Y59_N25
\inst2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_pulsedOut~q\);

-- Location: LCCOMB_X109_Y47_N10
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|s_debounceCnt\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

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

-- Location: LCCOMB_X106_Y47_N24
\inst5|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_dirtyIn~0_combout\ = !\SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst5|s_dirtyIn~0_combout\);

-- Location: FF_X106_Y47_N25
\inst5|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_dirtyIn~q\);

-- Location: FF_X108_Y47_N1
\inst5|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_previousIn~q\);

-- Location: LCCOMB_X109_Y47_N16
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|s_debounceCnt\(3) & (\inst5|Add0~5\ & VCC)) # (!\inst5|s_debounceCnt\(3) & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((!\inst5|s_debounceCnt\(3) & !\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X109_Y47_N18
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|s_debounceCnt\(4) & ((GND) # (!\inst5|Add0~7\))) # (!\inst5|s_debounceCnt\(4) & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((\inst5|s_debounceCnt\(4)) # (!\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X109_Y47_N0
\inst5|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~23_combout\ = (\inst5|Add0~8_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~8_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~23_combout\);

-- Location: FF_X109_Y47_N1
\inst5|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~23_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(4));

-- Location: LCCOMB_X109_Y47_N20
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|s_debounceCnt\(5) & (\inst5|Add0~9\ & VCC)) # (!\inst5|s_debounceCnt\(5) & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((!\inst5|s_debounceCnt\(5) & !\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X107_Y47_N4
\inst5|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~27_combout\ = (\inst5|Add0~10_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~10_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~27_combout\);

-- Location: FF_X107_Y47_N5
\inst5|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~27_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(5));

-- Location: LCCOMB_X109_Y46_N8
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|s_debounceCnt\(15) & (\inst5|Add0~29\ & VCC)) # (!\inst5|s_debounceCnt\(15) & (!\inst5|Add0~29\))
-- \inst5|Add0~31\ = CARRY((!\inst5|s_debounceCnt\(15) & !\inst5|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X109_Y46_N10
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|s_debounceCnt\(16) & ((GND) # (!\inst5|Add0~31\))) # (!\inst5|s_debounceCnt\(16) & (\inst5|Add0~31\ $ (GND)))
-- \inst5|Add0~33\ = CARRY((\inst5|s_debounceCnt\(16)) # (!\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: LCCOMB_X108_Y47_N8
\inst5|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~6_combout\ = (\inst5|Add0~32_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~32_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~6_combout\);

-- Location: FF_X108_Y47_N9
\inst5|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~6_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y46_N12
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|s_debounceCnt\(17) & (\inst5|Add0~33\ & VCC)) # (!\inst5|s_debounceCnt\(17) & (!\inst5|Add0~33\))
-- \inst5|Add0~35\ = CARRY((!\inst5|s_debounceCnt\(17) & !\inst5|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: LCCOMB_X108_Y47_N10
\inst5|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~7_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & \inst5|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_debounceCnt[11]~4_combout\,
	datad => \inst5|Add0~34_combout\,
	combout => \inst5|s_debounceCnt~7_combout\);

-- Location: FF_X108_Y47_N11
\inst5|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~7_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(17));

-- Location: LCCOMB_X109_Y46_N14
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|s_debounceCnt\(18) & ((GND) # (!\inst5|Add0~35\))) # (!\inst5|s_debounceCnt\(18) & (\inst5|Add0~35\ $ (GND)))
-- \inst5|Add0~37\ = CARRY((\inst5|s_debounceCnt\(18)) # (!\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: LCCOMB_X109_Y46_N26
\inst5|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[18]~18_combout\ = (\inst5|s_debounceCnt[11]~3_combout\ & (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~36_combout\) # (!\inst5|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|s_debounceCnt[11]~3_combout\,
	datac => \inst5|Add0~36_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt[18]~18_combout\);

-- Location: FF_X109_Y46_N27
\inst5|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y46_N16
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|s_debounceCnt\(19) & (\inst5|Add0~37\ & VCC)) # (!\inst5|s_debounceCnt\(19) & (!\inst5|Add0~37\))
-- \inst5|Add0~39\ = CARRY((!\inst5|s_debounceCnt\(19) & !\inst5|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X108_Y47_N14
\inst5|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[19]~19_combout\ = (\inst5|s_debounceCnt[11]~3_combout\ & (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~38_combout\) # (!\inst5|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|s_debounceCnt[11]~3_combout\,
	datac => \inst5|Add0~38_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt[19]~19_combout\);

-- Location: FF_X108_Y47_N15
\inst5|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(19));

-- Location: LCCOMB_X109_Y46_N18
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|s_debounceCnt\(20) & ((GND) # (!\inst5|Add0~39\))) # (!\inst5|s_debounceCnt\(20) & (\inst5|Add0~39\ $ (GND)))
-- \inst5|Add0~41\ = CARRY((\inst5|s_debounceCnt\(20)) # (!\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: LCCOMB_X110_Y47_N20
\inst5|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[20]~10_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & (\inst5|s_debounceCnt[11]~3_combout\ & \inst5|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[11]~4_combout\,
	datab => \inst5|s_debounceCnt[11]~3_combout\,
	datac => \inst5|Add0~40_combout\,
	combout => \inst5|s_debounceCnt[20]~10_combout\);

-- Location: FF_X110_Y47_N21
\inst5|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y47_N22
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|s_debounceCnt\(6) & ((GND) # (!\inst5|Add0~11\))) # (!\inst5|s_debounceCnt\(6) & (\inst5|Add0~11\ $ (GND)))
-- \inst5|Add0~13\ = CARRY((\inst5|s_debounceCnt\(6)) # (!\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X108_Y47_N4
\inst5|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~1_combout\ = (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~12_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|Add0~12_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt~1_combout\);

-- Location: FF_X108_Y47_N5
\inst5|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~1_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(6));

-- Location: LCCOMB_X109_Y47_N24
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|s_debounceCnt\(7) & (\inst5|Add0~13\ & VCC)) # (!\inst5|s_debounceCnt\(7) & (!\inst5|Add0~13\))
-- \inst5|Add0~15\ = CARRY((!\inst5|s_debounceCnt\(7) & !\inst5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X109_Y47_N8
\inst5|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~12_combout\ = (\inst5|Add0~14_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~12_combout\);

-- Location: FF_X109_Y47_N9
\inst5|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~12_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(7));

-- Location: LCCOMB_X109_Y47_N26
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|s_debounceCnt\(8) & ((GND) # (!\inst5|Add0~15\))) # (!\inst5|s_debounceCnt\(8) & (\inst5|Add0~15\ $ (GND)))
-- \inst5|Add0~17\ = CARRY((\inst5|s_debounceCnt\(8)) # (!\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X110_Y47_N16
\inst5|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~13_combout\ = (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~16_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~16_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y47_N17
\inst5|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~13_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(8));

-- Location: LCCOMB_X110_Y47_N8
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst5|s_debounceCnt\(8) & (\inst5|s_debounceCnt\(14) & (\inst5|s_debounceCnt\(18) & \inst5|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(8),
	datab => \inst5|s_debounceCnt\(14),
	datac => \inst5|s_debounceCnt\(18),
	datad => \inst5|s_debounceCnt\(19),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y47_N30
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|s_debounceCnt\(11) & \inst5|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_debounceCnt\(11),
	datad => \inst5|s_debounceCnt\(9),
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y47_N28
\inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst5|s_debounceCnt\(6) & ((\inst5|s_debounceCnt\(5)) # ((\inst5|s_debounceCnt\(0)) # (!\inst5|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(5),
	datab => \inst5|s_debounceCnt\(6),
	datac => \inst5|s_debounceCnt\(0),
	datad => \inst5|s_pulsedOut~5_combout\,
	combout => \inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y47_N14
\inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = (\inst5|LessThan0~0_combout\ & (\inst5|LessThan0~1_combout\ & ((\inst5|s_debounceCnt\(7)) # (\inst5|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(7),
	datab => \inst5|LessThan0~0_combout\,
	datac => \inst5|LessThan0~1_combout\,
	datad => \inst5|LessThan0~2_combout\,
	combout => \inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y47_N12
\inst5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = (\inst5|s_debounceCnt\(12)) # ((\inst5|s_debounceCnt\(13)) # ((\inst5|s_debounceCnt\(10) & \inst5|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(12),
	datab => \inst5|s_debounceCnt\(10),
	datac => \inst5|s_debounceCnt\(11),
	datad => \inst5|s_debounceCnt\(13),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y47_N18
\inst5|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = (\inst5|s_debounceCnt\(16)) # ((\inst5|s_debounceCnt\(15)) # ((\inst5|s_debounceCnt\(14) & \inst5|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(16),
	datab => \inst5|s_debounceCnt\(14),
	datac => \inst5|s_debounceCnt\(15),
	datad => \inst5|LessThan0~4_combout\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y47_N0
\inst5|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~6_combout\ = (\inst5|s_debounceCnt\(19) & (\inst5|s_debounceCnt\(18) & ((\inst5|s_debounceCnt\(17)) # (\inst5|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(19),
	datab => \inst5|s_debounceCnt\(17),
	datac => \inst5|s_debounceCnt\(18),
	datad => \inst5|LessThan0~5_combout\,
	combout => \inst5|LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y47_N6
\inst5|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~7_combout\ = (\inst5|s_debounceCnt\(21)) # ((\inst5|s_debounceCnt\(20)) # ((\inst5|LessThan0~3_combout\) # (\inst5|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(21),
	datab => \inst5|s_debounceCnt\(20),
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|LessThan0~6_combout\,
	combout => \inst5|LessThan0~7_combout\);

-- Location: LCCOMB_X110_Y47_N24
\inst5|s_debounceCnt[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[11]~0_combout\ = (\inst5|s_dirtyIn~q\ & ((!\inst5|LessThan0~7_combout\) # (!\inst5|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_dirtyIn~q\,
	datac => \inst5|s_debounceCnt\(22),
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[11]~0_combout\);

-- Location: LCCOMB_X109_Y47_N28
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|s_debounceCnt\(9) & (\inst5|Add0~17\ & VCC)) # (!\inst5|s_debounceCnt\(9) & (!\inst5|Add0~17\))
-- \inst5|Add0~19\ = CARRY((!\inst5|s_debounceCnt\(9) & !\inst5|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X110_Y47_N10
\inst5|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~14_combout\ = (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~18_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|s_debounceCnt[11]~0_combout\,
	datad => \inst5|Add0~18_combout\,
	combout => \inst5|s_debounceCnt~14_combout\);

-- Location: FF_X110_Y47_N11
\inst5|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~14_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y47_N30
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|s_debounceCnt\(10) & ((GND) # (!\inst5|Add0~19\))) # (!\inst5|s_debounceCnt\(10) & (\inst5|Add0~19\ $ (GND)))
-- \inst5|Add0~21\ = CARRY((\inst5|s_debounceCnt\(10)) # (!\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X110_Y47_N4
\inst5|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~15_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & \inst5|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_debounceCnt[11]~4_combout\,
	datad => \inst5|Add0~20_combout\,
	combout => \inst5|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y47_N5
\inst5|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~15_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y46_N0
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|s_debounceCnt\(11) & (\inst5|Add0~21\ & VCC)) # (!\inst5|s_debounceCnt\(11) & (!\inst5|Add0~21\))
-- \inst5|Add0~23\ = CARRY((!\inst5|s_debounceCnt\(11) & !\inst5|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X108_Y47_N2
\inst5|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~16_combout\ = (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~22_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|Add0~22_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt~16_combout\);

-- Location: FF_X108_Y47_N3
\inst5|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~16_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y46_N2
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|s_debounceCnt\(12) & ((GND) # (!\inst5|Add0~23\))) # (!\inst5|s_debounceCnt\(12) & (\inst5|Add0~23\ $ (GND)))
-- \inst5|Add0~25\ = CARRY((\inst5|s_debounceCnt\(12)) # (!\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X108_Y47_N22
\inst5|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~8_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & \inst5|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_debounceCnt[11]~4_combout\,
	datad => \inst5|Add0~24_combout\,
	combout => \inst5|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y47_N23
\inst5|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~8_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(12));

-- Location: LCCOMB_X109_Y46_N4
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|s_debounceCnt\(13) & (\inst5|Add0~25\ & VCC)) # (!\inst5|s_debounceCnt\(13) & (!\inst5|Add0~25\))
-- \inst5|Add0~27\ = CARRY((!\inst5|s_debounceCnt\(13) & !\inst5|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X109_Y46_N24
\inst5|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~9_combout\ = (\inst5|Add0~26_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~26_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~9_combout\);

-- Location: FF_X109_Y46_N25
\inst5|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~9_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(13));

-- Location: LCCOMB_X109_Y46_N6
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|s_debounceCnt\(14) & ((GND) # (!\inst5|Add0~27\))) # (!\inst5|s_debounceCnt\(14) & (\inst5|Add0~27\ $ (GND)))
-- \inst5|Add0~29\ = CARRY((\inst5|s_debounceCnt\(14)) # (!\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X108_Y47_N28
\inst5|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~17_combout\ = (\inst5|s_debounceCnt[11]~0_combout\ & ((\inst5|Add0~28_combout\) # (!\inst5|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datac => \inst5|Add0~28_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt~17_combout\);

-- Location: FF_X108_Y47_N29
\inst5|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~17_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y47_N26
\inst5|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~5_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & \inst5|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_debounceCnt[11]~4_combout\,
	datad => \inst5|Add0~30_combout\,
	combout => \inst5|s_debounceCnt~5_combout\);

-- Location: FF_X108_Y47_N27
\inst5|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~5_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y47_N12
\inst5|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~0_combout\ = (!\inst5|s_debounceCnt\(15) & (!\inst5|s_debounceCnt\(6) & (!\inst5|s_debounceCnt\(17) & !\inst5|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(15),
	datab => \inst5|s_debounceCnt\(6),
	datac => \inst5|s_debounceCnt\(17),
	datad => \inst5|s_debounceCnt\(16),
	combout => \inst5|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X108_Y47_N20
\inst5|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~1_combout\ = (!\inst5|s_debounceCnt\(21) & (!\inst5|s_debounceCnt\(12) & (!\inst5|s_debounceCnt\(20) & !\inst5|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(21),
	datab => \inst5|s_debounceCnt\(12),
	datac => \inst5|s_debounceCnt\(20),
	datad => \inst5|s_debounceCnt\(13),
	combout => \inst5|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X110_Y47_N2
\inst5|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~2_combout\ = (!\inst5|s_debounceCnt\(9) & (!\inst5|s_debounceCnt\(8) & (!\inst5|s_debounceCnt\(10) & !\inst5|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(9),
	datab => \inst5|s_debounceCnt\(8),
	datac => \inst5|s_debounceCnt\(10),
	datad => \inst5|s_debounceCnt\(7),
	combout => \inst5|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y47_N16
\inst5|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~3_combout\ = (!\inst5|s_debounceCnt\(11) & (!\inst5|s_debounceCnt\(14) & (!\inst5|s_debounceCnt\(18) & !\inst5|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(11),
	datab => \inst5|s_debounceCnt\(14),
	datac => \inst5|s_debounceCnt\(18),
	datad => \inst5|s_debounceCnt\(19),
	combout => \inst5|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X108_Y47_N18
\inst5|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~4_combout\ = (\inst5|s_pulsedOut~0_combout\ & (\inst5|s_pulsedOut~1_combout\ & (\inst5|s_pulsedOut~2_combout\ & \inst5|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~0_combout\,
	datab => \inst5|s_pulsedOut~1_combout\,
	datac => \inst5|s_pulsedOut~2_combout\,
	datad => \inst5|s_pulsedOut~3_combout\,
	combout => \inst5|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X108_Y47_N6
\inst5|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[11]~2_combout\ = (\inst5|s_debounceCnt\(0)) # ((\inst5|s_debounceCnt\(5)) # ((!\inst5|s_pulsedOut~4_combout\) # (!\inst5|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(0),
	datab => \inst5|s_debounceCnt\(5),
	datac => \inst5|s_pulsedOut~5_combout\,
	datad => \inst5|s_pulsedOut~4_combout\,
	combout => \inst5|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X108_Y47_N0
\inst5|s_debounceCnt[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[11]~3_combout\ = ((\inst5|s_debounceCnt\(22)) # ((\inst5|s_debounceCnt[11]~2_combout\) # (!\inst5|s_previousIn~q\))) # (!\inst5|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_dirtyIn~q\,
	datab => \inst5|s_debounceCnt\(22),
	datac => \inst5|s_previousIn~q\,
	datad => \inst5|s_debounceCnt[11]~2_combout\,
	combout => \inst5|s_debounceCnt[11]~3_combout\);

-- Location: LCCOMB_X109_Y46_N20
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|s_debounceCnt\(21) & (\inst5|Add0~41\ & VCC)) # (!\inst5|s_debounceCnt\(21) & (!\inst5|Add0~41\))
-- \inst5|Add0~43\ = CARRY((!\inst5|s_debounceCnt\(21) & !\inst5|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: LCCOMB_X110_Y47_N26
\inst5|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[21]~11_combout\ = (\inst5|s_debounceCnt[11]~4_combout\ & (\inst5|s_debounceCnt[11]~3_combout\ & \inst5|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt[11]~4_combout\,
	datac => \inst5|s_debounceCnt[11]~3_combout\,
	datad => \inst5|Add0~42_combout\,
	combout => \inst5|s_debounceCnt[21]~11_combout\);

-- Location: FF_X110_Y47_N27
\inst5|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y46_N22
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = \inst5|Add0~43\ $ (\inst5|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s_debounceCnt\(22),
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\);

-- Location: LCCOMB_X109_Y46_N30
\inst5|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~25_combout\ = (\inst5|s_dirtyIn~q\ & ((\inst5|s_debounceCnt\(22) & ((!\inst5|LessThan0~7_combout\))) # (!\inst5|s_debounceCnt\(22) & (\inst5|s_debounceCnt[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_dirtyIn~q\,
	datab => \inst5|s_debounceCnt\(22),
	datac => \inst5|s_debounceCnt[11]~2_combout\,
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X109_Y46_N28
\inst5|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[22]~26_combout\ = (\inst5|s_previousIn~q\ & (\inst5|Add0~44_combout\ & (\inst5|s_debounceCnt[22]~25_combout\))) # (!\inst5|s_previousIn~q\ & (((\inst5|s_debounceCnt[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~44_combout\,
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|s_debounceCnt[22]~25_combout\,
	datad => \inst5|s_debounceCnt[11]~0_combout\,
	combout => \inst5|s_debounceCnt[22]~26_combout\);

-- Location: FF_X109_Y46_N29
\inst5|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y47_N22
\inst5|s_debounceCnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt[11]~4_combout\ = (\inst5|s_previousIn~q\ & (\inst5|s_dirtyIn~q\ & ((!\inst5|LessThan0~7_combout\) # (!\inst5|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_previousIn~q\,
	datab => \inst5|s_dirtyIn~q\,
	datac => \inst5|s_debounceCnt\(22),
	datad => \inst5|LessThan0~7_combout\,
	combout => \inst5|s_debounceCnt[11]~4_combout\);

-- Location: LCCOMB_X109_Y47_N4
\inst5|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~24_combout\ = (\inst5|Add0~0_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~0_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~24_combout\);

-- Location: FF_X109_Y47_N5
\inst5|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~24_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y47_N12
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|s_debounceCnt\(1) & (\inst5|Add0~1\ & VCC)) # (!\inst5|s_debounceCnt\(1) & (!\inst5|Add0~1\))
-- \inst5|Add0~3\ = CARRY((!\inst5|s_debounceCnt\(1) & !\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X108_Y47_N24
\inst5|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~20_combout\ = (\inst5|Add0~2_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~2_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y47_N25
\inst5|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~20_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y47_N14
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|s_debounceCnt\(2) & ((GND) # (!\inst5|Add0~3\))) # (!\inst5|s_debounceCnt\(2) & (\inst5|Add0~3\ $ (GND)))
-- \inst5|Add0~5\ = CARRY((\inst5|s_debounceCnt\(2)) # (!\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X108_Y47_N30
\inst5|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~21_combout\ = (\inst5|Add0~4_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~4_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y47_N31
\inst5|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~21_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y47_N6
\inst5|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_debounceCnt~22_combout\ = (\inst5|Add0~6_combout\ & \inst5|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~6_combout\,
	datad => \inst5|s_debounceCnt[11]~4_combout\,
	combout => \inst5|s_debounceCnt~22_combout\);

-- Location: FF_X109_Y47_N7
\inst5|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_debounceCnt~22_combout\,
	ena => \inst5|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_debounceCnt\(3));

-- Location: LCCOMB_X109_Y47_N2
\inst5|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~5_combout\ = (!\inst5|s_debounceCnt\(3) & (!\inst5|s_debounceCnt\(4) & (!\inst5|s_debounceCnt\(1) & !\inst5|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_debounceCnt\(3),
	datab => \inst5|s_debounceCnt\(4),
	datac => \inst5|s_debounceCnt\(1),
	datad => \inst5|s_debounceCnt\(2),
	combout => \inst5|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X107_Y47_N18
\inst5|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~6_combout\ = (\inst5|s_dirtyIn~q\ & (\inst5|s_previousIn~q\ & (!\inst5|s_debounceCnt\(22) & \inst5|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_dirtyIn~q\,
	datab => \inst5|s_previousIn~q\,
	datac => \inst5|s_debounceCnt\(22),
	datad => \inst5|s_debounceCnt\(0),
	combout => \inst5|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X107_Y47_N24
\inst5|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_pulsedOut~7_combout\ = (\inst5|s_pulsedOut~5_combout\ & (\inst5|s_pulsedOut~4_combout\ & (!\inst5|s_debounceCnt\(5) & \inst5|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~5_combout\,
	datab => \inst5|s_pulsedOut~4_combout\,
	datac => \inst5|s_debounceCnt\(5),
	datad => \inst5|s_pulsedOut~6_combout\,
	combout => \inst5|s_pulsedOut~7_combout\);

-- Location: FF_X107_Y47_N25
\inst5|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_pulsedOut~q\);

-- Location: LCCOMB_X109_Y59_N30
\inst|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~18_combout\ = (\inst2|s_pulsedOut~q\ & (!\inst|s_currentState.E0~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|s_currentState.E0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~18_combout\);

-- Location: LCCOMB_X109_Y59_N16
\inst|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~13_combout\ = (\inst5|s_pulsedOut~q\) # ((\inst2|s_pulsedOut~q\) # (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \KEY[0]~input_o\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|s_currentState~13_combout\);

-- Location: FF_X109_Y59_N31
\inst|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~18_combout\,
	ena => \inst|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E1~q\);

-- Location: LCCOMB_X109_Y59_N24
\inst|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~12_combout\ = (\inst2|s_pulsedOut~q\ & (\inst|s_currentState.E1~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|s_currentState.E1~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~12_combout\);

-- Location: FF_X109_Y59_N25
\inst|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~12_combout\,
	ena => \inst|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E2~q\);

-- Location: LCCOMB_X109_Y59_N2
\inst|state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state\(1) = (\inst|s_currentState.E3~q\) # (\inst|s_currentState.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_currentState.E3~q\,
	datad => \inst|s_currentState.E2~q\,
	combout => \inst|state\(1));

-- Location: LCCOMB_X109_Y59_N12
\inst|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~8_combout\ = (!\inst2|s_pulsedOut~q\ & ((\inst5|s_pulsedOut~q\ & ((\inst|s_currentState.E1~q\))) # (!\inst5|s_pulsedOut~q\ & (\inst|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \inst|s_currentState.E4~q\,
	datac => \inst|s_currentState.E1~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|s_currentState~8_combout\);

-- Location: LCCOMB_X109_Y59_N4
\inst|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~9_combout\ = (\KEY[0]~input_o\ & ((\inst|s_currentState~8_combout\) # ((\inst|s_currentState.E3~q\ & \inst2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.E3~q\,
	datab => \inst2|s_pulsedOut~q\,
	datac => \KEY[0]~input_o\,
	datad => \inst|s_currentState~8_combout\,
	combout => \inst|s_currentState~9_combout\);

-- Location: FF_X109_Y59_N5
\inst|s_currentState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E4~q\);

-- Location: LCCOMB_X109_Y59_N10
\inst|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~10_combout\ = (\inst2|s_pulsedOut~q\ & (((\inst|s_currentState.E4~q\)))) # (!\inst2|s_pulsedOut~q\ & (\inst5|s_pulsedOut~q\ & ((\inst|state\(1)) # (\inst|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \inst|state\(1),
	datac => \inst|s_currentState.E4~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|s_currentState~10_combout\);

-- Location: LCCOMB_X109_Y59_N18
\inst|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~11_combout\ = (\KEY[0]~input_o\ & \inst|s_currentState~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \inst|s_currentState~10_combout\,
	combout => \inst|s_currentState~11_combout\);

-- Location: FF_X109_Y59_N19
\inst|s_currentState.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E5~q\);

-- Location: LCCOMB_X109_Y59_N20
\inst|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~16_combout\ = ((!\inst5|s_pulsedOut~q\ & (!\inst2|s_pulsedOut~q\ & !\inst|s_currentState.E0~q\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|s_currentState.E0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~16_combout\);

-- Location: LCCOMB_X109_Y59_N14
\inst|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~17_combout\ = (!\inst|s_currentState.E5~q\ & !\inst|s_currentState~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.E5~q\,
	datad => \inst|s_currentState~16_combout\,
	combout => \inst|s_currentState~17_combout\);

-- Location: FF_X109_Y59_N15
\inst|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E0~q\);

-- Location: LCCOMB_X109_Y59_N26
\inst|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~14_combout\ = (!\inst2|s_pulsedOut~q\ & ((\inst5|s_pulsedOut~q\ & (!\inst|s_currentState.E0~q\)) # (!\inst5|s_pulsedOut~q\ & ((\inst|s_currentState.E3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_pulsedOut~q\,
	datab => \inst|s_currentState.E0~q\,
	datac => \inst|s_currentState.E3~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|s_currentState~14_combout\);

-- Location: LCCOMB_X109_Y59_N22
\inst|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~15_combout\ = (\KEY[0]~input_o\ & ((\inst|s_currentState~14_combout\) # ((\inst2|s_pulsedOut~q\ & \inst|s_currentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|s_pulsedOut~q\,
	datac => \inst|s_currentState~14_combout\,
	datad => \inst|s_currentState.E2~q\,
	combout => \inst|s_currentState~15_combout\);

-- Location: FF_X109_Y59_N23
\inst|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.E3~q\);

-- Location: LCCOMB_X109_Y59_N28
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst|s_currentState.E3~q\) # ((\inst|s_currentState.E2~q\) # ((\inst|s_currentState.E4~q\) # (\inst|s_currentState.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.E3~q\,
	datab => \inst|s_currentState.E2~q\,
	datac => \inst|s_currentState.E4~q\,
	datad => \inst|s_currentState.E5~q\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y59_N0
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = ((\inst|s_currentState.E4~q\) # (\inst|s_currentState.E2~q\)) # (!\inst|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.E0~q\,
	datac => \inst|s_currentState.E4~q\,
	datad => \inst|s_currentState.E2~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X109_Y62_N0
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|s_currentState.E5~q\) # ((\inst|s_currentState.E4~q\) # ((!\inst|state\(1) & \inst|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state\(1),
	datab => \inst|s_currentState.E5~q\,
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|s_currentState.E4~q\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y59_N8
\inst4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = ((!\inst|state\(1) & ((\inst|s_currentState.E4~q\) # (\inst|s_currentState.E5~q\)))) # (!\inst|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~0_combout\,
	datab => \inst|state\(1),
	datac => \inst|s_currentState.E4~q\,
	datad => \inst|s_currentState.E5~q\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y62_N26
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|state\(1)) # (\inst|WideOr0~0_combout\ $ (((\inst|s_currentState.E5~q\) # (\inst|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state\(1),
	datab => \inst|s_currentState.E5~q\,
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|s_currentState.E4~q\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y62_N28
\inst4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|state\(1) & (!\inst|s_currentState.E5~q\ & (\inst|WideOr0~0_combout\ & !\inst|s_currentState.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state\(1),
	datab => \inst|s_currentState.E5~q\,
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|s_currentState.E4~q\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y62_N18
\inst4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst|s_currentState.E5~q\ & (\inst|state\(1) $ ((!\inst|WideOr0~0_combout\)))) # (!\inst|s_currentState.E5~q\ & (\inst|s_currentState.E4~q\ & (\inst|state\(1) $ (!\inst|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state\(1),
	datab => \inst|s_currentState.E5~q\,
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|s_currentState.E4~q\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y55_N0
\inst9|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[0]~32_combout\ = \inst9|s_count\(0) $ (VCC)
-- \inst9|s_count[0]~33\ = CARRY(\inst9|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(0),
	datad => VCC,
	combout => \inst9|s_count[0]~32_combout\,
	cout => \inst9|s_count[0]~33\);

-- Location: LCCOMB_X108_Y55_N6
\inst9|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~1_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(12) & (\inst9|s_count\(4) & \inst9|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(12),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(6),
	combout => \inst9|Equal1~1_combout\);

-- Location: LCCOMB_X108_Y55_N20
\inst9|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~0_combout\ = (\inst9|s_count\(1) & (\inst9|s_count\(2) & (\inst9|s_count\(0) & \inst9|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(0),
	datad => \inst9|s_count\(3),
	combout => \inst9|Equal1~0_combout\);

-- Location: LCCOMB_X108_Y55_N4
\inst9|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~2_combout\ = (\inst9|s_count\(13) & (\inst9|s_count\(14) & (\inst9|s_count\(15) & \inst9|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(13),
	datab => \inst9|s_count\(14),
	datac => \inst9|s_count\(15),
	datad => \inst9|s_count\(17),
	combout => \inst9|Equal1~2_combout\);

-- Location: LCCOMB_X108_Y54_N20
\inst9|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~3_combout\ = (\inst9|s_count\(20) & (\inst9|s_count\(19) & (\inst9|s_count\(21) & \inst9|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(20),
	datab => \inst9|s_count\(19),
	datac => \inst9|s_count\(21),
	datad => \inst9|s_count\(22),
	combout => \inst9|Equal1~3_combout\);

-- Location: LCCOMB_X108_Y55_N18
\inst9|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~4_combout\ = (\inst9|Equal1~1_combout\ & (\inst9|Equal1~0_combout\ & (\inst9|Equal1~2_combout\ & \inst9|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal1~1_combout\,
	datab => \inst9|Equal1~0_combout\,
	datac => \inst9|Equal1~2_combout\,
	datad => \inst9|Equal1~3_combout\,
	combout => \inst9|Equal1~4_combout\);

-- Location: LCCOMB_X108_Y55_N12
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (!\inst9|s_count\(18) & (!\inst9|s_count\(11) & (!\inst9|s_count\(24) & !\inst9|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(18),
	datab => \inst9|s_count\(11),
	datac => \inst9|s_count\(24),
	datad => \inst9|s_count\(16),
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X108_Y55_N2
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_count\(8) & (!\inst9|s_count\(9) & (!\inst9|s_count\(10) & !\inst9|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(8),
	datab => \inst9|s_count\(9),
	datac => \inst9|s_count\(10),
	datad => \inst9|s_count\(7),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y54_N18
\inst9|s_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[25]~83_combout\ = (\inst9|s_count\(25) & (!\inst9|s_count[24]~82\)) # (!\inst9|s_count\(25) & ((\inst9|s_count[24]~82\) # (GND)))
-- \inst9|s_count[25]~84\ = CARRY((!\inst9|s_count[24]~82\) # (!\inst9|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(25),
	datad => VCC,
	cin => \inst9|s_count[24]~82\,
	combout => \inst9|s_count[25]~83_combout\,
	cout => \inst9|s_count[25]~84\);

-- Location: LCCOMB_X107_Y54_N20
\inst9|s_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[26]~85_combout\ = (\inst9|s_count\(26) & (\inst9|s_count[25]~84\ $ (GND))) # (!\inst9|s_count\(26) & (!\inst9|s_count[25]~84\ & VCC))
-- \inst9|s_count[26]~86\ = CARRY((\inst9|s_count\(26) & !\inst9|s_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(26),
	datad => VCC,
	cin => \inst9|s_count[25]~84\,
	combout => \inst9|s_count[26]~85_combout\,
	cout => \inst9|s_count[26]~86\);

-- Location: FF_X107_Y54_N21
\inst9|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[26]~85_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(26));

-- Location: LCCOMB_X107_Y54_N22
\inst9|s_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[27]~87_combout\ = (\inst9|s_count\(27) & (!\inst9|s_count[26]~86\)) # (!\inst9|s_count\(27) & ((\inst9|s_count[26]~86\) # (GND)))
-- \inst9|s_count[27]~88\ = CARRY((!\inst9|s_count[26]~86\) # (!\inst9|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(27),
	datad => VCC,
	cin => \inst9|s_count[26]~86\,
	combout => \inst9|s_count[27]~87_combout\,
	cout => \inst9|s_count[27]~88\);

-- Location: FF_X107_Y54_N23
\inst9|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[27]~87_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(27));

-- Location: LCCOMB_X107_Y54_N24
\inst9|s_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[28]~89_combout\ = (\inst9|s_count\(28) & (\inst9|s_count[27]~88\ $ (GND))) # (!\inst9|s_count\(28) & (!\inst9|s_count[27]~88\ & VCC))
-- \inst9|s_count[28]~90\ = CARRY((\inst9|s_count\(28) & !\inst9|s_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(28),
	datad => VCC,
	cin => \inst9|s_count[27]~88\,
	combout => \inst9|s_count[28]~89_combout\,
	cout => \inst9|s_count[28]~90\);

-- Location: FF_X107_Y54_N25
\inst9|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[28]~89_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(28));

-- Location: LCCOMB_X107_Y54_N26
\inst9|s_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[29]~91_combout\ = (\inst9|s_count\(29) & (!\inst9|s_count[28]~90\)) # (!\inst9|s_count\(29) & ((\inst9|s_count[28]~90\) # (GND)))
-- \inst9|s_count[29]~92\ = CARRY((!\inst9|s_count[28]~90\) # (!\inst9|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(29),
	datad => VCC,
	cin => \inst9|s_count[28]~90\,
	combout => \inst9|s_count[29]~91_combout\,
	cout => \inst9|s_count[29]~92\);

-- Location: FF_X107_Y54_N27
\inst9|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[29]~91_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(29));

-- Location: LCCOMB_X107_Y54_N28
\inst9|s_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[30]~93_combout\ = (\inst9|s_count\(30) & (\inst9|s_count[29]~92\ $ (GND))) # (!\inst9|s_count\(30) & (!\inst9|s_count[29]~92\ & VCC))
-- \inst9|s_count[30]~94\ = CARRY((\inst9|s_count\(30) & !\inst9|s_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(30),
	datad => VCC,
	cin => \inst9|s_count[29]~92\,
	combout => \inst9|s_count[30]~93_combout\,
	cout => \inst9|s_count[30]~94\);

-- Location: FF_X107_Y54_N29
\inst9|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[30]~93_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(30));

-- Location: LCCOMB_X107_Y54_N30
\inst9|s_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[31]~95_combout\ = \inst9|s_count\(31) $ (\inst9|s_count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(31),
	cin => \inst9|s_count[30]~94\,
	combout => \inst9|s_count[31]~95_combout\);

-- Location: FF_X107_Y54_N31
\inst9|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[31]~95_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(31));

-- Location: LCCOMB_X108_Y55_N14
\inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (!\inst9|s_count\(30) & !\inst9|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_count\(30),
	datad => \inst9|s_count\(31),
	combout => \inst9|Equal0~3_combout\);

-- Location: LCCOMB_X108_Y54_N0
\inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (!\inst9|s_count\(29) & (!\inst9|s_count\(27) & (!\inst9|s_count\(28) & !\inst9|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(29),
	datab => \inst9|s_count\(27),
	datac => \inst9|s_count\(28),
	datad => \inst9|s_count\(26),
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y55_N28
\inst9|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~4_combout\ = (\inst9|Equal0~1_combout\ & (\inst9|Equal0~0_combout\ & (\inst9|Equal0~3_combout\ & \inst9|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~1_combout\,
	datab => \inst9|Equal0~0_combout\,
	datac => \inst9|Equal0~3_combout\,
	datad => \inst9|Equal0~2_combout\,
	combout => \inst9|Equal0~4_combout\);

-- Location: LCCOMB_X108_Y55_N0
\inst9|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal1~5_combout\ = (\inst9|s_count\(25) & (\inst9|Equal1~4_combout\ & (\inst9|s_count\(23) & \inst9|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(25),
	datab => \inst9|Equal1~4_combout\,
	datac => \inst9|s_count\(23),
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|Equal1~5_combout\);

-- Location: LCCOMB_X108_Y55_N30
\inst9|s_count~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~48_combout\ = (\inst9|Equal0~10_combout\ & (!\inst|s_currentState.E5~q\)) # (!\inst9|Equal0~10_combout\ & ((\inst9|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.E5~q\,
	datac => \inst9|Equal0~10_combout\,
	datad => \inst9|Equal1~5_combout\,
	combout => \inst9|s_count~48_combout\);

-- Location: FF_X107_Y55_N1
\inst9|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[0]~32_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(0));

-- Location: LCCOMB_X107_Y55_N2
\inst9|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[1]~34_combout\ = (\inst9|s_count\(1) & (!\inst9|s_count[0]~33\)) # (!\inst9|s_count\(1) & ((\inst9|s_count[0]~33\) # (GND)))
-- \inst9|s_count[1]~35\ = CARRY((!\inst9|s_count[0]~33\) # (!\inst9|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(1),
	datad => VCC,
	cin => \inst9|s_count[0]~33\,
	combout => \inst9|s_count[1]~34_combout\,
	cout => \inst9|s_count[1]~35\);

-- Location: FF_X107_Y55_N3
\inst9|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[1]~34_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(1));

-- Location: LCCOMB_X107_Y55_N4
\inst9|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[2]~36_combout\ = (\inst9|s_count\(2) & (\inst9|s_count[1]~35\ $ (GND))) # (!\inst9|s_count\(2) & (!\inst9|s_count[1]~35\ & VCC))
-- \inst9|s_count[2]~37\ = CARRY((\inst9|s_count\(2) & !\inst9|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datad => VCC,
	cin => \inst9|s_count[1]~35\,
	combout => \inst9|s_count[2]~36_combout\,
	cout => \inst9|s_count[2]~37\);

-- Location: FF_X107_Y55_N5
\inst9|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[2]~36_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(2));

-- Location: LCCOMB_X107_Y55_N6
\inst9|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[3]~38_combout\ = (\inst9|s_count\(3) & (!\inst9|s_count[2]~37\)) # (!\inst9|s_count\(3) & ((\inst9|s_count[2]~37\) # (GND)))
-- \inst9|s_count[3]~39\ = CARRY((!\inst9|s_count[2]~37\) # (!\inst9|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datad => VCC,
	cin => \inst9|s_count[2]~37\,
	combout => \inst9|s_count[3]~38_combout\,
	cout => \inst9|s_count[3]~39\);

-- Location: FF_X107_Y55_N7
\inst9|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[3]~38_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(3));

-- Location: LCCOMB_X107_Y55_N8
\inst9|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[4]~40_combout\ = (\inst9|s_count\(4) & (\inst9|s_count[3]~39\ $ (GND))) # (!\inst9|s_count\(4) & (!\inst9|s_count[3]~39\ & VCC))
-- \inst9|s_count[4]~41\ = CARRY((\inst9|s_count\(4) & !\inst9|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(4),
	datad => VCC,
	cin => \inst9|s_count[3]~39\,
	combout => \inst9|s_count[4]~40_combout\,
	cout => \inst9|s_count[4]~41\);

-- Location: FF_X107_Y55_N9
\inst9|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[4]~40_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(4));

-- Location: LCCOMB_X107_Y55_N10
\inst9|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[5]~42_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count[4]~41\)) # (!\inst9|s_count\(5) & ((\inst9|s_count[4]~41\) # (GND)))
-- \inst9|s_count[5]~43\ = CARRY((!\inst9|s_count[4]~41\) # (!\inst9|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datad => VCC,
	cin => \inst9|s_count[4]~41\,
	combout => \inst9|s_count[5]~42_combout\,
	cout => \inst9|s_count[5]~43\);

-- Location: FF_X107_Y55_N11
\inst9|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[5]~42_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(5));

-- Location: LCCOMB_X107_Y55_N12
\inst9|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[6]~44_combout\ = (\inst9|s_count\(6) & (\inst9|s_count[5]~43\ $ (GND))) # (!\inst9|s_count\(6) & (!\inst9|s_count[5]~43\ & VCC))
-- \inst9|s_count[6]~45\ = CARRY((\inst9|s_count\(6) & !\inst9|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datad => VCC,
	cin => \inst9|s_count[5]~43\,
	combout => \inst9|s_count[6]~44_combout\,
	cout => \inst9|s_count[6]~45\);

-- Location: FF_X107_Y55_N13
\inst9|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[6]~44_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(6));

-- Location: LCCOMB_X107_Y55_N14
\inst9|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[7]~46_combout\ = (\inst9|s_count\(7) & (!\inst9|s_count[6]~45\)) # (!\inst9|s_count\(7) & ((\inst9|s_count[6]~45\) # (GND)))
-- \inst9|s_count[7]~47\ = CARRY((!\inst9|s_count[6]~45\) # (!\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(7),
	datad => VCC,
	cin => \inst9|s_count[6]~45\,
	combout => \inst9|s_count[7]~46_combout\,
	cout => \inst9|s_count[7]~47\);

-- Location: FF_X107_Y55_N15
\inst9|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[7]~46_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(7));

-- Location: LCCOMB_X107_Y55_N16
\inst9|s_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[8]~49_combout\ = (\inst9|s_count\(8) & (\inst9|s_count[7]~47\ $ (GND))) # (!\inst9|s_count\(8) & (!\inst9|s_count[7]~47\ & VCC))
-- \inst9|s_count[8]~50\ = CARRY((\inst9|s_count\(8) & !\inst9|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(8),
	datad => VCC,
	cin => \inst9|s_count[7]~47\,
	combout => \inst9|s_count[8]~49_combout\,
	cout => \inst9|s_count[8]~50\);

-- Location: FF_X107_Y55_N17
\inst9|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[8]~49_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(8));

-- Location: LCCOMB_X107_Y55_N18
\inst9|s_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[9]~51_combout\ = (\inst9|s_count\(9) & (!\inst9|s_count[8]~50\)) # (!\inst9|s_count\(9) & ((\inst9|s_count[8]~50\) # (GND)))
-- \inst9|s_count[9]~52\ = CARRY((!\inst9|s_count[8]~50\) # (!\inst9|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(9),
	datad => VCC,
	cin => \inst9|s_count[8]~50\,
	combout => \inst9|s_count[9]~51_combout\,
	cout => \inst9|s_count[9]~52\);

-- Location: FF_X107_Y55_N19
\inst9|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[9]~51_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(9));

-- Location: LCCOMB_X107_Y55_N20
\inst9|s_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[10]~53_combout\ = (\inst9|s_count\(10) & (\inst9|s_count[9]~52\ $ (GND))) # (!\inst9|s_count\(10) & (!\inst9|s_count[9]~52\ & VCC))
-- \inst9|s_count[10]~54\ = CARRY((\inst9|s_count\(10) & !\inst9|s_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(10),
	datad => VCC,
	cin => \inst9|s_count[9]~52\,
	combout => \inst9|s_count[10]~53_combout\,
	cout => \inst9|s_count[10]~54\);

-- Location: FF_X107_Y55_N21
\inst9|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[10]~53_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(10));

-- Location: LCCOMB_X107_Y55_N22
\inst9|s_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[11]~55_combout\ = (\inst9|s_count\(11) & (!\inst9|s_count[10]~54\)) # (!\inst9|s_count\(11) & ((\inst9|s_count[10]~54\) # (GND)))
-- \inst9|s_count[11]~56\ = CARRY((!\inst9|s_count[10]~54\) # (!\inst9|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(11),
	datad => VCC,
	cin => \inst9|s_count[10]~54\,
	combout => \inst9|s_count[11]~55_combout\,
	cout => \inst9|s_count[11]~56\);

-- Location: FF_X107_Y55_N23
\inst9|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[11]~55_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(11));

-- Location: LCCOMB_X107_Y55_N24
\inst9|s_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[12]~57_combout\ = (\inst9|s_count\(12) & (\inst9|s_count[11]~56\ $ (GND))) # (!\inst9|s_count\(12) & (!\inst9|s_count[11]~56\ & VCC))
-- \inst9|s_count[12]~58\ = CARRY((\inst9|s_count\(12) & !\inst9|s_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(12),
	datad => VCC,
	cin => \inst9|s_count[11]~56\,
	combout => \inst9|s_count[12]~57_combout\,
	cout => \inst9|s_count[12]~58\);

-- Location: FF_X107_Y55_N25
\inst9|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[12]~57_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(12));

-- Location: LCCOMB_X107_Y55_N26
\inst9|s_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[13]~59_combout\ = (\inst9|s_count\(13) & (!\inst9|s_count[12]~58\)) # (!\inst9|s_count\(13) & ((\inst9|s_count[12]~58\) # (GND)))
-- \inst9|s_count[13]~60\ = CARRY((!\inst9|s_count[12]~58\) # (!\inst9|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(13),
	datad => VCC,
	cin => \inst9|s_count[12]~58\,
	combout => \inst9|s_count[13]~59_combout\,
	cout => \inst9|s_count[13]~60\);

-- Location: FF_X107_Y55_N27
\inst9|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[13]~59_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(13));

-- Location: LCCOMB_X107_Y55_N28
\inst9|s_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[14]~61_combout\ = (\inst9|s_count\(14) & (\inst9|s_count[13]~60\ $ (GND))) # (!\inst9|s_count\(14) & (!\inst9|s_count[13]~60\ & VCC))
-- \inst9|s_count[14]~62\ = CARRY((\inst9|s_count\(14) & !\inst9|s_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(14),
	datad => VCC,
	cin => \inst9|s_count[13]~60\,
	combout => \inst9|s_count[14]~61_combout\,
	cout => \inst9|s_count[14]~62\);

-- Location: FF_X107_Y55_N29
\inst9|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[14]~61_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(14));

-- Location: LCCOMB_X107_Y55_N30
\inst9|s_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[15]~63_combout\ = (\inst9|s_count\(15) & (!\inst9|s_count[14]~62\)) # (!\inst9|s_count\(15) & ((\inst9|s_count[14]~62\) # (GND)))
-- \inst9|s_count[15]~64\ = CARRY((!\inst9|s_count[14]~62\) # (!\inst9|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(15),
	datad => VCC,
	cin => \inst9|s_count[14]~62\,
	combout => \inst9|s_count[15]~63_combout\,
	cout => \inst9|s_count[15]~64\);

-- Location: FF_X107_Y55_N31
\inst9|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[15]~63_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(15));

-- Location: LCCOMB_X107_Y54_N0
\inst9|s_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[16]~65_combout\ = (\inst9|s_count\(16) & (\inst9|s_count[15]~64\ $ (GND))) # (!\inst9|s_count\(16) & (!\inst9|s_count[15]~64\ & VCC))
-- \inst9|s_count[16]~66\ = CARRY((\inst9|s_count\(16) & !\inst9|s_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(16),
	datad => VCC,
	cin => \inst9|s_count[15]~64\,
	combout => \inst9|s_count[16]~65_combout\,
	cout => \inst9|s_count[16]~66\);

-- Location: FF_X107_Y54_N1
\inst9|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[16]~65_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(16));

-- Location: LCCOMB_X107_Y54_N2
\inst9|s_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[17]~67_combout\ = (\inst9|s_count\(17) & (!\inst9|s_count[16]~66\)) # (!\inst9|s_count\(17) & ((\inst9|s_count[16]~66\) # (GND)))
-- \inst9|s_count[17]~68\ = CARRY((!\inst9|s_count[16]~66\) # (!\inst9|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(17),
	datad => VCC,
	cin => \inst9|s_count[16]~66\,
	combout => \inst9|s_count[17]~67_combout\,
	cout => \inst9|s_count[17]~68\);

-- Location: FF_X107_Y54_N3
\inst9|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[17]~67_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(17));

-- Location: LCCOMB_X107_Y54_N4
\inst9|s_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[18]~69_combout\ = (\inst9|s_count\(18) & (\inst9|s_count[17]~68\ $ (GND))) # (!\inst9|s_count\(18) & (!\inst9|s_count[17]~68\ & VCC))
-- \inst9|s_count[18]~70\ = CARRY((\inst9|s_count\(18) & !\inst9|s_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(18),
	datad => VCC,
	cin => \inst9|s_count[17]~68\,
	combout => \inst9|s_count[18]~69_combout\,
	cout => \inst9|s_count[18]~70\);

-- Location: FF_X107_Y54_N5
\inst9|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[18]~69_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(18));

-- Location: LCCOMB_X107_Y54_N6
\inst9|s_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[19]~71_combout\ = (\inst9|s_count\(19) & (!\inst9|s_count[18]~70\)) # (!\inst9|s_count\(19) & ((\inst9|s_count[18]~70\) # (GND)))
-- \inst9|s_count[19]~72\ = CARRY((!\inst9|s_count[18]~70\) # (!\inst9|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(19),
	datad => VCC,
	cin => \inst9|s_count[18]~70\,
	combout => \inst9|s_count[19]~71_combout\,
	cout => \inst9|s_count[19]~72\);

-- Location: FF_X107_Y54_N7
\inst9|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[19]~71_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(19));

-- Location: LCCOMB_X107_Y54_N8
\inst9|s_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[20]~73_combout\ = (\inst9|s_count\(20) & (\inst9|s_count[19]~72\ $ (GND))) # (!\inst9|s_count\(20) & (!\inst9|s_count[19]~72\ & VCC))
-- \inst9|s_count[20]~74\ = CARRY((\inst9|s_count\(20) & !\inst9|s_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(20),
	datad => VCC,
	cin => \inst9|s_count[19]~72\,
	combout => \inst9|s_count[20]~73_combout\,
	cout => \inst9|s_count[20]~74\);

-- Location: FF_X107_Y54_N9
\inst9|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[20]~73_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(20));

-- Location: LCCOMB_X107_Y54_N10
\inst9|s_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[21]~75_combout\ = (\inst9|s_count\(21) & (!\inst9|s_count[20]~74\)) # (!\inst9|s_count\(21) & ((\inst9|s_count[20]~74\) # (GND)))
-- \inst9|s_count[21]~76\ = CARRY((!\inst9|s_count[20]~74\) # (!\inst9|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(21),
	datad => VCC,
	cin => \inst9|s_count[20]~74\,
	combout => \inst9|s_count[21]~75_combout\,
	cout => \inst9|s_count[21]~76\);

-- Location: FF_X107_Y54_N11
\inst9|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[21]~75_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(21));

-- Location: LCCOMB_X107_Y54_N12
\inst9|s_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[22]~77_combout\ = (\inst9|s_count\(22) & (\inst9|s_count[21]~76\ $ (GND))) # (!\inst9|s_count\(22) & (!\inst9|s_count[21]~76\ & VCC))
-- \inst9|s_count[22]~78\ = CARRY((\inst9|s_count\(22) & !\inst9|s_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(22),
	datad => VCC,
	cin => \inst9|s_count[21]~76\,
	combout => \inst9|s_count[22]~77_combout\,
	cout => \inst9|s_count[22]~78\);

-- Location: FF_X107_Y54_N13
\inst9|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[22]~77_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(22));

-- Location: LCCOMB_X107_Y54_N14
\inst9|s_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[23]~79_combout\ = (\inst9|s_count\(23) & (!\inst9|s_count[22]~78\)) # (!\inst9|s_count\(23) & ((\inst9|s_count[22]~78\) # (GND)))
-- \inst9|s_count[23]~80\ = CARRY((!\inst9|s_count[22]~78\) # (!\inst9|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(23),
	datad => VCC,
	cin => \inst9|s_count[22]~78\,
	combout => \inst9|s_count[23]~79_combout\,
	cout => \inst9|s_count[23]~80\);

-- Location: FF_X107_Y54_N15
\inst9|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[23]~79_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(23));

-- Location: LCCOMB_X107_Y54_N16
\inst9|s_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[24]~81_combout\ = (\inst9|s_count\(24) & (\inst9|s_count[23]~80\ $ (GND))) # (!\inst9|s_count\(24) & (!\inst9|s_count[23]~80\ & VCC))
-- \inst9|s_count[24]~82\ = CARRY((\inst9|s_count\(24) & !\inst9|s_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(24),
	datad => VCC,
	cin => \inst9|s_count[23]~80\,
	combout => \inst9|s_count[24]~81_combout\,
	cout => \inst9|s_count[24]~82\);

-- Location: FF_X107_Y54_N17
\inst9|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[24]~81_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(24));

-- Location: FF_X107_Y54_N19
\inst9|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[25]~83_combout\,
	sclr => \inst9|s_count~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(25));

-- Location: LCCOMB_X108_Y55_N10
\inst9|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~5_combout\ = (!\inst9|s_count\(1) & (!\inst9|s_count\(2) & (!\inst9|s_count\(0) & !\inst9|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(0),
	datad => \inst9|s_count\(3),
	combout => \inst9|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y55_N24
\inst9|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~6_combout\ = (!\inst9|s_count\(5) & (!\inst9|s_count\(12) & (!\inst9|s_count\(4) & !\inst9|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(12),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(6),
	combout => \inst9|Equal0~6_combout\);

-- Location: LCCOMB_X108_Y55_N26
\inst9|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~7_combout\ = (!\inst9|s_count\(13) & (!\inst9|s_count\(14) & (!\inst9|s_count\(15) & !\inst9|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(13),
	datab => \inst9|s_count\(14),
	datac => \inst9|s_count\(15),
	datad => \inst9|s_count\(17),
	combout => \inst9|Equal0~7_combout\);

-- Location: LCCOMB_X108_Y54_N14
\inst9|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~8_combout\ = (!\inst9|s_count\(20) & (!\inst9|s_count\(19) & (!\inst9|s_count\(21) & !\inst9|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(20),
	datab => \inst9|s_count\(19),
	datac => \inst9|s_count\(21),
	datad => \inst9|s_count\(22),
	combout => \inst9|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y55_N8
\inst9|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~9_combout\ = (\inst9|Equal0~5_combout\ & (\inst9|Equal0~6_combout\ & (\inst9|Equal0~7_combout\ & \inst9|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~5_combout\,
	datab => \inst9|Equal0~6_combout\,
	datac => \inst9|Equal0~7_combout\,
	datad => \inst9|Equal0~8_combout\,
	combout => \inst9|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y55_N22
\inst9|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~10_combout\ = (!\inst9|s_count\(25) & (!\inst9|s_count\(23) & (\inst9|Equal0~9_combout\ & \inst9|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(25),
	datab => \inst9|s_count\(23),
	datac => \inst9|Equal0~9_combout\,
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|Equal0~10_combout\);

-- Location: LCCOMB_X108_Y55_N16
\inst9|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timerOut~0_combout\ = (\inst9|Equal0~10_combout\ & ((\inst|s_currentState.E5~q\))) # (!\inst9|Equal0~10_combout\ & (!\inst9|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~10_combout\,
	datab => \inst9|Equal1~5_combout\,
	datac => \inst|s_currentState.E5~q\,
	combout => \inst9|timerOut~0_combout\);

-- Location: FF_X108_Y55_N17
\inst9|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|timerOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timerOut~q\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


