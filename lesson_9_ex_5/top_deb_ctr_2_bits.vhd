-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity top_deb_ctr_2_bits is
  port ( DIN : in STD_LOGIC_VECTOR (1 downto 0);
         reset, clk, ce, load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (1 downto 0);
         ceo, tc : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of top_deb_ctr_2_bits is
  -- COMPONENT divider100
  component divider100 is
    port ( clkin, reset : in STD_LOGIC;
           clkout1 : out STD_LOGIC);
  end component;
  -- COMPONENT divider1000
  component divider1000 is
    port ( clkin, reset : in STD_LOGIC;
           clkout2 : out STD_LOGIC);
    end component;
  -- COMPONENT D_flip_flop
  component D_flip_flop is
    port ( D, clk, ce, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
  end component;
  -- COMPONENT edge_detector
  component edge_detector is
    port ( input, clk, reset : in STD_LOGIC;
           ea_input, ed_input : out STD_LOGIC;
           e_input, input_s : out STD_LOGIC);
  end component;
  -- COMPONENT ctr_2_bits
  component ctr_2_bits is
    port ( reset, clk, ce, load : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(1 downto 0);
           tc, ceo : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal clkin, clkout1, clkout2 : STD_LOGIC;
  signal D, reset, Q, ce: STD_LOGIC;
  signal input, ea_input, ed_input : STD_LOGIC;
  signal e_input, input_s : STD_LOGIC;
begin
  -- INSTANTIATION divider100
  INST_divider100 : divider100
    port map ( clkin => clk, reset => reset, clkout1 => clkout1);
  -- INSTANTIATION divider1000
  INST_divider1000 : divider1000
    port map ( clkin => clkout1, reset => reset,
               clkout2 => clkout2);
  -- INSTANTIATION D_flip_flop
  INST_D_flip_flop : D_flip_flop
    port map ( ce => '1', clk => clkout2, D => ce,
               reset => reset, Q => Q);
  -- INSTANTIATION edge_detector
  INST_edge_detector : edge_detector
    port map ( input => Q, clk => clk, reset => reset,
               ea_input => ea_input, ed_input => ed_input,
               e_input => e_input, input_s => input_s);
  -- INSTANTIATION ctr_2_bits
  INST_ctr_2_bits : ctr_2_bits
    port map ( reset => reset, clk => clk, ce => ea_input,
               load => load, DIN => DIN,
               Q => Q, ceo => ceo, tc => tc);
end architecture;