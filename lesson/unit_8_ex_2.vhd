-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity EX2 is
  port ( clk, reset, a, b, P : in STD_LOGIC;
         MAB, MBA : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of EX2 is
  type STATES is (POS_A, POS_B, PREP_AB, MOV_AB, PREP_BA, MOV_BA);
  signal C_S, N_S : STATES;
  begin
  register_process : process (clk, reset)
  begin
    if reset = '1' then C_S <= POS_A
      elsif rising_edge(clk) then C_S <= N_S;
    end if;
  end process;
  system_process : process (C_S, a, b, P)
  begin
    N_S <= C_S;
    case C_S is
      when POS_A =>
        if P = '1' then N_S <= PREP_AB; end if;
        MAB = '0'; MBA = '0';
      when PREP_AB =>
        if P = '0' then N_S <= MOV_AB; end if;
        MAB = '0'; MBA = '0';
      when MOV_AB =>
        if b = '1' then N_S <= POS_B
          elsif P = '1' and b = '0' then N_S <= PREP_AB;
        end if;
        MAB = '1'; MBA = '0';
    end case;
  end process;
end architecture;