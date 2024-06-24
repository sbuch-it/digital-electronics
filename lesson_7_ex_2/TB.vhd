-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component comparator_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           a_equal_b, a_greater_b, a_less_b : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal a, b : STD_LOGIC_VECTOR(3 downto 0);
  signal a_equal_b, a_greater_b, a_less_b : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : comparator_4_bits
    port map ( a => a,
               b => b,
               a_equal_b => a_equal_b,
               a_greater_b => a_greater_b,
               a_less_b => a_less_b);
  -- STIMULUS 32us
  process
  begin
    a <= "0011";
    for i in 0 to 15 loop
      b <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    b <= "1100";
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;