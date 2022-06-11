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

-- DATE "06/07/2022 11:18:13"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(12 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END RAM_1P_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce|s_pulsedOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debounce|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce|s_previousIn~q\ : std_logic;
SIGNAL \debounce|Add0~0_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce|Add0~1\ : std_logic;
SIGNAL \debounce|Add0~2_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounce|Add0~3\ : std_logic;
SIGNAL \debounce|Add0~4_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce|Add0~5\ : std_logic;
SIGNAL \debounce|Add0~6_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce|Add0~7\ : std_logic;
SIGNAL \debounce|Add0~8_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce|Add0~9\ : std_logic;
SIGNAL \debounce|Add0~11\ : std_logic;
SIGNAL \debounce|Add0~12_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce|Add0~13\ : std_logic;
SIGNAL \debounce|Add0~14_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debounce|Add0~15\ : std_logic;
SIGNAL \debounce|Add0~16_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce|Add0~17\ : std_logic;
SIGNAL \debounce|Add0~18_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce|Add0~19\ : std_logic;
SIGNAL \debounce|Add0~20_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce|Add0~21\ : std_logic;
SIGNAL \debounce|Add0~22_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce|Add0~23\ : std_logic;
SIGNAL \debounce|Add0~24_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce|Add0~25\ : std_logic;
SIGNAL \debounce|Add0~26_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce|Add0~27\ : std_logic;
SIGNAL \debounce|Add0~28_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce|Add0~29\ : std_logic;
SIGNAL \debounce|Add0~30_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debounce|Add0~31\ : std_logic;
SIGNAL \debounce|Add0~32_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce|Add0~33\ : std_logic;
SIGNAL \debounce|Add0~34_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce|Add0~35\ : std_logic;
SIGNAL \debounce|Add0~36_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce|Add0~41\ : std_logic;
SIGNAL \debounce|Add0~42_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \debounce|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounce|Add0~43\ : std_logic;
SIGNAL \debounce|Add0~44_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[11]~3_combout\ : std_logic;
SIGNAL \debounce|Add0~37\ : std_logic;
SIGNAL \debounce|Add0~38_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounce|Add0~39\ : std_logic;
SIGNAL \debounce|Add0~40_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounce|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt[11]~0_combout\ : std_logic;
SIGNAL \debounce|Add0~10_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \debounce|s_pulsedOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ram|s_memory~125feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ram|s_memory~247_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \ram|s_memory~248_combout\ : std_logic;
SIGNAL \ram|s_memory~125_q\ : std_logic;
SIGNAL \ram|s_memory~249_combout\ : std_logic;
SIGNAL \ram|s_memory~250_combout\ : std_logic;
SIGNAL \ram|s_memory~109_q\ : std_logic;
SIGNAL \ram|s_memory~148_combout\ : std_logic;
SIGNAL \ram|s_memory~251_combout\ : std_logic;
SIGNAL \ram|s_memory~252_combout\ : std_logic;
SIGNAL \ram|s_memory~133_q\ : std_logic;
SIGNAL \ram|s_memory~245_combout\ : std_logic;
SIGNAL \ram|s_memory~246_combout\ : std_logic;
SIGNAL \ram|s_memory~117_q\ : std_logic;
SIGNAL \ram|s_memory~149_combout\ : std_logic;
SIGNAL \ram|s_memory~225_combout\ : std_logic;
SIGNAL \ram|s_memory~226_combout\ : std_logic;
SIGNAL \ram|s_memory~77_q\ : std_logic;
SIGNAL \ram|s_memory~223_combout\ : std_logic;
SIGNAL \ram|s_memory~224_combout\ : std_logic;
SIGNAL \ram|s_memory~85_q\ : std_logic;
SIGNAL \ram|s_memory~141_combout\ : std_logic;
SIGNAL \ram|s_memory~227_combout\ : std_logic;
SIGNAL \ram|s_memory~228_combout\ : std_logic;
SIGNAL \ram|s_memory~101_q\ : std_logic;
SIGNAL \ram|s_memory~221_combout\ : std_logic;
SIGNAL \ram|s_memory~222_combout\ : std_logic;
SIGNAL \ram|s_memory~93_q\ : std_logic;
SIGNAL \ram|s_memory~142_combout\ : std_logic;
SIGNAL \ram|s_memory~21feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~239_combout\ : std_logic;
SIGNAL \ram|s_memory~240_combout\ : std_logic;
SIGNAL \ram|s_memory~21_q\ : std_logic;
SIGNAL \ram|s_memory~241_combout\ : std_logic;
SIGNAL \ram|s_memory~242_combout\ : std_logic;
SIGNAL \ram|s_memory~13_q\ : std_logic;
SIGNAL \ram|s_memory~145_combout\ : std_logic;
SIGNAL \ram|s_memory~243_combout\ : std_logic;
SIGNAL \ram|s_memory~244_combout\ : std_logic;
SIGNAL \ram|s_memory~37_q\ : std_logic;
SIGNAL \ram|s_memory~237_combout\ : std_logic;
SIGNAL \ram|s_memory~238_combout\ : std_logic;
SIGNAL \ram|s_memory~29_q\ : std_logic;
SIGNAL \ram|s_memory~146_combout\ : std_logic;
SIGNAL \ram|s_memory~53feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~229_combout\ : std_logic;
SIGNAL \ram|s_memory~230_combout\ : std_logic;
SIGNAL \ram|s_memory~53_q\ : std_logic;
SIGNAL \ram|s_memory~235_combout\ : std_logic;
SIGNAL \ram|s_memory~236_combout\ : std_logic;
SIGNAL \ram|s_memory~69_q\ : std_logic;
SIGNAL \ram|s_memory~61feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~231_combout\ : std_logic;
SIGNAL \ram|s_memory~232_combout\ : std_logic;
SIGNAL \ram|s_memory~61_q\ : std_logic;
SIGNAL \ram|s_memory~233_combout\ : std_logic;
SIGNAL \ram|s_memory~234_combout\ : std_logic;
SIGNAL \ram|s_memory~45_q\ : std_logic;
SIGNAL \ram|s_memory~143_combout\ : std_logic;
SIGNAL \ram|s_memory~144_combout\ : std_logic;
SIGNAL \ram|s_memory~147_combout\ : std_logic;
SIGNAL \ram|s_memory~150_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ram|s_memory~54feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~54_q\ : std_logic;
SIGNAL \ram|s_memory~22_q\ : std_logic;
SIGNAL \ram|s_memory~153_combout\ : std_logic;
SIGNAL \ram|s_memory~86_q\ : std_logic;
SIGNAL \ram|s_memory~118_q\ : std_logic;
SIGNAL \ram|s_memory~154_combout\ : std_logic;
SIGNAL \ram|s_memory~46feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~46_q\ : std_logic;
SIGNAL \ram|s_memory~78_q\ : std_logic;
SIGNAL \ram|s_memory~14_q\ : std_logic;
SIGNAL \ram|s_memory~155_combout\ : std_logic;
SIGNAL \ram|s_memory~110_q\ : std_logic;
SIGNAL \ram|s_memory~156_combout\ : std_logic;
SIGNAL \ram|s_memory~157_combout\ : std_logic;
SIGNAL \ram|s_memory~102_q\ : std_logic;
SIGNAL \ram|s_memory~70feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~70_q\ : std_logic;
SIGNAL \ram|s_memory~38_q\ : std_logic;
SIGNAL \ram|s_memory~158_combout\ : std_logic;
SIGNAL \ram|s_memory~134_q\ : std_logic;
SIGNAL \ram|s_memory~159_combout\ : std_logic;
SIGNAL \ram|s_memory~94_q\ : std_logic;
SIGNAL \ram|s_memory~30_q\ : std_logic;
SIGNAL \ram|s_memory~151_combout\ : std_logic;
SIGNAL \ram|s_memory~62_q\ : std_logic;
SIGNAL \ram|s_memory~126_q\ : std_logic;
SIGNAL \ram|s_memory~152_combout\ : std_logic;
SIGNAL \ram|s_memory~160_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ram|s_memory~23feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~23_q\ : std_logic;
SIGNAL \ram|s_memory~39_q\ : std_logic;
SIGNAL \ram|s_memory~31_q\ : std_logic;
SIGNAL \ram|s_memory~15_q\ : std_logic;
SIGNAL \ram|s_memory~165_combout\ : std_logic;
SIGNAL \ram|s_memory~166_combout\ : std_logic;
SIGNAL \ram|s_memory~87_q\ : std_logic;
SIGNAL \ram|s_memory~95feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~95_q\ : std_logic;
SIGNAL \ram|s_memory~79_q\ : std_logic;
SIGNAL \ram|s_memory~163_combout\ : std_logic;
SIGNAL \ram|s_memory~103_q\ : std_logic;
SIGNAL \ram|s_memory~164_combout\ : std_logic;
SIGNAL \ram|s_memory~167_combout\ : std_logic;
SIGNAL \ram|s_memory~63_q\ : std_logic;
SIGNAL \ram|s_memory~55_q\ : std_logic;
SIGNAL \ram|s_memory~47_q\ : std_logic;
SIGNAL \ram|s_memory~161_combout\ : std_logic;
SIGNAL \ram|s_memory~71_q\ : std_logic;
SIGNAL \ram|s_memory~162_combout\ : std_logic;
SIGNAL \ram|s_memory~119_q\ : std_logic;
SIGNAL \ram|s_memory~111_q\ : std_logic;
SIGNAL \ram|s_memory~168_combout\ : std_logic;
SIGNAL \ram|s_memory~135_q\ : std_logic;
SIGNAL \ram|s_memory~127feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~127_q\ : std_logic;
SIGNAL \ram|s_memory~169_combout\ : std_logic;
SIGNAL \ram|s_memory~170_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ram|s_memory~56_q\ : std_logic;
SIGNAL \ram|s_memory~120_q\ : std_logic;
SIGNAL \ram|s_memory~88_q\ : std_logic;
SIGNAL \ram|s_memory~24_q\ : std_logic;
SIGNAL \ram|s_memory~171_combout\ : std_logic;
SIGNAL \ram|s_memory~172_combout\ : std_logic;
SIGNAL \ram|s_memory~104feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~104_q\ : std_logic;
SIGNAL \ram|s_memory~40_q\ : std_logic;
SIGNAL \ram|s_memory~178_combout\ : std_logic;
SIGNAL \ram|s_memory~136_q\ : std_logic;
SIGNAL \ram|s_memory~72_q\ : std_logic;
SIGNAL \ram|s_memory~179_combout\ : std_logic;
SIGNAL \ram|s_memory~80_q\ : std_logic;
SIGNAL \ram|s_memory~48feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~48_q\ : std_logic;
SIGNAL \ram|s_memory~16_q\ : std_logic;
SIGNAL \ram|s_memory~175_combout\ : std_logic;
SIGNAL \ram|s_memory~112_q\ : std_logic;
SIGNAL \ram|s_memory~176_combout\ : std_logic;
SIGNAL \ram|s_memory~96_q\ : std_logic;
SIGNAL \ram|s_memory~128_q\ : std_logic;
SIGNAL \ram|s_memory~64feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~64_q\ : std_logic;
SIGNAL \ram|s_memory~32_q\ : std_logic;
SIGNAL \ram|s_memory~173_combout\ : std_logic;
SIGNAL \ram|s_memory~174_combout\ : std_logic;
SIGNAL \ram|s_memory~177_combout\ : std_logic;
SIGNAL \ram|s_memory~180_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ram|s_memory~33_q\ : std_logic;
SIGNAL \ram|s_memory~41_q\ : std_logic;
SIGNAL \ram|s_memory~25feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~25_q\ : std_logic;
SIGNAL \ram|s_memory~17_q\ : std_logic;
SIGNAL \ram|s_memory~185_combout\ : std_logic;
SIGNAL \ram|s_memory~186_combout\ : std_logic;
SIGNAL \ram|s_memory~65_q\ : std_logic;
SIGNAL \ram|s_memory~49_q\ : std_logic;
SIGNAL \ram|s_memory~183_combout\ : std_logic;
SIGNAL \ram|s_memory~73_q\ : std_logic;
SIGNAL \ram|s_memory~57_q\ : std_logic;
SIGNAL \ram|s_memory~184_combout\ : std_logic;
SIGNAL \ram|s_memory~187_combout\ : std_logic;
SIGNAL \ram|s_memory~89_q\ : std_logic;
SIGNAL \ram|s_memory~81_q\ : std_logic;
SIGNAL \ram|s_memory~181_combout\ : std_logic;
SIGNAL \ram|s_memory~97feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~97_q\ : std_logic;
SIGNAL \ram|s_memory~105_q\ : std_logic;
SIGNAL \ram|s_memory~182_combout\ : std_logic;
SIGNAL \ram|s_memory~129_q\ : std_logic;
SIGNAL \ram|s_memory~113_q\ : std_logic;
SIGNAL \ram|s_memory~188_combout\ : std_logic;
SIGNAL \ram|s_memory~137_q\ : std_logic;
SIGNAL \ram|s_memory~121feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~121_q\ : std_logic;
SIGNAL \ram|s_memory~189_combout\ : std_logic;
SIGNAL \ram|s_memory~190_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ram|s_memory~66_q\ : std_logic;
SIGNAL \ram|s_memory~98_q\ : std_logic;
SIGNAL \ram|s_memory~34_q\ : std_logic;
SIGNAL \ram|s_memory~191_combout\ : std_logic;
SIGNAL \ram|s_memory~130_q\ : std_logic;
SIGNAL \ram|s_memory~192_combout\ : std_logic;
SIGNAL \ram|s_memory~106feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~106_q\ : std_logic;
SIGNAL \ram|s_memory~74feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~74_q\ : std_logic;
SIGNAL \ram|s_memory~42_q\ : std_logic;
SIGNAL \ram|s_memory~198_combout\ : std_logic;
SIGNAL \ram|s_memory~138_q\ : std_logic;
SIGNAL \ram|s_memory~199_combout\ : std_logic;
SIGNAL \ram|s_memory~90feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~90_q\ : std_logic;
SIGNAL \ram|s_memory~58feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~58_q\ : std_logic;
SIGNAL \ram|s_memory~26_q\ : std_logic;
SIGNAL \ram|s_memory~193_combout\ : std_logic;
SIGNAL \ram|s_memory~122_q\ : std_logic;
SIGNAL \ram|s_memory~194_combout\ : std_logic;
SIGNAL \ram|s_memory~50feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~50_q\ : std_logic;
SIGNAL \ram|s_memory~82_q\ : std_logic;
SIGNAL \ram|s_memory~18_q\ : std_logic;
SIGNAL \ram|s_memory~195_combout\ : std_logic;
SIGNAL \ram|s_memory~114_q\ : std_logic;
SIGNAL \ram|s_memory~196_combout\ : std_logic;
SIGNAL \ram|s_memory~197_combout\ : std_logic;
SIGNAL \ram|s_memory~200_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \ram|s_memory~67feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~67_q\ : std_logic;
SIGNAL \ram|s_memory~59_q\ : std_logic;
SIGNAL \ram|s_memory~51_q\ : std_logic;
SIGNAL \ram|s_memory~201_combout\ : std_logic;
SIGNAL \ram|s_memory~75_q\ : std_logic;
SIGNAL \ram|s_memory~202_combout\ : std_logic;
SIGNAL \ram|s_memory~131_q\ : std_logic;
SIGNAL \ram|s_memory~139_q\ : std_logic;
SIGNAL \ram|s_memory~123_q\ : std_logic;
SIGNAL \ram|s_memory~115_q\ : std_logic;
SIGNAL \ram|s_memory~208_combout\ : std_logic;
SIGNAL \ram|s_memory~209_combout\ : std_logic;
SIGNAL \ram|s_memory~91_q\ : std_logic;
SIGNAL \ram|s_memory~107_q\ : std_logic;
SIGNAL \ram|s_memory~99_q\ : std_logic;
SIGNAL \ram|s_memory~83_q\ : std_logic;
SIGNAL \ram|s_memory~203_combout\ : std_logic;
SIGNAL \ram|s_memory~204_combout\ : std_logic;
SIGNAL \ram|s_memory~27_q\ : std_logic;
SIGNAL \ram|s_memory~35_q\ : std_logic;
SIGNAL \ram|s_memory~19_q\ : std_logic;
SIGNAL \ram|s_memory~205_combout\ : std_logic;
SIGNAL \ram|s_memory~43_q\ : std_logic;
SIGNAL \ram|s_memory~206_combout\ : std_logic;
SIGNAL \ram|s_memory~207_combout\ : std_logic;
SIGNAL \ram|s_memory~210_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \ram|s_memory~76_q\ : std_logic;
SIGNAL \ram|s_memory~140_q\ : std_logic;
SIGNAL \ram|s_memory~44_q\ : std_logic;
SIGNAL \ram|s_memory~108_q\ : std_logic;
SIGNAL \ram|s_memory~218_combout\ : std_logic;
SIGNAL \ram|s_memory~219_combout\ : std_logic;
SIGNAL \ram|s_memory~60_q\ : std_logic;
SIGNAL \ram|s_memory~92feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~92_q\ : std_logic;
SIGNAL \ram|s_memory~28_q\ : std_logic;
SIGNAL \ram|s_memory~211_combout\ : std_logic;
SIGNAL \ram|s_memory~124_q\ : std_logic;
SIGNAL \ram|s_memory~212_combout\ : std_logic;
SIGNAL \ram|s_memory~52_q\ : std_logic;
SIGNAL \ram|s_memory~20_q\ : std_logic;
SIGNAL \ram|s_memory~215_combout\ : std_logic;
SIGNAL \ram|s_memory~84feeder_combout\ : std_logic;
SIGNAL \ram|s_memory~84_q\ : std_logic;
SIGNAL \ram|s_memory~116_q\ : std_logic;
SIGNAL \ram|s_memory~216_combout\ : std_logic;
SIGNAL \ram|s_memory~68_q\ : std_logic;
SIGNAL \ram|s_memory~36_q\ : std_logic;
SIGNAL \ram|s_memory~213_combout\ : std_logic;
SIGNAL \ram|s_memory~132_q\ : std_logic;
SIGNAL \ram|s_memory~100_q\ : std_logic;
SIGNAL \ram|s_memory~214_combout\ : std_logic;
SIGNAL \ram|s_memory~217_combout\ : std_logic;
SIGNAL \ram|s_memory~220_combout\ : std_logic;
SIGNAL \debounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\debounce|s_pulsedOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \debounce|s_pulsedOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~150_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~160_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~170_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~180_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~190_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~200_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~210_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X110_Y37_N18
\debounce|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debounce|s_dirtyIn~0_combout\);

