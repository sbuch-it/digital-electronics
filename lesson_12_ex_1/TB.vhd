library IEEE;
use IEEE.std_logic_1164.ALL;

entity TB is end;

architecture behavioral of TB is 
 
component keypad_control_unit is
    Port ( clk, reset, ROW1, ROW2, ROW3, ROW4 : in  STD_LOGIC;
           en_count_col : out  STD_LOGIC;
           en_reg_col : out  STD_LOGIC;
           en_reg_row : out  STD_LOGIC;
           active_row : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
    

   --Inputs
   signal clk, reset, ROW1, ROW2, ROW3, ROW4 : std_logic := '0';
 
 	--Outputs
   signal en_count_col, en_reg_col, en_reg_row : std_logic;
   signal active_row : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 us;
 
begin
    UUT: keypad_control_unit PORT MAP ( clk => clk,
                                        reset => reset,
                                        ROW1 => ROW1,
                                        ROW2 => ROW2,
                                        ROW3 => ROW3,
                                        ROW4 => ROW4,
                                        en_count_col => en_count_col,
                                        en_reg_col => en_reg_col,
                                        en_reg_row => en_reg_row,
                                        active_row => active_row);

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   --23 us
   stim_proc: process
   begin		
		reset<='1';
		ROW1 <= '1';
        ROW2 <= '1';
        ROW3 <= '1';
        ROW4 <= '1';
		wait for clk_period;
		
		reset<='0';
		wait for 6*clk_period;
		
		ROW1<='0';
		wait for 5*clk_period;
		
		ROW1<='1';
		ROW2<='0';
		wait for 5*clk_period;
		
		ROW1<='1';
		ROW2<='1';
		ROW3<='0';
		wait for 5*clk_period;
		
		ROW1<='1';
		ROW2<='1';
		ROW3<='1';
		ROW4<='0';
		wait for 6*clk_period;
		
   end process;
end behavioral;