library IEEE;
use IEEE.std_logic_1164.ALL;

entity TB is end;

architecture behavioral of TB is 

  component keypad_operating_unit
    Port( reset, clk	:	in STD_LOGIC; 
          en_count_col	: in STD_LOGIC; 
          en_reg_col, en_reg_row	: in STD_LOGIC; 
          active_row	: in STD_LOGIC_VECTOR (1 downto 0); 
          col1, col2, col3, col4	: out STD_LOGIC; 
	      ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
          DP, an3, an2, an1, an0 : out STD_LOGIC);
   end component;

   signal reset, clk, en_count_col : STD_LOGIC;
   signal en_reg_col, en_reg_row : STD_LOGIC;
   signal active_row	: STD_LOGIC_VECTOR (1 downto 0); 
   signal col1, col2, col3, col4	: STD_LOGIC; 
   signal ABCDEFG : STD_LOGIC_VECTOR(6 downto 0);
   signal DP, an3, an2, an1, an0 : STD_LOGIC;
	
   constant clk_period : time := 1 us;

begin

   UUT: keypad_operating_unit PORT MAP(
		reset => reset, 
		en_count_col => en_count_col, 
		clk => clk, 
		en_reg_col => en_reg_col, 
		en_reg_row => en_reg_row, 
		active_row => active_row, 
		col1 => col1, 
		col2 => col2, 
		col3 => col3, 
		col4 => col4, 
		ABCDEFG => ABCDEFG, 
		DP => DP, 
		an0 => an0,
		an1 => an1,
		an2 => an2,
		an3 => an3);
	
    clk_process :process
    begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
    end process;
    
    --34us
   tb : process
   begin
	
	reset <= '1';
	en_reg_col <= '0'; 
	en_reg_row <= '0'; 
	active_row <= "00"; 
	en_count_col <= '0'; 
	wait for clk_period;
	
	reset<='0';
	--key 1
	active_row<="00";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 2
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="00";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 3
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="00";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key A
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="00";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 4
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="01";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 5
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="01";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 6
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="01";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key B
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="01";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 7
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="10";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 8
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="10";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 9
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="10";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key C
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="10";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key E
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="11";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key 0
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="11";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key F
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="11";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	--key D
	en_count_col<='1';
	wait for clk_period;
	en_count_col<='0';
	active_row<="11";
	en_reg_col <= '1'; 
	en_reg_row <= '1';
	wait for clk_period;
	
	en_reg_col <= '0'; 
	en_reg_row <= '0';
	wait for clk_period;
	
	
   end process;

end behavioral;