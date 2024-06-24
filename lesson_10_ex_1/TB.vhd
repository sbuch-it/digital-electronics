-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component mux_4c_4b is
    port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
           ch_0_mux, ch_1_mux : in STD_LOGIC_VECTOR(3 downto 0);
           ch_2_mux, ch_3_mux : in STD_LOGIC_VECTOR(3 downto 0);
           mux_out : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  -- SIGNAL
  signal sel : STD_LOGIC_VECTOR(1 downto 0);
  signal ch_0_mux, ch_1_mux : STD_LOGIC_VECTOR(3 downto 0);
  signal ch_2_mux, ch_3_mux : STD_LOGIC_VECTOR(3 downto 0);
  signal mux_out : STD_LOGIC_VECTOR(3 downto 0);
begin
  -- INSTANTIATION
  UUT: mux_4c_4b
    port map ( sel => sel,
               ch_0_mux => ch_0_mux, ch_1_mux => ch_1_mux,
               ch_2_mux => ch_2_mux, ch_3_mux => ch_3_mux,
               mux_out => mux_out);
  -- STIMULUS
  process
  begin
    sel <= "00";
    for i in 0 to 15 loop
      ch_0_mux <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    sel <= "01";
    for i in 0 to 15 loop
      ch_1_mux <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    sel <= "10";
    for i in 0 to 15 loop
      ch_2_mux <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    sel <= "11";
    for i in 0 to 15 loop
      ch_3_mux <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;