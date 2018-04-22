library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity mux_four_to_one is

	port(
		sel	:	in std_logic_vector(1 downto 0);
		A		:	in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		C		:	in std_logic_vector(31 downto 0);
		D		:	in std_logic_vector(31 downto 0);
		X		:	out std_logic_vector(31 downto 0)
	);
end mux_four_to_one;

architecture behavioral of mux_four_to_one is

	begin
	
	proc_mux: process (sel)
	begin
		if	(sel = "00") then
			X	<=	A;
		elsif (sel = "01") then
			X	<= B;
		elsif (sel = "10") then
			X	<= C;
		elsif (sel = "11") then
			X	<= D;
		else
			X 	<= X"00000000";
		end if;
	end process;
end behavioral;
		