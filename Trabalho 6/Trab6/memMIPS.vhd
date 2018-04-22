library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;


entity memMIPS is
	port(
		
		clk			:	in	 std_logic;
		clk_mem		:	in	 std_logic;
		wPC			:	in	 std_logic;
		m1				: 	in	 std_logic;
		initpc8b		:	in	 std_logic_vector(7 downto 0);
		outputmem	:	out std_logic_vector(31 downto 0);
		outbcd1		:	out std_logic_vector(6 downto 0);
		outbcd2		:	out std_logic_vector(6 downto 0)
		
	);
end memMIPS;

architecture rt1 of memMIPS is
	signal pc_mais_4	:	std_logic_vector(31 downto 0);
	signal pcmem		:	std_logic_vector(7 downto 0);
	signal pcout		:	std_logic_vector(31 downto 0);
	signal addout		:	std_logic_vector(31 downto 0);
	signal initpc32b	:	std_logic_vector(31 downto 0);
	signal outputaux	:	std_logic_vector(31 downto 0);
	
	signal instrbcd1	:	std_logic_vector(3 downto 0);
	signal instrbcd2	:	std_logic_vector(3 downto 0);
	
	
begin
	initpc32b <= (X"000000" & initpc8b);
	pcmem	<=	pcout(9 downto 2);

	pc: entity work.pc port map(
		inp	=>	pc_mais_4,
		clk	=> clk,
		wPC	=> wPC,
		outp	=> pcout
	);
	
	adderpc: entity work.adderpc port map(
		a		=> pcout,
		z		=> addout
	);
	mux2x1_32b: entity work.mux2x1_32b port map(
		s		=> m1,
		a		=> addout,
		b		=> initpc32b,
		z		=> pc_mais_4
	);
	ramMIPS: entity work.ramMIPS port map(
		address	=>	pcmem,
		clock		=> clk_mem,
		data		=> X"00000000",
		q			=> outputaux
	);
	outputmem <= outputaux;
	
	
	instrbcd1 <= "00" & outputaux(31 downto 30);
	instrbcd2 <= outputaux(29 downto 26);
	
	d7seg1: entity work.d7seg port map(
		bcdnum 	=> instrbcd1,
		out7seg	=> outbcd1
	);
	d7seg2: entity work.d7seg port map(
		bcdnum 	=> instrbcd2,
		out7seg	=> outbcd2
	);
	
end architecture rt1;