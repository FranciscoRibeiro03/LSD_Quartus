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

-- DATE "05/31/2022 10:39:50"

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

ENTITY 	SeqDetector IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[23]~74\ : std_logic;
SIGNAL \clk_divider|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[24]~76\ : std_logic;
SIGNAL \clk_divider|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[25]~78\ : std_logic;
SIGNAL \clk_divider|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~7_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~1_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~4_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~5_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~6_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~8_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[0]~28\ : std_logic;
SIGNAL \clk_divider|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[1]~30\ : std_logic;
SIGNAL \clk_divider|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[2]~32\ : std_logic;
SIGNAL \clk_divider|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[3]~34\ : std_logic;
SIGNAL \clk_divider|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[4]~36\ : std_logic;
SIGNAL \clk_divider|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[5]~38\ : std_logic;
SIGNAL \clk_divider|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[6]~40\ : std_logic;
SIGNAL \clk_divider|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[7]~42\ : std_logic;
SIGNAL \clk_divider|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[8]~44\ : std_logic;
SIGNAL \clk_divider|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[9]~46\ : std_logic;
SIGNAL \clk_divider|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[10]~48\ : std_logic;
SIGNAL \clk_divider|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[11]~50\ : std_logic;
SIGNAL \clk_divider|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[12]~52\ : std_logic;
SIGNAL \clk_divider|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[13]~54\ : std_logic;
SIGNAL \clk_divider|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[14]~56\ : std_logic;
SIGNAL \clk_divider|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[15]~58\ : std_logic;
SIGNAL \clk_divider|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[16]~60\ : std_logic;
SIGNAL \clk_divider|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[17]~62\ : std_logic;
SIGNAL \clk_divider|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[18]~64\ : std_logic;
SIGNAL \clk_divider|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[19]~66\ : std_logic;
SIGNAL \clk_divider|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[20]~68\ : std_logic;
SIGNAL \clk_divider|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[21]~70\ : std_logic;
SIGNAL \clk_divider|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[22]~72\ : std_logic;
SIGNAL \clk_divider|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~0_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~2_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~3_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~4_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~5_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~6_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~7_combout\ : std_logic;
SIGNAL \clk_divider|LessThan1~8_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \clk_divider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \fsm|s_currentState.B~q\ : std_logic;
SIGNAL \fsm|s_nextState.C~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.C~q\ : std_logic;
SIGNAL \fsm|s_nextState.D~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.D~q\ : std_logic;
SIGNAL \fsm|Yout~1_combout\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.A~q\ : std_logic;
SIGNAL \sevenSeg|decOut_n~0_combout\ : std_logic;
SIGNAL \sevenSeg|decOut_n~1_combout\ : std_logic;
SIGNAL \sevenSeg|Equal3~0_combout\ : std_logic;
SIGNAL \sevenSeg|decOut_n~2_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \fsm|ALT_INV_s_currentState.A~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_divider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|clkOut~q\);
\fsm|ALT_INV_s_currentState.A~q\ <= NOT \fsm|s_currentState.A~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_divider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Yout~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSeg|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSeg|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSeg|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_s_currentState.A~q\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|s_currentState.D~q\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSeg|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X113_Y44_N6
\clk_divider|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[0]~27_combout\ = \clk_divider|s_divCounter\(0) $ (VCC)
-- \clk_divider|s_divCounter[0]~28\ = CARRY(\clk_divider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(0),
	datad => VCC,
	combout => \clk_divider|s_divCounter[0]~27_combout\,
	cout => \clk_divider|s_divCounter[0]~28\);

