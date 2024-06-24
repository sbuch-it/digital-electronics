-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
-- ENTITY
entity two_s_complement_4_bits is
  port ( a : in STD_LOGIC_VECTOR(3 downto 0);
         result : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of two_s_complement_4_bits is
begin
  result <= - (a(3) & a(3) & a(3) & a(3) & a);
end architecture;