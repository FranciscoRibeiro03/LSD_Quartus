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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/29/2022 10:50:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Bin2BCD
	PORT (
	bcd : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	bcd => bcd,
	bin => bin
	);
-- bin[3]
t_prcs_bin_3: PROCESS
BEGIN
	bin(3) <= '0';
	WAIT FOR 480000 ps;
	bin(3) <= '1';
	WAIT FOR 480000 ps;
	bin(3) <= '0';
WAIT;
END PROCESS t_prcs_bin_3;
-- bin[2]
t_prcs_bin_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		bin(2) <= '0';
		WAIT FOR 240000 ps;
		bin(2) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	bin(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_2;
-- bin[1]
t_prcs_bin_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		bin(1) <= '0';
		WAIT FOR 120000 ps;
		bin(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	bin(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_1;
-- bin[0]
t_prcs_bin_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		bin(0) <= '0';
		WAIT FOR 60000 ps;
		bin(0) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	bin(0) <= '0';
WAIT;
END PROCESS t_prcs_bin_0;
END Bin2BCD_arch;
