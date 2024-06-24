-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity D_flip_flop is
  port ( D, clk, ce, reset : in STD_LOGIC;
         Q : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of D_flip_flop is
  signal Qt : STD_LOGIC;
begin
  Q <= Qt;
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then Qt <= '0';
        elsif ce = '0' then Qt <= Qt;
        else ce = '1' then Qt <= D;
      end if;
    end if;
  end process;
end architecture;