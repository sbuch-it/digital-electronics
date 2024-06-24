-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component register_4_bits is
    port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           ce, clk, reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
  end component;
  -- SIGNAL
  signal D : STD_LOGIC_VECTOR(3 downto 0);
  signal ce, clk, reset : STD_LOGIC := '0';
  signal Q : STD_LOGIC_VECTOR(3 downto 0);
  constant clk_period : time := 1 us;
begin
  -- INSTANTIATION
  UUT: register_4_bits
    port map ( D => D ,ce => ce, clk => clk,
               reset => reset, Q => Q);
  -- CLOCK
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  -- STIMULUS
  stimulus_process : process
  begin
    reset <= '1'; ce <= '0'; D <= "0000";
    wait for clk_period;
    reset <= '0';
    wait for clk_period*4;
    ce <= '1';
    for i in 0 to 15 loop
      D <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for clk_period;
    end loop;
    reset <= '1'; D <= "0000";
    wait for clk_period;
    assert (false) report "End_Simulation" severity FAILURE;
  end process;
end architecture;