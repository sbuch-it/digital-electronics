-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component alu_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- SIGNAL
  signal a, b : STD_LOGIC_VECTOR(3 downto 0);
  signal sel : STD_LOGIC_VECTOR(1 downto 0);
  signal result : STD_LOGIC_VECTOR(7 downto 0);
begin
  -- INSTANTIATION
  UUT : alu_4_bits
    port map ( a => a,
               b => b,
               sel => sel,
               result => result);
  -- STIMULUS 83us
  process
  begin
    sel <= "00";
    a <= "0000"; b <= "1111"; wait for 1 us;
    a <= "1010"; b <= "0101"; wait for 1 us;
    a <= "1111"; b <= "1111"; wait for 1 us;
    sel <= "01";
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
      wait for 1 us;
    end loop;
    sel <= "10";
    a <= "0011";
    for i in 0 to 15 loop
      b <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
      wait for 1 us;
    end loop;
    b <= "1001";
    for i in 0 to 15 loop
      a <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
      wait for 1 us;
    end loop;
    sel <= "11";
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