-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component decoder_2_to_4 is
    port ( G : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  --SIGNAL
  signal G : STD_LOGIC;
  signal D : STD_LOGIC_VECTOR(1 downto 0);
  signal Q : STD_LOGIC_VECTOR(3 downto 0);
begin
  -- INSTANTIATION
  UUT : decoder_2_to_4 port map (G => G, D => D, Q => Q);
  -- STIMULUS 8us
  process
  begin
    G <= '0'; D <= "00"; wait for 1 us;
    G <= '0'; D <= "01"; wait for 1 us;
    G <= '0'; D <= "10"; wait for 1 us;
    G <= '0'; D <= "11"; wait for 1 us;
    G <= '1'; D <= "00"; wait for 1 us;
    G <= '1'; D <= "01"; wait for 1 us;
    G <= '1'; D <= "10"; wait for 1 us;
    G <= '1'; D <= "11"; wait for 1 us;
    wait;
  end process;
end architecture;