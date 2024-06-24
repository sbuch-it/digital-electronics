-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity ones_detection_circuit is
  port ( dcba : in STD_LOGIC_VECTOR(3 downto 0);
         f : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of ones_detection_circuit is
begin
  f <= '1' when dcba = "0111" else
       '1' when dcba = "1011" else
       '1' when dcba = "1101" else
       '1' when dcba = "1110" else
       '0';
end architecture;