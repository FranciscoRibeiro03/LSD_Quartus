library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM_Tb is
end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is
    signal s_reset : std_logic;
    signal s_clk   : std_logic;
    signal s_V     : std_logic;
    signal s_C     : std_logic;
    signal s_abrir : std_logic;
    signal s_state : std_logic_vector(3 downto 0);
begin

   uut : entity work.DrinksFSM(Behavioral)
	      port map(clk   => s_clk,
			         reset => s_reset,
						V     => s_V,
						C     => s_C,
						abrir => s_abrir,
						state => s_state);

   clk_proc : process
	           begin
				     s_clk <= '0';
					  wait for 20 ns;
					  s_clk <= '1';
					  wait for 20 ns;
				  end process;
				  
   stim_proc : process
	            begin
					   s_reset <= '1';
						s_V <= '0';
						s_C <= '0';
						wait for 60 ns;
						s_reset <= '0';
						s_V <= '1';
						wait for 100 ns;
						s_V <= '0';
						wait for 100 ns;
						s_C <= '1';
						wait for 100 ns;
						s_C <= '0';
						wait for 100 ns;
					end process;
end Stimulus;