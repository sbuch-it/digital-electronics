-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component JK_flip_flop is
    port ( J, K, reset, clk, ce : in STD_LOGIC;
           Q : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal J, K, reset, clk, ce, Q : STD_LOGIC;
  constant clk_period : time := 1 us;
begin
  -- INSTANTIATION
  UUT : JK_flip_flop
    port map ( J => J, K => K, ce => ce,
               reset => reset, clk => clk, Q => Q);
  -- CLOCK
  clk_process : process
  begin
    clk <= '0'; wait for clk_period/2;
    clk <= '1'; wait for clk_period/2;
  end process;
  -- STIMULUS 18us
  stimulus_process : process
  begin
    reset <= '1'; ce <= '0';
    J <= '0'; K <= '0';
    wait for clk_period;
    reset <= '0';
    wait for 1 us;
    reset <= '0'; ce <= '0';
    J <= '0'; K <= '0';
    wait for clk_period*2;
    J <= '0'; K <= '1';
    wait for clk_period*2;
    J <= '1'; K <= '0';
    wait for clk_period*2;
    J <= '1'; K <= '1';
    wait for clk_period*2;
    ce <= '1';
    J <= '1'; K <= '0';
    wait for clk_period*2;
    J <= '0'; K <= '0';
    wait for clk_period*2;
    J <= '0'; K <= '1';
    wait for clk_period*2;
    J <= '1'; K <= '1';
    wait for clk_period*2;
    reset <= '1'; ce <= '1';
    J <= '0'; K <= '0';
    wait for clk_period;
    assert (false) report "End_Simulation" severity FAILURE;
  end process;
end architecture;