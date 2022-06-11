library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is
    port(a, b, cin : in  std_logic;
	      s, cout   : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
    
	 signal AxorB : std_logic;
	 
begin

    AxorB <= a xor b;

    s <= cin xor AxorB;
	 cout <= (cin and AxorB) or (a and b);

end Behavioral;