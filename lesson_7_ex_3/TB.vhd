-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component signed_adder_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           sum : out STD_LOGIC_VECTOR(4 downto 0));
  end component;
  -- SIGNAL
  signal a, b : STD_LOGIC_VECTOR(3 downto 0);
  signal sum : STD_LOGIC_VECTOR(4 downto 0);
begin
  -- INSTANTIATION
  UUT : signed_adder_4_bits
    port map ( a => a,
               b => b,
               sum => sum);
  -- STIMULUS 32us
  process
  begin
    a <= "0111";
    for i in 0 to 15 loop
      b <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    b <= "1110";
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;