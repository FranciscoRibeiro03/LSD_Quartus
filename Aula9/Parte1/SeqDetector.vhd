library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
    port(CLOCK_50 : in  std_logic;
	      SW       : in  std_logic_vector(0 downto 0);
	      LEDG     : out std_logic_vector(0 downto 0);
			LEDR     : out std_logic_vector(0 downto 0);
			HEX0     : out std_logic_vector(6 downto 0));
end SeqDetector;

architecture Structural of SeqDetector is
    signal s_clk   : std_logic;
	 signal s_state : std_logic_vector(3 downto 0);
begin
    clk_divider : entity work.ClkDividerN(Behavioral)
	               generic map(divFactor => 125_000_000)
						port map(clkIn  => CLOCK_50,
						         clkOut => s_clk);
									
    fsm : entity work.SeqDetFSM(MealyArch)
	      port map(reset => '0',
			         clk => s_clk,
						Xin => SW(0),
						Yout => LEDR(0),
						state => s_state);
						
    sevenSeg : entity work.Bin7SegDecoder(Behavioral)
	            port map(enable => '1',
					         binInput => s_state,
								decOut_n => HEX0);
						
    LEDG(0) <= s_clk;
						
end Structural;