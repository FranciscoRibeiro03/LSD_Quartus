library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
    port (dataIn  : in  std_logic_vector(3 downto 0);
          sel     : in  std_logic_vector(1 downto 0);
          dataOut : out std_logic);
end Mux4_1;

architecture BehavProc of Mux4_1 is
begin
    process(dataIn, sel)
	 begin
        if (sel = "00") then
            dataOut <= dataIn(0);
        elsif (sel = "01") then
            dataOut <= dataIn(1);
        elsif (sel = "10") then
            dataOut <= dataIn(2);
        else
            dataOut <= dataIn(3);
        end if;
	 end process;
end BehavProc;