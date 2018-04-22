library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;


entity d7seg is
	port(
		bcdnum	:	in std_logic_vector(3 downto 0);
		out7seg	:	out std_logic_vector(6 downto 0)
	);
end d7seg;

architecture rt1 of d7seg is
begin
process(bcdnum)
begin
    case bcdnum is
    when "0000" => out7seg <= "0000001"; -- 0   
    when "0001" => out7seg <= "1001111"; -- 1
    when "0010" => out7seg <= "0010010"; -- 2 
    when "0011" => out7seg <= "0000110"; -- 3 
    when "0100" => out7seg <= "1001100"; -- 4 
    when "0101" => out7seg <= "0100100"; -- 5 
    when "0110" => out7seg <= "0100000"; -- 6 
    when "0111" => out7seg <= "0001111"; -- 7 
    when "1000" => out7seg <= "0000000"; -- 8     
    when "1001" => out7seg <= "0000100"; -- 9
    when "1010" => out7seg <= "0000010"; -- a
    when "1011" => out7seg <= "1100000"; -- b
    when "1100" => out7seg <= "0110001"; -- c
    when "1101" => out7seg <= "1000010"; -- d
    when "1110" => out7seg <= "0110000"; -- e
    when "1111" => out7seg <= "0111000"; -- f
    end case;
end process;
end rt1;