-- Location: LCCOMB_X113_Y43_N28
\clk_divider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~0_combout\ = (!\clk_divider|s_divCounter\(23) & (((!\clk_divider|s_divCounter\(21)) # (!\clk_divider|s_divCounter\(20))) # (!\clk_divider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(23),
	datab => \clk_divider|s_divCounter\(22),
	datac => \clk_divider|s_divCounter\(20),
	datad => \clk_divider|s_divCounter\(21),
	combout => \clk_divider|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y43_N20
\clk_divider|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[23]~73_combout\ = (\clk_divider|s_divCounter\(23) & (!\clk_divider|s_divCounter[22]~72\)) # (!\clk_divider|s_divCounter\(23) & ((\clk_divider|s_divCounter[22]~72\) # (GND)))
-- \clk_divider|s_divCounter[23]~74\ = CARRY((!\clk_divider|s_divCounter[22]~72\) # (!\clk_divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(23),
	datad => VCC,
	cin => \clk_divider|s_divCounter[22]~72\,
	combout => \clk_divider|s_divCounter[23]~73_combout\,
	cout => \clk_divider|s_divCounter[23]~74\);

-- Location: LCCOMB_X113_Y43_N22
\clk_divider|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[24]~75_combout\ = (\clk_divider|s_divCounter\(24) & (\clk_divider|s_divCounter[23]~74\ $ (GND))) # (!\clk_divider|s_divCounter\(24) & (!\clk_divider|s_divCounter[23]~74\ & VCC))
-- \clk_divider|s_divCounter[24]~76\ = CARRY((\clk_divider|s_divCounter\(24) & !\clk_divider|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(24),
	datad => VCC,
	cin => \clk_divider|s_divCounter[23]~74\,
	combout => \clk_divider|s_divCounter[24]~75_combout\,
	cout => \clk_divider|s_divCounter[24]~76\);

-- Location: FF_X113_Y43_N23
\clk_divider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[24]~75_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(24));

-- Location: LCCOMB_X113_Y43_N24
\clk_divider|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[25]~77_combout\ = (\clk_divider|s_divCounter\(25) & (!\clk_divider|s_divCounter[24]~76\)) # (!\clk_divider|s_divCounter\(25) & ((\clk_divider|s_divCounter[24]~76\) # (GND)))
-- \clk_divider|s_divCounter[25]~78\ = CARRY((!\clk_divider|s_divCounter[24]~76\) # (!\clk_divider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(25),
	datad => VCC,
	cin => \clk_divider|s_divCounter[24]~76\,
	combout => \clk_divider|s_divCounter[25]~77_combout\,
	cout => \clk_divider|s_divCounter[25]~78\);

-- Location: FF_X113_Y43_N25
\clk_divider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[25]~77_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(25));

-- Location: LCCOMB_X113_Y43_N26
\clk_divider|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[26]~79_combout\ = \clk_divider|s_divCounter\(26) $ (!\clk_divider|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(26),
	cin => \clk_divider|s_divCounter[25]~78\,
	combout => \clk_divider|s_divCounter[26]~79_combout\);

-- Location: FF_X113_Y43_N27
\clk_divider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[26]~79_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(26));

-- Location: LCCOMB_X114_Y44_N26
\clk_divider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~1_combout\ = ((!\clk_divider|s_divCounter\(24)) # (!\clk_divider|s_divCounter\(25))) # (!\clk_divider|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(26),
	datab => \clk_divider|s_divCounter\(25),
	datad => \clk_divider|s_divCounter\(24),
	combout => \clk_divider|LessThan0~1_combout\);

-- Location: LCCOMB_X114_Y44_N4
\clk_divider|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~7_combout\ = (!\clk_divider|s_divCounter\(19) & (!\clk_divider|s_divCounter\(18) & !\clk_divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(19),
	datab => \clk_divider|s_divCounter\(18),
	datad => \clk_divider|s_divCounter\(23),
	combout => \clk_divider|LessThan0~7_combout\);

-- Location: LCCOMB_X114_Y44_N22
\clk_divider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~2_combout\ = (((!\clk_divider|s_divCounter\(14) & !\clk_divider|s_divCounter\(15))) # (!\clk_divider|s_divCounter\(16))) # (!\clk_divider|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(17),
	datab => \clk_divider|s_divCounter\(14),
	datac => \clk_divider|s_divCounter\(15),
	datad => \clk_divider|s_divCounter\(16),
	combout => \clk_divider|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y44_N0
\clk_divider|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~1_combout\ = (\clk_divider|s_divCounter\(3) & (\clk_divider|s_divCounter\(0) & (\clk_divider|s_divCounter\(1) & \clk_divider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(3),
	datab => \clk_divider|s_divCounter\(0),
	datac => \clk_divider|s_divCounter\(1),
	datad => \clk_divider|s_divCounter\(2),
	combout => \clk_divider|LessThan1~1_combout\);

-- Location: LCCOMB_X113_Y44_N4
\clk_divider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~3_combout\ = (\clk_divider|s_divCounter\(6)) # ((\clk_divider|s_divCounter\(5) & (\clk_divider|s_divCounter\(4) & \clk_divider|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(5),
	datab => \clk_divider|s_divCounter\(6),
	datac => \clk_divider|s_divCounter\(4),
	datad => \clk_divider|LessThan1~1_combout\,
	combout => \clk_divider|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y44_N18
\clk_divider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~4_combout\ = (\clk_divider|s_divCounter\(10)) # ((\clk_divider|s_divCounter\(8) & ((\clk_divider|LessThan0~3_combout\) # (\clk_divider|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(10),
	datab => \clk_divider|s_divCounter\(8),
	datac => \clk_divider|LessThan0~3_combout\,
	datad => \clk_divider|s_divCounter\(7),
	combout => \clk_divider|LessThan0~4_combout\);

-- Location: LCCOMB_X114_Y44_N2
\clk_divider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~5_combout\ = (((!\clk_divider|s_divCounter\(9) & !\clk_divider|LessThan0~4_combout\)) # (!\clk_divider|s_divCounter\(11))) # (!\clk_divider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(9),
	datab => \clk_divider|s_divCounter\(12),
	datac => \clk_divider|s_divCounter\(11),
	datad => \clk_divider|LessThan0~4_combout\,
	combout => \clk_divider|LessThan0~5_combout\);

-- Location: LCCOMB_X114_Y44_N12
\clk_divider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~6_combout\ = (\clk_divider|LessThan0~2_combout\) # ((!\clk_divider|s_divCounter\(15) & (!\clk_divider|s_divCounter\(13) & \clk_divider|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(15),
	datab => \clk_divider|s_divCounter\(13),
	datac => \clk_divider|LessThan0~2_combout\,
	datad => \clk_divider|LessThan0~5_combout\,
	combout => \clk_divider|LessThan0~6_combout\);

-- Location: LCCOMB_X114_Y44_N30
\clk_divider|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~8_combout\ = (!\clk_divider|LessThan0~0_combout\ & (!\clk_divider|LessThan0~1_combout\ & ((!\clk_divider|LessThan0~6_combout\) # (!\clk_divider|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|LessThan0~0_combout\,
	datab => \clk_divider|LessThan0~1_combout\,
	datac => \clk_divider|LessThan0~7_combout\,
	datad => \clk_divider|LessThan0~6_combout\,
	combout => \clk_divider|LessThan0~8_combout\);

-- Location: FF_X113_Y44_N7
\clk_divider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[0]~27_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(0));

-- Location: LCCOMB_X113_Y44_N8
\clk_divider|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[1]~29_combout\ = (\clk_divider|s_divCounter\(1) & (!\clk_divider|s_divCounter[0]~28\)) # (!\clk_divider|s_divCounter\(1) & ((\clk_divider|s_divCounter[0]~28\) # (GND)))
-- \clk_divider|s_divCounter[1]~30\ = CARRY((!\clk_divider|s_divCounter[0]~28\) # (!\clk_divider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(1),
	datad => VCC,
	cin => \clk_divider|s_divCounter[0]~28\,
	combout => \clk_divider|s_divCounter[1]~29_combout\,
	cout => \clk_divider|s_divCounter[1]~30\);

-- Location: FF_X113_Y44_N9
\clk_divider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[1]~29_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(1));

-- Location: LCCOMB_X113_Y44_N10
\clk_divider|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[2]~31_combout\ = (\clk_divider|s_divCounter\(2) & (\clk_divider|s_divCounter[1]~30\ $ (GND))) # (!\clk_divider|s_divCounter\(2) & (!\clk_divider|s_divCounter[1]~30\ & VCC))
-- \clk_divider|s_divCounter[2]~32\ = CARRY((\clk_divider|s_divCounter\(2) & !\clk_divider|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(2),
	datad => VCC,
	cin => \clk_divider|s_divCounter[1]~30\,
	combout => \clk_divider|s_divCounter[2]~31_combout\,
	cout => \clk_divider|s_divCounter[2]~32\);

-- Location: FF_X113_Y44_N11
\clk_divider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[2]~31_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(2));

-- Location: LCCOMB_X113_Y44_N12
\clk_divider|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[3]~33_combout\ = (\clk_divider|s_divCounter\(3) & (!\clk_divider|s_divCounter[2]~32\)) # (!\clk_divider|s_divCounter\(3) & ((\clk_divider|s_divCounter[2]~32\) # (GND)))
-- \clk_divider|s_divCounter[3]~34\ = CARRY((!\clk_divider|s_divCounter[2]~32\) # (!\clk_divider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(3),
	datad => VCC,
	cin => \clk_divider|s_divCounter[2]~32\,
	combout => \clk_divider|s_divCounter[3]~33_combout\,
	cout => \clk_divider|s_divCounter[3]~34\);

-- Location: FF_X113_Y44_N13
\clk_divider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[3]~33_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(3));

-- Location: LCCOMB_X113_Y44_N14
\clk_divider|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[4]~35_combout\ = (\clk_divider|s_divCounter\(4) & (\clk_divider|s_divCounter[3]~34\ $ (GND))) # (!\clk_divider|s_divCounter\(4) & (!\clk_divider|s_divCounter[3]~34\ & VCC))
-- \clk_divider|s_divCounter[4]~36\ = CARRY((\clk_divider|s_divCounter\(4) & !\clk_divider|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(4),
	datad => VCC,
	cin => \clk_divider|s_divCounter[3]~34\,
	combout => \clk_divider|s_divCounter[4]~35_combout\,
	cout => \clk_divider|s_divCounter[4]~36\);

-- Location: FF_X113_Y44_N15
\clk_divider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[4]~35_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(4));

-- Location: LCCOMB_X113_Y44_N16
\clk_divider|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[5]~37_combout\ = (\clk_divider|s_divCounter\(5) & (!\clk_divider|s_divCounter[4]~36\)) # (!\clk_divider|s_divCounter\(5) & ((\clk_divider|s_divCounter[4]~36\) # (GND)))
-- \clk_divider|s_divCounter[5]~38\ = CARRY((!\clk_divider|s_divCounter[4]~36\) # (!\clk_divider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(5),
	datad => VCC,
	cin => \clk_divider|s_divCounter[4]~36\,
	combout => \clk_divider|s_divCounter[5]~37_combout\,
	cout => \clk_divider|s_divCounter[5]~38\);

-- Location: FF_X113_Y44_N17
\clk_divider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[5]~37_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(5));

-- Location: LCCOMB_X113_Y44_N18
\clk_divider|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[6]~39_combout\ = (\clk_divider|s_divCounter\(6) & (\clk_divider|s_divCounter[5]~38\ $ (GND))) # (!\clk_divider|s_divCounter\(6) & (!\clk_divider|s_divCounter[5]~38\ & VCC))
-- \clk_divider|s_divCounter[6]~40\ = CARRY((\clk_divider|s_divCounter\(6) & !\clk_divider|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(6),
	datad => VCC,
	cin => \clk_divider|s_divCounter[5]~38\,
	combout => \clk_divider|s_divCounter[6]~39_combout\,
	cout => \clk_divider|s_divCounter[6]~40\);

-- Location: FF_X113_Y44_N19
\clk_divider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[6]~39_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(6));

-- Location: LCCOMB_X113_Y44_N20
\clk_divider|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[7]~41_combout\ = (\clk_divider|s_divCounter\(7) & (!\clk_divider|s_divCounter[6]~40\)) # (!\clk_divider|s_divCounter\(7) & ((\clk_divider|s_divCounter[6]~40\) # (GND)))
-- \clk_divider|s_divCounter[7]~42\ = CARRY((!\clk_divider|s_divCounter[6]~40\) # (!\clk_divider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(7),
	datad => VCC,
	cin => \clk_divider|s_divCounter[6]~40\,
	combout => \clk_divider|s_divCounter[7]~41_combout\,
	cout => \clk_divider|s_divCounter[7]~42\);

-- Location: FF_X114_Y44_N9
\clk_divider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[7]~41_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(7));

