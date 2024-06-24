-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity func is
  port ( a : in STD_LOGIC;
         b : in STD_LOGIC;
         c : in STD_LOGIC;
         Y : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of func is
  -- SIGNAL
  signal P : STD_LOGIC;
begin
  P <= a nand b;
  Y <= P or c;
end architecture;