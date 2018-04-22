library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity processador is
	port(
		-- 00 = valor PC, 01 = ?, 10 = ?, 11 = ?
		sel_out		:	in std_logic_vector(1 downto 0);
		clock			:	in std_logic;
		clock_mem	:	in std_logic;
		out0			: 	out std_logic_vector(31 downto 0);
		
		-- saida somente para teste no waveform !
		r1_dado,
		r2_dado,
		din_breg    : out std_logic_vector(31 downto 0);
		ctrl_op_ula :  out std_logic_vector(3 downto 0);
		ctr_reg_dst_wf,
		ctr_orig_alu_wf,
		ctr_mem_para_reg_wf,
		ctr_escreve_reg_wf,
		ctr_le_mem_wf,
		ctr_escreve_mem_wf,
		ctr_branch_wf,
		ctr_branchn_wf,
		ctr_jump_wf,
		ctr_jal_wf,
		ctr_lui_wf,
		ctr_jerror_wf,
		overflow : out std_logic;
		saida_epc : out std_logic_vector(31 downto 0)
	);
end processador;

architecture rtl of processador is

	-- estrutura da codificação
	-- ctr_algo = Sinal entre o controle e esse algo.
	-- s_a1_a2 = Sinal entre A1 e A2

	constant shift		: natural := 2;
	
	signal soma_pc								: std_logic_vector(31 downto 0);
	signal rs_r1								: std_logic_vector(4 downto 0);
	signal rt_r2								: std_logic_vector(4 downto 0);
	signal r_out_rd							: std_logic_vector(4 downto 0);
	signal r_out_rd_final					: std_logic_vector(4 downto 0);
	signal r_out_rd_31						: std_logic_vector(4 downto 0);
	signal imed_16_imed_16					: std_logic_vector(15 downto 0);
	signal reg_dst_reg_dst					: std_logic;
	signal op_code_to_controle				: std_logic_vector(5 downto 0);
	signal pc_out_to_somador				: std_logic_vector(31 downto 0);
	signal jump_out_shift_left				: std_logic_vector(31 downto 0);
	signal pc_mais_4_from_somador			: std_logic_vector(31 downto 0);
	signal jump_out_jump_out				: std_logic_vector(25 downto 0);
	signal jump_jump							: std_logic;
	signal jal_jal								: std_logic;
	signal mux_to_pc_mais_4					: std_logic_vector(31 downto 0);
	signal din_data_wb						: std_logic_vector(31 downto 0);
	signal din_data_wb_final				: std_logic_vector(31 downto 0);
	signal we_escreve_reg					: std_logic;
	signal func_aux							: std_logic_vector(5 downto 0);
	signal op_ula_controle					: std_logic_vector(3 downto 0);
	signal orig_alu_orig_alu				: std_logic;
	signal branch_and_zero					: std_logic;
	signal branchn_and_not_zero			: std_logic;
	signal branch_controle					: std_logic;
	signal branchn_controle					: std_logic;
	signal branch_final						: std_logic;
	signal zero_ula							: std_logic;
	signal jerror_jerror						: std_logic;
	signal dout_address						: std_logic_vector(31 downto 0);
	signal dout_aux							: std_logic_vector(31 downto 0);
	signal mem_data_write_mem_data_write: std_logic_vector(31 downto 0);
	signal imed_32_aux						: std_logic_vector(31 downto 0);
	signal imed_32_shift_left				: std_logic_vector(31 downto 0);
	signal pc_mais_4_from_beq				: std_logic_vector(31 downto 0);
	signal res_mux_pc4beq					: std_logic_vector(31 downto 0); -- MUX que seleciona qual valor vai para PC.
	signal res_mux_pc							: std_logic_vector(31 downto 0);
	signal mem_para_reg_mem_para_reg		: std_logic;
	signal le_mem_le_mem						: std_logic;
	signal escreve_mem_escreve_mem		: std_logic;
	signal ovfl_ula							: std_logic;
	signal mux_to_pc_final					: std_logic_vector(31 downto 0);
	signal luictr_luictr						: std_logic;
	signal jraddr_jraddr						: std_logic_vector(31 downto 0);
	signal ctrjr_ctrjr						: std_logic;
	signal part_of_jump 						: std_logic_vector(3 downto 0);
	signal pc_from_epc						: std_logic_vector(31 downto 0);
	signal imed_32_aux_converter			: signed(31 downto 0);
	signal jump_out_jump_out_converter	: unsigned(31 downto 0);
	signal jump_out_shift_left_aux		: std_logic_vector(31 downto 0);
	signal jump_final							: std_logic_vector(31 downto 0);
	signal mux_to_display					: std_logic_vector(31 downto 0);
	
