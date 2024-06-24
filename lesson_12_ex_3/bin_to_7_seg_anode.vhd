library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- ENTITY
entity bin_to_7_seg_anode is
    port ( en, dp_in : in STD_LOGIC;
           DIN : in STD_LOGIC_VECTOR(3 downto 0);
           ABCDEFG : out STD_LOGIC_VECTOR(6 downto 0);
           DP, an3, an2, an1, an0 : out STD_LOGIC);
end bin_to_7_seg_anode;
-- ARCHITECTURE
architecture Behavioral of bin_to_7_seg_anode is
    -- SIGNAL
    signal en_DIN : STD_LOGIC_VECTOR(4 downto 0);
    signal en_dp_in : STD_LOGIC_VECTOR(1 downto 0);
    
begin
    an3 <= '1';
    an2 <= '1';
    an1 <= '1';
    an0 <= '0';
    en_DIN <= en & DIN;
    en_dp_in <= en & dp_in;
    
    -- WITH SELECT FOR OUTPUT DP
    with en_dp_in select DP <=
        '1' when "00",
        '1' when "01",
        '1' when "10",
        '0' when "11",
        '1' when others;
        
    -- WITH SELECT FOR OUTPUT ABCDEFG
    with en_DIN select ABCDEFG <=
        "1111111" when "00000",
        "1111111" when "00001",
        "1111111" when "00010",
        "1111111" when "00011",
        "1111111" when "00100",
        "1111111" when "00101",
        "1111111" when "00110",
        "1111111" when "00111",
        "1111111" when "01000",
        "1111111" when "01001",
        "1111111" when "01010",
        "1111111" when "01011",
        "1111111" when "01100",
        "1111111" when "01101",
        "1111111" when "01110",
        "1111111" when "01111",
        "0000001" when "10000",-- 0
        "1001111" when "10001",-- 1
        "0010010" when "10010",-- 2
        "0000110" when "10011",-- 3
        "1001100" when "10100",-- 4
        "0100100" when "10101",-- 5
        "0100000" when "10110",-- 6
        "0001111" when "10111",-- 7
        "0000000" when "11000",-- 8
        "0001100" when "11001",-- 9
        "0001000" when "11010",-- A
        "1100000" when "11011",-- b
        "0110001" when "11100",-- C
        "1000010" when "11101",-- d
        "0110000" when "11110",-- E
        "0111000" when "11111",-- F
        "1111111" when others;
        
end Behavioral;