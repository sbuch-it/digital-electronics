-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- ENTITY
entity comparator_4_bits is
  port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
         a_equal_b, a_greater_b, a_less_b : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of comparator_4_bits is
begin
  process (a, b)
  begin
    a_equal_b <= '0';
    a_greater_b <= '0';
    a_less_b <= '0';
    if a = b then a_equal_b <= '1';
      elsif a > b then a_greater_b <= '1';
      elsif a < b then a_less_b <= '1';
    end if;
  end process;
end architecture;