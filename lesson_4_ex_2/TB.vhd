-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component adder_2_bit is
    port ( a, b : in STD_LOGIC_VECTOR(1 downto 0);
           result : out STD_LOGIC_VECTOR(2 downto 0));
  end component;
  -- SIGNAL
  signal t_a, t_b : STD_LOGIC_VECTOR(1 downto 0);
  signal t_result : STD_LOGIC_VECTOR(2 downto 0);
begin
  -- INSTANTIATION
  UUT : adder_2_bit
    port map ( a => t_a,
               b => t_b,
               result => t_result);
  -- STIMULUS 16us
  process
  begin
    for i in 0 to 3 loop
      t_a <= STD_LOGIC_VECTOR(to_unsigned(i, 2));
      for j in 0 to 3 loop
        t_b <= STD_LOGIC_VECTOR(to_unsigned(j, 2));
        wait for 1 us;
      end loop;
    end loop;
    wait;
  end process;
end architecture;