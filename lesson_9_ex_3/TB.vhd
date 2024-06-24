-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component ctr_2_bits is
    port ( reset, clk, ce, load : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(1 downto 0);
           tc, ceo : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal reset, clk, ce, load : STD_LOGIC := '0';
  signal DIN : STD_LOGIC_VECTOR(1 downto 0);
  signal Q : STD_LOGIC_VECTOR(1 downto 0);
  signal tc, ceo : STD_LOGIC;
  constant clk_period : time := 1 us;
begin
  -- INSTANTIATION
  UUT: ctr_2_bits
    port map ( reset => reset, clk => clk, ce => ce,
               load => load, DIN => DIN, Q => Q,
               tc => tc, ceo => ceo);
  -- CLOCK
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  -- STIMULUS
  stimulus_process : process
  begin
    reset <= '1'; ce <= '0'; DIN <= "00"; load <= '0';
    wait for clk_period;
    reset <= '0';
    wait for clk_period*4;
    load <= '1'; DIN <= "10";
    wait for clk_period;
    load <= '0'; ce <= '1';
    wait for clk_period*20;
    reset <= '1';
    wait;
  end process;
end architecture;