-- Location: LCCOMB_X113_Y44_N22
\clk_divider|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[8]~43_combout\ = (\clk_divider|s_divCounter\(8) & (\clk_divider|s_divCounter[7]~42\ $ (GND))) # (!\clk_divider|s_divCounter\(8) & (!\clk_divider|s_divCounter[7]~42\ & VCC))
-- \clk_divider|s_divCounter[8]~44\ = CARRY((\clk_divider|s_divCounter\(8) & !\clk_divider|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(8),
	datad => VCC,
	cin => \clk_divider|s_divCounter[7]~42\,
	combout => \clk_divider|s_divCounter[8]~43_combout\,
	cout => \clk_divider|s_divCounter[8]~44\);

-- Location: FF_X114_Y44_N21
\clk_divider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[8]~43_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(8));

-- Location: LCCOMB_X113_Y44_N24
\clk_divider|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[9]~45_combout\ = (\clk_divider|s_divCounter\(9) & (!\clk_divider|s_divCounter[8]~44\)) # (!\clk_divider|s_divCounter\(9) & ((\clk_divider|s_divCounter[8]~44\) # (GND)))
-- \clk_divider|s_divCounter[9]~46\ = CARRY((!\clk_divider|s_divCounter[8]~44\) # (!\clk_divider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(9),
	datad => VCC,
	cin => \clk_divider|s_divCounter[8]~44\,
	combout => \clk_divider|s_divCounter[9]~45_combout\,
	cout => \clk_divider|s_divCounter[9]~46\);