-- Location: FF_X110_Y37_N19
\debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_dirtyIn~q\);

-- Location: FF_X110_Y38_N29
\debounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_previousIn~q\);

-- Location: LCCOMB_X111_Y38_N10
\debounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~0_combout\ = \debounce|s_debounceCnt\(0) $ (VCC)
-- \debounce|Add0~1\ = CARRY(\debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce|Add0~0_combout\,
	cout => \debounce|Add0~1\);

-- Location: LCCOMB_X111_Y38_N0
\debounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~23_combout\ = (\debounce|s_previousIn~q\ & (\debounce|Add0~0_combout\ & \debounce|s_debounceCnt[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~0_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~23_combout\);

-- Location: FF_X111_Y38_N1
\debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~23_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X111_Y38_N12
\debounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~2_combout\ = (\debounce|s_debounceCnt\(1) & (\debounce|Add0~1\ & VCC)) # (!\debounce|s_debounceCnt\(1) & (!\debounce|Add0~1\))
-- \debounce|Add0~3\ = CARRY((!\debounce|s_debounceCnt\(1) & !\debounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce|Add0~1\,
	combout => \debounce|Add0~2_combout\,
	cout => \debounce|Add0~3\);

-- Location: LCCOMB_X110_Y38_N16
\debounce|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~19_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~2_combout\,
	combout => \debounce|s_debounceCnt~19_combout\);

-- Location: FF_X110_Y38_N17
\debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~19_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y38_N14
\debounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~4_combout\ = (\debounce|s_debounceCnt\(2) & ((GND) # (!\debounce|Add0~3\))) # (!\debounce|s_debounceCnt\(2) & (\debounce|Add0~3\ $ (GND)))
-- \debounce|Add0~5\ = CARRY((\debounce|s_debounceCnt\(2)) # (!\debounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce|Add0~3\,
	combout => \debounce|Add0~4_combout\,
	cout => \debounce|Add0~5\);

-- Location: LCCOMB_X110_Y38_N14
\debounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~20_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~4_combout\,
	combout => \debounce|s_debounceCnt~20_combout\);

-- Location: FF_X110_Y38_N15
\debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~20_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y38_N16
\debounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~6_combout\ = (\debounce|s_debounceCnt\(3) & (\debounce|Add0~5\ & VCC)) # (!\debounce|s_debounceCnt\(3) & (!\debounce|Add0~5\))
-- \debounce|Add0~7\ = CARRY((!\debounce|s_debounceCnt\(3) & !\debounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce|Add0~5\,
	combout => \debounce|Add0~6_combout\,
	cout => \debounce|Add0~7\);

-- Location: LCCOMB_X110_Y38_N12
\debounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~21_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~6_combout\,
	combout => \debounce|s_debounceCnt~21_combout\);

-- Location: FF_X110_Y38_N13
\debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~21_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y38_N18
\debounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~8_combout\ = (\debounce|s_debounceCnt\(4) & ((GND) # (!\debounce|Add0~7\))) # (!\debounce|s_debounceCnt\(4) & (\debounce|Add0~7\ $ (GND)))
-- \debounce|Add0~9\ = CARRY((\debounce|s_debounceCnt\(4)) # (!\debounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce|Add0~7\,
	combout => \debounce|Add0~8_combout\,
	cout => \debounce|Add0~9\);

-- Location: LCCOMB_X111_Y38_N2
\debounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~22_combout\ = (\debounce|s_previousIn~q\ & (\debounce|Add0~8_combout\ & \debounce|s_debounceCnt[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~8_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~22_combout\);

-- Location: FF_X111_Y38_N3
\debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~22_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y38_N30
\debounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~5_combout\ = (!\debounce|s_debounceCnt\(3) & (!\debounce|s_debounceCnt\(1) & (!\debounce|s_debounceCnt\(2) & !\debounce|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(3),
	datab => \debounce|s_debounceCnt\(1),
	datac => \debounce|s_debounceCnt\(2),
	datad => \debounce|s_debounceCnt\(4),
	combout => \debounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y38_N20
\debounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~10_combout\ = (\debounce|s_debounceCnt\(5) & (\debounce|Add0~9\ & VCC)) # (!\debounce|s_debounceCnt\(5) & (!\debounce|Add0~9\))
-- \debounce|Add0~11\ = CARRY((!\debounce|s_debounceCnt\(5) & !\debounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce|Add0~9\,
	combout => \debounce|Add0~10_combout\,
	cout => \debounce|Add0~11\);

-- Location: LCCOMB_X111_Y38_N22
\debounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~12_combout\ = (\debounce|s_debounceCnt\(6) & ((GND) # (!\debounce|Add0~11\))) # (!\debounce|s_debounceCnt\(6) & (\debounce|Add0~11\ $ (GND)))
-- \debounce|Add0~13\ = CARRY((\debounce|s_debounceCnt\(6)) # (!\debounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce|Add0~11\,
	combout => \debounce|Add0~12_combout\,
	cout => \debounce|Add0~13\);

-- Location: LCCOMB_X111_Y38_N4
\debounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~1_combout\ = (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~12_combout\) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~12_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~1_combout\);

-- Location: FF_X111_Y38_N5
\debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~1_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y38_N24
\debounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~14_combout\ = (\debounce|s_debounceCnt\(7) & (\debounce|Add0~13\ & VCC)) # (!\debounce|s_debounceCnt\(7) & (!\debounce|Add0~13\))
-- \debounce|Add0~15\ = CARRY((!\debounce|s_debounceCnt\(7) & !\debounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce|Add0~13\,
	combout => \debounce|Add0~14_combout\,
	cout => \debounce|Add0~15\);

-- Location: LCCOMB_X110_Y38_N22
\debounce|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~11_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~14_combout\,
	combout => \debounce|s_debounceCnt~11_combout\);

-- Location: FF_X110_Y38_N23
\debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~11_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y38_N26
\debounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~16_combout\ = (\debounce|s_debounceCnt\(8) & ((GND) # (!\debounce|Add0~15\))) # (!\debounce|s_debounceCnt\(8) & (\debounce|Add0~15\ $ (GND)))
-- \debounce|Add0~17\ = CARRY((\debounce|s_debounceCnt\(8)) # (!\debounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce|Add0~15\,
	combout => \debounce|Add0~16_combout\,
	cout => \debounce|Add0~17\);

-- Location: LCCOMB_X111_Y38_N6
\debounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~12_combout\ = (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~16_combout\) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~16_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~12_combout\);

-- Location: FF_X111_Y38_N7
\debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~12_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y38_N28
\debounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~18_combout\ = (\debounce|s_debounceCnt\(9) & (\debounce|Add0~17\ & VCC)) # (!\debounce|s_debounceCnt\(9) & (!\debounce|Add0~17\))
-- \debounce|Add0~19\ = CARRY((!\debounce|s_debounceCnt\(9) & !\debounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce|Add0~17\,
	combout => \debounce|Add0~18_combout\,
	cout => \debounce|Add0~19\);

-- Location: LCCOMB_X111_Y38_N8
\debounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~13_combout\ = (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~18_combout\) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|Add0~18_combout\,
	datac => \debounce|s_previousIn~q\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~13_combout\);

-- Location: FF_X111_Y38_N9
\debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~13_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y38_N30
\debounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~20_combout\ = (\debounce|s_debounceCnt\(10) & ((GND) # (!\debounce|Add0~19\))) # (!\debounce|s_debounceCnt\(10) & (\debounce|Add0~19\ $ (GND)))
-- \debounce|Add0~21\ = CARRY((\debounce|s_debounceCnt\(10)) # (!\debounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce|Add0~19\,
	combout => \debounce|Add0~20_combout\,
	cout => \debounce|Add0~21\);

-- Location: LCCOMB_X109_Y38_N12
\debounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~14_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~20_combout\,
	combout => \debounce|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y38_N13
\debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~14_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y38_N26
\debounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~2_combout\ = (!\debounce|s_debounceCnt\(10) & (!\debounce|s_debounceCnt\(7) & (!\debounce|s_debounceCnt\(9) & !\debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(10),
	datab => \debounce|s_debounceCnt\(7),
	datac => \debounce|s_debounceCnt\(9),
	datad => \debounce|s_debounceCnt\(8),
	combout => \debounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X111_Y37_N0
\debounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~22_combout\ = (\debounce|s_debounceCnt\(11) & (\debounce|Add0~21\ & VCC)) # (!\debounce|s_debounceCnt\(11) & (!\debounce|Add0~21\))
-- \debounce|Add0~23\ = CARRY((!\debounce|s_debounceCnt\(11) & !\debounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce|Add0~21\,
	combout => \debounce|Add0~22_combout\,
	cout => \debounce|Add0~23\);

-- Location: LCCOMB_X110_Y38_N24
\debounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~15_combout\ = (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~22_combout\) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~22_combout\,
	combout => \debounce|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y38_N25
\debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~15_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y37_N2
\debounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~24_combout\ = (\debounce|s_debounceCnt\(12) & ((GND) # (!\debounce|Add0~23\))) # (!\debounce|s_debounceCnt\(12) & (\debounce|Add0~23\ $ (GND)))
-- \debounce|Add0~25\ = CARRY((\debounce|s_debounceCnt\(12)) # (!\debounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce|Add0~23\,
	combout => \debounce|Add0~24_combout\,
	cout => \debounce|Add0~25\);

-- Location: LCCOMB_X110_Y38_N18
\debounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~7_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~24_combout\,
	combout => \debounce|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y38_N19
\debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~7_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y37_N4
\debounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~26_combout\ = (\debounce|s_debounceCnt\(13) & (\debounce|Add0~25\ & VCC)) # (!\debounce|s_debounceCnt\(13) & (!\debounce|Add0~25\))
-- \debounce|Add0~27\ = CARRY((!\debounce|s_debounceCnt\(13) & !\debounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce|Add0~25\,
	combout => \debounce|Add0~26_combout\,
	cout => \debounce|Add0~27\);

-- Location: LCCOMB_X110_Y38_N0
\debounce|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~8_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~26_combout\,
	combout => \debounce|s_debounceCnt~8_combout\);

-- Location: FF_X110_Y38_N1
\debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~8_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y37_N6
\debounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~28_combout\ = (\debounce|s_debounceCnt\(14) & ((GND) # (!\debounce|Add0~27\))) # (!\debounce|s_debounceCnt\(14) & (\debounce|Add0~27\ $ (GND)))
-- \debounce|Add0~29\ = CARRY((\debounce|s_debounceCnt\(14)) # (!\debounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce|Add0~27\,
	combout => \debounce|Add0~28_combout\,
	cout => \debounce|Add0~29\);

-- Location: LCCOMB_X110_Y38_N10
\debounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~16_combout\ = (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~28_combout\) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~28_combout\,
	combout => \debounce|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y38_N11
\debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~16_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y37_N8
\debounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~30_combout\ = (\debounce|s_debounceCnt\(15) & (\debounce|Add0~29\ & VCC)) # (!\debounce|s_debounceCnt\(15) & (!\debounce|Add0~29\))
-- \debounce|Add0~31\ = CARRY((!\debounce|s_debounceCnt\(15) & !\debounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce|Add0~29\,
	combout => \debounce|Add0~30_combout\,
	cout => \debounce|Add0~31\);

-- Location: LCCOMB_X110_Y37_N14
\debounce|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~4_combout\ = (\debounce|s_previousIn~q\ & (\debounce|Add0~30_combout\ & \debounce|s_debounceCnt[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~30_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt~4_combout\);

-- Location: FF_X110_Y37_N15
\debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~4_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y37_N10
\debounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~32_combout\ = (\debounce|s_debounceCnt\(16) & ((GND) # (!\debounce|Add0~31\))) # (!\debounce|s_debounceCnt\(16) & (\debounce|Add0~31\ $ (GND)))
-- \debounce|Add0~33\ = CARRY((\debounce|s_debounceCnt\(16)) # (!\debounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce|Add0~31\,
	combout => \debounce|Add0~32_combout\,
	cout => \debounce|Add0~33\);

-- Location: LCCOMB_X110_Y38_N20
\debounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~5_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~32_combout\,
	combout => \debounce|s_debounceCnt~5_combout\);

-- Location: FF_X110_Y38_N21
\debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~5_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y37_N12
\debounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~34_combout\ = (\debounce|s_debounceCnt\(17) & (\debounce|Add0~33\ & VCC)) # (!\debounce|s_debounceCnt\(17) & (!\debounce|Add0~33\))
-- \debounce|Add0~35\ = CARRY((!\debounce|s_debounceCnt\(17) & !\debounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce|Add0~33\,
	combout => \debounce|Add0~34_combout\,
	cout => \debounce|Add0~35\);

-- Location: LCCOMB_X111_Y37_N24
\debounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~6_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~34_combout\,
	combout => \debounce|s_debounceCnt~6_combout\);

-- Location: FF_X111_Y37_N25
\debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~6_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y37_N14
\debounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~36_combout\ = (\debounce|s_debounceCnt\(18) & ((GND) # (!\debounce|Add0~35\))) # (!\debounce|s_debounceCnt\(18) & (\debounce|Add0~35\ $ (GND)))
-- \debounce|Add0~37\ = CARRY((\debounce|s_debounceCnt\(18)) # (!\debounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce|Add0~35\,
	combout => \debounce|Add0~36_combout\,
	cout => \debounce|Add0~37\);

-- Location: LCCOMB_X109_Y38_N20
\debounce|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[18]~17_combout\ = (\debounce|s_debounceCnt[11]~3_combout\ & (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~36_combout\) # (!\debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt[11]~3_combout\,
	datab => \debounce|s_previousIn~q\,
	datac => \debounce|s_debounceCnt[11]~0_combout\,
	datad => \debounce|Add0~36_combout\,
	combout => \debounce|s_debounceCnt[18]~17_combout\);

-- Location: FF_X109_Y38_N21
\debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y38_N8
\debounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~3_combout\ = (!\debounce|s_debounceCnt\(19) & (!\debounce|s_debounceCnt\(18) & (!\debounce|s_debounceCnt\(14) & !\debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(19),
	datab => \debounce|s_debounceCnt\(18),
	datac => \debounce|s_debounceCnt\(14),
	datad => \debounce|s_debounceCnt\(11),
	combout => \debounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y38_N4
\debounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~0_combout\ = (!\debounce|s_debounceCnt\(16) & (!\debounce|s_debounceCnt\(15) & (!\debounce|s_debounceCnt\(6) & !\debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(16),
	datab => \debounce|s_debounceCnt\(15),
	datac => \debounce|s_debounceCnt\(6),
	datad => \debounce|s_debounceCnt\(17),
	combout => \debounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X111_Y37_N18
\debounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~40_combout\ = (\debounce|s_debounceCnt\(20) & ((GND) # (!\debounce|Add0~39\))) # (!\debounce|s_debounceCnt\(20) & (\debounce|Add0~39\ $ (GND)))
-- \debounce|Add0~41\ = CARRY((\debounce|s_debounceCnt\(20)) # (!\debounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce|Add0~39\,
	combout => \debounce|Add0~40_combout\,
	cout => \debounce|Add0~41\);

-- Location: LCCOMB_X111_Y37_N20
\debounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~42_combout\ = (\debounce|s_debounceCnt\(21) & (\debounce|Add0~41\ & VCC)) # (!\debounce|s_debounceCnt\(21) & (!\debounce|Add0~41\))
-- \debounce|Add0~43\ = CARRY((!\debounce|s_debounceCnt\(21) & !\debounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce|Add0~41\,
	combout => \debounce|Add0~42_combout\,
	cout => \debounce|Add0~43\);

-- Location: LCCOMB_X111_Y37_N28
\debounce|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[21]~10_combout\ = (\debounce|s_previousIn~q\ & (\debounce|Add0~42_combout\ & (\debounce|s_debounceCnt[11]~3_combout\ & \debounce|s_debounceCnt[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|Add0~42_combout\,
	datac => \debounce|s_debounceCnt[11]~3_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt[21]~10_combout\);

-- Location: FF_X111_Y37_N29
\debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y38_N10
\debounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~1_combout\ = (!\debounce|s_debounceCnt\(12) & (!\debounce|s_debounceCnt\(13) & (!\debounce|s_debounceCnt\(20) & !\debounce|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(12),
	datab => \debounce|s_debounceCnt\(13),
	datac => \debounce|s_debounceCnt\(20),
	datad => \debounce|s_debounceCnt\(21),
	combout => \debounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X109_Y38_N14
\debounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~4_combout\ = (\debounce|s_pulsedOut~2_combout\ & (\debounce|s_pulsedOut~3_combout\ & (\debounce|s_pulsedOut~0_combout\ & \debounce|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_pulsedOut~2_combout\,
	datab => \debounce|s_pulsedOut~3_combout\,
	datac => \debounce|s_pulsedOut~0_combout\,
	datad => \debounce|s_pulsedOut~1_combout\,
	combout => \debounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X110_Y38_N6
\debounce|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[11]~2_combout\ = (\debounce|s_debounceCnt\(5)) # ((\debounce|s_debounceCnt\(0)) # ((!\debounce|s_pulsedOut~4_combout\) # (!\debounce|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(5),
	datab => \debounce|s_debounceCnt\(0),
	datac => \debounce|s_pulsedOut~5_combout\,
	datad => \debounce|s_pulsedOut~4_combout\,
	combout => \debounce|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X110_Y38_N4
\debounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~6_combout\ = (\debounce|s_debounceCnt\(6) & ((\debounce|s_debounceCnt\(5)) # ((\debounce|s_debounceCnt\(0)) # (!\debounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(5),
	datab => \debounce|s_debounceCnt\(0),
	datac => \debounce|s_pulsedOut~5_combout\,
	datad => \debounce|s_debounceCnt\(6),
	combout => \debounce|LessThan0~6_combout\);

-- Location: LCCOMB_X109_Y38_N18
\debounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~4_combout\ = (\debounce|s_debounceCnt\(19) & (\debounce|s_debounceCnt\(18) & (\debounce|s_debounceCnt\(14) & \debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(19),
	datab => \debounce|s_debounceCnt\(18),
	datac => \debounce|s_debounceCnt\(14),
	datad => \debounce|s_debounceCnt\(8),
	combout => \debounce|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y38_N16
\debounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~5_combout\ = (\debounce|s_debounceCnt\(11) & (\debounce|s_debounceCnt\(9) & \debounce|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(11),
	datac => \debounce|s_debounceCnt\(9),
	datad => \debounce|LessThan0~4_combout\,
	combout => \debounce|LessThan0~5_combout\);

-- Location: LCCOMB_X109_Y38_N24
\debounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~1_combout\ = (\debounce|s_debounceCnt\(12)) # ((\debounce|s_debounceCnt\(13)) # ((\debounce|s_debounceCnt\(10) & \debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(10),
	datab => \debounce|s_debounceCnt\(12),
	datac => \debounce|s_debounceCnt\(13),
	datad => \debounce|s_debounceCnt\(11),
	combout => \debounce|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y38_N6
\debounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~2_combout\ = (\debounce|s_debounceCnt\(16)) # ((\debounce|s_debounceCnt\(15)) # ((\debounce|s_debounceCnt\(14) & \debounce|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(16),
	datab => \debounce|s_debounceCnt\(14),
	datac => \debounce|s_debounceCnt\(15),
	datad => \debounce|LessThan0~1_combout\,
	combout => \debounce|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y38_N28
\debounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~3_combout\ = (\debounce|s_debounceCnt\(19) & (\debounce|s_debounceCnt\(18) & ((\debounce|s_debounceCnt\(17)) # (\debounce|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(19),
	datab => \debounce|s_debounceCnt\(18),
	datac => \debounce|s_debounceCnt\(17),
	datad => \debounce|LessThan0~2_combout\,
	combout => \debounce|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y38_N2
\debounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~7_combout\ = (\debounce|LessThan0~3_combout\) # ((\debounce|LessThan0~5_combout\ & ((\debounce|s_debounceCnt\(7)) # (\debounce|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(7),
	datab => \debounce|LessThan0~6_combout\,
	datac => \debounce|LessThan0~5_combout\,
	datad => \debounce|LessThan0~3_combout\,
	combout => \debounce|LessThan0~7_combout\);

-- Location: LCCOMB_X110_Y37_N30
\debounce|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[22]~24_combout\ = (\debounce|s_debounceCnt\(22) & (\debounce|LessThan0~0_combout\ & ((!\debounce|LessThan0~7_combout\)))) # (!\debounce|s_debounceCnt\(22) & (((\debounce|s_debounceCnt[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|LessThan0~0_combout\,
	datab => \debounce|s_debounceCnt\(22),
	datac => \debounce|s_debounceCnt[11]~2_combout\,
	datad => \debounce|LessThan0~7_combout\,
	combout => \debounce|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X111_Y37_N22
\debounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~44_combout\ = \debounce|Add0~43\ $ (\debounce|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce|s_debounceCnt\(22),
	cin => \debounce|Add0~43\,
	combout => \debounce|Add0~44_combout\);

-- Location: LCCOMB_X110_Y37_N28
\debounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[22]~25_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_dirtyIn~q\)) # (!\debounce|s_previousIn~q\ & ((\debounce|s_debounceCnt[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_dirtyIn~q\,
	datac => \debounce|s_previousIn~q\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X110_Y37_N0
\debounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[22]~26_combout\ = (\debounce|s_debounceCnt[22]~25_combout\ & (((\debounce|s_debounceCnt[22]~24_combout\ & \debounce|Add0~44_combout\)) # (!\debounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt[22]~24_combout\,
	datab => \debounce|s_previousIn~q\,
	datac => \debounce|Add0~44_combout\,
	datad => \debounce|s_debounceCnt[22]~25_combout\,
	combout => \debounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X110_Y37_N1
\debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y38_N28
\debounce|s_debounceCnt[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[11]~3_combout\ = ((\debounce|s_debounceCnt\(22)) # ((\debounce|s_debounceCnt[11]~2_combout\) # (!\debounce|s_previousIn~q\))) # (!\debounce|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_dirtyIn~q\,
	datab => \debounce|s_debounceCnt\(22),
	datac => \debounce|s_previousIn~q\,
	datad => \debounce|s_debounceCnt[11]~2_combout\,
	combout => \debounce|s_debounceCnt[11]~3_combout\);

-- Location: LCCOMB_X111_Y37_N16
\debounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|Add0~38_combout\ = (\debounce|s_debounceCnt\(19) & (\debounce|Add0~37\ & VCC)) # (!\debounce|s_debounceCnt\(19) & (!\debounce|Add0~37\))
-- \debounce|Add0~39\ = CARRY((!\debounce|s_debounceCnt\(19) & !\debounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce|Add0~37\,
	combout => \debounce|Add0~38_combout\,
	cout => \debounce|Add0~39\);

-- Location: LCCOMB_X109_Y38_N30
\debounce|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[19]~18_combout\ = (\debounce|s_debounceCnt[11]~3_combout\ & (\debounce|s_debounceCnt[11]~0_combout\ & ((\debounce|Add0~38_combout\) # (!\debounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt[11]~3_combout\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~38_combout\,
	datad => \debounce|s_previousIn~q\,
	combout => \debounce|s_debounceCnt[19]~18_combout\);

-- Location: FF_X109_Y38_N31
\debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X111_Y37_N26
\debounce|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[20]~9_combout\ = (\debounce|s_previousIn~q\ & (\debounce|Add0~40_combout\ & (\debounce|s_debounceCnt[11]~3_combout\ & \debounce|s_debounceCnt[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|Add0~40_combout\,
	datac => \debounce|s_debounceCnt[11]~3_combout\,
	datad => \debounce|s_debounceCnt[11]~0_combout\,
	combout => \debounce|s_debounceCnt[20]~9_combout\);

-- Location: FF_X111_Y37_N27
\debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y37_N30
\debounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|LessThan0~0_combout\ = (!\debounce|s_debounceCnt\(20) & !\debounce|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce|s_debounceCnt\(20),
	datad => \debounce|s_debounceCnt\(21),
	combout => \debounce|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y38_N8
\debounce|s_debounceCnt[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt[11]~0_combout\ = (\debounce|s_dirtyIn~q\ & (((\debounce|LessThan0~0_combout\ & !\debounce|LessThan0~7_combout\)) # (!\debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|LessThan0~0_combout\,
	datab => \debounce|s_debounceCnt\(22),
	datac => \debounce|s_dirtyIn~q\,
	datad => \debounce|LessThan0~7_combout\,
	combout => \debounce|s_debounceCnt[11]~0_combout\);

-- Location: LCCOMB_X110_Y38_N26
\debounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_debounceCnt~27_combout\ = (\debounce|s_previousIn~q\ & (\debounce|s_debounceCnt[11]~0_combout\ & \debounce|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_previousIn~q\,
	datab => \debounce|s_debounceCnt[11]~0_combout\,
	datac => \debounce|Add0~10_combout\,
	combout => \debounce|s_debounceCnt~27_combout\);

-- Location: FF_X110_Y38_N27
\debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_debounceCnt~27_combout\,
	ena => \debounce|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y37_N24
\debounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~6_combout\ = (\debounce|s_debounceCnt\(0) & (\debounce|s_dirtyIn~q\ & (\debounce|s_previousIn~q\ & !\debounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(0),
	datab => \debounce|s_dirtyIn~q\,
	datac => \debounce|s_previousIn~q\,
	datad => \debounce|s_debounceCnt\(22),
	combout => \debounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y37_N20
\debounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce|s_pulsedOut~7_combout\ = (!\debounce|s_debounceCnt\(5) & (\debounce|s_pulsedOut~4_combout\ & (\debounce|s_pulsedOut~5_combout\ & \debounce|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce|s_debounceCnt\(5),
	datab => \debounce|s_pulsedOut~4_combout\,
	datac => \debounce|s_pulsedOut~5_combout\,
	datad => \debounce|s_pulsedOut~6_combout\,
	combout => \debounce|s_pulsedOut~7_combout\);

-- Location: FF_X110_Y37_N21
\debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce|s_pulsedOut~q\);

-- Location: CLKCTRL_G7
\debounce|s_pulsedOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debounce|s_pulsedOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debounce|s_pulsedOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X111_Y11_N4
\ram|s_memory~125feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~125feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram|s_memory~125feeder_combout\);

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

-- Location: LCCOMB_X113_Y13_N20
\ram|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~247_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~247_combout\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X112_Y13_N28
\ram|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~248_combout\ = (\ram|s_memory~247_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~247_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~248_combout\);

-- Location: FF_X111_Y11_N5
\ram|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~125feeder_combout\,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~125_q\);

-- Location: LCCOMB_X110_Y11_N14
\ram|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~249_combout\ = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~249_combout\);

-- Location: LCCOMB_X110_Y11_N28
\ram|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~250_combout\ = (\ram|s_memory~249_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram|s_memory~249_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~250_combout\);

-- Location: FF_X110_Y11_N21
\ram|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~109_q\);

-- Location: LCCOMB_X110_Y11_N20
\ram|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~148_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~125_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~109_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~125_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~109_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~148_combout\);

-- Location: LCCOMB_X110_Y11_N22
\ram|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~251_combout\ = (\SW[3]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~251_combout\);

-- Location: LCCOMB_X110_Y11_N0
\ram|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~252_combout\ = (\ram|s_memory~251_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram|s_memory~251_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~252_combout\);

-- Location: FF_X111_Y12_N11
\ram|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~133_q\);

-- Location: LCCOMB_X110_Y11_N6
\ram|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~245_combout\ = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~245_combout\);

-- Location: LCCOMB_X110_Y11_N4
\ram|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~246_combout\ = (\ram|s_memory~245_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~245_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~246_combout\);

-- Location: FF_X110_Y13_N21
\ram|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~117_q\);

-- Location: LCCOMB_X111_Y12_N10
\ram|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~149_combout\ = (\ram|s_memory~148_combout\ & (((\ram|s_memory~133_q\)) # (!\SW[0]~input_o\))) # (!\ram|s_memory~148_combout\ & (\SW[0]~input_o\ & ((\ram|s_memory~117_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~148_combout\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~133_q\,
	datad => \ram|s_memory~117_q\,
	combout => \ram|s_memory~149_combout\);

-- Location: LCCOMB_X113_Y13_N2
\ram|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~225_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~225_combout\);

-- Location: LCCOMB_X112_Y13_N20
\ram|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~226_combout\ = (\ram|s_memory~225_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~225_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~226_combout\);

-- Location: FF_X111_Y13_N15
\ram|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~77_q\);

-- Location: LCCOMB_X113_Y13_N16
\ram|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~223_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~223_combout\);

-- Location: LCCOMB_X112_Y13_N0
\ram|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~224_combout\ = (\ram|s_memory~223_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|s_memory~223_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~224_combout\);

-- Location: FF_X111_Y13_N1
\ram|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~85_q\);

-- Location: LCCOMB_X111_Y13_N14
\ram|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~141_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\ram|s_memory~85_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\ram|s_memory~77_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~77_q\,
	datad => \ram|s_memory~85_q\,
	combout => \ram|s_memory~141_combout\);

-- Location: LCCOMB_X113_Y13_N12
\ram|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~227_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~227_combout\);

-- Location: LCCOMB_X113_Y13_N18
\ram|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~228_combout\ = (\ram|s_memory~227_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~227_combout\,
	datac => \SW[12]~input_o\,
	combout => \ram|s_memory~228_combout\);

-- Location: FF_X112_Y13_N31
\ram|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~101_q\);

-- Location: LCCOMB_X113_Y13_N8
\ram|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~221_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~221_combout\);

-- Location: LCCOMB_X113_Y13_N10
\ram|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~222_combout\ = (\SW[12]~input_o\ & \ram|s_memory~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \ram|s_memory~221_combout\,
	combout => \ram|s_memory~222_combout\);

-- Location: FF_X112_Y13_N13
\ram|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~93_q\);

-- Location: LCCOMB_X112_Y13_N30
\ram|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~142_combout\ = (\ram|s_memory~141_combout\ & (((\ram|s_memory~101_q\)) # (!\SW[1]~input_o\))) # (!\ram|s_memory~141_combout\ & (\SW[1]~input_o\ & ((\ram|s_memory~93_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~141_combout\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~101_q\,
	datad => \ram|s_memory~93_q\,
	combout => \ram|s_memory~142_combout\);

-- Location: LCCOMB_X109_Y13_N28
\ram|s_memory~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~21feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram|s_memory~21feeder_combout\);

-- Location: LCCOMB_X110_Y11_N8
\ram|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~239_combout\ = (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~239_combout\);

-- Location: LCCOMB_X110_Y11_N26
\ram|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~240_combout\ = (\ram|s_memory~239_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram|s_memory~239_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~240_combout\);

-- Location: FF_X109_Y13_N29
\ram|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~21feeder_combout\,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~21_q\);

-- Location: LCCOMB_X110_Y11_N16
\ram|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~241_combout\ = (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~241_combout\);

-- Location: LCCOMB_X111_Y11_N22
\ram|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~242_combout\ = (\SW[12]~input_o\ & \ram|s_memory~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \ram|s_memory~241_combout\,
	combout => \ram|s_memory~242_combout\);

-- Location: FF_X112_Y12_N13
\ram|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~13_q\);

-- Location: LCCOMB_X112_Y12_N12
\ram|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~145_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~21_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~13_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ram|s_memory~21_q\,
	datac => \ram|s_memory~13_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~145_combout\);

-- Location: LCCOMB_X113_Y13_N30
\ram|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~243_combout\ = (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~243_combout\);

-- Location: LCCOMB_X112_Y13_N8
\ram|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~244_combout\ = (\ram|s_memory~243_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~243_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~244_combout\);

-- Location: FF_X111_Y12_N17
\ram|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~37_q\);

-- Location: LCCOMB_X110_Y11_N10
\ram|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~237_combout\ = (!\SW[3]~input_o\ & (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~237_combout\);

-- Location: LCCOMB_X111_Y11_N24
\ram|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~238_combout\ = (\ram|s_memory~237_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~237_combout\,
	datac => \SW[12]~input_o\,
	combout => \ram|s_memory~238_combout\);

-- Location: FF_X112_Y11_N1
\ram|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~29_q\);

-- Location: LCCOMB_X111_Y12_N16
\ram|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~146_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~145_combout\ & (\ram|s_memory~37_q\)) # (!\ram|s_memory~145_combout\ & ((\ram|s_memory~29_q\))))) # (!\SW[1]~input_o\ & (\ram|s_memory~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ram|s_memory~145_combout\,
	datac => \ram|s_memory~37_q\,
	datad => \ram|s_memory~29_q\,
	combout => \ram|s_memory~146_combout\);

-- Location: LCCOMB_X109_Y12_N28
\ram|s_memory~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~53feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram|s_memory~53feeder_combout\);

-- Location: LCCOMB_X112_Y12_N4
\ram|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~229_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~229_combout\);

-- Location: LCCOMB_X112_Y12_N6
\ram|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~230_combout\ = (\SW[12]~input_o\ & \ram|s_memory~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \ram|s_memory~229_combout\,
	combout => \ram|s_memory~230_combout\);

-- Location: FF_X109_Y12_N29
\ram|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~53feeder_combout\,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~53_q\);

-- Location: LCCOMB_X110_Y11_N30
\ram|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~235_combout\ = (!\SW[3]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~235_combout\);

-- Location: LCCOMB_X110_Y11_N12
\ram|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~236_combout\ = (\ram|s_memory~235_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram|s_memory~235_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~236_combout\);

-- Location: FF_X109_Y12_N31
\ram|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~69_q\);

-- Location: LCCOMB_X110_Y12_N12
\ram|s_memory~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~61feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram|s_memory~61feeder_combout\);

-- Location: LCCOMB_X113_Y13_N24
\ram|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~231_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~231_combout\);

-- Location: LCCOMB_X112_Y13_N26
\ram|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~232_combout\ = (\ram|s_memory~231_combout\ & \SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram|s_memory~231_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram|s_memory~232_combout\);

-- Location: FF_X110_Y12_N13
\ram|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~61feeder_combout\,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~61_q\);

-- Location: LCCOMB_X113_Y13_N22
\ram|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~233_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~233_combout\);

-- Location: LCCOMB_X113_Y13_N4
\ram|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~234_combout\ = (\SW[12]~input_o\ & \ram|s_memory~233_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \ram|s_memory~233_combout\,
	combout => \ram|s_memory~234_combout\);

-- Location: FF_X110_Y12_N3
\ram|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~45_q\);

-- Location: LCCOMB_X110_Y12_N2
\ram|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~143_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\ram|s_memory~61_q\)) # (!\SW[1]~input_o\ & ((\ram|s_memory~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~61_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~45_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~143_combout\);

-- Location: LCCOMB_X109_Y12_N30
\ram|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~144_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~143_combout\ & ((\ram|s_memory~69_q\))) # (!\ram|s_memory~143_combout\ & (\ram|s_memory~53_q\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ram|s_memory~53_q\,
	datac => \ram|s_memory~69_q\,
	datad => \ram|s_memory~143_combout\,
	combout => \ram|s_memory~144_combout\);

-- Location: LCCOMB_X112_Y12_N10
\ram|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~147_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\ram|s_memory~144_combout\))) # (!\SW[2]~input_o\ & (\ram|s_memory~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~146_combout\,
	datab => \ram|s_memory~144_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~147_combout\);

-- Location: LCCOMB_X112_Y12_N24
\ram|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~150_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~147_combout\ & (\ram|s_memory~149_combout\)) # (!\ram|s_memory~147_combout\ & ((\ram|s_memory~142_combout\))))) # (!\SW[3]~input_o\ & (((\ram|s_memory~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~149_combout\,
	datab => \ram|s_memory~142_combout\,
	datac => \SW[3]~input_o\,
	datad => \ram|s_memory~147_combout\,
	combout => \ram|s_memory~150_combout\);

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

-- Location: LCCOMB_X109_Y12_N4
\ram|s_memory~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~54feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram|s_memory~54feeder_combout\);

-- Location: FF_X109_Y12_N5
\ram|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~54feeder_combout\,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~54_q\);

-- Location: FF_X109_Y13_N15
\ram|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~22_q\);

-- Location: LCCOMB_X109_Y13_N14
\ram|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~153_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~54_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~54_q\,
	datac => \ram|s_memory~22_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~153_combout\);

-- Location: FF_X111_Y13_N25
\ram|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~86_q\);

-- Location: FF_X110_Y13_N11
\ram|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~118_q\);

-- Location: LCCOMB_X110_Y13_N10
\ram|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~154_combout\ = (\ram|s_memory~153_combout\ & (((\ram|s_memory~118_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~153_combout\ & (\ram|s_memory~86_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~153_combout\,
	datab => \ram|s_memory~86_q\,
	datac => \ram|s_memory~118_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~154_combout\);

-- Location: LCCOMB_X113_Y13_N28
\ram|s_memory~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~46feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram|s_memory~46feeder_combout\);

-- Location: FF_X113_Y13_N29
\ram|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~46feeder_combout\,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~46_q\);

-- Location: FF_X112_Y12_N19
\ram|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~78_q\);

-- Location: FF_X112_Y12_N1
\ram|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~14_q\);

-- Location: LCCOMB_X112_Y12_N0
\ram|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~155_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~78_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~14_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~78_q\,
	datac => \ram|s_memory~14_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~155_combout\);

-- Location: FF_X110_Y13_N9
\ram|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~110_q\);

-- Location: LCCOMB_X110_Y13_N8
\ram|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~156_combout\ = (\ram|s_memory~155_combout\ & (((\ram|s_memory~110_q\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~155_combout\ & (\ram|s_memory~46_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~46_q\,
	datab => \ram|s_memory~155_combout\,
	datac => \ram|s_memory~110_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~156_combout\);

-- Location: LCCOMB_X110_Y13_N2
\ram|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~157_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ram|s_memory~154_combout\)) # (!\SW[0]~input_o\ & ((\ram|s_memory~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~154_combout\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~156_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~157_combout\);

-- Location: FF_X112_Y13_N27
\ram|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~102_q\);

-- Location: LCCOMB_X109_Y12_N26
\ram|s_memory~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~70feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram|s_memory~70feeder_combout\);

-- Location: FF_X109_Y12_N27
\ram|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~70feeder_combout\,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~70_q\);

-- Location: FF_X111_Y12_N13
\ram|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~38_q\);

-- Location: LCCOMB_X111_Y12_N12
\ram|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~158_combout\ = (\SW[2]~input_o\ & ((\ram|s_memory~70_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\ram|s_memory~38_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~70_q\,
	datac => \ram|s_memory~38_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~158_combout\);

-- Location: FF_X111_Y12_N19
\ram|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~134_q\);

-- Location: LCCOMB_X111_Y12_N18
\ram|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~159_combout\ = (\ram|s_memory~158_combout\ & (((\ram|s_memory~134_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~158_combout\ & (\ram|s_memory~102_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~102_q\,
	datab => \ram|s_memory~158_combout\,
	datac => \ram|s_memory~134_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~159_combout\);

-- Location: FF_X112_Y13_N29
\ram|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~94_q\);

-- Location: FF_X112_Y11_N3
\ram|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~30_q\);

-- Location: LCCOMB_X112_Y11_N2
\ram|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~151_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\ram|s_memory~94_q\)) # (!\SW[3]~input_o\ & ((\ram|s_memory~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~94_q\,
	datac => \ram|s_memory~30_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~151_combout\);

-- Location: FF_X111_Y11_N19
\ram|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~62_q\);

-- Location: FF_X111_Y11_N17
\ram|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~126_q\);

-- Location: LCCOMB_X111_Y11_N16
\ram|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~152_combout\ = (\ram|s_memory~151_combout\ & (((\ram|s_memory~126_q\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~151_combout\ & (\ram|s_memory~62_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~151_combout\,
	datab => \ram|s_memory~62_q\,
	datac => \ram|s_memory~126_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~152_combout\);

-- Location: LCCOMB_X111_Y13_N22
\ram|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~160_combout\ = (\ram|s_memory~157_combout\ & ((\ram|s_memory~159_combout\) # ((!\SW[1]~input_o\)))) # (!\ram|s_memory~157_combout\ & (((\ram|s_memory~152_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~157_combout\,
	datab => \ram|s_memory~159_combout\,
	datac => \ram|s_memory~152_combout\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~160_combout\);

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

-- Location: LCCOMB_X109_Y13_N24
\ram|s_memory~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~23feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram|s_memory~23feeder_combout\);

-- Location: FF_X109_Y13_N25
\ram|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~23feeder_combout\,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~23_q\);

-- Location: FF_X111_Y12_N9
\ram|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~39_q\);

-- Location: FF_X112_Y11_N13
\ram|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~31_q\);

-- Location: FF_X112_Y11_N23
\ram|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~15_q\);

-- Location: LCCOMB_X112_Y11_N22
\ram|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~165_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~31_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~15_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~31_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~15_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~165_combout\);

-- Location: LCCOMB_X111_Y12_N8
\ram|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~166_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~165_combout\ & ((\ram|s_memory~39_q\))) # (!\ram|s_memory~165_combout\ & (\ram|s_memory~23_q\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~23_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~39_q\,
	datad => \ram|s_memory~165_combout\,
	combout => \ram|s_memory~166_combout\);

-- Location: FF_X111_Y13_N13
\ram|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~87_q\);

-- Location: LCCOMB_X112_Y13_N24
\ram|s_memory~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~95feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram|s_memory~95feeder_combout\);

-- Location: FF_X112_Y13_N25
\ram|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~95feeder_combout\,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~95_q\);

-- Location: FF_X111_Y13_N19
\ram|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~79_q\);

-- Location: LCCOMB_X111_Y13_N18
\ram|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~163_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~95_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~79_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~95_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~79_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~163_combout\);

-- Location: FF_X112_Y13_N7
\ram|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~103_q\);

-- Location: LCCOMB_X112_Y13_N6
\ram|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~164_combout\ = (\ram|s_memory~163_combout\ & (((\ram|s_memory~103_q\) # (!\SW[0]~input_o\)))) # (!\ram|s_memory~163_combout\ & (\ram|s_memory~87_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~87_q\,
	datab => \ram|s_memory~163_combout\,
	datac => \ram|s_memory~103_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~164_combout\);

-- Location: LCCOMB_X112_Y12_N14
\ram|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~167_combout\ = (\SW[3]~input_o\ & (((\ram|s_memory~164_combout\) # (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\ram|s_memory~166_combout\ & ((!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~166_combout\,
	datab => \ram|s_memory~164_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~167_combout\);

-- Location: FF_X110_Y12_N5
\ram|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~63_q\);

-- Location: FF_X109_Y12_N13
\ram|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~55_q\);

-- Location: FF_X110_Y12_N15
\ram|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~47_q\);

-- Location: LCCOMB_X110_Y12_N14
\ram|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~161_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~55_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~47_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~55_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~47_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~161_combout\);

-- Location: FF_X109_Y12_N3
\ram|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~71_q\);

-- Location: LCCOMB_X109_Y12_N2
\ram|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~162_combout\ = (\ram|s_memory~161_combout\ & (((\ram|s_memory~71_q\) # (!\SW[1]~input_o\)))) # (!\ram|s_memory~161_combout\ & (\ram|s_memory~63_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~63_q\,
	datab => \ram|s_memory~161_combout\,
	datac => \ram|s_memory~71_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~162_combout\);

-- Location: FF_X110_Y13_N13
\ram|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~119_q\);

-- Location: FF_X110_Y13_N27
\ram|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~111_q\);

-- Location: LCCOMB_X110_Y13_N26
\ram|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~168_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ram|s_memory~119_q\)) # (!\SW[0]~input_o\ & ((\ram|s_memory~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~119_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~111_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~168_combout\);

-- Location: FF_X111_Y12_N31
\ram|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~135_q\);

-- Location: LCCOMB_X111_Y11_N2
\ram|s_memory~127feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~127feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram|s_memory~127feeder_combout\);

-- Location: FF_X111_Y11_N3
\ram|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~127feeder_combout\,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~127_q\);

-- Location: LCCOMB_X111_Y12_N30
\ram|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~169_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~168_combout\ & (\ram|s_memory~135_q\)) # (!\ram|s_memory~168_combout\ & ((\ram|s_memory~127_q\))))) # (!\SW[1]~input_o\ & (\ram|s_memory~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ram|s_memory~168_combout\,
	datac => \ram|s_memory~135_q\,
	datad => \ram|s_memory~127_q\,
	combout => \ram|s_memory~169_combout\);

