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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/01/2018 18:14:06"

-- 
-- Device: Altera EP4CGX150DF31C8 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA32B IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Z : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	ovfl : OUT std_logic
	);
END ULA32B;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[16]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[17]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[18]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[21]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[22]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[23]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[25]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[26]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[27]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[28]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[29]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[30]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[31]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ovfl	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA32B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_ovfl : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \RotateRight0~13_combout\ : std_logic;
SIGNAL \RotateRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \RotateRight0~16_combout\ : std_logic;
SIGNAL \Mux35~10_combout\ : std_logic;
SIGNAL \Mux35~11_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \RotateLeft0~18_combout\ : std_logic;
SIGNAL \RotateLeft0~22_combout\ : std_logic;
SIGNAL \RotateLeft0~23_combout\ : std_logic;
SIGNAL \RotateLeft0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \RotateRight0~21_combout\ : std_logic;
SIGNAL \RotateRight0~24_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \RotateLeft0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \RotateLeft0~39_combout\ : std_logic;
SIGNAL \RotateLeft0~41_combout\ : std_logic;
SIGNAL \RotateLeft0~42_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \RotateRight0~27_combout\ : std_logic;
SIGNAL \RotateRight0~29_combout\ : std_logic;
SIGNAL \RotateLeft0~54_combout\ : std_logic;
SIGNAL \RotateLeft0~56_combout\ : std_logic;
SIGNAL \RotateLeft0~57_combout\ : std_logic;
SIGNAL \RotateLeft0~59_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \RotateLeft0~67_combout\ : std_logic;
SIGNAL \RotateLeft0~68_combout\ : std_logic;
SIGNAL \RotateRight0~38_combout\ : std_logic;
SIGNAL \RotateLeft0~72_combout\ : std_logic;
SIGNAL \RotateLeft0~74_combout\ : std_logic;
SIGNAL \RotateRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \RotateRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \RotateLeft0~80_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \RotateLeft0~85_combout\ : std_logic;
SIGNAL \RotateLeft0~86_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \RotateRight0~52_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \RotateLeft0~102_combout\ : std_logic;
SIGNAL \RotateLeft0~103_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \RotateRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \RotateRight0~57_combout\ : std_logic;
SIGNAL \RotateLeft0~107_combout\ : std_logic;
SIGNAL \RotateLeft0~108_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \RotateLeft0~112_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \RotateRight0~59_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \RotateLeft0~114_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \RotateRight0~65_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \RotateLeft0~124_combout\ : std_logic;
SIGNAL \RotateRight0~67_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \RotateRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \RotateLeft0~137_combout\ : std_logic;
SIGNAL \RotateLeft0~138_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \ShiftRight0~94_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \RotateRight0~74_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \RotateLeft0~141_combout\ : std_logic;
SIGNAL \RotateLeft0~142_combout\ : std_logic;
SIGNAL \RotateLeft0~143_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Mux35~17_combout\ : std_logic;
SIGNAL \Mux33~11_combout\ : std_logic;
SIGNAL \ShiftRight0~97_combout\ : std_logic;
SIGNAL \RotateRight0~79_combout\ : std_logic;
SIGNAL \Mux26~12_combout\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[8]~output_o\ : std_logic;
SIGNAL \Z[9]~output_o\ : std_logic;
SIGNAL \Z[10]~output_o\ : std_logic;
SIGNAL \Z[11]~output_o\ : std_logic;
SIGNAL \Z[12]~output_o\ : std_logic;
SIGNAL \Z[13]~output_o\ : std_logic;
SIGNAL \Z[14]~output_o\ : std_logic;
SIGNAL \Z[15]~output_o\ : std_logic;
SIGNAL \Z[16]~output_o\ : std_logic;
SIGNAL \Z[17]~output_o\ : std_logic;
SIGNAL \Z[18]~output_o\ : std_logic;
SIGNAL \Z[19]~output_o\ : std_logic;
SIGNAL \Z[20]~output_o\ : std_logic;
SIGNAL \Z[21]~output_o\ : std_logic;
SIGNAL \Z[22]~output_o\ : std_logic;
SIGNAL \Z[23]~output_o\ : std_logic;
SIGNAL \Z[24]~output_o\ : std_logic;
SIGNAL \Z[25]~output_o\ : std_logic;
SIGNAL \Z[26]~output_o\ : std_logic;
SIGNAL \Z[27]~output_o\ : std_logic;
SIGNAL \Z[28]~output_o\ : std_logic;
SIGNAL \Z[29]~output_o\ : std_logic;
SIGNAL \Z[30]~output_o\ : std_logic;
SIGNAL \Z[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \ovfl~output_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Mux35~19_combout\ : std_logic;
SIGNAL \Mux35~20_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \Mux35~12_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \RotateRight0~11_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \RotateRight0~15_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux35~7_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \Mux35~18_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \Mux35~14_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \RotateLeft0~17_combout\ : std_logic;
SIGNAL \RotateLeft0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \RotateLeft0~20_combout\ : std_logic;
SIGNAL \RotateLeft0~25_combout\ : std_logic;
SIGNAL \RotateLeft0~26_combout\ : std_logic;
SIGNAL \RotateLeft0~27_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux35~13_combout\ : std_logic;
SIGNAL \Mux35~15_combout\ : std_logic;
SIGNAL \Mux35~16_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux21~14_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \RotateLeft0~46_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \RotateLeft0~47_combout\ : std_logic;
SIGNAL \RotateLeft0~44_combout\ : std_logic;
SIGNAL \RotateLeft0~45_combout\ : std_logic;
SIGNAL \RotateLeft0~48_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \RotateLeft0~40_combout\ : std_logic;
SIGNAL \RotateLeft0~43_combout\ : std_logic;
SIGNAL \RotateLeft0~49_combout\ : std_logic;
SIGNAL \RotateLeft0~31_combout\ : std_logic;
SIGNAL \RotateLeft0~32_combout\ : std_logic;
SIGNAL \RotateLeft0~33_combout\ : std_logic;
SIGNAL \RotateLeft0~36_combout\ : std_logic;
SIGNAL \RotateLeft0~37_combout\ : std_logic;
SIGNAL \RotateLeft0~38_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \RotateLeft0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux34~7_combout\ : std_logic;
SIGNAL \Mux34~8_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \RotateRight0~39_combout\ : std_logic;
SIGNAL \RotateRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \RotateLeft0~65_combout\ : std_logic;
SIGNAL \RotateLeft0~66_combout\ : std_logic;
SIGNAL \RotateLeft0~69_combout\ : std_logic;
SIGNAL \RotateLeft0~60_combout\ : std_logic;
SIGNAL \RotateLeft0~61_combout\ : std_logic;
SIGNAL \RotateLeft0~64_combout\ : std_logic;
SIGNAL \RotateLeft0~70_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \RotateRight0~17_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \RotateRight0~25_combout\ : std_logic;
SIGNAL \RotateRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \Mux33~10_combout\ : std_logic;
SIGNAL \RotateRight0~12_combout\ : std_logic;
SIGNAL \RotateRight0~33_combout\ : std_logic;
SIGNAL \RotateRight0~48_combout\ : std_logic;
SIGNAL \RotateRight0~35_combout\ : std_logic;
SIGNAL \RotateRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \RotateLeft0~75_combout\ : std_logic;
SIGNAL \Mux32~11_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \RotateRight0~44_combout\ : std_logic;
SIGNAL \RotateRight0~45_combout\ : std_logic;
SIGNAL \RotateRight0~77_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \RotateLeft0~21_combout\ : std_logic;
SIGNAL \RotateLeft0~82_combout\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \RotateLeft0~81_combout\ : std_logic;
SIGNAL \RotateLeft0~83_combout\ : std_logic;
SIGNAL \RotateLeft0~84_combout\ : std_logic;
SIGNAL \Mux32~9_combout\ : std_logic;
SIGNAL \Mux32~10_combout\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~88_combout\ : std_logic;
SIGNAL \RotateLeft0~90_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~87_combout\ : std_logic;
SIGNAL \RotateLeft0~91_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \RotateRight0~78_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Mux31~18_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux31~19_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \RotateRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \RotateRight0~50_combout\ : std_logic;
SIGNAL \RotateRight0~22_combout\ : std_logic;
SIGNAL \RotateRight0~23_combout\ : std_logic;
SIGNAL \RotateRight0~51_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \RotateLeft0~92_combout\ : std_logic;
SIGNAL \RotateLeft0~93_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~50_combout\ : std_logic;
SIGNAL \RotateLeft0~51_combout\ : std_logic;
SIGNAL \RotateLeft0~97_combout\ : std_logic;
SIGNAL \RotateLeft0~98_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~98_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \RotateRight0~34_combout\ : std_logic;
SIGNAL \RotateRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \RotateRight0~54_combout\ : std_logic;
SIGNAL \RotateRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \RotateLeft0~62_combout\ : std_logic;
SIGNAL \RotateLeft0~79_combout\ : std_logic;
SIGNAL \RotateLeft0~104_combout\ : std_logic;
SIGNAL \RotateLeft0~105_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \RotateRight0~37_combout\ : std_logic;
SIGNAL \RotateRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \RotateRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \RotateRight0~58_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \RotateLeft0~106_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \RotateRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \RotateLeft0~34_combout\ : std_logic;
SIGNAL \RotateLeft0~94_combout\ : std_logic;
SIGNAL \RotateLeft0~95_combout\ : std_logic;
SIGNAL \RotateLeft0~115_combout\ : std_logic;
SIGNAL \RotateLeft0~111_combout\ : std_logic;
SIGNAL \RotateLeft0~113_combout\ : std_logic;
SIGNAL \Mux26~10_combout\ : std_logic;
SIGNAL \Mux26~11_combout\ : std_logic;
SIGNAL \RotateLeft0~58_combout\ : std_logic;
SIGNAL \RotateLeft0~119_combout\ : std_logic;
SIGNAL \RotateLeft0~99_combout\ : std_logic;
SIGNAL \RotateLeft0~100_combout\ : std_logic;
SIGNAL \RotateLeft0~120_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \RotateRight0~20_combout\ : std_logic;
SIGNAL \RotateRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \RotateLeft0~117_combout\ : std_logic;
SIGNAL \RotateLeft0~116_combout\ : std_logic;
SIGNAL \RotateLeft0~118_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \RotateRight0~31_combout\ : std_logic;
SIGNAL \RotateRight0~63_combout\ : std_logic;
SIGNAL \RotateRight0~62_combout\ : std_logic;
SIGNAL \RotateRight0~64_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \RotateRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \RotateLeft0~122_combout\ : std_logic;
SIGNAL \RotateLeft0~78_combout\ : std_logic;
SIGNAL \RotateLeft0~121_combout\ : std_logic;
SIGNAL \RotateLeft0~123_combout\ : std_logic;
SIGNAL \RotateRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \RotateRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \RotateRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateLeft0~16_combout\ : std_logic;
SIGNAL \RotateLeft0~127_combout\ : std_logic;
SIGNAL \RotateLeft0~126_combout\ : std_logic;
SIGNAL \RotateLeft0~128_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \RotateLeft0~28_combout\ : std_logic;
SIGNAL \RotateLeft0~30_combout\ : std_logic;
SIGNAL \RotateLeft0~132_combout\ : std_logic;
SIGNAL \RotateLeft0~131_combout\ : std_logic;
SIGNAL \RotateLeft0~133_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \RotateRight0~70_combout\ : std_logic;
SIGNAL \RotateRight0~71_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~99_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \RotateLeft0~52_combout\ : std_logic;
SIGNAL \RotateLeft0~53_combout\ : std_logic;
SIGNAL \RotateLeft0~139_combout\ : std_logic;
SIGNAL \RotateLeft0~140_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \RotateLeft0~63_combout\ : std_logic;
SIGNAL \RotateLeft0~136_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \ShiftRight0~100_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \Mux21~11_combout\ : std_logic;
SIGNAL \RotateRight0~72_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~12_combout\ : std_logic;
SIGNAL \ShiftRight0~91_combout\ : std_logic;
SIGNAL \ShiftRight0~92_combout\ : std_logic;
SIGNAL \Mux21~13_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Mux20~16_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Mux20~12_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux35~8_combout\ : std_logic;
SIGNAL \Mux20~13_combout\ : std_logic;
SIGNAL \RotateRight0~47_combout\ : std_logic;
SIGNAL \RotateRight0~73_combout\ : std_logic;
SIGNAL \RotateRight0~75_combout\ : std_logic;
SIGNAL \Mux20~15_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \RotateRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~93_combout\ : std_logic;
SIGNAL \ShiftRight0~95_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~14_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~13_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \Mux19~11_combout\ : std_logic;
SIGNAL \Mux35~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~10_combout\ : std_logic;
SIGNAL \Mux19~12_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \RotateRight0~76_combout\ : std_logic;
SIGNAL \RotateRight0~32_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \RotateLeft0~73_combout\ : std_logic;
SIGNAL \RotateLeft0~76_combout\ : std_logic;
SIGNAL \RotateLeft0~55_combout\ : std_logic;
SIGNAL \RotateLeft0~71_combout\ : std_logic;
SIGNAL \RotateLeft0~77_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~96_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \RotateLeft0~96_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \RotateLeft0~101_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \RotateLeft0~109_combout\ : std_logic;
SIGNAL \RotateLeft0~110_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \RotateRight0~60_combout\ : std_logic;
SIGNAL \RotateRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \RotateLeft0~125_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \RotateLeft0~89_combout\ : std_logic;
SIGNAL \RotateLeft0~129_combout\ : std_logic;
SIGNAL \RotateLeft0~130_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \RotateLeft0~134_combout\ : std_logic;
SIGNAL \RotateLeft0~135_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_A <= A;
ww_B <= B;
Z <= ww_Z;
zero <= ww_zero;
ovfl <= ww_ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X92_Y62_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X96_Y62_N0
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X96_Y62_N2
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X96_Y62_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X96_Y62_N6
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X96_Y62_N8
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X96_Y62_N10
\LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X96_Y62_N12
\LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X96_Y62_N14
\LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B[7]~input_o\ & (\A[7]~input_o\ & !\LessThan0~13_cout\)) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X96_Y62_N16
\LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\LessThan0~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X96_Y62_N18
\LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\B[9]~input_o\ & (\A[9]~input_o\ & !\LessThan0~17_cout\)) # (!\B[9]~input_o\ & ((\A[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X96_Y62_N20
\LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\B[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\A[10]~input_o\))) # (!\B[10]~input_o\ & (!\A[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X96_Y62_N22
\LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\B[11]~input_o\ & (\A[11]~input_o\ & !\LessThan0~21_cout\)) # (!\B[11]~input_o\ & ((\A[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X96_Y62_N24
\LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\A[12]~input_o\ & (\B[12]~input_o\ & !\LessThan0~23_cout\)) # (!\A[12]~input_o\ & ((\B[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X96_Y62_N26
\LessThan0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X96_Y62_N28
\LessThan0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\B[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X96_Y62_N30
\LessThan0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\A[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X96_Y61_N0
\LessThan0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\B[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\A[16]~input_o\))) # (!\B[16]~input_o\ & (!\A[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X96_Y61_N2
\LessThan0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\B[17]~input_o\ & (\A[17]~input_o\ & !\LessThan0~33_cout\)) # (!\B[17]~input_o\ & ((\A[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X96_Y61_N4
\LessThan0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B[18]~input_o\ & ((!\LessThan0~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X96_Y61_N6
\LessThan0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\B[19]~input_o\ & (\A[19]~input_o\ & !\LessThan0~37_cout\)) # (!\B[19]~input_o\ & ((\A[19]~input_o\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X96_Y61_N8
\LessThan0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\LessThan0~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X96_Y61_N10
\LessThan0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\LessThan0~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X96_Y61_N12
\LessThan0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X96_Y61_N14
\LessThan0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B[23]~input_o\ & (\A[23]~input_o\ & !\LessThan0~45_cout\)) # (!\B[23]~input_o\ & ((\A[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X96_Y61_N16
\LessThan0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\B[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X96_Y61_N18
\LessThan0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\B[25]~input_o\ & (\A[25]~input_o\ & !\LessThan0~49_cout\)) # (!\B[25]~input_o\ & ((\A[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X96_Y61_N20
\LessThan0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\B[26]~input_o\ & ((!\LessThan0~51_cout\) # (!\A[26]~input_o\))) # (!\B[26]~input_o\ & (!\A[26]~input_o\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X96_Y61_N22
\LessThan0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\B[27]~input_o\ & (\A[27]~input_o\ & !\LessThan0~53_cout\)) # (!\B[27]~input_o\ & ((\A[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X96_Y61_N24
\LessThan0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\A[28]~input_o\ & (\B[28]~input_o\ & !\LessThan0~55_cout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X96_Y61_N26
\LessThan0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\A[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\B[29]~input_o\))) # (!\A[29]~input_o\ & (!\B[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X96_Y61_N28
\LessThan0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\A[30]~input_o\ & (\B[30]~input_o\ & !\LessThan0~59_cout\)) # (!\A[30]~input_o\ & ((\B[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X96_Y61_N30
\LessThan0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A[31]~input_o\ & ((\LessThan0~61_cout\) # (!\B[31]~input_o\))) # (!\A[31]~input_o\ & (\LessThan0~61_cout\ & !\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X91_Y63_N2
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X92_Y62_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X92_Y62_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\Add0~5\ & VCC)) # (!\A[3]~input_o\ & (!\Add0~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Add0~5\)) # (!\A[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Add0~5\)) # (!\B[3]~input_o\ & ((!\Add0~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X92_Y62_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X91_Y63_N10
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add1~9\)) # (!\A[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\B[5]~input_o\ & ((!\Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X92_Y62_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\Add0~13\ & VCC)) # (!\B[7]~input_o\ & (!\Add0~13\)))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & (!\Add0~13\)) # (!\B[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\A[7]~input_o\ & (!\B[7]~input_o\ & !\Add0~13\)) # (!\A[7]~input_o\ & ((!\Add0~13\) # (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X92_Y62_N16
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\A[8]~input_o\ $ (\B[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\A[8]~input_o\ & ((\B[8]~input_o\) # (!\Add0~15\))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X91_Y63_N18
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\ & (!\Add1~17\)) # (!\A[9]~input_o\ & ((\Add1~17\) # (GND))))) # (!\B[9]~input_o\ & ((\A[9]~input_o\ & (\Add1~17\ & VCC)) # (!\A[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\B[9]~input_o\ & ((!\Add1~17\) # (!\A[9]~input_o\))) # (!\B[9]~input_o\ & (!\A[9]~input_o\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X92_Y62_N18
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\ & (\Add0~17\ & VCC)) # (!\B[9]~input_o\ & (!\Add0~17\)))) # (!\A[9]~input_o\ & ((\B[9]~input_o\ & (!\Add0~17\)) # (!\B[9]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\A[9]~input_o\ & (!\B[9]~input_o\ & !\Add0~17\)) # (!\A[9]~input_o\ & ((!\Add0~17\) # (!\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X91_Y63_N20
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\A[10]~input_o\ $ (\B[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\A[10]~input_o\ & ((!\Add1~19\) # (!\B[10]~input_o\))) # (!\A[10]~input_o\ & (!\B[10]~input_o\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X92_Y62_N20
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\A[10]~input_o\ $ (\B[10]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\A[10]~input_o\ & ((\B[10]~input_o\) # (!\Add0~19\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X91_Y63_N22
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\ & (!\Add1~21\)) # (!\B[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\A[11]~input_o\ & ((\B[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\B[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\A[11]~input_o\ & (\B[11]~input_o\ & !\Add1~21\)) # (!\A[11]~input_o\ & ((\B[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X91_Y63_N24
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\B[12]~input_o\ $ (\A[12]~input_o\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\B[12]~input_o\ & (\A[12]~input_o\ & !\Add1~23\)) # (!\B[12]~input_o\ & ((\A[12]~input_o\) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X92_Y62_N24
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\A[12]~input_o\ $ (\B[12]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\A[12]~input_o\ & ((\B[12]~input_o\) # (!\Add0~23\))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X92_Y62_N28
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\B[14]~input_o\ $ (\A[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\B[14]~input_o\ & ((\A[14]~input_o\) # (!\Add0~27\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X92_Y62_N30
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\ & (\Add0~29\ & VCC)) # (!\B[15]~input_o\ & (!\Add0~29\)))) # (!\A[15]~input_o\ & ((\B[15]~input_o\ & (!\Add0~29\)) # (!\B[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\A[15]~input_o\ & (!\B[15]~input_o\ & !\Add0~29\)) # (!\A[15]~input_o\ & ((!\Add0~29\) # (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X91_Y62_N2
\Add1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\ & (!\Add1~33\)) # (!\A[17]~input_o\ & ((\Add1~33\) # (GND))))) # (!\B[17]~input_o\ & ((\A[17]~input_o\ & (\Add1~33\ & VCC)) # (!\A[17]~input_o\ & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\B[17]~input_o\ & ((!\Add1~33\) # (!\A[17]~input_o\))) # (!\B[17]~input_o\ & (!\A[17]~input_o\ & !\Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X92_Y61_N2
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\ & (\Add0~33\ & VCC)) # (!\B[17]~input_o\ & (!\Add0~33\)))) # (!\A[17]~input_o\ & ((\B[17]~input_o\ & (!\Add0~33\)) # (!\B[17]~input_o\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\A[17]~input_o\ & (!\B[17]~input_o\ & !\Add0~33\)) # (!\A[17]~input_o\ & ((!\Add0~33\) # (!\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X92_Y61_N4
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\B[18]~input_o\ $ (\A[18]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\B[18]~input_o\ & ((\A[18]~input_o\) # (!\Add0~35\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X92_Y61_N8
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\B[20]~input_o\ $ (\A[20]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\B[20]~input_o\ & ((\A[20]~input_o\) # (!\Add0~39\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X91_Y62_N10
\Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\ & (!\Add1~41\)) # (!\A[21]~input_o\ & ((\Add1~41\) # (GND))))) # (!\B[21]~input_o\ & ((\A[21]~input_o\ & (\Add1~41\ & VCC)) # (!\A[21]~input_o\ & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\B[21]~input_o\ & ((!\Add1~41\) # (!\A[21]~input_o\))) # (!\B[21]~input_o\ & (!\A[21]~input_o\ & !\Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X91_Y62_N12
\Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\B[22]~input_o\ $ (\A[22]~input_o\ $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\B[22]~input_o\ & (\A[22]~input_o\ & !\Add1~43\)) # (!\B[22]~input_o\ & ((\A[22]~input_o\) # (!\Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X92_Y61_N14
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\ & (\Add0~45\ & VCC)) # (!\B[23]~input_o\ & (!\Add0~45\)))) # (!\A[23]~input_o\ & ((\B[23]~input_o\ & (!\Add0~45\)) # (!\B[23]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\A[23]~input_o\ & (!\B[23]~input_o\ & !\Add0~45\)) # (!\A[23]~input_o\ & ((!\Add0~45\) # (!\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X92_Y61_N20
\Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\A[26]~input_o\ $ (\B[26]~input_o\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\A[26]~input_o\ & ((\B[26]~input_o\) # (!\Add0~51\))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X92_Y61_N22
\Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\ & (\Add0~53\ & VCC)) # (!\B[27]~input_o\ & (!\Add0~53\)))) # (!\A[27]~input_o\ & ((\B[27]~input_o\ & (!\Add0~53\)) # (!\B[27]~input_o\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\A[27]~input_o\ & (!\B[27]~input_o\ & !\Add0~53\)) # (!\A[27]~input_o\ & ((!\Add0~53\) # (!\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X91_Y62_N24
\Add1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\A[28]~input_o\ $ (\B[28]~input_o\ $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\A[28]~input_o\ & ((!\Add1~55\) # (!\B[28]~input_o\))) # (!\A[28]~input_o\ & (!\B[28]~input_o\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X92_Y61_N24
\Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\A[28]~input_o\ $ (\B[28]~input_o\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\A[28]~input_o\ & ((\B[28]~input_o\) # (!\Add0~55\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X91_Y62_N26
\Add1~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\ & (!\Add1~57\)) # (!\B[29]~input_o\ & (\Add1~57\ & VCC)))) # (!\A[29]~input_o\ & ((\B[29]~input_o\ & ((\Add1~57\) # (GND))) # (!\B[29]~input_o\ & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\A[29]~input_o\ & (\B[29]~input_o\ & !\Add1~57\)) # (!\A[29]~input_o\ & ((\B[29]~input_o\) # (!\Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X92_Y61_N26
\Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\ & (\Add0~57\ & VCC)) # (!\B[29]~input_o\ & (!\Add0~57\)))) # (!\A[29]~input_o\ & ((\B[29]~input_o\ & (!\Add0~57\)) # (!\B[29]~input_o\ & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\A[29]~input_o\ & (!\B[29]~input_o\ & !\Add0~57\)) # (!\A[29]~input_o\ & ((!\Add0~57\) # (!\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X92_Y61_N28
\Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\A[30]~input_o\ $ (\B[30]~input_o\ $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\A[30]~input_o\ & ((\B[30]~input_o\) # (!\Add0~59\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X93_Y62_N20
\ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\B[14]~input_o\) # ((\B[13]~input_o\) # ((\B[15]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X85_Y60_N24
\ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\ShiftRight0~14_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~17_combout\ & \ShiftRight0~16_combout\)))) # (!\ShiftRight0~14_combout\ & (((\ShiftRight0~17_combout\ & \ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X84_Y61_N20
\ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X86_Y59_N10
\RotateRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~13_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~13_combout\);

-- Location: LCCOMB_X86_Y60_N26
\RotateRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~14_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \RotateRight0~14_combout\);

-- Location: LCCOMB_X85_Y60_N26
\ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\ShiftRight0~10_combout\ & ((\ShiftRight0~26_combout\) # ((\ShiftRight0~21_combout\ & \ShiftRight0~24_combout\)))) # (!\ShiftRight0~10_combout\ & (((\ShiftRight0~21_combout\ & \ShiftRight0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \ShiftRight0~26_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~27_combout\);

-- Location: LCCOMB_X86_Y64_N12
\RotateRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~16_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \RotateRight0~16_combout\);

-- Location: LCCOMB_X89_Y59_N16
\Mux35~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~10_combout\ = (\Mux35~9_combout\ & ((\Mux35~8_combout\) # ((!\opcode[3]~input_o\ & \Add0~0_combout\)))) # (!\Mux35~9_combout\ & (((!\opcode[3]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~9_combout\,
	datab => \Mux35~8_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux35~10_combout\);

-- Location: LCCOMB_X89_Y59_N10
\Mux35~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~11_combout\ = (\Mux35~10_combout\) # ((\opcode[3]~input_o\ & (\ShiftRight0~33_combout\ & \opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux35~10_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux35~11_combout\);

-- Location: LCCOMB_X86_Y60_N22
\RotateLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \RotateLeft0~4_combout\);

-- Location: LCCOMB_X86_Y62_N22
\RotateLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~6_combout\);

-- Location: LCCOMB_X83_Y61_N10
\RotateLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[31]~input_o\,
	combout => \RotateLeft0~15_combout\);

-- Location: LCCOMB_X83_Y61_N30
\RotateLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~18_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~18_combout\);

-- Location: LCCOMB_X84_Y61_N24
\RotateLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~22_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \RotateLeft0~22_combout\);

-- Location: LCCOMB_X86_Y61_N10
\RotateLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~23_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\RotateLeft0~21_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~22_combout\,
	datab => \RotateLeft0~21_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~23_combout\);

-- Location: LCCOMB_X84_Y61_N26
\RotateLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~24_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \RotateLeft0~24_combout\);

-- Location: LCCOMB_X84_Y61_N0
\ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\B[0]~input_o\ & (\RotateRight0~17_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~17_combout\,
	datac => \ShiftRight0~19_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X86_Y61_N6
\ShiftRight1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\ShiftRight0~34_combout\ & ((\ShiftRight0~21_combout\) # ((\ShiftRight0~35_combout\ & \ShiftRight0~10_combout\)))) # (!\ShiftRight0~34_combout\ & (\ShiftRight0~35_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X90_Y63_N24
\ShiftRight1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\ShiftRight1~8_combout\) # ((\B[3]~input_o\ & \ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight1~10_combout\,
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X90_Y63_N18
\Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~11_combout\)) # (!\Mux31~0_combout\ & ((\Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \ShiftRight1~11_combout\,
	datac => \Mux31~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X83_Y61_N6
\RotateRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~21_combout\ = (\ShiftRight0~17_combout\ & ((\B[0]~input_o\ & ((\RotateRight0~20_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \RotateRight0~20_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~17_combout\,
	combout => \RotateRight0~21_combout\);

-- Location: LCCOMB_X86_Y61_N8
\RotateRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~24_combout\ = (\ShiftRight1~8_combout\) # ((\RotateRight0~21_combout\) # ((\RotateRight0~11_combout\ & \RotateRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \RotateRight0~21_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~24_combout\);

-- Location: LCCOMB_X90_Y63_N12
\Mux34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux31~1_combout\ & ((\Mux34~0_combout\ & ((\RotateRight0~24_combout\))) # (!\Mux34~0_combout\ & (\A[31]~input_o\)))) # (!\Mux31~1_combout\ & (\Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \A[31]~input_o\,
	datad => \RotateRight0~24_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X86_Y61_N26
\RotateLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~35_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & (\RotateLeft0~22_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~22_combout\,
	datab => \RotateLeft0~34_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~35_combout\);

-- Location: LCCOMB_X86_Y61_N30
\ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\ShiftRight1~8_combout\) # ((\RotateRight0~21_combout\) # ((\RotateRight0~11_combout\ & \ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \RotateRight0~21_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X86_Y62_N30
\RotateLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~39_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~39_combout\);

-- Location: LCCOMB_X86_Y64_N22
\RotateLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~41_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	combout => \RotateLeft0~41_combout\);

-- Location: LCCOMB_X86_Y64_N8
\RotateLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~42_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~1_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~41_combout\,
	datab => \RotateLeft0~1_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateLeft0~42_combout\);

-- Location: LCCOMB_X90_Y60_N6
\Mux31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & ((\ShiftLeft0~4_combout\) # (\ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X85_Y63_N8
\ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~40_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X84_Y62_N10
\ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\B[0]~input_o\ & (\ShiftRight0~45_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~45_combout\,
	datac => \ShiftRight0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X85_Y61_N26
\RotateRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~27_combout\ = (\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	combout => \RotateRight0~27_combout\);

-- Location: LCCOMB_X83_Y61_N12
\RotateRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~29_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~29_combout\);

-- Location: LCCOMB_X87_Y64_N16
\RotateLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~54_combout\ = (\ShiftRight0~10_combout\ & ((\RotateLeft0~53_combout\) # ((\RotateLeft0~51_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~10_combout\ & (\RotateLeft0~51_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \RotateLeft0~51_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateLeft0~53_combout\,
	combout => \RotateLeft0~54_combout\);

-- Location: LCCOMB_X87_Y64_N2
\RotateLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~56_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\RotateLeft0~34_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~55_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~34_combout\,
	combout => \RotateLeft0~56_combout\);

-- Location: LCCOMB_X85_Y61_N30
\RotateLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~57_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \RotateLeft0~57_combout\);

-- Location: LCCOMB_X87_Y64_N12
\RotateLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~59_combout\ = (\RotateLeft0~56_combout\) # ((\RotateLeft0~54_combout\) # ((\ShiftRight0~17_combout\ & \RotateLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \RotateLeft0~56_combout\,
	datac => \RotateLeft0~58_combout\,
	datad => \RotateLeft0~54_combout\,
	combout => \RotateLeft0~59_combout\);

