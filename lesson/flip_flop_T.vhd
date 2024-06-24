-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity flip_flop_T is
  port ( reset, ce, clk : in STD_LOGIC;
         Q : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of flip_flop_T is
signal Q_aux : STD_LOGIC;
begin
  process(reset, clk)
  begin
    -- synchronous reset
    if falling_edge(clk) then
      if reset = '1' then Q_aux <= '0';
        elsif ce = '1' then QQ_aux <= not Q_aux;
      end if;
    end if;
  Q <= Q_aux;
  end process;
end architecture;