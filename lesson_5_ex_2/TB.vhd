-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component decoder_3_to_8 is
    port ( D : in STD_LOGIC_VECTOR(2 downto 0);
           Q : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- SIGNAL
  signal D : STD_LOGIC_VECTOR(2 downto 0);
  signal Q : STD_LOGIC_VECTOR(7 downto 0);
begin
  -- INSTANTIATION
  UUT : decoder_3_to_8 port map (D => D, Q => Q);
  -- STIMULUS 8us
  process
  begin
    for i in 0 to 7 loop
      D <= STD_LOGIC_VECTOR(to_unsigned(i, 3));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;