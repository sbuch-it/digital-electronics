library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keypad_control_unit is
    Port ( clk, reset, ROW1, ROW2, ROW3, ROW4 : in  STD_LOGIC;
           en_count_col : out  STD_LOGIC;
           en_reg_col : out  STD_LOGIC;
           en_reg_row : out  STD_LOGIC;
           active_row : out  STD_LOGIC_VECTOR (1 downto 0));
end entity;

architecture Behavioral of keypad_control_unit is

type STATES is (S0, S1, S2, S3, S4, S5,S6,S7,S8,INCR_COL , REG_S);

signal C_S, N_S : STATES;

--	signal row : std_logic_vector(1 downto 0);

begin
	procesS1 : process (clk, reset)
	begin
		if reset='1' then
			C_S<=S0;
		elsif rising_edge(clk) then
			C_S<=N_S;
		end if;
	end process;
	
	ICC_process : process (C_S, ROW1, ROW2, ROW3, ROW4)
	begin
	   N_S<=S0;
		case C_S is
			when S0 => N_S<= S1;
			when S1=>
				if ROW1='0' then N_S<=S5;	--active_row<="00";
				else N_S<= S2;
			
				end if;
			when S2=>
				if ROW2='0' then N_S<=S6;--active_row<="01";
				else N_S<= S3;
				
				end if;
			when S3=>
				if ROW3='0' then N_S<=S7;	--active_row<="10";
				else N_S<= S4;
			
				end if;
			when S4=>
				if ROW4='0' then N_S<=S8;	--active_row<="11";
				else N_S<= INCR_COL;
			
				end if;
		    when REG_S => N_S <= S0;
		    when S5 => N_S <= S1;
		    when S6 => N_S <= S1;
		    when S7 => N_S <= S1;
		    when S8 => N_S <= S1;
		    when incr_col => n_s <= S1;
			when others=> N_S<=S0;
		end case;
	end process;
	
	procesS3 : process (C_S)
	begin
		case C_S is
		    when S0=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="UU";
			when S1=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="00";
			when S2=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="01";
			when S3=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="10";
			when S4=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="11";
            When S5 => active_row <="00";
                        en_reg_col<='1';
						en_reg_row<='1';
			When S6 => active_row <="01";
                        en_reg_col<='1';
						en_reg_row<='1';
			When S7 => active_row <="10";
                        en_reg_col<='1';
						en_reg_row<='1';
		    When S8 => active_row <="11";
                        en_reg_col<='1';
						en_reg_row<='1';
			when INCR_COL=> en_count_col<='1';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="UU";
--			when REG_S=> en_count_col<='0';
--						en_reg_col<='1';
--						en_reg_row<='1';
----						active_row<=row;
			when others=> en_count_col<='0';
						en_reg_col<='0';
						en_reg_row<='0';
--						active_row<="UU";
		end case;
	end process;
			
end architecture;