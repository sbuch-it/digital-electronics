-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component mux_4c_1b is
    port ( G : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR(1 downto 0);
           D : in STD_LOGIC_VECTOR(3 downto 0);
           Q : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal G, Q : STD_LOGIC;
  signal S : STD_LOGIC_VECTOR(1 downto 0);
  signal D : STD_LOGIC_VECTOR(3 downto 0);
begin
  -- INSTANTIATION
  UUT : mux_4c_1b
    port map ( G => G,
               S => S,
               D => D,
               Q => Q);
  -- STIMULUS 8us
  process
  begin
    G <= '0'; S <= "00"; D <= "0001"; wait for 1 us;
    G <= '0'; S <= "01"; D <= "0010"; wait for 1 us;
    G <= '0'; S <= "10"; D <= "0100"; wait for 1 us;
    G <= '0'; S <= "11"; D <= "1000"; wait for 1 us;
    G <= '1'; S <= "00"; D <= "0001"; wait for 1 us;
    G <= '1'; S <= "01"; D <= "0010"; wait for 1 us;
    G <= '1'; S <= "10"; D <= "0100"; wait for 1 us;
    G <= '1'; S <= "11"; D <= "1000"; wait for 1 us;
    wait;
  end process;
end architecture;