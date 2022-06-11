library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  Xin	   : in  std_logic;
		  Yout  	: out std_logic;
		  state  : out std_logic_vector(3 downto 0));
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (A, B, C, D);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= A;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, Xin)
	begin
	
		Yout <= '0';
		
		case (s_currentState) is
		when A =>
		   state <= x"A";
			if (Xin = '1') then s_nextState <= B;
			else s_nextState <= A;
			end if;

		when B =>
		   state <= x"B";
			if (Xin = '1') then s_nextState <= B;
			else s_nextState <= C;
			end if;

		when C =>
		   state <= x"C";
			if (Xin = '1') then s_nextState <= B;
			else s_nextState <= D;
			end if;

		when D =>
		   state <= x"D";
			if (Xin = '1') then
				s_nextState <= B;
				Yout <= '1';
			else s_nextState <= A;
			end if;
		end case;

	end process;

end MealyArch;
