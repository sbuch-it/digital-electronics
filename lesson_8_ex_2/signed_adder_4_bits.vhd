-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
-- ENTITY
entity signed_adder_4_bits is
  port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
         result : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of signed_adder_4_bits is
  signal res : STD_LOGIC_VECTOR(4 downto 0);
begin
  res <= (a(3) & a) + (b(3) & b);
  result <= res(4) & res(4) & res(4) & res;
end architecture;