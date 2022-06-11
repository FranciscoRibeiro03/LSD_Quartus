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

-- DATE "05/03/2022 11:05:08"

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

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
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
SIGNAL \freqDiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \freqDiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~5_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~4_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~5_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~6_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~7_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~8_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~40_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~12_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~13_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~37_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~10_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~11_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~32_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight0~3_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~33_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~8_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~34_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~41_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~42_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~31_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~4_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~5_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~43_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~44_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[6]~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight0~1_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight0~2_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~2_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~6_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~7_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~5_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[1]~12_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~6_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~7_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[1]~7_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[1]~8_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[1]~9_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~2_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~3_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~10_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~11_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~13_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~14_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~15_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~0_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~47_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~9_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~10_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~45_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~46_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~48_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[7]~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~4_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~14_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~21_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~8_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~22_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~23_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~24_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~25_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~26_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~8_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~9_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~35_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~36_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~38_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~39_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[5]~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~6_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~7_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~18_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~16_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~17_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~19_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~20_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~1_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~3_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~11_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~3_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~5_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~15_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~27_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight0~0_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~28_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~29_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~30_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateRight0~0_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~0_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~1_combout\ : std_logic;
SIGNAL \seqShiftUnit|ShiftRight1~4_combout\ : std_logic;
SIGNAL \seqShiftUnit|RotateLeft0~2_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~4_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg~5_combout\ : std_logic;
SIGNAL \seqShiftUnit|s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \freqDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \seqShiftUnit|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqDiv|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

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

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);
\freqDiv|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \freqDiv|clkOut~clkctrl_outclk\;
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
	i => \seqShiftUnit|s_shiftReg\(0),
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
	i => \seqShiftUnit|s_shiftReg\(1),
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
	i => \seqShiftUnit|s_shiftReg\(2),
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
	i => \seqShiftUnit|s_shiftReg\(3),
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
	i => \seqShiftUnit|s_shiftReg\(4),
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
	i => \seqShiftUnit|s_shiftReg\(5),
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
	i => \seqShiftUnit|s_shiftReg\(6),
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
	i => \seqShiftUnit|s_shiftReg\(7),
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

-- Location: LCCOMB_X60_Y4_N6
\freqDiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[0]~26_combout\ = \freqDiv|s_divCounter\(0) $ (VCC)
-- \freqDiv|s_divCounter[0]~27\ = CARRY(\freqDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(0),
	datad => VCC,
	combout => \freqDiv|s_divCounter[0]~26_combout\,
	cout => \freqDiv|s_divCounter[0]~27\);

-- Location: LCCOMB_X60_Y4_N16
\freqDiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[5]~36_combout\ = (\freqDiv|s_divCounter\(5) & (!\freqDiv|s_divCounter[4]~35\)) # (!\freqDiv|s_divCounter\(5) & ((\freqDiv|s_divCounter[4]~35\) # (GND)))
-- \freqDiv|s_divCounter[5]~37\ = CARRY((!\freqDiv|s_divCounter[4]~35\) # (!\freqDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datad => VCC,
	cin => \freqDiv|s_divCounter[4]~35\,
	combout => \freqDiv|s_divCounter[5]~36_combout\,
	cout => \freqDiv|s_divCounter[5]~37\);

-- Location: LCCOMB_X60_Y4_N18
\freqDiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[6]~38_combout\ = (\freqDiv|s_divCounter\(6) & (\freqDiv|s_divCounter[5]~37\ $ (GND))) # (!\freqDiv|s_divCounter\(6) & (!\freqDiv|s_divCounter[5]~37\ & VCC))
-- \freqDiv|s_divCounter[6]~39\ = CARRY((\freqDiv|s_divCounter\(6) & !\freqDiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(6),
	datad => VCC,
	cin => \freqDiv|s_divCounter[5]~37\,
	combout => \freqDiv|s_divCounter[6]~38_combout\,
	cout => \freqDiv|s_divCounter[6]~39\);

-- Location: FF_X60_Y4_N19
\freqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[6]~38_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(6));

-- Location: LCCOMB_X60_Y4_N20
\freqDiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[7]~40_combout\ = (\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter[6]~39\)) # (!\freqDiv|s_divCounter\(7) & ((\freqDiv|s_divCounter[6]~39\) # (GND)))
-- \freqDiv|s_divCounter[7]~41\ = CARRY((!\freqDiv|s_divCounter[6]~39\) # (!\freqDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(7),
	datad => VCC,
	cin => \freqDiv|s_divCounter[6]~39\,
	combout => \freqDiv|s_divCounter[7]~40_combout\,
	cout => \freqDiv|s_divCounter[7]~41\);

-- Location: FF_X60_Y4_N21
\freqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[7]~40_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(7));

-- Location: LCCOMB_X60_Y4_N22
\freqDiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[8]~42_combout\ = (\freqDiv|s_divCounter\(8) & (\freqDiv|s_divCounter[7]~41\ $ (GND))) # (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter[7]~41\ & VCC))
-- \freqDiv|s_divCounter[8]~43\ = CARRY((\freqDiv|s_divCounter\(8) & !\freqDiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(8),
	datad => VCC,
	cin => \freqDiv|s_divCounter[7]~41\,
	combout => \freqDiv|s_divCounter[8]~42_combout\,
	cout => \freqDiv|s_divCounter[8]~43\);

-- Location: FF_X60_Y4_N23
\freqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[8]~42_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(8));

-- Location: LCCOMB_X60_Y4_N24
\freqDiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[9]~44_combout\ = (\freqDiv|s_divCounter\(9) & (!\freqDiv|s_divCounter[8]~43\)) # (!\freqDiv|s_divCounter\(9) & ((\freqDiv|s_divCounter[8]~43\) # (GND)))
-- \freqDiv|s_divCounter[9]~45\ = CARRY((!\freqDiv|s_divCounter[8]~43\) # (!\freqDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(9),
	datad => VCC,
	cin => \freqDiv|s_divCounter[8]~43\,
	combout => \freqDiv|s_divCounter[9]~44_combout\,
	cout => \freqDiv|s_divCounter[9]~45\);

-- Location: FF_X60_Y4_N25
\freqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[9]~44_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(9));

-- Location: LCCOMB_X60_Y4_N26
\freqDiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[10]~46_combout\ = (\freqDiv|s_divCounter\(10) & (\freqDiv|s_divCounter[9]~45\ $ (GND))) # (!\freqDiv|s_divCounter\(10) & (!\freqDiv|s_divCounter[9]~45\ & VCC))
-- \freqDiv|s_divCounter[10]~47\ = CARRY((\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(10),
	datad => VCC,
	cin => \freqDiv|s_divCounter[9]~45\,
	combout => \freqDiv|s_divCounter[10]~46_combout\,
	cout => \freqDiv|s_divCounter[10]~47\);

-- Location: FF_X60_Y4_N27
\freqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[10]~46_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(10));

-- Location: LCCOMB_X60_Y4_N28
\freqDiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[11]~48_combout\ = (\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter[10]~47\)) # (!\freqDiv|s_divCounter\(11) & ((\freqDiv|s_divCounter[10]~47\) # (GND)))
-- \freqDiv|s_divCounter[11]~49\ = CARRY((!\freqDiv|s_divCounter[10]~47\) # (!\freqDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(11),
	datad => VCC,
	cin => \freqDiv|s_divCounter[10]~47\,
	combout => \freqDiv|s_divCounter[11]~48_combout\,
	cout => \freqDiv|s_divCounter[11]~49\);

-- Location: FF_X60_Y4_N29
\freqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[11]~48_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(11));

-- Location: LCCOMB_X60_Y4_N30
\freqDiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[12]~50_combout\ = (\freqDiv|s_divCounter\(12) & (\freqDiv|s_divCounter[11]~49\ $ (GND))) # (!\freqDiv|s_divCounter\(12) & (!\freqDiv|s_divCounter[11]~49\ & VCC))
-- \freqDiv|s_divCounter[12]~51\ = CARRY((\freqDiv|s_divCounter\(12) & !\freqDiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(12),
	datad => VCC,
	cin => \freqDiv|s_divCounter[11]~49\,
	combout => \freqDiv|s_divCounter[12]~50_combout\,
	cout => \freqDiv|s_divCounter[12]~51\);

-- Location: FF_X60_Y4_N31
\freqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[12]~50_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(12));

-- Location: LCCOMB_X60_Y3_N0
\freqDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[13]~52_combout\ = (\freqDiv|s_divCounter\(13) & (!\freqDiv|s_divCounter[12]~51\)) # (!\freqDiv|s_divCounter\(13) & ((\freqDiv|s_divCounter[12]~51\) # (GND)))
-- \freqDiv|s_divCounter[13]~53\ = CARRY((!\freqDiv|s_divCounter[12]~51\) # (!\freqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \freqDiv|s_divCounter[12]~51\,
	combout => \freqDiv|s_divCounter[13]~52_combout\,
	cout => \freqDiv|s_divCounter[13]~53\);