-- Location: LCCOMB_X89_Y64_N18
\Mux33~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\A[2]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X86_Y63_N4
\ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\RotateRight0~9_combout\ & (\B[2]~input_o\ & (\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~9_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X86_Y63_N22
\ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\ShiftRight0~52_combout\) # ((\ShiftRight1~12_combout\) # ((\RotateRight0~30_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight0~52_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X89_Y64_N20
\Mux33~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[2]~input_o\ & (\opcode[0]~input_o\ & !\B[2]~input_o\)) # (!\A[2]~input_o\ & (\opcode[0]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X89_Y64_N6
\Mux33~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (\Mux33~5_combout\ & ((\Mux33~11_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux33~5_combout\ & (((\ShiftRight0~53_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~11_combout\,
	datab => \Mux33~5_combout\,
	datac => \ShiftRight0~53_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X89_Y64_N8
\Mux33~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux31~4_combout\ & ((\Mux33~4_combout\ & ((\Mux33~6_combout\))) # (!\Mux33~4_combout\ & (\Add0~4_combout\)))) # (!\Mux31~4_combout\ & (\Mux33~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux33~4_combout\,
	datac => \Add0~4_combout\,
	datad => \Mux33~6_combout\,
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X85_Y64_N8
\Mux33~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux31~3_combout\ & ((\RotateLeft0~59_combout\) # ((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (((!\Mux31~2_combout\ & \Mux33~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \RotateLeft0~59_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux33~7_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X84_Y62_N4
\RotateLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~67_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~67_combout\);

-- Location: LCCOMB_X84_Y62_N6
\RotateLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~68_combout\ = (\B[0]~input_o\ & (\RotateLeft0~46_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~46_combout\,
	datac => \RotateLeft0~67_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~68_combout\);

-- Location: LCCOMB_X85_Y60_N16
\RotateRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~38_combout\ = (\B[0]~input_o\ & ((\RotateRight0~37_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftRight0~40_combout\,
	datad => \RotateRight0~37_combout\,
	combout => \RotateRight0~38_combout\);

-- Location: LCCOMB_X83_Y61_N4
\RotateLeft0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~72_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~52_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~15_combout\,
	datab => \RotateLeft0~52_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateLeft0~72_combout\);

-- Location: LCCOMB_X86_Y59_N6
\RotateLeft0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~74_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~74_combout\);

-- Location: LCCOMB_X85_Y61_N28
\RotateRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~41_combout\ = (\B[0]~input_o\ & (\RotateRight0~10_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \RotateRight0~10_combout\,
	datac => \RotateRight0~27_combout\,
	combout => \RotateRight0~41_combout\);

-- Location: LCCOMB_X84_Y60_N4
\ShiftRight1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\ShiftRight0~21_combout\ & ((\B[0]~input_o\ & ((\RotateRight0~8_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \ShiftRight0~21_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~8_combout\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X84_Y60_N22
\RotateRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~42_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateRight0~42_combout\);

-- Location: LCCOMB_X84_Y60_N24
\ShiftRight1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\RotateRight0~42_combout\) # (\RotateRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~42_combout\,
	datab => \RotateRight0~43_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X84_Y60_N2
\ShiftRight1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (!\ShiftRight1~17_combout\ & (!\ShiftRight1~16_combout\ & ((!\ShiftRight0~10_combout\) # (!\RotateRight0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~41_combout\,
	datab => \ShiftRight1~17_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X89_Y61_N24
\ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = ((\ShiftLeft0~12_combout\ & (\A[31]~input_o\ & \RotateRight0~11_combout\))) # (!\ShiftRight1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \ShiftLeft0~12_combout\,
	datac => \A[31]~input_o\,
	datad => \RotateRight0~11_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X85_Y62_N12
\RotateLeft0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~80_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateLeft0~78_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~78_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~79_combout\,
	combout => \RotateLeft0~80_combout\);

-- Location: LCCOMB_X86_Y60_N14
\ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateRight0~46_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~46_combout\,
	datab => \RotateRight0~47_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X89_Y63_N12
\Mux31~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\Mux31~1_combout\ & ((\A[31]~input_o\) # ((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & (((\ShiftRight1~35_combout\ & \Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~35_combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X86_Y61_N18
\RotateLeft0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~85_combout\ = (\B[3]~input_o\ & (((\RotateLeft0~19_combout\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\RotateLeft0~8_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datab => \RotateLeft0~19_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~85_combout\);

-- Location: LCCOMB_X86_Y61_N12
\RotateLeft0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~86_combout\ = (\RotateLeft0~85_combout\ & ((\RotateLeft0~26_combout\) # ((!\B[2]~input_o\)))) # (!\RotateLeft0~85_combout\ & (((\RotateLeft0~16_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~26_combout\,
	datab => \RotateLeft0~85_combout\,
	datac => \RotateLeft0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~86_combout\);

-- Location: LCCOMB_X92_Y60_N12
\Mux31~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\Mux31~5_combout\ & ((\B[4]~input_o\) # ((\Mux31~4_combout\) # (\A[4]~input_o\)))) # (!\Mux31~5_combout\ & (\B[4]~input_o\ & (!\Mux31~4_combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B[4]~input_o\,
	datac => \Mux31~4_combout\,
	datad => \A[4]~input_o\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X88_Y61_N0
\ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~12_combout\ & ((\A[0]~input_o\)))) # (!\B[2]~input_o\ & (((\RotateLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datab => \RotateLeft0~8_combout\,
	datac => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X89_Y60_N18
\Mux31~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\ShiftLeft0~13_combout\ & (\ShiftRight0~39_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftRight0~39_combout\,
	datac => \B[3]~input_o\,
	combout => \Mux31~13_combout\);

-- Location: LCCOMB_X89_Y60_N12
\Mux31~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[4]~input_o\ & !\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux31~14_combout\);

-- Location: LCCOMB_X89_Y60_N6
\Mux31~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = (\Mux31~14_combout\ & ((\Mux31~13_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux31~14_combout\ & (((!\ShiftRight0~96_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~14_combout\,
	datab => \Mux31~13_combout\,
	datac => \ShiftRight0~96_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux31~15_combout\);

-- Location: LCCOMB_X92_Y60_N30
\Mux31~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = (\Mux31~4_combout\ & ((\Mux31~12_combout\ & (\Mux31~15_combout\)) # (!\Mux31~12_combout\ & ((\Add0~8_combout\))))) # (!\Mux31~4_combout\ & (((\Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Add0~8_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux31~12_combout\,
	combout => \Mux31~16_combout\);

-- Location: LCCOMB_X88_Y62_N28
\Mux31~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = (\Mux31~3_combout\ & (((\RotateLeft0~86_combout\) # (\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (\Mux31~16_combout\ & ((!\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~16_combout\,
	datab => \RotateLeft0~86_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~17_combout\);

-- Location: LCCOMB_X86_Y61_N16
\ShiftRight1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\ShiftRight0~36_combout\ & ((\ShiftRight0~10_combout\) # ((\ShiftRight0~35_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~36_combout\ & (\ShiftRight0~35_combout\ & ((\ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X93_Y62_N6
\Mux30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\ShiftRight0~39_combout\ & (\ShiftLeft0~14_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~39_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X93_Y62_N8
\Mux30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[5]~input_o\ & (!\A[5]~input_o\ & \opcode[0]~input_o\)) # (!\B[5]~input_o\ & (\A[5]~input_o\ $ (!\opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X93_Y62_N10
\Mux30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux31~6_combout\ & ((\Mux30~4_combout\ & (\Mux30~3_combout\)) # (!\Mux30~4_combout\ & ((\ShiftRight0~97_combout\))))) # (!\Mux31~6_combout\ & (((\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux31~6_combout\,
	datac => \Mux30~4_combout\,
	datad => \ShiftRight0~97_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X85_Y63_N10
\ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\B[3]~input_o\ & ((\ShiftRight0~34_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~41_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight0~34_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X86_Y63_N12
\ShiftRight1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\RotateRight0~30_combout\ & ((\ShiftRight0~10_combout\) # ((\ShiftRight0~21_combout\ & \RotateRight0~28_combout\)))) # (!\RotateRight0~30_combout\ & (\ShiftRight0~21_combout\ & ((\RotateRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight0~21_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateRight0~28_combout\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X86_Y63_N6
\RotateRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~52_combout\ = (\RotateRight0~79_combout\) # ((\ShiftRight1~22_combout\) # ((\RotateRight0~11_combout\ & \RotateRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \RotateRight0~79_combout\,
	datac => \RotateRight0~40_combout\,
	datad => \ShiftRight1~22_combout\,
	combout => \RotateRight0~52_combout\);

-- Location: LCCOMB_X91_Y60_N8
\Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\B[6]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[6]~input_o\)))) # (!\B[6]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \A[6]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X91_Y60_N12
\Mux29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (!\B[3]~input_o\ & (\ShiftLeft0~15_combout\ & \ShiftRight0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftRight0~39_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X86_Y63_N16
\ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\B[3]~input_o\ & ((\RotateRight0~26_combout\))) # (!\B[3]~input_o\ & (\RotateRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~38_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateRight0~26_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X85_Y62_N10
\RotateLeft0~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~102_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~73_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \RotateLeft0~73_combout\,
	datac => \RotateLeft0~72_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~102_combout\);

-- Location: LCCOMB_X89_Y62_N0
\RotateLeft0~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~103_combout\ = (\RotateLeft0~102_combout\) # ((\ShiftLeft0~16_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~16_combout\,
	datac => \RotateLeft0~102_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~103_combout\);

-- Location: LCCOMB_X84_Y60_N16
\ShiftRight1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\RotateRight0~41_combout\ & ((\ShiftRight0~21_combout\) # ((\ShiftRight0~10_combout\ & \RotateRight0~53_combout\)))) # (!\RotateRight0~41_combout\ & (\ShiftRight0~10_combout\ & (\RotateRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~41_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \RotateRight0~53_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X89_Y62_N12
\Mux28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ShiftRight0~39_combout\ & (\ShiftLeft0~16_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X84_Y60_N26
\RotateRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~56_combout\ = (\B[0]~input_o\ & ((\RotateRight0~8_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~8_combout\,
	combout => \RotateRight0~56_combout\);

-- Location: LCCOMB_X88_Y60_N24
\ShiftRight1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\ShiftRight0~74_combout\) # ((\B[3]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ShiftRight0~74_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X88_Y60_N26
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & (\A[31]~input_o\)) # (!\Mux31~1_combout\ & ((\ShiftRight1~27_combout\))))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight1~27_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X86_Y60_N30
\RotateRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~57_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\ShiftRight0~25_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~14_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~25_combout\,
	combout => \RotateRight0~57_combout\);

-- Location: LCCOMB_X87_Y61_N16
\RotateLeft0~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~107_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~19_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~19_combout\,
	datac => \RotateLeft0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~107_combout\);

-- Location: LCCOMB_X87_Y61_N10
\RotateLeft0~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~108_combout\ = (\RotateLeft0~107_combout\) # (\RotateLeft0~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~107_combout\,
	datac => \RotateLeft0~106_combout\,
	combout => \RotateLeft0~108_combout\);

-- Location: LCCOMB_X88_Y61_N12
\Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\ShiftLeft0~12_combout\ & (\B[3]~input_o\ & (\A[0]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X87_Y62_N16
\RotateLeft0~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~112_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~32_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~32_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~30_combout\,
	combout => \RotateLeft0~112_combout\);

-- Location: LCCOMB_X90_Y63_N6
\Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~28_combout\)) # (!\Mux31~0_combout\ & ((\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \ShiftRight1~28_combout\,
	datac => \Mux31~0_combout\,
	datad => \Add1~18_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X85_Y63_N30
\RotateRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~59_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\ShiftRight0~47_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \ShiftRight0~47_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~59_combout\);

-- Location: LCCOMB_X90_Y63_N0
\Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux31~1_combout\ & ((\Mux26~2_combout\ & (\RotateRight0~61_combout\)) # (!\Mux26~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux31~1_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \RotateRight0~61_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X90_Y64_N26
\Mux26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\A[9]~input_o\) # (\B[9]~input_o\)))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\A[9]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X86_Y61_N28
\ShiftRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\ShiftRight0~37_combout\ & ((\ShiftRight0~10_combout\) # ((\ShiftRight0~36_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~37_combout\ & (\ShiftRight0~36_combout\ & ((\ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X90_Y62_N12
\Mux26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\ShiftRight0~39_combout\ & ((\Mux26~12_combout\) # (\RotateLeft0~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \Mux26~12_combout\,
	datad => \RotateLeft0~111_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X90_Y64_N4
\Mux26~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[9]~input_o\ $ (\A[9]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[9]~input_o\ & !\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X90_Y64_N30
\Mux26~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & (((\Mux26~5_combout\) # (!\Mux31~6_combout\)))) # (!\Mux26~6_combout\ & (\ShiftRight0~77_combout\ & (\Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~77_combout\,
	datab => \Mux26~6_combout\,
	datac => \Mux31~6_combout\,
	datad => \Mux26~5_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X90_Y64_N16
\Mux26~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux31~4_combout\ & ((\Mux26~4_combout\ & (\Mux26~7_combout\)) # (!\Mux26~4_combout\ & ((\Add0~18_combout\))))) # (!\Mux31~4_combout\ & (((\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~7_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux26~4_combout\,
	datad => \Add0~18_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X90_Y64_N10
\Mux26~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\Mux31~2_combout\ & ((\Mux26~3_combout\) # ((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & (((!\Mux31~3_combout\ & \Mux26~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux26~3_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux26~8_combout\,
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X87_Y62_N26
\RotateLeft0~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~114_combout\ = (\B[3]~input_o\ & (\RotateLeft0~47_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~47_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~37_combout\,
	combout => \RotateLeft0~114_combout\);

-- Location: LCCOMB_X90_Y60_N26
\Mux25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\ShiftRight0~39_combout\ & ((\RotateLeft0~116_combout\) # ((\ShiftRight0~17_combout\ & \ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \RotateLeft0~116_combout\,
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X85_Y60_N6
\RotateRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~65_combout\ = (\RotateRight0~47_combout\ & ((\ShiftRight0~17_combout\) # ((\RotateRight0~11_combout\ & \RotateRight0~49_combout\)))) # (!\RotateRight0~47_combout\ & (\RotateRight0~11_combout\ & ((\RotateRight0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~47_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \RotateRight0~49_combout\,
	combout => \RotateRight0~65_combout\);

-- Location: LCCOMB_X89_Y64_N26
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\A[11]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \B[11]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X89_Y61_N4
\Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[11]~input_o\ & (\opcode[0]~input_o\ & !\B[11]~input_o\)) # (!\A[11]~input_o\ & (\opcode[0]~input_o\ $ (!\B[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X85_Y62_N22
\RotateLeft0~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~124_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateLeft0~82_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~82_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~73_combout\,
	combout => \RotateLeft0~124_combout\);

-- Location: LCCOMB_X85_Y60_N8
\RotateRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~67_combout\ = (\B[3]~input_o\ & (((\ShiftRight0~26_combout\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\ShiftRight0~14_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~26_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~67_combout\);

-- Location: LCCOMB_X88_Y61_N14
\Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\A[12]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[12]~input_o\)))) # (!\A[12]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \B[12]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X88_Y61_N24
\Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\ShiftRight0~39_combout\ & ((\RotateLeft0~126_combout\) # ((\ShiftLeft0~13_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~126_combout\,
	datab => \ShiftLeft0~13_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight0~39_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X88_Y61_N2
\Mux23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[12]~input_o\ & !\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[12]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X88_Y61_N4
\Mux23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~4_combout\ & ((\Mux23~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux23~4_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \Mux23~3_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~86_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X88_Y62_N6
\Mux23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~2_combout\ & (((\Mux23~5_combout\)) # (!\Mux31~4_combout\))) # (!\Mux23~2_combout\ & (\Mux31~4_combout\ & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux23~5_combout\,
	datad => \Add0~24_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X89_Y60_N22
\ShiftRight0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftRight0~16_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~87_combout\);

-- Location: LCCOMB_X85_Y63_N22
\RotateRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~69_combout\ = (\ShiftRight0~21_combout\ & ((\RotateRight0~23_combout\) # ((\ShiftRight0~43_combout\ & \ShiftRight0~10_combout\)))) # (!\ShiftRight0~21_combout\ & (\ShiftRight0~43_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~69_combout\);

-- Location: LCCOMB_X85_Y63_N12
\ShiftRight0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftRight0~36_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \ShiftRight0~34_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~89_combout\);

-- Location: LCCOMB_X87_Y59_N4
\ShiftRight1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\ShiftRight1~32_combout\ & ((\A[30]~input_o\))) # (!\ShiftRight1~32_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datab => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X87_Y64_N26
\RotateLeft0~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~137_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\RotateLeft0~51_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \RotateLeft0~61_combout\,
	datac => \RotateLeft0~51_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~137_combout\);

-- Location: LCCOMB_X87_Y64_N4
\RotateLeft0~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~138_combout\ = (\RotateLeft0~137_combout\) # (\RotateLeft0~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~137_combout\,
	datad => \RotateLeft0~136_combout\,
	combout => \RotateLeft0~138_combout\);

-- Location: LCCOMB_X91_Y60_N30
\Mux21~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[14]~input_o\ & !\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[14]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X84_Y60_N10
\ShiftRight0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~94_combout\ = (\ShiftRight0~10_combout\ & ((\B[0]~input_o\ & ((\RotateRight0~8_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~8_combout\,
	combout => \ShiftRight0~94_combout\);

-- Location: LCCOMB_X92_Y60_N18
\Mux20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (!\opcode[0]~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X85_Y60_N12
\RotateRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~74_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & (\RotateRight0~15_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \RotateRight0~15_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~37_combout\,
	combout => \RotateRight0~74_combout\);

-- Location: LCCOMB_X91_Y59_N10
\Mux20~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\ & (!\opcode[3]~input_o\)) # (!\B[15]~input_o\ & ((\opcode[0]~input_o\))))) # (!\A[15]~input_o\ & ((\opcode[0]~input_o\ & ((\B[15]~input_o\))) # (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & 
-- !\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \A[15]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux20~11_combout\);

-- Location: LCCOMB_X85_Y62_N28
\RotateLeft0~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~141_combout\ = (\RotateLeft0~72_combout\ & ((\ShiftRight0~21_combout\) # ((\ShiftRight0~10_combout\ & \RotateLeft0~73_combout\)))) # (!\RotateLeft0~72_combout\ & (\ShiftRight0~10_combout\ & ((\RotateLeft0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~72_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateLeft0~73_combout\,
	combout => \RotateLeft0~141_combout\);

-- Location: LCCOMB_X86_Y61_N22
\RotateLeft0~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~142_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & (\RotateLeft0~67_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~67_combout\,
	datab => \RotateLeft0~21_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~142_combout\);

-- Location: LCCOMB_X85_Y62_N6
\RotateLeft0~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~143_combout\ = (\RotateLeft0~141_combout\) # ((\RotateLeft0~142_combout\) # ((\RotateLeft0~71_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~71_combout\,
	datab => \RotateLeft0~141_combout\,
	datac => \RotateLeft0~142_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \RotateLeft0~143_combout\);

-- Location: LCCOMB_X90_Y59_N22
\Mux19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\ & (!\opcode[3]~input_o\)) # (!\A[16]~input_o\ & ((\opcode[0]~input_o\))))) # (!\B[16]~input_o\ & ((\opcode[0]~input_o\ & ((\A[16]~input_o\))) # (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & 
-- !\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \B[16]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X90_Y63_N26
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & (\RotateRight0~24_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftRight1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~24_combout\,
	datab => \Mux20~4_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight1~11_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X90_Y61_N4
\Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux31~4_combout\ & (\Mux31~5_combout\)) # (!\Mux31~4_combout\ & ((\Mux31~5_combout\ & ((\A[17]~input_o\) # (\B[17]~input_o\))) # (!\Mux31~5_combout\ & (\A[17]~input_o\ & \B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux31~5_combout\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X90_Y61_N22
\Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\ShiftRight0~21_combout\ & (!\ShiftLeft0~8_combout\ & (\RotateLeft0~29_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \RotateLeft0~29_combout\,
	datad => \B[1]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X90_Y61_N0
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\opcode[1]~input_o\ & (((!\ShiftLeft0~8_combout\ & !\B[4]~input_o\)) # (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \B[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X90_Y61_N26
\Mux18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[17]~input_o\ & (!\A[17]~input_o\ & \opcode[0]~input_o\)) # (!\B[17]~input_o\ & (\A[17]~input_o\ $ (!\opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X90_Y61_N20
\Mux18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~4_combout\ & ((\Mux18~3_combout\) # ((!\Mux15~2_combout\)))) # (!\Mux18~4_combout\ & (((\ShiftRight0~38_combout\ & \Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \Mux18~4_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X90_Y61_N30
\Mux18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux31~4_combout\ & ((\Mux18~2_combout\ & ((\Mux18~5_combout\))) # (!\Mux18~2_combout\ & (\Add0~34_combout\)))) # (!\Mux31~4_combout\ & (\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux18~2_combout\,
	datac => \Add0~34_combout\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X89_Y64_N24
\Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux31~4_combout\ & (((\Mux31~5_combout\)))) # (!\Mux31~4_combout\ & ((\A[18]~input_o\ & ((\B[18]~input_o\) # (\Mux31~5_combout\))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & \Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X90_Y60_N22
\Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & (\ShiftRight0~21_combout\ & \ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X89_Y64_N10
\Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[18]~input_o\ & !\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \A[18]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X89_Y64_N12
\Mux17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux15~2_combout\ & ((\Mux17~4_combout\ & ((\Mux17~3_combout\))) # (!\Mux17~4_combout\ & (\ShiftRight0~53_combout\)))) # (!\Mux15~2_combout\ & (((\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X89_Y64_N30
\Mux17~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~2_combout\ & ((\Mux17~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux17~2_combout\ & (((\Add0~36_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~5_combout\,
	datab => \Mux17~2_combout\,
	datac => \Add0~36_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X88_Y64_N24
\Mux17~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux15~4_combout\ & (((\RotateLeft0~59_combout\ & \Mux15~3_combout\)))) # (!\Mux15~4_combout\ & ((\Mux17~6_combout\) # ((!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~6_combout\,
	datab => \RotateLeft0~59_combout\,
	datac => \Mux15~4_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X87_Y60_N12
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & (\RotateRight0~77_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~77_combout\,
	datab => \ShiftRight1~34_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X87_Y60_N30
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\ShiftRight0~60_combout\)) # (!\Mux20~4_combout\))) # (!\Mux16~0_combout\ & (\Mux20~4_combout\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~60_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X90_Y60_N16
\Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\ShiftLeft0~4_combout\ & (\RotateLeft0~75_combout\ & (\ShiftRight0~21_combout\ & !\ShiftLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \RotateLeft0~75_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftLeft0~7_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X92_Y60_N8
\Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[19]~input_o\ & !\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X92_Y60_N10
\Mux16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~4_combout\ & ((\Mux16~3_combout\) # ((!\Mux15~2_combout\)))) # (!\Mux16~4_combout\ & (((\ShiftRight0~57_combout\ & \Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \ShiftRight0~57_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X89_Y60_N10
\Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\B[20]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[20]~input_o\)))) # (!\B[20]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \A[20]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X89_Y60_N4
\Mux15~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[20]~input_o\ & (!\A[20]~input_o\ & \opcode[0]~input_o\)) # (!\B[20]~input_o\ & (\A[20]~input_o\ $ (!\opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X89_Y60_N30
\Mux15~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\Mux15~9_combout\ & (((\Mux15~15_combout\) # (!\Mux15~2_combout\)))) # (!\Mux15~9_combout\ & (!\ShiftRight0~96_combout\ & ((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~96_combout\,
	datab => \Mux15~9_combout\,
	datac => \Mux15~15_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X89_Y60_N8
\Mux15~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\Mux15~8_combout\ & (((\Mux15~10_combout\)) # (!\Mux31~4_combout\))) # (!\Mux15~8_combout\ & (\Mux31~4_combout\ & ((\Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux15~10_combout\,
	datad => \Add0~40_combout\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X88_Y62_N12
\Mux15~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (\Mux15~3_combout\ & ((\Mux15~4_combout\ & (\RotateLeft0~86_combout\)) # (!\Mux15~4_combout\ & ((\Mux15~11_combout\))))) # (!\Mux15~3_combout\ & (((!\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \RotateLeft0~86_combout\,
	datac => \Mux15~11_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X93_Y62_N24
\Mux14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[21]~input_o\ & !\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \A[21]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X93_Y62_N26
\Mux14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux15~2_combout\ & ((\Mux14~5_combout\ & ((\Mux14~11_combout\))) # (!\Mux14~5_combout\ & (\ShiftRight0~97_combout\)))) # (!\Mux15~2_combout\ & (((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~97_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux14~11_combout\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X91_Y61_N8
\Mux13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[22]~input_o\ & (\opcode[0]~input_o\ & !\B[22]~input_o\)) # (!\A[22]~input_o\ & (\opcode[0]~input_o\ $ (!\B[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[22]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X91_Y61_N26
\Mux13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux15~2_combout\ & ((\Mux13~5_combout\ & ((\Mux13~11_combout\))) # (!\Mux13~5_combout\ & (\ShiftRight0~98_combout\)))) # (!\Mux15~2_combout\ & (((\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \ShiftRight0~98_combout\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~11_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X91_Y61_N22
\Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\B[23]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[23]~input_o\)))) # (!\B[23]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \Mux31~5_combout\,
	datad => \A[23]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X91_Y61_N16
\Mux12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[23]~input_o\ $ (\A[23]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[23]~input_o\ & !\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X91_Y61_N18
\Mux12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux15~2_combout\ & ((\Mux12~5_combout\ & ((\Mux12~11_combout\))) # (!\Mux12~5_combout\ & (\ShiftRight0~71_combout\)))) # (!\Mux15~2_combout\ & (((\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \Mux12~11_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X91_Y61_N4
\Mux12~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~4_combout\ & ((\Mux12~6_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux12~4_combout\ & (((\Add0~46_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux12~6_combout\,
	datac => \Add0~46_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X91_Y64_N10
\Mux12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux15~4_combout\ & (((\RotateLeft0~103_combout\ & \Mux15~3_combout\)))) # (!\Mux15~4_combout\ & ((\Mux12~7_combout\) # ((!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \Mux15~4_combout\,
	datac => \RotateLeft0~103_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X88_Y60_N28
\Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & (\RotateRight0~58_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftRight1~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \RotateRight0~58_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight1~27_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X88_Y60_N14
\Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux20~4_combout\ & ((\Mux11~2_combout\ & ((\ShiftRight0~76_combout\))) # (!\Mux11~2_combout\ & (\A[31]~input_o\)))) # (!\Mux20~4_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight0~76_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X91_Y61_N24
\Mux11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[24]~input_o\ & (\opcode[0]~input_o\ & !\A[24]~input_o\)) # (!\B[24]~input_o\ & (\opcode[0]~input_o\ $ (!\A[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[24]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X91_Y61_N10
\Mux11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux15~2_combout\ & ((\Mux11~5_combout\ & ((\Mux11~11_combout\))) # (!\Mux11~5_combout\ & (\ShiftRight0~74_combout\)))) # (!\Mux15~2_combout\ & (\Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux11~5_combout\,
	datac => \ShiftRight0~74_combout\,
	datad => \Mux11~11_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X90_Y64_N18
\Mux10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\A[25]~input_o\ & !\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X90_Y64_N12
\Mux10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux15~2_combout\ & ((\Mux10~5_combout\ & (\Mux10~11_combout\)) # (!\Mux10~5_combout\ & ((\ShiftRight0~77_combout\))))) # (!\Mux15~2_combout\ & (((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux10~11_combout\,
	datac => \ShiftRight0~77_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X90_Y61_N8
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux31~4_combout\ & (\Mux31~5_combout\)) # (!\Mux31~4_combout\ & ((\Mux31~5_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # (!\Mux31~5_combout\ & (\A[26]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux31~5_combout\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X90_Y60_N18
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~116_combout\) # ((\ShiftRight0~17_combout\ & \ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \RotateLeft0~116_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X90_Y61_N18
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\A[26]~input_o\ & !\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \A[26]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X90_Y61_N28
\Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & ((\Mux9~3_combout\) # ((!\Mux15~2_combout\)))) # (!\Mux9~4_combout\ & (((\Mux15~2_combout\ & \ShiftRight0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux15~2_combout\,
	datad => \ShiftRight0~80_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X90_Y61_N6
\Mux9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux31~4_combout\ & ((\Mux9~2_combout\ & (\Mux9~5_combout\)) # (!\Mux9~2_combout\ & ((\Add0~52_combout\))))) # (!\Mux31~4_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux9~5_combout\,
	datac => \Mux9~2_combout\,
	datad => \Add0~52_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X88_Y64_N26
\Mux9~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~118_combout\ & ((\Mux15~3_combout\)))) # (!\Mux15~4_combout\ & (((\Mux9~6_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~118_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mux15~4_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X89_Y61_N26
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\B[27]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[27]~input_o\)))) # (!\B[27]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \A[27]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X89_Y61_N12
\Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~121_combout\) # ((\RotateLeft0~75_combout\ & \ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~75_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \RotateLeft0~121_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X89_Y61_N22
\Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[27]~input_o\ & (\opcode[0]~input_o\ & !\A[27]~input_o\)) # (!\B[27]~input_o\ & (\opcode[0]~input_o\ $ (!\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X89_Y61_N8
\Mux8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & ((\Mux8~3_combout\) # ((!\Mux15~2_combout\)))) # (!\Mux8~4_combout\ & (((\ShiftRight0~83_combout\ & \Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \ShiftRight0~83_combout\,
	datac => \Mux8~4_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X89_Y61_N10
\Mux8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~2_combout\ & ((\Mux8~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux8~2_combout\ & (((\Mux31~4_combout\ & \Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~54_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X89_Y61_N20
\Mux8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~123_combout\ & (\Mux15~3_combout\))) # (!\Mux15~4_combout\ & (((\Mux8~6_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~123_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X88_Y60_N20
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & (\RotateRight0~68_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftRight1~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \RotateRight0~68_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight1~37_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X88_Y61_N22
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\B[28]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[28]~input_o\)))) # (!\B[28]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \A[28]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X88_Y61_N16
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~126_combout\) # ((\ShiftLeft0~13_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~13_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~126_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X88_Y61_N10
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[28]~input_o\ & (!\A[28]~input_o\ & \opcode[0]~input_o\)) # (!\B[28]~input_o\ & (\A[28]~input_o\ $ (!\opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X88_Y61_N28
\Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\Mux7~3_combout\) # (!\Mux15~2_combout\)))) # (!\Mux7~4_combout\ & (\ShiftRight0~86_combout\ & (\Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \ShiftRight0~86_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X88_Y61_N6
\Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux7~2_combout\ & ((\Mux7~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux7~2_combout\ & (((\Add0~56_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~5_combout\,
	datac => \Add0~56_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X91_Y64_N6
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\opcode[0]~input_o\ & ((\RotateRight0~71_combout\) # ((\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (((!\Mux20~4_combout\ & \ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \RotateRight0~71_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~31_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X90_Y62_N24
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A[29]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[29]~input_o\)))) # (!\A[29]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \B[29]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X90_Y62_N26
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~131_combout\) # ((\ShiftLeft0~14_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \RotateLeft0~131_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X90_Y62_N4
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\A[29]~input_o\ & !\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X90_Y62_N30
\Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux15~2_combout\ & ((\Mux6~4_combout\ & (\Mux6~3_combout\)) # (!\Mux6~4_combout\ & ((\ShiftRight0~99_combout\))))) # (!\Mux15~2_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux6~4_combout\,
	datad => \ShiftRight0~99_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X90_Y62_N16
\Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux31~4_combout\ & ((\Mux6~2_combout\ & (\Mux6~5_combout\)) # (!\Mux6~2_combout\ & ((\Add0~58_combout\))))) # (!\Mux31~4_combout\ & (\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux6~5_combout\,
	datad => \Add0~58_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X87_Y63_N6
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & (\RotateRight0~72_combout\)) # (!\opcode[0]~input_o\ & ((\ShiftRight1~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \RotateRight0~72_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight1~33_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X91_Y60_N28
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\A[30]~input_o\ & ((\Mux31~5_combout\) # ((\B[30]~input_o\ & !\Mux31~4_combout\)))) # (!\A[30]~input_o\ & (\Mux31~5_combout\ & ((\B[30]~input_o\) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \Mux31~4_combout\,
	datad => \Mux31~5_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X91_Y60_N14
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~136_combout\) # ((\ShiftLeft0~15_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~15_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~136_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X91_Y60_N24
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[30]~input_o\ & !\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[30]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X91_Y60_N26
\Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux15~2_combout\ & ((\Mux5~4_combout\ & (\Mux5~3_combout\)) # (!\Mux5~4_combout\ & ((\ShiftRight0~100_combout\))))) # (!\Mux15~2_combout\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux5~3_combout\,
	datad => \ShiftRight0~100_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X91_Y60_N4
\Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~2_combout\ & ((\Mux5~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux5~2_combout\ & (((\Mux31~4_combout\ & \Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X87_Y63_N10
\Mux5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux15~3_combout\ & ((\Mux15~4_combout\ & (\RotateLeft0~138_combout\)) # (!\Mux15~4_combout\ & ((\Mux5~6_combout\))))) # (!\Mux15~3_combout\ & (((!\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~138_combout\,
	datab => \Mux15~3_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X91_Y64_N22
\Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\ & ((!\opcode[3]~input_o\))) # (!\A[31]~input_o\ & (\opcode[0]~input_o\)))) # (!\B[31]~input_o\ & ((\opcode[0]~input_o\ & ((\A[31]~input_o\))) # (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & 
-- !\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X89_Y65_N22
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux20~14_combout\ & (!\Mux35~16_combout\ & (!\Mux19~12_combout\ & !\Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~14_combout\,
	datab => \Mux35~16_combout\,
	datac => \Mux19~12_combout\,
	datad => \Mux4~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X88_Y63_N10
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux34~9_combout\ & (!\Mux31~19_combout\ & (!\Mux32~10_combout\ & !\Mux33~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~9_combout\,
	datab => \Mux31~19_combout\,
	datac => \Mux32~10_combout\,
	datad => \Mux33~10_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X88_Y62_N22
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux18~9_combout\ & (!\Mux15~14_combout\ & (!\Mux16~9_combout\ & !\Mux17~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~9_combout\,
	datab => \Mux15~14_combout\,
	datac => \Mux16~9_combout\,
	datad => \Mux17~9_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X90_Y60_N12
\Mux35~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~17_combout\ = (\Mux31~0_combout\ & (\A[31]~input_o\ & ((\ShiftLeft0~7_combout\) # (\ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux35~17_combout\);

-- Location: LCCOMB_X90_Y60_N30
\Mux33~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~11_combout\ = (!\B[3]~input_o\ & (\ShiftRight0~39_combout\ & (!\B[2]~input_o\ & \ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftRight0~39_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux33~11_combout\);

-- Location: LCCOMB_X93_Y62_N12
\ShiftRight0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~97_combout\ = (\ShiftRight1~19_combout\) # ((!\B[2]~input_o\ & (\ShiftRight0~37_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight0~37_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~97_combout\);

-- Location: LCCOMB_X86_Y63_N14
\RotateRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~79_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\ShiftRight0~51_combout\) # (\RotateRight0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \B[3]~input_o\,
	datac => \RotateRight0~31_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~79_combout\);

-- Location: LCCOMB_X90_Y62_N2
\Mux26~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~12_combout\ = (\RotateLeft0~29_combout\ & (!\B[2]~input_o\ & (\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~29_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux26~12_combout\);

-- Location: LCCOMB_X90_Y60_N8
\Mux15~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~15_combout\ = (\ShiftLeft0~13_combout\ & (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux15~15_combout\);

-- Location: LCCOMB_X93_Y62_N14
\Mux14~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\ShiftLeft0~14_combout\ & (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux14~11_combout\);

-- Location: LCCOMB_X90_Y60_N2
\Mux13~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (!\B[3]~input_o\ & (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & \ShiftLeft0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~15_combout\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X90_Y60_N20
\Mux12~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & (\ShiftLeft0~16_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X91_Y61_N6
\Mux11~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & ((\Mux27~3_combout\) # (\RotateLeft0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \RotateLeft0~106_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~7_combout\,
	combout => \Mux11~11_combout\);

-- Location: LCCOMB_X90_Y62_N22
\Mux10~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & ((\RotateLeft0~111_combout\) # (\Mux26~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~111_combout\,
	datab => \Mux26~12_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \Mux10~11_combout\);

-- Location: IOOBUF_X88_Y91_N2
\Z[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~16_combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOOBUF_X92_Y91_N23
\Z[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~9_combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X84_Y91_N2
\Z[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~10_combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\Z[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~10_combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\Z[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~19_combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X77_Y91_N23
\Z[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~9_combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\Z[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~9_combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

-- Location: IOOBUF_X72_Y91_N9
\Z[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~9_combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X117_Y74_N2
\Z[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~10_combout\,
	devoe => ww_devoe,
	o => \Z[8]~output_o\);

-- Location: IOOBUF_X92_Y91_N16
\Z[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~11_combout\,
	devoe => ww_devoe,
	o => \Z[9]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\Z[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~9_combout\,
	devoe => ww_devoe,
	o => \Z[10]~output_o\);

-- Location: IOOBUF_X117_Y79_N2
\Z[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~9_combout\,
	devoe => ww_devoe,
	o => \Z[11]~output_o\);

-- Location: IOOBUF_X75_Y91_N2
\Z[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~9_combout\,
	devoe => ww_devoe,
	o => \Z[12]~output_o\);

-- Location: IOOBUF_X117_Y77_N9
\Z[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~9_combout\,
	devoe => ww_devoe,
	o => \Z[13]~output_o\);

-- Location: IOOBUF_X90_Y91_N16
\Z[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~13_combout\,
	devoe => ww_devoe,
	o => \Z[14]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\Z[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~14_combout\,
	devoe => ww_devoe,
	o => \Z[15]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\Z[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~12_combout\,
	devoe => ww_devoe,
	o => \Z[16]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\Z[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~9_combout\,
	devoe => ww_devoe,
	o => \Z[17]~output_o\);

-- Location: IOOBUF_X77_Y91_N16
\Z[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~9_combout\,
	devoe => ww_devoe,
	o => \Z[18]~output_o\);

-- Location: IOOBUF_X86_Y91_N2
\Z[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
	devoe => ww_devoe,
	o => \Z[19]~output_o\);

-- Location: IOOBUF_X75_Y91_N9
\Z[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~14_combout\,
	devoe => ww_devoe,
	o => \Z[20]~output_o\);

-- Location: IOOBUF_X88_Y91_N9
\Z[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~10_combout\,
	devoe => ww_devoe,
	o => \Z[21]~output_o\);

-- Location: IOOBUF_X117_Y79_N9
\Z[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~10_combout\,
	devoe => ww_devoe,
	o => \Z[22]~output_o\);

-- Location: IOOBUF_X79_Y91_N16
\Z[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~10_combout\,
	devoe => ww_devoe,
	o => \Z[23]~output_o\);

-- Location: IOOBUF_X70_Y91_N9
\Z[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~10_combout\,
	devoe => ww_devoe,
	o => \Z[24]~output_o\);

-- Location: IOOBUF_X90_Y91_N2
\Z[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~10_combout\,
	devoe => ww_devoe,
	o => \Z[25]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\Z[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~9_combout\,
	devoe => ww_devoe,
	o => \Z[26]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\Z[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~9_combout\,
	devoe => ww_devoe,
	o => \Z[27]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\Z[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~9_combout\,
	devoe => ww_devoe,
	o => \Z[28]~output_o\);

-- Location: IOOBUF_X77_Y91_N2
\Z[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~9_combout\,
	devoe => ww_devoe,
	o => \Z[29]~output_o\);

-- Location: IOOBUF_X79_Y91_N9
\Z[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => \Z[30]~output_o\);

-- Location: IOOBUF_X79_Y91_N2
\Z[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Z[31]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\zero~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X90_Y91_N23
\ovfl~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~4_combout\,
	devoe => ww_devoe,
	o => \ovfl~output_o\);

-- Location: IOIBUF_X117_Y60_N1
\opcode[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X92_Y91_N1
\opcode[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X117_Y59_N8
\opcode[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LCCOMB_X89_Y59_N28
\Mux35~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~19_combout\ = (\B[0]~input_o\ & ((\opcode[0]~input_o\) # ((\A[0]~input_o\ & !\opcode[3]~input_o\)))) # (!\B[0]~input_o\ & ((\A[0]~input_o\ & ((\opcode[0]~input_o\))) # (!\A[0]~input_o\ & (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux35~19_combout\);

-- Location: LCCOMB_X89_Y59_N30
\Mux35~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~20_combout\ = (\Mux35~19_combout\ & ((\Add0~0_combout\) # ((!\opcode[0]~input_o\) # (!\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux35~19_combout\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux35~20_combout\);

-- Location: IOIBUF_X90_Y91_N8
\opcode[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: LCCOMB_X89_Y59_N12
\Mux35~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~12_combout\ = (\opcode[1]~input_o\ & ((\Mux35~11_combout\) # ((\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & (((\Mux35~20_combout\ & !\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~11_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux35~20_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux35~12_combout\);

-- Location: IOIBUF_X117_Y60_N15
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X117_Y64_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X86_Y60_N24
\RotateRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~11_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~11_combout\);

-- Location: IOIBUF_X117_Y66_N1
\A[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X117_Y69_N8
\A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X86_Y64_N0
\RotateRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~15_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[14]~input_o\,
	datad => \A[12]~input_o\,
	combout => \RotateRight0~15_combout\);

-- Location: IOIBUF_X117_Y53_N8
\A[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X117_Y65_N1
\A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X117_Y64_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X84_Y62_N20
\ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X85_Y60_N20
\ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\ShiftRight0~28_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \RotateRight0~11_combout\,
	datac => \RotateRight0~15_combout\,
	datad => \ShiftRight0~28_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X86_Y62_N16
\ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \ShiftRight0~17_combout\);

-- Location: IOIBUF_X117_Y58_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X117_Y67_N1
\A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X86_Y64_N10
\ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X86_Y64_N6
\ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~30_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~16_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~30_combout\,
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X85_Y60_N22
\ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\ShiftRight0~27_combout\) # ((\ShiftRight0~29_combout\) # ((\ShiftRight0~17_combout\ & \ShiftRight0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight0~29_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X89_Y59_N0
\Mux35~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\opcode[0]~input_o\ & ((\B[4]~input_o\ & (\ShiftRight0~22_combout\)) # (!\B[4]~input_o\ & ((\ShiftRight0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~22_combout\,
	datab => \opcode[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftRight0~32_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X91_Y63_N0
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X89_Y59_N18
\Mux35~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~7_combout\ = (\Mux35~17_combout\) # ((\opcode[3]~input_o\ & (\Mux35~6_combout\)) # (!\opcode[3]~input_o\ & ((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~17_combout\,
	datab => \Mux35~6_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Add1~0_combout\,
	combout => \Mux35~7_combout\);

-- Location: IOIBUF_X117_Y48_N8
\B[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\B[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\B[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X91_Y61_N0
\ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\B[23]~input_o\) # ((\B[21]~input_o\) # ((\B[24]~input_o\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[21]~input_o\,
	datac => \B[24]~input_o\,
	datad => \B[22]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: IOIBUF_X117_Y44_N1
\B[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X95_Y91_N8
\B[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X117_Y43_N1
\B[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\B[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X91_Y61_N2
\ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\B[27]~input_o\) # ((\B[25]~input_o\) # ((\B[26]~input_o\) # (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X91_Y61_N12
\ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\B[29]~input_o\) # ((\ShiftLeft0~5_combout\) # ((\B[30]~input_o\) # (\ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datac => \B[30]~input_o\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~7_combout\);

-- Location: IOIBUF_X117_Y51_N1
\B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X93_Y62_N18
\ShiftLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\B[9]~input_o\) # ((\B[10]~input_o\) # ((\B[12]~input_o\) # (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: IOIBUF_X117_Y55_N8
\B[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\B[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X117_Y54_N1
\B[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X93_Y62_N30
\ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\B[20]~input_o\) # ((\B[19]~input_o\) # ((\B[17]~input_o\) # (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[19]~input_o\,
	datac => \B[17]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: IOIBUF_X117_Y65_N8
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X117_Y77_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X93_Y62_N0
\ShiftLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\B[8]~input_o\) # ((\B[5]~input_o\) # ((\B[6]~input_o\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X93_Y62_N16
\ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\ShiftLeft0~2_combout\) # ((\ShiftLeft0~1_combout\) # ((\ShiftLeft0~3_combout\) # (\ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X90_Y60_N0
\ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\ShiftLeft0~7_combout\) # (\ShiftLeft0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X89_Y59_N4
\ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (!\ShiftLeft0~8_combout\ & ((\B[4]~input_o\ & (\ShiftRight0~22_combout\)) # (!\B[4]~input_o\ & ((\ShiftRight0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~22_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X89_Y59_N24
\Mux35~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~18_combout\ = (\Mux35~7_combout\) # ((\opcode[3]~input_o\ & (\ShiftRight0~33_combout\ & !\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux35~7_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux35~18_combout\);

-- Location: IOIBUF_X117_Y70_N1
\B[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X117_Y60_N8
\A[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X117_Y67_N8
\A[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X95_Y91_N22
\A[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X117_Y52_N8
\B[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X117_Y54_N8
\A[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\A[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\B[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X117_Y55_N1
\A[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X97_Y91_N8
\A[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\B[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X84_Y91_N8
\A[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X117_Y59_N1
\B[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X117_Y70_N8
\A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X117_Y66_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X99_Y91_N15
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X117_Y57_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X95_Y62_N0
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X95_Y62_N2
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\A[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X95_Y62_N4
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan1~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X95_Y62_N6
\LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan1~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X95_Y62_N8
\LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\LessThan1~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X95_Y62_N10
\LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X95_Y62_N12
\LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan1~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X95_Y62_N14
\LessThan1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\B[7]~input_o\ & (\A[7]~input_o\ & !\LessThan1~13_cout\)) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X95_Y62_N16
\LessThan1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\B[8]~input_o\ & ((!\LessThan1~15_cout\) # (!\A[8]~input_o\))) # (!\B[8]~input_o\ & (!\A[8]~input_o\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X95_Y62_N18
\LessThan1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\B[9]~input_o\ & (\A[9]~input_o\ & !\LessThan1~17_cout\)) # (!\B[9]~input_o\ & ((\A[9]~input_o\) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X95_Y62_N20
\LessThan1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\LessThan1~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X95_Y62_N22
\LessThan1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\A[11]~input_o\ & ((!\LessThan1~21_cout\) # (!\B[11]~input_o\))) # (!\A[11]~input_o\ & (!\B[11]~input_o\ & !\LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X95_Y62_N24
\LessThan1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan1~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X95_Y62_N26
\LessThan1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\B[13]~input_o\ & (\A[13]~input_o\ & !\LessThan1~25_cout\)) # (!\B[13]~input_o\ & ((\A[13]~input_o\) # (!\LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X95_Y62_N28
\LessThan1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\B[14]~input_o\ & ((!\LessThan1~27_cout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X95_Y62_N30
\LessThan1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\B[15]~input_o\ & (\A[15]~input_o\ & !\LessThan1~29_cout\)) # (!\B[15]~input_o\ & ((\A[15]~input_o\) # (!\LessThan1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X95_Y61_N0
\LessThan1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\LessThan1~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X95_Y61_N2
\LessThan1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\A[17]~input_o\ & ((!\LessThan1~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X95_Y61_N4
\LessThan1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\B[18]~input_o\ & ((!\LessThan1~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X95_Y61_N6
\LessThan1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\A[19]~input_o\ & ((!\LessThan1~37_cout\) # (!\B[19]~input_o\))) # (!\A[19]~input_o\ & (!\B[19]~input_o\ & !\LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X95_Y61_N8
\LessThan1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\LessThan1~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X95_Y61_N10
\LessThan1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\LessThan1~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X95_Y61_N12
\LessThan1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\B[22]~input_o\ & ((!\LessThan1~43_cout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & !\LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X95_Y61_N14
\LessThan1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\A[23]~input_o\ & ((!\LessThan1~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\LessThan1~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X95_Y61_N16
\LessThan1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\B[24]~input_o\ & ((!\LessThan1~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X95_Y61_N18
\LessThan1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\A[25]~input_o\ & ((!\LessThan1~49_cout\) # (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X95_Y61_N20
\LessThan1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\B[26]~input_o\ & ((!\LessThan1~51_cout\) # (!\A[26]~input_o\))) # (!\B[26]~input_o\ & (!\A[26]~input_o\ & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X95_Y61_N22
\LessThan1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\A[27]~input_o\ & ((!\LessThan1~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X95_Y61_N24
\LessThan1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\A[28]~input_o\ & (\B[28]~input_o\ & !\LessThan1~55_cout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (!\LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X95_Y61_N26
\LessThan1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\B[29]~input_o\ & (\A[29]~input_o\ & !\LessThan1~57_cout\)) # (!\B[29]~input_o\ & ((\A[29]~input_o\) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X95_Y61_N28
\LessThan1~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\B[30]~input_o\ & ((!\LessThan1~59_cout\) # (!\A[30]~input_o\))) # (!\B[30]~input_o\ & (!\A[30]~input_o\ & !\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X95_Y61_N30
\LessThan1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\B[31]~input_o\ & ((\LessThan1~61_cout\) # (!\A[31]~input_o\))) # (!\B[31]~input_o\ & (\LessThan1~61_cout\ & !\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X89_Y59_N22
\Mux35~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~14_combout\ = (!\opcode[3]~input_o\ & ((\opcode[0]~input_o\ & ((\LessThan1~62_combout\))) # (!\opcode[0]~input_o\ & (\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datab => \LessThan1~62_combout\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux35~14_combout\);

-- Location: IOIBUF_X82_Y91_N1
\A[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X97_Y91_N1
\A[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X85_Y61_N6
\RotateLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~17_combout\ = (\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \RotateLeft0~17_combout\);

-- Location: LCCOMB_X83_Y61_N24
\RotateLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~19_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~17_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~18_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~17_combout\,
	combout => \RotateLeft0~19_combout\);

-- Location: LCCOMB_X84_Y60_N0
\ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X87_Y59_N30
\ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X86_Y61_N24
\RotateLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~20_combout\ = (\RotateLeft0~16_combout\ & ((\ShiftRight0~21_combout\) # ((\RotateLeft0~19_combout\ & \ShiftRight0~10_combout\)))) # (!\RotateLeft0~16_combout\ & (\RotateLeft0~19_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~16_combout\,
	datab => \RotateLeft0~19_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \RotateLeft0~20_combout\);

-- Location: LCCOMB_X85_Y61_N24
\RotateLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~25_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \RotateLeft0~25_combout\);

-- Location: LCCOMB_X84_Y61_N28
\RotateLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~26_combout\ = (\B[0]~input_o\ & (\RotateLeft0~24_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~24_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~25_combout\,
	combout => \RotateLeft0~26_combout\);

-- Location: LCCOMB_X86_Y61_N20
\RotateLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~27_combout\ = (\RotateLeft0~23_combout\) # ((\RotateLeft0~20_combout\) # ((\RotateLeft0~26_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~23_combout\,
	datab => \RotateLeft0~20_combout\,
	datac => \RotateLeft0~26_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \RotateLeft0~27_combout\);

-- Location: LCCOMB_X92_Y60_N16
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\opcode[3]~input_o\ & !\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X90_Y59_N2
\Mux35~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~13_combout\ = (\Mux31~0_combout\ & ((\B[4]~input_o\ & (\RotateLeft0~13_combout\)) # (!\B[4]~input_o\ & ((\RotateLeft0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~13_combout\,
	datab => \RotateLeft0~27_combout\,
	datac => \Mux31~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux35~13_combout\);

-- Location: LCCOMB_X89_Y59_N8
\Mux35~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~15_combout\ = (\Mux35~14_combout\) # (\Mux35~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~14_combout\,
	datad => \Mux35~13_combout\,
	combout => \Mux35~15_combout\);

-- Location: LCCOMB_X89_Y59_N26
\Mux35~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~16_combout\ = (\Mux35~12_combout\ & (((\Mux35~15_combout\) # (!\opcode[2]~input_o\)))) # (!\Mux35~12_combout\ & (\Mux35~18_combout\ & ((\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~12_combout\,
	datab => \Mux35~18_combout\,
	datac => \Mux35~15_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux35~16_combout\);

-- Location: LCCOMB_X90_Y59_N4
\Mux31~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & (((\ShiftLeft0~8_combout\) # (!\opcode[1]~input_o\)) # (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \ShiftLeft0~8_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X90_Y60_N24
\Mux31~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux31~7_combout\) # ((\B[4]~input_o\) # ((\Mux31~8_combout\) # (!\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~7_combout\,
	datab => \B[4]~input_o\,
	datac => \Mux31~8_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X90_Y64_N6
\Mux21~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~14_combout\ = (\Mux31~9_combout\ & (((\opcode[3]~input_o\ & !\opcode[0]~input_o\)) # (!\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux31~9_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux21~14_combout\);

-- Location: IOIBUF_X117_Y56_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X86_Y59_N0
\ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: IOIBUF_X117_Y52_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X86_Y60_N2
\ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X86_Y60_N28
\ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~42_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~23_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X85_Y63_N26
\ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftRight0~41_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight0~43_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X85_Y63_N24
\ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\ShiftRight0~44_combout\) # ((\ShiftRight0~49_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datac => \ShiftRight0~44_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X84_Y62_N28
\RotateLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~46_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~46_combout\);

-- Location: LCCOMB_X84_Y62_N16
\RotateLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~11_combout\);

-- Location: LCCOMB_X84_Y62_N22
\RotateLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~47_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~11_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~46_combout\,
	datac => \RotateLeft0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~47_combout\);

-- Location: LCCOMB_X86_Y62_N2
\RotateLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~44_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~44_combout\);

-- Location: LCCOMB_X86_Y62_N28
\RotateLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~45_combout\ = (\B[0]~input_o\ & (\RotateLeft0~4_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~4_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~44_combout\,
	combout => \RotateLeft0~45_combout\);

-- Location: LCCOMB_X87_Y62_N20
\RotateLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~48_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~45_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~47_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~45_combout\,
	combout => \RotateLeft0~48_combout\);

-- Location: LCCOMB_X86_Y60_N0
\RotateLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \RotateLeft0~7_combout\);

-- Location: LCCOMB_X86_Y62_N24
\RotateLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~40_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~7_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~39_combout\,
	datab => \RotateLeft0~7_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~40_combout\);

-- Location: LCCOMB_X87_Y62_N18
\RotateLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~43_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateLeft0~40_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~42_combout\,
	datab => \RotateLeft0~40_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~43_combout\);

-- Location: LCCOMB_X87_Y62_N22
\RotateLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~49_combout\ = (\RotateLeft0~43_combout\) # ((\RotateLeft0~48_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~48_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~43_combout\,
	combout => \RotateLeft0~49_combout\);

-- Location: LCCOMB_X83_Y61_N0
\RotateLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~31_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~31_combout\);

-- Location: LCCOMB_X83_Y61_N26
\RotateLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~32_combout\ = (\B[0]~input_o\ & (\RotateLeft0~18_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~18_combout\,
	datab => \RotateLeft0~31_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateLeft0~32_combout\);

-- Location: LCCOMB_X87_Y62_N8
\RotateLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~33_combout\ = (\RotateLeft0~30_combout\ & ((\ShiftRight0~21_combout\) # ((\RotateLeft0~32_combout\ & \ShiftRight0~10_combout\)))) # (!\RotateLeft0~30_combout\ & (\RotateLeft0~32_combout\ & ((\ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~30_combout\,
	datab => \RotateLeft0~32_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \RotateLeft0~33_combout\);

-- Location: LCCOMB_X85_Y61_N14
\RotateLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~36_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	combout => \RotateLeft0~36_combout\);

-- Location: LCCOMB_X85_Y61_N0
\RotateLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~37_combout\ = (\B[0]~input_o\ & (\RotateLeft0~25_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \RotateLeft0~25_combout\,
	datac => \RotateLeft0~36_combout\,
	combout => \RotateLeft0~37_combout\);

-- Location: LCCOMB_X86_Y61_N4
\RotateLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~38_combout\ = (\RotateLeft0~35_combout\) # ((\RotateLeft0~33_combout\) # ((\RotateLeft0~37_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~35_combout\,
	datab => \RotateLeft0~33_combout\,
	datac => \RotateLeft0~37_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \RotateLeft0~38_combout\);

-- Location: LCCOMB_X90_Y61_N16
\Mux31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\opcode[3]~input_o\) # ((\opcode[0]~input_o\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X89_Y64_N0
\Mux34~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux31~4_combout\ & (\Mux31~5_combout\)) # (!\Mux31~4_combout\ & ((\Mux31~5_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\Mux31~5_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux31~5_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X86_Y59_N8
\RotateLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~29_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~29_combout\);

-- Location: LCCOMB_X90_Y60_N4
\ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X89_Y64_N2
\Mux34~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\ShiftRight0~21_combout\ & (!\B[1]~input_o\ & (\RotateLeft0~29_combout\ & \ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \B[1]~input_o\,
	datac => \RotateLeft0~29_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X89_Y64_N4
\Mux34~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\A[1]~input_o\ & (\opcode[0]~input_o\ & !\B[1]~input_o\)) # (!\A[1]~input_o\ & (\opcode[0]~input_o\ $ (!\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X93_Y62_N2
\Mux31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\opcode[1]~input_o\ & (((!\ShiftLeft0~7_combout\ & !\ShiftLeft0~4_combout\)) # (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X89_Y64_N14
\Mux34~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux34~4_combout\ & (((\Mux34~3_combout\) # (!\Mux31~6_combout\)))) # (!\Mux34~4_combout\ & (\ShiftRight0~38_combout\ & ((\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \Mux34~3_combout\,
	datac => \Mux34~4_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X92_Y62_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X89_Y64_N16
\Mux34~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\Mux31~4_combout\ & ((\Mux34~2_combout\ & (\Mux34~5_combout\)) # (!\Mux34~2_combout\ & ((\Add0~2_combout\))))) # (!\Mux31~4_combout\ & (\Mux34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux34~2_combout\,
	datac => \Mux34~5_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X89_Y62_N24
\Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\opcode[2]~input_o\ & ((\B[4]~input_o\) # (!\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X90_Y63_N22
\Mux34~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~7_combout\ = (\Mux31~3_combout\ & ((\RotateLeft0~38_combout\) # ((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (((\Mux34~6_combout\ & !\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \RotateLeft0~38_combout\,
	datac => \Mux34~6_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux34~7_combout\);

-- Location: LCCOMB_X90_Y63_N8
\Mux34~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~8_combout\ = (\Mux34~7_combout\ & (((\RotateLeft0~49_combout\) # (!\Mux31~2_combout\)))) # (!\Mux34~7_combout\ & (\Mux34~1_combout\ & ((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \RotateLeft0~49_combout\,
	datac => \Mux34~7_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux34~8_combout\);

-- Location: LCCOMB_X90_Y63_N10
\Mux34~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = (\Mux21~14_combout\ & ((\Mux34~8_combout\) # ((\ShiftRight0~50_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (\ShiftRight0~50_combout\ & ((!\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \ShiftRight0~50_combout\,
	datac => \Mux34~8_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux34~9_combout\);

-- Location: IOIBUF_X92_Y91_N8
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X86_Y60_N8
\RotateRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~39_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \RotateRight0~39_combout\);

-- Location: LCCOMB_X86_Y60_N10
\RotateRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~40_combout\ = (\B[0]~input_o\ & (\RotateRight0~39_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~39_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~42_combout\,
	combout => \RotateRight0~40_combout\);

-- Location: LCCOMB_X87_Y63_N16
\ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\B[3]~input_o\ & (\RotateRight0~38_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~38_combout\,
	datab => \RotateRight0~40_combout\,
	datac => \B[3]~input_o\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X87_Y63_N26
\ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\B[2]~input_o\ & (\ShiftRight0~54_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight0~56_combout\);

-- Location: IOIBUF_X117_Y74_N8
\A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X86_Y62_N0
\RotateLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~65_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \RotateLeft0~65_combout\);

-- Location: LCCOMB_X86_Y62_N26
\RotateLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~66_combout\ = (\B[0]~input_o\ & (\RotateLeft0~44_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~44_combout\,
	datac => \RotateLeft0~65_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~66_combout\);

-- Location: LCCOMB_X88_Y64_N16
\RotateLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~69_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~66_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~68_combout\,
	datab => \RotateLeft0~66_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~69_combout\);

-- Location: LCCOMB_X92_Y60_N6
\RotateLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~60_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \RotateLeft0~60_combout\);

-- Location: LCCOMB_X86_Y62_N6
\RotateLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~61_combout\ = (\B[0]~input_o\ & (\RotateLeft0~39_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~39_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~60_combout\,
	combout => \RotateLeft0~61_combout\);

-- Location: LCCOMB_X87_Y64_N22
\RotateLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~64_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateLeft0~61_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~63_combout\,
	datab => \RotateLeft0~61_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~64_combout\);

-- Location: LCCOMB_X87_Y64_N8
\RotateLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~70_combout\ = (\RotateLeft0~64_combout\) # ((!\B[2]~input_o\ & \RotateLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \RotateLeft0~69_combout\,
	datac => \RotateLeft0~64_combout\,
	combout => \RotateLeft0~70_combout\);

-- Location: IOIBUF_X117_Y49_N1
\A[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X84_Y61_N14
\RotateRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~17_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \RotateRight0~17_combout\);

-- Location: IOIBUF_X117_Y42_N8
\A[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X84_Y61_N4
\RotateRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~25_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \RotateRight0~25_combout\);

-- Location: LCCOMB_X84_Y61_N6
\RotateRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~26_combout\ = (\B[0]~input_o\ & ((\RotateRight0~25_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~17_combout\,
	datac => \RotateRight0~25_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~26_combout\);

-- Location: LCCOMB_X86_Y63_N24
\ShiftRight1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\RotateRight0~28_combout\ & ((\ShiftRight0~10_combout\) # ((\RotateRight0~26_combout\ & \ShiftRight0~21_combout\)))) # (!\RotateRight0~28_combout\ & (\RotateRight0~26_combout\ & ((\ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~28_combout\,
	datab => \RotateRight0~26_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X87_Y59_N18
\ShiftRight1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X87_Y59_N28
\ShiftRight1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\B[2]~input_o\ & ((\ShiftRight1~13_combout\))) # (!\B[2]~input_o\ & (\RotateRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight1~13_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X87_Y59_N22
\ShiftRight1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\ShiftRight1~12_combout\) # ((\B[3]~input_o\ & \ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~12_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X89_Y63_N0
\Mux33~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux31~1_combout\ & (((\A[31]~input_o\)) # (!\Mux31~0_combout\))) # (!\Mux31~1_combout\ & (\Mux31~0_combout\ & (\ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \ShiftRight1~15_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X91_Y63_N4
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((!\Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X89_Y63_N2
\Mux33~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux33~2_combout\ & ((\RotateRight0~32_combout\) # ((\Mux31~0_combout\)))) # (!\Mux33~2_combout\ & (((\Add1~4_combout\ & !\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~32_combout\,
	datab => \Mux33~2_combout\,
	datac => \Add1~4_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X88_Y63_N0
\Mux33~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (\Mux33~8_combout\ & ((\RotateLeft0~70_combout\) # ((!\Mux31~2_combout\)))) # (!\Mux33~8_combout\ & (((\Mux31~2_combout\ & \Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~8_combout\,
	datab => \RotateLeft0~70_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux33~3_combout\,
	combout => \Mux33~9_combout\);

-- Location: LCCOMB_X88_Y63_N2
\Mux33~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~10_combout\ = (\ShiftRight0~56_combout\ & (((\Mux33~9_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~56_combout\ & (\Mux33~9_combout\ & (\Mux21~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datab => \Mux33~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux33~10_combout\);

-- Location: LCCOMB_X84_Y62_N24
\RotateRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~12_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~12_combout\);

-- Location: LCCOMB_X84_Y62_N0
\RotateRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~33_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~33_combout\);

-- Location: LCCOMB_X84_Y62_N30
\RotateRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~48_combout\ = (\B[0]~input_o\ & (\RotateRight0~12_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~12_combout\,
	datac => \RotateRight0~33_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~48_combout\);

-- Location: LCCOMB_X86_Y64_N24
\RotateRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~35_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~35_combout\);

-- Location: LCCOMB_X86_Y64_N4
\RotateRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~49_combout\ = (\B[0]~input_o\ & (\RotateRight0~16_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~16_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~35_combout\,
	combout => \RotateRight0~49_combout\);

-- Location: LCCOMB_X84_Y60_N20
\ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\B[3]~input_o\ & (\RotateRight0~48_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateRight0~48_combout\,
	datac => \RotateRight0~49_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X87_Y60_N4
\ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\ShiftRight0~58_combout\) # ((\ShiftRight0~59_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~58_combout\,
	datab => \ShiftRight0~59_combout\,
	datac => \B[2]~input_o\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X89_Y61_N18
\Mux32~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[3]~input_o\ & !\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X86_Y59_N16
\RotateLeft0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~75_combout\ = (\RotateLeft0~74_combout\) # ((\RotateLeft0~29_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~74_combout\,
	datac => \RotateLeft0~29_combout\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~75_combout\);

-- Location: LCCOMB_X89_Y61_N6
\Mux32~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~11_combout\ = (!\B[3]~input_o\ & (\ShiftRight0~39_combout\ & (\RotateLeft0~75_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftRight0~39_combout\,
	datac => \RotateLeft0~75_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux32~11_combout\);

-- Location: LCCOMB_X89_Y61_N28
\Mux32~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\Mux32~5_combout\ & (((\Mux32~11_combout\) # (!\Mux31~6_combout\)))) # (!\Mux32~5_combout\ & (\ShiftRight0~57_combout\ & (\Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux32~5_combout\,
	datac => \Mux31~6_combout\,
	datad => \Mux32~11_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X92_Y60_N4
\Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\opcode[1]~input_o\) # (\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[1]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X92_Y60_N24
\Mux32~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\A[3]~input_o\) # (\B[3]~input_o\)))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X92_Y60_N26
\Mux32~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (\Mux31~4_combout\ & ((\Mux32~4_combout\ & ((\Mux32~6_combout\))) # (!\Mux32~4_combout\ & (\Add0~6_combout\)))) # (!\Mux31~4_combout\ & (((\Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux32~6_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux32~4_combout\,
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X87_Y60_N20
\ShiftRight1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = ((\A[31]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\))) # (!\ShiftRight1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \A[31]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X91_Y63_N6
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add1~5\)) # (!\B[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X87_Y60_N0
\Mux32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~34_combout\)) # (!\Mux31~0_combout\ & ((\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \ShiftRight1~34_combout\,
	datac => \Mux31~0_combout\,
	datad => \Add1~6_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X86_Y59_N18
\RotateRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~44_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[1]~input_o\,
	combout => \RotateRight0~44_combout\);

-- Location: LCCOMB_X86_Y59_N20
\RotateRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~45_combout\ = (\RotateRight0~44_combout\) # ((\RotateRight0~13_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~13_combout\,
	datab => \RotateRight0~44_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~45_combout\);

-- Location: LCCOMB_X87_Y60_N6
\RotateRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~77_combout\ = ((\RotateRight0~45_combout\ & (\B[2]~input_o\ & \B[3]~input_o\))) # (!\ShiftRight1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \RotateRight0~45_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateRight0~77_combout\);

-- Location: LCCOMB_X87_Y60_N26
\Mux32~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux31~1_combout\ & ((\Mux32~2_combout\ & ((\RotateRight0~77_combout\))) # (!\Mux32~2_combout\ & (\A[31]~input_o\)))) # (!\Mux31~1_combout\ & (\Mux32~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux32~2_combout\,
	datac => \A[31]~input_o\,
	datad => \RotateRight0~77_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X88_Y62_N0
\Mux32~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Mux31~3_combout\ & (\Mux31~2_combout\)) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & ((\Mux32~3_combout\))) # (!\Mux31~2_combout\ & (\Mux32~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux32~7_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux32~8_combout\);

-- Location: LCCOMB_X89_Y62_N10
\Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\opcode[2]~input_o\ & \opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: IOIBUF_X117_Y62_N8
\A[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X84_Y61_N30
\RotateLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~21_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \RotateLeft0~21_combout\);

-- Location: LCCOMB_X86_Y61_N0
\RotateLeft0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~82_combout\ = (\B[0]~input_o\ & (\RotateLeft0~67_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~67_combout\,
	datab => \RotateLeft0~21_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~82_combout\);

-- Location: LCCOMB_X86_Y64_N16
\RotateLeft0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	combout => \RotateLeft0~0_combout\);

-- Location: LCCOMB_X86_Y62_N14
\RotateLeft0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~81_combout\ = (\B[0]~input_o\ & (\RotateLeft0~65_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~65_combout\,
	datac => \RotateLeft0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~81_combout\);

-- Location: LCCOMB_X85_Y62_N14
\RotateLeft0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~83_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~81_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~82_combout\,
	datac => \RotateLeft0~81_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~83_combout\);

-- Location: LCCOMB_X85_Y62_N24
\RotateLeft0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~84_combout\ = (\RotateLeft0~80_combout\) # ((\RotateLeft0~83_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~80_combout\,
	datab => \RotateLeft0~83_combout\,
	datac => \B[2]~input_o\,
	combout => \RotateLeft0~84_combout\);

-- Location: LCCOMB_X88_Y62_N2
\Mux32~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~9_combout\ = (\Mux32~8_combout\ & (((\RotateLeft0~84_combout\) # (!\Mux31~3_combout\)))) # (!\Mux32~8_combout\ & (\RotateLeft0~77_combout\ & (\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~77_combout\,
	datab => \Mux32~8_combout\,
	datac => \Mux31~3_combout\,
	datad => \RotateLeft0~84_combout\,
	combout => \Mux32~9_combout\);

-- Location: LCCOMB_X88_Y63_N4
\Mux32~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~10_combout\ = (\ShiftRight0~60_combout\ & (((\Mux32~9_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~60_combout\ & (\Mux32~9_combout\ & (\Mux21~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \Mux32~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux32~10_combout\);

-- Location: LCCOMB_X86_Y64_N2
\RotateLeft0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \RotateLeft0~1_combout\);

-- Location: LCCOMB_X86_Y64_N30
\RotateLeft0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~88_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~0_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~1_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~0_combout\,
	combout => \RotateLeft0~88_combout\);

-- Location: LCCOMB_X87_Y61_N2
\RotateLeft0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~90_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~88_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~89_combout\,
	datab => \RotateLeft0~88_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~90_combout\);

-- Location: LCCOMB_X84_Y62_N14
\RotateLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~10_combout\);

-- Location: LCCOMB_X84_Y62_N26
\RotateLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\B[0]~input_o\ & (\RotateLeft0~10_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~10_combout\,
	datac => \RotateLeft0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~12_combout\);

-- Location: LCCOMB_X87_Y61_N8
\RotateLeft0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~87_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateLeft0~5_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~5_combout\,
	datab => \B[2]~input_o\,
	datac => \RotateLeft0~12_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~87_combout\);

-- Location: LCCOMB_X87_Y61_N20
\RotateLeft0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~91_combout\ = (\RotateLeft0~87_combout\) # ((\RotateLeft0~90_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~90_combout\,
	datac => \RotateLeft0~87_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~91_combout\);

-- Location: LCCOMB_X91_Y63_N8
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X86_Y59_N4
\ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~23_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~13_combout\,
	datab => \ShiftRight0~23_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X89_Y60_N14
\RotateRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~78_combout\ = ((\ShiftRight0~24_combout\ & (\B[3]~input_o\ & \B[2]~input_o\))) # (!\ShiftRight0~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~96_combout\,
	datab => \ShiftRight0~24_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~78_combout\);

-- Location: LCCOMB_X89_Y63_N22
\Mux31~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\Mux31~10_combout\ & ((\Mux31~0_combout\) # ((\RotateRight0~78_combout\)))) # (!\Mux31~10_combout\ & (!\Mux31~0_combout\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~10_combout\,
	datab => \Mux31~0_combout\,
	datac => \Add1~8_combout\,
	datad => \RotateRight0~78_combout\,
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X88_Y63_N30
\Mux31~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~18_combout\ = (\Mux31~17_combout\ & (((\RotateLeft0~91_combout\)) # (!\Mux31~2_combout\))) # (!\Mux31~17_combout\ & (\Mux31~2_combout\ & ((\Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~17_combout\,
	datab => \Mux31~2_combout\,
	datac => \RotateLeft0~91_combout\,
	datad => \Mux31~11_combout\,
	combout => \Mux31~18_combout\);

-- Location: LCCOMB_X92_Y60_N2
\ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[5]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X86_Y60_N12
\ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~25_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~14_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~25_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X85_Y60_N14
\ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\B[0]~input_o\ & (\ShiftRight0~28_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftRight0~28_combout\,
	datac => \RotateRight0~15_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X85_Y60_N0
\ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftRight0~63_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight0~26_combout\,
	datac => \ShiftRight0~63_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X84_Y62_N2
\ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\B[0]~input_o\ & (\ShiftRight0~19_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \RotateRight0~12_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X89_Y60_N0
\ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\B[3]~input_o\ & ((\ShiftRight0~20_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~31_combout\,
	datab => \B[3]~input_o\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X89_Y60_N2
\ShiftRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\ShiftRight0~64_combout\) # ((\B[2]~input_o\ & \ShiftRight0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight0~64_combout\,
	datad => \ShiftRight0~65_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X88_Y63_N24
\Mux31~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~19_combout\ = (\Mux31~18_combout\ & ((\Mux21~14_combout\) # ((\ShiftRight0~66_combout\ & !\Mux31~9_combout\)))) # (!\Mux31~18_combout\ & (\ShiftRight0~66_combout\ & ((!\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~18_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux31~19_combout\);

-- Location: LCCOMB_X86_Y60_N6
\ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X85_Y63_N28
\ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~47_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \ShiftRight0~47_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X85_Y63_N6
\ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\B[3]~input_o\ & (\ShiftRight0~46_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X85_Y63_N20
\ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\B[2]~input_o\ & (\ShiftRight0~67_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftRight0~49_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X93_Y62_N28
\Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\A[5]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X92_Y62_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)) # (!\A[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X93_Y62_N4
\Mux30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~2_combout\ & ((\Mux30~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux30~2_combout\ & (((\Mux31~4_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X90_Y60_N10
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\opcode[3]~input_o\ & ((\ShiftLeft0~7_combout\) # ((\ShiftLeft0~4_combout\) # (\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X92_Y63_N8
\RotateRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~19_combout\ = (\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateRight0~19_combout\);

-- Location: LCCOMB_X92_Y63_N20
\ShiftRight1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\B[2]~input_o\ & (((\A[31]~input_o\)))) # (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \RotateRight0~19_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X92_Y63_N30
\ShiftRight1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\ShiftRight1~19_combout\) # ((\ShiftRight1~20_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \ShiftRight1~20_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X92_Y63_N16
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & ((\ShiftRight1~21_combout\))) # (!\Mux31~0_combout\ & (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mux31~1_combout\,
	datac => \ShiftRight1~21_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X86_Y60_N16
\RotateRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~50_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & (\ShiftRight0~42_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \ShiftRight0~42_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \RotateRight0~50_combout\);

-- Location: LCCOMB_X92_Y63_N14
\RotateRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~22_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~22_combout\);

-- Location: LCCOMB_X92_Y63_N0
\RotateRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~23_combout\ = (\RotateRight0~22_combout\) # ((\RotateRight0~19_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~22_combout\,
	datac => \RotateRight0~19_combout\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~23_combout\);

-- Location: LCCOMB_X92_Y63_N10
\RotateRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~51_combout\ = (\ShiftRight1~19_combout\) # ((\RotateRight0~50_combout\) # ((\ShiftRight0~17_combout\ & \RotateRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \RotateRight0~50_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~51_combout\);

-- Location: LCCOMB_X92_Y63_N12
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\RotateRight0~51_combout\) # (!\Mux31~1_combout\)))) # (!\Mux30~0_combout\ & (\A[31]~input_o\ & (\Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \RotateRight0~51_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X89_Y62_N4
\Mux30~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux31~3_combout\ & (\Mux31~2_combout\)) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & ((\Mux30~1_combout\))) # (!\Mux31~2_combout\ & (\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X87_Y62_N0
\RotateLeft0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~92_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~32_combout\) # ((\B[2]~input_o\)))) # (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \RotateLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~32_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~40_combout\,
	combout => \RotateLeft0~92_combout\);

-- Location: LCCOMB_X87_Y62_N10
\RotateLeft0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~93_combout\ = (\B[2]~input_o\ & ((\RotateLeft0~92_combout\ & ((\RotateLeft0~37_combout\))) # (!\RotateLeft0~92_combout\ & (\RotateLeft0~30_combout\)))) # (!\B[2]~input_o\ & (((\RotateLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~30_combout\,
	datab => \RotateLeft0~37_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~92_combout\,
	combout => \RotateLeft0~93_combout\);

-- Location: LCCOMB_X89_Y62_N14
\Mux30~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux30~7_combout\ & ((\RotateLeft0~96_combout\) # ((!\Mux31~3_combout\)))) # (!\Mux30~7_combout\ & (((\RotateLeft0~93_combout\ & \Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~96_combout\,
	datab => \Mux30~7_combout\,
	datac => \RotateLeft0~93_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X88_Y63_N26
\Mux30~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\ShiftRight0~68_combout\ & (((\Mux21~14_combout\ & \Mux30~8_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~68_combout\ & (((\Mux21~14_combout\ & \Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~68_combout\,
	datab => \Mux31~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X86_Y59_N22
\ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X86_Y59_N24
\RotateLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~50_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[1]~input_o\,
	combout => \RotateLeft0~50_combout\);

-- Location: LCCOMB_X86_Y59_N26
\RotateLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~51_combout\ = (\ShiftLeft0~10_combout\) # (\RotateLeft0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftLeft0~10_combout\,
	datad => \RotateLeft0~50_combout\,
	combout => \RotateLeft0~51_combout\);

-- Location: LCCOMB_X87_Y64_N10
\RotateLeft0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~97_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateLeft0~53_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~53_combout\,
	datab => \RotateLeft0~61_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~97_combout\);

-- Location: LCCOMB_X87_Y64_N28
\RotateLeft0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~98_combout\ = (\B[2]~input_o\ & ((\RotateLeft0~97_combout\ & (\RotateLeft0~58_combout\)) # (!\RotateLeft0~97_combout\ & ((\RotateLeft0~51_combout\))))) # (!\B[2]~input_o\ & (((\RotateLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~58_combout\,
	datab => \RotateLeft0~51_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~97_combout\,
	combout => \RotateLeft0~98_combout\);

-- Location: LCCOMB_X91_Y60_N22
\Mux29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[6]~input_o\ & !\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X87_Y59_N0
\ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[30]~input_o\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X91_Y60_N6
\ShiftRight0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~98_combout\ = (\ShiftRight1~22_combout\) # ((\ShiftRight0~51_combout\ & (\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \ShiftRight0~51_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~98_combout\);

-- Location: LCCOMB_X91_Y60_N0
\Mux29~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & ((\Mux29~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux29~4_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Mux29~4_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~98_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X92_Y62_N12
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X91_Y60_N10
\Mux29~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux29~2_combout\ & ((\Mux29~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux29~2_combout\ & (((\Mux31~4_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X88_Y64_N2
\Mux29~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & (\RotateLeft0~98_combout\)) # (!\Mux31~3_combout\ & ((\Mux29~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~98_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X87_Y59_N26
\ShiftRight1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\B[3]~input_o\ & ((\ShiftLeft0~9_combout\ & (\A[31]~input_o\)) # (!\ShiftLeft0~9_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \A[31]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[30]~input_o\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X87_Y59_N12
\ShiftRight1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\ShiftRight1~22_combout\) # (\ShiftRight1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datac => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X89_Y63_N16
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux31~1_combout\ & (((\A[31]~input_o\)) # (!\Mux31~0_combout\))) # (!\Mux31~1_combout\ & (\Mux31~0_combout\ & (\ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \ShiftRight1~24_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X91_Y63_N12
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A[6]~input_o\ & ((!\Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X89_Y63_N10
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\RotateRight0~52_combout\) # ((\Mux31~0_combout\)))) # (!\Mux29~0_combout\ & (((\Add1~12_combout\ & !\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~52_combout\,
	datab => \Mux29~0_combout\,
	datac => \Add1~12_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X88_Y64_N30
\Mux29~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux29~7_combout\ & ((\RotateLeft0~101_combout\) # ((!\Mux31~2_combout\)))) # (!\Mux29~7_combout\ & (((\Mux31~2_combout\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~101_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X84_Y62_N8
\ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X84_Y62_N18
\RotateRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~34_combout\ = (\B[0]~input_o\ & ((\RotateRight0~33_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~45_combout\,
	datac => \RotateRight0~33_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~34_combout\);

-- Location: LCCOMB_X86_Y63_N0
\RotateRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~36_combout\ = (\B[0]~input_o\ & ((\RotateRight0~35_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~47_combout\,
	datab => \RotateRight0~35_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateRight0~36_combout\);

-- Location: LCCOMB_X86_Y63_N26
\ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\B[3]~input_o\ & (\RotateRight0~34_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~34_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateRight0~36_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X87_Y63_N20
\ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\B[2]~input_o\ & (\ShiftRight0~69_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datac => \ShiftRight0~54_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X88_Y63_N28
\Mux29~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux29~8_combout\ & ((\Mux21~14_combout\) # ((!\Mux31~9_combout\ & \ShiftRight0~70_combout\)))) # (!\Mux29~8_combout\ & (!\Mux31~9_combout\ & ((\ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \Mux31~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \ShiftRight0~70_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X87_Y59_N8
\ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\B[0]~input_o\) # ((\B[1]~input_o\) # (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X87_Y60_N22
\ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\ShiftRight1~25_combout\) # ((\B[3]~input_o\ & (\A[31]~input_o\ & !\ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \B[3]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftLeft0~9_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X89_Y62_N22
\Mux28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\opcode[1]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))) # (!\opcode[0]~input_o\ & (!\A[7]~input_o\ & !\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X89_Y62_N16
\Mux28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & ((\Mux28~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux28~4_combout\ & (((\ShiftRight0~71_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X89_Y62_N26
\Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\A[7]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[7]~input_o\)))) # (!\A[7]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \Mux31~5_combout\,
	datad => \B[7]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X89_Y62_N2
\Mux28~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux28~2_combout\ & (((\Mux28~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux28~2_combout\ & (\Add0~14_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Mux28~5_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X86_Y60_N18
\RotateRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~54_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & (\RotateRight0~14_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~14_combout\,
	datab => \RotateRight0~39_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateRight0~54_combout\);

-- Location: LCCOMB_X87_Y60_N2
\RotateRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~55_combout\ = (\ShiftRight1~25_combout\) # ((\RotateRight0~54_combout\) # ((\RotateRight0~45_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \RotateRight0~45_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \RotateRight0~54_combout\,
	combout => \RotateRight0~55_combout\);

-- Location: LCCOMB_X87_Y60_N14
\ShiftRight1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\ShiftRight1~25_combout\) # ((\B[3]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \B[3]~input_o\,
	datac => \A[31]~input_o\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X91_Y63_N14
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (!\Add1~13\)) # (!\A[7]~input_o\ & ((\Add1~13\) # (GND))))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & (\Add1~13\ & VCC)) # (!\A[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\B[7]~input_o\ & ((!\Add1~13\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (!\A[7]~input_o\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X87_Y60_N16
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~26_combout\)) # (!\Mux31~0_combout\ & ((\Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \ShiftRight1~26_combout\,
	datac => \Mux31~0_combout\,
	datad => \Add1~14_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X87_Y60_N28
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux31~1_combout\ & ((\Mux28~0_combout\ & (\RotateRight0~55_combout\)) # (!\Mux28~0_combout\ & ((\A[31]~input_o\))))) # (!\Mux31~1_combout\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \RotateRight0~55_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X89_Y62_N20
\Mux28~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux31~3_combout\ & (((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & ((\Mux28~1_combout\))) # (!\Mux31~2_combout\ & (\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X86_Y64_N28
\RotateLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~62_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[14]~input_o\,
	datad => \A[12]~input_o\,
	combout => \RotateLeft0~62_combout\);

-- Location: LCCOMB_X84_Y62_N12
\RotateLeft0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~79_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~62_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~10_combout\,
	datac => \RotateLeft0~62_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~79_combout\);

-- Location: LCCOMB_X85_Y62_N30
\RotateLeft0~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~104_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~79_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~71_combout\,
	datab => \B[3]~input_o\,
	datad => \RotateLeft0~79_combout\,
	combout => \RotateLeft0~104_combout\);

-- Location: LCCOMB_X85_Y62_N8
\RotateLeft0~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~105_combout\ = (\B[2]~input_o\ & (\RotateLeft0~83_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \RotateLeft0~83_combout\,
	datac => \RotateLeft0~104_combout\,
	combout => \RotateLeft0~105_combout\);

-- Location: LCCOMB_X89_Y62_N6
\Mux28~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux28~7_combout\ & (((\RotateLeft0~105_combout\) # (!\Mux31~3_combout\)))) # (!\Mux28~7_combout\ & (\RotateLeft0~103_combout\ & ((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~103_combout\,
	datab => \Mux28~7_combout\,
	datac => \RotateLeft0~105_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X86_Y64_N18
\RotateRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~37_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[13]~input_o\,
	combout => \RotateRight0~37_combout\);

-- Location: LCCOMB_X85_Y60_N10
\RotateRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~46_combout\ = (\B[0]~input_o\ & (\RotateRight0~15_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~15_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~37_combout\,
	combout => \RotateRight0~46_combout\);

-- Location: LCCOMB_X86_Y60_N20
\ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\B[3]~input_o\ & (\RotateRight0~56_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~56_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateRight0~46_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X87_Y60_N24
\ShiftRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\B[2]~input_o\ & ((\ShiftRight0~72_combout\))) # (!\B[2]~input_o\ & (\ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~59_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftRight0~72_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X88_Y63_N6
\Mux28~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~8_combout\ & ((\Mux21~14_combout\) # ((\ShiftRight0~73_combout\ & !\Mux31~9_combout\)))) # (!\Mux28~8_combout\ & (\ShiftRight0~73_combout\ & ((!\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \ShiftRight0~73_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux28~9_combout\);

-- Location: IOIBUF_X117_Y61_N1
\A[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X84_Y61_N16
\ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X84_Y61_N18
\RotateRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \RotateRight0~8_combout\);

-- Location: LCCOMB_X84_Y61_N12
\ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\B[0]~input_o\ & (\ShiftRight0~11_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~11_combout\,
	datac => \RotateRight0~8_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X85_Y60_N28
\ShiftRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\B[3]~input_o\ & ((\ShiftRight0~61_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight0~61_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X89_Y60_N28
\ShiftRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\B[2]~input_o\ & (\ShiftRight0~75_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight0~75_combout\,
	datad => \ShiftRight0~65_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X91_Y63_N16
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\B[8]~input_o\ $ (\A[8]~input_o\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\B[8]~input_o\ & (\A[8]~input_o\ & !\Add1~15\)) # (!\B[8]~input_o\ & ((\A[8]~input_o\) # (!\Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X85_Y61_N18
\RotateRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~10_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \RotateRight0~10_combout\);

-- Location: LCCOMB_X85_Y61_N8
\ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X85_Y61_N12
\ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\B[0]~input_o\ & ((\ShiftRight0~15_combout\))) # (!\B[0]~input_o\ & (\RotateRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \RotateRight0~10_combout\,
	datac => \ShiftRight0~15_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X87_Y59_N2
\RotateRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateRight0~9_combout\);

-- Location: LCCOMB_X87_Y59_N16
\ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[29]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X87_Y59_N20
\ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\ShiftRight0~13_combout\) # ((\RotateRight0~9_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~9_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X85_Y60_N2
\ShiftRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\ShiftRight0~10_combout\ & ((\ShiftRight0~14_combout\) # ((\ShiftRight0~16_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~10_combout\ & (\ShiftRight0~16_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~14_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X88_Y60_N4
\RotateRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~58_combout\ = (\RotateRight0~57_combout\) # ((\ShiftRight0~74_combout\) # ((\ShiftRight0~24_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~57_combout\,
	datab => \ShiftRight0~24_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~74_combout\,
	combout => \RotateRight0~58_combout\);

-- Location: LCCOMB_X88_Y60_N22
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\RotateRight0~58_combout\) # (\Mux31~0_combout\)))) # (!\Mux27~0_combout\ & (\Add1~16_combout\ & ((!\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Add1~16_combout\,
	datac => \RotateRight0~58_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: IOIBUF_X117_Y69_N1
\B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X88_Y61_N8
\Mux27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[8]~input_o\ & !\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[8]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X86_Y62_N8
\RotateLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\RotateLeft0~6_combout\) # ((\RotateLeft0~7_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~6_combout\,
	datab => \RotateLeft0~7_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~8_combout\);

-- Location: LCCOMB_X86_Y62_N10
\RotateLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~3_combout\);

-- Location: LCCOMB_X86_Y62_N20
\RotateLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~3_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~4_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~3_combout\,
	combout => \RotateLeft0~5_combout\);

-- Location: LCCOMB_X87_Y61_N22
\RotateLeft0~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~106_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~8_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~8_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~5_combout\,
	combout => \RotateLeft0~106_combout\);

-- Location: LCCOMB_X88_Y61_N30
\Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\ShiftRight0~39_combout\ & ((\Mux27~3_combout\) # (\RotateLeft0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datac => \RotateLeft0~106_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X88_Y61_N18
\Mux27~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux31~6_combout\ & ((\Mux27~5_combout\ & ((\Mux27~4_combout\))) # (!\Mux27~5_combout\ & (\ShiftRight0~74_combout\)))) # (!\Mux31~6_combout\ & (((\Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datab => \ShiftRight0~74_combout\,
	datac => \Mux27~5_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X88_Y61_N26
\Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\A[8]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \B[8]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X88_Y61_N20
\Mux27~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~2_combout\ & (((\Mux27~6_combout\) # (!\Mux31~4_combout\)))) # (!\Mux27~2_combout\ & (\Add0~16_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X89_Y62_N8
\Mux27~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & (\RotateLeft0~108_combout\)) # (!\Mux31~3_combout\ & ((\Mux27~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~108_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux27~7_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X88_Y63_N8
\Mux27~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux31~2_combout\ & ((\Mux27~8_combout\ & (\RotateLeft0~110_combout\)) # (!\Mux27~8_combout\ & ((\Mux27~1_combout\))))) # (!\Mux31~2_combout\ & (((\Mux27~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~110_combout\,
	datab => \Mux27~1_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux27~8_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X88_Y63_N18
\Mux27~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\ShiftRight0~76_combout\ & (((\Mux27~9_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~76_combout\ & (\Mux27~9_combout\ & (\Mux21~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~76_combout\,
	datab => \Mux27~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X85_Y61_N10
\RotateRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~18_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \RotateRight0~18_combout\);

-- Location: LCCOMB_X85_Y61_N20
\ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\B[0]~input_o\ & ((\RotateRight0~18_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~18_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X85_Y61_N22
\ShiftRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\B[3]~input_o\ & ((\ShiftRight0~35_combout\))) # (!\B[3]~input_o\ & (\ShiftRight0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight0~35_combout\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X85_Y63_N4
\ShiftRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\B[2]~input_o\ & ((\ShiftRight0~78_combout\))) # (!\B[2]~input_o\ & (\ShiftRight0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \ShiftRight0~78_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X84_Y61_N2
\RotateLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~34_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \RotateLeft0~34_combout\);

-- Location: LCCOMB_X86_Y61_N2
\RotateLeft0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~94_combout\ = (\B[0]~input_o\ & (\RotateLeft0~22_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~22_combout\,
	datab => \RotateLeft0~34_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~94_combout\);

-- Location: LCCOMB_X87_Y62_N4
\RotateLeft0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~95_combout\ = (\B[3]~input_o\ & (\RotateLeft0~42_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~42_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~94_combout\,
	combout => \RotateLeft0~95_combout\);

-- Location: LCCOMB_X87_Y62_N12
\RotateLeft0~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~115_combout\ = (\B[2]~input_o\ & ((\RotateLeft0~95_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~114_combout\,
	datab => \RotateLeft0~95_combout\,
	datac => \B[2]~input_o\,
	combout => \RotateLeft0~115_combout\);

-- Location: LCCOMB_X90_Y62_N10
\RotateLeft0~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~111_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\RotateLeft0~40_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~45_combout\,
	datab => \B[3]~input_o\,
	datac => \RotateLeft0~40_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~111_combout\);

-- Location: LCCOMB_X90_Y64_N0
\RotateLeft0~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~113_combout\ = (\RotateLeft0~112_combout\) # (\RotateLeft0~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~112_combout\,
	datad => \RotateLeft0~111_combout\,
	combout => \RotateLeft0~113_combout\);

-- Location: LCCOMB_X90_Y64_N28
\Mux26~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~10_combout\ = (\Mux26~9_combout\ & (((\RotateLeft0~115_combout\)) # (!\Mux31~3_combout\))) # (!\Mux26~9_combout\ & (\Mux31~3_combout\ & ((\RotateLeft0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~9_combout\,
	datab => \Mux31~3_combout\,
	datac => \RotateLeft0~115_combout\,
	datad => \RotateLeft0~113_combout\,
	combout => \Mux26~10_combout\);

-- Location: LCCOMB_X90_Y64_N22
\Mux26~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~11_combout\ = (\ShiftRight0~79_combout\ & (((\Mux26~10_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~79_combout\ & (\Mux26~10_combout\ & ((\Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~79_combout\,
	datab => \Mux26~10_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux21~14_combout\,
	combout => \Mux26~11_combout\);

-- Location: LCCOMB_X85_Y61_N16
\RotateLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~58_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~36_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~57_combout\,
	datab => \RotateLeft0~36_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateLeft0~58_combout\);

-- Location: LCCOMB_X88_Y64_N18
\RotateLeft0~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~119_combout\ = (\B[3]~input_o\ & (\RotateLeft0~68_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~68_combout\,
	datab => \RotateLeft0~58_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~119_combout\);

-- Location: LCCOMB_X87_Y64_N6
\RotateLeft0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~99_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~34_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~55_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~34_combout\,
	combout => \RotateLeft0~99_combout\);

-- Location: LCCOMB_X87_Y64_N0
\RotateLeft0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~100_combout\ = (\B[3]~input_o\ & (\RotateLeft0~63_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~63_combout\,
	datab => \B[3]~input_o\,
	datad => \RotateLeft0~99_combout\,
	combout => \RotateLeft0~100_combout\);

-- Location: LCCOMB_X88_Y64_N4
\RotateLeft0~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~120_combout\ = (\B[2]~input_o\ & ((\RotateLeft0~100_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~119_combout\,
	datac => \RotateLeft0~100_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~120_combout\);

-- Location: LCCOMB_X90_Y61_N14
\Mux25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\B[10]~input_o\ & (!\A[10]~input_o\ & \opcode[0]~input_o\)) # (!\B[10]~input_o\ & (\A[10]~input_o\ $ (!\opcode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: IOIBUF_X117_Y50_N8
\A[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X83_Y61_N18
\RotateRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~20_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~20_combout\);

-- Location: LCCOMB_X83_Y61_N14
\RotateRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~30_combout\ = (\RotateRight0~29_combout\) # ((\RotateRight0~20_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~29_combout\,
	datab => \RotateRight0~20_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateRight0~30_combout\);

-- Location: LCCOMB_X90_Y61_N12
\ShiftRight0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\ShiftRight0~21_combout\ & ((\RotateRight0~30_combout\) # ((\ShiftRight0~51_combout\ & \ShiftRight0~10_combout\)))) # (!\ShiftRight0~21_combout\ & (\ShiftRight0~51_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight0~51_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateRight0~30_combout\,
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X90_Y61_N24
\Mux25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~4_combout\ & ((\Mux25~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux25~4_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux25~4_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~80_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X90_Y61_N10
\Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux31~4_combout\ & (((\Mux31~5_combout\)))) # (!\Mux31~4_combout\ & ((\B[10]~input_o\ & ((\A[10]~input_o\) # (\Mux31~5_combout\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & \Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X90_Y61_N2
\Mux25~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~2_combout\ & (((\Mux25~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux25~2_combout\ & (\Add0~20_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Mux25~5_combout\,
	datac => \Mux25~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X87_Y64_N20
\RotateLeft0~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~117_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~53_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~53_combout\,
	datab => \RotateLeft0~51_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~117_combout\);

-- Location: LCCOMB_X87_Y64_N18
\RotateLeft0~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~116_combout\ = (\ShiftRight0~21_combout\ & ((\RotateLeft0~66_combout\) # ((\RotateLeft0~61_combout\ & \ShiftRight0~10_combout\)))) # (!\ShiftRight0~21_combout\ & (\RotateLeft0~61_combout\ & (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \RotateLeft0~61_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateLeft0~66_combout\,
	combout => \RotateLeft0~116_combout\);

-- Location: LCCOMB_X87_Y64_N14
\RotateLeft0~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~118_combout\ = (\RotateLeft0~117_combout\) # (\RotateLeft0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~117_combout\,
	datad => \RotateLeft0~116_combout\,
	combout => \RotateLeft0~118_combout\);

-- Location: LCCOMB_X88_Y64_N8
\Mux25~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux31~2_combout\ & (\Mux31~3_combout\)) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & ((\RotateLeft0~118_combout\))) # (!\Mux31~3_combout\ & (\Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux25~6_combout\,
	datad => \RotateLeft0~118_combout\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X87_Y59_N6
\ShiftRight1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftRight1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X89_Y63_N20
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux31~1_combout\ & (((\A[31]~input_o\)) # (!\Mux31~0_combout\))) # (!\Mux31~1_combout\ & (\Mux31~0_combout\ & (\ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \ShiftRight1~29_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X86_Y59_N12
\RotateRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~31_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~31_combout\);

-- Location: LCCOMB_X86_Y63_N20
\RotateRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~63_combout\ = (\B[3]~input_o\ & (((\RotateRight0~36_combout\)))) # (!\B[3]~input_o\ & ((\ShiftRight0~51_combout\) # ((\RotateRight0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \RotateRight0~31_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateRight0~36_combout\,
	combout => \RotateRight0~63_combout\);

-- Location: LCCOMB_X86_Y63_N2
\RotateRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~62_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateRight0~40_combout\))) # (!\B[3]~input_o\ & (\RotateRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \B[3]~input_o\,
	datac => \RotateRight0~40_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~62_combout\);

-- Location: LCCOMB_X86_Y63_N30
\RotateRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~64_combout\ = (\RotateRight0~62_combout\) # ((\RotateRight0~63_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~63_combout\,
	datac => \RotateRight0~62_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~64_combout\);

-- Location: LCCOMB_X89_Y63_N14
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\RotateRight0~64_combout\) # (\Mux31~0_combout\)))) # (!\Mux25~0_combout\ & (\Add1~20_combout\ & ((!\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Mux25~0_combout\,
	datac => \RotateRight0~64_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X88_Y64_N14
\Mux25~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\Mux31~2_combout\ & ((\Mux25~7_combout\ & (\RotateLeft0~120_combout\)) # (!\Mux25~7_combout\ & ((\Mux25~1_combout\))))) # (!\Mux31~2_combout\ & (((\Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~120_combout\,
	datac => \Mux25~7_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X85_Y61_N4
\RotateRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~28_combout\ = (\B[0]~input_o\ & (\RotateRight0~27_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~27_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateRight0~18_combout\,
	combout => \RotateRight0~28_combout\);

-- Location: LCCOMB_X86_Y63_N8
\ShiftRight0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\B[3]~input_o\ & ((\RotateRight0~28_combout\))) # (!\B[3]~input_o\ & (\RotateRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~34_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateRight0~28_combout\,
	combout => \ShiftRight0~81_combout\);

-- Location: LCCOMB_X87_Y63_N22
\ShiftRight0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\B[2]~input_o\ & ((\ShiftRight0~81_combout\))) # (!\B[2]~input_o\ & (\ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftRight0~81_combout\,
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X88_Y63_N12
\Mux25~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\Mux25~8_combout\ & ((\Mux21~14_combout\) # ((!\Mux31~9_combout\ & \ShiftRight0~82_combout\)))) # (!\Mux25~8_combout\ & (!\Mux31~9_combout\ & ((\ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~8_combout\,
	datab => \Mux31~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \ShiftRight0~82_combout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X84_Y60_N30
\ShiftRight0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateRight0~41_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~41_combout\,
	datab => \RotateRight0~48_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~84_combout\);

-- Location: LCCOMB_X87_Y60_N18
\ShiftRight0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (\ShiftRight0~84_combout\) # ((\ShiftRight0~72_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~72_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftRight0~84_combout\,
	combout => \ShiftRight0~85_combout\);

-- Location: LCCOMB_X85_Y62_N20
\RotateLeft0~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~122_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\RotateLeft0~72_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~72_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~75_combout\,
	combout => \RotateLeft0~122_combout\);

-- Location: LCCOMB_X86_Y62_N4
\RotateLeft0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~78_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~60_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~3_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~60_combout\,
	combout => \RotateLeft0~78_combout\);

-- Location: LCCOMB_X85_Y62_N18
\RotateLeft0~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~121_combout\ = (\ShiftRight0~10_combout\ & ((\RotateLeft0~78_combout\) # ((\RotateLeft0~81_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~10_combout\ & (\RotateLeft0~81_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \RotateLeft0~81_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateLeft0~78_combout\,
	combout => \RotateLeft0~121_combout\);

-- Location: LCCOMB_X89_Y61_N30
\RotateLeft0~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~123_combout\ = (\RotateLeft0~122_combout\) # (\RotateLeft0~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~122_combout\,
	datad => \RotateLeft0~121_combout\,
	combout => \RotateLeft0~123_combout\);

-- Location: LCCOMB_X83_Y61_N22
\RotateRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~43_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[28]~input_o\))) # (!\B[0]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \RotateRight0~43_combout\);

-- Location: LCCOMB_X84_Y60_N6
\ShiftRight1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\RotateRight0~42_combout\) # (\RotateRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~42_combout\,
	datab => \RotateRight0~43_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X88_Y60_N18
\RotateRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~66_combout\ = (\RotateRight0~65_combout\) # ((\ShiftRight1~36_combout\) # ((\ShiftRight0~10_combout\ & \RotateRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~65_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftRight1~36_combout\,
	datad => \RotateRight0~45_combout\,
	combout => \RotateRight0~66_combout\);

-- Location: LCCOMB_X84_Y60_N12
\ShiftRight1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\ShiftRight0~21_combout\ & ((\RotateRight0~42_combout\) # ((\RotateRight0~43_combout\)))) # (!\ShiftRight0~21_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~42_combout\,
	datab => \RotateRight0~43_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X88_Y60_N8
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & ((\ShiftRight1~30_combout\))) # (!\Mux31~0_combout\ & (\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Mux31~1_combout\,
	datac => \ShiftRight1~30_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X88_Y60_N12
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & (((\RotateRight0~66_combout\) # (!\Mux31~1_combout\)))) # (!\Mux24~0_combout\ & (\A[31]~input_o\ & ((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \RotateRight0~66_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X89_Y61_N2
\Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftRight0~39_combout\ & ((\RotateLeft0~121_combout\) # ((\RotateLeft0~75_combout\ & \ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~75_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~39_combout\,
	datad => \RotateLeft0~121_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X86_Y59_N14
\ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X89_Y61_N0
\ShiftRight0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\ShiftRight1~36_combout\) # ((\A[31]~input_o\ & (\ShiftRight0~10_combout\ & \ShiftLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftLeft0~12_combout\,
	datad => \ShiftRight1~36_combout\,
	combout => \ShiftRight0~83_combout\);

-- Location: LCCOMB_X89_Y61_N14
\Mux24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & ((\Mux24~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux24~4_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~83_combout\,
	combout => \Mux24~5_combout\);

-- Location: IOIBUF_X95_Y91_N15
\B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X92_Y62_N22
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\ & (\Add0~21\ & VCC)) # (!\B[11]~input_o\ & (!\Add0~21\)))) # (!\A[11]~input_o\ & ((\B[11]~input_o\ & (!\Add0~21\)) # (!\B[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\A[11]~input_o\ & (!\B[11]~input_o\ & !\Add0~21\)) # (!\A[11]~input_o\ & ((!\Add0~21\) # (!\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X89_Y64_N28
\Mux24~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux24~2_combout\ & ((\Mux24~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux24~2_combout\ & (((\Mux31~4_combout\ & \Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux24~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X89_Y64_N22
\Mux24~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux31~3_combout\ & (\Mux31~2_combout\)) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & (\Mux24~1_combout\)) # (!\Mux31~2_combout\ & ((\Mux24~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~6_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X89_Y61_N16
\Mux24~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux31~3_combout\ & ((\Mux24~7_combout\ & (\RotateLeft0~125_combout\)) # (!\Mux24~7_combout\ & ((\RotateLeft0~123_combout\))))) # (!\Mux31~3_combout\ & (((\Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~125_combout\,
	datab => \Mux31~3_combout\,
	datac => \RotateLeft0~123_combout\,
	datad => \Mux24~7_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X88_Y63_N14
\Mux24~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\ShiftRight0~85_combout\ & (((\Mux24~8_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~85_combout\ & (\Mux24~8_combout\ & (\Mux21~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~85_combout\,
	datab => \Mux24~8_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X88_Y60_N16
\RotateRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~68_combout\ = (\RotateRight0~67_combout\ & (((\ShiftRight0~31_combout\)) # (!\B[2]~input_o\))) # (!\RotateRight0~67_combout\ & (\B[2]~input_o\ & (\ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~67_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight0~24_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \RotateRight0~68_combout\);

-- Location: LCCOMB_X87_Y59_N24
\ShiftRight0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = (\ShiftRight0~21_combout\ & ((\ShiftRight0~13_combout\) # ((\RotateRight0~9_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \RotateRight0~9_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~86_combout\);

-- Location: LCCOMB_X88_Y60_N30
\ShiftRight1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\ShiftRight0~86_combout\) # ((\A[31]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftRight0~86_combout\,
	datac => \B[2]~input_o\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X88_Y60_N6
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & ((\A[31]~input_o\))) # (!\Mux31~1_combout\ & (\ShiftRight1~37_combout\)))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \ShiftRight1~37_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X88_Y60_N2
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\RotateRight0~68_combout\) # (\Mux31~0_combout\)))) # (!\Mux23~0_combout\ & (\Add1~24_combout\ & ((!\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \RotateRight0~68_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X83_Y61_N8
\RotateLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateLeft0~14_combout\);

-- Location: LCCOMB_X83_Y61_N28
\RotateLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~16_combout\ = (\RotateLeft0~14_combout\) # ((\RotateLeft0~15_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~15_combout\,
	datab => \RotateLeft0~14_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateLeft0~16_combout\);

-- Location: LCCOMB_X87_Y61_N26
\RotateLeft0~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~127_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\RotateLeft0~16_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~8_combout\,
	datac => \RotateLeft0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~127_combout\);

-- Location: LCCOMB_X87_Y61_N24
\RotateLeft0~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~126_combout\ = (\ShiftRight0~10_combout\ & ((\RotateLeft0~5_combout\) # ((\RotateLeft0~88_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~10_combout\ & (\RotateLeft0~88_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \RotateLeft0~88_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateLeft0~5_combout\,
	combout => \RotateLeft0~126_combout\);

-- Location: LCCOMB_X87_Y61_N12
\RotateLeft0~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~128_combout\ = (\RotateLeft0~127_combout\) # (\RotateLeft0~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~127_combout\,
	datad => \RotateLeft0~126_combout\,
	combout => \RotateLeft0~128_combout\);

-- Location: LCCOMB_X88_Y62_N8
\Mux23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux31~3_combout\ & (((\RotateLeft0~128_combout\) # (\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (\Mux23~6_combout\ & ((!\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~6_combout\,
	datab => \RotateLeft0~128_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X88_Y62_N10
\Mux23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux23~7_combout\ & ((\RotateLeft0~130_combout\) # ((!\Mux31~2_combout\)))) # (!\Mux23~7_combout\ & (((\Mux23~1_combout\ & \Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~130_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux23~7_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X89_Y60_N16
\ShiftRight0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = (\ShiftRight0~87_combout\) # ((\ShiftRight0~75_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~87_combout\,
	datab => \ShiftRight0~75_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~88_combout\);

-- Location: LCCOMB_X88_Y63_N16
\Mux23~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~8_combout\ & ((\Mux21~14_combout\) # ((\ShiftRight0~88_combout\ & !\Mux31~9_combout\)))) # (!\Mux23~8_combout\ & (\ShiftRight0~88_combout\ & ((!\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~8_combout\,
	datab => \ShiftRight0~88_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X85_Y63_N14
\ShiftRight0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = (\ShiftRight0~89_combout\) # ((\ShiftRight0~78_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~89_combout\,
	datab => \ShiftRight0~78_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~90_combout\);

-- Location: LCCOMB_X86_Y59_N30
\RotateLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~28_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateLeft0~28_combout\);

-- Location: LCCOMB_X86_Y59_N2
\RotateLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~30_combout\ = (\RotateLeft0~28_combout\) # ((\RotateLeft0~29_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~29_combout\,
	datac => \RotateLeft0~28_combout\,
	datad => \B[1]~input_o\,
	combout => \RotateLeft0~30_combout\);

-- Location: LCCOMB_X87_Y62_N24
\RotateLeft0~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~132_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\RotateLeft0~30_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~40_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~30_combout\,
	combout => \RotateLeft0~132_combout\);

-- Location: LCCOMB_X87_Y62_N6
\RotateLeft0~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~131_combout\ = (\RotateLeft0~42_combout\ & ((\ShiftRight0~21_combout\) # ((\RotateLeft0~45_combout\ & \ShiftRight0~10_combout\)))) # (!\RotateLeft0~42_combout\ & (\RotateLeft0~45_combout\ & ((\ShiftRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~42_combout\,
	datab => \RotateLeft0~45_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \RotateLeft0~131_combout\);

-- Location: LCCOMB_X87_Y62_N2
\RotateLeft0~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~133_combout\ = (\RotateLeft0~132_combout\) # (\RotateLeft0~131_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~132_combout\,
	datad => \RotateLeft0~131_combout\,
	combout => \RotateLeft0~133_combout\);

-- Location: LCCOMB_X86_Y64_N26
\ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X85_Y63_N0
\RotateRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~70_combout\ = (\RotateRight0~11_combout\ & ((\B[0]~input_o\ & ((\ShiftRight0~40_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~30_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateRight0~70_combout\);

-- Location: LCCOMB_X85_Y63_N18
\RotateRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~71_combout\ = (\RotateRight0~69_combout\) # ((\RotateRight0~70_combout\) # ((\ShiftRight0~48_combout\ & \ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~69_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \RotateRight0~70_combout\,
	combout => \RotateRight0~71_combout\);

-- Location: LCCOMB_X91_Y63_N26
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\ & (!\Add1~25\)) # (!\A[13]~input_o\ & ((\Add1~25\) # (GND))))) # (!\B[13]~input_o\ & ((\A[13]~input_o\ & (\Add1~25\ & VCC)) # (!\A[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\B[13]~input_o\ & ((!\Add1~25\) # (!\A[13]~input_o\))) # (!\B[13]~input_o\ & (!\A[13]~input_o\ & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X92_Y63_N6
\ShiftRight1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\ShiftRight0~21_combout\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\RotateRight0~19_combout\))))) # (!\ShiftRight0~21_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight0~21_combout\,
	datac => \RotateRight0~19_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X92_Y63_N24
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux31~0_combout\ & (!\Mux31~1_combout\ & ((\ShiftRight1~31_combout\)))) # (!\Mux31~0_combout\ & ((\Mux31~1_combout\) # ((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \Add1~26_combout\,
	datad => \ShiftRight1~31_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X92_Y63_N26
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux31~1_combout\ & ((\Mux22~0_combout\ & ((\RotateRight0~71_combout\))) # (!\Mux22~0_combout\ & (\A[31]~input_o\)))) # (!\Mux31~1_combout\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux31~1_combout\,
	datac => \RotateRight0~71_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X90_Y62_N18
\Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\) # ((!\B[13]~input_o\ & !\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X90_Y62_N0
\ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\B[2]~input_o\ & (\RotateLeft0~29_combout\ & ((!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (((\RotateLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~29_combout\,
	datab => \B[2]~input_o\,
	datac => \RotateLeft0~40_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X90_Y62_N8
\Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\ShiftRight0~39_combout\ & ((\RotateLeft0~131_combout\) # ((\ShiftLeft0~14_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \RotateLeft0~131_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X92_Y63_N18
\ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\B[1]~input_o\ & (\A[31]~input_o\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \RotateRight0~19_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X90_Y62_N28
\ShiftRight0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~99_combout\ = (!\B[3]~input_o\ & (\ShiftRight0~37_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~37_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~99_combout\);

-- Location: LCCOMB_X90_Y62_N20
\Mux22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux31~6_combout\ & ((\Mux22~4_combout\ & (\Mux22~3_combout\)) # (!\Mux22~4_combout\ & ((\ShiftRight0~99_combout\))))) # (!\Mux31~6_combout\ & (\Mux22~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datab => \Mux22~4_combout\,
	datac => \Mux22~3_combout\,
	datad => \ShiftRight0~99_combout\,
	combout => \Mux22~5_combout\);

-- Location: IOIBUF_X117_Y44_N8
\B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X90_Y62_N14
\Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux31~4_combout\ & (\Mux31~5_combout\)) # (!\Mux31~4_combout\ & ((\Mux31~5_combout\ & ((\B[13]~input_o\) # (\A[13]~input_o\))) # (!\Mux31~5_combout\ & (\B[13]~input_o\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux31~5_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X92_Y62_N26
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\ & (\Add0~25\ & VCC)) # (!\A[13]~input_o\ & (!\Add0~25\)))) # (!\B[13]~input_o\ & ((\A[13]~input_o\ & (!\Add0~25\)) # (!\A[13]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\B[13]~input_o\ & (!\A[13]~input_o\ & !\Add0~25\)) # (!\B[13]~input_o\ & ((!\Add0~25\) # (!\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X90_Y62_N6
\Mux22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux31~4_combout\ & ((\Mux22~2_combout\ & (\Mux22~5_combout\)) # (!\Mux22~2_combout\ & ((\Add0~26_combout\))))) # (!\Mux31~4_combout\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux22~5_combout\,
	datac => \Mux22~2_combout\,
	datad => \Add0~26_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X89_Y62_N18
\Mux22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux31~3_combout\ & (\Mux31~2_combout\)) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & (\Mux22~1_combout\)) # (!\Mux31~2_combout\ & ((\Mux22~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X89_Y65_N24
\Mux22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux31~3_combout\ & ((\Mux22~7_combout\ & (\RotateLeft0~135_combout\)) # (!\Mux22~7_combout\ & ((\RotateLeft0~133_combout\))))) # (!\Mux31~3_combout\ & (((\Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~135_combout\,
	datab => \Mux31~3_combout\,
	datac => \RotateLeft0~133_combout\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X89_Y65_N26
\Mux22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\ShiftRight0~90_combout\ & (((\Mux22~8_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~90_combout\ & (\Mux22~8_combout\ & ((\Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~90_combout\,
	datab => \Mux22~8_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux21~14_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X83_Y61_N16
\RotateLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~52_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[30]~input_o\,
	combout => \RotateLeft0~52_combout\);

-- Location: LCCOMB_X83_Y61_N2
\RotateLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~53_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~31_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~52_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~31_combout\,
	combout => \RotateLeft0~53_combout\);

-- Location: LCCOMB_X87_Y64_N30
\RotateLeft0~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~139_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateLeft0~99_combout\)) # (!\B[3]~input_o\ & ((\RotateLeft0~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~99_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~53_combout\,
	combout => \RotateLeft0~139_combout\);

-- Location: LCCOMB_X87_Y63_N24
\RotateLeft0~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~140_combout\ = (\RotateLeft0~139_combout\) # ((\B[2]~input_o\ & \RotateLeft0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \RotateLeft0~139_combout\,
	datad => \RotateLeft0~119_combout\,
	combout => \RotateLeft0~140_combout\);

-- Location: IOIBUF_X117_Y51_N8
\B[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X92_Y60_N0
\Mux21~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux31~4_combout\ & (((\Mux31~5_combout\)))) # (!\Mux31~4_combout\ & ((\B[14]~input_o\ & ((\A[14]~input_o\) # (\Mux31~5_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X86_Y59_N28
\ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\ShiftLeft0~10_combout\) # ((!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \ShiftLeft0~10_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X91_Y60_N18
\ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\B[2]~input_o\ & ((\ShiftLeft0~11_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~61_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X86_Y64_N14
\RotateLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~63_combout\ = (\B[0]~input_o\ & (\RotateLeft0~41_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~41_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~62_combout\,
	combout => \RotateLeft0~63_combout\);

-- Location: LCCOMB_X87_Y64_N24
\RotateLeft0~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~136_combout\ = (\RotateLeft0~66_combout\ & ((\ShiftRight0~10_combout\) # ((\ShiftRight0~21_combout\ & \RotateLeft0~63_combout\)))) # (!\RotateLeft0~66_combout\ & (((\ShiftRight0~21_combout\ & \RotateLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~66_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateLeft0~63_combout\,
	combout => \RotateLeft0~136_combout\);

-- Location: LCCOMB_X91_Y60_N20
\Mux21~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\ShiftRight0~39_combout\ & ((\RotateLeft0~136_combout\) # ((\ShiftLeft0~15_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \ShiftLeft0~15_combout\,
	datac => \B[3]~input_o\,
	datad => \RotateLeft0~136_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X87_Y59_N14
\ShiftRight0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~100_combout\ = (!\B[3]~input_o\ & (\RotateRight0~9_combout\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateRight0~9_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~100_combout\);

-- Location: LCCOMB_X91_Y60_N16
\Mux21~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux21~8_combout\ & ((\Mux21~7_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux21~8_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~8_combout\,
	datab => \Mux21~7_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~100_combout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X91_Y60_N2
\Mux21~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = (\Mux21~6_combout\ & (((\Mux21~9_combout\) # (!\Mux31~4_combout\)))) # (!\Mux21~6_combout\ & (\Add0~28_combout\ & (\Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Mux21~6_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mux21~10_combout\);

-- Location: LCCOMB_X87_Y63_N30
\Mux21~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~11_combout\ = (\Mux31~3_combout\ & ((\RotateLeft0~138_combout\) # ((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (((!\Mux31~2_combout\ & \Mux21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~138_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux21~10_combout\,
	combout => \Mux21~11_combout\);

-- Location: LCCOMB_X87_Y63_N18
\RotateRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~72_combout\ = (\B[2]~input_o\ & (\ShiftRight0~55_combout\)) # (!\B[2]~input_o\ & ((\RotateRight0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~55_combout\,
	datac => \RotateRight0~63_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~72_combout\);

-- Location: LCCOMB_X87_Y63_N8
\Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux31~1_combout\ & (((\A[31]~input_o\) # (!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & (\ShiftRight1~33_combout\ & (\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~33_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~0_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X91_Y63_N28
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\B[14]~input_o\ $ (\A[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\B[14]~input_o\ & (\A[14]~input_o\ & !\Add1~27\)) # (!\B[14]~input_o\ & ((\A[14]~input_o\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X87_Y63_N28
\Mux21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux31~0_combout\ & (((\Mux21~4_combout\)))) # (!\Mux31~0_combout\ & ((\Mux21~4_combout\ & (\RotateRight0~72_combout\)) # (!\Mux21~4_combout\ & ((\Add1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \RotateRight0~72_combout\,
	datac => \Mux21~4_combout\,
	datad => \Add1~28_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X87_Y63_N2
\Mux21~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~12_combout\ = (\Mux31~2_combout\ & ((\Mux21~11_combout\ & (\RotateLeft0~140_combout\)) # (!\Mux21~11_combout\ & ((\Mux21~5_combout\))))) # (!\Mux31~2_combout\ & (((\Mux21~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~140_combout\,
	datac => \Mux21~11_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~12_combout\);

-- Location: LCCOMB_X86_Y63_N18
\ShiftRight0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~91_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\RotateRight0~30_combout\)) # (!\B[3]~input_o\ & ((\RotateRight0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \RotateRight0~26_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~91_combout\);

-- Location: LCCOMB_X87_Y63_N4
\ShiftRight0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~92_combout\ = (\ShiftRight0~91_combout\) # ((\ShiftRight0~81_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~81_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftRight0~91_combout\,
	combout => \ShiftRight0~92_combout\);

-- Location: LCCOMB_X89_Y65_N20
\Mux21~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~13_combout\ = (\Mux21~12_combout\ & ((\Mux21~14_combout\) # ((\ShiftRight0~92_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~12_combout\ & (\ShiftRight0~92_combout\ & (!\Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~12_combout\,
	datab => \ShiftRight0~92_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux21~14_combout\,
	combout => \Mux21~13_combout\);

-- Location: LCCOMB_X87_Y59_N10
\ShiftRight1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (!\B[3]~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X91_Y59_N12
\Mux20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\B[4]~input_o\ & (((\ShiftRight1~32_combout\ & \A[31]~input_o\)))) # (!\B[4]~input_o\ & (\ShiftRight0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~95_combout\,
	datab => \ShiftRight1~32_combout\,
	datac => \B[4]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X91_Y59_N14
\Mux20~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\opcode[3]~input_o\ & (!\ShiftLeft0~8_combout\ & (\opcode[0]~input_o\ & \Mux20~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux20~8_combout\,
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X85_Y62_N26
\ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\RotateLeft0~81_combout\))) # (!\B[2]~input_o\ & (\RotateLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~79_combout\,
	datab => \RotateLeft0~81_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X85_Y62_N4
\ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\B[2]~input_o\ & (\RotateLeft0~75_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~75_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~78_combout\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X89_Y62_N28
\ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\ShiftLeft0~17_combout\) # ((\ShiftLeft0~16_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~17_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X91_Y59_N6
\Mux20~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~16_combout\ = (\opcode[3]~input_o\ & (\ShiftRight0~39_combout\ & (!\opcode[0]~input_o\ & \ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \ShiftRight0~39_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftLeft0~18_combout\,
	combout => \Mux20~16_combout\);

-- Location: LCCOMB_X91_Y59_N16
\Mux20~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = (\Mux20~9_combout\) # ((\Mux20~16_combout\) # ((\Add0~30_combout\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Mux20~9_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux20~16_combout\,
	combout => \Mux20~10_combout\);

-- Location: LCCOMB_X91_Y59_N20
\Mux20~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~12_combout\ = (\opcode[1]~input_o\ & (((\Mux20~10_combout\) # (\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & (\Mux20~11_combout\ & ((!\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Mux20~10_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux20~12_combout\);

-- Location: LCCOMB_X90_Y59_N30
\Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X90_Y59_N24
\Mux35~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~8_combout\ = (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux35~8_combout\);

-- Location: LCCOMB_X90_Y59_N8
\Mux20~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~13_combout\ = (\RotateLeft0~143_combout\ & ((\Mux19~2_combout\) # ((\ShiftLeft0~18_combout\ & \Mux35~8_combout\)))) # (!\RotateLeft0~143_combout\ & (\ShiftLeft0~18_combout\ & ((\Mux35~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~143_combout\,
	datab => \ShiftLeft0~18_combout\,
	datac => \Mux19~2_combout\,
	datad => \Mux35~8_combout\,
	combout => \Mux20~13_combout\);

-- Location: LCCOMB_X86_Y60_N4
\RotateRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~47_combout\ = (\B[0]~input_o\ & (\RotateRight0~14_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~14_combout\,
	datab => \RotateRight0~39_combout\,
	datac => \B[0]~input_o\,
	combout => \RotateRight0~47_combout\);

-- Location: LCCOMB_X85_Y60_N18
\RotateRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~73_combout\ = (\ShiftRight0~10_combout\ & ((\RotateRight0~47_combout\) # ((\RotateRight0~45_combout\ & \ShiftRight0~21_combout\)))) # (!\ShiftRight0~10_combout\ & (\RotateRight0~45_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \RotateRight0~45_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \RotateRight0~47_combout\,
	combout => \RotateRight0~73_combout\);

-- Location: LCCOMB_X85_Y60_N30
\RotateRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~75_combout\ = (\RotateRight0~74_combout\) # ((\RotateRight0~73_combout\) # ((\ShiftRight0~17_combout\ & \RotateRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~74_combout\,
	datab => \RotateRight0~73_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \RotateRight0~49_combout\,
	combout => \RotateRight0~75_combout\);

-- Location: LCCOMB_X91_Y59_N4
\Mux20~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~15_combout\ = (\opcode[0]~input_o\ & (\RotateRight0~75_combout\)) # (!\opcode[0]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \RotateRight0~75_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux20~15_combout\);

-- Location: LCCOMB_X90_Y60_N28
\Mux20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\B[4]~input_o\) # ((!\opcode[0]~input_o\ & ((\ShiftLeft0~4_combout\) # (\ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \opcode[0]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X84_Y60_N14
\RotateRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~53_combout\ = (\RotateRight0~42_combout\) # (\RotateRight0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~42_combout\,
	datac => \RotateRight0~43_combout\,
	combout => \RotateRight0~53_combout\);

-- Location: LCCOMB_X84_Y60_N8
\ShiftRight0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~93_combout\ = (\RotateRight0~41_combout\ & ((\ShiftRight0~17_combout\) # ((\RotateRight0~11_combout\ & \RotateRight0~53_combout\)))) # (!\RotateRight0~41_combout\ & (\RotateRight0~11_combout\ & (\RotateRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~41_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \RotateRight0~53_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~93_combout\);

-- Location: LCCOMB_X84_Y60_N28
\ShiftRight0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~95_combout\ = (\ShiftRight0~94_combout\) # ((\ShiftRight0~93_combout\) # ((\RotateRight0~48_combout\ & \ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~94_combout\,
	datab => \RotateRight0~48_combout\,
	datac => \ShiftRight0~93_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~95_combout\);

-- Location: IOIBUF_X117_Y56_N1
\B[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X91_Y63_N30
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\ & (!\Add1~29\)) # (!\B[15]~input_o\ & (\Add1~29\ & VCC)))) # (!\A[15]~input_o\ & ((\B[15]~input_o\ & ((\Add1~29\) # (GND))) # (!\B[15]~input_o\ & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\A[15]~input_o\ & (\B[15]~input_o\ & !\Add1~29\)) # (!\A[15]~input_o\ & ((\B[15]~input_o\) # (!\Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X91_Y59_N8
\Mux20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\opcode[3]~input_o\ & (!\Mux20~4_combout\ & (\ShiftRight0~95_combout\))) # (!\opcode[3]~input_o\ & (((\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~95_combout\,
	datad => \Add1~30_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X91_Y59_N18
\Mux20~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux20~5_combout\) # ((\opcode[3]~input_o\ & (\Mux20~15_combout\ & \Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux20~15_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X91_Y59_N30
\Mux20~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~14_combout\ = (\opcode[2]~input_o\ & ((\Mux20~12_combout\ & (\Mux20~13_combout\)) # (!\Mux20~12_combout\ & ((\Mux20~7_combout\))))) # (!\opcode[2]~input_o\ & (\Mux20~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux20~12_combout\,
	datac => \Mux20~13_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~14_combout\);

-- Location: IOIBUF_X117_Y48_N1
\A[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X91_Y62_N0
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\B[16]~input_o\ $ (\A[16]~input_o\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\B[16]~input_o\ & (\A[16]~input_o\ & !\Add1~31\)) # (!\B[16]~input_o\ & ((\A[16]~input_o\) # (!\Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X89_Y59_N20
\Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\opcode[3]~input_o\ & (\ShiftRight0~22_combout\ & ((!\Mux20~4_combout\)))) # (!\opcode[3]~input_o\ & (((\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~22_combout\,
	datab => \Add1~32_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X89_Y59_N2
\Mux19~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~13_combout\ = (\opcode[0]~input_o\ & (\ShiftRight0~32_combout\)) # (!\opcode[0]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datac => \A[31]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux19~13_combout\);

-- Location: LCCOMB_X89_Y59_N14
\Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\) # ((\opcode[3]~input_o\ & (\Mux20~4_combout\ & \Mux19~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux19~3_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux19~13_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X86_Y62_N18
\RotateLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\RotateLeft0~8_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~17_combout\ & \RotateLeft0~5_combout\)))) # (!\RotateLeft0~8_combout\ & (\ShiftRight0~17_combout\ & ((\RotateLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateLeft0~5_combout\,
	combout => \RotateLeft0~9_combout\);

-- Location: LCCOMB_X86_Y64_N20
\RotateLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\ShiftRight0~10_combout\ & ((\B[0]~input_o\ & ((\RotateLeft0~0_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \RotateLeft0~1_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateLeft0~0_combout\,
	combout => \RotateLeft0~2_combout\);

-- Location: LCCOMB_X86_Y62_N12
\RotateLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\RotateLeft0~9_combout\) # ((\RotateLeft0~2_combout\) # ((\RotateLeft0~12_combout\ & \ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~12_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \RotateLeft0~2_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \RotateLeft0~13_combout\);

-- Location: LCCOMB_X90_Y59_N18
\Mux19~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~11_combout\ = (\Mux19~2_combout\ & ((\RotateLeft0~27_combout\) # ((\RotateLeft0~13_combout\ & \Mux35~8_combout\)))) # (!\Mux19~2_combout\ & (((\RotateLeft0~13_combout\ & \Mux35~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \RotateLeft0~27_combout\,
	datac => \RotateLeft0~13_combout\,
	datad => \Mux35~8_combout\,
	combout => \Mux19~11_combout\);

-- Location: LCCOMB_X89_Y59_N6
\Mux35~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~9_combout\ = (!\B[3]~input_o\ & (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~9_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \A[0]~input_o\,
	combout => \Mux35~9_combout\);

-- Location: LCCOMB_X92_Y61_N0
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\A[16]~input_o\ $ (\B[16]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\A[16]~input_o\ & ((\B[16]~input_o\) # (!\Add0~31\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X92_Y60_N28
\Mux19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Add0~32_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X90_Y59_N26
\Mux19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~5_combout\) # ((!\ShiftLeft0~8_combout\ & (\Mux35~8_combout\ & \RotateLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \Mux35~8_combout\,
	datac => \RotateLeft0~13_combout\,
	datad => \Mux19~5_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X84_Y60_N18
\ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\ShiftRight0~10_combout\ & ((\B[0]~input_o\ & (\ShiftRight0~11_combout\)) # (!\B[0]~input_o\ & ((\RotateRight0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftRight0~11_combout\,
	datad => \RotateRight0~8_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X89_Y60_N24
\ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\ShiftRight0~18_combout\) # ((\ShiftRight0~12_combout\) # ((\ShiftRight0~21_combout\ & \ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X91_Y59_N24
\Mux19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\opcode[3]~input_o\ & (\ShiftRight0~39_combout\ & (\opcode[0]~input_o\ & \ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \ShiftRight0~39_combout\,
	datac => \opcode[0]~input_o\,
	datad => \ShiftRight0~22_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X90_Y59_N20
\Mux19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux19~6_combout\) # ((\Mux19~7_combout\) # ((\Mux19~2_combout\ & \Mux35~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux35~9_combout\,
	datac => \Mux19~6_combout\,
	datad => \Mux19~7_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X90_Y59_N16
\Mux19~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~10_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & ((\Mux19~8_combout\))) # (!\opcode[1]~input_o\ & (\Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datab => \Mux19~8_combout\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux19~10_combout\);

-- Location: LCCOMB_X90_Y59_N12
\Mux19~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~12_combout\ = (\opcode[2]~input_o\ & ((\Mux19~10_combout\ & ((\Mux19~11_combout\))) # (!\Mux19~10_combout\ & (\Mux19~4_combout\)))) # (!\opcode[2]~input_o\ & (((\Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \Mux19~11_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux19~10_combout\,
	combout => \Mux19~12_combout\);

-- Location: LCCOMB_X90_Y59_N14
\Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux35~8_combout\ & (\opcode[1]~input_o\ & ((\opcode[2]~input_o\) # (!\ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux35~8_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X90_Y63_N4
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\ShiftRight0~50_combout\)) # (!\Mux20~4_combout\))) # (!\Mux18~0_combout\ & (\Mux20~4_combout\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~50_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X91_Y64_N20
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\opcode[2]~input_o\ & ((\opcode[3]~input_o\) # (\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X91_Y64_N18
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ((\opcode[3]~input_o\ & (\opcode[1]~input_o\ & !\opcode[0]~input_o\))) # (!\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X90_Y63_N30
\Mux18~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux15~4_combout\ & (((\RotateLeft0~38_combout\ & \Mux15~3_combout\)))) # (!\Mux15~4_combout\ & ((\Mux18~6_combout\) # ((!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~6_combout\,
	datab => \RotateLeft0~38_combout\,
	datac => \Mux15~4_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X91_Y64_N16
\Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\opcode[1]~input_o\ & \opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X90_Y63_N16
\Mux18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux18~7_combout\ & ((\Add1~34_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux18~7_combout\ & (((\Mux18~1_combout\ & \Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux18~7_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X90_Y63_N2
\Mux18~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~49_combout\)) # (!\Mux15~5_combout\ & ((\Mux18~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~5_combout\,
	datac => \RotateLeft0~49_combout\,
	datad => \Mux18~8_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X86_Y63_N28
\RotateRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~76_combout\ = (!\ShiftRight1~12_combout\ & (((\B[2]~input_o\) # (!\B[3]~input_o\)) # (!\RotateRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight1~12_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \RotateRight0~76_combout\);

-- Location: LCCOMB_X86_Y63_N10
\RotateRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~32_combout\ = ((\RotateRight0~11_combout\ & ((\RotateRight0~31_combout\) # (\ShiftRight0~51_combout\)))) # (!\RotateRight0~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \RotateRight0~76_combout\,
	datac => \RotateRight0~31_combout\,
	datad => \ShiftRight0~51_combout\,
	combout => \RotateRight0~32_combout\);

-- Location: LCCOMB_X89_Y63_N8
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\opcode[0]~input_o\ & ((\RotateRight0~32_combout\) # ((\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (((\ShiftRight1~15_combout\ & !\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \RotateRight0~32_combout\,
	datac => \ShiftRight1~15_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X89_Y63_N18
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\ShiftRight0~56_combout\) # (!\Mux20~4_combout\)))) # (!\Mux17~0_combout\ & (\A[31]~input_o\ & ((\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight0~56_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X91_Y62_N4
\Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\B[18]~input_o\ $ (\A[18]~input_o\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\B[18]~input_o\ & (\A[18]~input_o\ & !\Add1~35\)) # (!\B[18]~input_o\ & ((\A[18]~input_o\) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X88_Y64_N10
\Mux17~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux17~7_combout\ & (((\Add1~36_combout\) # (!\Mux36~0_combout\)))) # (!\Mux17~7_combout\ & (\Mux17~1_combout\ & (\Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~7_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux36~0_combout\,
	datad => \Add1~36_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X88_Y62_N20
\Mux17~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~70_combout\)) # (!\Mux15~5_combout\ & ((\Mux17~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~70_combout\,
	datac => \Mux17~8_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X91_Y62_N6
\Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\ & (!\Add1~37\)) # (!\A[19]~input_o\ & ((\Add1~37\) # (GND))))) # (!\B[19]~input_o\ & ((\A[19]~input_o\ & (\Add1~37\ & VCC)) # (!\A[19]~input_o\ & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\B[19]~input_o\ & ((!\Add1~37\) # (!\A[19]~input_o\))) # (!\B[19]~input_o\ & (!\A[19]~input_o\ & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X92_Y60_N14
\Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux31~5_combout\ & ((\B[19]~input_o\) # ((\Mux31~4_combout\) # (\A[19]~input_o\)))) # (!\Mux31~5_combout\ & (\B[19]~input_o\ & (!\Mux31~4_combout\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B[19]~input_o\,
	datac => \Mux31~4_combout\,
	datad => \A[19]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X92_Y61_N6
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\A[19]~input_o\ & ((\B[19]~input_o\ & (\Add0~37\ & VCC)) # (!\B[19]~input_o\ & (!\Add0~37\)))) # (!\A[19]~input_o\ & ((\B[19]~input_o\ & (!\Add0~37\)) # (!\B[19]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\A[19]~input_o\ & (!\B[19]~input_o\ & !\Add0~37\)) # (!\A[19]~input_o\ & ((!\Add0~37\) # (!\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X92_Y60_N20
\Mux16~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux31~4_combout\ & ((\Mux16~2_combout\ & (\Mux16~5_combout\)) # (!\Mux16~2_combout\ & ((\Add0~38_combout\))))) # (!\Mux31~4_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux16~2_combout\,
	datad => \Add0~38_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X85_Y61_N2
\RotateLeft0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~73_combout\ = (\B[0]~input_o\ & (\RotateLeft0~57_combout\)) # (!\B[0]~input_o\ & ((\RotateLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~57_combout\,
	datac => \B[0]~input_o\,
	datad => \RotateLeft0~17_combout\,
	combout => \RotateLeft0~73_combout\);

-- Location: LCCOMB_X85_Y62_N0
\RotateLeft0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~76_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateLeft0~73_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~75_combout\,
	datab => \RotateLeft0~73_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~76_combout\);

-- Location: LCCOMB_X84_Y61_N8
\RotateLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~55_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \RotateLeft0~55_combout\);

-- Location: LCCOMB_X84_Y61_N10
\RotateLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~71_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~55_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~24_combout\,
	datab => \RotateLeft0~55_combout\,
	datad => \B[0]~input_o\,
	combout => \RotateLeft0~71_combout\);

-- Location: LCCOMB_X85_Y62_N2
\RotateLeft0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~77_combout\ = (\RotateLeft0~76_combout\ & (((\RotateLeft0~71_combout\) # (!\B[2]~input_o\)))) # (!\RotateLeft0~76_combout\ & (\RotateLeft0~72_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~72_combout\,
	datab => \RotateLeft0~76_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~71_combout\,
	combout => \RotateLeft0~77_combout\);

-- Location: LCCOMB_X88_Y62_N14
\Mux16~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux15~3_combout\ & ((\Mux15~4_combout\ & ((\RotateLeft0~77_combout\))) # (!\Mux15~4_combout\ & (\Mux16~6_combout\)))) # (!\Mux15~3_combout\ & (!\Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux16~6_combout\,
	datad => \RotateLeft0~77_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X88_Y62_N16
\Mux16~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux16~7_combout\ & (((\Add1~38_combout\) # (!\Mux36~0_combout\)))) # (!\Mux16~7_combout\ & (\Mux16~1_combout\ & ((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Add1~38_combout\,
	datac => \Mux16~7_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X88_Y62_N26
\Mux16~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~84_combout\))) # (!\Mux15~5_combout\ & (\Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux16~8_combout\,
	datad => \RotateLeft0~84_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X85_Y60_N4
\ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\ShiftRight0~61_combout\ & (!\ShiftRight0~21_combout\ & ((!\ShiftRight0~14_combout\) # (!\ShiftRight0~17_combout\)))) # (!\ShiftRight0~61_combout\ & (((!\ShiftRight0~14_combout\)) # (!\ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~14_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X89_Y60_N26
\ShiftRight0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~96_combout\ = (\ShiftRight0~62_combout\ & (((\B[3]~input_o\) # (!\ShiftRight0~16_combout\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~62_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~96_combout\);

-- Location: LCCOMB_X89_Y60_N20
\ShiftRight1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = ((\A[31]~input_o\ & (\B[3]~input_o\ & \B[2]~input_o\))) # (!\ShiftRight0~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~96_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X89_Y63_N28
\Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\opcode[0]~input_o\ & ((\RotateRight0~78_combout\) # ((\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (((\ShiftRight1~35_combout\ & !\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~78_combout\,
	datab => \ShiftRight1~35_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X89_Y63_N30
\Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux20~4_combout\ & ((\Mux15~6_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux15~6_combout\ & (\A[31]~input_o\)))) # (!\Mux20~4_combout\ & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~66_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X91_Y62_N8
\Add1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\A[20]~input_o\ $ (\B[20]~input_o\ $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\A[20]~input_o\ & ((!\Add1~39\) # (!\B[20]~input_o\))) # (!\A[20]~input_o\ & (!\B[20]~input_o\ & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X88_Y62_N30
\Mux15~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\Mux15~12_combout\ & (((\Add1~40_combout\) # (!\Mux36~0_combout\)))) # (!\Mux15~12_combout\ & (\Mux15~7_combout\ & ((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~12_combout\,
	datab => \Mux15~7_combout\,
	datac => \Add1~40_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux15~13_combout\);

-- Location: LCCOMB_X88_Y62_N24
\Mux15~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~14_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~91_combout\)) # (!\Mux15~5_combout\ & ((\Mux15~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~91_combout\,
	datac => \Mux15~13_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~14_combout\);

-- Location: LCCOMB_X87_Y62_N30
\RotateLeft0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~96_combout\ = (\B[2]~input_o\ & (\RotateLeft0~48_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \RotateLeft0~48_combout\,
	datac => \RotateLeft0~95_combout\,
	combout => \RotateLeft0~96_combout\);

-- Location: LCCOMB_X92_Y61_N10
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\ & (\Add0~41\ & VCC)) # (!\A[21]~input_o\ & (!\Add0~41\)))) # (!\B[21]~input_o\ & ((\A[21]~input_o\ & (!\Add0~41\)) # (!\A[21]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\B[21]~input_o\ & (!\A[21]~input_o\ & !\Add0~41\)) # (!\B[21]~input_o\ & ((!\Add0~41\) # (!\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X93_Y62_N22
\Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\B[21]~input_o\ & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A[21]~input_o\)))) # (!\B[21]~input_o\ & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \Mux31~4_combout\,
	datac => \A[21]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X92_Y60_N22
\Mux14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux31~4_combout\ & ((\Mux14~4_combout\ & (\Mux14~6_combout\)) # (!\Mux14~4_combout\ & ((\Add0~42_combout\))))) # (!\Mux31~4_combout\ & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \Add0~42_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X91_Y64_N14
\Mux14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~93_combout\ & (\Mux15~3_combout\))) # (!\Mux15~4_combout\ & (((\Mux14~7_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~93_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux14~7_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X92_Y63_N28
\Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\opcode[0]~input_o\ & (((\Mux20~4_combout\) # (\RotateRight0~51_combout\)))) # (!\opcode[0]~input_o\ & (\ShiftRight1~21_combout\ & (!\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~21_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux20~4_combout\,
	datad => \RotateRight0~51_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X92_Y63_N22
\Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux20~4_combout\ & ((\Mux14~2_combout\ & (\ShiftRight0~68_combout\)) # (!\Mux14~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux20~4_combout\ & (\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux14~2_combout\,
	datac => \ShiftRight0~68_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X91_Y64_N0
\Mux14~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux14~8_combout\ & ((\Add1~42_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux14~8_combout\ & (((\Mux14~3_combout\ & \Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \Mux14~8_combout\,
	datac => \Mux14~3_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X89_Y65_N6
\Mux14~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~96_combout\)) # (!\Mux15~5_combout\ & ((\Mux14~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datac => \RotateLeft0~96_combout\,
	datad => \Mux14~9_combout\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X89_Y63_N24
\Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\opcode[0]~input_o\ & ((\RotateRight0~52_combout\) # ((\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (((\ShiftRight1~24_combout\ & !\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~52_combout\,
	datab => \ShiftRight1~24_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X89_Y63_N26
\Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux20~4_combout\ & ((\Mux13~2_combout\ & ((\ShiftRight0~70_combout\))) # (!\Mux13~2_combout\ & (\A[31]~input_o\)))) # (!\Mux20~4_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~70_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X91_Y61_N14
\Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\A[22]~input_o\) # (\B[22]~input_o\)))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\A[22]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X92_Y61_N12
\Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\B[22]~input_o\ $ (\A[22]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\B[22]~input_o\ & ((\A[22]~input_o\) # (!\Add0~43\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X91_Y61_N20
\Mux13~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~4_combout\ & ((\Mux13~6_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux13~4_combout\ & (((\Add0~44_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Mux13~4_combout\,
	datac => \Add0~44_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X88_Y64_N20
\Mux13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~98_combout\ & ((\Mux15~3_combout\)))) # (!\Mux15~4_combout\ & (((\Mux13~7_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \RotateLeft0~98_combout\,
	datac => \Mux13~7_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X88_Y64_N6
\Mux13~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux36~0_combout\ & ((\Mux13~8_combout\ & (\Add1~44_combout\)) # (!\Mux13~8_combout\ & ((\Mux13~3_combout\))))) # (!\Mux36~0_combout\ & (((\Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \Mux13~3_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X88_Y64_N12
\RotateLeft0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~101_combout\ = (\B[2]~input_o\ & (\RotateLeft0~69_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~69_combout\,
	datac => \RotateLeft0~100_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~101_combout\);

-- Location: LCCOMB_X88_Y64_N0
\Mux13~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~101_combout\))) # (!\Mux15~5_combout\ & (\Mux13~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~9_combout\,
	datac => \Mux15~5_combout\,
	datad => \RotateLeft0~101_combout\,
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X87_Y60_N8
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\opcode[0]~input_o\ & ((\RotateRight0~55_combout\) # ((\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (((\ShiftRight1~26_combout\ & !\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \RotateRight0~55_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X87_Y60_N10
\Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & ((\ShiftRight0~73_combout\) # ((!\Mux20~4_combout\)))) # (!\Mux12~2_combout\ & (((\A[31]~input_o\ & \Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \Mux12~2_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X91_Y62_N14
\Add1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\ & (!\Add1~45\)) # (!\B[23]~input_o\ & (\Add1~45\ & VCC)))) # (!\A[23]~input_o\ & ((\B[23]~input_o\ & ((\Add1~45\) # (GND))) # (!\B[23]~input_o\ & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\A[23]~input_o\ & (\B[23]~input_o\ & !\Add1~45\)) # (!\A[23]~input_o\ & ((\B[23]~input_o\) # (!\Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X91_Y64_N4
\Mux12~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux12~8_combout\ & (((\Add1~46_combout\) # (!\Mux36~0_combout\)))) # (!\Mux12~8_combout\ & (\Mux12~3_combout\ & ((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~8_combout\,
	datab => \Mux12~3_combout\,
	datac => \Add1~46_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X89_Y62_N30
\Mux12~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~105_combout\)) # (!\Mux15~5_combout\ & ((\Mux12~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datac => \RotateLeft0~105_combout\,
	datad => \Mux12~9_combout\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X87_Y61_N4
\RotateLeft0~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~109_combout\ = (\B[3]~input_o\ & ((\RotateLeft0~12_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~26_combout\,
	datac => \RotateLeft0~12_combout\,
	datad => \B[3]~input_o\,
	combout => \RotateLeft0~109_combout\);

-- Location: LCCOMB_X87_Y61_N6
\RotateLeft0~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~110_combout\ = (\B[2]~input_o\ & (\RotateLeft0~90_combout\)) # (!\B[2]~input_o\ & ((\RotateLeft0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~90_combout\,
	datac => \RotateLeft0~109_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~110_combout\);

-- Location: LCCOMB_X91_Y62_N16
\Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\A[24]~input_o\ $ (\B[24]~input_o\ $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\A[24]~input_o\ & ((!\Add1~47\) # (!\B[24]~input_o\))) # (!\A[24]~input_o\ & (!\B[24]~input_o\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X91_Y61_N30
\Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux31~4_combout\ & (((\Mux31~5_combout\)))) # (!\Mux31~4_combout\ & ((\B[24]~input_o\ & ((\Mux31~5_combout\) # (\A[24]~input_o\))) # (!\B[24]~input_o\ & (\Mux31~5_combout\ & \A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \B[24]~input_o\,
	datac => \Mux31~5_combout\,
	datad => \A[24]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X92_Y61_N16
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\B[24]~input_o\ $ (\A[24]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\B[24]~input_o\ & ((\A[24]~input_o\) # (!\Add0~47\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X91_Y61_N28
\Mux11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux31~4_combout\ & ((\Mux11~4_combout\ & (\Mux11~6_combout\)) # (!\Mux11~4_combout\ & ((\Add0~48_combout\))))) # (!\Mux31~4_combout\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux11~4_combout\,
	datad => \Add0~48_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X87_Y61_N18
\Mux11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~108_combout\ & ((\Mux15~3_combout\)))) # (!\Mux15~4_combout\ & (((\Mux11~7_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~108_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux11~7_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X87_Y61_N28
\Mux11~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux36~0_combout\ & ((\Mux11~8_combout\ & ((\Add1~48_combout\))) # (!\Mux11~8_combout\ & (\Mux11~3_combout\)))) # (!\Mux36~0_combout\ & (((\Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Add1~48_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X87_Y61_N14
\Mux11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~110_combout\)) # (!\Mux15~5_combout\ & ((\Mux11~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~110_combout\,
	datab => \Mux11~9_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux11~10_combout\);

-- Location: LCCOMB_X85_Y63_N16
\RotateRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~60_combout\ = (\ShiftRight0~36_combout\ & ((\ShiftRight0~21_combout\) # ((\ShiftRight0~17_combout\ & \ShiftRight0~43_combout\)))) # (!\ShiftRight0~36_combout\ & (\ShiftRight0~17_combout\ & ((\ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \RotateRight0~60_combout\);

-- Location: LCCOMB_X85_Y63_N2
\RotateRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateRight0~61_combout\ = (\RotateRight0~59_combout\) # ((\RotateRight0~60_combout\) # ((\ShiftRight0~10_combout\ & \RotateRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~59_combout\,
	datab => \RotateRight0~60_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~61_combout\);

-- Location: LCCOMB_X92_Y63_N2
\ShiftRight1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \RotateRight0~19_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X83_Y61_N20
\ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\B[0]~input_o\ & ((\RotateRight0~20_combout\))) # (!\B[0]~input_o\ & (\ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \RotateRight0~20_combout\,
	datac => \B[0]~input_o\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X92_Y63_N4
\ShiftRight1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\ShiftRight1~9_combout\) # ((\ShiftRight0~36_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~9_combout\,
	datac => \ShiftRight0~36_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X90_Y63_N28
\ShiftRight1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftRight1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftRight1~10_combout\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X90_Y63_N20
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\opcode[0]~input_o\ & ((\Mux20~4_combout\) # ((\RotateRight0~61_combout\)))) # (!\opcode[0]~input_o\ & (!\Mux20~4_combout\ & ((\ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mux20~4_combout\,
	datac => \RotateRight0~61_combout\,
	datad => \ShiftRight1~28_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X90_Y63_N14
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux20~4_combout\ & ((\Mux10~2_combout\ & (\ShiftRight0~79_combout\)) # (!\Mux10~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux20~4_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~79_combout\,
	datab => \Mux20~4_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X91_Y62_N18
\Add1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\ & (!\Add1~49\)) # (!\A[25]~input_o\ & ((\Add1~49\) # (GND))))) # (!\B[25]~input_o\ & ((\A[25]~input_o\ & (\Add1~49\ & VCC)) # (!\A[25]~input_o\ & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\B[25]~input_o\ & ((!\Add1~49\) # (!\A[25]~input_o\))) # (!\B[25]~input_o\ & (!\A[25]~input_o\ & !\Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X90_Y64_N8
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\B[25]~input_o\) # (\A[25]~input_o\)))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\B[25]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X92_Y61_N18
\Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\ & (\Add0~49\ & VCC)) # (!\B[25]~input_o\ & (!\Add0~49\)))) # (!\A[25]~input_o\ & ((\B[25]~input_o\ & (!\Add0~49\)) # (!\B[25]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\A[25]~input_o\ & (!\B[25]~input_o\ & !\Add0~49\)) # (!\A[25]~input_o\ & ((!\Add0~49\) # (!\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X90_Y64_N14
\Mux10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~4_combout\ & ((\Mux10~6_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux10~4_combout\ & (((\Mux31~4_combout\ & \Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux10~4_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~50_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X90_Y64_N24
\Mux10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux15~4_combout\ & (\RotateLeft0~113_combout\ & ((\Mux15~3_combout\)))) # (!\Mux15~4_combout\ & (((\Mux10~7_combout\) # (!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \RotateLeft0~113_combout\,
	datac => \Mux10~7_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X90_Y64_N2
\Mux10~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux36~0_combout\ & ((\Mux10~8_combout\ & ((\Add1~50_combout\))) # (!\Mux10~8_combout\ & (\Mux10~3_combout\)))) # (!\Mux36~0_combout\ & (((\Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Mux10~3_combout\,
	datac => \Add1~50_combout\,
	datad => \Mux10~8_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X90_Y64_N20
\Mux10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~115_combout\)) # (!\Mux15~5_combout\ & ((\Mux10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~5_combout\,
	datac => \RotateLeft0~115_combout\,
	datad => \Mux10~9_combout\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X89_Y63_N4
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\opcode[0]~input_o\ & (((\RotateRight0~64_combout\) # (\Mux20~4_combout\)))) # (!\opcode[0]~input_o\ & (\ShiftRight1~29_combout\ & ((!\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftRight1~29_combout\,
	datac => \RotateRight0~64_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X89_Y63_N6
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\ShiftRight0~82_combout\) # (!\Mux20~4_combout\)))) # (!\Mux9~0_combout\ & (\A[31]~input_o\ & ((\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight0~82_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X91_Y62_N20
\Add1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\A[26]~input_o\ $ (\B[26]~input_o\ $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\A[26]~input_o\ & ((!\Add1~51\) # (!\B[26]~input_o\))) # (!\A[26]~input_o\ & (!\B[26]~input_o\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X88_Y64_N28
\Mux9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~7_combout\ & (((\Add1~52_combout\) # (!\Mux36~0_combout\)))) # (!\Mux9~7_combout\ & (\Mux9~1_combout\ & (\Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux36~0_combout\,
	datad => \Add1~52_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X88_Y64_N22
\Mux9~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~120_combout\))) # (!\Mux15~5_combout\ & (\Mux9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux9~8_combout\,
	datac => \RotateLeft0~120_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X85_Y62_N16
\RotateLeft0~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~125_combout\ = (\RotateLeft0~124_combout\) # ((\B[2]~input_o\ & \RotateLeft0~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~124_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~104_combout\,
	combout => \RotateLeft0~125_combout\);

-- Location: LCCOMB_X88_Y60_N0
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux20~4_combout\ & (((\opcode[0]~input_o\)))) # (!\Mux20~4_combout\ & ((\opcode[0]~input_o\ & ((\RotateRight0~66_combout\))) # (!\opcode[0]~input_o\ & (\ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \ShiftRight1~30_combout\,
	datac => \opcode[0]~input_o\,
	datad => \RotateRight0~66_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X88_Y60_N10
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\ShiftRight0~85_combout\) # (!\Mux20~4_combout\)))) # (!\Mux8~0_combout\ & (\A[31]~input_o\ & (\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight0~85_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X91_Y62_N22
\Add1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\ & (!\Add1~53\)) # (!\B[27]~input_o\ & (\Add1~53\ & VCC)))) # (!\A[27]~input_o\ & ((\B[27]~input_o\ & ((\Add1~53\) # (GND))) # (!\B[27]~input_o\ & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\A[27]~input_o\ & (\B[27]~input_o\ & !\Add1~53\)) # (!\A[27]~input_o\ & ((\B[27]~input_o\) # (!\Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X88_Y59_N0
\Mux8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & (((\Add1~54_combout\) # (!\Mux36~0_combout\)))) # (!\Mux8~7_combout\ & (\Mux8~1_combout\ & ((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~7_combout\,
	datab => \Mux8~1_combout\,
	datac => \Add1~54_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X88_Y59_N2
\Mux8~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux15~5_combout\ & (\RotateLeft0~125_combout\)) # (!\Mux15~5_combout\ & ((\Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \RotateLeft0~125_combout\,
	datad => \Mux8~8_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X88_Y62_N18
\Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux15~4_combout\ & (((\RotateLeft0~128_combout\ & \Mux15~3_combout\)))) # (!\Mux15~4_combout\ & ((\Mux7~6_combout\) # ((!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux15~4_combout\,
	datac => \RotateLeft0~128_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X91_Y59_N26
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\ShiftRight0~88_combout\)) # (!\Mux20~4_combout\))) # (!\Mux7~0_combout\ & (\Mux20~4_combout\ & ((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~88_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X88_Y62_N4
\Mux7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\Add1~56_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux7~7_combout\ & (((\Mux7~1_combout\ & \Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Mux7~7_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X86_Y61_N14
\RotateLeft0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~89_combout\ = (\B[0]~input_o\ & ((\RotateLeft0~21_combout\))) # (!\B[0]~input_o\ & (\RotateLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~22_combout\,
	datab => \B[0]~input_o\,
	datad => \RotateLeft0~21_combout\,
	combout => \RotateLeft0~89_combout\);

-- Location: LCCOMB_X87_Y61_N30
\RotateLeft0~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~129_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateLeft0~89_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~19_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~89_combout\,
	combout => \RotateLeft0~129_combout\);

-- Location: LCCOMB_X87_Y61_N0
\RotateLeft0~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~130_combout\ = (\RotateLeft0~129_combout\) # ((\RotateLeft0~109_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~109_combout\,
	datac => \RotateLeft0~129_combout\,
	datad => \B[2]~input_o\,
	combout => \RotateLeft0~130_combout\);

-- Location: LCCOMB_X89_Y65_N8
\Mux7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~130_combout\))) # (!\Mux15~5_combout\ & (\Mux7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux7~8_combout\,
	datac => \RotateLeft0~130_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X91_Y64_N2
\Mux6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux15~4_combout\ & (((\RotateLeft0~133_combout\ & \Mux15~3_combout\)))) # (!\Mux15~4_combout\ & ((\Mux6~6_combout\) # ((!\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux15~4_combout\,
	datac => \RotateLeft0~133_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X91_Y64_N8
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\ShiftRight0~90_combout\) # ((!\Mux20~4_combout\)))) # (!\Mux6~0_combout\ & (((\Mux20~4_combout\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \ShiftRight0~90_combout\,
	datac => \Mux20~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X91_Y64_N12
\Mux6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\Add1~58_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux6~7_combout\ & (((\Mux6~1_combout\ & \Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Mux6~7_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X87_Y62_N28
\RotateLeft0~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~134_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\RotateLeft0~94_combout\))) # (!\B[3]~input_o\ & (\RotateLeft0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \RotateLeft0~32_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~94_combout\,
	combout => \RotateLeft0~134_combout\);

-- Location: LCCOMB_X87_Y62_N14
\RotateLeft0~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RotateLeft0~135_combout\ = (\RotateLeft0~134_combout\) # ((\RotateLeft0~114_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~114_combout\,
	datac => \B[2]~input_o\,
	datad => \RotateLeft0~134_combout\,
	combout => \RotateLeft0~135_combout\);

-- Location: LCCOMB_X89_Y65_N2
\Mux6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~135_combout\))) # (!\Mux15~5_combout\ & (\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux6~8_combout\,
	datad => \RotateLeft0~135_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X87_Y63_N0
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\ShiftRight0~92_combout\) # ((!\Mux20~4_combout\)))) # (!\Mux5~0_combout\ & (((\Mux20~4_combout\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ShiftRight0~92_combout\,
	datac => \Mux20~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X117_Y62_N1
\B[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X91_Y62_N28
\Add1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\B[30]~input_o\ $ (\A[30]~input_o\ $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\B[30]~input_o\ & (\A[30]~input_o\ & !\Add1~59\)) # (!\B[30]~input_o\ & ((\A[30]~input_o\) # (!\Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X87_Y63_N12
\Mux5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & (((\Add1~60_combout\) # (!\Mux36~0_combout\)))) # (!\Mux5~7_combout\ & (\Mux5~1_combout\ & (\Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux36~0_combout\,
	datad => \Add1~60_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X87_Y63_N14
\Mux5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux15~5_combout\ & ((\RotateLeft0~140_combout\))) # (!\Mux15~5_combout\ & (\Mux5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \RotateLeft0~140_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X92_Y61_N30
\Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \A[31]~input_o\ $ (\Add0~61\ $ (\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X91_Y59_N0
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\opcode[0]~input_o\ & (((\ShiftRight1~32_combout\ & \A[31]~input_o\)))) # (!\opcode[0]~input_o\ & (\RotateLeft0~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~143_combout\,
	datab => \ShiftRight1~32_combout\,
	datac => \opcode[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X91_Y59_N2
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\B[4]~input_o\ & (!\opcode[0]~input_o\ & (\ShiftLeft0~18_combout\))) # (!\B[4]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \ShiftLeft0~18_combout\,
	datac => \B[4]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X90_Y59_N0
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\opcode[3]~input_o\ & (!\ShiftLeft0~8_combout\ & ((\Mux4~3_combout\)))) # (!\opcode[3]~input_o\ & (((\Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \Add0~62_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X90_Y59_N10
\Mux4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & ((\Mux4~4_combout\))) # (!\opcode[1]~input_o\ & (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~4_combout\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X90_Y59_N28
\Mux4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux31~0_combout\ & ((\B[4]~input_o\ & ((\ShiftLeft0~18_combout\))) # (!\B[4]~input_o\ & (\RotateLeft0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~143_combout\,
	datab => \ShiftLeft0~18_combout\,
	datac => \Mux31~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X91_Y62_N30
\Add1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \B[31]~input_o\ $ (\Add1~61\ $ (!\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X91_Y59_N28
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\opcode[0]~input_o\ & ((\B[4]~input_o\ & ((\ShiftRight0~95_combout\))) # (!\B[4]~input_o\ & (\RotateRight0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \RotateRight0~75_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftRight0~95_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X91_Y59_N22
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\opcode[3]~input_o\ & ((\Mux20~6_combout\) # ((\Mux4~0_combout\)))) # (!\opcode[3]~input_o\ & (((\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~6_combout\,
	datab => \Add1~62_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X90_Y59_N6
\Mux4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~6_combout\ & ((\Mux4~7_combout\) # ((!\opcode[2]~input_o\)))) # (!\Mux4~6_combout\ & (((\opcode[2]~input_o\ & \Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux4~7_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X89_Y65_N10
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux24~9_combout\ & (!\Mux23~9_combout\ & (!\Mux25~9_combout\ & !\Mux26~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~9_combout\,
	datab => \Mux23~9_combout\,
	datac => \Mux25~9_combout\,
	datad => \Mux26~11_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X88_Y63_N20
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux27~10_combout\ & !\Mux28~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~10_combout\,
	datad => \Mux28~9_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X88_Y63_N22
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~4_combout\ & (!\Mux30~9_combout\ & !\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux29~9_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X89_Y65_N12
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux13~10_combout\ & (!\Mux11~10_combout\ & (!\Mux12~10_combout\ & !\Mux14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~10_combout\,
	datab => \Mux11~10_combout\,
	datac => \Mux12~10_combout\,
	datad => \Mux14~10_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X89_Y65_N30
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (!\Mux21~13_combout\ & (!\Mux22~9_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Mux21~13_combout\,
	datac => \Mux22~9_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X89_Y65_N28
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux8~9_combout\ & (!\Mux9~9_combout\ & (!\Mux7~9_combout\ & !\Mux10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => \Mux9~9_combout\,
	datac => \Mux7~9_combout\,
	datad => \Mux10~10_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X89_Y65_N16
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (!\Mux5~9_combout\ & !\Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Mux5~9_combout\,
	datad => \Mux6~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X89_Y65_N0
\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~9_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X91_Y64_N28
\Mux36~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux36~0_combout\ & ((\A[31]~input_o\ & (!\B[31]~input_o\ & !\Add1~62_combout\)) # (!\A[31]~input_o\ & (\B[31]~input_o\ & \Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux36~0_combout\,
	datac => \B[31]~input_o\,
	datad => \Add1~62_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X91_Y64_N24
\Mux36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\opcode[1]~input_o\ & !\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X91_Y64_N26
\Mux36~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~1_combout\ & ((\Add0~62_combout\ & (!\B[31]~input_o\ & !\A[31]~input_o\)) # (!\Add0~62_combout\ & (\B[31]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Mux36~1_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X91_Y64_N30
\Mux36~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (!\opcode[3]~input_o\ & (!\opcode[0]~input_o\ & ((\Mux36~3_combout\) # (\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux36~3_combout\,
	datac => \Mux36~2_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux36~4_combout\);

ww_Z(0) <= \Z[0]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(8) <= \Z[8]~output_o\;

ww_Z(9) <= \Z[9]~output_o\;

ww_Z(10) <= \Z[10]~output_o\;

ww_Z(11) <= \Z[11]~output_o\;

ww_Z(12) <= \Z[12]~output_o\;

ww_Z(13) <= \Z[13]~output_o\;

ww_Z(14) <= \Z[14]~output_o\;

ww_Z(15) <= \Z[15]~output_o\;

ww_Z(16) <= \Z[16]~output_o\;

ww_Z(17) <= \Z[17]~output_o\;

ww_Z(18) <= \Z[18]~output_o\;

ww_Z(19) <= \Z[19]~output_o\;

ww_Z(20) <= \Z[20]~output_o\;

ww_Z(21) <= \Z[21]~output_o\;

ww_Z(22) <= \Z[22]~output_o\;

ww_Z(23) <= \Z[23]~output_o\;

ww_Z(24) <= \Z[24]~output_o\;

ww_Z(25) <= \Z[25]~output_o\;

ww_Z(26) <= \Z[26]~output_o\;

ww_Z(27) <= \Z[27]~output_o\;

ww_Z(28) <= \Z[28]~output_o\;

ww_Z(29) <= \Z[29]~output_o\;

ww_Z(30) <= \Z[30]~output_o\;

ww_Z(31) <= \Z[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_ovfl <= \ovfl~output_o\;
END structure;


