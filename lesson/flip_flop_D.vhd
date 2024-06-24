-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity flip_flop_D is
  port ( reset, D, clk : in STD_LOGIC;
         Q, QN : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of flip_flop_D is
begin
  process(reset, clk)
  begin
    -- asynchronous reset
    if reset = '1' then Q <= '0'; QN <= '1';
      elsif rising_edge clk then Q <= D; QN <= not D;
    end if;
  end process;
end architecture;