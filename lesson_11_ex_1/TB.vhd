-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component right_shift_register_8_bits is
	  port ( clk, reset, load : in STD_LOGIC;
           msb_in, shift_enable : in STD_LOGIC;
			     data_in : in STD_LOGIC_VECTOR(7 downto 0);
			     lsb_out : out STD_LOGIC;
			     q_shift : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- SIGNAL
  signal clk, reset, load : STD_LOGIC := '0';
  signal msb_in, shift_enable : STD_LOGIC := '0';
  signal data_in : STD_LOGIC_VECTOR(7 downto 0);
  signal lsb_out : STD_LOGIC;
  signal q_shift : STD_LOGIC_VECTOR(7 downto 0);
  constant clk_period : time := 1 us;
begin
  -- INSTANTIATION
  UUT : right_shift_register_8_bits
    port map ( clk => clk, reset => reset, load => load,
               msb_in => msb_in, data_in => data_in,
               shift_enable => shift_enable,
               lsb_out => lsb_out, q_shift => q_shift);
    -- CLOCK
  clk_process : process
  begin
		clk <= '0'; wait for clk_period/2;
		clk <= '1'; wait for clk_period/2;
  end process;
  -- STIMULUS 28us
  stimulus_process : process
  begin		
		reset<='1'; load<='0'; shift_enable<='0';
    msb_in<='0';
    data_in <= "00000000";
		wait for clk_period;
		reset<='0'; load<='0'; shift_enable<='0';
		wait for clk_period*5;
		reset<='0'; load<='1'; shift_enable<='0';
    data_in <= "10101010";
		wait for clk_period;
		reset<='0'; load<='0'; shift_enable<='1';
    msb_in <= '0';
		wait for clk_period*10;
    msb_in <= '1';
		wait for clk_period*10;
		reset <= '1'; load<='0'; shift_enable<='0';
		wait for clk_period;
    wait;
  end process;
end architecture;