-- Location: FF_X113_Y44_N25
\clk_divider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[9]~45_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(9));

-- Location: LCCOMB_X113_Y44_N26
\clk_divider|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[10]~47_combout\ = (\clk_divider|s_divCounter\(10) & (\clk_divider|s_divCounter[9]~46\ $ (GND))) # (!\clk_divider|s_divCounter\(10) & (!\clk_divider|s_divCounter[9]~46\ & VCC))
-- \clk_divider|s_divCounter[10]~48\ = CARRY((\clk_divider|s_divCounter\(10) & !\clk_divider|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(10),
	datad => VCC,
	cin => \clk_divider|s_divCounter[9]~46\,
	combout => \clk_divider|s_divCounter[10]~47_combout\,
	cout => \clk_divider|s_divCounter[10]~48\);

-- Location: FF_X114_Y44_N27
\clk_divider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[10]~47_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(10));

-- Location: LCCOMB_X113_Y44_N28
\clk_divider|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[11]~49_combout\ = (\clk_divider|s_divCounter\(11) & (!\clk_divider|s_divCounter[10]~48\)) # (!\clk_divider|s_divCounter\(11) & ((\clk_divider|s_divCounter[10]~48\) # (GND)))
-- \clk_divider|s_divCounter[11]~50\ = CARRY((!\clk_divider|s_divCounter[10]~48\) # (!\clk_divider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(11),
	datad => VCC,
	cin => \clk_divider|s_divCounter[10]~48\,
	combout => \clk_divider|s_divCounter[11]~49_combout\,
	cout => \clk_divider|s_divCounter[11]~50\);

