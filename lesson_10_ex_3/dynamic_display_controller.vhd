-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity dynamic_display_controller is
  port ( vis0_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis1_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis2_D : in STD_LOGIC_VECTOR(3 downto 0);
         vis3_D : in STD_LOGIC_VECTOR(3 downto 0);
         clk, reset, dp0, dp1, dp2, dp3 : in STD_LOGIC;
         ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
         DP, an0, an1, an2, an3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of dynamic_display_controller is
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
    port ( dp0, dp1, dp2, dp3 : in STD_LOGIC;
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
  -- COMPONENT ctr_2_bits
  component ctr_2_bits is
    port ( reset, clk, ce, load : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(1 downto 0));
  end component;
  -- COMPONENT divider1000
  component divider1000 is
    port ( clkin, reset : in std_logic; clkout2 : out std_logic);
  end component;
  -- SIGNAL
  signal clkout2, dp_in : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR(1 downto 0);
  signal mux_vis : STD_LOGIC_VECTOR(3 downto 0);
  signal anode0, anode1, anode2, anode3 : STD_LOGIC;
begin
  -- INSTANTIATION divider1000
  INST_divider1000 : divider1000
    port map ( clkin => clk, reset => reset, clkout2 => clkout2);
  -- INSTANTIATION ctr_2_bits
  INST_ctr_2_bits : ctr_2_bits
    port map ( reset => reset, clk => clkout2,
               ce => '1', load => '0', DIN => "00", Q => sel);
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
    port map ( dp0 => dp0, dp1 => dp1,
               dp2 => dp2, dp3 => dp3,
               anode0 => anode0, anode1 => anode1,
               anode2 => anode2, anode3 => anode3,
               dp_out => dp_in);
  -- INSTANTIATION bin_to_7_seg_anode
  INST_bin_to_7_seg_anode : bin_to_7_seg_anode
    port map ( en => '1', dp_in => dp_in,
               DIN => mux_vis, ABCDEFG => ABCDEFG, DP => DP);
  an0 <= anode0;
  an1 <= anode1;
  an2 <= anode2;
  an3 <= anode3;
end architecture;