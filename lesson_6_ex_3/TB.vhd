-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component bin_to_7_seg_anode is
    port ( en, dp_in : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(3 downto 0);
           ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP, an3, an2, an1, an0 : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal en, dp_in, DP : STD_LOGIC;
  signal DIN : STD_LOGIC_VECTOR(3 downto 0);
  signal ABCDEFG : STD_LOGIC_VECTOR(6 downto 0);
begin
  -- INSTANTIATION
  UUT : bin_to_7_seg_anode
    port map ( en => en,
               dp_in => dp_in,
               DIN => DIN,
               ABCDEFG => ABCDEFG,
               DP => DP,
               an3 => an3,
               an2 => an2,
               an1 => an1,
               an0 => an0);
  -- STIMULUS 64us
  process
  begin
    en <= '0';
    dp_in <= '0';
    for i in 0 to 15 loop
      DIN <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    en <= '0';
    dp_in <= '1';
    for i in 0 to 15 loop
      DIN <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    en <= '1';
    dp_in <= '0';
    for i in 0 to 15 loop
      DIN <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    en <= '1';
    dp_in <= '1';
    for i in 0 to 15 loop
      DIN <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
      wait for 1 us;
    end loop;
    wait;
  end process;
end architecture;