-- Location: FF_X60_Y3_N1
\freqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[13]~52_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(13));

-- Location: LCCOMB_X60_Y3_N2
\freqDiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[14]~54_combout\ = (\freqDiv|s_divCounter\(14) & (\freqDiv|s_divCounter[13]~53\ $ (GND))) # (!\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter[13]~53\ & VCC))
-- \freqDiv|s_divCounter[14]~55\ = CARRY((\freqDiv|s_divCounter\(14) & !\freqDiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(14),
	datad => VCC,
	cin => \freqDiv|s_divCounter[13]~53\,
	combout => \freqDiv|s_divCounter[14]~54_combout\,
	cout => \freqDiv|s_divCounter[14]~55\);

-- Location: FF_X59_Y4_N23
\freqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[14]~54_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(14));

-- Location: LCCOMB_X60_Y3_N4
\freqDiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[15]~56_combout\ = (\freqDiv|s_divCounter\(15) & (!\freqDiv|s_divCounter[14]~55\)) # (!\freqDiv|s_divCounter\(15) & ((\freqDiv|s_divCounter[14]~55\) # (GND)))
-- \freqDiv|s_divCounter[15]~57\ = CARRY((!\freqDiv|s_divCounter[14]~55\) # (!\freqDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(15),
	datad => VCC,
	cin => \freqDiv|s_divCounter[14]~55\,
	combout => \freqDiv|s_divCounter[15]~56_combout\,
	cout => \freqDiv|s_divCounter[15]~57\);

-- Location: FF_X59_Y4_N21
\freqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[15]~56_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(15));

-- Location: LCCOMB_X60_Y3_N6
\freqDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[16]~58_combout\ = (\freqDiv|s_divCounter\(16) & (\freqDiv|s_divCounter[15]~57\ $ (GND))) # (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter[15]~57\ & VCC))
-- \freqDiv|s_divCounter[16]~59\ = CARRY((\freqDiv|s_divCounter\(16) & !\freqDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \freqDiv|s_divCounter[15]~57\,
	combout => \freqDiv|s_divCounter[16]~58_combout\,
	cout => \freqDiv|s_divCounter[16]~59\);

-- Location: FF_X59_Y4_N17
\freqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[16]~58_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(16));

-- Location: LCCOMB_X60_Y3_N8
\freqDiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[17]~60_combout\ = (\freqDiv|s_divCounter\(17) & (!\freqDiv|s_divCounter[16]~59\)) # (!\freqDiv|s_divCounter\(17) & ((\freqDiv|s_divCounter[16]~59\) # (GND)))
-- \freqDiv|s_divCounter[17]~61\ = CARRY((!\freqDiv|s_divCounter[16]~59\) # (!\freqDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(17),
	datad => VCC,
	cin => \freqDiv|s_divCounter[16]~59\,
	combout => \freqDiv|s_divCounter[17]~60_combout\,
	cout => \freqDiv|s_divCounter[17]~61\);

-- Location: FF_X59_Y4_N9
\freqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[17]~60_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(17));

-- Location: LCCOMB_X60_Y3_N10
\freqDiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[18]~62_combout\ = (\freqDiv|s_divCounter\(18) & (\freqDiv|s_divCounter[17]~61\ $ (GND))) # (!\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter[17]~61\ & VCC))
-- \freqDiv|s_divCounter[18]~63\ = CARRY((\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datad => VCC,
	cin => \freqDiv|s_divCounter[17]~61\,
	combout => \freqDiv|s_divCounter[18]~62_combout\,
	cout => \freqDiv|s_divCounter[18]~63\);

-- Location: FF_X60_Y3_N11
\freqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[18]~62_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(18));

-- Location: LCCOMB_X60_Y3_N12
\freqDiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[19]~64_combout\ = (\freqDiv|s_divCounter\(19) & (!\freqDiv|s_divCounter[18]~63\)) # (!\freqDiv|s_divCounter\(19) & ((\freqDiv|s_divCounter[18]~63\) # (GND)))
-- \freqDiv|s_divCounter[19]~65\ = CARRY((!\freqDiv|s_divCounter[18]~63\) # (!\freqDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datad => VCC,
	cin => \freqDiv|s_divCounter[18]~63\,
	combout => \freqDiv|s_divCounter[19]~64_combout\,
	cout => \freqDiv|s_divCounter[19]~65\);

-- Location: FF_X60_Y3_N13
\freqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[19]~64_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(19));

-- Location: LCCOMB_X60_Y3_N14
\freqDiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[20]~66_combout\ = (\freqDiv|s_divCounter\(20) & (\freqDiv|s_divCounter[19]~65\ $ (GND))) # (!\freqDiv|s_divCounter\(20) & (!\freqDiv|s_divCounter[19]~65\ & VCC))
-- \freqDiv|s_divCounter[20]~67\ = CARRY((\freqDiv|s_divCounter\(20) & !\freqDiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(20),
	datad => VCC,
	cin => \freqDiv|s_divCounter[19]~65\,
	combout => \freqDiv|s_divCounter[20]~66_combout\,
	cout => \freqDiv|s_divCounter[20]~67\);

-- Location: FF_X60_Y3_N15
\freqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[20]~66_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(20));

-- Location: LCCOMB_X60_Y3_N16
\freqDiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[21]~68_combout\ = (\freqDiv|s_divCounter\(21) & (!\freqDiv|s_divCounter[20]~67\)) # (!\freqDiv|s_divCounter\(21) & ((\freqDiv|s_divCounter[20]~67\) # (GND)))
-- \freqDiv|s_divCounter[21]~69\ = CARRY((!\freqDiv|s_divCounter[20]~67\) # (!\freqDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(21),
	datad => VCC,
	cin => \freqDiv|s_divCounter[20]~67\,
	combout => \freqDiv|s_divCounter[21]~68_combout\,
	cout => \freqDiv|s_divCounter[21]~69\);

-- Location: FF_X60_Y3_N17
\freqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[21]~68_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(21));

-- Location: LCCOMB_X60_Y3_N18
\freqDiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[22]~70_combout\ = (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter[21]~69\ $ (GND))) # (!\freqDiv|s_divCounter\(22) & (!\freqDiv|s_divCounter[21]~69\ & VCC))
-- \freqDiv|s_divCounter[22]~71\ = CARRY((\freqDiv|s_divCounter\(22) & !\freqDiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(22),
	datad => VCC,
	cin => \freqDiv|s_divCounter[21]~69\,
	combout => \freqDiv|s_divCounter[22]~70_combout\,
	cout => \freqDiv|s_divCounter[22]~71\);

-- Location: FF_X60_Y3_N19
\freqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[22]~70_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(22));

-- Location: LCCOMB_X60_Y3_N20
\freqDiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[23]~72_combout\ = (\freqDiv|s_divCounter\(23) & (!\freqDiv|s_divCounter[22]~71\)) # (!\freqDiv|s_divCounter\(23) & ((\freqDiv|s_divCounter[22]~71\) # (GND)))
-- \freqDiv|s_divCounter[23]~73\ = CARRY((!\freqDiv|s_divCounter[22]~71\) # (!\freqDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(23),
	datad => VCC,
	cin => \freqDiv|s_divCounter[22]~71\,
	combout => \freqDiv|s_divCounter[23]~72_combout\,
	cout => \freqDiv|s_divCounter[23]~73\);

-- Location: FF_X60_Y3_N21
\freqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[23]~72_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(23));

-- Location: LCCOMB_X60_Y3_N22
\freqDiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[24]~74_combout\ = (\freqDiv|s_divCounter\(24) & (\freqDiv|s_divCounter[23]~73\ $ (GND))) # (!\freqDiv|s_divCounter\(24) & (!\freqDiv|s_divCounter[23]~73\ & VCC))
-- \freqDiv|s_divCounter[24]~75\ = CARRY((\freqDiv|s_divCounter\(24) & !\freqDiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datad => VCC,
	cin => \freqDiv|s_divCounter[23]~73\,
	combout => \freqDiv|s_divCounter[24]~74_combout\,
	cout => \freqDiv|s_divCounter[24]~75\);

-- Location: FF_X60_Y3_N23
\freqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[24]~74_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(24));

-- Location: LCCOMB_X60_Y3_N24
\freqDiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[25]~76_combout\ = \freqDiv|s_divCounter[24]~75\ $ (\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv|s_divCounter\(25),
	cin => \freqDiv|s_divCounter[24]~75\,
	combout => \freqDiv|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y3_N25
\freqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[25]~76_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(25));

