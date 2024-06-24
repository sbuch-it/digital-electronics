-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity dynamic_display_partial_controller is
  port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
         vis0_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis1_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis2_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis3_D : in STD_LOGIC_VECTOR(3 downto 0);
         dp_in : in STD_LOGIC;
         ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
         DP, an0, an1, an2, an3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of dynamic_display_partial_controller is
  -- COMPONENT bin_to_7_seg_anode
  component bin_to_7_seg_anode is
    port ( en, dp_in : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(3 downto 0);
           ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP : out STD_LOGIC);
  end component;
  -- COMPONENT decoder_2_to_4
  component decoder_2_to_4 is
    port ( g : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  -- COMPONENT gates
  component gates is
    port ( dp_in_gates : in STD_LOGIC;
           anode0, anode1, anode2, anode3 : in STD_LOGIC;
           dp_out : out STD_LOGIC);
  end component;
  -- COMPONENT mux_4c_4b
  component mux_4c_4b is
    port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
           ch_0_mux, ch_1_mux : in STD_LOGIC_VECTOR(3 downto 0);
           ch_2_mux, ch_3_mux : in STD_LOGIC_VECTOR(3 downto 0);
           mux_out : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  -- SIGNAL
  signal dp_out : STD_LOGIC;
  signal mux_vis : STD_LOGIC_VECTOR(3 downto 0);
  signal anode0, anode1, anode2, anode3 : STD_LOGIC;
begin
  -- INSTANTIATION mux_4c_4b
  INST_mux_4c_4b : mux_4c_4b
    port map ( sel => sel, ch_0_mux => vis0_D,
               ch_1_mux => vis1_D, ch_2_mux => vis2_D,
               ch_3_mux => vis3_D, mux_out => mux_vis);
  -- INSTANTIATION decoder_2_to_4
  INST_decoder_2_to_4 : decoder_2_to_4
    port map ( g => '1', D => sel,
               Q(0) => anode0, Q(1) => anode1,
               Q(2) => anode2, Q(3) => anode3);
  -- INSTANTIATION gates
  INST_gates : gates
    port map ( dp_in => dp_in,
               anode0 => anode0, anode1 => anode1,
               anode2 => anode2, anode3 => anode3,
               dp_out => dp_out);
  -- INSTANTIATION bin_to_7_seg_anode
  INST_bin_to_7_seg_anode : bin_to_7_seg_anode
    port map ( en => '1', dp_in => dp_out,
               DIN => mux_vis, ABCDEFG => ABCDEFG, DP => DP);
end architecture;