-- Location: LCCOMB_X112_Y12_N20
\ram|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~170_combout\ = (\SW[2]~input_o\ & ((\ram|s_memory~167_combout\ & ((\ram|s_memory~169_combout\))) # (!\ram|s_memory~167_combout\ & (\ram|s_memory~162_combout\)))) # (!\SW[2]~input_o\ & (\ram|s_memory~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~167_combout\,
	datac => \ram|s_memory~162_combout\,
	datad => \ram|s_memory~169_combout\,
	combout => \ram|s_memory~170_combout\);

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

-- Location: FF_X109_Y12_N25
\ram|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~56_q\);

-- Location: FF_X110_Y13_N25
\ram|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~120_q\);

-- Location: FF_X111_Y13_N5
\ram|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~88_q\);

-- Location: FF_X109_Y13_N11
\ram|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~24_q\);

-- Location: LCCOMB_X109_Y13_N10
\ram|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~171_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~88_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~24_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~88_q\,
	datac => \ram|s_memory~24_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~171_combout\);

-- Location: LCCOMB_X110_Y13_N24
\ram|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~172_combout\ = (\SW[2]~input_o\ & ((\ram|s_memory~171_combout\ & ((\ram|s_memory~120_q\))) # (!\ram|s_memory~171_combout\ & (\ram|s_memory~56_q\)))) # (!\SW[2]~input_o\ & (((\ram|s_memory~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~56_q\,
	datab => \SW[2]~input_o\,
	datac => \ram|s_memory~120_q\,
	datad => \ram|s_memory~171_combout\,
	combout => \ram|s_memory~172_combout\);

-- Location: LCCOMB_X112_Y13_N22
\ram|s_memory~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~104feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram|s_memory~104feeder_combout\);

