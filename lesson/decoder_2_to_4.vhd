-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--ENTITY
entity decoder_2_to_4_with_enable is
  port ( I0, I1, EN : in STD_LOGIC;
         Y0, Y1, Y2, Y3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of decoder_2_to_4_with_enable is
begin
  Y0 <= not I0 and not I1 and EN;
  Y1 <= I0 and not I1 and EN;
  Y2 <= not I0 and I1 and EN;
  Y3 <= I0 and I1 and EN;
end architecture;