library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity adderpc is

	port(
		a	: in 	std_logic_vector(31 downto 0);
		z	: out std_logic_vector(31 downto 0)
		
	);
end adderpc;

architecture rt1 of adderpc is
	begin
	
	z <= std_logic_vector(unsigned(a) + to_unsigned(4, 32));
	
end architecture rt1;
	
	