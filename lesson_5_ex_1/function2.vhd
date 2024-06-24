-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity function2 is
  port ( a : in STD_LOGIC_VECTOR(3 downto 0);
         f2 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of function2 is
begin
  process(a)
  begin
    if a >= X"1" or a <= X"4" then f2 <= '1';
      else f2 <= '0';
    end if;
  end process;
end architecture;