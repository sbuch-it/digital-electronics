-- HEADER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity alu_4_bits is
  port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
         sel : in STD_LOGIC_VECTOR(1 downto 0);
         result : out STD_LOGIC_VECTOR(7 downto 0));
end entity;
-- ARCHITECTURE
architecture Structural of alu_4_bits is
  -- COMPONENT and_4_bits
  component and_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- COMPONENT two_s_complement_4_bits
  component two_s_complement_4_bits is
    port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- COMPONENT signed_adder_4_bits
  component signed_adder_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- COMPONENT signed_multiplier_4_bits
  component signed_multiplier_4_bits is
    port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- COMPONENT mux_4_channels_8_bits
  component mux_4_channels_8_bits is
    port ( sel : in STD_LOGIC_VECTOR(1 downto 0);
           res_and, res_com : in STD_LOGIC_VECTOR(7 downto 0);
           res_add, res_mul : in STD_LOGIC_VECTOR(7 downto 0);
           result : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  -- SIGNAL
  signal res_and, res_com : STD_LOGIC_VECTOR(7 downto 0);
  signal res_add, res_mul : STD_LOGIC_VECTOR(7 downto 0);
begin
  -- INSTANTIATION and_4_bits
  INST_and_4_bits : and_4_bits
    port map ( a => a, b => b, result => res_and);
  -- INSTANTIATION two_s_complement_4_bits
  INST_two_s_complement_4_bits : two_s_complement_4_bits
    port map ( a => a, result => res_com);
  -- INSTANTIATION signed_adder_4_bits
  INST_signed_adder_4_bits : signed_adder_4_bits
    port map ( a => a, b => b, result => res_add);
  -- INSTANTIATION signed_multiplier_4_bits
  INST_signed_multiplier_4_bits : signed_multiplier_4_bits
    port map ( a => a, b => b, result => res_mul);
  -- INSTANTIATION mux_4_channels_8_bits
  INST_mux_4_channels_8_bits : mux_4_channels_8_bits
    port map ( sel => sel, res_and => res_and,
               res_com => res_com, res_add => res_add,
               res_mul => res_mul, result => result);
end architecture;