-- Location: FF_X112_Y13_N23
\ram|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~104feeder_combout\,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~104_q\);

-- Location: FF_X111_Y12_N25
\ram|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~40_q\);

-- Location: LCCOMB_X111_Y12_N24
\ram|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~178_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~104_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~40_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~104_q\,
	datab => \SW[3]~input_o\,
	datac => \ram|s_memory~40_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~178_combout\);

-- Location: FF_X111_Y12_N15
\ram|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~136_q\);

-- Location: FF_X109_Y12_N23
\ram|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~72_q\);

-- Location: LCCOMB_X111_Y12_N14
\ram|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~179_combout\ = (\SW[2]~input_o\ & ((\ram|s_memory~178_combout\ & (\ram|s_memory~136_q\)) # (!\ram|s_memory~178_combout\ & ((\ram|s_memory~72_q\))))) # (!\SW[2]~input_o\ & (\ram|s_memory~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~178_combout\,
	datac => \ram|s_memory~136_q\,
	datad => \ram|s_memory~72_q\,
	combout => \ram|s_memory~179_combout\);

-- Location: FF_X111_Y13_N31
\ram|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~80_q\);

-- Location: LCCOMB_X110_Y12_N8
\ram|s_memory~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~48feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram|s_memory~48feeder_combout\);

