library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity controle is
	port(
		op					:	in std_logic_vector(5 downto 0);
		
		op_ula			:	out std_logic_vector(3 downto 0); -- 4 bits da OpUla
		reg_dst,			-- Se o registrador de escrita rt ou rd
		orig_alu,		-- Se a segunda entrada na ula vira do imediato ou nao
		mem_para_reg,	--	O valor que vem da memoria de dados para se escrita no registrador
		escreve_reg,	-- Permite escrever na memoria de registradores
		le_mem,			-- Permite a leitura da memoria
		escreve_mem,	-- Permite a escrita na memoria
		branch,			--	Ligado caso haja uma instrucao de branch equal
		branchn, 		-- Ligado caso haja uma instrucao de branch not equal
		jump,				-- Ligado caso seja instrucao de jump
		jal,				-- Ligado caso seja instrucao de link
		luictr,			-- Ligado caso seja instrucao de lui
		jerror			-- Ligado caso ocorra um exceção de overflow
		:	out std_logic
	);
end controle;

architecture behavioral of controle is
	begin
	process	(op)
		begin
			case op is
				when	"000000" =>	-- Tipo R
					reg_dst 			<= '1';
					orig_alu 		<= '0';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0010";
					
				when	"001000" =>	-- ADDI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				
				when	"001001" =>	-- ADDIU
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "1101";
				
				when	"001100" =>	-- ANDI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0100";
					
				when	"001110" =>	-- XORI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "1110";
					
				when	"001101" =>	-- ORI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0101";
				
				when	"001011" =>	-- SLTI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0110";
				 
				when	"100011" =>	-- LW
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '0';
					escreve_reg		<= '1';
					le_mem			<= '1';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				
				when	"101011" =>	-- SW
					reg_dst 			<= '1';
					orig_alu 		<= '1';
					mem_para_reg 	<= '0';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '1';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				
				when	"000100" => -- Beq
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '1';
					escreve_reg		<= '0';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '1';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0001";
				
				when	"000101" => -- Bne
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '1';
					escreve_reg		<= '0';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '1';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0001";
				
				when	"000010" => -- Jump
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '1';
					escreve_reg		<= '0';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '1';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				
				when	"000011" => -- JAL
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '1';
					jal				<= '1';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				
				when	"001111" => -- LUI
					reg_dst 			<= '0';
					orig_alu 		<= '1';
					mem_para_reg 	<= '1';
					escreve_reg		<= '1';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '1';
					jerror			<= '0';
					op_ula			<= "0111";
					
				when	"111111" => -- ERRO OVERFLOW
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '0';
					escreve_reg		<= '0';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '1';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '1';
					op_ula			<= "0000";
					
				when others =>	
					reg_dst 			<= '0';
					orig_alu 		<= '0';
					mem_para_reg 	<= '0';
					escreve_reg		<= '0';
					le_mem			<= '0';
					escreve_mem		<= '0';
					branch			<= '0';
					branchn			<= '0';
					jump				<= '0';
					jal				<= '0';
					luictr			<= '0';
					jerror			<= '0';
					op_ula			<= "0000";
				end case;
	end process;
end behavioral;