-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity function1 is
  port ( a : in STD_LOGIC_VECTOR(3 downto 0);
         f1 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of function1 is
begin
  f1 <= not a(0) and (a(1) or a(2) or a(3));
end architecture;