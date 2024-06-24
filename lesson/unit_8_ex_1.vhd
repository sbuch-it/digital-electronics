-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity EX1 is
  port ( clk, reset, data : in STD_LOGIC;
         RE, FE, E : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of EX1 is
  type STATES is (DET0, DET0to1, DET1to0, DET1);
  signal C_S, N_S : STATES;
  begin
  register_process : process (clk, reset)
  begin
    if reset = '1' then C_S <= DET0;
      elsif rising_edge(clk) then C_S <= N_S;
    end if;
  end process;
  input_process : process (C_S, data)
  begin
    N_S <= C_S;
    case C_S is
      when DET0 =>
        if data = '1' then N_S <= DET0to1
          else N_S <= DET0; end if;
      when DET0to1 =>
        if data = '1' then N_S <= DET1;
          else N_S <= DET1to0; end if;
      when DET1to0 =>
        if data = '1' then N_S <= DET1to0;
          else N_S <= DET0; end if;
      when DET1 =>
        if data = '1' then N_S <= DET1;
          else N_S <= DET1to0; end if;
      when others => N_S <= DET0;
    end case;
  end process;
  output_process : process (C_S)
  begin
    case C_S is
      when DET0 => RE <= '0'; FE <= '0'; E <= '0';
      when DET0to1 => RE <= '1'; FE <= '0'; E <= '1';
      when DET1to0 => RE <= '0'; FE <= '1'; E <= '1';
      when DET0 => RE <= '0'; FE <= '0'; E <= '0';
      when others => RE <= '0'; FE <= '0'; E <= '0';
    end case;
  end process;
end architecture;