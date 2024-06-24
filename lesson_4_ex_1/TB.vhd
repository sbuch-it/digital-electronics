-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component function_four_var is
    port ( abcd : in STD_LOGIC_VECTOR(3 downto 0);
           Y : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal abcd : STD_LOGIC_VECTOR(3 downto 0);
  signal Y : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : function_four_var
    port map ( abcd => abcd,
               Y => Y);
  -- STIMULUS 16us
  process
  begin
    for i in 0 to 15 loop
      abcd <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;