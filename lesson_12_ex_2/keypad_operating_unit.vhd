LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity keypad_operating_unit is port ( reset, clk : IN STD_LOGIC; 
                                       en_count_col	:	IN	STD_LOGIC; 
                                       en_reg_col, en_reg_row	:	IN	STD_LOGIC; 
                                       active_row	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
                                       col1, col2, col3, col4	:	OUT	STD_LOGIC; 
					                   ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
                                       DP, an3, an2, an1, an0 : out STD_LOGIC);
end keypad_operating_unit;


architecture behavioral of keypad_operating_unit is

component ctr_2_bits is
    port ( reset, clk, ce, load : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(1 downto 0));
end component;

component reg_2_bits is
    Port ( clk, reset, ce : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (1 downto 0);
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component code_converter is
    Port ( row, col : in  STD_LOGIC_VECTOR (1 downto 0);
           bin : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component bin_to_7_seg_anode is
    port ( en, dp_in : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(3 downto 0);
           ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP, an3, an2, an1, an0 : out STD_LOGIC);
end component;

component decoder_2_to_4 is
    port ( g : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end component;


-- SIGNAL ctr_2_bits
signal Q_ctr : STD_LOGIC_VECTOR(1 downto 0);
-- SIGNAL reg_2_bits_row
signal Q_reg_row : STD_LOGIC_VECTOR(1 downto 0);
-- SIGNAL reg_2_bits_col
signal Q_reg_col : STD_LOGIC_VECTOR(1 downto 0);
-- SIGNAL code_converter
signal bin : STD_LOGIC_VECTOR (3 downto 0);
-- SIGNAL bin_to_7_seg_anode


BEGIN
-- INSTA
INST_ctr_2_bits : ctr_2_bits port map(reset => reset, clk => clk, ce => en_count_col, load => '0', DIN => "00", Q => Q_ctr);
-- INST reg_2_bits_row
INST_reg_2_bits_row : reg_2_bits port map (clk => clk, reset => reset, ce => en_reg_row, D => active_row, Q => Q_reg_row);
-- INST reg_2_bits_col
INST_reg_2_bits_colu : reg_2_bits port map (clk => clk, reset => reset, ce => en_reg_col, D => Q_ctr, Q => Q_reg_col);
-- INST
INST_code_converter : code_converter port map (row => Q_reg_row, col => Q_reg_col, bin => bin);
-- INST bin_to_7_seg_anode
INST_bin_to_7_seg_anode : bin_to_7_seg_anode port map (en => '1', dp_in => '0', DIN => bin, ABCDEFG => ABCDEFG,
DP => DP, an3 => an3, an2 => an2, an1 => an1, an0 => an0);
-- INST
INST_decoder_2_to_4 : decoder_2_to_4 port map (g => '1', D => Q_ctr, Q(0) => col1, Q(1) => col2, Q(2) => col3, Q(3) => col4);

end behavioral;
