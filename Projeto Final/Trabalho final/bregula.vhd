library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use	work.mips_pkg.all;

entity bregula is
	
	port (
		din				:	 in std_logic_vector(31 downto 0);
		we, clk			:	 in std_logic;
		rs, rt, rd		:	 in std_logic_vector(4 downto 0);
		funct				: 	 in std_logic_vector(5 downto 0);
		ctr_ula_op		:	 in std_logic_vector(3 downto 0);	-- Sinal de controle da ULA
		orig_alu			:	 in std_logic;
		imm_16			:	 in std_logic_vector(15 downto 0);
		ctr_ula_lui		:	 in std_logic;								-- Sinal de controle (principal) para o controle da ULA.
		zero				:	out std_logic;
		ovfl				:	out std_logic;
		dout				:	out std_logic_vector(31 downto 0);
		imm_32			:	out std_logic_vector(31 downto 0);
		mem_data_write	:	out std_logic_vector(31 downto 0);
		ctrjr				:	out std_logic;
		jraddr			:	out std_logic_vector(31 downto 0);
		
		-- saida somente para teste no waveform !
		r1_dado,
		r2_dado			:  out std_logic_vector(31 downto 0)
	);
	
end bregula;

architecture rtl of bregula is

signal r1, r2					:	std_logic_vector(31 downto 0);
signal s_ctr_ula				:	std_logic_vector(3 downto 0);  -- Sinal entre controle da ULA.
signal imm_32_aux				:	std_logic_vector(31 downto 0);
signal res_mux_breg_ula 	:	std_logic_vector(31 downto 0); -- Resultado do MUX entre BREG e ULA.
signal res_mux_rs_32			:	std_logic_vector(31 downto 0); -- Resultado do MUX RS OU 32 bits para ULA.
signal res_mux_shamt			:	std_logic_vector(4 downto 0);  -- Resultado do MUX

begin

	imm_32_aux		<=	std_logic_vector(resize(signed(imm_16), imm_32_aux'length));
	imm_32 			<= imm_32_aux;
	jraddr			<= r1;
	mem_data_write	<= r2;
	
	-- somente para teste no waveform !
	r1_dado			<= r1;
	r2_dado			<= r2;
	-- -------------------------------

mux_two_to_one_shamt: entity work.mux_two_to_one_5 port map(
	A			=> imm_16(10 downto 6),
	B			=> std_logic_vector(to_unsigned(16, 5)),
	sel		=> ctr_ula_lui,
	X			=> res_mux_shamt
);

-- MUX que passa para ula: REG ou imm32.
-- Caso 0 = rs, caso 1 = 32bits do LUI.
mux_rs_32bitslui: entity work.mux_two_to_one port map(
	A			=> r1,
	B			=> imm_32_aux,
	sel		=> ctr_ula_lui,
	X			=> res_mux_rs_32
);
	
ula: entity work.ula port map(
	ulop		=>	s_ctr_ula,
	A			=> res_mux_rs_32,
	shamt		=>	res_mux_shamt,
	B			=> res_mux_breg_ula,
	aluout	=>	dout,
	zero		=> zero,
	ovfl		=> ovfl
);

breg: entity work.breg port map(
	clk		=> clk,
	we			=> we,
	rs			=> rs,
	rt			=> rt,
	rd 		=> rd,
	d_in 		=> din,
	regA 		=> r1,
	regB		=> r2
);

ctrl_ula: entity work.c_ula port map(
	funct		=> funct,
	op_ula 	=> ctr_ula_op,
	ctr_ula	=> s_ctr_ula,
	ctr_jr	=> ctrjr
);

-- MUX que passa para ula: REG ou imm32.
-- Caso 0 = reg, caso 1 = imm32.
mux_reg_imm32: entity work.mux_two_to_one port map(
	A			=> r2,
	B			=> imm_32_aux,
	sel		=> orig_alu,
	X			=> res_mux_breg_ula
);

end rtl;