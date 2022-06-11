library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
    port(bin                        : in  std_logic_vector(7 downto 0);
	      bcd_zero, bcd_one, bcd_two : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
    signal s_bin, s_dez, q_zero, r_zero, q_um, r_um : unsigned(7 downto 0);
begin

    s_bin <= unsigned(bin);
	 s_dez <= to_unsigned(10, 8);
	 
	 q_zero <= s_bin  /  s_dez;
	 r_zero <= s_bin rem s_dez;
	 
	 q_um <= Q_zero  /  s_dez;
	 r_um <= Q_zero rem s_dez;
	 
	 bcd_zero <= std_logic_vector(r_zero(3 downto 0));
	 bcd_one  <= std_logic_vector( r_um(3 downto 0) );
	 bcd_two  <= std_logic_vector( q_um(3 downto 0) );
						
end Behavioral;