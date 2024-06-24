library IEEE;
use IEEE.std_logic_1164.ALL;

entity top_keypad_interface is port ( reset, clk : in STD_LOGIC; 
          	                          ROW1, ROW2, ROW3, ROW4 : in  STD_LOGIC;
			                          ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
                                      DP, an3, an2, an1, an0 : out STD_LOGIC;
                                      COL1, COL2, COL3, COL4 : out STD_LOGIC);
end top_keypad_interface;


architecture behavioral of top_keypad_interface is

-- COMPONENT
component divider100 is
    Port ( clkin : in std_logic;
           clkout1 : out std_logic;
           reset : in std_logic);
end component;

-- COMPONENT keypad_control_unit
component keypad_control_unit is
    Port ( clk, reset, ROW1, ROW2, ROW3, ROW4 : in  STD_LOGIC;
           en_count_col : out  STD_LOGIC;
           en_reg_col : out  STD_LOGIC;
           en_reg_row : out  STD_LOGIC;
           active_row : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

-- COMPONENT keypad_operating_unit
component keypad_operating_unit is port
        ( reset, clk : IN STD_LOGIC; 
          en_count_col	:	IN	STD_LOGIC; 
          en_reg_col, en_reg_row	:	IN	STD_LOGIC; 
          active_row	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          COL1, COL2, COL3, COL4	:	OUT	STD_LOGIC; 
					ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP, an3, an2, an1, an0 : out STD_LOGIC);
end component;

-- SIGNAL
signal clkout1 : std_logic;
-- SIGNAL keypad_control_unit
    signal en_count_col, en_reg_col, en_reg_row :  STD_LOGIC;
    signal active_row :  STD_LOGIC_VECTOR (1 downto 0);
-- SIGNAL keypad_operating_unit
signal an0_OBUF, an1_OBUF, an2_OBUF, an3_OBUF : STD_LOGIC;

begin

-- INST divider100
INST_divider100 : divider100
port map (clkin => clk, clkout1 => clkout1, reset => reset);

-- INST keypad_control_unit
INST_keypad_control_unit : keypad_control_unit
port map (clk => clkout1, reset => reset, ROW1 => ROW1, ROW2 => ROW2, ROW3 => ROW3, ROW4 => ROW4, en_count_col => en_count_col,
en_reg_col => en_reg_col, en_reg_row => en_reg_row, active_row => active_row);

-- INST keypad_operating_unit
INST_keypad_operating_unit : keypad_operating_unit
port map ( clk => clkout1, reset => reset, en_count_col => en_count_col, en_reg_col => en_reg_col, en_reg_row => en_reg_row,
active_row => active_row, COL1 => COL1, COL2 => COL2, COL3 => COL3, COL4 => COL4, ABCDEFG => ABCDEFG, DP => DP, an3 => an3_OBUF,
an2 => an2_OBUF, an1 => an1_OBUF, an0 => an0_OBUF);

an0 <= '0';
an1 <= '1';
an2 <= '1';
an3 <= '1';

end behavioral;