-- Location: FF_X110_Y12_N9
\ram|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~48feeder_combout\,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~48_q\);

-- Location: FF_X112_Y12_N23
\ram|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~16_q\);

-- Location: LCCOMB_X112_Y12_N22
\ram|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~175_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~48_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~48_q\,
	datac => \ram|s_memory~16_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~175_combout\);

-- Location: FF_X110_Y13_N31
\ram|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~112_q\);

-- Location: LCCOMB_X110_Y13_N30
\ram|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~176_combout\ = (\ram|s_memory~175_combout\ & (((\ram|s_memory~112_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~175_combout\ & (\ram|s_memory~80_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~80_q\,
	datab => \ram|s_memory~175_combout\,
	datac => \ram|s_memory~112_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~176_combout\);

-- Location: FF_X112_Y13_N1
\ram|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~96_q\);

-- Location: FF_X111_Y11_N15
\ram|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~128_q\);

-- Location: LCCOMB_X111_Y11_N12
\ram|s_memory~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~64feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram|s_memory~64feeder_combout\);

-- Location: FF_X111_Y11_N13
\ram|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~64feeder_combout\,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~64_q\);

-- Location: FF_X112_Y11_N5
\ram|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~32_q\);

-- Location: LCCOMB_X112_Y11_N4
\ram|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~173_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~64_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~64_q\,
	datab => \SW[3]~input_o\,
	datac => \ram|s_memory~32_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~173_combout\);

