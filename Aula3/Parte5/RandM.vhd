library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RandM is
    port(r, m : in  std_logic_vector(3 downto 0);
	      o    : out std_logic_vector(7 downto 0));
end RandM;

architecture Behavioral of RandM is
    signal aux : std_logic_vector(7 downto 0);
	 signal s_r : unsigned(3 downto 0);
	 signal s_aux, s_o : unsigned(7 downto 0);
begin

    aux <= m & "0000";
	 
	 s_aux <= unsigned(aux);
	 s_r <= unsigned(r);
	 
	 s_o <= s_aux + s_r;
	 
	 o <= std_logic_vector(s_o);
	 
end Behavioral;