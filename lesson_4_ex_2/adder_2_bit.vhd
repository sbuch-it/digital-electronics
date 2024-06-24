-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity adder_2_bit is
  port ( a, b : in STD_LOGIC_VECTOR(1 downto 0);
         result : out STD_LOGIC_VECTOR(2 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of adder_2_bit is
  -- SIGNAL
  signal ab : STD_LOGIC_VECTOR(3 downto 0);
begin
  ab <= a & b;
  with ab select result <=
    "000" when "0000",
    O"1" when X"1" | X"4",
    O"2" when X"2" | X"5" | X"8",
    O"3" when X"3" | X"6" | X"9" | X"C",
    O"4" when X"7" | X"A" | X"D",
    O"5" when X"B" | X"E",
    O"6" when X"F",
    O"0" when others;
end architecture;