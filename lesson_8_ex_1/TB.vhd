-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component signed_multiplier_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           product : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- SIGNAL
  signal a, b : STD_LOGIC_VECTOR(3 downto 0);
  signal product : STD_LOGIC_VECTOR(7 downto 0);
begin
  -- INSTANTIATION
  UUT : signed_multiplier_4_bits
    port map ( a => a,
               b => b,
               product => product);
  -- STIMULUS 32us
  process
  begin
    a <= "0101";
    for i in 0 to 15 loop
      b <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
      wait for 1 us;
    end loop;
    b <= "1010";
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;