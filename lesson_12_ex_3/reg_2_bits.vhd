library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_2_bits is
    Port ( clk, reset, ce : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (1 downto 0);
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end reg_2_bits;

architecture Behavioral of reg_2_bits is

begin
	process (reset, clk, ce)
	begin
		if reset='1' then Q<=(others=>'0');
		elsif rising_edge(clk) then
			if ce='1' then Q<=D;
			end if;
		end if;
	end process;

end Behavioral;