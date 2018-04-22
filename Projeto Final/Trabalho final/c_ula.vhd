library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity c_ula is
	port(
		funct		:	 in std_logic_vector(5 downto 0);
		op_ula	:	 in std_logic_vector(3 downto 0);
		ctr_ula	:	out std_logic_vector(3 downto 0);
		ctr_jr	:	out std_logic
	);
end c_ula;

architecture rtl of c_ula is
	signal selctr	:	std_logic_vector(3 downto 0);

	begin
		ctr_ula <= selctr;
	process (funct, op_ula, selctr)

	begin
		if	(op_ula = "0000") then
			selctr <= ULA_ADD; -- ADD
			ctr_jr <= '0';
		elsif(op_ula = "0001") then
			selctr <= ULA_SUB; -- SUB
			ctr_jr <= '0';
		elsif(op_ula = "0100") then
			selctr <= ULA_AND; -- AND
			ctr_jr <= '0';
		elsif(op_ula = "0101") then
			selctr <= ULA_OR; -- OR
			ctr_jr <= '0';
		elsif(op_ula = "0110") then
			selctr <= ULA_SLT; -- SLTI
			ctr_jr <= '0';
		elsif(op_ula = "0111") then
			selctr <= ULA_SLL; -- SLL
			ctr_jr <= '0';
		elsif(op_ula = "1101") then
			selctr <= ULA_ADDIU; -- ADDIU
			ctr_jr <= '0';
		elsif(op_ula = "1110") then
			selctr <= ULA_XOR; -- XOR
			ctr_jr <= '0';
		else -- RESTO (0010) TIPO R
			case funct is	
				when "000000"	=>	selctr			<= ULA_SLL;
										ctr_jr		<= '0';
				when "000010"	=>	selctr			<=	ULA_SRL;
										ctr_jr		<= '0';
				when "000011"	=>	selctr			<=	ULA_SRA;
										ctr_jr		<= '0';
				when "100000"	=> selctr 		<= ULA_ADD;
										ctr_jr		<= '0';
				when "100001" 	=> selctr 		<= ULA_ADDU;
										ctr_jr		<= '0';
				when "100011" 	=> selctr 		<= ULA_SUBU;
										ctr_jr		<= '0';
				when "100010"	=> selctr 		<= ULA_SUB;
										ctr_jr		<= '0';
				when "100100"	=> selctr 		<= ULA_AND;
										ctr_jr		<= '0';
				when "100101"	=> selctr 		<= ULA_OR;
										ctr_jr		<= '0';
				when "100110"	=> selctr		<= ULA_XOR;
										ctr_jr		<= '0';
				when "100111"	=>	selctr		<= ULA_NOR;
										ctr_jr		<= '0';
				when "101010"	=> selctr 		<= ULA_SLT;
										ctr_jr		<= '0';
				when "101011"	=> selctr 		<= ULA_SLTU;
										ctr_jr		<= '0';
				when "001000" 	=> selctr			<= ULA_UKW;
										ctr_jr		<= '1';
				when others 	=> selctr			<= ULA_UKW;
										ctr_jr		<= '0';
			end case;
		end if;

	end process;
end rtl;

