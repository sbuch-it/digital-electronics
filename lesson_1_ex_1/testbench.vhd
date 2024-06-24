-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity testbench is end;
-- ARCHITECTURE
architecture Behavioral of testbench is
  -- COMPONENT
  component func is
    port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           Y : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal a, b, c, Y : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : func
    port map ( a => a,
               b => b,
               c => c,
               Y => Y);
  -- STIMULUS 8us
  process
  begin
    a <= '0'; b <= '0'; c <= '0'; wait for 1 us;
    a <= '0'; b <= '0'; c <= '1'; wait for 1 us;
    a <= '0'; b <= '1'; c <= '0'; wait for 1 us;
    a <= '0'; b <= '1'; c <= '1'; wait for 1 us;
    a <= '1'; b <= '0'; c <= '0'; wait for 1 us;
    a <= '1'; b <= '0'; c <= '1'; wait for 1 us;
    a <= '1'; b <= '1'; c <= '0'; wait for 1 us;
    a <= '1'; b <= '1'; c <= '1'; wait;
  end process;
end architecture;