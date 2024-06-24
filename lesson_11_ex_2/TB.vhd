-- HEADER
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- ENTITY 
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT stepper_motor_sss
  component stepper_motor_sss is
    port ( reset, clk, run, direction : in STD_LOGIC;
           a, b, c, d : out  STD_LOGIC;
           state : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  -- SIGNAL
  signal reset, clk, run, direction : STD_LOGIC;
  signal a, b, c, d : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR(3 downto 0);
  constant clk_period : time := 1 us;
begin
  UUT : stepper_motor_sss
    port map ( clk => clk, reset => reset,
               run => run, direction => direction,
               a => a, b => b, c => c, d => d, state => state);
  -- CLOCK
  clk_process : process
  begin
	  clk <= '0'; wait for clk_period/2;
		clk <= '1'; wait for clk_period/2;
  end process;
  -- STIMULUS 26us
  stimulus_process : process
  begin
    reset<='1'; run<='0'; direction<='0';
    wait for clk_period*2;
	  reset<='0'; run<='0'; direction<='0';
    wait for clk_period*4;
		reset<='0'; run<='1'; direction<='0';
    wait for clk_period*8;
    reset<='0'; run<='0'; direction<='1';
    wait for clk_period*2;
    reset<='0'; run<='1'; direction<='1';
    wait for clk_period*8;
    reset<='0'; run<='1'; direction<='0';
    wait for clk_period;
    reset<='0'; run<='0'; direction<='0';
    wait for clk_period;
    wait;
  end process;
end architecture;