-- Location: LCCOMB_X111_Y11_N14
\ram|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~174_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~173_combout\ & ((\ram|s_memory~128_q\))) # (!\ram|s_memory~173_combout\ & (\ram|s_memory~96_q\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~96_q\,
	datac => \ram|s_memory~128_q\,
	datad => \ram|s_memory~173_combout\,
	combout => \ram|s_memory~174_combout\);

-- Location: LCCOMB_X110_Y12_N18
\ram|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~177_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\ram|s_memory~174_combout\)))) # (!\SW[1]~input_o\ & (\ram|s_memory~176_combout\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~176_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ram|s_memory~174_combout\,
	combout => \ram|s_memory~177_combout\);

-- Location: LCCOMB_X110_Y12_N20
\ram|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~180_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~177_combout\ & ((\ram|s_memory~179_combout\))) # (!\ram|s_memory~177_combout\ & (\ram|s_memory~172_combout\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~172_combout\,
	datab => \ram|s_memory~179_combout\,
	datac => \SW[0]~input_o\,
	datad => \ram|s_memory~177_combout\,
	combout => \ram|s_memory~180_combout\);

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

-- Location: FF_X112_Y11_N19
\ram|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~33_q\);

-- Location: FF_X111_Y12_N21
\ram|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~41_q\);