begin
-- INICIO: Sinais somente para uso no waveform
		ctr_reg_dst_wf 		<= reg_dst_reg_dst;
		ctr_orig_alu_wf 		<= orig_alu_orig_alu;
		ctr_mem_para_reg_wf 	<= mem_para_reg_mem_para_reg;
		ctr_escreve_reg_wf 	<= we_escreve_reg;
		ctr_le_mem_wf 			<= le_mem_le_mem;
		ctr_escreve_mem_wf 	<= escreve_mem_escreve_mem;
		ctr_branch_wf 			<= branch_controle;
		ctr_branchn_wf 		<= branchn_controle;
		ctr_jump_wf 			<= jump_jump;
		ctr_jal_wf 				<= jal_jal;
		ctr_lui_wf 				<= luictr_luictr;
		ctr_jerror_wf 			<= jerror_jerror;
		ctrl_op_ula				<= op_ula_controle;
		din_breg					<= din_data_wb_final;
		overflow					<= ovfl_ula;
		saida_epc				<= pc_from_epc;
-- ---------------- FIM ----------------------

	jump_out_jump_out_converter		<= resize(unsigned(jump_out_jump_out), 32);
	jump_out_shift_left 					<= std_logic_vector(shift_left(jump_out_jump_out_converter, shift));
	out0										<= mux_to_display;
	soma_pc 									<= std_logic_vector(to_unsigned(4, soma_pc'length));
	
	part_of_jump							<= pc_mais_4_from_somador(31 downto 28);
	jump_out_shift_left_aux				<= (part_of_jump & jump_out_shift_left(27 downto 2) & "00");
	
	r_out_rd_31								<= std_logic_vector(to_unsigned(31, 5));
	
	func_aux									<= imed_16_imed_16(5 downto 0);
	branch_and_zero						<= branch_controle and zero_ula;
	branchn_and_not_zero					<= branchn_controle and not zero_ula;
	
	branch_final							<= branch_and_zero or branchn_and_not_zero;
	
	dout_address							<= dout_aux;
	
	imed_32_aux_converter				<= signed(imed_32_aux);
	imed_32_shift_left					<= std_logic_vector(shift_left(imed_32_aux_converter, shift));

bregula:	entity work.bregula port map(
	din				=> din_data_wb_final,				
	we					=>	we_escreve_reg, 
	clk				=> clock,		
	rs					=> rs_r1, 
	rt					=> rt_r2, 
	rd					=>	r_out_rd_final,		
	funct				=> func_aux,			
	ctr_ula_op		=> op_ula_controle,
	orig_alu			=> orig_alu_orig_alu,			
	imm_16			=> imed_16_imed_16,			
	ctr_ula_lui		=>	luictr_luictr,
	zero				=> zero_ula,
	ovfl				=> ovfl_ula,
	dout				=> dout_aux,				
	imm_32			=> imed_32_aux,			
	mem_data_write	=> mem_data_write_mem_data_write,	
	ctrjr				=> ctrjr_ctrjr,
	jraddr			=> jraddr_jraddr,
	r2_dado			=> r2_dado,
	r1_dado			=> r1_dado
);

-- 00 = PC, 01 = Memória de instruções, 10 = Saida ULA, 11 = Memória de dados
mux_saida_7segmentos: entity work.mux_four_to_one port map(
	A 				=> pc_out_to_somador, -- pode estar errado
	B				=> op_code_to_controle & jump_out_jump_out,
	C				=> dout_aux,
	D				=> din_data_wb,
	X				=> mux_to_display,
	sel			=> sel_out
);

fetch: entity work.fetch port map(
	pc_mais_4	=> mux_to_pc_final,	
	reg_dst		=> reg_dst_reg_dst,		
	clock			=> clock,			
	clock_mem	=> clock_mem,	
	
	opcode		=> op_code_to_controle,		
	r1				=> rs_r1,
	r2				=> rt_r2,
	r_out			=> r_out_rd,	
	pc_out		=> pc_out_to_somador,	
	imm_16		=> imed_16_imed_16,	
	jump_out		=> jump_out_jump_out

);

mem_final: entity work.mem_final port map(
	address_in			=> dout_address,
	data_to_mux			=>	dout_aux,	
	mem_data_write		=> mem_data_write_mem_data_write,
	escreve_mem			=> escreve_mem_escreve_mem,
	le_mem				=> '1',		
	mem_para_reg		=> mem_para_reg_mem_para_reg,
	clock_mem			=> clock_mem,	
	
	data_wb				=> din_data_wb
);

controle: entity work.controle port map(
	op					=> op_code_to_controle,
	
	op_ula			=> op_ula_controle,			
	reg_dst			=> reg_dst_reg_dst,
	orig_alu			=> orig_alu_orig_alu,
	mem_para_reg   => mem_para_reg_mem_para_reg,
	escreve_reg		=> we_escreve_reg,
	le_mem			=> le_mem_le_mem,
	escreve_mem		=> escreve_mem_escreve_mem,
	branch			=> branch_controle,
	branchn			=> branchn_controle,
	jump				=> jump_jump,
	jal				=> jal_jal,
	luictr			=>	luictr_luictr,
	jerror			=>	jerror_jerror
);

somador_pc:	entity work.somador port map(
	a			=> pc_out_to_somador,
	b			=> soma_pc,
	result	=> pc_mais_4_from_somador
);

epc:	entity work.epc port map(
	din		=> pc_mais_4_from_somador,
	clock		=> clock,
	enable	=> ovfl_ula,
	dout		=> pc_from_epc
);

somador_beq: entity work.somador port map(
	a			=> pc_mais_4_from_somador,
	b			=> imed_32_shift_left,
	result	=> pc_mais_4_from_beq
);

-- MUX que seleciona o valor que vai para o PC: do somador ou BEQ.
mux_pc4_beq: entity work.mux_two_to_one port map(
	sel	=> branch_final,
	A		=> pc_mais_4_from_somador,	
	B		=> pc_mais_4_from_beq,	
	X		=> res_mux_pc4beq
);

-- MUX que seleciona o valor que vai para PC: do jump ou (somador ou BEQ)
mux_jump_pc4beq: entity work.mux_two_to_one port map(
	sel 	=> jump_jump,
	A	 	=> res_mux_pc4beq,	
	B		=>	jump_final,	
	X		=> res_mux_pc
);
mux_two_to_one_third: entity work.mux_two_to_one port map(
	sel 	=> jal_jal,
	A	 	=> din_data_wb,	
	B		=>	pc_mais_4_from_somador,	
	X		=> din_data_wb_final
);

mux_pc4beqjump_jr: entity work.mux_two_to_one port map(
	sel 	=> ctrjr_ctrjr,
	A	 	=> res_mux_pc,	
	B		=>	jraddr_jraddr,	
	X		=> mux_to_pc_mais_4
);

mux_two_to_one_fifth: entity work.mux_two_to_one port map(
	sel 	=> ovfl_ula,
	A	 	=> mux_to_pc_mais_4,	
	B		=>	X"00004328",	-- dentro desta memoria tera o opcode 111111
	X		=> mux_to_pc_final
);

mux_two_to_one_sixth: entity work.mux_two_to_one port map(
	sel 	=> jerror_jerror,
	A	 	=> jump_out_shift_left_aux,	
	B		=>	pc_from_epc,
	X		=> jump_final
);

mux_two_to_one_5: entity work.mux_two_to_one_5 port map(
	sel 	=> jal_jal,
	A	 	=> r_out_rd,	
	B		=>	r_out_rd_31,	
	X		=> r_out_rd_final
);
end rtl;