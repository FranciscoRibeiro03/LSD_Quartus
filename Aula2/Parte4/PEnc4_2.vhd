library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
    port(decodedIn  : in  STD_LOGIC_VECTOR(3 downto 0);
         encodedOut : out STD_LOGIC_VECTOR(1 downto 0);
         validOut   : out STD_LOGIC);
end PEnc4_2;

architecture BehavProcess of PEnc4_2 is
begin
    process(decodedIn)
    begin
        if (decodedIn = "0000") then
		      encodedOut <= "00";
				validOut <= '0';
		  else
		      validOut <= '1';
		      if decodedIn(3) = '1' then
                encodedOut <= "11";
            elsif decodedIn(2) = '1' then
                encodedOut <= "10";
            elsif decodedIn(1) = '1' then
                encodedOut <= "01";
            elsif decodedIn(0) = '1' then
                encodedOut <= "00";
            end if;
			end if;
    end process;
end BehavProcess;