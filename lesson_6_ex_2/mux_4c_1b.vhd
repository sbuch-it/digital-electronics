-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity mux_4c_1b is
  port ( G : in STD_LOGIC;
         S : in STD_LOGIC_VECTOR(1 downto 0);
         D : in STD_LOGIC_VECTOR(3 downto 0);
         Q : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of mux_4c_1b is
  signal GS : STD_LOGIC_VECTOR(2 downto 0);
begin
  GS <= G & S;
  process(GS)
  begin
    case GS is
      when "000" => Q <= '0';
      when "001" => Q <= '0';
      when "010" => Q <= '0';
      when "011" => Q <= '0';
      when "100" => Q <= D(0);
      when "101" => Q <= D(1);
      when "110" => Q <= D(2);
      when "111" => Q <= D(3);
      when others => Q <= '0';
    end case;
  end process;
end architecture;