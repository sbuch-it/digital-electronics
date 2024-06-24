-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT flip_flop_D
  component flip_flop_D is
    port ( reset, D, clk : in STD_LOGIC;
           Q, QN : out STD_LOGIC);
  end component;
  -- SIGNALS
  signal reset, D, clk : STD_LOGIC := '0';
  signal Q, QN : STD_LOGIC;
  -- CLOCK PERIOD
  constant clk_period : time := 1 us;
begin
  -- INSTANTIATION
  UUT : flip_flop_D
    port map ( reset => reset, D => D, clk => clk,
               Q => Q, QN => QN);
  -- CLOCK PROCESS
  clk_process : process
  begin
    clk <= '0'; wait for clk_period/2;
    clk <= '1'; wait for clk_period/2;
  end process;
  -- STIMULUS PROCESS
  stimulus_process : process
  begin
    reset <= '1'; D <= '0';
    wait for clk_period*2;
    reset <= '0'; D <= '1';
    wait for clk_period*2;
    reset <= '0'; D <= '0';
    wait for clk_period*2;
    reset <= '1'; D <= '1';
    wait for clk_period*2;
    reset <= '1'; D <= '0';
    wait for clk_period*2;
    assert (false) report "End_Simulation" severity FAILURE;
  end process;
end architecture;