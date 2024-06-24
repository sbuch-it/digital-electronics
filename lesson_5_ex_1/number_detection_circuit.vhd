-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity number_detection_circuit is
  port ( a : in STD_LOGIC_VECTOR(3 downto 0);
         f1, f2, f3 : out STD_LOGIC);
end entity;
-- ARCHITECTURE
architecture Structural of number_detection_circuit is
  -- COMPONENT function1
  component function1 is
    port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           f1 : out STD_LOGIC);
  end component;
  -- COMPONENT function2
  component function2 is
    port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           f2 : out STD_LOGIC);
  end component;
  -- COMPONENT function3
  component function3 is
    port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           f3 : out STD_LOGIC);
  end component;
begin
  -- INSTANTIATION function1
  INST_function1 : function1 port map ( a => a, f1 => f1);
  -- INSTANTIATION function2
  INST_function2 : function2 port map ( a => a, f2 => f2);
  -- INSTANTIATION function3
  INST_function3 : function3 port map ( a => a, f3 => f3);
end architecture;