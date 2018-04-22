library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA32B is
	port 
	(
		opcode		: in std_logic_vector (3 downto 0);
		A, B			: in std_logic_vector (31 downto 0);
		Z		 		: out std_logic_vector(31 downto 0);
		zero, ovfl	: out std_logic
	);

end entity;

architecture behavioral of ULA32B is
	signal MSB : natural;

begin
	
	MSB <= 31;
	
	process(opcode, A, B)
		variable auxZ : std_logic_vector(31 downto 0);
	begin
		
		ovfl <= '0';
		case opcode is
			-- AND BITWISE
			when "0000" => auxZ := A AND B;
			
			-- OR BITWISE
			when "0001" => auxZ := A OR B;
			
			-- SIGNED ADD
			when "0010" => auxZ := std_logic_vector(signed(A) + signed(B));
								-- OVERFLOW::: 
								-- MSB DE A, B = 0 e MSB Z = 1 (A + B = -Z)
								-- MSB DE A, B = 1 e MSB Z = 0 ((-A) + (-B) = Z)
								ovfl <= ((NOT(A(MSB)) AND NOT(B(MSB))) AND (auxZ(MSB))) OR (A(MSB) AND B(MSB) AND NOT (auxZ(MSB)));
			
			-- UNSIGNED ADD
			when "0011" => auxZ := std_logic_vector(signed(A) + signed(B));
			
			-- SIGNED SUB
			when "0100" => auxZ := std_logic_vector(signed(A) - signed(B));
								-- OVERFLOW::: 
								-- MSB A = 1 e MSB Z, B = 0 ((-A) - B = C)
								-- MSB A = 0 e MSB Z, B = 1 (A - (-B) = -C)
								ovfl <= ((NOT(A(MSB)) AND (B(MSB))) AND (auxZ(MSB))) OR (A(MSB) AND NOT B(MSB) AND NOT (auxZ(MSB)));
			
			-- UNSIGNED SUB
			when "0101" => auxZ := std_logic_vector(signed(A) - signed(B));
			
			
			-- SIGNED SLT
			when "0110" => if(signed(A) < signed(B)) then 
									auxZ := (0 => '1', others => '0');
								else
									auxZ := (others => '0');
								end if;
								
			-- UNSIGNED SLT
			when "0111" => if(unsigned(A) < unsigned(B)) then 
									auxZ := (0 => '1', others => '0');
								else
									auxZ := (others => '0');
								end if;
								
			-- NOR BITWISE
			when "1000" => auxZ := A NOR B;
			
			-- XOR BITWISE
			when "1001" => auxZ := A XOR B;
			
			-- SLL
			when "1010" => auxZ := std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B))));
			
			-- SRL
			when "1011" => auxZ := std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(B))));
			
			-- SRA
			when "1100" => auxZ := std_logic_vector(shift_right(signed(A), to_integer(unsigned(B))));
			
			-- RTR
			when "1101" => auxZ := std_logic_vector(rotate_right(unsigned(A), to_integer(unsigned(B))));
			
			-- RTL
			when "1110" => auxZ := std_logic_vector(rotate_left(unsigned(A), to_integer(unsigned(B))));
			
			when others => auxZ := (others => '0');
		end case;
		
		-- ZERO CHECK
		if(auxZ = X"00000000") then
			zero <= '1';
		else
			zero <= '0';
		end if;
		
		Z <= auxZ;
		
	end process;

end behavioral;
