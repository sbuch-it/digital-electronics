-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity gates is
  port ( dp_in_gates : in STD_LOGIC;
         anode0, anode1, anode2, anode3 : in STD_LOGIC;
         dp_out : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Behavioral of gates is
begin
  dp_out <= (anode0 and dp_in_gates) or
            (anode1 and dp_in_gates) or
            (anode2 and dp_in_gates) or
            (anode3 and dp_in_gates);
end architecture;