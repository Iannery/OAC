library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity pc is
	port(
		inp	:	in std_logic_vector(31 downto 0);
		clk	:	in std_logic;
		wPC	:	in std_logic;
		outp	:	out std_logic_vector(31 downto 0)
	);
end pc;

architecture rtl of pc is
	begin
	
	process (clk)
	begin
		if (rising_edge(clk) AND wPC = '1')  then
			outp <= inp;
		end if;
	end process;
end architecture rtl;