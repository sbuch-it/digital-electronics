library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--ENTITY
entity decoder_2_to_4 is
    port ( g : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(1 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end decoder_2_to_4;
-- ARCHITECTURE
architecture Behavioral of decoder_2_to_4 is

begin
    Q(0) <= g nand (not D(1) and not D(0));
	Q(1) <= g nand (not D(1) and D(0));
	Q(2) <= g nand (D(1) and not D(0));
	Q(3) <= g nand (D(1) and D(0));
	
end Behavioral;