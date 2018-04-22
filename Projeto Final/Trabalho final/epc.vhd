library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity epc is
	port(
		din	:	in std_logic_vector(31 downto 0);
		clock	:	in std_logic;
		enable:	in std_logic;
		dout	:	out std_logic_vector(31 downto 0)
	);
end epc;

architecture rtl of epc is
	
	begin
	
	proc_epc: process (clock)
	begin
		if rising_edge(clock) and enable = '1' then
			dout <= din;
		end if;
	end process;
end architecture rtl;