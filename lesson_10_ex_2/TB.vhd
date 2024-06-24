-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity TB is end;
-- ARCHITECTURE
architecture Behavioral of TB is
  -- COMPONENT
  component dynamic_display_partial_controller is
    port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
           vis0_D : in STD_LOGIC_VECTOR(3 downto 0);
           vis1_D : in STD_LOGIC_VECTOR(3 downto 0);
           vis2_D : in STD_LOGIC_VECTOR(3 downto 0);
           vis3_D : in STD_LOGIC_VECTOR(3 downto 0);
           dp_in : in STD_LOGIC;
           ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP, an0, an1, an2, an3 : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal sel : STD_LOGIC_VECTOR(1 downto 0);
  signal vis0_D, vis1_D : STD_LOGIC_VECTOR(3 downto 0);
  signal vis2_D, vis3_D : STD_LOGIC_VECTOR(3 downto 0);
  signal dp_in, DP, an0, an1, an2, an3 : STD_LOGIC;
  signal ABCDEFG : STD_LOGIC_VECTOR(6 downto 0);
begin
  -- INSTANTIATION
  UUT : dynamic_display_partial_controller
    port map ( sel => sel,
               vis0_D => vis0_D, vis1_D => vis1_D,
               vis2_D => vis2_D, vis3_D => vis3_D,
               dp_in => dp_in, DP => DP,
               an0 => an0, an1 => an1,
               an2 => an2, an3 => an3,
               ABCDEFG => ABCDEFG);
  -- STIMULUS
  process
  begin
    dp_in <= '1';
    vis0_D <= "0000"; -- 0
    vis1_D <= "0001"; -- 1
    vis2_D <= "0010"; -- 2
    vis3_D <= "0011"; -- 3
    sel <= "00";
    wait for 1 us;
    sel <= "01";
    wait for 1 us;
    sel <= "10";
    wait for 1 us;
    sel <= "11";
    wait for 1 us;
    vis0_D <= "1010"; -- A
    vis1_D <= "1011"; -- b
    vis2_D <= "1100"; -- C
    vis3_D <= "1101"; -- d
    wait;
  end process;
end architecture;