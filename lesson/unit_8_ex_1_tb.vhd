-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENTS
  component EX1 is
    port ( clk, reset, data : in STD_LOGIC;
           RE, FE, E : out STD_LOGIC);
  end component;
  -- SIGNALS
  signal clk, reset, data, RE, FE, E : STD_LOGIC;
  constant clk_period : time := 1 us;
  begin
    UUT : EX
      port map ( clk => clk, reset => reset, data => data,
                 RE => RE, FE => FE, E => E);
    clock_process : process
    begin
      clk <= '0'; wait for clk_period/2;
      clk <= '1'; wait for clk_period/2;
    end process;
    stimulus_process : process
    begin
      reset <= '1'; data = '0'; wait for clk_period*2;
      reset <= '0'; data = '1'; wait for clk_period*4;
      reset <= '0'; data = '0'; wait for clk_period*4;
      reset <= '1'; data = '0'; wait for clk_period*2;
      wait;
    end process;
end architecture;