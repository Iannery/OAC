-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/06/2018 12:41:21"
                                                            
-- Vhdl Test Bench template for design  :  breg32
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;
                             

ENTITY breg32tb IS
END breg32tb;
ARCHITECTURE breg32_arch OF breg32tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL r1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL radd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL radd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL wadd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT breg32
	PORT (
	-- clk 	= 	clock
	-- wren 	=	write enable
	-- rst	=	reset
	-- radd1	=	register address 1
	-- radd2 =	register address 2
	-- wadd	= 	write address
	-- wdata	=	write data
	-- r1,r2	=	portas de saida
	
	clk : IN STD_LOGIC;
	r1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	radd1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	radd2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rst : IN STD_LOGIC;
	wadd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : breg32
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	r1 => r1,
	r2 => r2,
	radd1 => radd1,
	radd2 => radd2,
	rst => rst,
	wadd => wadd,
	wdata => wdata,
	wren => wren
	);
init : PROCESS                                  
BEGIN                    
		--------------------------------------------------------------
		-- GRAVACAO NOS REGISTRADORES
		--------------------------------------------------------------
		
		wren <= '1'; 
		
		for regaddcounter in 1 to 31 loop
			clk <= '0'; 
			wait for 5 ps; 	
			wdata <= std_logic_vector(to_unsigned(regaddcounter, 32)); 
			wadd <= std_logic_vector(to_unsigned(regaddcounter, 5));
			clk <= '1'; 
			wait for 5 ps;	
		end loop;
		
		
		--------------------------------------------------------------
		-- LEITURA DOS REGISTRADORES
		--------------------------------------------------------------
		wren <= '0';
		for regaddcounter in 1 to 10 loop
			-- leitura em r1
			clk <= '0'; 
			wait for 5 ps;
			radd1 <= std_logic_vector(to_unsigned(regaddcounter, 5));
			radd2 <= std_logic_vector(to_unsigned(0, 5));
			clk <= '1'; 
			wait for 5 ps;	
		end loop;
		
		for regaddcounter in 11 to 20 loop
			-- leitura em r2
			clk <= '0'; 
			wait for 5 ps;
			radd1 <= std_logic_vector(to_unsigned(0, 5));
			radd2 <= std_logic_vector(to_unsigned(regaddcounter, 5));
			clk <= '1'; 
			wait for 5 ps;	
		end loop;
		
		for regaddcounter in 21 to 31 loop
			-- leitura em r1 & r2
			clk <= '0'; 
			wait for 5 ps;
			radd1 <= std_logic_vector(to_unsigned(regaddcounter, 5));
			radd2 <= std_logic_vector(to_unsigned(regaddcounter, 5));
			clk <= '1'; 
			wait for 5 ps;	
		end loop;
		
		
		--------------------------------------------------------------
		-- TESTE COM 0
		--------------------------------------------------------------
			
			-- Tenta escrever 32 em reg(0)
			clk <= '0'; 
			wait for 5 ps;
			wren <= '1';
			wdata <= std_logic_vector(to_unsigned(32, 32)); 
			wadd <= std_logic_vector(to_unsigned(0, 5));
			clk <= '1'; 
			wait for 5 ps;
			
			-- Prepara para leitura do registrador reg(0) em r1
			wren <= '0';
			clk <= '0'; 
			wait for 5 ps;
			radd1 <= std_logic_vector(to_unsigned(0, 5));
			clk <= '1'; 
			wait for 5 ps;
			
		--------------------------------------------------------------
		-- ESCRITA E LEITURA NO MESMO REG
		--------------------------------------------------------------
			-- Escreve 33 no reg(1) e pede para ler o que tem em reg(1) por r1
			clk <= '0'; 
			wait for 5 ps;
			wren <= '1';
			wdata <= std_logic_vector(to_unsigned(33, 32)); 
			wadd <= std_logic_vector(to_unsigned(1, 5));
			radd1 <= std_logic_vector(to_unsigned(1, 5));
			clk <= '1'; 
			wait for 5 ps;
			clk <= '0'; 
			wait for 5 ps;
			clk <= '1'; 
			wait for 5 ps;
			
			clk <= '0';
			wren <= '0';
			wdata <= std_logic_vector(to_unsigned(0, 32)); 
			wadd <= std_logic_vector(to_unsigned(0, 5));
			radd1 <= std_logic_vector(to_unsigned(0, 5));
			radd2 <= std_logic_vector(to_unsigned(0, 5));
			wait for 50 ps;
		
END PROCESS;                                          
END breg32_arch;
