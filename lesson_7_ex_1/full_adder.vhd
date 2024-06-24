-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity full_adder is
  port ( a, b, cin : in STD_LOGIC;
         cout, sum : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of full_adder is
begin
  sum <= a xor (b xor cin);
  cout <= (a and b) or (a and cin) or (b and cin);
end architecture;