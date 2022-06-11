library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CombShiftUnit_Demo is
    port(CLOCK_50 : in  std_logic;
	      SW       : in  std_logic_vector(17 downto 0);
			KEY      : in  std_logic_vector(2 downto 0);
			LEDR     : out std_logic_vector(7 downto 0));
end CombShiftUnit_Demo;

architecture Structural of CombShiftUnit_Demo is
    signal modifiedClock : std_logic;
begin
    freqDiv : entity work.ClkDividerN(Behavioral)
	           generic map(divFactor => 50000000)
	           port map(clkIn  => CLOCK_50,
				           clkOut => modifiedClock);
							  
    combShiftUnit : entity work.CombShiftUnit(Behavioral)
				       port map(clk      => modifiedClock,
					             dataIn   => SW(7 downto 0),
									 siLeft   => SW(8),
									 siRight  => SW(9),
									 loadEn   => SW(10),
									 rotate   => KEY(0),
									 dirLeft  => KEY(1),
									 shArith  => KEY(2),
									 shAmount => SW(17 downto 15),
								    dataOut  => LEDR);
end Structural;