-- Location: LCCOMB_X109_Y13_N4
\ram|s_memory~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~25feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram|s_memory~25feeder_combout\);

-- Location: FF_X109_Y13_N5
\ram|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~25feeder_combout\,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~25_q\);

-- Location: FF_X112_Y12_N29
\ram|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~17_q\);

-- Location: LCCOMB_X112_Y12_N28
\ram|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~185_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ram|s_memory~25_q\)) # (!\SW[0]~input_o\ & ((\ram|s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~25_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~17_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~185_combout\);

-- Location: LCCOMB_X111_Y12_N20
\ram|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~186_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~185_combout\ & ((\ram|s_memory~41_q\))) # (!\ram|s_memory~185_combout\ & (\ram|s_memory~33_q\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ram|s_memory~33_q\,
	datac => \ram|s_memory~41_q\,
	datad => \ram|s_memory~185_combout\,
	combout => \ram|s_memory~186_combout\);

-- Location: FF_X110_Y12_N11
\ram|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~65_q\);

-- Location: FF_X110_Y12_N25
\ram|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~49_q\);

-- Location: LCCOMB_X110_Y12_N24
\ram|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~183_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\ram|s_memory~65_q\)) # (!\SW[1]~input_o\ & ((\ram|s_memory~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~65_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~49_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~183_combout\);

-- Location: FF_X109_Y12_N19
\ram|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~73_q\);

-- Location: FF_X109_Y12_N21
\ram|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~57_q\);

-- Location: LCCOMB_X109_Y12_N18
\ram|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~184_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~183_combout\ & (\ram|s_memory~73_q\)) # (!\ram|s_memory~183_combout\ & ((\ram|s_memory~57_q\))))) # (!\SW[0]~input_o\ & (\ram|s_memory~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ram|s_memory~183_combout\,
	datac => \ram|s_memory~73_q\,
	datad => \ram|s_memory~57_q\,
	combout => \ram|s_memory~184_combout\);

-- Location: LCCOMB_X111_Y12_N26
\ram|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~187_combout\ = (\SW[2]~input_o\ & (((\ram|s_memory~184_combout\) # (\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\ram|s_memory~186_combout\ & ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~186_combout\,
	datac => \ram|s_memory~184_combout\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~187_combout\);

-- Location: FF_X111_Y13_N9
\ram|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~89_q\);

-- Location: FF_X111_Y13_N11
\ram|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~81_q\);

-- Location: LCCOMB_X111_Y13_N10
\ram|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~181_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~89_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~81_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ram|s_memory~89_q\,
	datac => \ram|s_memory~81_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~181_combout\);

-- Location: LCCOMB_X112_Y13_N16
\ram|s_memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~97feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram|s_memory~97feeder_combout\);

-- Location: FF_X112_Y13_N17
\ram|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~97feeder_combout\,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~97_q\);

-- Location: FF_X112_Y13_N15
\ram|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~105_q\);

-- Location: LCCOMB_X112_Y13_N14
\ram|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~182_combout\ = (\ram|s_memory~181_combout\ & (((\ram|s_memory~105_q\) # (!\SW[1]~input_o\)))) # (!\ram|s_memory~181_combout\ & (\ram|s_memory~97_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~181_combout\,
	datab => \ram|s_memory~97_q\,
	datac => \ram|s_memory~105_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~182_combout\);

-- Location: FF_X111_Y11_N21
\ram|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~129_q\);

-- Location: FF_X110_Y11_N19
\ram|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~113_q\);

-- Location: LCCOMB_X110_Y11_N18
\ram|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~188_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~129_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~113_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~129_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~113_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~188_combout\);

-- Location: FF_X111_Y12_N5
\ram|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~137_q\);

-- Location: LCCOMB_X110_Y13_N16
\ram|s_memory~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~121feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram|s_memory~121feeder_combout\);

-- Location: FF_X110_Y13_N17
\ram|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~121feeder_combout\,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~121_q\);

-- Location: LCCOMB_X111_Y12_N4
\ram|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~189_combout\ = (\ram|s_memory~188_combout\ & (((\ram|s_memory~137_q\)) # (!\SW[0]~input_o\))) # (!\ram|s_memory~188_combout\ & (\SW[0]~input_o\ & ((\ram|s_memory~121_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~188_combout\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~137_q\,
	datad => \ram|s_memory~121_q\,
	combout => \ram|s_memory~189_combout\);

-- Location: LCCOMB_X111_Y12_N6
\ram|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~190_combout\ = (\ram|s_memory~187_combout\ & (((\ram|s_memory~189_combout\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~187_combout\ & (\ram|s_memory~182_combout\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~187_combout\,
	datab => \ram|s_memory~182_combout\,
	datac => \ram|s_memory~189_combout\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~190_combout\);

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

-- Location: FF_X111_Y11_N11
\ram|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~66_q\);

-- Location: FF_X112_Y13_N21
\ram|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~98_q\);

-- Location: FF_X112_Y11_N17
\ram|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~34_q\);

-- Location: LCCOMB_X112_Y11_N16
\ram|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~191_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\ram|s_memory~98_q\)) # (!\SW[3]~input_o\ & ((\ram|s_memory~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~98_q\,
	datac => \ram|s_memory~34_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~191_combout\);

-- Location: FF_X111_Y11_N29
\ram|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~130_q\);

-- Location: LCCOMB_X111_Y11_N28
\ram|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~192_combout\ = (\ram|s_memory~191_combout\ & (((\ram|s_memory~130_q\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~191_combout\ & (\ram|s_memory~66_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~66_q\,
	datab => \ram|s_memory~191_combout\,
	datac => \ram|s_memory~130_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~192_combout\);

-- Location: LCCOMB_X112_Y13_N18
\ram|s_memory~106feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~106feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \ram|s_memory~106feeder_combout\);

-- Location: FF_X112_Y13_N19
\ram|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~106feeder_combout\,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~106_q\);

-- Location: LCCOMB_X109_Y12_N6
\ram|s_memory~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~74feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \ram|s_memory~74feeder_combout\);

-- Location: FF_X109_Y12_N7
\ram|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~74feeder_combout\,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~74_q\);

-- Location: FF_X111_Y12_N1
\ram|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~42_q\);

-- Location: LCCOMB_X111_Y12_N0
\ram|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~198_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~74_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~74_q\,
	datab => \SW[3]~input_o\,
	datac => \ram|s_memory~42_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~198_combout\);

-- Location: FF_X111_Y12_N23
\ram|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~138_q\);

-- Location: LCCOMB_X111_Y12_N22
\ram|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~199_combout\ = (\ram|s_memory~198_combout\ & (((\ram|s_memory~138_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~198_combout\ & (\ram|s_memory~106_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~106_q\,
	datab => \ram|s_memory~198_combout\,
	datac => \ram|s_memory~138_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~199_combout\);

-- Location: LCCOMB_X111_Y13_N20
\ram|s_memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~90feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \ram|s_memory~90feeder_combout\);

-- Location: FF_X111_Y13_N21
\ram|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~90feeder_combout\,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~90_q\);

-- Location: LCCOMB_X109_Y12_N0
\ram|s_memory~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~58feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \ram|s_memory~58feeder_combout\);

-- Location: FF_X109_Y12_N1
\ram|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~58feeder_combout\,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~58_q\);

-- Location: FF_X109_Y13_N31
\ram|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~26_q\);

-- Location: LCCOMB_X109_Y13_N30
\ram|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~193_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~58_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~26_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~58_q\,
	datac => \ram|s_memory~26_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~193_combout\);

-- Location: FF_X110_Y13_N23
\ram|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~122_q\);

-- Location: LCCOMB_X110_Y13_N22
\ram|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~194_combout\ = (\ram|s_memory~193_combout\ & (((\ram|s_memory~122_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~193_combout\ & (\ram|s_memory~90_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~90_q\,
	datab => \ram|s_memory~193_combout\,
	datac => \ram|s_memory~122_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~194_combout\);

-- Location: LCCOMB_X113_Y13_N14
\ram|s_memory~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~50feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \ram|s_memory~50feeder_combout\);

-- Location: FF_X113_Y13_N15
\ram|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~50feeder_combout\,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~50_q\);

-- Location: FF_X112_Y12_N3
\ram|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~82_q\);

-- Location: FF_X112_Y12_N17
\ram|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~18_q\);

-- Location: LCCOMB_X112_Y12_N16
\ram|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~195_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~82_q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~18_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~82_q\,
	datac => \ram|s_memory~18_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~195_combout\);

