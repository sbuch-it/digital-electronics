-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity function_four_var is
  port ( abcd : in STD_LOGIC_VECTOR(3 downto 0);
         Y : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of function_four_var is
begin
  process (abcd)
  begin
    if abcd = "0000" then Y <= '1';
      elsif abcd = X"2" then Y <= '1';
      elsif abcd = X"4" then Y <= '1';
      elsif abcd = X"5" then Y <= '1';
      elsif abcd = X"6" then Y <= '1';
      elsif abcd = X"9" then Y <= '1';
      elsif abcd = X"A" then Y <= '1';
      elsif abcd = X"D" then Y <= '1';
      elsif abcd = X"F" then Y <= '1';
      else Y <= '0';
    end if;
  end process;
end architecture;