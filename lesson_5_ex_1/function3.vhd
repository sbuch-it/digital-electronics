-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity function3 is
  port ( a : in STD_LOGIC_VECTOR(3 downto 0);
         f3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of function3 is
begin
  f3 <= '1' when a = X"4" else
        '1' when a = X"8" else
        '0';
end architecture;