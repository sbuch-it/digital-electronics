-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity func is
  port ( abcd : in STD_LOGIC_VECTOR(3 downto 0);
         Y : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of func is
begin
  process(abcd)
  begin
    case abcd is
      when "0000" => Y <= '1';
      when X"2" | X"4" | "0101" | X"6" => Y <= '1';
      when X"9" | X"A" | X"D" | X"F" => Y <= '1';
      when others => Y <= '0';
    end case;
  end process;
end architecture;