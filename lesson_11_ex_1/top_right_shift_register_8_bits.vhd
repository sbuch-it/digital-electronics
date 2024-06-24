-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity top_right_shift_register_8_bits is
	port ( clk, reset, load : in STD_LOGIC;
				 msb_in, shift_enable : in STD_LOGIC;
				 data_in : in STD_LOGIC_VECTOR(7 downto 0);
				 lsb_out : out STD_LOGIC;
				 q_shift : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of top_right_shift_register_8_bits is
  -- COMPONENT right_shift_register_8_bits
	component right_shift_register_8_bits is
	  port ( clk, reset, load : in STD_LOGIC;
				   msb_in, shift_enable : in STD_LOGIC;
				   data_in : in STD_LOGIC_VECTOR(7 downto 0);
				   lsb_out : out STD_LOGIC;
				   q_shift : out STD_LOGIC_VECTOR(7 downto 0));
	end component;
	-- COMPONENT edge_detector
  component edge_detector is
    port ( reset, clk, input : in STD_LOGIC;
           ea_input : out STD_LOGIC; -- rising_edge
           ed_input : out STD_LOGIC; -- falling_edge
           e_input : out STD_LOGIC;  -- any edge
           input_s : out STD_LOGIC); -- synchronized signal
  end component;
	-- SIGNAL edge_detector
	signal ea_input, ed_input, e_input, input_s : STD_LOGIC;
begin
	-- INSTANTIATION edge_detector
	INST_edge_detector : edge_detector
		port map ( reset => reset, clk => clk,
               input => shift_enable, ea_input => ea_input,
							 ed_input => ed_input, e_input => e_input,
							 input_s => input_s);
	-- INSTANTIATION right_shift_register_8_bits
	INST_right_shift_register_8_bits : right_shift_register_8_bits
	  port map ( clk => clk, reset => reset, load => load,
							 msb_in => msb_in, shift_enable => ea_input,
							 data_in => data_in, lsb_out => lsb_out,
							 q_shift => q_shift);
end architecture;