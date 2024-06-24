-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity mux_4c_4b is
  port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
         ch_0_mux, ch_1_mux : in STD_LOGIC_VECTOR(3 downto 0);
         ch_2_mux, ch_3_mux : in STD_LOGIC_VECTOR(3 downto 0);
         mux_out : out STD_LOGIC_VECTOR(3 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of mux_4c_4b is
begin
  process(sel, ch_0_mux, ch_1_mux, ch_2_mux, ch_3_mux)
  begin
    case sel is
      when "00" => mux_out <= ch_0_mux;
      when "01" => mux_out <= ch_1_mux;
      when "10" => mux_out <= ch_2_mux;
      when "11" => mux_out <= ch_3_mux;
      when others => mux_out <= "0000";
    end case;
  end process;
end architecture;