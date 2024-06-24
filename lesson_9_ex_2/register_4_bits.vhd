-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity register_4_bits is
  port ( D : in STD_LOGIC_VECTOR (3 downto 0);
         ce, clk, reset : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (3 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of register_4_bits is
  signal Qt : STD_LOGIC_VECTOR(3 downto 0);
begin
  Q <= Qt;
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then Qt <= "0000";
        elsif ce = '0' then Qt <= Qt; 
        elsif ce = '1' then Qt <= D;
      end if;
    end if;
  end process;
end architecture;