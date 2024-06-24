-- Edge detector, which activates its outputs for a cycle when
-- the input goes high (ea), goes low (ed) o any of them (e)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity edge_detector is
  port ( reset, clk, input : in STD_LOGIC;
         ea_input : out STD_LOGIC; -- rising_edge
         ed_input : out STD_LOGIC; -- falling_edge
         e_input : out STD_LOGIC;  -- any edge
         input_s : out STD_LOGIC); -- synchronized signal
end entity;
-- ARCHITECTURE
architecture Behavioral of edge_detector is
  -- SIGNAL
  signal input_t_1: STD_LOGIC;
  signal ea_input_aux : STD_LOGIC; -- rising_edge
  signal ed_input_aux : STD_LOGIC; -- falling_edge
  signal input_s_aux : STD_LOGIC;  -- synchronized signal
begin
  ea_input <= ea_input_aux;
  ed_input <= ed_input_aux;
  input_s <= input_s_aux;
  process (reset, clk, input_s_aux, input_t_1)
  begin
    if reset = '1' then input_s_aux <= '0'; input_t_1 <= '0';
      elsif rising_edge(clk) then
        input_t_1 <= input_s_aux; input_s_aux <= input;
    end if;
    ea_input_aux <= input_s_aux and not input_t_1;
    ed_input_aux <= not input_s_aux and input_t_1;
    e_input <= ea_input_aux or ed_input_aux;
  end process;
end architecture;