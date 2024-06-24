-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity decoder_3_to_8 is
  port ( D : in STD_LOGIC_VECTOR(2 downto 0);
         Q : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of decoder_3_to_8 is
begin
  process (D)
  begin
    case D is
      when "000" => Q <= "00000001";
      when "001" => Q <= "00000010";
      when "010" => Q <= "00000100";
      when "011" => Q <= "00001000";
      when "100" => Q <= "00010000";
      when "101" => Q <= "00100000";
      when "110" => Q <= "01000000";
      when "111" => Q <= "10000000";
      when others => Q <= "00000000";
    end case;
  end process;
end architecture;