-- Location: LCCOMB_X60_Y3_N30
\freqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~2_combout\ = (\freqDiv|s_divCounter\(19) & (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter\(20) & \freqDiv|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datab => \freqDiv|s_divCounter\(22),
	datac => \freqDiv|s_divCounter\(20),
	datad => \freqDiv|s_divCounter\(21),
	combout => \freqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X59_Y4_N4
\freqDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~2_combout\ = (((!\freqDiv|s_divCounter\(13)) # (!\freqDiv|s_divCounter\(12))) # (!\freqDiv|s_divCounter\(15))) # (!\freqDiv|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(14),
	datab => \freqDiv|s_divCounter\(15),
	datac => \freqDiv|s_divCounter\(12),
	datad => \freqDiv|s_divCounter\(13),
	combout => \freqDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y4_N0
\freqDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~0_combout\ = (!\freqDiv|s_divCounter\(10) & (!\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter\(8) & !\freqDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(10),
	datab => \freqDiv|s_divCounter\(7),
	datac => \freqDiv|s_divCounter\(8),
	datad => \freqDiv|s_divCounter\(9),
	combout => \freqDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y4_N12
\freqDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~1_combout\ = (!\freqDiv|s_divCounter\(11) & (\freqDiv|LessThan0~0_combout\ & ((!\freqDiv|clkOut~1_combout\) # (!\freqDiv|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(11),
	datab => \freqDiv|s_divCounter\(6),
	datac => \freqDiv|LessThan0~0_combout\,
	datad => \freqDiv|clkOut~1_combout\,
	combout => \freqDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y4_N24
\freqDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~3_combout\ = ((!\freqDiv|s_divCounter\(16) & ((\freqDiv|LessThan0~2_combout\) # (\freqDiv|LessThan0~1_combout\)))) # (!\freqDiv|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(17),
	datab => \freqDiv|s_divCounter\(16),
	datac => \freqDiv|LessThan0~2_combout\,
	datad => \freqDiv|LessThan0~1_combout\,
	combout => \freqDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y4_N0
\freqDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~4_combout\ = (((!\freqDiv|s_divCounter\(18) & \freqDiv|LessThan0~3_combout\)) # (!\freqDiv|clkOut~2_combout\)) # (!\freqDiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(23),
	datab => \freqDiv|s_divCounter\(18),
	datac => \freqDiv|clkOut~2_combout\,
	datad => \freqDiv|LessThan0~3_combout\,
	combout => \freqDiv|LessThan0~4_combout\);

-- Location: LCCOMB_X59_Y4_N30
\freqDiv|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~5_combout\ = (\freqDiv|s_divCounter\(25) & ((\freqDiv|s_divCounter\(24)) # (!\freqDiv|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(25),
	datac => \freqDiv|s_divCounter\(24),
	datad => \freqDiv|LessThan0~4_combout\,
	combout => \freqDiv|LessThan0~5_combout\);

-- Location: FF_X60_Y4_N7
\freqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[0]~26_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(0));

-- Location: LCCOMB_X60_Y4_N8
\freqDiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[1]~28_combout\ = (\freqDiv|s_divCounter\(1) & (!\freqDiv|s_divCounter[0]~27\)) # (!\freqDiv|s_divCounter\(1) & ((\freqDiv|s_divCounter[0]~27\) # (GND)))
-- \freqDiv|s_divCounter[1]~29\ = CARRY((!\freqDiv|s_divCounter[0]~27\) # (!\freqDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(1),
	datad => VCC,
	cin => \freqDiv|s_divCounter[0]~27\,
	combout => \freqDiv|s_divCounter[1]~28_combout\,
	cout => \freqDiv|s_divCounter[1]~29\);

-- Location: FF_X60_Y4_N9
\freqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[1]~28_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(1));

-- Location: LCCOMB_X60_Y4_N10
\freqDiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[2]~30_combout\ = (\freqDiv|s_divCounter\(2) & (\freqDiv|s_divCounter[1]~29\ $ (GND))) # (!\freqDiv|s_divCounter\(2) & (!\freqDiv|s_divCounter[1]~29\ & VCC))
-- \freqDiv|s_divCounter[2]~31\ = CARRY((\freqDiv|s_divCounter\(2) & !\freqDiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(2),
	datad => VCC,
	cin => \freqDiv|s_divCounter[1]~29\,
	combout => \freqDiv|s_divCounter[2]~30_combout\,
	cout => \freqDiv|s_divCounter[2]~31\);

-- Location: FF_X60_Y4_N11
\freqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[2]~30_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(2));

-- Location: LCCOMB_X60_Y4_N12
\freqDiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[3]~32_combout\ = (\freqDiv|s_divCounter\(3) & (!\freqDiv|s_divCounter[2]~31\)) # (!\freqDiv|s_divCounter\(3) & ((\freqDiv|s_divCounter[2]~31\) # (GND)))
-- \freqDiv|s_divCounter[3]~33\ = CARRY((!\freqDiv|s_divCounter[2]~31\) # (!\freqDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datad => VCC,
	cin => \freqDiv|s_divCounter[2]~31\,
	combout => \freqDiv|s_divCounter[3]~32_combout\,
	cout => \freqDiv|s_divCounter[3]~33\);

-- Location: FF_X60_Y4_N13
\freqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[3]~32_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(3));

-- Location: LCCOMB_X60_Y4_N14
\freqDiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[4]~34_combout\ = (\freqDiv|s_divCounter\(4) & (\freqDiv|s_divCounter[3]~33\ $ (GND))) # (!\freqDiv|s_divCounter\(4) & (!\freqDiv|s_divCounter[3]~33\ & VCC))
-- \freqDiv|s_divCounter[4]~35\ = CARRY((\freqDiv|s_divCounter\(4) & !\freqDiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(4),
	datad => VCC,
	cin => \freqDiv|s_divCounter[3]~33\,
	combout => \freqDiv|s_divCounter[4]~34_combout\,
	cout => \freqDiv|s_divCounter[4]~35\);

-- Location: FF_X60_Y4_N15
\freqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[4]~34_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(4));

-- Location: FF_X60_Y4_N17
\freqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[5]~36_combout\,
	sclr => \freqDiv|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(5));

-- Location: LCCOMB_X60_Y4_N4
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|s_divCounter\(3) & (\freqDiv|s_divCounter\(1) & (\freqDiv|s_divCounter\(0) & \freqDiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datab => \freqDiv|s_divCounter\(1),
	datac => \freqDiv|s_divCounter\(0),
	datad => \freqDiv|s_divCounter\(2),
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X60_Y4_N2
\freqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~1_combout\ = (\freqDiv|s_divCounter\(5) & (\freqDiv|clkOut~0_combout\ & \freqDiv|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datac => \freqDiv|clkOut~0_combout\,
	datad => \freqDiv|s_divCounter\(4),
	combout => \freqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y4_N28
\freqDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~4_combout\ = (\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter\(6) & (\freqDiv|s_divCounter\(12) & \freqDiv|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(14),
	datab => \freqDiv|s_divCounter\(6),
	datac => \freqDiv|s_divCounter\(12),
	datad => \freqDiv|s_divCounter\(13),
	combout => \freqDiv|clkOut~4_combout\);

-- Location: LCCOMB_X60_Y3_N28
\freqDiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~5_combout\ = (\freqDiv|s_divCounter\(24) & (\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter\(17) & !\freqDiv|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|s_divCounter\(17),
	datad => \freqDiv|s_divCounter\(15),
	combout => \freqDiv|clkOut~5_combout\);

-- Location: LCCOMB_X60_Y3_N26
\freqDiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~6_combout\ = (\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter\(23) & (\freqDiv|s_divCounter\(16) & \freqDiv|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datab => \freqDiv|s_divCounter\(23),
	datac => \freqDiv|s_divCounter\(16),
	datad => \freqDiv|clkOut~5_combout\,
	combout => \freqDiv|clkOut~6_combout\);

-- Location: LCCOMB_X59_Y4_N26
\freqDiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~7_combout\ = (\freqDiv|clkOut~2_combout\ & (\freqDiv|clkOut~4_combout\ & (\freqDiv|LessThan0~0_combout\ & \freqDiv|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~2_combout\,
	datab => \freqDiv|clkOut~4_combout\,
	datac => \freqDiv|LessThan0~0_combout\,
	datad => \freqDiv|clkOut~6_combout\,
	combout => \freqDiv|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y4_N10
\freqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~3_combout\ = ((!\freqDiv|s_divCounter\(24) & \freqDiv|LessThan0~4_combout\)) # (!\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(25),
	datac => \freqDiv|s_divCounter\(24),
	datad => \freqDiv|LessThan0~4_combout\,
	combout => \freqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y4_N18
\freqDiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~8_combout\ = (\freqDiv|clkOut~3_combout\ & ((\freqDiv|clkOut~q\) # ((\freqDiv|clkOut~1_combout\ & \freqDiv|clkOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~q\,
	datab => \freqDiv|clkOut~1_combout\,
	datac => \freqDiv|clkOut~7_combout\,
	datad => \freqDiv|clkOut~3_combout\,
	combout => \freqDiv|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y4_N2
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv|clkOut~8_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X59_Y4_N3
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G17
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

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

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

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

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X107_Y19_N16
\seqShiftUnit|s_shiftReg[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~40_combout\ = (\SW[17]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~40_combout\);

-- Location: LCCOMB_X108_Y19_N26
\seqShiftUnit|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~1_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(2)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(4),
	datad => \seqShiftUnit|s_shiftReg\(2),
	combout => \seqShiftUnit|RotateLeft0~1_combout\);

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

-- Location: LCCOMB_X108_Y19_N10
\seqShiftUnit|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~12_combout\ = (\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(4))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(4),
	datad => \seqShiftUnit|s_shiftReg\(6),
	combout => \seqShiftUnit|RotateLeft0~12_combout\);

-- Location: LCCOMB_X108_Y19_N16
\seqShiftUnit|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~13_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~8_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|RotateLeft0~8_combout\,
	datac => \SW[15]~input_o\,
	datad => \seqShiftUnit|RotateLeft0~12_combout\,
	combout => \seqShiftUnit|RotateLeft0~13_combout\);

-- Location: LCCOMB_X111_Y19_N22
\seqShiftUnit|s_shiftReg[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~37_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~37_combout\);

-- Location: LCCOMB_X111_Y19_N8
\seqShiftUnit|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~10_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(7)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|RotateLeft0~10_combout\);

-- Location: LCCOMB_X111_Y19_N18
\seqShiftUnit|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~1_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(0)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(2),
	datad => \seqShiftUnit|s_shiftReg\(0),
	combout => \seqShiftUnit|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X111_Y19_N0
\seqShiftUnit|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~11_combout\ = (\seqShiftUnit|RotateLeft0~10_combout\) # ((!\SW[15]~input_o\ & \seqShiftUnit|ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~10_combout\,
	datad => \seqShiftUnit|ShiftLeft0~1_combout\,
	combout => \seqShiftUnit|RotateLeft0~11_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X107_Y19_N10
\seqShiftUnit|s_shiftReg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~32_combout\ = (!\KEY[1]~input_o\ & \KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \KEY[2]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~32_combout\);

-- Location: LCCOMB_X111_Y19_N12
\seqShiftUnit|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight0~3_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(7))) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(7))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(7),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(6),
	combout => \seqShiftUnit|ShiftRight0~3_combout\);

-- Location: LCCOMB_X107_Y19_N12
\seqShiftUnit|s_shiftReg[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~33_combout\ = (\KEY[1]~input_o\) # ((!\KEY[2]~input_o\ & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~33_combout\);

-- Location: LCCOMB_X111_Y19_N24
\seqShiftUnit|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~8_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(7)))) # (!\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(6),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|ShiftRight1~8_combout\);

-- Location: LCCOMB_X107_Y19_N18
\seqShiftUnit|s_shiftReg[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~34_combout\ = (\KEY[1]~input_o\) # ((\KEY[2]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~34_combout\);

-- Location: LCCOMB_X111_Y19_N2
\seqShiftUnit|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~2_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(1) & (!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & (((\seqShiftUnit|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|ShiftLeft0~1_combout\,
	combout => \seqShiftUnit|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X111_Y19_N16
\seqShiftUnit|s_shiftReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~41_combout\ = (\seqShiftUnit|s_shiftReg[6]~33_combout\ & ((\seqShiftUnit|s_shiftReg[6]~34_combout\ & ((\seqShiftUnit|ShiftLeft0~2_combout\))) # (!\seqShiftUnit|s_shiftReg[6]~34_combout\ & (\seqShiftUnit|ShiftRight1~8_combout\)))) 
-- # (!\seqShiftUnit|s_shiftReg[6]~33_combout\ & (((\seqShiftUnit|s_shiftReg[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~33_combout\,
	datab => \seqShiftUnit|ShiftRight1~8_combout\,
	datac => \seqShiftUnit|s_shiftReg[6]~34_combout\,
	datad => \seqShiftUnit|ShiftLeft0~2_combout\,
	combout => \seqShiftUnit|s_shiftReg~41_combout\);

-- Location: LCCOMB_X111_Y19_N26
\seqShiftUnit|s_shiftReg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~42_combout\ = (\seqShiftUnit|s_shiftReg[6]~32_combout\ & ((\seqShiftUnit|s_shiftReg~41_combout\ & (\seqShiftUnit|s_shiftReg\(7))) # (!\seqShiftUnit|s_shiftReg~41_combout\ & ((\seqShiftUnit|ShiftRight0~3_combout\))))) # 
-- (!\seqShiftUnit|s_shiftReg[6]~32_combout\ & (((\seqShiftUnit|s_shiftReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~32_combout\,
	datab => \seqShiftUnit|s_shiftReg\(7),
	datac => \seqShiftUnit|ShiftRight0~3_combout\,
	datad => \seqShiftUnit|s_shiftReg~41_combout\,
	combout => \seqShiftUnit|s_shiftReg~42_combout\);

-- Location: LCCOMB_X107_Y19_N0
\seqShiftUnit|s_shiftReg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~31_combout\ = (\KEY[0]~input_o\ & ((\KEY[1]~input_o\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[6]~31_combout\);

-- Location: LCCOMB_X111_Y19_N14
\seqShiftUnit|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~4_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(1))) # (!\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(0),
	combout => \seqShiftUnit|RotateRight0~4_combout\);

-- Location: LCCOMB_X111_Y19_N4
\seqShiftUnit|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~5_combout\ = (\seqShiftUnit|RotateRight0~4_combout\) # (\seqShiftUnit|ShiftRight1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seqShiftUnit|RotateRight0~4_combout\,
	datad => \seqShiftUnit|ShiftRight1~8_combout\,
	combout => \seqShiftUnit|RotateRight0~5_combout\);

-- Location: LCCOMB_X111_Y19_N20
\seqShiftUnit|s_shiftReg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~43_combout\ = (\seqShiftUnit|s_shiftReg[6]~37_combout\ & (\seqShiftUnit|s_shiftReg[6]~31_combout\)) # (!\seqShiftUnit|s_shiftReg[6]~37_combout\ & ((\seqShiftUnit|s_shiftReg[6]~31_combout\ & 
-- ((\seqShiftUnit|RotateRight0~7_combout\))) # (!\seqShiftUnit|s_shiftReg[6]~31_combout\ & (\seqShiftUnit|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~37_combout\,
	datab => \seqShiftUnit|s_shiftReg[6]~31_combout\,
	datac => \seqShiftUnit|RotateRight0~5_combout\,
	datad => \seqShiftUnit|RotateRight0~7_combout\,
	combout => \seqShiftUnit|s_shiftReg~43_combout\);

-- Location: LCCOMB_X111_Y19_N6
\seqShiftUnit|s_shiftReg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~44_combout\ = (\seqShiftUnit|s_shiftReg[6]~37_combout\ & ((\seqShiftUnit|s_shiftReg~43_combout\ & (\seqShiftUnit|RotateLeft0~11_combout\)) # (!\seqShiftUnit|s_shiftReg~43_combout\ & ((\seqShiftUnit|s_shiftReg~42_combout\))))) # 
-- (!\seqShiftUnit|s_shiftReg[6]~37_combout\ & (((\seqShiftUnit|s_shiftReg~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~37_combout\,
	datab => \seqShiftUnit|RotateLeft0~11_combout\,
	datac => \seqShiftUnit|s_shiftReg~42_combout\,
	datad => \seqShiftUnit|s_shiftReg~43_combout\,
	combout => \seqShiftUnit|s_shiftReg~44_combout\);

-- Location: LCCOMB_X110_Y19_N22
\seqShiftUnit|s_shiftReg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[6]~2_combout\ = (\seqShiftUnit|s_shiftReg[6]~40_combout\ & ((\seqShiftUnit|s_shiftReg~44_combout\))) # (!\seqShiftUnit|s_shiftReg[6]~40_combout\ & (\seqShiftUnit|RotateLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~40_combout\,
	datab => \seqShiftUnit|RotateLeft0~13_combout\,
	datad => \seqShiftUnit|s_shiftReg~44_combout\,
	combout => \seqShiftUnit|s_shiftReg[6]~2_combout\);

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

-- Location: FF_X110_Y19_N23
\seqShiftUnit|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg[6]~2_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(6));

-- Location: LCCOMB_X110_Y19_N14
\seqShiftUnit|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight0~1_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(6))) # (!\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(6),
	datad => \seqShiftUnit|s_shiftReg\(5),
	combout => \seqShiftUnit|ShiftRight0~1_combout\);

-- Location: LCCOMB_X109_Y19_N14
\seqShiftUnit|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight0~2_combout\ = (\seqShiftUnit|ShiftRight0~1_combout\) # ((\SW[16]~input_o\ & \seqShiftUnit|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|ShiftRight0~1_combout\,
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|ShiftRight0~2_combout\);

-- Location: LCCOMB_X107_Y19_N20
\seqShiftUnit|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[1]~6_combout\ = (!\KEY[1]~input_o\ & (((!\KEY[0]~input_o\ & \KEY[2]~input_o\)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \KEY[2]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[1]~6_combout\);

-- Location: LCCOMB_X108_Y19_N24
\seqShiftUnit|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~2_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(3)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(1),
	datad => \seqShiftUnit|s_shiftReg\(3),
	combout => \seqShiftUnit|ShiftRight1~2_combout\);

-- Location: LCCOMB_X108_Y19_N28
\seqShiftUnit|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~6_combout\ = (\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(4))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(4),
	datad => \seqShiftUnit|s_shiftReg\(2),
	combout => \seqShiftUnit|ShiftRight1~6_combout\);

-- Location: LCCOMB_X109_Y19_N6
\seqShiftUnit|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~7_combout\ = (\SW[15]~input_o\ & ((\seqShiftUnit|ShiftRight1~6_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|ShiftRight1~2_combout\,
	datad => \seqShiftUnit|ShiftRight1~6_combout\,
	combout => \seqShiftUnit|ShiftRight1~7_combout\);

-- Location: LCCOMB_X110_Y19_N10
\seqShiftUnit|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~5_combout\ = (\seqShiftUnit|ShiftRight0~1_combout\) # ((\SW[16]~input_o\ & (!\SW[15]~input_o\ & \seqShiftUnit|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|ShiftRight0~1_combout\,
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|ShiftRight1~5_combout\);

-- Location: LCCOMB_X107_Y19_N2
\seqShiftUnit|s_shiftReg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[1]~12_combout\ = (\KEY[0]~input_o\) # ((\KEY[1]~input_o\) # (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[1]~12_combout\);

-- Location: LCCOMB_X110_Y19_N4
\seqShiftUnit|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~0_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(0))) # (!\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(0),
	datad => \seqShiftUnit|s_shiftReg\(1),
	combout => \seqShiftUnit|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X111_Y19_N28
\seqShiftUnit|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~6_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(6))) # (!\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(6),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|RotateLeft0~6_combout\);

-- Location: LCCOMB_X110_Y19_N26
\seqShiftUnit|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~7_combout\ = (\seqShiftUnit|ShiftLeft0~0_combout\) # (\seqShiftUnit|RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seqShiftUnit|ShiftLeft0~0_combout\,
	datad => \seqShiftUnit|RotateLeft0~6_combout\,
	combout => \seqShiftUnit|RotateLeft0~7_combout\);

-- Location: LCCOMB_X107_Y19_N26
\seqShiftUnit|s_shiftReg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[1]~7_combout\ = (\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[1]~7_combout\);

-- Location: LCCOMB_X111_Y19_N10
\seqShiftUnit|s_shiftReg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[1]~8_combout\ = (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\))) # (!\KEY[0]~input_o\ & (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[1]~8_combout\);

-- Location: LCCOMB_X107_Y19_N4
\seqShiftUnit|s_shiftReg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[1]~9_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \seqShiftUnit|s_shiftReg[1]~9_combout\);

-- Location: LCCOMB_X109_Y19_N12
\seqShiftUnit|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~2_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|s_shiftReg\(0))) # (!\SW[15]~input_o\ & ((\seqShiftUnit|s_shiftReg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(0),
	datad => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|RotateRight0~2_combout\);

-- Location: LCCOMB_X110_Y19_N12
\seqShiftUnit|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~3_combout\ = (\seqShiftUnit|ShiftRight0~1_combout\) # (\seqShiftUnit|RotateRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seqShiftUnit|ShiftRight0~1_combout\,
	datad => \seqShiftUnit|RotateRight0~2_combout\,
	combout => \seqShiftUnit|RotateRight0~3_combout\);

-- Location: LCCOMB_X110_Y19_N18
\seqShiftUnit|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~10_combout\ = (\seqShiftUnit|s_shiftReg[1]~8_combout\ & ((\seqShiftUnit|s_shiftReg[1]~9_combout\ & ((\seqShiftUnit|RotateRight0~3_combout\))) # (!\seqShiftUnit|s_shiftReg[1]~9_combout\ & (\seqShiftUnit|ShiftLeft0~0_combout\)))) # 
-- (!\seqShiftUnit|s_shiftReg[1]~8_combout\ & (\seqShiftUnit|s_shiftReg[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[1]~8_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~9_combout\,
	datac => \seqShiftUnit|ShiftLeft0~0_combout\,
	datad => \seqShiftUnit|RotateRight0~3_combout\,
	combout => \seqShiftUnit|s_shiftReg~10_combout\);

-- Location: LCCOMB_X110_Y19_N16
\seqShiftUnit|s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~11_combout\ = (\seqShiftUnit|s_shiftReg[1]~7_combout\ & ((\seqShiftUnit|s_shiftReg~10_combout\ & ((\seqShiftUnit|RotateLeft0~9_combout\))) # (!\seqShiftUnit|s_shiftReg~10_combout\ & (\seqShiftUnit|RotateLeft0~7_combout\)))) # 
-- (!\seqShiftUnit|s_shiftReg[1]~7_combout\ & (((\seqShiftUnit|s_shiftReg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|RotateLeft0~7_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~7_combout\,
	datac => \seqShiftUnit|RotateLeft0~9_combout\,
	datad => \seqShiftUnit|s_shiftReg~10_combout\,
	combout => \seqShiftUnit|s_shiftReg~11_combout\);

-- Location: LCCOMB_X110_Y19_N0
\seqShiftUnit|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~13_combout\ = (\seqShiftUnit|s_shiftReg[1]~12_combout\ & (((\seqShiftUnit|s_shiftReg[1]~6_combout\) # (\seqShiftUnit|s_shiftReg~11_combout\)))) # (!\seqShiftUnit|s_shiftReg[1]~12_combout\ & (\seqShiftUnit|ShiftRight1~5_combout\ & 
-- (!\seqShiftUnit|s_shiftReg[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|ShiftRight1~5_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~12_combout\,
	datac => \seqShiftUnit|s_shiftReg[1]~6_combout\,
	datad => \seqShiftUnit|s_shiftReg~11_combout\,
	combout => \seqShiftUnit|s_shiftReg~13_combout\);

-- Location: LCCOMB_X110_Y19_N6
\seqShiftUnit|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~14_combout\ = (\seqShiftUnit|s_shiftReg[1]~6_combout\ & ((\seqShiftUnit|s_shiftReg~13_combout\ & ((\seqShiftUnit|ShiftRight1~7_combout\))) # (!\seqShiftUnit|s_shiftReg~13_combout\ & (\seqShiftUnit|ShiftRight0~2_combout\)))) # 
-- (!\seqShiftUnit|s_shiftReg[1]~6_combout\ & (((\seqShiftUnit|s_shiftReg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|ShiftRight0~2_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~6_combout\,
	datac => \seqShiftUnit|ShiftRight1~7_combout\,
	datad => \seqShiftUnit|s_shiftReg~13_combout\,
	combout => \seqShiftUnit|s_shiftReg~14_combout\);

-- Location: LCCOMB_X110_Y19_N20
\seqShiftUnit|s_shiftReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~15_combout\ = (\SW[10]~input_o\ & (\SW[1]~input_o\)) # (!\SW[10]~input_o\ & ((\seqShiftUnit|s_shiftReg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~14_combout\,
	combout => \seqShiftUnit|s_shiftReg~15_combout\);

-- Location: FF_X110_Y19_N21
\seqShiftUnit|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(1));

-- Location: LCCOMB_X106_Y19_N8
\seqShiftUnit|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~0_combout\ = (\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(1))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(1),
	datad => \seqShiftUnit|s_shiftReg\(3),
	combout => \seqShiftUnit|RotateLeft0~0_combout\);

-- Location: LCCOMB_X106_Y19_N4
\seqShiftUnit|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~6_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\seqShiftUnit|ShiftLeft0~1_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~0_combout\,
	datad => \seqShiftUnit|ShiftLeft0~1_combout\,
	combout => \seqShiftUnit|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X106_Y19_N30
\seqShiftUnit|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~7_combout\ = (\seqShiftUnit|ShiftLeft0~6_combout\) # ((!\SW[17]~input_o\ & \seqShiftUnit|RotateLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \seqShiftUnit|ShiftLeft0~6_combout\,
	datad => \seqShiftUnit|RotateLeft0~14_combout\,
	combout => \seqShiftUnit|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X105_Y19_N24
\seqShiftUnit|s_shiftReg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~47_combout\ = (\KEY[2]~input_o\) # ((!\SW[16]~input_o\ & (!\SW[17]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \seqShiftUnit|s_shiftReg~47_combout\);

-- Location: LCCOMB_X105_Y19_N22
\seqShiftUnit|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~9_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(1)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(7),
	datad => \seqShiftUnit|s_shiftReg\(1),
	combout => \seqShiftUnit|RotateRight0~9_combout\);

-- Location: LCCOMB_X105_Y19_N8
\seqShiftUnit|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~10_combout\ = (\seqShiftUnit|RotateRight0~9_combout\) # ((\SW[15]~input_o\ & \seqShiftUnit|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateRight0~9_combout\,
	datad => \seqShiftUnit|RotateRight0~1_combout\,
	combout => \seqShiftUnit|RotateRight0~10_combout\);

-- Location: LCCOMB_X105_Y19_N16
\seqShiftUnit|s_shiftReg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~45_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|RotateRight0~0_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \seqShiftUnit|RotateRight0~0_combout\,
	datad => \seqShiftUnit|RotateRight0~6_combout\,
	combout => \seqShiftUnit|s_shiftReg~45_combout\);

-- Location: LCCOMB_X105_Y19_N18
\seqShiftUnit|s_shiftReg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~46_combout\ = (\KEY[0]~input_o\ & ((\seqShiftUnit|s_shiftReg~45_combout\) # ((!\SW[17]~input_o\ & \seqShiftUnit|RotateRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \seqShiftUnit|RotateRight0~10_combout\,
	datad => \seqShiftUnit|s_shiftReg~45_combout\,
	combout => \seqShiftUnit|s_shiftReg~46_combout\);

-- Location: LCCOMB_X105_Y19_N14
\seqShiftUnit|s_shiftReg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~48_combout\ = (\seqShiftUnit|s_shiftReg~46_combout\) # ((!\KEY[0]~input_o\ & (\seqShiftUnit|s_shiftReg~47_combout\ & \seqShiftUnit|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \seqShiftUnit|s_shiftReg~47_combout\,
	datac => \seqShiftUnit|s_shiftReg\(7),
	datad => \seqShiftUnit|s_shiftReg~46_combout\,
	combout => \seqShiftUnit|s_shiftReg~48_combout\);

-- Location: LCCOMB_X106_Y19_N22
\seqShiftUnit|s_shiftReg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[7]~3_combout\ = (\KEY[1]~input_o\ & (\seqShiftUnit|ShiftLeft0~7_combout\)) # (!\KEY[1]~input_o\ & ((\seqShiftUnit|s_shiftReg~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|ShiftLeft0~7_combout\,
	datab => \KEY[1]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~48_combout\,
	combout => \seqShiftUnit|s_shiftReg[7]~3_combout\);

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

-- Location: FF_X106_Y19_N23
\seqShiftUnit|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg[7]~3_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(7));

-- Location: LCCOMB_X105_Y19_N30
\seqShiftUnit|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~4_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(5)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(7),
	datad => \seqShiftUnit|s_shiftReg\(5),
	combout => \seqShiftUnit|RotateLeft0~4_combout\);

-- Location: LCCOMB_X105_Y19_N10
\seqShiftUnit|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~14_combout\ = (\SW[15]~input_o\ & ((\seqShiftUnit|RotateLeft0~12_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~4_combout\,
	datad => \seqShiftUnit|RotateLeft0~12_combout\,
	combout => \seqShiftUnit|RotateLeft0~14_combout\);

-- Location: LCCOMB_X106_Y19_N14
\seqShiftUnit|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~3_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\seqShiftUnit|ShiftLeft0~1_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~0_combout\,
	datad => \seqShiftUnit|ShiftLeft0~1_combout\,
	combout => \seqShiftUnit|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X105_Y19_N0
\seqShiftUnit|s_shiftReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~21_combout\ = (\SW[17]~input_o\ & ((\KEY[0]~input_o\) # (\seqShiftUnit|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(7),
	combout => \seqShiftUnit|s_shiftReg~21_combout\);

-- Location: LCCOMB_X108_Y19_N2
\seqShiftUnit|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~8_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\seqShiftUnit|RotateRight0~0_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \seqShiftUnit|RotateRight0~6_combout\,
	datad => \seqShiftUnit|RotateRight0~0_combout\,
	combout => \seqShiftUnit|RotateRight0~8_combout\);

-- Location: LCCOMB_X105_Y19_N26
\seqShiftUnit|s_shiftReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~22_combout\ = (\KEY[2]~input_o\) # ((!\SW[16]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \seqShiftUnit|s_shiftReg~22_combout\);

-- Location: LCCOMB_X106_Y19_N28
\seqShiftUnit|s_shiftReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~23_combout\ = (\KEY[0]~input_o\ & ((\KEY[1]~input_o\) # ((\seqShiftUnit|RotateRight0~10_combout\)))) # (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & (\seqShiftUnit|s_shiftReg~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \seqShiftUnit|s_shiftReg~22_combout\,
	datad => \seqShiftUnit|RotateRight0~10_combout\,
	combout => \seqShiftUnit|s_shiftReg~23_combout\);

-- Location: LCCOMB_X106_Y19_N18
\seqShiftUnit|s_shiftReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~24_combout\ = (\seqShiftUnit|s_shiftReg~21_combout\ & ((\seqShiftUnit|s_shiftReg~23_combout\) # ((!\KEY[1]~input_o\ & \seqShiftUnit|RotateRight0~8_combout\)))) # (!\seqShiftUnit|s_shiftReg~21_combout\ & (!\KEY[1]~input_o\ & 
-- (\seqShiftUnit|RotateRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg~21_combout\,
	datab => \KEY[1]~input_o\,
	datac => \seqShiftUnit|RotateRight0~8_combout\,
	datad => \seqShiftUnit|s_shiftReg~23_combout\,
	combout => \seqShiftUnit|s_shiftReg~24_combout\);

-- Location: LCCOMB_X106_Y19_N0
\seqShiftUnit|s_shiftReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~25_combout\ = (\KEY[1]~input_o\ & ((\seqShiftUnit|ShiftLeft0~3_combout\) # ((\seqShiftUnit|RotateLeft0~14_combout\ & \seqShiftUnit|s_shiftReg~24_combout\)))) # (!\KEY[1]~input_o\ & (((\seqShiftUnit|s_shiftReg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|RotateLeft0~14_combout\,
	datab => \KEY[1]~input_o\,
	datac => \seqShiftUnit|ShiftLeft0~3_combout\,
	datad => \seqShiftUnit|s_shiftReg~24_combout\,
	combout => \seqShiftUnit|s_shiftReg~25_combout\);

-- Location: LCCOMB_X106_Y19_N24
\seqShiftUnit|s_shiftReg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~26_combout\ = (\SW[10]~input_o\ & (\SW[3]~input_o\)) # (!\SW[10]~input_o\ & ((\seqShiftUnit|s_shiftReg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~25_combout\,
	combout => \seqShiftUnit|s_shiftReg~26_combout\);

-- Location: FF_X106_Y19_N25
\seqShiftUnit|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(3));

-- Location: LCCOMB_X108_Y19_N12
\seqShiftUnit|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~8_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(3)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(5),
	datad => \seqShiftUnit|s_shiftReg\(3),
	combout => \seqShiftUnit|RotateLeft0~8_combout\);

-- Location: LCCOMB_X108_Y19_N30
\seqShiftUnit|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~9_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~1_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~1_combout\,
	datad => \seqShiftUnit|RotateLeft0~8_combout\,
	combout => \seqShiftUnit|RotateLeft0~9_combout\);

-- Location: LCCOMB_X110_Y19_N8
\seqShiftUnit|s_shiftReg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~35_combout\ = (\seqShiftUnit|s_shiftReg[6]~34_combout\ & (((\seqShiftUnit|ShiftLeft0~0_combout\)) # (!\seqShiftUnit|s_shiftReg[6]~33_combout\))) # (!\seqShiftUnit|s_shiftReg[6]~34_combout\ & 
-- (\seqShiftUnit|s_shiftReg[6]~33_combout\ & ((\seqShiftUnit|ShiftRight1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~34_combout\,
	datab => \seqShiftUnit|s_shiftReg[6]~33_combout\,
	datac => \seqShiftUnit|ShiftLeft0~0_combout\,
	datad => \seqShiftUnit|ShiftRight1~5_combout\,
	combout => \seqShiftUnit|s_shiftReg~35_combout\);

-- Location: LCCOMB_X110_Y19_N30
\seqShiftUnit|s_shiftReg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~36_combout\ = (\seqShiftUnit|s_shiftReg[6]~32_combout\ & ((\seqShiftUnit|s_shiftReg~35_combout\ & (\seqShiftUnit|s_shiftReg\(7))) # (!\seqShiftUnit|s_shiftReg~35_combout\ & ((\seqShiftUnit|ShiftRight0~2_combout\))))) # 
-- (!\seqShiftUnit|s_shiftReg[6]~32_combout\ & (((\seqShiftUnit|s_shiftReg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~32_combout\,
	datab => \seqShiftUnit|s_shiftReg\(7),
	datac => \seqShiftUnit|s_shiftReg~35_combout\,
	datad => \seqShiftUnit|ShiftRight0~2_combout\,
	combout => \seqShiftUnit|s_shiftReg~36_combout\);

-- Location: LCCOMB_X110_Y19_N28
\seqShiftUnit|s_shiftReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~38_combout\ = (\seqShiftUnit|s_shiftReg[6]~31_combout\ & (\seqShiftUnit|s_shiftReg[6]~37_combout\)) # (!\seqShiftUnit|s_shiftReg[6]~31_combout\ & ((\seqShiftUnit|s_shiftReg[6]~37_combout\ & (\seqShiftUnit|s_shiftReg~36_combout\)) 
-- # (!\seqShiftUnit|s_shiftReg[6]~37_combout\ & ((\seqShiftUnit|RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~31_combout\,
	datab => \seqShiftUnit|s_shiftReg[6]~37_combout\,
	datac => \seqShiftUnit|s_shiftReg~36_combout\,
	datad => \seqShiftUnit|RotateRight0~3_combout\,
	combout => \seqShiftUnit|s_shiftReg~38_combout\);

-- Location: LCCOMB_X110_Y19_N2
\seqShiftUnit|s_shiftReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~39_combout\ = (\seqShiftUnit|s_shiftReg[6]~31_combout\ & ((\seqShiftUnit|s_shiftReg~38_combout\ & ((\seqShiftUnit|RotateLeft0~7_combout\))) # (!\seqShiftUnit|s_shiftReg~38_combout\ & (\seqShiftUnit|ShiftRight1~7_combout\)))) # 
-- (!\seqShiftUnit|s_shiftReg[6]~31_combout\ & (((\seqShiftUnit|s_shiftReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~31_combout\,
	datab => \seqShiftUnit|ShiftRight1~7_combout\,
	datac => \seqShiftUnit|RotateLeft0~7_combout\,
	datad => \seqShiftUnit|s_shiftReg~38_combout\,
	combout => \seqShiftUnit|s_shiftReg~39_combout\);

-- Location: LCCOMB_X110_Y19_N24
\seqShiftUnit|s_shiftReg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[5]~1_combout\ = (\seqShiftUnit|s_shiftReg[6]~40_combout\ & ((\seqShiftUnit|s_shiftReg~39_combout\))) # (!\seqShiftUnit|s_shiftReg[6]~40_combout\ & (\seqShiftUnit|RotateLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[6]~40_combout\,
	datab => \seqShiftUnit|RotateLeft0~9_combout\,
	datad => \seqShiftUnit|s_shiftReg~39_combout\,
	combout => \seqShiftUnit|s_shiftReg[5]~1_combout\);

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

-- Location: FF_X110_Y19_N25
\seqShiftUnit|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg[5]~1_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(5));

-- Location: LCCOMB_X108_Y19_N14
\seqShiftUnit|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~6_combout\ = (\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(5))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(5),
	datad => \seqShiftUnit|s_shiftReg\(3),
	combout => \seqShiftUnit|RotateRight0~6_combout\);

-- Location: LCCOMB_X108_Y19_N20
\seqShiftUnit|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~7_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|RotateRight0~6_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|ShiftRight1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateRight0~6_combout\,
	datad => \seqShiftUnit|ShiftRight1~6_combout\,
	combout => \seqShiftUnit|RotateRight0~7_combout\);

-- Location: LCCOMB_X109_Y19_N22
\seqShiftUnit|s_shiftReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~18_combout\ = (\seqShiftUnit|s_shiftReg[1]~6_combout\ & ((\seqShiftUnit|ShiftRight0~3_combout\) # ((\seqShiftUnit|s_shiftReg[1]~12_combout\)))) # (!\seqShiftUnit|s_shiftReg[1]~6_combout\ & (((\seqShiftUnit|ShiftRight1~8_combout\ & 
-- !\seqShiftUnit|s_shiftReg[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[1]~6_combout\,
	datab => \seqShiftUnit|ShiftRight0~3_combout\,
	datac => \seqShiftUnit|ShiftRight1~8_combout\,
	datad => \seqShiftUnit|s_shiftReg[1]~12_combout\,
	combout => \seqShiftUnit|s_shiftReg~18_combout\);

-- Location: LCCOMB_X111_Y19_N30
\seqShiftUnit|s_shiftReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~16_combout\ = (\seqShiftUnit|s_shiftReg[1]~9_combout\ & (((\seqShiftUnit|RotateRight0~5_combout\)) # (!\seqShiftUnit|s_shiftReg[1]~8_combout\))) # (!\seqShiftUnit|s_shiftReg[1]~9_combout\ & (\seqShiftUnit|s_shiftReg[1]~8_combout\ 
-- & ((\seqShiftUnit|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|s_shiftReg[1]~9_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~8_combout\,
	datac => \seqShiftUnit|RotateRight0~5_combout\,
	datad => \seqShiftUnit|ShiftLeft0~2_combout\,
	combout => \seqShiftUnit|s_shiftReg~16_combout\);

-- Location: LCCOMB_X109_Y19_N24
\seqShiftUnit|s_shiftReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~17_combout\ = (\seqShiftUnit|s_shiftReg[1]~7_combout\ & ((\seqShiftUnit|s_shiftReg~16_combout\ & (\seqShiftUnit|RotateLeft0~13_combout\)) # (!\seqShiftUnit|s_shiftReg~16_combout\ & ((\seqShiftUnit|RotateLeft0~11_combout\))))) # 
-- (!\seqShiftUnit|s_shiftReg[1]~7_combout\ & (((\seqShiftUnit|s_shiftReg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|RotateLeft0~13_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~7_combout\,
	datac => \seqShiftUnit|RotateLeft0~11_combout\,
	datad => \seqShiftUnit|s_shiftReg~16_combout\,
	combout => \seqShiftUnit|s_shiftReg~17_combout\);

-- Location: LCCOMB_X109_Y19_N16
\seqShiftUnit|s_shiftReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~19_combout\ = (\seqShiftUnit|s_shiftReg[1]~12_combout\ & ((\seqShiftUnit|s_shiftReg~18_combout\ & (\seqShiftUnit|RotateRight0~7_combout\)) # (!\seqShiftUnit|s_shiftReg~18_combout\ & ((\seqShiftUnit|s_shiftReg~17_combout\))))) # 
-- (!\seqShiftUnit|s_shiftReg[1]~12_combout\ & (((\seqShiftUnit|s_shiftReg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|RotateRight0~7_combout\,
	datab => \seqShiftUnit|s_shiftReg[1]~12_combout\,
	datac => \seqShiftUnit|s_shiftReg~18_combout\,
	datad => \seqShiftUnit|s_shiftReg~17_combout\,
	combout => \seqShiftUnit|s_shiftReg~19_combout\);

-- Location: LCCOMB_X109_Y19_N28
\seqShiftUnit|s_shiftReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~20_combout\ = (\SW[10]~input_o\ & (\SW[2]~input_o\)) # (!\SW[10]~input_o\ & ((\seqShiftUnit|s_shiftReg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~19_combout\,
	combout => \seqShiftUnit|s_shiftReg~20_combout\);

-- Location: FF_X109_Y19_N29
\seqShiftUnit|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(2));

-- Location: LCCOMB_X106_Y19_N2
\seqShiftUnit|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~1_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(2)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seqShiftUnit|s_shiftReg\(0),
	datac => \SW[16]~input_o\,
	datad => \seqShiftUnit|s_shiftReg\(2),
	combout => \seqShiftUnit|RotateRight0~1_combout\);

-- Location: LCCOMB_X107_Y19_N28
\seqShiftUnit|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~3_combout\ = (\SW[15]~input_o\ & ((\seqShiftUnit|ShiftRight1~2_combout\))) # (!\SW[15]~input_o\ & (\seqShiftUnit|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateRight0~1_combout\,
	datad => \seqShiftUnit|ShiftRight1~2_combout\,
	combout => \seqShiftUnit|ShiftRight1~3_combout\);

-- Location: LCCOMB_X107_Y19_N8
\seqShiftUnit|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~11_combout\ = (\SW[17]~input_o\ & ((\seqShiftUnit|ShiftRight1~3_combout\))) # (!\SW[17]~input_o\ & (\seqShiftUnit|ShiftRight1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seqShiftUnit|ShiftRight1~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \seqShiftUnit|ShiftRight1~3_combout\,
	combout => \seqShiftUnit|RotateRight0~11_combout\);

-- Location: LCCOMB_X106_Y19_N10
\seqShiftUnit|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~4_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~0_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|RotateLeft0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~0_combout\,
	datad => \seqShiftUnit|RotateLeft0~1_combout\,
	combout => \seqShiftUnit|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X105_Y19_N12
\seqShiftUnit|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~3_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(6))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(6),
	datad => \seqShiftUnit|s_shiftReg\(0),
	combout => \seqShiftUnit|RotateLeft0~3_combout\);

-- Location: LCCOMB_X105_Y19_N20
\seqShiftUnit|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~5_combout\ = (\seqShiftUnit|RotateLeft0~3_combout\) # ((\SW[15]~input_o\ & \seqShiftUnit|RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~4_combout\,
	datad => \seqShiftUnit|RotateLeft0~3_combout\,
	combout => \seqShiftUnit|RotateLeft0~5_combout\);

-- Location: LCCOMB_X106_Y19_N6
\seqShiftUnit|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~15_combout\ = (\seqShiftUnit|ShiftLeft0~4_combout\) # ((\SW[17]~input_o\ & \seqShiftUnit|RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \seqShiftUnit|ShiftLeft0~4_combout\,
	datad => \seqShiftUnit|RotateLeft0~5_combout\,
	combout => \seqShiftUnit|RotateLeft0~15_combout\);

-- Location: LCCOMB_X107_Y19_N30
\seqShiftUnit|s_shiftReg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~27_combout\ = (\SW[17]~input_o\ & (\seqShiftUnit|s_shiftReg\(7) & (\KEY[2]~input_o\))) # (!\SW[17]~input_o\ & (((\seqShiftUnit|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(7),
	datac => \KEY[2]~input_o\,
	datad => \seqShiftUnit|ShiftRight1~1_combout\,
	combout => \seqShiftUnit|s_shiftReg~27_combout\);

-- Location: LCCOMB_X105_Y19_N6
\seqShiftUnit|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight0~0_combout\ = (!\SW[16]~input_o\ & !\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \seqShiftUnit|ShiftRight0~0_combout\);

-- Location: LCCOMB_X106_Y19_N12
\seqShiftUnit|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftLeft0~5_combout\ = (\seqShiftUnit|ShiftLeft0~4_combout\) # ((\SW[17]~input_o\ & (\seqShiftUnit|s_shiftReg\(0) & \seqShiftUnit|ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \seqShiftUnit|s_shiftReg\(0),
	datac => \seqShiftUnit|ShiftRight0~0_combout\,
	datad => \seqShiftUnit|ShiftLeft0~4_combout\,
	combout => \seqShiftUnit|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X107_Y19_N24
\seqShiftUnit|s_shiftReg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~28_combout\ = (\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # ((\seqShiftUnit|ShiftLeft0~5_combout\)))) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & (\seqShiftUnit|s_shiftReg~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \seqShiftUnit|s_shiftReg~27_combout\,
	datad => \seqShiftUnit|ShiftLeft0~5_combout\,
	combout => \seqShiftUnit|s_shiftReg~28_combout\);

-- Location: LCCOMB_X107_Y19_N14
\seqShiftUnit|s_shiftReg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~29_combout\ = (\KEY[0]~input_o\ & ((\seqShiftUnit|s_shiftReg~28_combout\ & ((\seqShiftUnit|RotateLeft0~15_combout\))) # (!\seqShiftUnit|s_shiftReg~28_combout\ & (\seqShiftUnit|RotateRight0~11_combout\)))) # (!\KEY[0]~input_o\ & 
-- (((\seqShiftUnit|s_shiftReg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \seqShiftUnit|RotateRight0~11_combout\,
	datac => \seqShiftUnit|RotateLeft0~15_combout\,
	datad => \seqShiftUnit|s_shiftReg~28_combout\,
	combout => \seqShiftUnit|s_shiftReg~29_combout\);

-- Location: LCCOMB_X108_Y19_N4
\seqShiftUnit|s_shiftReg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~30_combout\ = (\SW[10]~input_o\ & (\SW[4]~input_o\)) # (!\SW[10]~input_o\ & ((\seqShiftUnit|s_shiftReg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~29_combout\,
	combout => \seqShiftUnit|s_shiftReg~30_combout\);

-- Location: FF_X108_Y19_N5
\seqShiftUnit|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(4));

-- Location: LCCOMB_X108_Y19_N8
\seqShiftUnit|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateRight0~0_combout\ = (\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(6)))) # (!\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(4),
	datad => \seqShiftUnit|s_shiftReg\(6),
	combout => \seqShiftUnit|RotateRight0~0_combout\);

-- Location: LCCOMB_X108_Y19_N18
\seqShiftUnit|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~0_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\seqShiftUnit|s_shiftReg\(7))) # (!\SW[16]~input_o\ & ((\seqShiftUnit|s_shiftReg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|s_shiftReg\(7),
	datad => \seqShiftUnit|s_shiftReg\(5),
	combout => \seqShiftUnit|ShiftRight1~0_combout\);

-- Location: LCCOMB_X108_Y19_N22
\seqShiftUnit|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~1_combout\ = (\seqShiftUnit|ShiftRight1~0_combout\) # ((!\SW[15]~input_o\ & \seqShiftUnit|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateRight0~0_combout\,
	datad => \seqShiftUnit|ShiftRight1~0_combout\,
	combout => \seqShiftUnit|ShiftRight1~1_combout\);

-- Location: LCCOMB_X107_Y19_N6
\seqShiftUnit|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|ShiftRight1~4_combout\ = (\SW[17]~input_o\ & (\seqShiftUnit|ShiftRight1~1_combout\)) # (!\SW[17]~input_o\ & ((\seqShiftUnit|ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seqShiftUnit|ShiftRight1~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \seqShiftUnit|ShiftRight1~3_combout\,
	combout => \seqShiftUnit|ShiftRight1~4_combout\);

-- Location: LCCOMB_X106_Y19_N26
\seqShiftUnit|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|RotateLeft0~2_combout\ = (\SW[15]~input_o\ & (\seqShiftUnit|RotateLeft0~0_combout\)) # (!\SW[15]~input_o\ & ((\seqShiftUnit|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~0_combout\,
	datad => \seqShiftUnit|RotateLeft0~1_combout\,
	combout => \seqShiftUnit|RotateLeft0~2_combout\);

-- Location: LCCOMB_X105_Y19_N28
\seqShiftUnit|s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~4_combout\ = (\KEY[0]~input_o\ & (((\seqShiftUnit|RotateLeft0~5_combout\)))) # (!\KEY[0]~input_o\ & (\seqShiftUnit|ShiftRight0~0_combout\ & (\seqShiftUnit|s_shiftReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|ShiftRight0~0_combout\,
	datab => \seqShiftUnit|s_shiftReg\(0),
	datac => \KEY[0]~input_o\,
	datad => \seqShiftUnit|RotateLeft0~5_combout\,
	combout => \seqShiftUnit|s_shiftReg~4_combout\);

-- Location: LCCOMB_X106_Y19_N20
\seqShiftUnit|s_shiftReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg~5_combout\ = (\SW[17]~input_o\ & (\KEY[0]~input_o\ & (\seqShiftUnit|RotateLeft0~2_combout\))) # (!\SW[17]~input_o\ & (((\seqShiftUnit|s_shiftReg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \seqShiftUnit|RotateLeft0~2_combout\,
	datad => \seqShiftUnit|s_shiftReg~4_combout\,
	combout => \seqShiftUnit|s_shiftReg~5_combout\);

-- Location: LCCOMB_X106_Y19_N16
\seqShiftUnit|s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqShiftUnit|s_shiftReg[0]~0_combout\ = (\KEY[1]~input_o\ & ((\seqShiftUnit|s_shiftReg~5_combout\))) # (!\KEY[1]~input_o\ & (\seqShiftUnit|ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqShiftUnit|ShiftRight1~4_combout\,
	datab => \KEY[1]~input_o\,
	datad => \seqShiftUnit|s_shiftReg~5_combout\,
	combout => \seqShiftUnit|s_shiftReg[0]~0_combout\);

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

-- Location: FF_X106_Y19_N17
\seqShiftUnit|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \seqShiftUnit|s_shiftReg[0]~0_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqShiftUnit|s_shiftReg\(0));

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

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