-- Location: FF_X113_Y44_N29
\clk_divider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[11]~49_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(11));

-- Location: LCCOMB_X113_Y44_N30
\clk_divider|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[12]~51_combout\ = (\clk_divider|s_divCounter\(12) & (\clk_divider|s_divCounter[11]~50\ $ (GND))) # (!\clk_divider|s_divCounter\(12) & (!\clk_divider|s_divCounter[11]~50\ & VCC))
-- \clk_divider|s_divCounter[12]~52\ = CARRY((\clk_divider|s_divCounter\(12) & !\clk_divider|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(12),
	datad => VCC,
	cin => \clk_divider|s_divCounter[11]~50\,
	combout => \clk_divider|s_divCounter[12]~51_combout\,
	cout => \clk_divider|s_divCounter[12]~52\);

-- Location: FF_X113_Y44_N31
\clk_divider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[12]~51_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(12));

-- Location: LCCOMB_X113_Y43_N0
\clk_divider|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[13]~53_combout\ = (\clk_divider|s_divCounter\(13) & (!\clk_divider|s_divCounter[12]~52\)) # (!\clk_divider|s_divCounter\(13) & ((\clk_divider|s_divCounter[12]~52\) # (GND)))
-- \clk_divider|s_divCounter[13]~54\ = CARRY((!\clk_divider|s_divCounter[12]~52\) # (!\clk_divider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(13),
	datad => VCC,
	cin => \clk_divider|s_divCounter[12]~52\,
	combout => \clk_divider|s_divCounter[13]~53_combout\,
	cout => \clk_divider|s_divCounter[13]~54\);

-- Location: FF_X113_Y43_N1
\clk_divider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[13]~53_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(13));

-- Location: LCCOMB_X113_Y43_N2
\clk_divider|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[14]~55_combout\ = (\clk_divider|s_divCounter\(14) & (\clk_divider|s_divCounter[13]~54\ $ (GND))) # (!\clk_divider|s_divCounter\(14) & (!\clk_divider|s_divCounter[13]~54\ & VCC))
-- \clk_divider|s_divCounter[14]~56\ = CARRY((\clk_divider|s_divCounter\(14) & !\clk_divider|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(14),
	datad => VCC,
	cin => \clk_divider|s_divCounter[13]~54\,
	combout => \clk_divider|s_divCounter[14]~55_combout\,
	cout => \clk_divider|s_divCounter[14]~56\);

-- Location: FF_X114_Y44_N29
\clk_divider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[14]~55_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(14));

-- Location: LCCOMB_X113_Y43_N4
\clk_divider|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[15]~57_combout\ = (\clk_divider|s_divCounter\(15) & (!\clk_divider|s_divCounter[14]~56\)) # (!\clk_divider|s_divCounter\(15) & ((\clk_divider|s_divCounter[14]~56\) # (GND)))
-- \clk_divider|s_divCounter[15]~58\ = CARRY((!\clk_divider|s_divCounter[14]~56\) # (!\clk_divider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(15),
	datad => VCC,
	cin => \clk_divider|s_divCounter[14]~56\,
	combout => \clk_divider|s_divCounter[15]~57_combout\,
	cout => \clk_divider|s_divCounter[15]~58\);

