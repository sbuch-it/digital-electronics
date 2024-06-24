-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- ENTITY
entity ctr_2_bits is
  port ( reset, clk, ce, load : in STD_LOGIC;
         DIN : in STD_LOGIC_VECTOR(1 downto 0);
         Q : out STD_LOGIC_VECTOR(1 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of ctr_2_bits is
  -- SIGNAL
  signal Qt : std_logic_vector(1 downto 0);
begin
  Q <= Qt;
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then Qt <= "00";
        elsif load = '1' then Qt <= DIN;
        elsif (load = '0' and ce = '0') then Qt <= Qt;
        elsif (load = '0' and ce = '1') then Qt <= Qt + 1;
      end if;
    end if;
  end process;
end architecture;