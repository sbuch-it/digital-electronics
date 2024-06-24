-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity stepper_motor_sss is
  port ( reset, clk, run, direction : in STD_LOGIC;
         a, b, c, d : out  STD_LOGIC;
			   state : out STD_LOGIC_VECTOR(3 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of stepper_motor_sss is
  -- SIGNAL
  type STATES is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
  signal C_S, N_S : STATES;
begin
  -- CLOCK PROCESS
  CLK_process : process (clk, reset)
	begin
	  if reset='1' then C_S <= S0;
		  elsif rising_edge(clk) then C_S <= N_S;
	  end if;
	end process;
  -- ICC PROCESS
	ICC_process : process (C_S, run, direction)
	begin
	  case C_S is
		  when S0 =>
			  if (run='1' and direction='0') then N_S <= S1;
				  elsif (run='1' and direction='1') then N_S <= S5;
				  else N_S<=S0;
	    		end if;
			when S1 => N_S <= S2;
			when S2 => N_S <= S3;
			when S3 => N_S <= S4;
			when S4 => if run = '1' then N_S <= S1; elsif run = '0' then N_S <= S0; end if;
			when S5 => N_S <= S6;
			when S6 => N_S <= S7;
			when S7 => N_S <= S8;
			when S8 => if run = '1' then N_S <= S5; elsif run = '0' then N_S <= S0; end if;
			when others => N_S <= S0;
		end case;
	end process;
  -- OCC PROCESS
	OCC_process : process (C_S)
	begin
	  case C_S is
		  when S0 =>
        a<='0'; b<='0'; c<='0'; d<='0'; state<="0000";
			when S1 =>
        a<='1'; b<='0'; c<='0'; d<='0'; state<="0001";
			when S2 =>
        a<='0'; b<='0'; c<='1'; d<='0'; state<="0010";
			when S3 =>
        a<='0'; b<='1'; c<='0'; d<='0'; state<="0011";
			when S4 =>
        a<='0'; b<='0'; c<='0'; d<='1'; state<="0100";
			when S5 =>
        a<='0'; b<='0'; c<='0'; d<='1'; state<="0101";
			when S6 =>
        a<='0'; b<='1'; c<='0'; d<='0'; state<="0110";
			when S7 =>
        a<='0'; b<='0'; c<='1'; d<='0'; state<="0111";
			when S8 =>
        a<='1'; b<='0'; c<='0'; d<='0'; state<="1000";
			when others =>
        a<='0'; b<='0'; c<='0'; d<='0'; state<="0000";
		end case;
	end process;
end architecture;