-- Location: FF_X114_Y44_N23
\clk_divider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[15]~57_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(15));

-- Location: LCCOMB_X113_Y43_N6
\clk_divider|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[16]~59_combout\ = (\clk_divider|s_divCounter\(16) & (\clk_divider|s_divCounter[15]~58\ $ (GND))) # (!\clk_divider|s_divCounter\(16) & (!\clk_divider|s_divCounter[15]~58\ & VCC))
-- \clk_divider|s_divCounter[16]~60\ = CARRY((\clk_divider|s_divCounter\(16) & !\clk_divider|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(16),
	datad => VCC,
	cin => \clk_divider|s_divCounter[15]~58\,
	combout => \clk_divider|s_divCounter[16]~59_combout\,
	cout => \clk_divider|s_divCounter[16]~60\);

-- Location: FF_X114_Y44_N17
\clk_divider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[16]~59_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(16));

-- Location: LCCOMB_X113_Y43_N8
\clk_divider|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[17]~61_combout\ = (\clk_divider|s_divCounter\(17) & (!\clk_divider|s_divCounter[16]~60\)) # (!\clk_divider|s_divCounter\(17) & ((\clk_divider|s_divCounter[16]~60\) # (GND)))
-- \clk_divider|s_divCounter[17]~62\ = CARRY((!\clk_divider|s_divCounter[16]~60\) # (!\clk_divider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(17),
	datad => VCC,
	cin => \clk_divider|s_divCounter[16]~60\,
	combout => \clk_divider|s_divCounter[17]~61_combout\,
	cout => \clk_divider|s_divCounter[17]~62\);

-- Location: FF_X114_Y44_N5
\clk_divider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[17]~61_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(17));

-- Location: LCCOMB_X113_Y43_N10
\clk_divider|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[18]~63_combout\ = (\clk_divider|s_divCounter\(18) & (\clk_divider|s_divCounter[17]~62\ $ (GND))) # (!\clk_divider|s_divCounter\(18) & (!\clk_divider|s_divCounter[17]~62\ & VCC))
-- \clk_divider|s_divCounter[18]~64\ = CARRY((\clk_divider|s_divCounter\(18) & !\clk_divider|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datad => VCC,
	cin => \clk_divider|s_divCounter[17]~62\,
	combout => \clk_divider|s_divCounter[18]~63_combout\,
	cout => \clk_divider|s_divCounter[18]~64\);

-- Location: FF_X113_Y43_N11
\clk_divider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[18]~63_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(18));

-- Location: LCCOMB_X113_Y43_N12
\clk_divider|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[19]~65_combout\ = (\clk_divider|s_divCounter\(19) & (!\clk_divider|s_divCounter[18]~64\)) # (!\clk_divider|s_divCounter\(19) & ((\clk_divider|s_divCounter[18]~64\) # (GND)))
-- \clk_divider|s_divCounter[19]~66\ = CARRY((!\clk_divider|s_divCounter[18]~64\) # (!\clk_divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(19),
	datad => VCC,
	cin => \clk_divider|s_divCounter[18]~64\,
	combout => \clk_divider|s_divCounter[19]~65_combout\,
	cout => \clk_divider|s_divCounter[19]~66\);

-- Location: FF_X113_Y43_N13
\clk_divider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[19]~65_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(19));

-- Location: LCCOMB_X113_Y43_N14
\clk_divider|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[20]~67_combout\ = (\clk_divider|s_divCounter\(20) & (\clk_divider|s_divCounter[19]~66\ $ (GND))) # (!\clk_divider|s_divCounter\(20) & (!\clk_divider|s_divCounter[19]~66\ & VCC))
-- \clk_divider|s_divCounter[20]~68\ = CARRY((\clk_divider|s_divCounter\(20) & !\clk_divider|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(20),
	datad => VCC,
	cin => \clk_divider|s_divCounter[19]~66\,
	combout => \clk_divider|s_divCounter[20]~67_combout\,
	cout => \clk_divider|s_divCounter[20]~68\);

-- Location: FF_X113_Y43_N15
\clk_divider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[20]~67_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(20));

