library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

library altera_mf;
use altera_mf.all;

entity memoria_instrucoes IS
	port(
		address		: in STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock			: IN STD_LOGIC  := '1';
		q				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end memoria_instrucoes;


architecture SYN of memoria_instrucoes is

	signal sub_wire0	: STD_LOGIC_VECTOR (31 downto 0);
	
	component altsyncram
	generic (
		clock_enable_input_a			: string;
		clock_enable_output_a		: string;
		init_file						: string;
		intended_device_family		: string;
		lpm_hint							: string;
		lpm_type							: string;
		numwords_a						: natural;
		operation_mode					: string;
		outdata_aclr_a					: string;
		outdata_reg_a					: string;
		widthad_a						: natural;
		width_a							: natural;
		width_byteena_a				: natural
	);
	
	port (
			address_a	: in std_logic_vector (7 downto 0);
			clock0		: in std_logic ;
			q_a			: out std_logic_vector (31 downto 0)
	);
	end component;

begin
	q    <= sub_wire0(31 downto 0);

	altsyncram_component : altsyncram
	generic map(
		clock_enable_input_a 	=> "BYPASS",
		clock_enable_output_a 	=> "BYPASS",
		init_file 					=> "instrucoes.mif",
		intended_device_family 	=> "Cyclone II",
		lpm_hint 					=> "ENABLE_RUNTIME_MOD=NO",
		lpm_type 					=> "altsyncram",
		numwords_a 					=> 256,
		operation_mode 			=> "ROM",
		outdata_aclr_a 			=> "NONE",
		outdata_reg_a 				=> "UNREGISTERED",
		widthad_a 					=> 8,
		width_a 						=> 32,
		width_byteena_a 			=> 1
	)
	
	port map(
		address_a => address,
		clock0 => clock,
		q_a => sub_wire0
	);
end SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
-- Retrieval info: PRIVATE: AclrAddr NUMERIC "0"
-- Retrieval info: PRIVATE: AclrByte NUMERIC "0"
-- Retrieval info: PRIVATE: AclrOutput NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: Clken NUMERIC "0"
-- Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
-- Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
-- Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING "instrucoes.mif"
-- Retrieval info: PRIVATE: NUMWORDS_A NUMERIC "256"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
-- Retrieval info: PRIVATE: RegAddr NUMERIC "1"
-- Retrieval info: PRIVATE: RegOutput NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SingleClock NUMERIC "1"
-- Retrieval info: PRIVATE: UseDQRAM NUMERIC "0"
-- Retrieval info: PRIVATE: WidthAddr NUMERIC "8"
-- Retrieval info: PRIVATE: WidthData NUMERIC "32"
-- Retrieval info: PRIVATE: rden NUMERIC "0"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_A STRING "BYPASS"
-- Retrieval info: CONSTANT: INIT_FILE STRING "instrucoes.mif"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ENABLE_RUNTIME_MOD=NO"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "256"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "ROM"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "NONE"
-- Retrieval info: CONSTANT: OUTDATA_REG_A STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "32"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: USED_PORT: address 0 0 8 0 INPUT NODEFVAL "address[7..0]"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC "clock"
-- Retrieval info: USED_PORT: q 0 0 32 0 OUTPUT NODEFVAL "q[31..0]"
-- Retrieval info: CONNECT: @address_a 0 0 8 0 address 0 0 8 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 32 0 @q_a 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL memoria_instrucoes.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL memoria_instrucoes.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL memoria_instrucoes.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL memoria_instrucoes.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL memoria_instrucoes_inst.vhd FALSE
-- Retrieval info: LIB_FILE: altera_mf
