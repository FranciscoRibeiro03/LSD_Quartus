library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
    port (dataIn0 : in  STD_LOGIC;
          dataIn1 : in  STD_LOGIC;
          sel     : in  STD_LOGIC;
          dataOut : out STD_LOGIC);
end Mux2_1;

architecture BehavProc of Mux2_1 is
begin
    process(dataIn0, dataIn1, sel)
	 begin
        if (sel = '0') then
            dataOut <= dataIn0;
        elsif (sel = '1') then
            dataOut <= dataIn1;
        end if;
	 end process;
end BehavProc;