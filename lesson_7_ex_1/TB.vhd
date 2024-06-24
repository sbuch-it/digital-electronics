-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component full_adder is
    port ( a, b, cin : in STD_LOGIC;
           cout, sum : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal a, b, cin, cout, sum : STD_LOGIC;
begin
  -- INSTANTIATION
  UUT : full_adder
    port map ( a => a,
               b => b,
               cin => cin,
               cout => cout,
               sum => sum);
  -- STIMULUS 8us
  process
  begin
    a <= '0'; b <= '0'; cin <= '0'; wait for 1 us;
    a <= '0'; b <= '0'; cin <= '1'; wait for 1 us;
    a <= '0'; b <= '1'; cin <= '0'; wait for 1 us;
    a <= '0'; b <= '1'; cin <= '1'; wait for 1 us;
    a <= '1'; b <= '0'; cin <= '0'; wait for 1 us;
    a <= '1'; b <= '0'; cin <= '1'; wait for 1 us;
    a <= '1'; b <= '1'; cin <= '0'; wait for 1 us;
    a <= '1'; b <= '1'; cin <= '1'; wait for 1 us;
    wait;
  end process;
end architecture;