-- Location: LCCOMB_X113_Y43_N16
\clk_divider|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[21]~69_combout\ = (\clk_divider|s_divCounter\(21) & (!\clk_divider|s_divCounter[20]~68\)) # (!\clk_divider|s_divCounter\(21) & ((\clk_divider|s_divCounter[20]~68\) # (GND)))
-- \clk_divider|s_divCounter[21]~70\ = CARRY((!\clk_divider|s_divCounter[20]~68\) # (!\clk_divider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(21),
	datad => VCC,
	cin => \clk_divider|s_divCounter[20]~68\,
	combout => \clk_divider|s_divCounter[21]~69_combout\,
	cout => \clk_divider|s_divCounter[21]~70\);

-- Location: FF_X113_Y43_N17
\clk_divider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[21]~69_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(21));

-- Location: LCCOMB_X113_Y43_N18
\clk_divider|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[22]~71_combout\ = (\clk_divider|s_divCounter\(22) & (\clk_divider|s_divCounter[21]~70\ $ (GND))) # (!\clk_divider|s_divCounter\(22) & (!\clk_divider|s_divCounter[21]~70\ & VCC))
-- \clk_divider|s_divCounter[22]~72\ = CARRY((\clk_divider|s_divCounter\(22) & !\clk_divider|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(22),
	datad => VCC,
	cin => \clk_divider|s_divCounter[21]~70\,
	combout => \clk_divider|s_divCounter[22]~71_combout\,
	cout => \clk_divider|s_divCounter[22]~72\);

-- Location: FF_X113_Y43_N19
\clk_divider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[22]~71_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(22));

-- Location: FF_X113_Y43_N21
\clk_divider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[23]~73_combout\,
	sclr => \clk_divider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(23));

-- Location: LCCOMB_X114_Y44_N8
\clk_divider|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~0_combout\ = ((!\clk_divider|s_divCounter\(25)) # (!\clk_divider|s_divCounter\(24))) # (!\clk_divider|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(23),
	datab => \clk_divider|s_divCounter\(24),
	datad => \clk_divider|s_divCounter\(25),
	combout => \clk_divider|LessThan1~0_combout\);

