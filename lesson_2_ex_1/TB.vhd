-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component ones_detection_circuit is
    port ( dcba : in STD_LOGIC_VECTOR(3 downto 0);
           f : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal s_dcba : STD_LOGIC_VECTOR(3 downto 0);
  signal s_f : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : ones_detection_circuit
    port map ( dcba => s_dcba,
               f => s_f);
  -- STIMULUS 16us
  process
  begin
    for i in 0 to 15 loop
      s_dcba <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;