library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;
package	mips_pkg	is
		component pc is
			port(
				inp	:	in std_logic_vector(31 downto 0);
				clk	:	in std_logic;
				wPC	:	in std_logic;
				outp	:	out std_logic_vector(31 downto 0)
			);
		end component;
		
		component adderpc is

			port(
				a	: in	std_logic_vector(31 downto 0);
				z	: out std_logic_vector(31 downto 0)
				
			);
		end component;
		
		component memMIPS is
			port(
				pc_mais_4	:	in	 std_logic_vector(31 downto 0);
				clk			:	in	 std_logic;
				clk_mem		:	in	 std_logic;
				wPC			:	in	 std_logic;
				m1				: 	in	 std_logic;
				initpc8b		:	in	 std_logic_vector(7 downto 0);
				outputmem	:	out std_logic_vector(31 downto 0)
			);
		end component;
		
		component ramMIPS IS
			PORT
			(
				address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				clock		: IN STD_LOGIC;
				data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren		: IN STD_LOGIC := '0';
				q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
			);
		END component;
		component d7seg is
			port(
				bcdnum	:	in std_logic_vector(3 downto 0);
				out7seg	:	out std_logic_vector(7 downto 0)
				);
			end component;
end mips_pkg;