-- Location: LCCOMB_X113_Y44_N2
\clk_divider|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~2_combout\ = (!\clk_divider|s_divCounter\(5) & (!\clk_divider|s_divCounter\(6) & ((!\clk_divider|LessThan1~1_combout\) # (!\clk_divider|s_divCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(4),
	datab => \clk_divider|s_divCounter\(5),
	datac => \clk_divider|LessThan1~1_combout\,
	datad => \clk_divider|s_divCounter\(6),
	combout => \clk_divider|LessThan1~2_combout\);

-- Location: LCCOMB_X114_Y44_N0
\clk_divider|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~3_combout\ = (!\clk_divider|s_divCounter\(8) & (!\clk_divider|s_divCounter\(9) & ((\clk_divider|LessThan1~2_combout\) # (!\clk_divider|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(7),
	datab => \clk_divider|s_divCounter\(8),
	datac => \clk_divider|s_divCounter\(9),
	datad => \clk_divider|LessThan1~2_combout\,
	combout => \clk_divider|LessThan1~3_combout\);

-- Location: LCCOMB_X114_Y44_N24
\clk_divider|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~4_combout\ = (!\clk_divider|s_divCounter\(12) & (((\clk_divider|LessThan1~3_combout\) # (!\clk_divider|s_divCounter\(10))) # (!\clk_divider|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(11),
	datab => \clk_divider|s_divCounter\(12),
	datac => \clk_divider|s_divCounter\(10),
	datad => \clk_divider|LessThan1~3_combout\,
	combout => \clk_divider|LessThan1~4_combout\);

-- Location: LCCOMB_X114_Y44_N6
\clk_divider|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~5_combout\ = (\clk_divider|s_divCounter\(15) & ((\clk_divider|s_divCounter\(14)) # ((\clk_divider|s_divCounter\(13) & !\clk_divider|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(15),
	datab => \clk_divider|s_divCounter\(14),
	datac => \clk_divider|s_divCounter\(13),
	datad => \clk_divider|LessThan1~4_combout\,
	combout => \clk_divider|LessThan1~5_combout\);

-- Location: LCCOMB_X114_Y44_N16
\clk_divider|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~6_combout\ = (\clk_divider|s_divCounter\(18)) # ((\clk_divider|s_divCounter\(17)) # ((\clk_divider|s_divCounter\(16) & \clk_divider|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datab => \clk_divider|s_divCounter\(17),
	datac => \clk_divider|s_divCounter\(16),
	datad => \clk_divider|LessThan1~5_combout\,
	combout => \clk_divider|LessThan1~6_combout\);

-- Location: LCCOMB_X114_Y44_N10
\clk_divider|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~7_combout\ = (((!\clk_divider|LessThan1~6_combout\) # (!\clk_divider|s_divCounter\(19))) # (!\clk_divider|s_divCounter\(21))) # (!\clk_divider|s_divCounter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(20),
	datab => \clk_divider|s_divCounter\(21),
	datac => \clk_divider|s_divCounter\(19),
	datad => \clk_divider|LessThan1~6_combout\,
	combout => \clk_divider|LessThan1~7_combout\);

-- Location: LCCOMB_X114_Y44_N14
\clk_divider|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan1~8_combout\ = (\clk_divider|s_divCounter\(26)) # ((!\clk_divider|LessThan1~0_combout\ & ((\clk_divider|s_divCounter\(22)) # (!\clk_divider|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|LessThan1~0_combout\,
	datab => \clk_divider|s_divCounter\(22),
	datac => \clk_divider|s_divCounter\(26),
	datad => \clk_divider|LessThan1~7_combout\,
	combout => \clk_divider|LessThan1~8_combout\);

-- Location: FF_X114_Y44_N15
\clk_divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clkOut~q\);

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

-- Location: CLKCTRL_G8
\clk_divider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|clkOut~clkctrl_outclk\);

-- Location: FF_X114_Y69_N27
\fsm|s_currentState.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.B~q\);

-- Location: LCCOMB_X114_Y69_N18
\fsm|s_nextState.C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.C~0_combout\ = (!\SW[0]~input_o\ & \fsm|s_currentState.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \fsm|s_currentState.B~q\,
	combout => \fsm|s_nextState.C~0_combout\);

-- Location: FF_X114_Y69_N19
\fsm|s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \fsm|s_nextState.C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.C~q\);

-- Location: LCCOMB_X114_Y69_N28
\fsm|s_nextState.D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.D~0_combout\ = (!\SW[0]~input_o\ & \fsm|s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \fsm|s_currentState.C~q\,
	combout => \fsm|s_nextState.D~0_combout\);

-- Location: FF_X114_Y69_N29
\fsm|s_currentState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \fsm|s_nextState.D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.D~q\);

-- Location: LCCOMB_X114_Y69_N30
\fsm|Yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Yout~1_combout\ = (\SW[0]~input_o\ & \fsm|s_currentState.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \fsm|s_currentState.D~q\,
	combout => \fsm|Yout~1_combout\);

-- Location: LCCOMB_X114_Y69_N16
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (\SW[0]~input_o\) # ((\fsm|s_currentState.B~q\) # (\fsm|s_currentState.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \fsm|s_currentState.B~q\,
	datad => \fsm|s_currentState.C~q\,
	combout => \fsm|Selector0~0_combout\);

-- Location: FF_X114_Y69_N17
\fsm|s_currentState.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \fsm|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.A~q\);

-- Location: LCCOMB_X114_Y69_N24
\sevenSeg|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSeg|decOut_n~0_combout\ = (\fsm|s_currentState.A~q\ & ((\fsm|s_currentState.B~q\) # (\fsm|s_currentState.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.A~q\,
	datac => \fsm|s_currentState.B~q\,
	datad => \fsm|s_currentState.D~q\,
	combout => \sevenSeg|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y69_N12
\sevenSeg|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSeg|decOut_n~1_combout\ = (\fsm|s_currentState.A~q\ & ((\fsm|s_currentState.C~q\) # (\fsm|s_currentState.B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.C~q\,
	datac => \fsm|s_currentState.B~q\,
	datad => \fsm|s_currentState.A~q\,
	combout => \sevenSeg|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y69_N22
\sevenSeg|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSeg|Equal3~0_combout\ = (\fsm|s_currentState.C~q\ & \fsm|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|s_currentState.C~q\,
	datad => \fsm|s_currentState.A~q\,
	combout => \sevenSeg|Equal3~0_combout\);

-- Location: LCCOMB_X114_Y69_N20
\sevenSeg|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSeg|decOut_n~2_combout\ = (\fsm|s_currentState.A~q\ & ((\fsm|s_currentState.C~q\) # ((!\fsm|s_currentState.B~q\ & !\fsm|s_currentState.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.B~q\,
	datab => \fsm|s_currentState.D~q\,
	datac => \fsm|s_currentState.C~q\,
	datad => \fsm|s_currentState.A~q\,
	combout => \sevenSeg|decOut_n~2_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


