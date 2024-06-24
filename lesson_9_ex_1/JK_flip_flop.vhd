-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity JK_flip_flop is
  port ( J, K, reset, clk, ce : in STD_LOGIC;
         Q : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of JK_flip_flop is
  signal Qt : STD_LOGIC;
begin
  Q <= Qt;
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then Qt <= '0';
        elsif ce = '1' then
          if (J = '0' and K = '0') then Qt <= Qt;
            elsif (J = '0' and K = '1') then Qt <= '0';
            elsif (J = '1' and K = '0') then Qt <= '1';
            else Qt <= not Qt; 
          end if;
        else Qt <= Qt;
      end if;
    end if;
  end process;
end architecture;