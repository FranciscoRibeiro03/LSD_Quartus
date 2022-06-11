library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_2P_16_8 is
    generic(addrBusSize : integer := 4;
	         dataBusSize : integer := 8);
    port(clk          : in  std_logic;
	      writeEnable  : in  std_logic;
			writeAddress : in  std_logic_vector((addrBusSize - 1) downto 0);
			writeData    : in  std_logic_vector((dataBusSize - 1) downto 0);
			readAddress  : in  std_logic_vector((addrBusSize - 1) downto 0);
			readData     : out std_logic_vector((dataBusSize - 1) downto 0));
end RAM_2P_16_8;

architecture Behavioral of RAM_2P_16_8 is

    constant NUM_WORDS : integer := (2 ** addrBusSize);
	 subtype TDataWord is std_logic_vector((dataBusSize - 1) downto 0);
	 type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	 signal s_memory : TMemory;
	 
begin
    process(clk)
	 begin
	     if (rising_edge(clk)) then
		      if (writeEnable = '1') then
				    s_memory(to_integer(unsigned(writeAddress))) <= writeData;
				end if;
		  end if;
    end process;
	 
	 readData <= s_memory(to_integer(unsigned(readAddress)));
end Behavioral;