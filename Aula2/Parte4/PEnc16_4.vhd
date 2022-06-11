library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc16_4 is
    port(decodedIn  : in  STD_LOGIC_VECTOR(15 downto 0);
         encodedOut : out STD_LOGIC_VECTOR(3 downto 0);
         validOut   : out STD_LOGIC);
end PEnc16_4;

architecture BehavProcess of PEnc16_4 is
begin
    process(decodedIn)
    begin
        if (decodedIn = "0000000000000000") then
		      encodedOut <= "0000";
				validOut <= '0';
		  else
		      validOut <= '1';
		      if decodedIn(15) = '1' then
                encodedOut <= "1111";
            elsif decodedIn(14) = '1' then
                encodedOut <= "1110";
            elsif decodedIn(13) = '1' then
                encodedOut <= "1101";
            elsif decodedIn(12) = '1' then
                encodedOut <= "1100";
		      elsif decodedIn(11) = '1' then
                encodedOut <= "1011";
            elsif decodedIn(10) = '1' then
                encodedOut <= "1010";
            elsif decodedIn(9) = '1' then
                encodedOut <= "1001";
            elsif decodedIn(8) = '1' then
                encodedOut <= "1000";
		      elsif decodedIn(7) = '1' then
                encodedOut <= "0111";
            elsif decodedIn(6) = '1' then
                encodedOut <= "0110";
            elsif decodedIn(5) = '1' then
                encodedOut <= "0101";
            elsif decodedIn(4) = '1' then
                encodedOut <= "0100";
		      elsif decodedIn(3) = '1' then
                encodedOut <= "0011";
            elsif decodedIn(2) = '1' then
                encodedOut <= "0010";
            elsif decodedIn(1) = '1' then
                encodedOut <= "0001";
            elsif decodedIn(0) = '1' then
                encodedOut <= "0000";
            end if;
			end if;
    end process;
end BehavProcess;