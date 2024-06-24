-- This circuit generates a clock signal with a
-- frequency 2000000 times slower than the input clock frequency,
-- except the first time, that will be 1999999 times slower
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- ENTITY
entity divider2000000 is
	port ( reset, clkin : in STD_LOGIC;
         clkout3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of divider2000000 is
	-- SIGNAL
	signal count : INTEGER RANGE 0 TO 999999 := 0;
	signal clkout_aux : STD_LOGIC := '0';
begin
	clkout3 <= clkout_aux;
	process (reset, clkin)
	begin
		if reset = '1' then clkout_aux <= '0'; count <= 0;
			elsif rising_edge(clkin) then
				if count = 999999 then
					clkout_aux <= not clkout_aux; count <= 0;
					else count <= count + 1;
				end if;
		end if;
	end process;
end architecture;