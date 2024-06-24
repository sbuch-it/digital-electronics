-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity mux_4_channels_8_bits is
  port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
         res_and, res_com : in STD_LOGIC_VECTOR(7 downto 0);
         res_add, res_mul : in STD_LOGIC_VECTOR(7 downto 0);
         result : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of mux_4_channels_8_bits is
begin
  process(sel, res_and, res_com, res_add, res_mul)
  begin
    case sel is
      when "00" => result <= res_and;
      when "01" => result <= res_com;
      when "10" => result <= res_add;
      when others => result <= res_mul;
    end case;
  end process;
end architecture;