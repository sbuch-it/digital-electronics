-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--ENTITY
entity encoder_DEC_BCD is
  port ( D : in STD_LOGIC_VECTOR(9 downto 0);
         A : out STD_LOGIC_VECTOR(3 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of encoder_DEC_BCD is
begin
  process(D)
  begin
    case D is
      when "0000000001" => A <= "0000";
      when "0000000010" => A <= "0001";
      when "0000000100" => A <= "0010";
      when "0000001000" => A <= "0011";
      when "0000010000" => A <= "0100";
      when "0000100000" => A <= "0101";
      when "0001000000" => A <= "0110";
      when "0010000000" => A <= "0111";
      when "0100000000" => A <= "1000";
      when "1000000000" => A <= "1001";
      when others => A <= "0000";
    end case;
  end process;
end architecture;