library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterUpDown4_Tb is
end CounterUpDown4_Tb;

architecture Stimulus of CounterUpDown4_Tb is
    signal s_clk, s_upDown, s_reset  : std_logic;
	 signal s_count : std_logic_vector(3 downto 0);
begin
    uut : entity work.CounterUpDown4(Behavioral)
	       port map(clk    => s_clk,
			          upDown => s_upDown,
						 reset  => s_reset,
						 count  => s_count);
						 
    clk_proc  : process
	             begin
					     s_clk <= '0';
						  wait for 50 ns;
						  s_clk <= '1';
						  wait for 50 ns;
					 end process;
						 
    stim_proc : process
	             begin
					     s_upDown <= '0'; s_reset <= '1';
						  wait for 75 ns;
						  s_reset <= '0';
						  wait for 375 ns;
						  s_upDown <= '1';
						  wait for 200 ns;
				    end process;
end Stimulus;