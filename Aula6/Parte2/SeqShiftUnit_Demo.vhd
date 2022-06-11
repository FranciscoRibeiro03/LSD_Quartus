library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqShiftUnit_Demo is
    port(CLOCK_50 : in  std_logic;
	      SW       : in  std_logic_vector(13 downto 0);
			LEDG     : out std_logic_vector(7 downto 0));
end SeqShiftUnit_Demo;

architecture Structural of SeqShiftUnit_Demo is
    signal modifiedClock : std_logic;
begin
    freqDiv : entity work.ClkDividerN(Behavioral)
	           generic map(divFactor => 50000000)
	           port map(clkIn  => CLOCK_50,
				           clkOut => modifiedClock);
							  
    seqShiftUnit : entity work.SeqShiftUnit(Behavioral)
				       port map(clk     => modifiedClock,
					             dataIn  => SW(7 downto 0),
									 siLeft  => SW(8),
									 siRight => SW(9),
									 loadEn  => SW(10),
									 rotate  => SW(11),
									 dirLeft => SW(12),
									 shArith => SW(13),
								    dataOut => LEDG);
end Structural;