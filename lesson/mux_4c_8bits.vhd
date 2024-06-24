-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity mux_4c_8bits is
  port ( G : in STD_LOGIC;
         S : in STD_LOGIC_VECTOR(1 downto 0);
         A, B, C, D : in STD_LOGIC_VECTOR(7 downto 0);
         Q : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of mux_4c_8bits is
  signal GS : STD_LOGIC_VECTOR(2 downto 0);
begin
  GS <= G & S;
  process(GS)
  begin
    case GS is
      when "000" => Q <= "00000000";
      when "001" => Q <= "00000000";
      when "010" => Q <= "00000000";
      when "011" => Q <= "00000000";
      when "100" => Q <= A;
      when "101" => Q <= B;
      when "110" => Q <= C;
      when "111" => Q <= D;
      when others => Q <= "00000000";
    end case;
  end process;
end architecture;