-- Location: FF_X110_Y13_N5
\ram|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~114_q\);

-- Location: LCCOMB_X110_Y13_N4
\ram|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~196_combout\ = (\ram|s_memory~195_combout\ & (((\ram|s_memory~114_q\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~195_combout\ & (\ram|s_memory~50_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~50_q\,
	datab => \ram|s_memory~195_combout\,
	datac => \ram|s_memory~114_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~196_combout\);

-- Location: LCCOMB_X110_Y13_N14
\ram|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~197_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ram|s_memory~194_combout\)) # (!\SW[0]~input_o\ & ((\ram|s_memory~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~194_combout\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~196_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~197_combout\);

-- Location: LCCOMB_X111_Y13_N26
\ram|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~200_combout\ = (\ram|s_memory~197_combout\ & (((\ram|s_memory~199_combout\) # (!\SW[1]~input_o\)))) # (!\ram|s_memory~197_combout\ & (\ram|s_memory~192_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~192_combout\,
	datab => \ram|s_memory~199_combout\,
	datac => \ram|s_memory~197_combout\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~200_combout\);

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

-- Location: LCCOMB_X110_Y12_N6
\ram|s_memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~67feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \ram|s_memory~67feeder_combout\);

-- Location: FF_X110_Y12_N7
\ram|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~67feeder_combout\,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~67_q\);

-- Location: FF_X109_Y12_N9
\ram|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~59_q\);

-- Location: FF_X110_Y12_N17
\ram|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~51_q\);

-- Location: LCCOMB_X110_Y12_N16
\ram|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~201_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~59_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~51_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~59_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~51_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~201_combout\);

-- Location: FF_X109_Y12_N11
\ram|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~75_q\);

-- Location: LCCOMB_X109_Y12_N10
\ram|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~202_combout\ = (\ram|s_memory~201_combout\ & (((\ram|s_memory~75_q\) # (!\SW[1]~input_o\)))) # (!\ram|s_memory~201_combout\ & (\ram|s_memory~67_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~67_q\,
	datab => \ram|s_memory~201_combout\,
	datac => \ram|s_memory~75_q\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~202_combout\);

-- Location: FF_X111_Y11_N31
\ram|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~131_q\);

-- Location: FF_X110_Y11_N25
\ram|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~139_q\);

-- Location: FF_X110_Y13_N1
\ram|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~123_q\);

-- Location: FF_X110_Y13_N19
\ram|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~115_q\);

-- Location: LCCOMB_X110_Y13_N18
\ram|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~208_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ram|s_memory~123_q\)) # (!\SW[0]~input_o\ & ((\ram|s_memory~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~123_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~115_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~208_combout\);

-- Location: LCCOMB_X110_Y11_N24
\ram|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~209_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~208_combout\ & ((\ram|s_memory~139_q\))) # (!\ram|s_memory~208_combout\ & (\ram|s_memory~131_q\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~131_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~139_q\,
	datad => \ram|s_memory~208_combout\,
	combout => \ram|s_memory~209_combout\);

-- Location: FF_X111_Y13_N17
\ram|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~91_q\);

-- Location: FF_X112_Y13_N3
\ram|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~107_q\);

-- Location: FF_X112_Y13_N5
\ram|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~99_q\);

-- Location: FF_X111_Y13_N3
\ram|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~83_q\);

-- Location: LCCOMB_X111_Y13_N2
\ram|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~203_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~99_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~83_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~99_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~83_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~203_combout\);

-- Location: LCCOMB_X112_Y13_N2
\ram|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~204_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~203_combout\ & ((\ram|s_memory~107_q\))) # (!\ram|s_memory~203_combout\ & (\ram|s_memory~91_q\)))) # (!\SW[0]~input_o\ & (((\ram|s_memory~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~91_q\,
	datab => \SW[0]~input_o\,
	datac => \ram|s_memory~107_q\,
	datad => \ram|s_memory~203_combout\,
	combout => \ram|s_memory~204_combout\);

-- Location: FF_X109_Y13_N13
\ram|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~27_q\);

-- Location: FF_X112_Y11_N11
\ram|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~35_q\);

-- Location: FF_X112_Y11_N21
\ram|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~19_q\);

-- Location: LCCOMB_X112_Y11_N20
\ram|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~205_combout\ = (\SW[1]~input_o\ & ((\ram|s_memory~35_q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\ram|s_memory~19_q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~35_q\,
	datab => \SW[1]~input_o\,
	datac => \ram|s_memory~19_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~205_combout\);

-- Location: FF_X109_Y13_N27
\ram|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~43_q\);

-- Location: LCCOMB_X109_Y13_N26
\ram|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~206_combout\ = (\ram|s_memory~205_combout\ & (((\ram|s_memory~43_q\) # (!\SW[0]~input_o\)))) # (!\ram|s_memory~205_combout\ & (\ram|s_memory~27_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~27_q\,
	datab => \ram|s_memory~205_combout\,
	datac => \ram|s_memory~43_q\,
	datad => \SW[0]~input_o\,
	combout => \ram|s_memory~206_combout\);

-- Location: LCCOMB_X109_Y13_N8
\ram|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~207_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~204_combout\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\ram|s_memory~206_combout\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~204_combout\,
	datac => \ram|s_memory~206_combout\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~207_combout\);

-- Location: LCCOMB_X109_Y13_N2
\ram|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~210_combout\ = (\ram|s_memory~207_combout\ & (((\ram|s_memory~209_combout\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~207_combout\ & (\ram|s_memory~202_combout\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~202_combout\,
	datab => \ram|s_memory~209_combout\,
	datac => \ram|s_memory~207_combout\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~210_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X109_Y12_N15
\ram|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~76_q\);

-- Location: FF_X111_Y12_N3
\ram|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~140_q\);

-- Location: FF_X111_Y12_N29
\ram|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~44_q\);

-- Location: FF_X112_Y13_N11
\ram|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~108_q\);

-- Location: LCCOMB_X111_Y12_N28
\ram|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~218_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\ram|s_memory~108_q\))) # (!\SW[3]~input_o\ & (\ram|s_memory~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \ram|s_memory~44_q\,
	datad => \ram|s_memory~108_q\,
	combout => \ram|s_memory~218_combout\);

-- Location: LCCOMB_X111_Y12_N2
\ram|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~219_combout\ = (\SW[2]~input_o\ & ((\ram|s_memory~218_combout\ & ((\ram|s_memory~140_q\))) # (!\ram|s_memory~218_combout\ & (\ram|s_memory~76_q\)))) # (!\SW[2]~input_o\ & (((\ram|s_memory~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ram|s_memory~76_q\,
	datac => \ram|s_memory~140_q\,
	datad => \ram|s_memory~218_combout\,
	combout => \ram|s_memory~219_combout\);

-- Location: FF_X109_Y12_N17
\ram|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~60_q\);

-- Location: LCCOMB_X111_Y13_N28
\ram|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~92feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \ram|s_memory~92feeder_combout\);

-- Location: FF_X111_Y13_N29
\ram|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~92feeder_combout\,
	ena => \ram|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~92_q\);

-- Location: FF_X109_Y13_N21
\ram|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~28_q\);

-- Location: LCCOMB_X109_Y13_N20
\ram|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~211_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\ram|s_memory~92_q\)) # (!\SW[3]~input_o\ & ((\ram|s_memory~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~92_q\,
	datab => \SW[2]~input_o\,
	datac => \ram|s_memory~28_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~211_combout\);

-- Location: FF_X110_Y13_N29
\ram|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~124_q\);

-- Location: LCCOMB_X110_Y13_N28
\ram|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~212_combout\ = (\ram|s_memory~211_combout\ & (((\ram|s_memory~124_q\) # (!\SW[2]~input_o\)))) # (!\ram|s_memory~211_combout\ & (\ram|s_memory~60_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~60_q\,
	datab => \ram|s_memory~211_combout\,
	datac => \ram|s_memory~124_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~212_combout\);

-- Location: FF_X110_Y12_N31
\ram|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~52_q\);

-- Location: FF_X112_Y12_N31
\ram|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~20_q\);

-- Location: LCCOMB_X112_Y12_N30
\ram|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~215_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~52_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~52_q\,
	datac => \ram|s_memory~20_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~215_combout\);

-- Location: LCCOMB_X111_Y13_N6
\ram|s_memory~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~84feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \ram|s_memory~84feeder_combout\);

-- Location: FF_X111_Y13_N7
\ram|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	d => \ram|s_memory~84feeder_combout\,
	ena => \ram|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~84_q\);

-- Location: FF_X110_Y13_N7
\ram|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~116_q\);

-- Location: LCCOMB_X110_Y13_N6
\ram|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~216_combout\ = (\ram|s_memory~215_combout\ & (((\ram|s_memory~116_q\) # (!\SW[3]~input_o\)))) # (!\ram|s_memory~215_combout\ & (\ram|s_memory~84_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~215_combout\,
	datab => \ram|s_memory~84_q\,
	datac => \ram|s_memory~116_q\,
	datad => \SW[3]~input_o\,
	combout => \ram|s_memory~216_combout\);

-- Location: FF_X111_Y11_N9
\ram|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~68_q\);

-- Location: FF_X112_Y11_N27
\ram|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~36_q\);

-- Location: LCCOMB_X112_Y11_N26
\ram|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~213_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\ram|s_memory~68_q\)) # (!\SW[2]~input_o\ & ((\ram|s_memory~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~68_q\,
	datab => \SW[3]~input_o\,
	datac => \ram|s_memory~36_q\,
	datad => \SW[2]~input_o\,
	combout => \ram|s_memory~213_combout\);

-- Location: FF_X111_Y11_N27
\ram|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~132_q\);

-- Location: FF_X112_Y13_N9
\ram|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \ram|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|s_memory~100_q\);

-- Location: LCCOMB_X111_Y11_N26
\ram|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~214_combout\ = (\SW[3]~input_o\ & ((\ram|s_memory~213_combout\ & (\ram|s_memory~132_q\)) # (!\ram|s_memory~213_combout\ & ((\ram|s_memory~100_q\))))) # (!\SW[3]~input_o\ & (\ram|s_memory~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ram|s_memory~213_combout\,
	datac => \ram|s_memory~132_q\,
	datad => \ram|s_memory~100_q\,
	combout => \ram|s_memory~214_combout\);

-- Location: LCCOMB_X110_Y12_N28
\ram|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~217_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\ram|s_memory~214_combout\))) # (!\SW[1]~input_o\ & (\ram|s_memory~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~216_combout\,
	datab => \ram|s_memory~214_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ram|s_memory~217_combout\);

-- Location: LCCOMB_X110_Y12_N22
\ram|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram|s_memory~220_combout\ = (\SW[0]~input_o\ & ((\ram|s_memory~217_combout\ & (\ram|s_memory~219_combout\)) # (!\ram|s_memory~217_combout\ & ((\ram|s_memory~212_combout\))))) # (!\SW[0]~input_o\ & (((\ram|s_memory~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram|s_memory~219_combout\,
	datab => \ram|s_memory~212_combout\,
	datac => \SW[0]~input_o\,
	datad => \ram|s_memory~217_combout\,
	combout => \ram|s_memory~220_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


