-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity right_shift_register_8_bits is
  port ( clk, reset, load : in STD_LOGIC;
				 msb_in, shift_enable : in STD_LOGIC;
				 data_in : in STD_LOGIC_VECTOR(7 downto 0);
				 lsb_out : out STD_LOGIC;
				 q_shift : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Behavioral of right_shift_register_8_bits is
  -- SIGNAL
  signal Qt : STD_LOGIC_VECTOR(7 downto 0);
begin
	q_shift <= Qt;
	process (clk, reset, Qt, load, shift_enable, msb_in)
	begin
		if rising_edge(clk) then
		  if reset = '1' then Qt <= "00000000";
				elsif reset = '0' then
					if load = '1' then Qt <= data_in;
						elsif load = '0' then
							if shift_enable = '0' then Qt <= Qt;
								else Qt <= msb_in & Qt(7 downto 1);
							end if;
					end if;
				else Qt <= Qt;
			end if;
		end if;
	end process;
	lsb_out <= Qt(0);
end architecture;