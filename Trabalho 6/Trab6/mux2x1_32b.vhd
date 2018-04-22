library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity mux2x1_32b is

	port(
		s	: in	std_logic;
		a	: in	std_logic_vector(31 downto 0);
		b	: in	std_logic_vector(31 downto 0);
		z	: out	std_logic_vector(31 downto 0)

	);
end mux2x1_32b;

architecture rt1 of mux2x1_32b is
	begin
	
	process(s)
	begin
		if(s = '0') then
			z <= a;
		elsif(s = '1') then
			z <= b;
		else
			z <= X"00000000";
		end if;
	end process;
end architecture rt1;