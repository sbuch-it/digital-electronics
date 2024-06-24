-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component number_detection_circuit is
    port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           f1, f2, f3 : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal a : STD_LOGIC_VECTOR(3 downto 0);
  signal f1, f2, f3 : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : number_detection_circuit
    port map ( a => a,
               f1 => f1,
               f2 => f2,
               f3 => f3);
  -- STIMULUS 16us
  process
  begin
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;