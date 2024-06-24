-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--ENTITY
entity decoder_2_to_4 is
  port ( G : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR(1 downto 0);
         Q : out STD_LOGIC_VECTOR(3 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of decoder_2_to_4 is
begin
  Q(3) <= not G or (G and (not D(1) or (D(1) and not D(0))));
  Q(2) <= not G or (G and (not D(1) or (D(1) and D(0))));
  Q(1) <= not G or (G and (D(1) or (not D(1) and not D(0))));
  Q(0) <= not G or (G and (D(1) or (not D(1) and D(0))));
end architecture;