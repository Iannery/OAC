library	ieee;
use	ieee.std_logic_1164.all;	
use	ieee.numeric_std.all;
use	work.mips_pkg.all;

entity ula is
	generic ( WSIZE : natural := 32);

port	(	
	ulop  :	in	std_logic_vector(3 downto 0);
	A,	B  :	in	std_logic_vector(WSIZE-1 downto 0);
	shamt :	in std_logic_vector(4 downto 0);
	
	aluout 	: 	out std_logic_vector(WSIZE-1 downto	0);
	zero 		:	out std_logic;
	ovfl 		:	out std_logic
);
end	ula;

architecture behavioral	of	ula is
	signal	tmp		:	std_logic_vector(WSIZE-1	downto	0);
	signal	tmp2		:	integer;
	
	constant	C_ZERO	:	std_logic_vector(WSIZE-1	downto	0)	:=	(others	=>	'0');

begin
	tmp	<=	std_logic_vector(signed(A)	- signed(B));
	tmp2	<= to_integer(unsigned(shamt));
proc_ula:	process	(A,	B,	ulop,	tmp)
	variable	a32		:	std_logic_vector(WSIZE-1	downto	0);
	variable auxovfl	:	std_logic;
	begin
		if	(a32	=	C_ZERO)
			then	zero	<=	'1';
			else	zero	<=	'0';	
		end	if;	
		case	ulop	is
			-- ADICOES
			when	ULA_ADD	=>	a32	:=	std_logic_vector(signed(A)	 +	 signed(B));
									auxovfl 	:= ((NOT(A(31)) AND NOT(B(31))) AND (a32(31))) OR (A(31) AND B(31) AND NOT (a32(31)));
			when 	ULA_ADDU => a32	:= std_logic_vector(signed(A)	 +	 signed(B));
									auxovfl	:= '0';	
			when  ULA_ADDIU => a32 := std_logic_vector(unsigned(A) + unsigned(B));
									auxovfl	:= '0';	
			-- SUBTRACOES
			when	ULA_SUB	=>	a32	:=	tmp;
									auxovfl 	:= ((NOT(A(31)) AND (B(31))) AND (a32(31))) OR (A(31) AND NOT B(31) AND NOT (a32(31)));
			when	ULA_SUBU	=>	a32	:=	tmp;
									auxovfl	:= '0';	
			
			-- SLT'S
			when	ULA_SLT	=>	if(signed(A) < signed(B)) then 
										a32 := (0 => '1', others => '0');
																auxovfl	:= '0';	
									else
										a32 := (others => '0');
																auxovfl	:= '0';	
									end if;					
			when 	ULA_SLTU => if(unsigned(A) < unsigned(B)) then 
										a32 := (0 => '1', others => '0');
																auxovfl	:= '0';	
									else
										a32 := (others => '0');
																auxovfl	:= '0';	
									end if;
			-- LOGICAS
			when	ULA_AND 	=>	a32	:=	A	and	B;
									auxovfl	:= '0';	
			
			when	ULA_OR 	=>	a32	:=	A	or		B;
									auxovfl	:= '0';	
			
			when 	ULA_XOR	=> a32	:= A 	xor	B;
									auxovfl	:= '0';	
			
			when	ULA_NOR	=>	a32	:=	A	nor	B;
									auxovfl	:= '0';	
			
			when	ULA_SLL	=> a32	:= std_logic_vector(shift_left(unsigned(B), tmp2));
									auxovfl	:= '0';	
			
			when	ULA_SRL	=>	a32	:=	std_logic_vector(shift_right(unsigned(B), tmp2));
									auxovfl	:= '0';	
			
			when	ULA_SRA	=> a32	:= std_logic_vector(shift_right(signed(B), tmp2));
									auxovfl	:= '0';	
			
			when	others	=>	a32	:=	(others	=>	'X');
								auxovfl	:= '0';		
		end	case;
		aluout	<=	a32;
		ovfl		<= auxovfl;
	end	process;
end	architecture	behavioral;