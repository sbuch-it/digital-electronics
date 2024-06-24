-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity and_4_bits is
  port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
         result : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of and_4_bits is
begin
  result <= "0000" & (a and b);
end architecture;