library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity register_8_bit is
  port ( clk, CE, OE : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR(15 downto 0);
         Q : out STD_LOGIC_VECTOR(15 downto 0));
end entity;
architecture Behavioral of register_8_bit is
  -- SIGNAL
  signal Q_internal : STD_LOGIC_VECTOR(15 downto 0) := (others=>'0'); -- a vector that is created with all '0'
begin
  process(clk, OE)
  begin
    -- synchronous inputs
    if rising_edge (clk) then
      if CE = '1' then Q_internal <= D; end if;
    end if;
    -- asynchronous inputs
    if OE = '1' then Q <= Q_internal;
      else Q <= (others => 'Z'); -- high impedance
    end if;
  end process;
end architecture;