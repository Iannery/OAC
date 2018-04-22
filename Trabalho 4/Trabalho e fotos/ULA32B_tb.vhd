-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/31/2018 01:00:15"
                                                            
-- Vhdl Test Bench template for design  :  ULA32B
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
                              

ENTITY ULA32B_tb IS
END ULA32B_tb;


ARCHITECTURE ULA32B_arch OF ULA32B_tb IS
                                                
	SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ovfl : STD_LOGIC;
	SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL zero : STD_LOGIC;
	
	
	COMPONENT ULA32B
		PORT (
		A : 		IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		B : 		IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		ovfl : 	OUT STD_LOGIC;
		Z : 		OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		zero : 	OUT STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	i1 : ULA32B
	PORT MAP (
		A => A,
		B => B,
		opcode => opcode,
		ovfl => ovfl,
		Z => Z,
		zero => zero
		);
init : PROCESS                                                                                 
BEGIN                                                     
	-- OPERACOES LOGICAS:::
	A <= X"00ff0f00";
	B <= X"00f0ff00";
	opcode <= "0000";
	wait for 5 ps;
	opcode <= "0001";
	wait for 5 ps;
	opcode <= "1000";
	wait for 5 ps;
	opcode <= "1001";
	wait for 5 ps;
	-- OPERACOES ARITMETICAS
	
	-- ADD SEM OVERFLOW
	A <= X"00000012";
	B <= X"fffffff6";
	opcode <= "0010";
	wait for 5 ps;
	
	-- ADD COM OVERFLOW
	A <= X"7fffffff";
	B <= X"000000ff";
	wait for 5 ps;
	
	-- ADDU
	A <= X"00000012";
	B <= X"fffffff6";
	opcode <= "0011";
	wait for 5 ps;
	
	A <= X"7fffffff";
	B <= X"000000ff";
	wait for 5 ps;
	
	
	-- SUB SEM OVERFLOW
	
	A <= X"000000ff";
	B <= X"000000ff";
	opcode <= "0100";
	wait for 5 ps;
	
	-- SUB COM OVERFLOW
	
	A <= X"80000000";
	B <= X"00000001";
	wait for 5 ps;
	
	-- SUBU
	
	A <= X"000000ff";
	B <= X"000000ff";
	opcode <= "0101";
	wait for 5 ps;
	
	-- SLT COM A > B
	
	A <= X"0000000f";
	B <= X"fffffff0";
	opcode <= "0110";
	wait for 5 ps;
	
	-- SLT COM A < B
	
	A <= X"fffffff0";
	B <= X"0000000f";
	wait for 5 ps;
	
	-- SLTU COM uA > uB
	
	A <= X"fffffff0";
	B <= X"0000000f";
	opcode <= "0111";
	wait for 5 ps;
	
	-- SLTU COM uA < uB
	
	A <= X"0000000f";
	B <= X"fffffff0";
	wait for 5 ps;
	
	-- ROTACAO E DESLOCAMENTO
	
	-- SLL
	A <= X"f0caf0fa";
	B <= X"00000004";
	opcode <= "1010";
	wait for 5 ps;
	
	-- SRL
	opcode <= "1011";
	wait for 5 ps;
	
	-- SRA
	opcode <= "1100";
	wait for 5 ps;
	
	-- RTR
	opcode <= "1101";
	wait for 5 ps;
	
	-- RTL
	opcode <= "1110";
	wait for 5 ps;
	
	
END PROCESS init;                                           
                                          
END ULA32B_arch;
