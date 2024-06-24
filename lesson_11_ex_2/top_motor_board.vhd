-- HEADER
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity top_motor_board is
  port ( reset, clk, run, direction : in STD_LOGIC;
         a, b, c, d : out STD_LOGIC;
         state : out STD_LOGIC_VECTOR(3 downto 0);
				 clk_50_Hz, Vis_run : out STD_LOGIC;
				 Vis_reset, Vis_direction : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of top_motor_board is
  -- COMPONENT stepper_motor_sss
  component stepper_motor_sss is
    port ( reset, clk, run, direction : in STD_LOGIC;
           a, b, c, d : out  STD_LOGIC;
					 state : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  -- COMPONENT divider2000000
  component divider2000000 is
    port ( clkin, reset : in STD_LOGIC;
           clkout3 : out STD_LOGIC);
  end component;
  -- SIGNAL
  signal clkout3 : STD_LOGIC;
begin
  -- INSTANTIATION divider2000000
	INST_divider2000000 : divider2000000
	  port map ( clkin => clk, reset => '0', clkout3 => clkout3);
  -- INSTANTIATION stepper_motor_sss
	INST_stepper_motor_sss : stepper_motor_sss
	  port map ( reset => reset, clk => clkout3,
               run => run, direction => direction,
               a => a, b => b, c => c, d => d, state => state);
  -- INSTANTIATION
  clk_50_Hz <= clkout3;
  Vis_run <= run;
	Vis_reset <= reset;
  Vis_direction <= direction;
end architecture;