-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- ENTITY
entity counter_4_bits_sync is
  port ( reset, CE, clk : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR(3 downto 0));
end entity;
architecture Behavioral of counter_4_bits_sync is
  -- SIGNAL
  signal Q_internal : STD_LOGIC_VECTOR(4 downto 0) := "0000";
begin
  process(clk, reset)
  begin
    if falling_edge(clk) then -- falling edge synchronism
      if reset = '1' then Q_internal <= "0000"; -- asynchronous
      elsif CE = '1' then Q_internal <= Q_internal + 1; end if;
    end if;
  end process;
end architecture;