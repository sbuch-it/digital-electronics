library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity code_converter is
    Port ( row, col : in  STD_LOGIC_VECTOR (1 downto 0);
           bin : out  STD_LOGIC_VECTOR (3 downto 0));
end code_converter;

architecture Behavioral of code_converter is

begin

	process(row, col)
	
	begin
		if row="00" then
			if col="00" then bin<="0001";
			elsif col="01" then bin<="0010";
			elsif col="10" then bin<="0011";
			elsif col="11" then bin<="1010";
			end if;
		elsif row="01" then
			if col="00" then bin<="0100";
			elsif col="01" then bin<="0101";
			elsif col="10" then bin<="0110";
			elsif col="11" then bin<="1011";
			end if;
		elsif row="10" then
			if col="00" then bin<="0111";
			elsif col="01" then bin<="1000";
			elsif col="10" then bin<="1001";
			elsif col="11" then bin<="1100";
			end if;
		elsif row="11" then
			if col="00" then bin<="0000";
			elsif col="01" then bin<="1111";
			elsif col="10" then bin<="1110";
			elsif col="11" then bin<="1101";
			end if;
		end if;
		
	end process;
	
end Behavioral;