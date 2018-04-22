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

-- DATE "06/03/2018 17:53:54"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- Z[0]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[1]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[2]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[3]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[6]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[7]	=>  Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[8]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[9]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[10]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[11]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[12]	=>  Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[13]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[14]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[15]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[16]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[17]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[18]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[19]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[20]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[21]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[22]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[23]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[24]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[25]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[26]	=>  Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[27]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[28]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[29]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[30]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[31]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovfl	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \RotateLeft0~20_combout\ : std_logic;
SIGNAL \Mux35~9_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux34~7_combout\ : std_logic;
SIGNAL \Mux34~8_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \RotateLeft0~39_combout\ : std_logic;
SIGNAL \RotateLeft0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \RotateRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \RotateRight0~31_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \RotateLeft0~61_combout\ : std_logic;
SIGNAL \RotateLeft0~70_combout\ : std_logic;
SIGNAL \RotateRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \RotateRight0~42_combout\ : std_logic;
SIGNAL \RotateRight0~43_combout\ : std_logic;
SIGNAL \RotateRight0~44_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \RotateLeft0~87_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \RotateRight0~50_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \RotateRight0~53_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \RotateRight0~56_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \RotateLeft0~114_combout\ : std_logic;
SIGNAL \RotateLeft0~115_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \RotateRight0~58_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \RotateRight0~61_combout\ : std_logic;
SIGNAL \RotateRight0~62_combout\ : std_logic;
SIGNAL \RotateRight0~63_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \ShiftRight0~92_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \ShiftRight0~93_combout\ : std_logic;
SIGNAL \ShiftRight0~95_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \RotateLeft0~131_combout\ : std_logic;
SIGNAL \ShiftRight0~96_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \RotateRight0~70_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \ShiftRight0~103_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \ShiftRight0~105_combout\ : std_logic;
SIGNAL \Mux33~12_combout\ : std_logic;
SIGNAL \ShiftRight0~107_combout\ : std_logic;
SIGNAL \RotateRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight0~109_combout\ : std_logic;
SIGNAL \Mux20~16_combout\ : std_logic;
SIGNAL \Mux20~17_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux35~13_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \RotateRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \RotateRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \RotateRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \RotateRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
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
SIGNAL \Mux35~10_combout\ : std_logic;
SIGNAL \Mux35~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \Mux35~7_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux35~14_combout\ : std_logic;
SIGNAL \Mux35~8_combout\ : std_logic;
SIGNAL \Mux35~12_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux21~14_combout\ : std_logic;
SIGNAL \RotateLeft0~40_combout\ : std_logic;
SIGNAL \RotateLeft0~41_combout\ : std_logic;
SIGNAL \RotateLeft0~42_combout\ : std_logic;
SIGNAL \RotateLeft0~43_combout\ : std_logic;
SIGNAL \RotateLeft0~44_combout\ : std_logic;
SIGNAL \RotateLeft0~50_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \RotateRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \RotateRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \RotateRight0~21_combout\ : std_logic;
SIGNAL \RotateRight0~24_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~10_combout\ : std_logic;
SIGNAL \Mux34~11_combout\ : std_logic;
SIGNAL \RotateLeft0~33_combout\ : std_logic;
SIGNAL \RotateLeft0~56_combout\ : std_logic;
SIGNAL \RotateLeft0~57_combout\ : std_logic;
SIGNAL \RotateLeft0~35_combout\ : std_logic;
SIGNAL \RotateLeft0~58_combout\ : std_logic;
SIGNAL \RotateLeft0~59_combout\ : std_logic;
SIGNAL \RotateLeft0~30_combout\ : std_logic;
SIGNAL \RotateLeft0~53_combout\ : std_logic;
SIGNAL \RotateLeft0~54_combout\ : std_logic;
SIGNAL \RotateLeft0~51_combout\ : std_logic;
SIGNAL \RotateLeft0~52_combout\ : std_logic;
SIGNAL \RotateLeft0~55_combout\ : std_logic;
SIGNAL \RotateLeft0~60_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \RotateLeft0~64_combout\ : std_logic;
SIGNAL \RotateLeft0~65_combout\ : std_logic;
SIGNAL \RotateLeft0~66_combout\ : std_logic;
SIGNAL \RotateLeft0~72_combout\ : std_logic;
SIGNAL \Mux33~10_combout\ : std_logic;
SIGNAL \RotateRight0~35_combout\ : std_logic;
SIGNAL \RotateRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \RotateRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \Mux33~11_combout\ : std_logic;
SIGNAL \RotateRight0~39_combout\ : std_logic;
SIGNAL \RotateRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \RotateRight0~16_combout\ : std_logic;
SIGNAL \RotateRight0~48_combout\ : std_logic;
SIGNAL \RotateRight0~33_combout\ : std_logic;
SIGNAL \RotateRight0~12_combout\ : std_logic;
SIGNAL \RotateRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \RotateRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~9_combout\ : std_logic;
SIGNAL \RotateLeft0~24_combout\ : std_logic;
SIGNAL \RotateLeft0~73_combout\ : std_logic;
SIGNAL \RotateLeft0~17_combout\ : std_logic;
SIGNAL \RotateLeft0~75_combout\ : std_logic;
SIGNAL \RotateLeft0~76_combout\ : std_logic;
SIGNAL \RotateLeft0~38_combout\ : std_logic;
SIGNAL \RotateLeft0~77_combout\ : std_logic;
SIGNAL \RotateLeft0~78_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \RotateLeft0~74_combout\ : std_logic;
SIGNAL \RotateLeft0~79_combout\ : std_logic;
SIGNAL \Mux32~10_combout\ : std_logic;
SIGNAL \Mux32~11_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \RotateRight0~77_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \RotateRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \RotateLeft0~25_combout\ : std_logic;
SIGNAL \RotateLeft0~26_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateLeft0~16_combout\ : std_logic;
SIGNAL \RotateLeft0~88_combout\ : std_logic;
SIGNAL \Mux31~18_combout\ : std_logic;
SIGNAL \Mux31~19_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux31~20_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \RotateLeft0~22_combout\ : std_logic;
SIGNAL \RotateLeft0~96_combout\ : std_logic;
SIGNAL \RotateLeft0~97_combout\ : std_logic;
SIGNAL \RotateLeft0~98_combout\ : std_logic;
SIGNAL \RotateLeft0~18_combout\ : std_logic;
SIGNAL \RotateLeft0~31_combout\ : std_logic;
SIGNAL \RotateLeft0~94_combout\ : std_logic;
SIGNAL \RotateLeft0~36_combout\ : std_logic;
SIGNAL \RotateLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \RotateLeft0~29_combout\ : std_logic;
SIGNAL \RotateLeft0~95_combout\ : std_logic;
SIGNAL \RotateRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \RotateRight0~51_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \RotateRight0~40_combout\ : std_logic;
SIGNAL \RotateRight0~29_combout\ : std_logic;
SIGNAL \RotateRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \RotateRight0~52_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \RotateLeft0~67_combout\ : std_logic;
SIGNAL \RotateLeft0~45_combout\ : std_logic;
SIGNAL \RotateLeft0~68_combout\ : std_logic;
SIGNAL \RotateLeft0~71_combout\ : std_logic;
SIGNAL \RotateLeft0~103_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~108_combout\ : std_logic;
SIGNAL \RotateRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \RotateLeft0~62_combout\ : std_logic;
SIGNAL \RotateLeft0~63_combout\ : std_logic;
SIGNAL \RotateLeft0~99_combout\ : std_logic;
SIGNAL \RotateLeft0~100_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \RotateRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \RotateRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \RotateRight0~54_combout\ : std_logic;
SIGNAL \RotateRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \RotateLeft0~104_combout\ : std_logic;
SIGNAL \RotateLeft0~105_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~81_combout\ : std_logic;
SIGNAL \RotateLeft0~106_combout\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \RotateLeft0~83_combout\ : std_logic;
SIGNAL \RotateLeft0~69_combout\ : std_logic;
SIGNAL \RotateLeft0~84_combout\ : std_logic;
SIGNAL \RotateLeft0~85_combout\ : std_logic;
SIGNAL \RotateLeft0~107_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \RotateRight0~37_combout\ : std_logic;
SIGNAL \RotateRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \RotateLeft0~90_combout\ : std_logic;
SIGNAL \RotateLeft0~21_combout\ : std_logic;
SIGNAL \RotateLeft0~91_combout\ : std_logic;
SIGNAL \RotateLeft0~92_combout\ : std_logic;
SIGNAL \RotateLeft0~111_combout\ : std_logic;
SIGNAL \RotateLeft0~112_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \RotateLeft0~108_combout\ : std_logic;
SIGNAL \RotateLeft0~19_combout\ : std_logic;
SIGNAL \RotateLeft0~109_combout\ : std_logic;
SIGNAL \RotateLeft0~110_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \RotateRight0~57_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \RotateLeft0~46_combout\ : std_logic;
SIGNAL \RotateLeft0~113_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \RotateLeft0~47_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \RotateLeft0~48_combout\ : std_logic;
SIGNAL \RotateLeft0~116_combout\ : std_logic;
SIGNAL \RotateLeft0~117_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \RotateRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \ShiftRight0~91_combout\ : std_logic;
SIGNAL \RotateLeft0~121_combout\ : std_logic;
SIGNAL \RotateLeft0~101_combout\ : std_logic;
SIGNAL \RotateLeft0~102_combout\ : std_logic;
SIGNAL \RotateLeft0~122_combout\ : std_logic;
SIGNAL \RotateLeft0~118_combout\ : std_logic;
SIGNAL \RotateLeft0~119_combout\ : std_logic;
SIGNAL \RotateLeft0~120_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \RotateRight0~64_combout\ : std_logic;
SIGNAL \RotateRight0~65_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \RotateLeft0~123_combout\ : std_logic;
SIGNAL \RotateLeft0~124_combout\ : std_logic;
SIGNAL \RotateLeft0~125_combout\ : std_logic;
SIGNAL \RotateLeft0~126_combout\ : std_logic;
SIGNAL \RotateLeft0~127_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \ShiftRight0~94_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \RotateLeft0~128_combout\ : std_logic;
SIGNAL \RotateLeft0~129_combout\ : std_logic;
SIGNAL \RotateLeft0~130_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \RotateRight0~67_combout\ : std_logic;
SIGNAL \RotateRight0~68_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \RotateLeft0~132_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \ShiftRight0~97_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \ShiftRight0~98_combout\ : std_logic;
SIGNAL \ShiftRight0~99_combout\ : std_logic;
SIGNAL \RotateLeft0~136_combout\ : std_logic;
SIGNAL \RotateLeft0~137_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \RotateLeft0~134_combout\ : std_logic;
SIGNAL \RotateLeft0~133_combout\ : std_logic;
SIGNAL \RotateLeft0~135_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \ShiftRight0~110_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~10_combout\ : std_logic;
SIGNAL \RotateLeft0~139_combout\ : std_logic;
SIGNAL \RotateLeft0~138_combout\ : std_logic;
SIGNAL \RotateLeft0~140_combout\ : std_logic;
SIGNAL \Mux21~11_combout\ : std_logic;
SIGNAL \RotateLeft0~141_combout\ : std_logic;
SIGNAL \RotateLeft0~142_combout\ : std_logic;
SIGNAL \Mux21~12_combout\ : std_logic;
SIGNAL \ShiftRight0~100_combout\ : std_logic;
SIGNAL \ShiftRight0~101_combout\ : std_logic;
SIGNAL \Mux21~13_combout\ : std_logic;
SIGNAL \Mux20~12_combout\ : std_logic;
SIGNAL \Mux20~13_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \RotateLeft0~144_combout\ : std_logic;
SIGNAL \RotateLeft0~143_combout\ : std_logic;
SIGNAL \RotateLeft0~145_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux20~14_combout\ : std_logic;
SIGNAL \Mux20~15_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~10_combout\ : std_logic;
SIGNAL \Mux19~13_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \RotateLeft0~23_combout\ : std_logic;
SIGNAL \RotateLeft0~27_combout\ : std_logic;
SIGNAL \Mux19~11_combout\ : std_logic;
SIGNAL \Mux19~12_combout\ : std_logic;
SIGNAL \RotateLeft0~34_combout\ : std_logic;
SIGNAL \RotateLeft0~32_combout\ : std_logic;
SIGNAL \RotateLeft0~37_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \Mux34~12_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \RotateRight0~76_combout\ : std_logic;
SIGNAL \RotateRight0~32_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \ShiftRight0~106_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Mux16~11_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Mux16~13_combout\ : std_logic;
SIGNAL \RotateLeft0~82_combout\ : std_logic;
SIGNAL \RotateLeft0~86_combout\ : std_logic;
SIGNAL \Mux16~12_combout\ : std_logic;
SIGNAL \RotateLeft0~89_combout\ : std_logic;
SIGNAL \RotateLeft0~93_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \RotateRight0~59_combout\ : std_logic;
SIGNAL \RotateRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \RotateRight0~22_combout\ : std_logic;
SIGNAL \RotateRight0~23_combout\ : std_logic;
SIGNAL \RotateRight0~69_combout\ : std_logic;
SIGNAL \RotateRight0~71_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \RotateRight0~72_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \RotateRight0~73_combout\ : std_logic;
SIGNAL \RotateRight0~74_combout\ : std_logic;
SIGNAL \RotateRight0~75_combout\ : std_logic;
SIGNAL \RotateRight0~10_combout\ : std_logic;
SIGNAL \RotateRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight0~111_combout\ : std_logic;
SIGNAL \ShiftRight0~102_combout\ : std_logic;
SIGNAL \ShiftRight0~104_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \opcode~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);

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

-- Location: LCCOMB_X54_Y34_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\B~combout\(0) & !\A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X54_Y34_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\LessThan1~1_cout\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X54_Y34_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\A~combout\(2) & (\B~combout\(2) & !\LessThan1~3_cout\)) # (!\A~combout\(2) & ((\B~combout\(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X54_Y34_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\A~combout\(3) & ((!\LessThan1~5_cout\) # (!\B~combout\(3)))) # (!\A~combout\(3) & (!\B~combout\(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X54_Y34_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\B~combout\(4) & ((!\LessThan1~7_cout\) # (!\A~combout\(4)))) # (!\B~combout\(4) & (!\A~combout\(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X54_Y34_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\A~combout\(5) & ((!\LessThan1~9_cout\) # (!\B~combout\(5)))) # (!\A~combout\(5) & (!\B~combout\(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X54_Y34_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan1~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X54_Y34_N14
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\A~combout\(7) & ((!\LessThan1~13_cout\) # (!\B~combout\(7)))) # (!\A~combout\(7) & (!\B~combout\(7) & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X54_Y34_N16
\LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\B~combout\(8) & ((!\LessThan1~15_cout\) # (!\A~combout\(8)))) # (!\B~combout\(8) & (!\A~combout\(8) & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X54_Y34_N18
\LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\B~combout\(9) & (\A~combout\(9) & !\LessThan1~17_cout\)) # (!\B~combout\(9) & ((\A~combout\(9)) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X54_Y34_N20
\LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\A~combout\(10) & (\B~combout\(10) & !\LessThan1~19_cout\)) # (!\A~combout\(10) & ((\B~combout\(10)) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \B~combout\(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X54_Y34_N22
\LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\A~combout\(11) & ((!\LessThan1~21_cout\) # (!\B~combout\(11)))) # (!\A~combout\(11) & (!\B~combout\(11) & !\LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X54_Y34_N24
\LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\B~combout\(12) & ((!\LessThan1~23_cout\) # (!\A~combout\(12)))) # (!\B~combout\(12) & (!\A~combout\(12) & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X54_Y34_N26
\LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\B~combout\(13) & (\A~combout\(13) & !\LessThan1~25_cout\)) # (!\B~combout\(13) & ((\A~combout\(13)) # (!\LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \A~combout\(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X54_Y34_N28
\LessThan1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\B~combout\(14) & ((!\LessThan1~27_cout\) # (!\A~combout\(14)))) # (!\B~combout\(14) & (!\A~combout\(14) & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X54_Y34_N30
\LessThan1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\B~combout\(15) & (\A~combout\(15) & !\LessThan1~29_cout\)) # (!\B~combout\(15) & ((\A~combout\(15)) # (!\LessThan1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datab => \A~combout\(15),
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X54_Y33_N0
\LessThan1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\B~combout\(16) & ((!\LessThan1~31_cout\) # (!\A~combout\(16)))) # (!\B~combout\(16) & (!\A~combout\(16) & !\LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X54_Y33_N2
\LessThan1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\B~combout\(17) & (\A~combout\(17) & !\LessThan1~33_cout\)) # (!\B~combout\(17) & ((\A~combout\(17)) # (!\LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X54_Y33_N4
\LessThan1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\A~combout\(18) & (\B~combout\(18) & !\LessThan1~35_cout\)) # (!\A~combout\(18) & ((\B~combout\(18)) # (!\LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \B~combout\(18),
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X54_Y33_N6
\LessThan1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\A~combout\(19) & ((!\LessThan1~37_cout\) # (!\B~combout\(19)))) # (!\A~combout\(19) & (!\B~combout\(19) & !\LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \B~combout\(19),
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X54_Y33_N8
\LessThan1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\A~combout\(20) & (\B~combout\(20) & !\LessThan1~39_cout\)) # (!\A~combout\(20) & ((\B~combout\(20)) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X54_Y33_N10
\LessThan1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\A~combout\(21) & ((!\LessThan1~41_cout\) # (!\B~combout\(21)))) # (!\A~combout\(21) & (!\B~combout\(21) & !\LessThan1~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(21),
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X54_Y33_N12
\LessThan1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\A~combout\(22) & (\B~combout\(22) & !\LessThan1~43_cout\)) # (!\A~combout\(22) & ((\B~combout\(22)) # (!\LessThan1~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \B~combout\(22),
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X54_Y33_N14
\LessThan1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\B~combout\(23) & (\A~combout\(23) & !\LessThan1~45_cout\)) # (!\B~combout\(23) & ((\A~combout\(23)) # (!\LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X54_Y33_N16
\LessThan1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\B~combout\(24) & ((!\LessThan1~47_cout\) # (!\A~combout\(24)))) # (!\B~combout\(24) & (!\A~combout\(24) & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(24),
	datab => \A~combout\(24),
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X54_Y33_N18
\LessThan1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\A~combout\(25) & ((!\LessThan1~49_cout\) # (!\B~combout\(25)))) # (!\A~combout\(25) & (!\B~combout\(25) & !\LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \B~combout\(25),
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X54_Y33_N20
\LessThan1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\A~combout\(26) & (\B~combout\(26) & !\LessThan1~51_cout\)) # (!\A~combout\(26) & ((\B~combout\(26)) # (!\LessThan1~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X54_Y33_N22
\LessThan1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\A~combout\(27) & ((!\LessThan1~53_cout\) # (!\B~combout\(27)))) # (!\A~combout\(27) & (!\B~combout\(27) & !\LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \B~combout\(27),
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X54_Y33_N24
\LessThan1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\B~combout\(28) & ((!\LessThan1~55_cout\) # (!\A~combout\(28)))) # (!\B~combout\(28) & (!\A~combout\(28) & !\LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \A~combout\(28),
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X54_Y33_N26
\LessThan1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\B~combout\(29) & (\A~combout\(29) & !\LessThan1~57_cout\)) # (!\B~combout\(29) & ((\A~combout\(29)) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \A~combout\(29),
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X54_Y33_N28
\LessThan1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\A~combout\(30) & (\B~combout\(30) & !\LessThan1~59_cout\)) # (!\A~combout\(30) & ((\B~combout\(30)) # (!\LessThan1~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datab => \B~combout\(30),
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X54_Y33_N30
\LessThan1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\B~combout\(31) & ((\LessThan1~61_cout\) # (!\A~combout\(31)))) # (!\B~combout\(31) & (!\A~combout\(31) & \LessThan1~61_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(31),
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X57_Y34_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (\Add0~1\ & VCC)) # (!\B~combout\(1) & (!\Add0~1\)))) # (!\A~combout\(1) & ((\B~combout\(1) & (!\Add0~1\)) # (!\B~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A~combout\(1) & (!\B~combout\(1) & !\Add0~1\)) # (!\A~combout\(1) & ((!\Add0~1\) # (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X56_Y34_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B~combout\(2) & (\A~combout\(2) & !\Add1~3\)) # (!\B~combout\(2) & ((\A~combout\(2)) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X57_Y34_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B~combout\(2) & ((\A~combout\(2)) # (!\Add0~3\))) # (!\B~combout\(2) & (\A~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X56_Y34_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (!\Add1~5\)) # (!\A~combout\(3) & ((\Add1~5\) # (GND))))) # (!\B~combout\(3) & ((\A~combout\(3) & (\Add1~5\ & VCC)) # (!\A~combout\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\B~combout\(3) & ((!\Add1~5\) # (!\A~combout\(3)))) # (!\B~combout\(3) & (!\A~combout\(3) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X57_Y34_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (\Add0~5\ & VCC)) # (!\A~combout\(3) & (!\Add0~5\)))) # (!\B~combout\(3) & ((\A~combout\(3) & (!\Add0~5\)) # (!\A~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B~combout\(3) & (!\A~combout\(3) & !\Add0~5\)) # (!\B~combout\(3) & ((!\Add0~5\) # (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X56_Y34_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (!\Add1~9\)) # (!\A~combout\(5) & ((\Add1~9\) # (GND))))) # (!\B~combout\(5) & ((\A~combout\(5) & (\Add1~9\ & VCC)) # (!\A~combout\(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\B~combout\(5) & ((!\Add1~9\) # (!\A~combout\(5)))) # (!\B~combout\(5) & (!\A~combout\(5) & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X57_Y34_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (\Add0~9\ & VCC)) # (!\A~combout\(5) & (!\Add0~9\)))) # (!\B~combout\(5) & ((\A~combout\(5) & (!\Add0~9\)) # (!\A~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B~combout\(5) & (!\A~combout\(5) & !\Add0~9\)) # (!\B~combout\(5) & ((!\Add0~9\) # (!\A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X57_Y34_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A~combout\(6) & ((\B~combout\(6)) # (!\Add0~11\))) # (!\A~combout\(6) & (\B~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X56_Y34_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\A~combout\(7) & ((\B~combout\(7) & (!\Add1~13\)) # (!\B~combout\(7) & (\Add1~13\ & VCC)))) # (!\A~combout\(7) & ((\B~combout\(7) & ((\Add1~13\) # (GND))) # (!\B~combout\(7) & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\A~combout\(7) & (\B~combout\(7) & !\Add1~13\)) # (!\A~combout\(7) & ((\B~combout\(7)) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X57_Y34_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A~combout\(7) & ((\B~combout\(7) & (\Add0~13\ & VCC)) # (!\B~combout\(7) & (!\Add0~13\)))) # (!\A~combout\(7) & ((\B~combout\(7) & (!\Add0~13\)) # (!\B~combout\(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\A~combout\(7) & (!\B~combout\(7) & !\Add0~13\)) # (!\A~combout\(7) & ((!\Add0~13\) # (!\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X56_Y34_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\B~combout\(9) & ((\A~combout\(9) & (!\Add1~17\)) # (!\A~combout\(9) & ((\Add1~17\) # (GND))))) # (!\B~combout\(9) & ((\A~combout\(9) & (\Add1~17\ & VCC)) # (!\A~combout\(9) & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\B~combout\(9) & ((!\Add1~17\) # (!\A~combout\(9)))) # (!\B~combout\(9) & (!\A~combout\(9) & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X57_Y34_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\A~combout\(9) & ((\B~combout\(9) & (\Add0~17\ & VCC)) # (!\B~combout\(9) & (!\Add0~17\)))) # (!\A~combout\(9) & ((\B~combout\(9) & (!\Add0~17\)) # (!\B~combout\(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\A~combout\(9) & (!\B~combout\(9) & !\Add0~17\)) # (!\A~combout\(9) & ((!\Add0~17\) # (!\B~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \B~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X56_Y34_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\B~combout\(10) $ (\A~combout\(10) $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\B~combout\(10) & (\A~combout\(10) & !\Add1~19\)) # (!\B~combout\(10) & ((\A~combout\(10)) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X57_Y34_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\B~combout\(10) $ (\A~combout\(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\B~combout\(10) & ((\A~combout\(10)) # (!\Add0~19\))) # (!\B~combout\(10) & (\A~combout\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X56_Y34_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\A~combout\(11) & ((\B~combout\(11) & (!\Add1~21\)) # (!\B~combout\(11) & (\Add1~21\ & VCC)))) # (!\A~combout\(11) & ((\B~combout\(11) & ((\Add1~21\) # (GND))) # (!\B~combout\(11) & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\A~combout\(11) & (\B~combout\(11) & !\Add1~21\)) # (!\A~combout\(11) & ((\B~combout\(11)) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X57_Y34_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\B~combout\(11) & ((\A~combout\(11) & (\Add0~21\ & VCC)) # (!\A~combout\(11) & (!\Add0~21\)))) # (!\B~combout\(11) & ((\A~combout\(11) & (!\Add0~21\)) # (!\A~combout\(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\B~combout\(11) & (!\A~combout\(11) & !\Add0~21\)) # (!\B~combout\(11) & ((!\Add0~21\) # (!\A~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \A~combout\(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X56_Y34_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\A~combout\(13) & ((\B~combout\(13) & (!\Add1~25\)) # (!\B~combout\(13) & (\Add1~25\ & VCC)))) # (!\A~combout\(13) & ((\B~combout\(13) & ((\Add1~25\) # (GND))) # (!\B~combout\(13) & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\A~combout\(13) & (\B~combout\(13) & !\Add1~25\)) # (!\A~combout\(13) & ((\B~combout\(13)) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X56_Y34_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\B~combout\(14) $ (\A~combout\(14) $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\B~combout\(14) & (\A~combout\(14) & !\Add1~27\)) # (!\B~combout\(14) & ((\A~combout\(14)) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X57_Y34_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\A~combout\(14) $ (\B~combout\(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\A~combout\(14) & ((\B~combout\(14)) # (!\Add0~27\))) # (!\A~combout\(14) & (\B~combout\(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \B~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X57_Y34_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\B~combout\(15) & ((\A~combout\(15) & (\Add0~29\ & VCC)) # (!\A~combout\(15) & (!\Add0~29\)))) # (!\B~combout\(15) & ((\A~combout\(15) & (!\Add0~29\)) # (!\A~combout\(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\B~combout\(15) & (!\A~combout\(15) & !\Add0~29\)) # (!\B~combout\(15) & ((!\Add0~29\) # (!\A~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datab => \A~combout\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X56_Y33_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\A~combout\(16) $ (\B~combout\(16) $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\A~combout\(16) & ((!\Add1~31\) # (!\B~combout\(16)))) # (!\A~combout\(16) & (!\B~combout\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \B~combout\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X57_Y33_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\B~combout\(16) $ (\A~combout\(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\B~combout\(16) & ((\A~combout\(16)) # (!\Add0~31\))) # (!\B~combout\(16) & (\A~combout\(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X56_Y33_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\B~combout\(17) & ((\A~combout\(17) & (!\Add1~33\)) # (!\A~combout\(17) & ((\Add1~33\) # (GND))))) # (!\B~combout\(17) & ((\A~combout\(17) & (\Add1~33\ & VCC)) # (!\A~combout\(17) & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\B~combout\(17) & ((!\Add1~33\) # (!\A~combout\(17)))) # (!\B~combout\(17) & (!\A~combout\(17) & !\Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X57_Y33_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\B~combout\(18) $ (\A~combout\(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\B~combout\(18) & ((\A~combout\(18)) # (!\Add0~35\))) # (!\B~combout\(18) & (\A~combout\(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X57_Y33_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\B~combout\(19) & ((\A~combout\(19) & (\Add0~37\ & VCC)) # (!\A~combout\(19) & (!\Add0~37\)))) # (!\B~combout\(19) & ((\A~combout\(19) & (!\Add0~37\)) # (!\A~combout\(19) & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\B~combout\(19) & (!\A~combout\(19) & !\Add0~37\)) # (!\B~combout\(19) & ((!\Add0~37\) # (!\A~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X56_Y33_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\B~combout\(20) $ (\A~combout\(20) $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\B~combout\(20) & (\A~combout\(20) & !\Add1~39\)) # (!\B~combout\(20) & ((\A~combout\(20)) # (!\Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X57_Y33_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\B~combout\(20) $ (\A~combout\(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\B~combout\(20) & ((\A~combout\(20)) # (!\Add0~39\))) # (!\B~combout\(20) & (\A~combout\(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X57_Y33_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\B~combout\(21) & ((\A~combout\(21) & (\Add0~41\ & VCC)) # (!\A~combout\(21) & (!\Add0~41\)))) # (!\B~combout\(21) & ((\A~combout\(21) & (!\Add0~41\)) # (!\A~combout\(21) & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\B~combout\(21) & (!\A~combout\(21) & !\Add0~41\)) # (!\B~combout\(21) & ((!\Add0~41\) # (!\A~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(21),
	datab => \A~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X57_Y33_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\B~combout\(22) $ (\A~combout\(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\B~combout\(22) & ((\A~combout\(22)) # (!\Add0~43\))) # (!\B~combout\(22) & (\A~combout\(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X56_Y33_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\A~combout\(23) & ((\B~combout\(23) & (!\Add1~45\)) # (!\B~combout\(23) & (\Add1~45\ & VCC)))) # (!\A~combout\(23) & ((\B~combout\(23) & ((\Add1~45\) # (GND))) # (!\B~combout\(23) & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\A~combout\(23) & (\B~combout\(23) & !\Add1~45\)) # (!\A~combout\(23) & ((\B~combout\(23)) # (!\Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \B~combout\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X56_Y33_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\B~combout\(25) & ((\A~combout\(25) & (!\Add1~49\)) # (!\A~combout\(25) & ((\Add1~49\) # (GND))))) # (!\B~combout\(25) & ((\A~combout\(25) & (\Add1~49\ & VCC)) # (!\A~combout\(25) & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\B~combout\(25) & ((!\Add1~49\) # (!\A~combout\(25)))) # (!\B~combout\(25) & (!\A~combout\(25) & !\Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X57_Y33_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\A~combout\(26) $ (\B~combout\(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\A~combout\(26) & ((\B~combout\(26)) # (!\Add0~51\))) # (!\A~combout\(26) & (\B~combout\(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X56_Y33_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\B~combout\(27) & ((\A~combout\(27) & (!\Add1~53\)) # (!\A~combout\(27) & ((\Add1~53\) # (GND))))) # (!\B~combout\(27) & ((\A~combout\(27) & (\Add1~53\ & VCC)) # (!\A~combout\(27) & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\B~combout\(27) & ((!\Add1~53\) # (!\A~combout\(27)))) # (!\B~combout\(27) & (!\A~combout\(27) & !\Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X57_Y33_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\A~combout\(28) $ (\B~combout\(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\A~combout\(28) & ((\B~combout\(28)) # (!\Add0~55\))) # (!\A~combout\(28) & (\B~combout\(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \B~combout\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X56_Y33_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\A~combout\(29) & ((\B~combout\(29) & (!\Add1~57\)) # (!\B~combout\(29) & (\Add1~57\ & VCC)))) # (!\A~combout\(29) & ((\B~combout\(29) & ((\Add1~57\) # (GND))) # (!\B~combout\(29) & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\A~combout\(29) & (\B~combout\(29) & !\Add1~57\)) # (!\A~combout\(29) & ((\B~combout\(29)) # (!\Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X57_Y33_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\B~combout\(29) & ((\A~combout\(29) & (\Add0~57\ & VCC)) # (!\A~combout\(29) & (!\Add0~57\)))) # (!\B~combout\(29) & ((\A~combout\(29) & (!\Add0~57\)) # (!\A~combout\(29) & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\B~combout\(29) & (!\A~combout\(29) & !\Add0~57\)) # (!\B~combout\(29) & ((!\Add0~57\) # (!\A~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \A~combout\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X52_Y35_N12
\ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\B~combout\(1) & ((\A~combout\(19)))) # (!\B~combout\(1) & (\A~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(17),
	datac => \A~combout\(19),
	datad => \B~combout\(1),
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X56_Y36_N4
\ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\B~combout\(0) & ((\ShiftRight0~36_combout\))) # (!\B~combout\(0) & (\RotateRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~16_combout\,
	datac => \B~combout\(0),
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X58_Y34_N10
\ShiftLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\B~combout\(11)) # ((\B~combout\(9)) # ((\B~combout\(10)) # (\B~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \B~combout\(9),
	datac => \B~combout\(10),
	datad => \B~combout\(12),
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X53_Y32_N6
\Mux35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux31~0_combout\ & ((\ShiftLeft0~8_combout\ & (\A~combout\(31))) # (!\ShiftLeft0~8_combout\ & ((\Mux35~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Mux31~0_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \Mux35~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X54_Y32_N20
\Mux35~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\Mux35~5_combout\ & ((\Mux35~4_combout\) # ((!\opcode~combout\(3) & \Add0~0_combout\)))) # (!\Mux35~5_combout\ & (!\opcode~combout\(3) & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~5_combout\,
	datab => \opcode~combout\(3),
	datac => \Mux35~4_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X56_Y36_N24
\RotateLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\B~combout\(1) & ((\A~combout\(10)))) # (!\B~combout\(1) & (\A~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(12),
	datac => \A~combout\(10),
	datad => \B~combout\(1),
	combout => \RotateLeft0~1_combout\);

-- Location: LCCOMB_X56_Y36_N10
\RotateLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\ShiftRight0~16_combout\ & ((\B~combout\(0) & ((\RotateLeft0~0_combout\))) # (!\B~combout\(0) & (\RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~0_combout\,
	combout => \RotateLeft0~2_combout\);

-- Location: LCCOMB_X54_Y36_N20
\RotateLeft0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~20_combout\ = (\RotateLeft0~19_combout\ & ((\ShiftRight0~16_combout\) # ((\ShiftRight0~27_combout\ & \RotateLeft0~16_combout\)))) # (!\RotateLeft0~19_combout\ & (((\ShiftRight0~27_combout\ & \RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~19_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \RotateLeft0~16_combout\,
	combout => \RotateLeft0~20_combout\);

-- Location: LCCOMB_X53_Y36_N14
\Mux35~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~9_combout\ = (\Mux31~0_combout\ & ((\B~combout\(4) & ((\RotateLeft0~13_combout\))) # (!\B~combout\(4) & (\RotateLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~27_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \Mux31~0_combout\,
	datad => \B~combout\(4),
	combout => \Mux35~9_combout\);

-- Location: LCCOMB_X52_Y36_N12
\ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\B~combout\(0) & (\RotateRight0~18_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~18_combout\,
	datac => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X61_Y35_N0
\Mux34~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux31~5_combout\ & ((\A~combout\(1)) # ((\Mux31~4_combout\) # (\B~combout\(1))))) # (!\Mux31~5_combout\ & (\A~combout\(1) & (!\Mux31~4_combout\ & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \A~combout\(1),
	datac => \Mux31~4_combout\,
	datad => \B~combout\(1),
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X61_Y35_N18
\Mux34~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux34~12_combout\ & (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & !\B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~12_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \B~combout\(4),
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X61_Y35_N6
\Mux34~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(1) & (\opcode~combout\(0) & !\A~combout\(1))) # (!\B~combout\(1) & (\opcode~combout\(0) $ (!\A~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \A~combout\(1),
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X61_Y35_N16
\Mux34~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~7_combout\ = (\Mux34~6_combout\ & ((\Mux34~5_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux34~6_combout\ & (((\ShiftRight0~44_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~6_combout\,
	datab => \Mux34~5_combout\,
	datac => \ShiftRight0~44_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux34~7_combout\);

-- Location: LCCOMB_X61_Y35_N10
\Mux34~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~8_combout\ = (\Mux31~4_combout\ & ((\Mux34~4_combout\ & (\Mux34~7_combout\)) # (!\Mux34~4_combout\ & ((\Add0~2_combout\))))) # (!\Mux31~4_combout\ & (((\Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~7_combout\,
	datab => \Add0~2_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux34~4_combout\,
	combout => \Mux34~8_combout\);

-- Location: LCCOMB_X54_Y35_N10
\Mux34~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = (\Mux31~3_combout\ & ((\RotateLeft0~37_combout\) # ((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (((!\Mux31~2_combout\ & \Mux34~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \RotateLeft0~37_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux34~8_combout\,
	combout => \Mux34~9_combout\);

-- Location: LCCOMB_X60_Y37_N28
\RotateLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~39_combout\ = (\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(2))) # (!\B~combout\(1) & ((\A~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(2),
	datad => \A~combout\(4),
	combout => \RotateLeft0~39_combout\);

-- Location: LCCOMB_X54_Y37_N6
\RotateLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~49_combout\ = (\B~combout\(3) & (\RotateLeft0~46_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~46_combout\,
	datac => \RotateLeft0~48_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~49_combout\);

-- Location: LCCOMB_X59_Y31_N12
\ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\B~combout\(0) & (\ShiftRight0~47_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \ShiftRight0~47_combout\,
	datad => \ShiftRight0~29_combout\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X53_Y35_N12
\ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\ShiftRight0~46_combout\)) # (!\B~combout\(3) & ((\ShiftRight0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \ShiftRight0~46_combout\,
	datac => \ShiftRight0~48_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X51_Y35_N2
\ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\B~combout\(0) & ((\ShiftRight0~50_combout\))) # (!\B~combout\(0) & (\ShiftRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datac => \B~combout\(0),
	datad => \ShiftRight0~50_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X52_Y35_N10
\RotateRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~25_combout\ = (\B~combout\(1) & (\A~combout\(21))) # (!\B~combout\(1) & ((\A~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(1),
	datac => \A~combout\(19),
	combout => \RotateRight0~25_combout\);

-- Location: LCCOMB_X61_Y33_N12
\ShiftRight1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\B~combout\(0) & (((\A~combout\(31))))) # (!\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(31))) # (!\B~combout\(1) & ((\A~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(31),
	datad => \A~combout\(30),
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X61_Y33_N22
\ShiftRight1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\B~combout\(2) & ((\ShiftRight1~11_combout\))) # (!\B~combout\(2) & (\RotateRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \RotateRight0~30_combout\,
	datad => \ShiftRight1~11_combout\,
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X59_Y32_N24
\ShiftRight1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\ShiftRight1~10_combout\) # ((\B~combout\(3) & \ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~10_combout\,
	datac => \B~combout\(3),
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X59_Y32_N18
\Mux33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & ((\A~combout\(31)))) # (!\Mux31~1_combout\ & (\ShiftRight1~13_combout\)))) # (!\Mux31~0_combout\ & (((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~13_combout\,
	datab => \Mux31~0_combout\,
	datac => \A~combout\(31),
	datad => \Mux31~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X60_Y37_N2
\RotateRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~31_combout\ = (\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(1)))) # (!\B~combout\(0) & (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \RotateRight0~31_combout\);

-- Location: LCCOMB_X59_Y32_N6
\Mux33~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux31~0_combout\ & (((\Mux33~2_combout\)))) # (!\Mux31~0_combout\ & ((\Mux33~2_combout\ & (\RotateRight0~32_combout\)) # (!\Mux33~2_combout\ & ((\Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~32_combout\,
	datab => \Add1~4_combout\,
	datac => \Mux31~0_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X60_Y37_N12
\ShiftLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(0))) # (!\B~combout\(1) & ((\A~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X58_Y35_N26
\Mux33~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\B~combout\(2) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A~combout\(2))))) # (!\B~combout\(2) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \Mux31~4_combout\,
	datac => \A~combout\(2),
	datad => \Mux31~5_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X59_Y32_N0
\ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\ShiftRight1~10_combout\) # ((\ShiftRight0~105_combout\) # ((\RotateRight0~30_combout\ & \ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~105_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X58_Y36_N16
\Mux33~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (!\ShiftLeft0~7_combout\ & (\Mux33~12_combout\ & (!\ShiftLeft0~4_combout\ & \ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \Mux33~12_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X58_Y35_N28
\Mux33~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(2) $ (\B~combout\(2))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(2) & !\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \opcode~combout\(1),
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X58_Y35_N14
\Mux33~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux33~6_combout\ & (((\Mux33~5_combout\) # (!\Mux31~6_combout\)))) # (!\Mux33~6_combout\ & (\ShiftRight0~57_combout\ & ((\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux33~6_combout\,
	datac => \Mux33~5_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X58_Y35_N24
\Mux33~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux33~4_combout\ & (((\Mux33~7_combout\) # (!\Mux31~4_combout\)))) # (!\Mux33~4_combout\ & (\Add0~4_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mux33~4_combout\,
	datac => \Mux33~7_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X56_Y37_N24
\RotateLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~61_combout\ = (\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(3))) # (!\B~combout\(1) & ((\A~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(3),
	datac => \B~combout\(0),
	datad => \A~combout\(5),
	combout => \RotateLeft0~61_combout\);

-- Location: LCCOMB_X51_Y35_N14
\RotateLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~70_combout\ = (\B~combout\(0) & ((\RotateLeft0~47_combout\))) # (!\B~combout\(0) & (\RotateLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~69_combout\,
	datab => \RotateLeft0~47_combout\,
	datac => \B~combout\(0),
	combout => \RotateLeft0~70_combout\);

-- Location: LCCOMB_X56_Y31_N2
\RotateRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~38_combout\ = (\B~combout\(0) & ((\RotateRight0~37_combout\))) # (!\B~combout\(0) & (\ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~45_combout\,
	datac => \RotateRight0~37_combout\,
	datad => \B~combout\(0),
	combout => \RotateRight0~38_combout\);

-- Location: LCCOMB_X56_Y31_N12
\ShiftRight1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\ShiftRight0~16_combout\ & ((\B~combout\(0) & ((\RotateRight0~10_combout\))) # (!\B~combout\(0) & (\RotateRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~27_combout\,
	datab => \B~combout\(0),
	datac => \ShiftRight0~16_combout\,
	datad => \RotateRight0~10_combout\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X61_Y33_N14
\RotateRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~42_combout\ = (!\B~combout\(0) & ((\B~combout\(1) & ((\A~combout\(1)))) # (!\B~combout\(1) & (\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \B~combout\(0),
	combout => \RotateRight0~42_combout\);

-- Location: LCCOMB_X59_Y31_N16
\RotateRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~43_combout\ = (\RotateRight0~11_combout\ & ((\RotateRight0~42_combout\) # ((\B~combout\(0) & \RotateRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~13_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~42_combout\,
	combout => \RotateRight0~43_combout\);

-- Location: LCCOMB_X57_Y31_N16
\RotateRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~44_combout\ = (\ShiftRight1~15_combout\) # ((\RotateRight0~43_combout\) # ((\ShiftRight1~16_combout\) # (\ShiftRight1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \RotateRight0~43_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \ShiftRight1~17_combout\,
	combout => \RotateRight0~44_combout\);

-- Location: LCCOMB_X57_Y32_N26
\Mux32~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\A~combout\(3) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B~combout\(3))))) # (!\A~combout\(3) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux31~4_combout\,
	datac => \Mux31~5_combout\,
	datad => \B~combout\(3),
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X58_Y36_N10
\Mux32~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (!\ShiftLeft0~7_combout\ & (\Mux33~12_combout\ & (\RotateLeft0~77_combout\ & !\ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \Mux33~12_combout\,
	datac => \RotateLeft0~77_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X57_Y32_N20
\Mux32~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(3) $ (\B~combout\(3))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(3) & !\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \B~combout\(3),
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X57_Y32_N14
\Mux32~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (\Mux32~6_combout\ & ((\Mux32~5_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux32~6_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \Mux32~5_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X57_Y32_N0
\Mux32~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Mux32~4_combout\ & (((\Mux32~7_combout\) # (!\Mux31~4_combout\)))) # (!\Mux32~4_combout\ & (\Add0~6_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux32~4_combout\,
	datac => \Mux32~7_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux32~8_combout\);

-- Location: LCCOMB_X54_Y36_N6
\RotateLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~87_combout\ = (\B~combout\(3) & (((\B~combout\(2)) # (\RotateLeft0~19_combout\)))) # (!\B~combout\(3) & (\RotateLeft0~8_combout\ & (!\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~8_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~19_combout\,
	combout => \RotateLeft0~87_combout\);

-- Location: LCCOMB_X58_Y36_N12
\Mux31~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (!\B~combout\(4) & !\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(4),
	datad => \B~combout\(3),
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X58_Y36_N30
\Mux31~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\ShiftLeft0~14_combout\ & (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & \Mux31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \Mux31~12_combout\,
	combout => \Mux31~13_combout\);

-- Location: LCCOMB_X58_Y33_N28
\Mux31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & (\A~combout\(4) $ (\B~combout\(4)))) # (!\opcode~combout\(0) & (!\A~combout\(4) & !\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	combout => \Mux31~14_combout\);

-- Location: LCCOMB_X58_Y33_N6
\Mux31~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = (\Mux31~14_combout\ & ((\Mux31~13_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux31~14_combout\ & (((!\ShiftRight0~107_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~13_combout\,
	datab => \Mux31~14_combout\,
	datac => \ShiftRight0~107_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux31~15_combout\);

-- Location: LCCOMB_X51_Y35_N6
\ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\B~combout\(0) & ((\ShiftRight0~34_combout\))) # (!\B~combout\(0) & (\RotateRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~15_combout\,
	datac => \ShiftRight0~34_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X58_Y31_N24
\ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\ShiftRight0~67_combout\)) # (!\B~combout\(3) & ((\ShiftRight0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X60_Y31_N2
\ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (!\B~combout\(1) & !\B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \B~combout\(2),
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X60_Y31_N28
\ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\B~combout\(3) & ((\ShiftRight1~21_combout\ & (\RotateRight0~19_combout\)) # (!\ShiftRight1~21_combout\ & ((\A~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~19_combout\,
	datab => \ShiftRight1~21_combout\,
	datac => \B~combout\(3),
	datad => \A~combout\(31),
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X60_Y34_N2
\ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\ShiftRight1~22_combout\) # ((\ShiftRight1~20_combout\) # ((\ShiftRight0~16_combout\ & \ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight1~22_combout\,
	datac => \ShiftRight1~20_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X59_Y34_N24
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux31~0_combout\ & (((!\Mux31~1_combout\ & \ShiftRight1~23_combout\)))) # (!\Mux31~0_combout\ & ((\Add1~10_combout\) # ((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \ShiftRight1~23_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X53_Y35_N26
\RotateRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~50_combout\ = (\ShiftRight0~48_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~23_combout\ & \RotateRight0~23_combout\)))) # (!\ShiftRight0~48_combout\ & (\ShiftRight0~23_combout\ & ((\RotateRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~50_combout\);

-- Location: LCCOMB_X58_Y34_N8
\Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\A~combout\(5) & ((\Mux31~5_combout\) # ((\B~combout\(5) & !\Mux31~4_combout\)))) # (!\A~combout\(5) & (\Mux31~5_combout\ & ((\B~combout\(5)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datac => \Mux31~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X60_Y34_N10
\Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\ShiftLeft0~15_combout\ & (\ShiftRight0~72_combout\ & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X58_Y34_N18
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(5) $ (\B~combout\(5))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(5) & !\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \A~combout\(5),
	datad => \B~combout\(5),
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X60_Y34_N4
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~4_combout\ & ((\Mux30~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux30~4_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~4_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~71_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X58_Y34_N20
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux31~4_combout\ & ((\Mux30~2_combout\ & ((\Mux30~5_combout\))) # (!\Mux30~2_combout\ & (\Add0~10_combout\)))) # (!\Mux31~4_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X60_Y32_N4
\ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\ShiftLeft0~12_combout\ & ((\B~combout\(2) & (\A~combout\(31))) # (!\B~combout\(2) & ((\A~combout\(30)))))) # (!\ShiftLeft0~12_combout\ & (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \ShiftLeft0~12_combout\,
	datac => \B~combout\(2),
	datad => \A~combout\(30),
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X60_Y32_N22
\ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\ShiftRight1~38_combout\) # ((\ShiftRight1~26_combout\ & \B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~26_combout\,
	datac => \B~combout\(3),
	datad => \ShiftRight1~38_combout\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X59_Y30_N16
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & (\A~combout\(31))) # (!\Mux31~1_combout\ & ((\ShiftRight1~27_combout\))))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~27_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X60_Y36_N22
\ShiftLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\B~combout\(2) & ((\ShiftLeft0~11_combout\))) # (!\B~combout\(2) & (\RotateLeft0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~63_combout\,
	datac => \ShiftLeft0~11_combout\,
	datad => \B~combout\(2),
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X58_Y36_N8
\Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\ShiftLeft0~16_combout\ & (\ShiftRight0~72_combout\ & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X59_Y31_N20
\RotateRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~53_combout\ = (\RotateRight0~42_combout\) # ((\B~combout\(0) & \RotateRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateRight0~13_combout\,
	datad => \RotateRight0~42_combout\,
	combout => \RotateRight0~53_combout\);

-- Location: LCCOMB_X58_Y35_N10
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(7) $ (\A~combout\(7))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(7) & !\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X52_Y35_N4
\ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\B~combout\(3) & ((\B~combout\(0) & ((\RotateRight0~8_combout\))) # (!\B~combout\(0) & (\RotateRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~8_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X59_Y30_N12
\ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\ShiftRight0~83_combout\) # ((\A~combout\(31) & \B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datac => \A~combout\(31),
	datad => \B~combout\(3),
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X59_Y30_N6
\Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & (\A~combout\(31))) # (!\Mux31~1_combout\ & ((\ShiftRight1~31_combout\))))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~31_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X59_Y31_N24
\RotateRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~56_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & ((\ShiftRight0~31_combout\))) # (!\B~combout\(0) & (\RotateRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~14_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \RotateRight0~56_combout\);

-- Location: LCCOMB_X57_Y32_N4
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~108_combout\) # ((\Mux27~0_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \RotateLeft0~108_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X57_Y32_N22
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(8) $ (\A~combout\(8))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(8) & !\A~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \A~combout\(8),
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X57_Y32_N16
\Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux31~6_combout\ & ((\Mux27~5_combout\ & (\Mux27~4_combout\)) # (!\Mux27~5_combout\ & ((\ShiftRight0~83_combout\))))) # (!\Mux31~6_combout\ & (((\Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datab => \Mux27~4_combout\,
	datac => \ShiftRight0~83_combout\,
	datad => \Mux27~5_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X54_Y37_N18
\RotateLeft0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~114_combout\ = (\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~31_combout\))) # (!\B~combout\(2) & (\RotateLeft0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~29_combout\,
	datac => \RotateLeft0~31_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~114_combout\);

-- Location: LCCOMB_X60_Y34_N30
\RotateLeft0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~115_combout\ = (\RotateLeft0~114_combout\) # (\RotateLeft0~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~114_combout\,
	datad => \RotateLeft0~113_combout\,
	combout => \RotateLeft0~115_combout\);

-- Location: LCCOMB_X56_Y35_N20
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & ((\ShiftRight1~32_combout\))) # (!\Mux31~0_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \ShiftRight1~32_combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X53_Y35_N24
\RotateRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~58_combout\ = (\ShiftRight0~53_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~16_combout\ & \RotateRight0~23_combout\)))) # (!\ShiftRight0~53_combout\ & (((\ShiftRight0~16_combout\ & \RotateRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \RotateRight0~11_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~58_combout\);

-- Location: LCCOMB_X56_Y35_N8
\Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\RotateRight0~60_combout\)) # (!\Mux31~1_combout\))) # (!\Mux26~0_combout\ & (\Mux31~1_combout\ & (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \RotateRight0~60_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X53_Y35_N10
\ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = (\B~combout\(3) & ((\ShiftRight0~41_combout\))) # (!\B~combout\(3) & (\ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datac => \ShiftRight0~41_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~87_combout\);

-- Location: LCCOMB_X59_Y32_N26
\ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\B~combout\(3) & (\A~combout\(31))) # (!\B~combout\(3) & ((\ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \A~combout\(31),
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X59_Y32_N28
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux31~1_combout\ & (((\A~combout\(31))) # (!\Mux31~0_combout\))) # (!\Mux31~1_combout\ & (\Mux31~0_combout\ & ((\ShiftRight1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~33_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X60_Y32_N12
\RotateRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~61_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\RotateRight0~40_combout\)) # (!\B~combout\(3) & ((\RotateRight0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateRight0~40_combout\,
	datac => \B~combout\(3),
	datad => \RotateRight0~30_combout\,
	combout => \RotateRight0~61_combout\);

-- Location: LCCOMB_X60_Y32_N6
\RotateRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~62_combout\ = (\B~combout\(3) & (((\RotateRight0~36_combout\)))) # (!\B~combout\(3) & ((\RotateRight0~31_combout\) # ((\ShiftRight0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~31_combout\,
	datab => \RotateRight0~36_combout\,
	datac => \B~combout\(3),
	datad => \ShiftRight0~56_combout\,
	combout => \RotateRight0~62_combout\);

-- Location: LCCOMB_X60_Y32_N8
\RotateRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~63_combout\ = (\RotateRight0~61_combout\) # ((\RotateRight0~62_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~62_combout\,
	datac => \B~combout\(2),
	datad => \RotateRight0~61_combout\,
	combout => \RotateRight0~63_combout\);

-- Location: LCCOMB_X59_Y32_N14
\Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux31~0_combout\ & (((\Mux25~0_combout\)))) # (!\Mux31~0_combout\ & ((\Mux25~0_combout\ & ((\RotateRight0~63_combout\))) # (!\Mux25~0_combout\ & (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Mux31~0_combout\,
	datac => \RotateRight0~63_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X60_Y32_N2
\ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (\ShiftRight0~16_combout\ & ((\ShiftRight0~56_combout\) # ((\ShiftRight0~27_combout\ & \RotateRight0~30_combout\)))) # (!\ShiftRight0~16_combout\ & (((\ShiftRight0~27_combout\ & \RotateRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~56_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \RotateRight0~30_combout\,
	combout => \ShiftRight0~89_combout\);

-- Location: LCCOMB_X58_Y32_N18
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\A~combout\(11) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B~combout\(11))))) # (!\A~combout\(11) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \B~combout\(11),
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X60_Y31_N6
\ShiftRight0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~92_combout\ = (\ShiftRight1~34_combout\) # ((\A~combout\(31) & (\ShiftLeft0~12_combout\ & \ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~34_combout\,
	datab => \A~combout\(31),
	datac => \ShiftLeft0~12_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~92_combout\);

-- Location: LCCOMB_X59_Y36_N26
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~123_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~123_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \RotateLeft0~77_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X58_Y32_N28
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(11) $ (\B~combout\(11))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(11) & !\B~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \B~combout\(11),
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X58_Y32_N6
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & (((\Mux24~3_combout\) # (!\Mux31~6_combout\)))) # (!\Mux24~4_combout\ & (\ShiftRight0~92_combout\ & ((\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~92_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux24~4_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X58_Y32_N8
\Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux31~4_combout\ & ((\Mux24~2_combout\ & (\Mux24~5_combout\)) # (!\Mux24~2_combout\ & ((\Add0~22_combout\))))) # (!\Mux31~4_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Add0~22_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X56_Y31_N6
\ShiftRight0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~93_combout\ = (\B~combout\(2) & ((\B~combout\(3) & ((\RotateRight0~66_combout\))) # (!\B~combout\(3) & (\RotateRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~47_combout\,
	datab => \B~combout\(2),
	datac => \RotateRight0~66_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~93_combout\);

-- Location: LCCOMB_X58_Y31_N18
\ShiftRight0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~95_combout\ = (\ShiftRight0~27_combout\ & ((\ShiftRight0~19_combout\) # ((\B~combout\(1) & \RotateRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \B~combout\(1),
	datac => \ShiftRight0~19_combout\,
	datad => \RotateRight0~9_combout\,
	combout => \ShiftRight0~95_combout\);

-- Location: LCCOMB_X59_Y32_N16
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux31~1_combout\ & (((\A~combout\(31))) # (!\Mux31~0_combout\))) # (!\Mux31~1_combout\ & (\Mux31~0_combout\ & ((\ShiftRight1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~40_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X58_Y36_N22
\Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~128_combout\) # ((\ShiftLeft0~14_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \RotateLeft0~128_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X58_Y32_N10
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(12) $ (\B~combout\(12))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(12) & !\B~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \B~combout\(12),
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X58_Y32_N4
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~4_combout\ & ((\Mux23~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux23~4_combout\ & (((\ShiftRight0~95_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \Mux23~3_combout\,
	datac => \ShiftRight0~95_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X54_Y36_N12
\RotateLeft0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~131_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~91_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~91_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~19_combout\,
	combout => \RotateLeft0~131_combout\);

-- Location: LCCOMB_X57_Y31_N14
\ShiftRight0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~96_combout\ = (\B~combout\(2) & ((\B~combout\(3) & ((\ShiftRight0~22_combout\))) # (!\B~combout\(3) & (\ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	combout => \ShiftRight0~96_combout\);

-- Location: LCCOMB_X56_Y35_N10
\ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\B~combout\(1) & (\A~combout\(31))) # (!\B~combout\(1) & ((\ShiftRight0~27_combout\ & ((\RotateRight0~19_combout\))) # (!\ShiftRight0~27_combout\ & (\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \B~combout\(1),
	datac => \ShiftRight0~27_combout\,
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X56_Y35_N12
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~35_combout\)) # (!\Mux31~0_combout\ & ((\Add1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datab => \Mux31~1_combout\,
	datac => \Add1~26_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X53_Y35_N8
\RotateRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~70_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & ((\ShiftRight0~45_combout\))) # (!\B~combout\(0) & (\ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~11_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \RotateRight0~70_combout\);

-- Location: LCCOMB_X56_Y35_N22
\Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\RotateRight0~71_combout\)) # (!\Mux31~1_combout\))) # (!\Mux22~0_combout\ & (\Mux31~1_combout\ & (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \RotateRight0~71_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X59_Y33_N10
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\A~combout\(13) & ((\Mux31~5_combout\) # ((\B~combout\(13) & !\Mux31~4_combout\)))) # (!\A~combout\(13) & (\Mux31~5_combout\ & ((\B~combout\(13)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \Mux31~5_combout\,
	datac => \B~combout\(13),
	datad => \Mux31~4_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X54_Y32_N16
\ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (!\B~combout\(0) & (!\B~combout\(2) & (!\B~combout\(1) & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(2),
	datac => \B~combout\(1),
	datad => \B~combout\(3),
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X56_Y32_N12
\ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\ShiftRight1~36_combout\ & ((\A~combout\(30)))) # (!\ShiftRight1~36_combout\ & (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~36_combout\,
	datac => \A~combout\(31),
	datad => \A~combout\(30),
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X56_Y32_N22
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & (\A~combout\(31))) # (!\Mux31~1_combout\ & ((\ShiftRight1~37_combout\))))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight1~37_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X56_Y32_N16
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux31~0_combout\ & (((\Mux21~4_combout\)))) # (!\Mux31~0_combout\ & ((\Mux21~4_combout\ & ((\RotateRight0~72_combout\))) # (!\Mux21~4_combout\ & (\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Add1~28_combout\,
	datac => \RotateRight0~72_combout\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X58_Y36_N0
\Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~138_combout\) # ((\ShiftLeft0~16_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~138_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X52_Y35_N6
\ShiftRight0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~103_combout\ = (\ShiftRight0~16_combout\ & ((\B~combout\(0) & ((\RotateRight0~8_combout\))) # (!\B~combout\(0) & (\RotateRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~8_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~103_combout\);

-- Location: LCCOMB_X56_Y31_N20
\Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\ShiftRight0~111_combout\) # ((\ShiftRight0~102_combout\) # ((\ShiftRight0~23_combout\ & \RotateRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateRight0~66_combout\,
	datac => \ShiftRight0~111_combout\,
	datad => \ShiftRight0~102_combout\,
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X53_Y32_N4
\Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\B~combout\(4) & (\ShiftRight1~36_combout\ & (\A~combout\(31)))) # (!\B~combout\(4) & (((\Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~36_combout\,
	datab => \A~combout\(31),
	datac => \Mux20~8_combout\,
	datad => \B~combout\(4),
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X53_Y32_N14
\Mux20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = (\opcode~combout\(3) & (!\ShiftLeft0~8_combout\ & (\Mux20~9_combout\ & \opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \ShiftLeft0~8_combout\,
	datac => \Mux20~9_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux20~10_combout\);

-- Location: LCCOMB_X59_Y36_N20
\ShiftLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (!\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~83_combout\))) # (!\B~combout\(2) & (\RotateLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~81_combout\,
	datac => \RotateLeft0~83_combout\,
	datad => \B~combout\(3),
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X53_Y32_N0
\Mux20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = (\Mux20~17_combout\) # ((\Mux20~10_combout\) # ((!\opcode~combout\(3) & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~17_combout\,
	datab => \opcode~combout\(3),
	datac => \Add0~30_combout\,
	datad => \Mux20~10_combout\,
	combout => \Mux20~11_combout\);

-- Location: LCCOMB_X53_Y36_N6
\Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!\opcode~combout\(0) & (\opcode~combout\(3) & \B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(3),
	datad => \B~combout\(4),
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X53_Y32_N18
\Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\opcode~combout\(3) & (((!\Mux20~4_combout\ & \ShiftRight0~28_combout\)))) # (!\opcode~combout\(3) & (\Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \opcode~combout\(3),
	datac => \Mux20~4_combout\,
	datad => \ShiftRight0~28_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X53_Y36_N12
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (!\opcode~combout\(3) & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(3),
	datad => \Add0~32_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X61_Y35_N30
\Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux31~5_combout\ & ((\B~combout\(18)) # ((\Mux31~4_combout\) # (\A~combout\(18))))) # (!\Mux31~5_combout\ & (\B~combout\(18) & (!\Mux31~4_combout\ & \A~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B~combout\(18),
	datac => \Mux31~4_combout\,
	datad => \A~combout\(18),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X58_Y36_N26
\Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (!\ShiftLeft0~7_combout\ & (\ShiftRight0~27_combout\ & (!\ShiftLeft0~4_combout\ & \ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X61_Y35_N24
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(18) $ (\B~combout\(18))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(18) & !\B~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \B~combout\(18),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X61_Y35_N2
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~4_combout\ & ((\Mux17~3_combout\) # ((!\Mux15~0_combout\)))) # (!\Mux17~4_combout\ & (((\ShiftRight0~57_combout\ & \Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \ShiftRight0~57_combout\,
	datac => \Mux17~4_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X61_Y35_N20
\Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux31~4_combout\ & ((\Mux17~2_combout\ & (\Mux17~5_combout\)) # (!\Mux17~2_combout\ & ((\Add0~36_combout\))))) # (!\Mux31~4_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux17~5_combout\,
	datac => \Add0~36_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X57_Y35_N18
\Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux15~1_combout\ & ((\Mux15~2_combout\ & ((!\RotateLeft0~79_combout\))) # (!\Mux15~2_combout\ & (!\Mux16~6_combout\)))) # (!\Mux15~1_combout\ & (\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux16~6_combout\,
	datad => \RotateLeft0~79_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X56_Y35_N24
\Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\opcode~combout\(0) & ((\RotateRight0~44_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~44_combout\,
	datab => \opcode~combout\(0),
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~18_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X56_Y35_N18
\Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~8_combout\ & (((\ShiftRight0~64_combout\) # (!\Mux20~4_combout\)))) # (!\Mux16~8_combout\ & (\A~combout\(31) & (\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Mux16~8_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight0~64_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X57_Y31_N24
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~49_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \RotateRight0~49_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X59_Y34_N6
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~51_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~23_combout\,
	datab => \RotateRight0~51_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X59_Y34_N8
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\ShiftRight0~74_combout\)) # (!\Mux20~4_combout\))) # (!\Mux14~0_combout\ & (\Mux20~4_combout\ & ((\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~74_combout\,
	datad => \A~combout\(31),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X59_Y30_N10
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\opcode~combout\(0) & ((\RotateRight0~52_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~52_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~27_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X60_Y35_N24
\Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\ShiftRight0~77_combout\)) # (!\Mux20~4_combout\))) # (!\Mux13~2_combout\ & (\Mux20~4_combout\ & (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux20~4_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~77_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X58_Y33_N0
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\A~combout\(22) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \B~combout\(22))))) # (!\A~combout\(22) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\B~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \Mux31~4_combout\,
	datac => \B~combout\(22),
	datad => \Mux31~5_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X60_Y33_N26
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(22) $ (\A~combout\(22))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(22) & !\A~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X60_Y33_N12
\Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux15~0_combout\ & ((\Mux13~5_combout\ & (\Mux13~11_combout\)) # (!\Mux13~5_combout\ & ((\ShiftRight0~75_combout\))))) # (!\Mux15~0_combout\ & (((\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux13~11_combout\,
	datac => \ShiftRight0~75_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X60_Y33_N6
\Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~4_combout\ & (((\Mux13~6_combout\) # (!\Mux31~4_combout\)))) # (!\Mux13~4_combout\ & (\Add0~44_combout\ & (\Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Mux13~4_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X59_Y30_N20
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\opcode~combout\(0) & ((\RotateRight0~55_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~55_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~30_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X60_Y33_N2
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & (\B~combout\(23) $ (\A~combout\(23)))) # (!\opcode~combout\(0) & (!\B~combout\(23) & !\A~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \B~combout\(23),
	datad => \A~combout\(23),
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X60_Y33_N20
\Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux15~0_combout\ & ((\Mux12~5_combout\ & ((\Mux12~11_combout\))) # (!\Mux12~5_combout\ & (\ShiftRight0~79_combout\)))) # (!\Mux15~0_combout\ & (((\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \ShiftRight0~79_combout\,
	datac => \Mux12~11_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X59_Y30_N24
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~57_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \RotateRight0~57_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X59_Y30_N26
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\ShiftRight0~85_combout\)) # (!\Mux20~4_combout\))) # (!\Mux11~0_combout\ & (\Mux20~4_combout\ & (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~85_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X57_Y32_N8
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~108_combout\) # ((\Mux27~0_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \RotateLeft0~108_combout\,
	datac => \Mux27~0_combout\,
	datad => \B~combout\(3),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X57_Y32_N10
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(24) & (!\B~combout\(24) & \opcode~combout\(0))) # (!\A~combout\(24) & (\B~combout\(24) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \A~combout\(24),
	datac => \B~combout\(24),
	datad => \opcode~combout\(0),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X57_Y32_N12
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~4_combout\ & ((\Mux11~3_combout\) # ((!\Mux15~0_combout\)))) # (!\Mux11~4_combout\ & (((\ShiftRight0~83_combout\ & \Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux11~3_combout\,
	datac => \ShiftRight0~83_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X60_Y34_N24
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~113_combout\) # ((\ShiftRight0~23_combout\ & \ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \RotateLeft0~113_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X61_Y34_N26
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(25) & (\opcode~combout\(0) & !\B~combout\(25))) # (!\A~combout\(25) & (\opcode~combout\(0) $ (!\B~combout\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \B~combout\(25),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X61_Y34_N20
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux15~0_combout\ & ((\Mux10~4_combout\ & ((\Mux10~3_combout\))) # (!\Mux10~4_combout\ & (\ShiftRight0~86_combout\)))) # (!\Mux15~0_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~86_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X59_Y32_N8
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\opcode~combout\(0) & (((\RotateRight0~63_combout\) # (\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (\ShiftRight1~33_combout\ & ((!\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight1~33_combout\,
	datac => \RotateRight0~63_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X60_Y35_N16
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux20~4_combout\ & ((\Mux9~0_combout\ & ((\ShiftRight0~91_combout\))) # (!\Mux9~0_combout\ & (\A~combout\(31))))) # (!\Mux20~4_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~91_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X61_Y34_N24
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\B~combout\(26)) # (\A~combout\(26))))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\B~combout\(26) & \A~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \B~combout\(26),
	datad => \A~combout\(26),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X59_Y36_N0
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~118_combout\) # ((\ShiftRight0~23_combout\ & \ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \RotateLeft0~118_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X61_Y34_N2
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(26) & (\opcode~combout\(0) & !\A~combout\(26))) # (!\B~combout\(26) & (\opcode~combout\(0) $ (!\A~combout\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \A~combout\(26),
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X61_Y34_N4
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux15~0_combout\ & ((\Mux9~4_combout\ & ((\Mux9~3_combout\))) # (!\Mux9~4_combout\ & (\ShiftRight0~89_combout\)))) # (!\Mux15~0_combout\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~89_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X61_Y34_N6
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~2_combout\ & (((\Mux9~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux9~2_combout\ & (\Add0~52_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Mux9~5_combout\,
	datac => \Mux9~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X59_Y34_N10
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\opcode~combout\(0) & ((\RotateRight0~65_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~65_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X59_Y36_N10
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~123_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \RotateLeft0~123_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \RotateLeft0~77_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X58_Y32_N16
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(27) $ (\A~combout\(27))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(27) & !\A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \A~combout\(27),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X58_Y32_N2
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & ((\Mux8~3_combout\) # ((!\Mux15~0_combout\)))) # (!\Mux8~4_combout\ & (((\Mux15~0_combout\ & \ShiftRight0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux15~0_combout\,
	datad => \ShiftRight0~92_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X58_Y32_N30
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\B~combout\(28) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A~combout\(28))))) # (!\B~combout\(28) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \A~combout\(28),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X58_Y36_N24
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~128_combout\) # ((\ShiftLeft0~14_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \RotateLeft0~128_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \B~combout\(3),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X58_Y32_N24
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(28) $ (\A~combout\(28))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(28) & !\A~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \A~combout\(28),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X58_Y32_N26
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\Mux7~3_combout\) # (!\Mux15~0_combout\)))) # (!\Mux7~4_combout\ & (\ShiftRight0~95_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \ShiftRight0~95_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X58_Y32_N12
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux31~4_combout\ & ((\Mux7~2_combout\ & ((\Mux7~5_combout\))) # (!\Mux7~2_combout\ & (\Add0~56_combout\)))) # (!\Mux31~4_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Mux7~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X57_Y36_N24
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux15~2_combout\ & (((\Mux15~1_combout\ & \RotateLeft0~130_combout\)))) # (!\Mux15~2_combout\ & ((\Mux7~6_combout\) # ((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux15~1_combout\,
	datad => \RotateLeft0~130_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X58_Y36_N18
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~138_combout\) # ((\ShiftLeft0~16_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \RotateLeft0~138_combout\,
	datad => \B~combout\(3),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X59_Y33_N2
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(30) & (!\A~combout\(30) & \opcode~combout\(0))) # (!\B~combout\(30) & (\A~combout\(30) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X59_Y33_N20
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux15~0_combout\ & ((\Mux5~4_combout\ & ((\Mux5~3_combout\))) # (!\Mux5~4_combout\ & (\ShiftRight0~110_combout\)))) # (!\Mux15~0_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~110_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X53_Y36_N28
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\RotateLeft0~144_combout\) # ((\RotateLeft0~143_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~144_combout\,
	datac => \RotateLeft0~73_combout\,
	datad => \RotateLeft0~143_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X53_Y32_N24
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\opcode~combout\(0) & (((\ShiftRight1~36_combout\ & \A~combout\(31))))) # (!\opcode~combout\(0) & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \opcode~combout\(0),
	datac => \ShiftRight1~36_combout\,
	datad => \A~combout\(31),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X57_Y36_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux10~9_combout\ & (!\Mux9~9_combout\ & (!\Mux7~9_combout\ & !\Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~9_combout\,
	datab => \Mux9~9_combout\,
	datac => \Mux7~9_combout\,
	datad => \Mux8~9_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X58_Y35_N20
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux34~11_combout\ & !\Mux33~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~11_combout\,
	datad => \Mux33~11_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X52_Y33_N10
\Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (!\opcode~combout\(2) & \opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X60_Y32_N24
\ShiftRight0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~105_combout\ = (\B~combout\(2) & (\B~combout\(3) & \ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \ShiftRight0~56_combout\,
	combout => \ShiftRight0~105_combout\);

-- Location: LCCOMB_X58_Y36_N28
\Mux33~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~12_combout\ = (!\B~combout\(2) & (!\B~combout\(4) & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \B~combout\(4),
	datad => \B~combout\(3),
	combout => \Mux33~12_combout\);

-- Location: LCCOMB_X57_Y31_N22
\ShiftRight0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~107_combout\ = (\ShiftRight0~66_combout\ & (((\B~combout\(3)) # (!\ShiftRight0~22_combout\)) # (!\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \ShiftRight0~66_combout\,
	datac => \B~combout\(3),
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~107_combout\);

-- Location: LCCOMB_X60_Y32_N20
\RotateRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~78_combout\ = (!\B~combout\(2) & (\B~combout\(3) & ((\RotateRight0~31_combout\) # (\ShiftRight0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~31_combout\,
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \ShiftRight0~56_combout\,
	combout => \RotateRight0~78_combout\);

-- Location: LCCOMB_X60_Y34_N20
\ShiftRight0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~109_combout\ = (\ShiftRight0~43_combout\ & (!\B~combout\(2) & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \ShiftRight0~109_combout\);

-- Location: LCCOMB_X52_Y34_N20
\Mux20~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~16_combout\ = (\opcode~combout\(0) & ((\RotateRight0~75_combout\))) # (!\opcode~combout\(0) & (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datac => \RotateRight0~75_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux20~16_combout\);

-- Location: LCCOMB_X53_Y32_N12
\Mux20~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~17_combout\ = (\ShiftRight0~72_combout\ & (\ShiftLeft0~19_combout\ & (\opcode~combout\(3) & !\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \ShiftLeft0~19_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(0),
	combout => \Mux20~17_combout\);

-- Location: LCCOMB_X58_Y36_N14
\Mux13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (!\ShiftLeft0~7_combout\ & (\ShiftLeft0~16_combout\ & (!\ShiftLeft0~4_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \B~combout\(3),
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X59_Y36_N12
\Mux12~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & (\ShiftLeft0~17_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~17_combout\,
	datad => \B~combout\(3),
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X54_Y32_N26
\Mux35~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~13_combout\ = (\B~combout\(0) & ((\opcode~combout\(0)) # ((!\opcode~combout\(3) & \A~combout\(0))))) # (!\B~combout\(0) & ((\A~combout\(0) & ((\opcode~combout\(0)))) # (!\A~combout\(0) & (\opcode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(0),
	datad => \A~combout\(0),
	combout => \Mux35~13_combout\);

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(18),
	combout => \B~combout\(18));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(27),
	combout => \B~combout\(27));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(30),
	combout => \B~combout\(30));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(3),
	combout => \opcode~combout\(3));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X56_Y34_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B~combout\(0) & (\A~combout\(0) $ (VCC))) # (!\B~combout\(0) & ((\A~combout\(0)) # (GND)))
-- \Add1~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: LCCOMB_X53_Y32_N16
\Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\opcode~combout\(3) & ((\opcode~combout\(0)))) # (!\opcode~combout\(3) & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(0),
	combout => \Mux35~0_combout\);

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X51_Y35_N26
\RotateRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~15_combout\ = (\B~combout\(1) & (\A~combout\(14))) # (!\B~combout\(1) & ((\A~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(14),
	datac => \A~combout\(12),
	datad => \B~combout\(1),
	combout => \RotateRight0~15_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: LCCOMB_X51_Y35_N24
\ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\B~combout\(1) & (\A~combout\(15))) # (!\B~combout\(1) & ((\A~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datac => \A~combout\(13),
	datad => \B~combout\(1),
	combout => \ShiftRight0~34_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X54_Y36_N18
\RotateRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~11_combout\ = (\B~combout\(2) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \RotateRight0~11_combout\);

-- Location: LCCOMB_X51_Y35_N20
\ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & ((\ShiftRight0~34_combout\))) # (!\B~combout\(0) & (\RotateRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~15_combout\,
	datac => \ShiftRight0~34_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X54_Y36_N16
\ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (!\B~combout\(2) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \ShiftRight0~23_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X60_Y37_N8
\ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\B~combout\(1) & (\A~combout\(3))) # (!\B~combout\(1) & ((\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \ShiftRight0~29_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X60_Y37_N26
\RotateRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~13_combout\ = (\B~combout\(1) & ((\A~combout\(2)))) # (!\B~combout\(1) & (\A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \RotateRight0~13_combout\);

-- Location: LCCOMB_X59_Y31_N8
\ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\B~combout\(0) & (\ShiftRight0~29_combout\)) # (!\B~combout\(0) & ((\RotateRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~29_combout\,
	datac => \RotateRight0~13_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X60_Y36_N16
\ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (!\B~combout\(2) & !\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \ShiftRight0~27_combout\);

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X56_Y37_N26
\RotateRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~14_combout\ = (\B~combout\(1) & ((\A~combout\(6)))) # (!\B~combout\(1) & (\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(6),
	datac => \B~combout\(1),
	combout => \RotateRight0~14_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X56_Y37_N8
\ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\B~combout\(1) & (\A~combout\(7))) # (!\B~combout\(1) & ((\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datac => \B~combout\(1),
	datad => \A~combout\(5),
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X59_Y31_N18
\ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\B~combout\(0) & ((\ShiftRight0~31_combout\))) # (!\B~combout\(0) & (\RotateRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateRight0~14_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X58_Y31_N26
\ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\ShiftRight0~16_combout\ & ((\ShiftRight0~32_combout\) # ((\ShiftRight0~30_combout\ & \ShiftRight0~27_combout\)))) # (!\ShiftRight0~16_combout\ & (\ShiftRight0~30_combout\ & (\ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X58_Y31_N20
\ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\ShiftRight0~35_combout\) # ((\ShiftRight0~33_combout\) # ((\ShiftRight0~37_combout\ & \ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~33_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X53_Y32_N26
\Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\B~combout\(4) & (\ShiftRight0~28_combout\)) # (!\B~combout\(4) & ((\ShiftRight0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftRight0~38_combout\,
	datad => \B~combout\(4),
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X53_Y32_N8
\Mux35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux35~2_combout\) # ((\Mux35~0_combout\ & ((\Mux35~1_combout\) # (!\opcode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~2_combout\,
	datab => \opcode~combout\(3),
	datac => \Mux35~0_combout\,
	datad => \Mux35~1_combout\,
	combout => \Mux35~3_combout\);

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(31),
	combout => \B~combout\(31));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(31),
	combout => \A~combout\(31));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(30),
	combout => \A~combout\(30));

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(29),
	combout => \B~combout\(29));

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(28),
	combout => \B~combout\(28));

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(27),
	combout => \A~combout\(27));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(26),
	combout => \B~combout\(26));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(25),
	combout => \B~combout\(25));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(24),
	combout => \B~combout\(24));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(21),
	combout => \B~combout\(21));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(17),
	combout => \B~combout\(17));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(15),
	combout => \B~combout\(15));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(13),
	combout => \B~combout\(13));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(12),
	combout => \B~combout\(12));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(10),
	combout => \B~combout\(10));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X53_Y34_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X53_Y34_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\LessThan0~1_cout\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X53_Y34_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A~combout\(2) & (\B~combout\(2) & !\LessThan0~3_cout\)) # (!\A~combout\(2) & ((\B~combout\(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X53_Y34_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\LessThan0~5_cout\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X53_Y34_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\LessThan0~7_cout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X53_Y34_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\LessThan0~9_cout\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X53_Y34_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan0~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X53_Y34_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B~combout\(7) & (\A~combout\(7) & !\LessThan0~13_cout\)) # (!\B~combout\(7) & ((\A~combout\(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X53_Y34_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\B~combout\(8) & ((!\LessThan0~15_cout\) # (!\A~combout\(8)))) # (!\B~combout\(8) & (!\A~combout\(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X53_Y34_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\B~combout\(9) & (\A~combout\(9) & !\LessThan0~17_cout\)) # (!\B~combout\(9) & ((\A~combout\(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X53_Y34_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\A~combout\(10) & (\B~combout\(10) & !\LessThan0~19_cout\)) # (!\A~combout\(10) & ((\B~combout\(10)) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \B~combout\(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X53_Y34_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\B~combout\(11) & (\A~combout\(11) & !\LessThan0~21_cout\)) # (!\B~combout\(11) & ((\A~combout\(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \A~combout\(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X53_Y34_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\A~combout\(12) & (\B~combout\(12) & !\LessThan0~23_cout\)) # (!\A~combout\(12) & ((\B~combout\(12)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(12),
	datab => \B~combout\(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X53_Y34_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A~combout\(13) & ((!\LessThan0~25_cout\) # (!\B~combout\(13)))) # (!\A~combout\(13) & (!\B~combout\(13) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X53_Y34_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\B~combout\(14) & ((!\LessThan0~27_cout\) # (!\A~combout\(14)))) # (!\B~combout\(14) & (!\A~combout\(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X53_Y34_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\A~combout\(15) & ((!\LessThan0~29_cout\) # (!\B~combout\(15)))) # (!\A~combout\(15) & (!\B~combout\(15) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X53_Y33_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\B~combout\(16) & ((!\LessThan0~31_cout\) # (!\A~combout\(16)))) # (!\B~combout\(16) & (!\A~combout\(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X53_Y33_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\A~combout\(17) & ((!\LessThan0~33_cout\) # (!\B~combout\(17)))) # (!\A~combout\(17) & (!\B~combout\(17) & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \B~combout\(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X53_Y33_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B~combout\(18) & ((!\LessThan0~35_cout\) # (!\A~combout\(18)))) # (!\B~combout\(18) & (!\A~combout\(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X53_Y33_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\B~combout\(19) & (\A~combout\(19) & !\LessThan0~37_cout\)) # (!\B~combout\(19) & ((\A~combout\(19)) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X53_Y33_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\B~combout\(20) & ((!\LessThan0~39_cout\) # (!\A~combout\(20)))) # (!\B~combout\(20) & (!\A~combout\(20) & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X53_Y33_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\A~combout\(21) & ((!\LessThan0~41_cout\) # (!\B~combout\(21)))) # (!\A~combout\(21) & (!\B~combout\(21) & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X53_Y33_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B~combout\(22) & ((!\LessThan0~43_cout\) # (!\A~combout\(22)))) # (!\B~combout\(22) & (!\A~combout\(22) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X53_Y33_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B~combout\(23) & (\A~combout\(23) & !\LessThan0~45_cout\)) # (!\B~combout\(23) & ((\A~combout\(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X53_Y33_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A~combout\(24) & (\B~combout\(24) & !\LessThan0~47_cout\)) # (!\A~combout\(24) & ((\B~combout\(24)) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X53_Y33_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\A~combout\(25) & ((!\LessThan0~49_cout\) # (!\B~combout\(25)))) # (!\A~combout\(25) & (!\B~combout\(25) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \B~combout\(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X53_Y33_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A~combout\(26) & (\B~combout\(26) & !\LessThan0~51_cout\)) # (!\A~combout\(26) & ((\B~combout\(26)) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X53_Y33_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\B~combout\(27) & (\A~combout\(27) & !\LessThan0~53_cout\)) # (!\B~combout\(27) & ((\A~combout\(27)) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X53_Y33_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\A~combout\(28) & (\B~combout\(28) & !\LessThan0~55_cout\)) # (!\A~combout\(28) & ((\B~combout\(28)) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \B~combout\(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X53_Y33_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\A~combout\(29) & ((!\LessThan0~57_cout\) # (!\B~combout\(29)))) # (!\A~combout\(29) & (!\B~combout\(29) & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X53_Y33_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\B~combout\(30) & ((!\LessThan0~59_cout\) # (!\A~combout\(30)))) # (!\B~combout\(30) & (!\A~combout\(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X53_Y33_N30
\LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\B~combout\(31) & (\LessThan0~61_cout\ & \A~combout\(31))) # (!\B~combout\(31) & ((\LessThan0~61_cout\) # (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X54_Y32_N2
\Mux35~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~10_combout\ = (!\opcode~combout\(3) & ((\opcode~combout\(0) & (\LessThan1~62_combout\)) # (!\opcode~combout\(0) & ((\LessThan0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~62_combout\,
	datab => \LessThan0~62_combout\,
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(3),
	combout => \Mux35~10_combout\);

-- Location: LCCOMB_X54_Y32_N12
\Mux35~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~11_combout\ = (\Mux35~9_combout\) # (\Mux35~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~9_combout\,
	datad => \Mux35~10_combout\,
	combout => \Mux35~11_combout\);

-- Location: LCCOMB_X58_Y32_N0
\ShiftLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\B~combout\(27)) # ((\B~combout\(26)) # ((\B~combout\(25)) # (\B~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \B~combout\(26),
	datac => \B~combout\(25),
	datad => \B~combout\(28),
	combout => \ShiftLeft0~6_combout\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(23),
	combout => \B~combout\(23));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(22),
	combout => \B~combout\(22));

-- Location: LCCOMB_X60_Y33_N24
\ShiftLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\B~combout\(21)) # ((\B~combout\(23)) # ((\B~combout\(22)) # (\B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(21),
	datab => \B~combout\(23),
	datac => \B~combout\(22),
	datad => \B~combout\(24),
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X59_Y33_N16
\ShiftLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\B~combout\(30)) # ((\ShiftLeft0~6_combout\) # ((\ShiftLeft0~5_combout\) # (\B~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \ShiftLeft0~6_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \B~combout\(29),
	combout => \ShiftLeft0~7_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(8),
	combout => \B~combout\(8));

-- Location: LCCOMB_X58_Y34_N0
\ShiftLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\B~combout\(7)) # ((\B~combout\(5)) # ((\B~combout\(8)) # (\B~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \B~combout\(5),
	datac => \B~combout\(8),
	datad => \B~combout\(6),
	combout => \ShiftLeft0~0_combout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(20),
	combout => \B~combout\(20));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(19),
	combout => \B~combout\(19));

-- Location: LCCOMB_X58_Y34_N4
\ShiftLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\B~combout\(18)) # ((\B~combout\(20)) # ((\B~combout\(19)) # (\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \B~combout\(20),
	datac => \B~combout\(19),
	datad => \B~combout\(17),
	combout => \ShiftLeft0~3_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(16),
	combout => \B~combout\(16));

-- Location: LCCOMB_X58_Y37_N24
\ShiftLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\B~combout\(14)) # ((\B~combout\(16)) # ((\B~combout\(13)) # (\B~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \B~combout\(16),
	datac => \B~combout\(13),
	datad => \B~combout\(15),
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X58_Y34_N22
\ShiftLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\ShiftLeft0~1_combout\) # ((\ShiftLeft0~0_combout\) # ((\ShiftLeft0~3_combout\) # (\ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X52_Y34_N0
\ShiftLeft0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X53_Y32_N10
\ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (!\ShiftLeft0~8_combout\ & ((\B~combout\(4) & (\ShiftRight0~28_combout\)) # (!\B~combout\(4) & ((\ShiftRight0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftRight0~38_combout\,
	datad => \B~combout\(4),
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X54_Y32_N22
\Mux35~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~7_combout\ = (\Mux35~6_combout\) # ((\opcode~combout\(3) & (\opcode~combout\(0) & \ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~6_combout\,
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(0),
	datad => \ShiftRight0~39_combout\,
	combout => \Mux35~7_combout\);

-- Location: LCCOMB_X57_Y34_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (VCC))) # (!\A~combout\(0) & (\B~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X54_Y32_N4
\Mux35~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~14_combout\ = (\Mux35~13_combout\ & (((\Add0~0_combout\) # (!\opcode~combout\(0))) # (!\opcode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~13_combout\,
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(0),
	datad => \Add0~0_combout\,
	combout => \Mux35~14_combout\);

-- Location: LCCOMB_X54_Y32_N0
\Mux35~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~8_combout\ = (\opcode~combout\(1) & ((\Mux35~7_combout\) # ((\opcode~combout\(2))))) # (!\opcode~combout\(1) & (((\Mux35~14_combout\ & !\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux35~7_combout\,
	datac => \Mux35~14_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux35~8_combout\);

-- Location: LCCOMB_X54_Y32_N14
\Mux35~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~12_combout\ = (\opcode~combout\(2) & ((\Mux35~8_combout\ & ((\Mux35~11_combout\))) # (!\Mux35~8_combout\ & (\Mux35~3_combout\)))) # (!\opcode~combout\(2) & (((\Mux35~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~3_combout\,
	datab => \opcode~combout\(2),
	datac => \Mux35~11_combout\,
	datad => \Mux35~8_combout\,
	combout => \Mux35~12_combout\);

-- Location: LCCOMB_X56_Y37_N22
\ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\B~combout\(1) & (\A~combout\(8))) # (!\B~combout\(1) & ((\A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \A~combout\(6),
	datac => \B~combout\(1),
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X53_Y35_N6
\ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\B~combout\(0) & ((\ShiftRight0~52_combout\))) # (!\B~combout\(0) & (\ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \ShiftRight0~31_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X53_Y35_N0
\ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\B~combout\(3) & (\ShiftRight0~51_combout\)) # (!\B~combout\(3) & ((\ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \B~combout\(3),
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X54_Y35_N16
\ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\ShiftRight0~49_combout\) # ((\B~combout\(2) & \ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datab => \B~combout\(2),
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X58_Y33_N10
\Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\opcode~combout\(1) & \opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux31~3_combout\);

-- Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LCCOMB_X52_Y34_N30
\Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\opcode~combout\(2) & (((\opcode~combout\(1))))) # (!\opcode~combout\(2) & ((\ShiftLeft0~8_combout\) # ((!\opcode~combout\(0)) # (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \ShiftLeft0~8_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X52_Y34_N4
\Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\opcode~combout\(2) & (!\opcode~combout\(0) & ((\ShiftLeft0~7_combout\) # (\ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X52_Y34_N16
\Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = ((\Mux31~8_combout\) # ((\Mux31~7_combout\) # (\B~combout\(4)))) # (!\opcode~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux31~8_combout\,
	datac => \Mux31~7_combout\,
	datad => \B~combout\(4),
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X58_Y35_N6
\Mux21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~14_combout\ = (\Mux31~9_combout\ & (((\opcode~combout\(3) & !\opcode~combout\(0))) # (!\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux31~3_combout\,
	datac => \opcode~combout\(0),
	datad => \Mux31~9_combout\,
	combout => \Mux21~14_combout\);

-- Location: LCCOMB_X60_Y37_N14
\RotateLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~40_combout\ = (!\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(3))) # (!\B~combout\(1) & ((\A~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(3),
	datac => \B~combout\(0),
	datad => \A~combout\(5),
	combout => \RotateLeft0~40_combout\);

-- Location: LCCOMB_X60_Y34_N0
\RotateLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~41_combout\ = (\RotateLeft0~39_combout\) # (\RotateLeft0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~39_combout\,
	datac => \RotateLeft0~40_combout\,
	combout => \RotateLeft0~41_combout\);

-- Location: LCCOMB_X56_Y36_N28
\RotateLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~42_combout\ = (\B~combout\(1) & ((\A~combout\(11)))) # (!\B~combout\(1) & (\A~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(13),
	datad => \A~combout\(11),
	combout => \RotateLeft0~42_combout\);

-- Location: LCCOMB_X56_Y36_N14
\RotateLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~43_combout\ = (\B~combout\(0) & (\RotateLeft0~1_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~42_combout\,
	combout => \RotateLeft0~43_combout\);

-- Location: LCCOMB_X54_Y37_N12
\RotateLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~44_combout\ = (\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~41_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~41_combout\,
	datac => \RotateLeft0~43_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~44_combout\);

-- Location: LCCOMB_X54_Y35_N4
\RotateLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~50_combout\ = (\RotateLeft0~44_combout\) # ((\RotateLeft0~49_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~49_combout\,
	datab => \RotateLeft0~44_combout\,
	datac => \B~combout\(2),
	combout => \RotateLeft0~50_combout\);

-- Location: LCCOMB_X58_Y33_N16
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\opcode~combout\(2) & ((\B~combout\(4)) # (!\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datad => \B~combout\(4),
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X52_Y34_N18
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\opcode~combout\(3) & ((\ShiftLeft0~4_combout\) # ((\ShiftLeft0~7_combout\) # (\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(0),
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X53_Y32_N28
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\opcode~combout\(0) & \opcode~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datad => \opcode~combout\(3),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X56_Y34_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (!\Add1~1\)) # (!\A~combout\(1) & ((\Add1~1\) # (GND))))) # (!\B~combout\(1) & ((\A~combout\(1) & (\Add1~1\ & VCC)) # (!\A~combout\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B~combout\(1) & ((!\Add1~1\) # (!\A~combout\(1)))) # (!\B~combout\(1) & (!\A~combout\(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X54_Y35_N26
\Mux34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\ShiftRight1~9_combout\)) # (!\Mux31~0_combout\ & ((\Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~9_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X52_Y35_N30
\RotateRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~17_combout\ = (\B~combout\(1) & ((\A~combout\(20)))) # (!\B~combout\(1) & (\A~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(18),
	datad => \A~combout\(20),
	combout => \RotateRight0~17_combout\);

-- Location: LCCOMB_X52_Y35_N0
\ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\B~combout\(0) & ((\RotateRight0~17_combout\))) # (!\B~combout\(0) & (\ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \B~combout\(0),
	datad => \RotateRight0~17_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X56_Y32_N0
\ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\B~combout\(2) & !\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X53_Y35_N16
\ShiftRight1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\ShiftRight0~41_combout\ & ((\ShiftRight0~16_combout\) # ((\ShiftRight0~27_combout\ & \ShiftRight0~40_combout\)))) # (!\ShiftRight0~41_combout\ & (\ShiftRight0~27_combout\ & (\ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight1~6_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(26),
	combout => \A~combout\(26));

-- Location: LCCOMB_X61_Y32_N26
\RotateRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~20_combout\ = (\B~combout\(1) & (\A~combout\(28))) # (!\B~combout\(1) & ((\A~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datac => \B~combout\(1),
	datad => \A~combout\(26),
	combout => \RotateRight0~20_combout\);

-- Location: LCCOMB_X61_Y32_N10
\ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\B~combout\(1) & ((\A~combout\(27)))) # (!\B~combout\(1) & (\A~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datac => \B~combout\(1),
	datad => \A~combout\(27),
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X61_Y32_N6
\RotateRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~21_combout\ = (\ShiftRight0~23_combout\ & ((\B~combout\(0) & (\RotateRight0~20_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~20_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \RotateRight0~21_combout\);

-- Location: LCCOMB_X54_Y35_N20
\RotateRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~24_combout\ = (\ShiftRight1~6_combout\) # ((\RotateRight0~21_combout\) # ((\RotateRight0~23_combout\ & \RotateRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~23_combout\,
	datab => \ShiftRight1~6_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~21_combout\,
	combout => \RotateRight0~24_combout\);

-- Location: LCCOMB_X54_Y35_N22
\Mux34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux31~1_combout\ & ((\Mux34~2_combout\ & (\RotateRight0~24_combout\)) # (!\Mux34~2_combout\ & ((\A~combout\(31)))))) # (!\Mux31~1_combout\ & (\Mux34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux34~2_combout\,
	datac => \RotateRight0~24_combout\,
	datad => \A~combout\(31),
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X54_Y35_N6
\Mux34~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~10_combout\ = (\Mux34~9_combout\ & ((\RotateLeft0~50_combout\) # ((!\Mux31~2_combout\)))) # (!\Mux34~9_combout\ & (((\Mux31~2_combout\ & \Mux34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~9_combout\,
	datab => \RotateLeft0~50_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux34~3_combout\,
	combout => \Mux34~10_combout\);

-- Location: LCCOMB_X54_Y35_N2
\Mux34~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~11_combout\ = (\ShiftRight0~55_combout\ & (((\Mux21~14_combout\ & \Mux34~10_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~55_combout\ & (\Mux21~14_combout\ & ((\Mux34~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux21~14_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux34~10_combout\,
	combout => \Mux34~11_combout\);

-- Location: LCCOMB_X52_Y36_N22
\RotateLeft0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~33_combout\ = (\B~combout\(1) & ((\A~combout\(19)))) # (!\B~combout\(1) & (\A~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \A~combout\(19),
	datad => \B~combout\(1),
	combout => \RotateLeft0~33_combout\);

-- Location: LCCOMB_X52_Y36_N14
\RotateLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~56_combout\ = (\B~combout\(1) & (\A~combout\(20))) # (!\B~combout\(1) & ((\A~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datac => \A~combout\(22),
	datad => \B~combout\(1),
	combout => \RotateLeft0~56_combout\);

-- Location: LCCOMB_X54_Y36_N28
\RotateLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~57_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & (\RotateLeft0~33_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~33_combout\,
	datac => \RotateLeft0~56_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateLeft0~57_combout\);

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(25),
	combout => \A~combout\(25));

-- Location: LCCOMB_X52_Y36_N8
\RotateLeft0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~35_combout\ = (\B~combout\(1) & (\A~combout\(23))) # (!\B~combout\(1) & ((\A~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(23),
	datad => \A~combout\(25),
	combout => \RotateLeft0~35_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(24),
	combout => \A~combout\(24));

-- Location: LCCOMB_X52_Y36_N0
\RotateLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~58_combout\ = (\B~combout\(1) & (\A~combout\(24))) # (!\B~combout\(1) & ((\A~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(24),
	datad => \A~combout\(26),
	combout => \RotateLeft0~58_combout\);

-- Location: LCCOMB_X52_Y36_N2
\RotateLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~59_combout\ = (\B~combout\(0) & (\RotateLeft0~35_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~35_combout\,
	datad => \RotateLeft0~58_combout\,
	combout => \RotateLeft0~59_combout\);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(29),
	combout => \A~combout\(29));

-- Location: LCCOMB_X61_Y32_N24
\RotateLeft0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~30_combout\ = (\B~combout\(1) & ((\A~combout\(27)))) # (!\B~combout\(1) & (\A~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(29),
	datad => \A~combout\(27),
	combout => \RotateLeft0~30_combout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(28),
	combout => \A~combout\(28));

-- Location: LCCOMB_X61_Y32_N0
\RotateLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~53_combout\ = (\B~combout\(1) & ((\A~combout\(28)))) # (!\B~combout\(1) & (\A~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(30),
	datac => \B~combout\(1),
	datad => \A~combout\(28),
	combout => \RotateLeft0~53_combout\);

-- Location: LCCOMB_X61_Y32_N18
\RotateLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~54_combout\ = (\B~combout\(0) & (\RotateLeft0~30_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateLeft0~30_combout\,
	datad => \RotateLeft0~53_combout\,
	combout => \RotateLeft0~54_combout\);

-- Location: LCCOMB_X61_Y33_N24
\RotateLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~51_combout\ = (\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(31))) # (!\B~combout\(1) & ((\A~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \B~combout\(0),
	combout => \RotateLeft0~51_combout\);

-- Location: LCCOMB_X61_Y33_N10
\RotateLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~52_combout\ = (\ShiftLeft0~10_combout\) # (\RotateLeft0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datac => \RotateLeft0~51_combout\,
	combout => \RotateLeft0~52_combout\);

-- Location: LCCOMB_X59_Y37_N0
\RotateLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~55_combout\ = (\ShiftRight0~27_combout\ & ((\RotateLeft0~52_combout\) # ((\RotateLeft0~54_combout\ & \ShiftRight0~16_combout\)))) # (!\ShiftRight0~27_combout\ & (\RotateLeft0~54_combout\ & (\ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \RotateLeft0~54_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \RotateLeft0~52_combout\,
	combout => \RotateLeft0~55_combout\);

-- Location: LCCOMB_X59_Y37_N10
\RotateLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~60_combout\ = (\RotateLeft0~57_combout\) # ((\RotateLeft0~55_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~57_combout\,
	datac => \RotateLeft0~59_combout\,
	datad => \RotateLeft0~55_combout\,
	combout => \RotateLeft0~60_combout\);

-- Location: LCCOMB_X57_Y35_N8
\Mux33~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & ((\RotateLeft0~60_combout\))) # (!\Mux31~3_combout\ & (\Mux33~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~8_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux31~3_combout\,
	datad => \RotateLeft0~60_combout\,
	combout => \Mux33~9_combout\);

-- Location: LCCOMB_X56_Y36_N2
\RotateLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~64_combout\ = (\B~combout\(1) & ((\A~combout\(12)))) # (!\B~combout\(1) & (\A~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datac => \A~combout\(12),
	datad => \B~combout\(1),
	combout => \RotateLeft0~64_combout\);

-- Location: LCCOMB_X56_Y36_N12
\RotateLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~65_combout\ = (\B~combout\(0) & (\RotateLeft0~42_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~42_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~64_combout\,
	combout => \RotateLeft0~65_combout\);

-- Location: LCCOMB_X59_Y37_N20
\RotateLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~66_combout\ = (\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~63_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~63_combout\,
	datab => \RotateLeft0~65_combout\,
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \RotateLeft0~66_combout\);

-- Location: LCCOMB_X58_Y35_N18
\RotateLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~72_combout\ = (\RotateLeft0~66_combout\) # ((\RotateLeft0~71_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~71_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~66_combout\,
	combout => \RotateLeft0~72_combout\);

-- Location: LCCOMB_X57_Y35_N2
\Mux33~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~10_combout\ = (\Mux31~2_combout\ & ((\Mux33~9_combout\ & ((\RotateLeft0~72_combout\))) # (!\Mux33~9_combout\ & (\Mux33~3_combout\)))) # (!\Mux31~2_combout\ & (((\Mux33~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux33~9_combout\,
	datad => \RotateLeft0~72_combout\,
	combout => \Mux33~10_combout\);

-- Location: LCCOMB_X56_Y37_N0
\RotateRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~35_combout\ = (\B~combout\(1) & (\A~combout\(9))) # (!\B~combout\(1) & ((\A~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(9),
	datad => \A~combout\(7),
	combout => \RotateRight0~35_combout\);

-- Location: LCCOMB_X56_Y37_N18
\RotateRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~36_combout\ = (\B~combout\(0) & (\RotateRight0~35_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~35_combout\,
	datac => \B~combout\(0),
	datad => \ShiftRight0~52_combout\,
	combout => \RotateRight0~36_combout\);

-- Location: LCCOMB_X51_Y35_N0
\ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\B~combout\(1) & (\A~combout\(16))) # (!\B~combout\(1) & ((\A~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \A~combout\(14),
	datad => \B~combout\(1),
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X51_Y35_N18
\RotateRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~34_combout\ = (\B~combout\(0) & (\RotateRight0~33_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~33_combout\,
	datac => \B~combout\(0),
	datad => \ShiftRight0~50_combout\,
	combout => \RotateRight0~34_combout\);

-- Location: LCCOMB_X60_Y35_N0
\ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\B~combout\(3) & ((\RotateRight0~34_combout\))) # (!\B~combout\(3) & (\RotateRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~36_combout\,
	datac => \RotateRight0~34_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X58_Y35_N12
\ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\B~combout\(2) & ((\ShiftRight0~58_combout\))) # (!\B~combout\(2) & (\ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datab => \ShiftRight0~58_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X58_Y35_N22
\Mux33~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~11_combout\ = (\Mux21~14_combout\ & ((\Mux33~10_combout\) # ((!\Mux31~9_combout\ & \ShiftRight0~60_combout\)))) # (!\Mux21~14_combout\ & (((!\Mux31~9_combout\ & \ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux33~10_combout\,
	datac => \Mux31~9_combout\,
	datad => \ShiftRight0~60_combout\,
	combout => \Mux33~11_combout\);

-- Location: LCCOMB_X56_Y37_N12
\RotateRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~39_combout\ = (\B~combout\(1) & ((\A~combout\(5)))) # (!\B~combout\(1) & (\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(1),
	datad => \A~combout\(5),
	combout => \RotateRight0~39_combout\);

-- Location: LCCOMB_X59_Y31_N26
\RotateRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~46_combout\ = (\B~combout\(0) & (\RotateRight0~14_combout\)) # (!\B~combout\(0) & ((\RotateRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateRight0~14_combout\,
	datad => \RotateRight0~39_combout\,
	combout => \RotateRight0~46_combout\);

-- Location: LCCOMB_X56_Y31_N0
\ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\RotateRight0~45_combout\)) # (!\B~combout\(3) & ((\RotateRight0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~45_combout\,
	datab => \B~combout\(2),
	datac => \RotateRight0~46_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~62_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: LCCOMB_X56_Y36_N26
\RotateRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~16_combout\ = (\B~combout\(1) & ((\A~combout\(10)))) # (!\B~combout\(1) & (\A~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(8),
	datac => \A~combout\(10),
	datad => \B~combout\(1),
	combout => \RotateRight0~16_combout\);

-- Location: LCCOMB_X56_Y36_N20
\RotateRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~48_combout\ = (\B~combout\(0) & ((\RotateRight0~16_combout\))) # (!\B~combout\(0) & (\RotateRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \RotateRight0~35_combout\,
	datad => \RotateRight0~16_combout\,
	combout => \RotateRight0~48_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: LCCOMB_X51_Y35_N16
\RotateRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~33_combout\ = (\B~combout\(1) & ((\A~combout\(17)))) # (!\B~combout\(1) & (\A~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datac => \A~combout\(17),
	datad => \B~combout\(1),
	combout => \RotateRight0~33_combout\);

-- Location: LCCOMB_X52_Y35_N14
\RotateRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~12_combout\ = (\B~combout\(1) & ((\A~combout\(18)))) # (!\B~combout\(1) & (\A~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(16),
	datac => \A~combout\(18),
	datad => \B~combout\(1),
	combout => \RotateRight0~12_combout\);

-- Location: LCCOMB_X52_Y35_N16
\RotateRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~47_combout\ = (\B~combout\(0) & ((\RotateRight0~12_combout\))) # (!\B~combout\(0) & (\RotateRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~33_combout\,
	datac => \RotateRight0~12_combout\,
	datad => \B~combout\(0),
	combout => \RotateRight0~47_combout\);

-- Location: LCCOMB_X56_Y31_N26
\ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\B~combout\(3) & ((\RotateRight0~47_combout\))) # (!\B~combout\(3) & (\RotateRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~48_combout\,
	datac => \RotateRight0~47_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X56_Y31_N28
\ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\ShiftRight0~62_combout\) # ((\ShiftRight0~63_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~62_combout\,
	datac => \ShiftRight0~63_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X61_Y32_N12
\RotateRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~41_combout\ = (!\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(28)))) # (!\B~combout\(0) & (\A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(27),
	datac => \B~combout\(1),
	datad => \A~combout\(28),
	combout => \RotateRight0~41_combout\);

-- Location: LCCOMB_X60_Y31_N30
\ShiftRight1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\ShiftRight0~23_combout\ & ((\RotateRight0~41_combout\) # ((\RotateRight0~19_combout\ & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~19_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \B~combout\(1),
	datad => \RotateRight0~41_combout\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X52_Y35_N24
\RotateRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (\B~combout\(1) & ((\A~combout\(22)))) # (!\B~combout\(1) & (\A~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(1),
	datad => \A~combout\(22),
	combout => \RotateRight0~8_combout\);

-- Location: LCCOMB_X52_Y35_N22
\ShiftRight1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\ShiftRight0~27_combout\ & ((\B~combout\(0) & ((\RotateRight0~8_combout\))) # (!\B~combout\(0) & (\RotateRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~8_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X57_Y31_N12
\ShiftRight1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\B~combout\(2) & (\B~combout\(3) & \A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \A~combout\(31),
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X57_Y31_N6
\ShiftRight1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\ShiftRight1~15_combout\) # ((\ShiftRight1~17_combout\) # ((\ShiftRight1~16_combout\) # (\ShiftRight1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \ShiftRight1~17_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X56_Y35_N0
\Mux32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux31~0_combout\ & (((!\Mux31~1_combout\ & \ShiftRight1~18_combout\)))) # (!\Mux31~0_combout\ & ((\Add1~6_combout\) # ((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \ShiftRight1~18_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X56_Y35_N26
\Mux32~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux31~1_combout\ & ((\Mux32~2_combout\ & (\RotateRight0~44_combout\)) # (!\Mux32~2_combout\ & ((\A~combout\(31)))))) # (!\Mux31~1_combout\ & (((\Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~44_combout\,
	datab => \Mux31~1_combout\,
	datac => \A~combout\(31),
	datad => \Mux32~2_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X57_Y35_N20
\Mux32~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~9_combout\ = (\Mux31~3_combout\ & (((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & ((\Mux32~3_combout\))) # (!\Mux31~2_combout\ & (\Mux32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~8_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux32~3_combout\,
	combout => \Mux32~9_combout\);

-- Location: LCCOMB_X52_Y36_N28
\RotateLeft0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~24_combout\ = (\B~combout\(1) & (\A~combout\(21))) # (!\B~combout\(1) & ((\A~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datac => \A~combout\(23),
	datad => \B~combout\(1),
	combout => \RotateLeft0~24_combout\);

-- Location: LCCOMB_X52_Y36_N4
\RotateLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~73_combout\ = (\B~combout\(0) & (\RotateLeft0~56_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateLeft0~56_combout\,
	datad => \RotateLeft0~24_combout\,
	combout => \RotateLeft0~73_combout\);

-- Location: LCCOMB_X61_Y32_N4
\RotateLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~17_combout\ = (\B~combout\(1) & (\A~combout\(25))) # (!\B~combout\(1) & ((\A~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datac => \B~combout\(1),
	datad => \A~combout\(27),
	combout => \RotateLeft0~17_combout\);

-- Location: LCCOMB_X60_Y36_N18
\RotateLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~75_combout\ = (\B~combout\(0) & (\RotateLeft0~58_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~58_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~17_combout\,
	combout => \RotateLeft0~75_combout\);

-- Location: LCCOMB_X60_Y37_N0
\RotateLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~76_combout\ = (!\B~combout\(1) & ((\B~combout\(0) & (\A~combout\(2))) # (!\B~combout\(0) & ((\A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(3),
	combout => \RotateLeft0~76_combout\);

-- Location: LCCOMB_X60_Y37_N18
\RotateLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~38_combout\ = (\B~combout\(0) & (\A~combout\(0))) # (!\B~combout\(0) & ((\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \RotateLeft0~38_combout\);

-- Location: LCCOMB_X60_Y37_N10
\RotateLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~77_combout\ = (\RotateLeft0~76_combout\) # ((\B~combout\(1) & \RotateLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~76_combout\,
	datac => \B~combout\(1),
	datad => \RotateLeft0~38_combout\,
	combout => \RotateLeft0~77_combout\);

-- Location: LCCOMB_X60_Y36_N20
\RotateLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~78_combout\ = (\B~combout\(2) & (((\B~combout\(3))))) # (!\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~75_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~75_combout\,
	datac => \RotateLeft0~77_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~78_combout\);

-- Location: LCCOMB_X61_Y33_N20
\RotateLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (\B~combout\(1) & ((\A~combout\(29)))) # (!\B~combout\(1) & (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(31),
	datad => \A~combout\(29),
	combout => \RotateLeft0~15_combout\);

-- Location: LCCOMB_X61_Y33_N28
\RotateLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~74_combout\ = (\B~combout\(0) & (\RotateLeft0~53_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~53_combout\,
	datac => \RotateLeft0~15_combout\,
	combout => \RotateLeft0~74_combout\);

-- Location: LCCOMB_X60_Y36_N6
\RotateLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~79_combout\ = (\B~combout\(2) & ((\RotateLeft0~78_combout\ & (\RotateLeft0~73_combout\)) # (!\RotateLeft0~78_combout\ & ((\RotateLeft0~74_combout\))))) # (!\B~combout\(2) & (((\RotateLeft0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~73_combout\,
	datac => \RotateLeft0~78_combout\,
	datad => \RotateLeft0~74_combout\,
	combout => \RotateLeft0~79_combout\);

-- Location: LCCOMB_X57_Y35_N22
\Mux32~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~10_combout\ = (\Mux31~3_combout\ & ((\Mux32~9_combout\ & (\RotateLeft0~86_combout\)) # (!\Mux32~9_combout\ & ((\RotateLeft0~79_combout\))))) # (!\Mux31~3_combout\ & (((\Mux32~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~86_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux32~9_combout\,
	datad => \RotateLeft0~79_combout\,
	combout => \Mux32~10_combout\);

-- Location: LCCOMB_X59_Y35_N0
\Mux32~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~11_combout\ = (\Mux21~14_combout\ & ((\Mux32~10_combout\) # ((\ShiftRight0~64_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (\ShiftRight0~64_combout\ & ((!\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \ShiftRight0~64_combout\,
	datac => \Mux32~10_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux32~11_combout\);

-- Location: LCCOMB_X56_Y34_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A~combout\(4) & ((!\Add1~7\) # (!\B~combout\(4)))) # (!\A~combout\(4) & (!\B~combout\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X56_Y31_N16
\ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\B~combout\(0) & ((\ShiftRight0~21_combout\))) # (!\B~combout\(0) & (\RotateRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~10_combout\,
	datab => \B~combout\(0),
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X57_Y31_N4
\RotateRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~77_combout\ = (\ShiftRight0~22_combout\ & (!\B~combout\(3) & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~22_combout\,
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	combout => \RotateRight0~77_combout\);

-- Location: LCCOMB_X52_Y36_N16
\ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\B~combout\(1) & ((\A~combout\(23)))) # (!\B~combout\(1) & (\A~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datac => \A~combout\(23),
	datad => \B~combout\(1),
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X52_Y35_N18
\ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\B~combout\(0) & ((\ShiftRight0~17_combout\))) # (!\B~combout\(0) & (\RotateRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \B~combout\(0),
	datac => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X61_Y32_N16
\ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (!\B~combout\(1) & ((\B~combout\(0) & (\A~combout\(29))) # (!\B~combout\(0) & ((\A~combout\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(29),
	datad => \A~combout\(28),
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X61_Y33_N8
\RotateRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (\B~combout\(0) & (\A~combout\(31))) # (!\B~combout\(0) & ((\A~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \A~combout\(31),
	datad => \A~combout\(30),
	combout => \RotateRight0~9_combout\);

-- Location: LCCOMB_X58_Y31_N16
\ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\ShiftRight0~19_combout\) # ((\B~combout\(1) & \RotateRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \ShiftRight0~19_combout\,
	datad => \RotateRight0~9_combout\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X58_Y31_N30
\ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\ShiftRight0~27_combout\ & (!\ShiftRight0~65_combout\ & ((!\ShiftRight0~20_combout\) # (!\ShiftRight0~23_combout\)))) # (!\ShiftRight0~27_combout\ & (((!\ShiftRight0~20_combout\) # (!\ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight0~65_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X57_Y31_N8
\RotateRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~49_combout\ = (\RotateRight0~77_combout\) # (((\ShiftRight0~30_combout\ & \RotateRight0~11_combout\)) # (!\ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~30_combout\,
	datab => \RotateRight0~77_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \ShiftRight0~66_combout\,
	combout => \RotateRight0~49_combout\);

-- Location: LCCOMB_X57_Y31_N20
\ShiftRight1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\ShiftRight1~14_combout\) # (((\ShiftRight0~22_combout\ & \ShiftRight0~16_combout\)) # (!\ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X57_Y31_N30
\Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\ & ((\A~combout\(31)))) # (!\Mux31~1_combout\ & (\ShiftRight1~19_combout\)))) # (!\Mux31~0_combout\ & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \ShiftRight1~19_combout\,
	datad => \A~combout\(31),
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X57_Y31_N26
\Mux31~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\Mux31~0_combout\ & (((\Mux31~10_combout\)))) # (!\Mux31~0_combout\ & ((\Mux31~10_combout\ & ((\RotateRight0~49_combout\))) # (!\Mux31~10_combout\ & (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Add1~8_combout\,
	datac => \RotateRight0~49_combout\,
	datad => \Mux31~10_combout\,
	combout => \Mux31~11_combout\);

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X57_Y34_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B~combout\(4) $ (\A~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B~combout\(4) & ((\A~combout\(4)) # (!\Add0~7\))) # (!\B~combout\(4) & (\A~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X58_Y35_N0
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\opcode~combout\(1)) # (\opcode~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(3),
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X58_Y33_N8
\Mux31~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\A~combout\(4)) # (\B~combout\(4))))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\A~combout\(4) & \B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	combout => \Mux31~16_combout\);

-- Location: LCCOMB_X58_Y33_N18
\Mux31~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = (\Mux31~16_combout\ & ((\Mux31~15_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux31~16_combout\ & (((\Add0~8_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Add0~8_combout\,
	datac => \Mux31~16_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~17_combout\);

-- Location: LCCOMB_X52_Y36_N30
\RotateLeft0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~25_combout\ = (\B~combout\(1) & (\A~combout\(22))) # (!\B~combout\(1) & ((\A~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(22),
	datad => \A~combout\(24),
	combout => \RotateLeft0~25_combout\);

-- Location: LCCOMB_X52_Y36_N24
\RotateLeft0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~26_combout\ = (\B~combout\(0) & ((\RotateLeft0~24_combout\))) # (!\B~combout\(0) & (\RotateLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~25_combout\,
	datad => \RotateLeft0~24_combout\,
	combout => \RotateLeft0~26_combout\);

-- Location: LCCOMB_X61_Y33_N26
\RotateLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (!\B~combout\(0) & ((\B~combout\(1) & ((\A~combout\(30)))) # (!\B~combout\(1) & (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(30),
	combout => \RotateLeft0~14_combout\);

-- Location: LCCOMB_X61_Y33_N6
\RotateLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~16_combout\ = (\RotateLeft0~14_combout\) # ((\B~combout\(0) & \RotateLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateLeft0~15_combout\,
	datad => \RotateLeft0~14_combout\,
	combout => \RotateLeft0~16_combout\);

-- Location: LCCOMB_X54_Y36_N8
\RotateLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~88_combout\ = (\RotateLeft0~87_combout\ & (((\RotateLeft0~26_combout\)) # (!\B~combout\(2)))) # (!\RotateLeft0~87_combout\ & (\B~combout\(2) & ((\RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~87_combout\,
	datab => \B~combout\(2),
	datac => \RotateLeft0~26_combout\,
	datad => \RotateLeft0~16_combout\,
	combout => \RotateLeft0~88_combout\);

-- Location: LCCOMB_X58_Y33_N12
\Mux31~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~18_combout\ = (\Mux31~3_combout\ & (((\RotateLeft0~88_combout\) # (\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & (\Mux31~17_combout\ & ((!\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~17_combout\,
	datac => \RotateLeft0~88_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~18_combout\);

-- Location: LCCOMB_X58_Y33_N22
\Mux31~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~19_combout\ = (\Mux31~2_combout\ & ((\Mux31~18_combout\ & (\RotateLeft0~93_combout\)) # (!\Mux31~18_combout\ & ((\Mux31~11_combout\))))) # (!\Mux31~2_combout\ & (((\Mux31~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~93_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux31~11_combout\,
	datad => \Mux31~18_combout\,
	combout => \Mux31~19_combout\);

-- Location: LCCOMB_X52_Y35_N8
\ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\B~combout\(0) & (\ShiftRight0~25_combout\)) # (!\B~combout\(0) & ((\RotateRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~12_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X58_Y31_N10
\ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\B~combout\(3) & ((\ShiftRight0~26_combout\))) # (!\B~combout\(3) & (\ShiftRight0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datac => \B~combout\(3),
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X58_Y31_N28
\ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\ShiftRight0~68_combout\) # ((\B~combout\(2) & \ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~68_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~69_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X59_Y35_N2
\Mux31~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~20_combout\ = (\Mux21~14_combout\ & ((\Mux31~19_combout\) # ((\ShiftRight0~70_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~70_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux31~19_combout\,
	datac => \ShiftRight0~70_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux31~20_combout\);

-- Location: LCCOMB_X56_Y36_N8
\ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\B~combout\(1) & (\A~combout\(11))) # (!\B~combout\(1) & ((\A~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(11),
	datac => \B~combout\(1),
	datad => \A~combout\(9),
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X56_Y36_N0
\ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\B~combout\(1) & (\A~combout\(12))) # (!\B~combout\(1) & ((\A~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(12),
	datac => \A~combout\(10),
	datad => \B~combout\(1),
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X53_Y35_N2
\ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\B~combout\(0) & ((\ShiftRight0~45_combout\))) # (!\B~combout\(0) & (\ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \ShiftRight0~36_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X53_Y35_N20
\ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\B~combout\(3) & ((\ShiftRight0~40_combout\))) # (!\B~combout\(3) & (\ShiftRight0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~46_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X53_Y35_N14
\ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\B~combout\(2) & ((\ShiftRight0~73_combout\))) # (!\B~combout\(2) & (\ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~54_combout\,
	datac => \ShiftRight0~73_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X52_Y35_N28
\RotateLeft0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~22_combout\ = (\B~combout\(1) & (\A~combout\(18))) # (!\B~combout\(1) & ((\A~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(18),
	datad => \A~combout\(20),
	combout => \RotateLeft0~22_combout\);

-- Location: LCCOMB_X54_Y36_N4
\RotateLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~96_combout\ = (\B~combout\(0) & (\RotateLeft0~22_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateLeft0~22_combout\,
	datad => \RotateLeft0~33_combout\,
	combout => \RotateLeft0~96_combout\);

-- Location: LCCOMB_X54_Y37_N4
\RotateLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~97_combout\ = (\B~combout\(3) & (\RotateLeft0~43_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~43_combout\,
	datac => \RotateLeft0~96_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~97_combout\);

-- Location: LCCOMB_X54_Y37_N22
\RotateLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~98_combout\ = (\B~combout\(2) & (\RotateLeft0~49_combout\)) # (!\B~combout\(2) & ((\RotateLeft0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~49_combout\,
	datac => \RotateLeft0~97_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~98_combout\);

-- Location: LCCOMB_X61_Y32_N14
\RotateLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~18_combout\ = (\B~combout\(1) & ((\A~combout\(26)))) # (!\B~combout\(1) & (\A~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datac => \B~combout\(1),
	datad => \A~combout\(26),
	combout => \RotateLeft0~18_combout\);

-- Location: LCCOMB_X61_Y32_N2
\RotateLeft0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~31_combout\ = (\B~combout\(0) & (\RotateLeft0~18_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~18_combout\,
	datac => \RotateLeft0~30_combout\,
	combout => \RotateLeft0~31_combout\);

-- Location: LCCOMB_X54_Y37_N0
\RotateLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~94_combout\ = (\B~combout\(2) & (((\B~combout\(3))))) # (!\B~combout\(2) & ((\B~combout\(3) & ((\RotateLeft0~31_combout\))) # (!\B~combout\(3) & (\RotateLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~41_combout\,
	datac => \RotateLeft0~31_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~94_combout\);

-- Location: LCCOMB_X52_Y36_N18
\RotateLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~36_combout\ = (\B~combout\(0) & (\RotateLeft0~25_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~25_combout\,
	datac => \RotateLeft0~35_combout\,
	combout => \RotateLeft0~36_combout\);

-- Location: LCCOMB_X61_Y33_N30
\RotateLeft0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~28_combout\ = (\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(30)))) # (!\B~combout\(0) & (\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(31),
	datad => \A~combout\(30),
	combout => \RotateLeft0~28_combout\);

-- Location: LCCOMB_X61_Y33_N16
\ShiftLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (!\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(0)))) # (!\B~combout\(0) & (\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X61_Y33_N2
\RotateLeft0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~29_combout\ = (\RotateLeft0~28_combout\) # (\ShiftLeft0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~28_combout\,
	datac => \ShiftLeft0~9_combout\,
	combout => \RotateLeft0~29_combout\);

-- Location: LCCOMB_X54_Y37_N26
\RotateLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~95_combout\ = (\B~combout\(2) & ((\RotateLeft0~94_combout\ & (\RotateLeft0~36_combout\)) # (!\RotateLeft0~94_combout\ & ((\RotateLeft0~29_combout\))))) # (!\B~combout\(2) & (\RotateLeft0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~94_combout\,
	datac => \RotateLeft0~36_combout\,
	datad => \RotateLeft0~29_combout\,
	combout => \RotateLeft0~95_combout\);

-- Location: LCCOMB_X52_Y36_N26
\RotateRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~18_combout\ = (\B~combout\(1) & ((\A~combout\(24)))) # (!\B~combout\(1) & (\A~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(22),
	datad => \A~combout\(24),
	combout => \RotateRight0~18_combout\);

-- Location: LCCOMB_X52_Y36_N6
\ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\ShiftRight0~27_combout\ & ((\B~combout\(0) & (\RotateRight0~18_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~18_combout\,
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X61_Y32_N22
\ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\ShiftRight0~16_combout\ & ((\B~combout\(0) & (\RotateRight0~20_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~20_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X60_Y34_N28
\RotateRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~51_combout\ = (\RotateRight0~50_combout\) # ((\ShiftRight1~20_combout\) # (\ShiftRight1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~50_combout\,
	datac => \ShiftRight1~20_combout\,
	datad => \ShiftRight1~24_combout\,
	combout => \RotateRight0~51_combout\);

-- Location: LCCOMB_X59_Y34_N26
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\RotateRight0~51_combout\) # (!\Mux31~1_combout\)))) # (!\Mux30~0_combout\ & (\A~combout\(31) & (\Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \A~combout\(31),
	datac => \Mux31~1_combout\,
	datad => \RotateRight0~51_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X59_Y34_N20
\Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\) # (\Mux30~1_combout\)))) # (!\Mux31~2_combout\ & (\Mux30~6_combout\ & (!\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X59_Y35_N12
\Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux31~3_combout\ & ((\Mux30~7_combout\ & (\RotateLeft0~98_combout\)) # (!\Mux30~7_combout\ & ((\RotateLeft0~95_combout\))))) # (!\Mux31~3_combout\ & (((\Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \RotateLeft0~98_combout\,
	datac => \RotateLeft0~95_combout\,
	datad => \Mux30~7_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X59_Y35_N30
\Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\Mux21~14_combout\ & ((\Mux30~8_combout\) # ((!\Mux31~9_combout\ & \ShiftRight0~74_combout\)))) # (!\Mux21~14_combout\ & (!\Mux31~9_combout\ & (\ShiftRight0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux31~9_combout\,
	datac => \ShiftRight0~74_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X56_Y34_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A~combout\(6) & ((!\Add1~11\) # (!\B~combout\(6)))) # (!\A~combout\(6) & (!\B~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X60_Y37_N24
\ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\B~combout\(1) & ((\A~combout\(4)))) # (!\B~combout\(1) & (\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(2),
	datad => \A~combout\(4),
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X59_Y31_N6
\RotateRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~40_combout\ = (\B~combout\(0) & ((\RotateRight0~39_combout\))) # (!\B~combout\(0) & (\ShiftRight0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \ShiftRight0~47_combout\,
	datad => \RotateRight0~39_combout\,
	combout => \RotateRight0~40_combout\);

-- Location: LCCOMB_X61_Y32_N28
\RotateRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~29_combout\ = (\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(29))) # (!\B~combout\(1) & ((\A~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(29),
	datad => \A~combout\(27),
	combout => \RotateRight0~29_combout\);

-- Location: LCCOMB_X61_Y32_N30
\RotateRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~30_combout\ = (\RotateRight0~29_combout\) # ((!\B~combout\(0) & \RotateRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~29_combout\,
	datad => \RotateRight0~20_combout\,
	combout => \RotateRight0~30_combout\);

-- Location: LCCOMB_X60_Y32_N26
\ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\ShiftRight1~25_combout\) # ((\B~combout\(2) & (!\B~combout\(3) & \RotateRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \RotateRight0~30_combout\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X60_Y32_N16
\RotateRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~52_combout\ = (\RotateRight0~78_combout\) # ((\ShiftRight1~38_combout\) # ((\RotateRight0~40_combout\ & \RotateRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~78_combout\,
	datab => \RotateRight0~40_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \ShiftRight1~38_combout\,
	combout => \RotateRight0~52_combout\);

-- Location: LCCOMB_X59_Y30_N18
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & (((\RotateRight0~52_combout\) # (\Mux31~0_combout\)))) # (!\Mux29~0_combout\ & (\Add1~12_combout\ & ((!\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Add1~12_combout\,
	datac => \RotateRight0~52_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X56_Y36_N6
\RotateLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~67_combout\ = (\B~combout\(1) & (\A~combout\(8))) # (!\B~combout\(1) & ((\A~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(8),
	datac => \A~combout\(10),
	datad => \B~combout\(1),
	combout => \RotateLeft0~67_combout\);

-- Location: LCCOMB_X56_Y37_N2
\RotateLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~45_combout\ = (\B~combout\(1) & ((\A~combout\(7)))) # (!\B~combout\(1) & (\A~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(9),
	datad => \A~combout\(7),
	combout => \RotateLeft0~45_combout\);

-- Location: LCCOMB_X56_Y37_N14
\RotateLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~68_combout\ = (\B~combout\(0) & ((\RotateLeft0~45_combout\))) # (!\B~combout\(0) & (\RotateLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~67_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~45_combout\,
	combout => \RotateLeft0~68_combout\);

-- Location: LCCOMB_X59_Y37_N30
\RotateLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~71_combout\ = (\B~combout\(3) & ((\RotateLeft0~68_combout\))) # (!\B~combout\(3) & (\RotateLeft0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~70_combout\,
	datac => \RotateLeft0~68_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~71_combout\);

-- Location: LCCOMB_X59_Y37_N6
\RotateLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~103_combout\ = (\B~combout\(2) & ((\RotateLeft0~71_combout\))) # (!\B~combout\(2) & (\RotateLeft0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~102_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~71_combout\,
	combout => \RotateLeft0~103_combout\);

-- Location: LCCOMB_X60_Y33_N28
\Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(6) & (\opcode~combout\(0) & !\B~combout\(6))) # (!\A~combout\(6) & (\opcode~combout\(0) $ (!\B~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \A~combout\(6),
	datac => \opcode~combout\(0),
	datad => \B~combout\(6),
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X60_Y32_N0
\ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (!\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(31)))) # (!\B~combout\(0) & (\A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(30),
	datac => \B~combout\(1),
	datad => \A~combout\(31),
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X60_Y32_N14
\ShiftRight0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~108_combout\ = (!\B~combout\(2) & (\B~combout\(3) & \ShiftRight0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \ShiftRight0~56_combout\,
	combout => \ShiftRight0~108_combout\);

-- Location: LCCOMB_X52_Y36_N20
\RotateRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~27_combout\ = (\B~combout\(1) & ((\A~combout\(25)))) # (!\B~combout\(1) & (\A~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \A~combout\(23),
	datad => \A~combout\(25),
	combout => \RotateRight0~27_combout\);

-- Location: LCCOMB_X56_Y32_N6
\ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\ShiftRight0~27_combout\ & ((\B~combout\(0) & ((\RotateRight0~27_combout\))) # (!\B~combout\(0) & (\RotateRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \RotateRight0~18_combout\,
	datac => \RotateRight0~27_combout\,
	datad => \B~combout\(0),
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X60_Y32_N18
\ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\ShiftRight0~108_combout\) # ((\ShiftRight1~25_combout\) # ((\ShiftRight0~16_combout\ & \RotateRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~108_combout\,
	datac => \ShiftRight1~25_combout\,
	datad => \RotateRight0~30_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X61_Y35_N28
\Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\opcode~combout\(1) & (((!\ShiftLeft0~7_combout\ & !\ShiftLeft0~4_combout\)) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \ShiftLeft0~7_combout\,
	datac => \opcode~combout\(0),
	datad => \ShiftLeft0~4_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X60_Y33_N14
\Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & ((\Mux29~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux29~4_combout\ & (((\ShiftRight0~75_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Mux29~4_combout\,
	datac => \ShiftRight0~75_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X60_Y33_N18
\Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux31~5_combout\ & ((\B~combout\(6)) # ((\Mux31~4_combout\) # (\A~combout\(6))))) # (!\Mux31~5_combout\ & (\B~combout\(6) & (!\Mux31~4_combout\ & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B~combout\(6),
	datac => \Mux31~4_combout\,
	datad => \A~combout\(6),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X60_Y33_N0
\Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux31~4_combout\ & ((\Mux29~2_combout\ & ((\Mux29~5_combout\))) # (!\Mux29~2_combout\ & (\Add0~12_combout\)))) # (!\Mux31~4_combout\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X56_Y37_N10
\RotateLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~62_combout\ = (\B~combout\(1) & (\A~combout\(4))) # (!\B~combout\(1) & ((\A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(6),
	datac => \B~combout\(1),
	combout => \RotateLeft0~62_combout\);

-- Location: LCCOMB_X56_Y37_N20
\RotateLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~63_combout\ = (\RotateLeft0~61_combout\) # ((!\B~combout\(0) & \RotateLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~61_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~62_combout\,
	combout => \RotateLeft0~63_combout\);

-- Location: LCCOMB_X59_Y37_N8
\RotateLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~99_combout\ = (\B~combout\(2) & (\B~combout\(3))) # (!\B~combout\(2) & ((\B~combout\(3) & ((\RotateLeft0~54_combout\))) # (!\B~combout\(3) & (\RotateLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(3),
	datac => \RotateLeft0~63_combout\,
	datad => \RotateLeft0~54_combout\,
	combout => \RotateLeft0~99_combout\);

-- Location: LCCOMB_X59_Y37_N2
\RotateLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~100_combout\ = (\B~combout\(2) & ((\RotateLeft0~99_combout\ & (\RotateLeft0~59_combout\)) # (!\RotateLeft0~99_combout\ & ((\RotateLeft0~52_combout\))))) # (!\B~combout\(2) & (\RotateLeft0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~99_combout\,
	datac => \RotateLeft0~59_combout\,
	datad => \RotateLeft0~52_combout\,
	combout => \RotateLeft0~100_combout\);

-- Location: LCCOMB_X60_Y35_N10
\Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux31~2_combout\ & (\Mux31~3_combout\)) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & ((\RotateLeft0~100_combout\))) # (!\Mux31~3_combout\ & (\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux29~6_combout\,
	datad => \RotateLeft0~100_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X60_Y35_N28
\Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux31~2_combout\ & ((\Mux29~7_combout\ & ((\RotateLeft0~103_combout\))) # (!\Mux29~7_combout\ & (\Mux29~1_combout\)))) # (!\Mux31~2_combout\ & (((\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux29~1_combout\,
	datac => \RotateLeft0~103_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X52_Y35_N20
\RotateRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~26_combout\ = (\B~combout\(0) & (\RotateRight0~25_combout\)) # (!\B~combout\(0) & ((\RotateRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~25_combout\,
	datab => \B~combout\(0),
	datad => \RotateRight0~17_combout\,
	combout => \RotateRight0~26_combout\);

-- Location: LCCOMB_X56_Y32_N8
\ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\B~combout\(3) & ((\RotateRight0~26_combout\))) # (!\B~combout\(3) & (\RotateRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~38_combout\,
	datab => \RotateRight0~26_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X60_Y35_N30
\ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\B~combout\(2) & (\ShiftRight0~76_combout\)) # (!\B~combout\(2) & ((\ShiftRight0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~76_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~58_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X59_Y35_N24
\Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux21~14_combout\ & ((\Mux29~8_combout\) # ((\ShiftRight0~77_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~77_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux29~8_combout\,
	datac => \ShiftRight0~77_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X57_Y32_N24
\Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\opcode~combout\(3)) # ((!\opcode~combout\(1) & \opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X58_Y35_N8
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\B~combout\(7) & ((\Mux31~5_combout\) # ((\A~combout\(7) & !\Mux31~4_combout\)))) # (!\B~combout\(7) & (\Mux31~5_combout\ & ((\A~combout\(7)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Mux31~5_combout\,
	datac => \A~combout\(7),
	datad => \Mux31~4_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X56_Y37_N4
\RotateLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (\B~combout\(1) & ((\A~combout\(5)))) # (!\B~combout\(1) & (\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datac => \B~combout\(1),
	datad => \A~combout\(5),
	combout => \RotateLeft0~3_combout\);

-- Location: LCCOMB_X56_Y37_N6
\RotateLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~80_combout\ = (\B~combout\(0) & (\RotateLeft0~62_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~62_combout\,
	datab => \RotateLeft0~3_combout\,
	datac => \B~combout\(0),
	combout => \RotateLeft0~80_combout\);

-- Location: LCCOMB_X59_Y36_N4
\ShiftLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\B~combout\(2) & ((\RotateLeft0~77_combout\))) # (!\B~combout\(2) & (\RotateLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~80_combout\,
	datad => \RotateLeft0~77_combout\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X52_Y34_N10
\ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & !\B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \B~combout\(4),
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X59_Y36_N8
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ShiftLeft0~17_combout\ & (\ShiftRight0~72_combout\ & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~17_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X56_Y31_N22
\ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\ShiftRight0~27_combout\ & ((\B~combout\(0) & (\RotateRight0~10_combout\)) # (!\B~combout\(0) & ((\RotateRight0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~10_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~27_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X60_Y31_N0
\ShiftLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (!\B~combout\(1) & !\B~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X60_Y31_N16
\ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (!\B~combout\(2) & (\A~combout\(31) & (\ShiftLeft0~12_combout\ & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(31),
	datac => \ShiftLeft0~12_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X61_Y33_N0
\RotateRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~19_combout\ = (\B~combout\(0) & (\A~combout\(30))) # (!\B~combout\(0) & ((\A~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(30),
	datad => \A~combout\(29),
	combout => \RotateRight0~19_combout\);

-- Location: LCCOMB_X60_Y31_N22
\ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\ShiftRight0~16_combout\ & ((\RotateRight0~41_combout\) # ((\B~combout\(1) & \RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \RotateRight0~41_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X60_Y31_N18
\ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\ShiftRight1~29_combout\) # ((\ShiftRight0~78_combout\) # (\ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~29_combout\,
	datac => \ShiftRight0~78_combout\,
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X58_Y35_N4
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & ((\Mux28~3_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux28~4_combout\ & (((\ShiftRight0~79_combout\ & \Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux28~3_combout\,
	datac => \ShiftRight0~79_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X58_Y35_N30
\Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux28~2_combout\ & (((\Mux28~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux28~2_combout\ & (\Add0~14_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Mux28~2_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X59_Y31_N22
\RotateRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~54_combout\ = (\RotateRight0~53_combout\ & ((\ShiftRight0~23_combout\) # ((\RotateRight0~11_combout\ & \RotateRight0~46_combout\)))) # (!\RotateRight0~53_combout\ & (((\RotateRight0~11_combout\ & \RotateRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~53_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~46_combout\,
	combout => \RotateRight0~54_combout\);

-- Location: LCCOMB_X59_Y30_N0
\RotateRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~55_combout\ = (\ShiftRight1~29_combout\) # ((\RotateRight0~54_combout\) # (\ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~29_combout\,
	datac => \RotateRight0~54_combout\,
	datad => \ShiftRight1~28_combout\,
	combout => \RotateRight0~55_combout\);

-- Location: LCCOMB_X59_Y30_N28
\ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\ShiftRight1~28_combout\) # ((\ShiftRight1~29_combout\) # ((\A~combout\(31) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~28_combout\,
	datab => \ShiftRight1~29_combout\,
	datac => \A~combout\(31),
	datad => \B~combout\(3),
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X59_Y30_N30
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux31~1_combout\ & (((!\Mux31~0_combout\)))) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & ((\ShiftRight1~30_combout\))) # (!\Mux31~0_combout\ & (\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux31~0_combout\,
	datad => \ShiftRight1~30_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X59_Y30_N2
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux31~1_combout\ & ((\Mux28~0_combout\ & (\RotateRight0~55_combout\)) # (!\Mux28~0_combout\ & ((\A~combout\(31)))))) # (!\Mux31~1_combout\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \RotateRight0~55_combout\,
	datac => \A~combout\(31),
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X58_Y35_N16
\Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\) # (\Mux28~1_combout\)))) # (!\Mux31~2_combout\ & (\Mux28~6_combout\ & (!\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X59_Y36_N2
\RotateLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~104_combout\ = (\B~combout\(3) & ((\B~combout\(2) & (\RotateLeft0~75_combout\)) # (!\B~combout\(2) & ((\RotateLeft0~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~75_combout\,
	datac => \RotateLeft0~74_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~104_combout\);

-- Location: LCCOMB_X59_Y36_N30
\RotateLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~105_combout\ = (\RotateLeft0~104_combout\) # ((\ShiftLeft0~17_combout\ & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~104_combout\,
	datac => \ShiftLeft0~17_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~105_combout\);

-- Location: LCCOMB_X51_Y35_N30
\RotateLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\B~combout\(1) & ((\A~combout\(13)))) # (!\B~combout\(1) & (\A~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datac => \A~combout\(13),
	datad => \B~combout\(1),
	combout => \RotateLeft0~10_combout\);

-- Location: LCCOMB_X51_Y35_N4
\RotateLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~81_combout\ = (\B~combout\(0) & ((\RotateLeft0~64_combout\))) # (!\B~combout\(0) & (\RotateLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~10_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~64_combout\,
	combout => \RotateLeft0~81_combout\);

-- Location: LCCOMB_X60_Y36_N24
\RotateLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~106_combout\ = (\B~combout\(3) & ((\RotateLeft0~81_combout\))) # (!\B~combout\(3) & (\RotateLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~73_combout\,
	datac => \RotateLeft0~81_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~106_combout\);

-- Location: LCCOMB_X56_Y36_N30
\RotateLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\B~combout\(1) & ((\A~combout\(9)))) # (!\B~combout\(1) & (\A~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(11),
	datac => \B~combout\(1),
	datad => \A~combout\(9),
	combout => \RotateLeft0~0_combout\);

-- Location: LCCOMB_X56_Y36_N18
\RotateLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~83_combout\ = (\B~combout\(0) & ((\RotateLeft0~67_combout\))) # (!\B~combout\(0) & (\RotateLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~0_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~67_combout\,
	combout => \RotateLeft0~83_combout\);

-- Location: LCCOMB_X51_Y35_N12
\RotateLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~69_combout\ = (\B~combout\(1) & ((\A~combout\(16)))) # (!\B~combout\(1) & (\A~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datac => \A~combout\(16),
	datad => \B~combout\(1),
	combout => \RotateLeft0~69_combout\);

-- Location: LCCOMB_X60_Y36_N0
\RotateLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~84_combout\ = (\B~combout\(0) & ((\RotateLeft0~69_combout\))) # (!\B~combout\(0) & (\RotateLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~21_combout\,
	datab => \B~combout\(0),
	datac => \RotateLeft0~69_combout\,
	combout => \RotateLeft0~84_combout\);

-- Location: LCCOMB_X60_Y36_N10
\RotateLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~85_combout\ = (\B~combout\(3) & (\RotateLeft0~83_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~83_combout\,
	datad => \RotateLeft0~84_combout\,
	combout => \RotateLeft0~85_combout\);

-- Location: LCCOMB_X60_Y36_N2
\RotateLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~107_combout\ = (\B~combout\(2) & ((\RotateLeft0~85_combout\))) # (!\B~combout\(2) & (\RotateLeft0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \RotateLeft0~106_combout\,
	datad => \RotateLeft0~85_combout\,
	combout => \RotateLeft0~107_combout\);

-- Location: LCCOMB_X59_Y35_N26
\Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux31~3_combout\ & ((\Mux28~7_combout\ & ((\RotateLeft0~107_combout\))) # (!\Mux28~7_combout\ & (\RotateLeft0~105_combout\)))) # (!\Mux31~3_combout\ & (\Mux28~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux28~7_combout\,
	datac => \RotateLeft0~105_combout\,
	datad => \RotateLeft0~107_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X56_Y36_N16
\RotateRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~37_combout\ = (\B~combout\(1) & (\A~combout\(13))) # (!\B~combout\(1) & ((\A~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \A~combout\(13),
	datad => \A~combout\(11),
	combout => \RotateRight0~37_combout\);

-- Location: LCCOMB_X56_Y31_N30
\RotateRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~45_combout\ = (\B~combout\(0) & (\RotateRight0~15_combout\)) # (!\B~combout\(0) & ((\RotateRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~15_combout\,
	datab => \B~combout\(0),
	datac => \RotateRight0~37_combout\,
	combout => \RotateRight0~45_combout\);

-- Location: LCCOMB_X56_Y31_N8
\ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\ShiftRight0~80_combout\) # ((\RotateRight0~45_combout\ & !\B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~80_combout\,
	datab => \RotateRight0~45_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~81_combout\);

-- Location: LCCOMB_X56_Y31_N10
\ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\B~combout\(2) & ((\ShiftRight0~81_combout\))) # (!\B~combout\(2) & (\ShiftRight0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X59_Y35_N20
\Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux21~14_combout\ & ((\Mux28~8_combout\) # ((\ShiftRight0~82_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~82_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux28~8_combout\,
	datac => \ShiftRight0~82_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X56_Y36_N22
\RotateLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~90_combout\ = (\B~combout\(0) & ((\RotateLeft0~0_combout\))) # (!\B~combout\(0) & (\RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~0_combout\,
	combout => \RotateLeft0~90_combout\);

-- Location: LCCOMB_X52_Y35_N2
\RotateLeft0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~21_combout\ = (\B~combout\(1) & (\A~combout\(17))) # (!\B~combout\(1) & ((\A~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(17),
	datac => \A~combout\(19),
	datad => \B~combout\(1),
	combout => \RotateLeft0~21_combout\);

-- Location: LCCOMB_X54_Y36_N10
\RotateLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~91_combout\ = (\B~combout\(0) & ((\RotateLeft0~21_combout\))) # (!\B~combout\(0) & (\RotateLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~22_combout\,
	datac => \RotateLeft0~21_combout\,
	combout => \RotateLeft0~91_combout\);

-- Location: LCCOMB_X57_Y36_N8
\RotateLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~92_combout\ = (\B~combout\(3) & (\RotateLeft0~90_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~90_combout\,
	datac => \RotateLeft0~91_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~92_combout\);

-- Location: LCCOMB_X54_Y36_N26
\RotateLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~111_combout\ = (\B~combout\(3) & (\RotateLeft0~12_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~12_combout\,
	datac => \RotateLeft0~26_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~111_combout\);

-- Location: LCCOMB_X57_Y36_N0
\RotateLeft0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~112_combout\ = (\B~combout\(2) & (\RotateLeft0~92_combout\)) # (!\B~combout\(2) & ((\RotateLeft0~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~92_combout\,
	datac => \RotateLeft0~111_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~112_combout\);

-- Location: LCCOMB_X57_Y32_N18
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\B~combout\(8)) # (\A~combout\(8))))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\B~combout\(8) & \A~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \B~combout\(8),
	datad => \A~combout\(8),
	combout => \Mux27~3_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X57_Y34_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\B~combout\(8) $ (\A~combout\(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\B~combout\(8) & ((\A~combout\(8)) # (!\Add0~15\))) # (!\B~combout\(8) & (\A~combout\(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X57_Y32_N2
\Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~3_combout\ & ((\Mux27~6_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux27~3_combout\ & (((\Add0~16_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux27~3_combout\,
	datac => \Add0~16_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X60_Y37_N30
\RotateLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (!\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(2))) # (!\B~combout\(1) & ((\A~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(2),
	datad => \A~combout\(4),
	combout => \RotateLeft0~7_combout\);

-- Location: LCCOMB_X60_Y37_N20
\RotateLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\B~combout\(0) & ((\B~combout\(1) & (\A~combout\(1))) # (!\B~combout\(1) & ((\A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(3),
	combout => \RotateLeft0~6_combout\);

-- Location: LCCOMB_X60_Y37_N16
\RotateLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\RotateLeft0~7_combout\) # (\RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~7_combout\,
	datac => \RotateLeft0~6_combout\,
	combout => \RotateLeft0~8_combout\);

-- Location: LCCOMB_X56_Y37_N30
\RotateLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\B~combout\(1) & ((\A~combout\(6)))) # (!\B~combout\(1) & (\A~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \A~combout\(6),
	datac => \B~combout\(1),
	combout => \RotateLeft0~4_combout\);

-- Location: LCCOMB_X56_Y37_N16
\RotateLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\B~combout\(0) & (\RotateLeft0~3_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \RotateLeft0~3_combout\,
	datad => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~5_combout\);

-- Location: LCCOMB_X53_Y36_N18
\RotateLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~108_combout\ = (\ShiftRight0~16_combout\ & ((\RotateLeft0~8_combout\) # ((\RotateLeft0~5_combout\ & \ShiftRight0~27_combout\)))) # (!\ShiftRight0~16_combout\ & (((\RotateLeft0~5_combout\ & \ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \RotateLeft0~8_combout\,
	datac => \RotateLeft0~5_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~108_combout\);

-- Location: LCCOMB_X61_Y32_N8
\RotateLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~19_combout\ = (\B~combout\(0) & (\RotateLeft0~17_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~17_combout\,
	datac => \RotateLeft0~18_combout\,
	combout => \RotateLeft0~19_combout\);

-- Location: LCCOMB_X54_Y36_N24
\RotateLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~109_combout\ = (\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~19_combout\))) # (!\B~combout\(2) & (\RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~16_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~19_combout\,
	combout => \RotateLeft0~109_combout\);

-- Location: LCCOMB_X57_Y36_N28
\RotateLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~110_combout\ = (\RotateLeft0~108_combout\) # (\RotateLeft0~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~108_combout\,
	datad => \RotateLeft0~109_combout\,
	combout => \RotateLeft0~110_combout\);

-- Location: LCCOMB_X57_Y36_N14
\Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & ((\RotateLeft0~110_combout\))) # (!\Mux31~3_combout\ & (\Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux27~7_combout\,
	datac => \Mux31~3_combout\,
	datad => \RotateLeft0~110_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X56_Y34_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\A~combout\(8) $ (\B~combout\(8) $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\A~combout\(8) & ((!\Add1~15\) # (!\B~combout\(8)))) # (!\A~combout\(8) & (!\B~combout\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \B~combout\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X57_Y31_N28
\ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\ShiftRight0~16_combout\ & ((\ShiftRight0~20_combout\) # ((\ShiftRight0~22_combout\ & \ShiftRight0~27_combout\)))) # (!\ShiftRight0~16_combout\ & (\ShiftRight0~22_combout\ & ((\ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \ShiftRight0~20_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight0~83_combout\);

-- Location: LCCOMB_X59_Y31_N10
\RotateRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~57_combout\ = (\RotateRight0~56_combout\) # ((\ShiftRight0~83_combout\) # ((\ShiftRight0~23_combout\ & \ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~56_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \ShiftRight0~83_combout\,
	combout => \RotateRight0~57_combout\);

-- Location: LCCOMB_X59_Y30_N8
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux27~1_combout\ & (((\Mux31~0_combout\) # (\RotateRight0~57_combout\)))) # (!\Mux27~1_combout\ & (\Add1~16_combout\ & (!\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Add1~16_combout\,
	datac => \Mux31~0_combout\,
	datad => \RotateRight0~57_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X57_Y36_N18
\Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux31~2_combout\ & ((\Mux27~8_combout\ & (\RotateLeft0~112_combout\)) # (!\Mux27~8_combout\ & ((\Mux27~2_combout\))))) # (!\Mux31~2_combout\ & (((\Mux27~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~112_combout\,
	datac => \Mux27~8_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X58_Y31_N6
\ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\B~combout\(3) & ((\ShiftRight0~65_combout\))) # (!\B~combout\(3) & (\ShiftRight0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \ShiftRight0~65_combout\,
	datac => \B~combout\(3),
	combout => \ShiftRight0~84_combout\);

-- Location: LCCOMB_X58_Y31_N8
\ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (\B~combout\(2) & ((\ShiftRight0~84_combout\))) # (!\B~combout\(2) & (\ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~84_combout\,
	combout => \ShiftRight0~85_combout\);

-- Location: LCCOMB_X59_Y35_N22
\Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\Mux21~14_combout\ & ((\Mux27~9_combout\) # ((\ShiftRight0~85_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~85_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux27~9_combout\,
	datac => \ShiftRight0~85_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X53_Y35_N4
\ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = (\B~combout\(2) & (\ShiftRight0~87_combout\)) # (!\B~combout\(2) & ((\ShiftRight0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~87_combout\,
	datac => \ShiftRight0~73_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~88_combout\);

-- Location: LCCOMB_X56_Y37_N28
\RotateLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~46_combout\ = (\B~combout\(0) & ((\RotateLeft0~4_combout\))) # (!\B~combout\(0) & (\RotateLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~45_combout\,
	datac => \B~combout\(0),
	datad => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~46_combout\);

-- Location: LCCOMB_X54_Y37_N16
\RotateLeft0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~113_combout\ = (\ShiftRight0~27_combout\ & ((\RotateLeft0~46_combout\) # ((\ShiftRight0~16_combout\ & \RotateLeft0~41_combout\)))) # (!\ShiftRight0~27_combout\ & (\ShiftRight0~16_combout\ & ((\RotateLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \RotateLeft0~46_combout\,
	datad => \RotateLeft0~41_combout\,
	combout => \RotateLeft0~113_combout\);

-- Location: LCCOMB_X60_Y34_N26
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~113_combout\) # ((\ShiftRight0~23_combout\ & \ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight0~72_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \RotateLeft0~113_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X61_Y32_N20
\ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\B~combout\(0) & (\RotateRight0~20_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~20_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X60_Y34_N16
\ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = (\ShiftRight0~43_combout\ & ((\ShiftRight0~16_combout\) # ((\ShiftRight0~27_combout\ & \ShiftRight0~42_combout\)))) # (!\ShiftRight0~43_combout\ & (\ShiftRight0~27_combout\ & (\ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~86_combout\);

-- Location: LCCOMB_X61_Y34_N18
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(9) & (\opcode~combout\(0) & !\A~combout\(9))) # (!\B~combout\(9) & (\opcode~combout\(0) $ (!\A~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \A~combout\(9),
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X61_Y34_N28
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux31~6_combout\ & ((\Mux26~4_combout\ & (\Mux26~3_combout\)) # (!\Mux26~4_combout\ & ((\ShiftRight0~86_combout\))))) # (!\Mux31~6_combout\ & (((\Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datab => \Mux26~3_combout\,
	datac => \ShiftRight0~86_combout\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~5_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(9),
	combout => \B~combout\(9));

-- Location: LCCOMB_X61_Y34_N0
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\B~combout\(9)) # (\A~combout\(9))))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\B~combout\(9) & \A~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \B~combout\(9),
	datad => \A~combout\(9),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X61_Y34_N30
\Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux31~4_combout\ & ((\Mux26~2_combout\ & ((\Mux26~5_combout\))) # (!\Mux26~2_combout\ & (\Add0~18_combout\)))) # (!\Mux31~4_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Mux26~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X57_Y35_N0
\Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux31~2_combout\ & ((\Mux26~1_combout\) # ((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & (((\Mux26~6_combout\ & !\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~6_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X51_Y35_N28
\RotateLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~47_combout\ = (\B~combout\(1) & (\A~combout\(15))) # (!\B~combout\(1) & ((\A~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datac => \A~combout\(17),
	datad => \B~combout\(1),
	combout => \RotateLeft0~47_combout\);

-- Location: LCCOMB_X51_Y35_N8
\RotateLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\B~combout\(1) & ((\A~combout\(14)))) # (!\B~combout\(1) & (\A~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \A~combout\(14),
	datad => \B~combout\(1),
	combout => \RotateLeft0~11_combout\);

-- Location: LCCOMB_X51_Y35_N22
\RotateLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~48_combout\ = (\B~combout\(0) & ((\RotateLeft0~11_combout\))) # (!\B~combout\(0) & (\RotateLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~47_combout\,
	datac => \RotateLeft0~11_combout\,
	combout => \RotateLeft0~48_combout\);

-- Location: LCCOMB_X54_Y37_N28
\RotateLeft0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~116_combout\ = (\B~combout\(3) & ((\RotateLeft0~48_combout\))) # (!\B~combout\(3) & (\RotateLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~36_combout\,
	datac => \RotateLeft0~48_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~116_combout\);

-- Location: LCCOMB_X54_Y37_N14
\RotateLeft0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~117_combout\ = (\B~combout\(2) & ((\RotateLeft0~97_combout\))) # (!\B~combout\(2) & (\RotateLeft0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~116_combout\,
	datac => \RotateLeft0~97_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~117_combout\);

-- Location: LCCOMB_X57_Y35_N10
\Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux26~7_combout\ & (((\RotateLeft0~117_combout\) # (!\Mux31~3_combout\)))) # (!\Mux26~7_combout\ & (\RotateLeft0~115_combout\ & (\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~115_combout\,
	datab => \Mux26~7_combout\,
	datac => \Mux31~3_combout\,
	datad => \RotateLeft0~117_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\ShiftRight0~88_combout\ & (((\Mux26~8_combout\ & \Mux21~14_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~88_combout\ & (((\Mux26~8_combout\ & \Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~88_combout\,
	datab => \Mux31~9_combout\,
	datac => \Mux26~8_combout\,
	datad => \Mux21~14_combout\,
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X56_Y32_N2
\RotateRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~28_combout\ = (\B~combout\(0) & ((\RotateRight0~27_combout\))) # (!\B~combout\(0) & (\RotateRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateRight0~18_combout\,
	datac => \RotateRight0~27_combout\,
	datad => \B~combout\(0),
	combout => \RotateRight0~28_combout\);

-- Location: LCCOMB_X56_Y32_N26
\ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = (\B~combout\(3) & ((\RotateRight0~28_combout\))) # (!\B~combout\(3) & (\RotateRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datac => \RotateRight0~34_combout\,
	datad => \RotateRight0~28_combout\,
	combout => \ShiftRight0~90_combout\);

-- Location: LCCOMB_X60_Y35_N14
\ShiftRight0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~91_combout\ = (\B~combout\(2) & ((\ShiftRight0~90_combout\))) # (!\B~combout\(2) & (\ShiftRight0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \ShiftRight0~76_combout\,
	datad => \ShiftRight0~90_combout\,
	combout => \ShiftRight0~91_combout\);

-- Location: LCCOMB_X59_Y37_N4
\RotateLeft0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~121_combout\ = (\B~combout\(3) & (\RotateLeft0~70_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~70_combout\,
	datac => \RotateLeft0~59_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~121_combout\);

-- Location: LCCOMB_X54_Y36_N14
\RotateLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~101_combout\ = (\B~combout\(0) & ((\RotateLeft0~33_combout\))) # (!\B~combout\(0) & (\RotateLeft0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \RotateLeft0~56_combout\,
	datad => \RotateLeft0~33_combout\,
	combout => \RotateLeft0~101_combout\);

-- Location: LCCOMB_X59_Y37_N12
\RotateLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~102_combout\ = (\B~combout\(3) & (\RotateLeft0~65_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~65_combout\,
	datac => \RotateLeft0~101_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~102_combout\);

-- Location: LCCOMB_X59_Y37_N22
\RotateLeft0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~122_combout\ = (\B~combout\(2) & ((\RotateLeft0~102_combout\))) # (!\B~combout\(2) & (\RotateLeft0~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~121_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~102_combout\,
	combout => \RotateLeft0~122_combout\);

-- Location: LCCOMB_X59_Y37_N16
\RotateLeft0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~118_combout\ = (\RotateLeft0~63_combout\ & ((\ShiftRight0~16_combout\) # ((\RotateLeft0~68_combout\ & \ShiftRight0~27_combout\)))) # (!\RotateLeft0~63_combout\ & (\RotateLeft0~68_combout\ & ((\ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~63_combout\,
	datab => \RotateLeft0~68_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~118_combout\);

-- Location: LCCOMB_X59_Y37_N26
\RotateLeft0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~119_combout\ = (\B~combout\(3) & ((\B~combout\(2) & (\RotateLeft0~54_combout\)) # (!\B~combout\(2) & ((\RotateLeft0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~54_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~52_combout\,
	combout => \RotateLeft0~119_combout\);

-- Location: LCCOMB_X60_Y35_N8
\RotateLeft0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~120_combout\ = (\RotateLeft0~118_combout\) # (\RotateLeft0~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~118_combout\,
	datad => \RotateLeft0~119_combout\,
	combout => \RotateLeft0~120_combout\);

-- Location: LCCOMB_X61_Y34_N16
\Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux31~5_combout\ & ((\A~combout\(10)) # ((\B~combout\(10)) # (\Mux31~4_combout\)))) # (!\Mux31~5_combout\ & (\A~combout\(10) & (\B~combout\(10) & !\Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \A~combout\(10),
	datac => \B~combout\(10),
	datad => \Mux31~4_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X60_Y37_N22
\ShiftLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\ShiftLeft0~10_combout\) # ((\B~combout\(0) & (!\B~combout\(1) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X59_Y36_N18
\Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~118_combout\) # ((\ShiftRight0~23_combout\ & \ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight0~72_combout\,
	datac => \RotateLeft0~118_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X61_Y34_N10
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(10) $ (\A~combout\(10))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(10) & !\A~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \opcode~combout\(0),
	datac => \A~combout\(10),
	datad => \opcode~combout\(1),
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X61_Y34_N12
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux31~6_combout\ & ((\Mux25~4_combout\ & ((\Mux25~3_combout\))) # (!\Mux25~4_combout\ & (\ShiftRight0~89_combout\)))) # (!\Mux31~6_combout\ & (((\Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~89_combout\,
	datab => \Mux25~3_combout\,
	datac => \Mux31~6_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X61_Y34_N14
\Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux31~4_combout\ & ((\Mux25~2_combout\ & ((\Mux25~5_combout\))) # (!\Mux25~2_combout\ & (\Add0~20_combout\)))) # (!\Mux31~4_combout\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux25~2_combout\,
	datad => \Mux25~5_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X60_Y35_N18
\Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & (\RotateLeft0~120_combout\)) # (!\Mux31~3_combout\ & ((\Mux25~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~120_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux25~6_combout\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X60_Y35_N20
\Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\Mux31~2_combout\ & ((\Mux25~7_combout\ & ((\RotateLeft0~122_combout\))) # (!\Mux25~7_combout\ & (\Mux25~1_combout\)))) # (!\Mux31~2_combout\ & (((\Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \RotateLeft0~122_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux25~7_combout\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X59_Y35_N18
\Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\ShiftRight0~91_combout\ & (((\Mux21~14_combout\ & \Mux25~8_combout\)) # (!\Mux31~9_combout\))) # (!\ShiftRight0~91_combout\ & (((\Mux21~14_combout\ & \Mux25~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~91_combout\,
	datab => \Mux31~9_combout\,
	datac => \Mux21~14_combout\,
	datad => \Mux25~8_combout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X60_Y31_N20
\ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\ShiftRight1~34_combout\) # ((\A~combout\(31) & ((\B~combout\(2)) # (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~34_combout\,
	datab => \A~combout\(31),
	datac => \B~combout\(2),
	datad => \B~combout\(3),
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X59_Y34_N22
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux31~0_combout\ & (((!\Mux31~1_combout\ & \ShiftRight1~39_combout\)))) # (!\Mux31~0_combout\ & ((\Add1~22_combout\) # ((\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \ShiftRight1~39_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X60_Y31_N12
\ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\ShiftRight0~27_combout\ & ((\RotateRight0~41_combout\) # ((\B~combout\(1) & \RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \RotateRight0~41_combout\,
	datac => \B~combout\(1),
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X59_Y31_N30
\RotateRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~64_combout\ = (\RotateRight0~48_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~23_combout\ & \RotateRight0~46_combout\)))) # (!\RotateRight0~48_combout\ & (\ShiftRight0~23_combout\ & ((\RotateRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~48_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~46_combout\,
	combout => \RotateRight0~64_combout\);

-- Location: LCCOMB_X59_Y31_N0
\RotateRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~65_combout\ = (\ShiftRight1~34_combout\) # ((\RotateRight0~64_combout\) # ((\RotateRight0~53_combout\ & \ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~53_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight1~34_combout\,
	datad => \RotateRight0~64_combout\,
	combout => \RotateRight0~65_combout\);

-- Location: LCCOMB_X59_Y34_N0
\Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux31~1_combout\ & ((\Mux24~0_combout\ & (\RotateRight0~65_combout\)) # (!\Mux24~0_combout\ & ((\A~combout\(31)))))) # (!\Mux31~1_combout\ & (\Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux24~0_combout\,
	datac => \RotateRight0~65_combout\,
	datad => \A~combout\(31),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X59_Y34_N2
\Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\) # (\Mux24~1_combout\)))) # (!\Mux31~2_combout\ & (\Mux24~6_combout\ & (!\Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~6_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X59_Y36_N28
\RotateLeft0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~123_combout\ = (\ShiftRight0~16_combout\ & ((\RotateLeft0~80_combout\) # ((\ShiftRight0~27_combout\ & \RotateLeft0~83_combout\)))) # (!\ShiftRight0~16_combout\ & (\ShiftRight0~27_combout\ & (\RotateLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \RotateLeft0~83_combout\,
	datad => \RotateLeft0~80_combout\,
	combout => \RotateLeft0~123_combout\);

-- Location: LCCOMB_X59_Y36_N22
\RotateLeft0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~124_combout\ = (\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~74_combout\))) # (!\B~combout\(2) & (\RotateLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~77_combout\,
	datac => \RotateLeft0~74_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~124_combout\);

-- Location: LCCOMB_X59_Y36_N24
\RotateLeft0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~125_combout\ = (\RotateLeft0~123_combout\) # (\RotateLeft0~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~123_combout\,
	datad => \RotateLeft0~124_combout\,
	combout => \RotateLeft0~125_combout\);

-- Location: LCCOMB_X60_Y36_N12
\RotateLeft0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~126_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & ((\RotateLeft0~84_combout\))) # (!\B~combout\(3) & (\RotateLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~75_combout\,
	datac => \RotateLeft0~84_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~126_combout\);

-- Location: LCCOMB_X60_Y36_N30
\RotateLeft0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~127_combout\ = (\RotateLeft0~126_combout\) # ((\B~combout\(2) & \RotateLeft0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \RotateLeft0~106_combout\,
	datad => \RotateLeft0~126_combout\,
	combout => \RotateLeft0~127_combout\);

-- Location: LCCOMB_X59_Y35_N4
\Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux31~3_combout\ & ((\Mux24~7_combout\ & ((\RotateLeft0~127_combout\))) # (!\Mux24~7_combout\ & (\RotateLeft0~125_combout\)))) # (!\Mux31~3_combout\ & (\Mux24~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux24~7_combout\,
	datac => \RotateLeft0~125_combout\,
	datad => \RotateLeft0~127_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X56_Y31_N24
\ShiftRight0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~94_combout\ = (\ShiftRight0~93_combout\) # ((\ShiftRight0~81_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~93_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~94_combout\);

-- Location: LCCOMB_X59_Y35_N6
\Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux21~14_combout\ & ((\Mux24~8_combout\) # ((\ShiftRight0~94_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~94_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux24~8_combout\,
	datac => \ShiftRight0~94_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X53_Y36_N20
\RotateLeft0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~128_combout\ = (\ShiftRight0~16_combout\ & ((\RotateLeft0~5_combout\) # ((\RotateLeft0~90_combout\ & \ShiftRight0~27_combout\)))) # (!\ShiftRight0~16_combout\ & (\RotateLeft0~90_combout\ & ((\ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \RotateLeft0~90_combout\,
	datac => \RotateLeft0~5_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~128_combout\);

-- Location: LCCOMB_X58_Y36_N2
\RotateLeft0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~129_combout\ = (\B~combout\(3) & ((\B~combout\(2) & (\RotateLeft0~16_combout\)) # (!\B~combout\(2) & ((\RotateLeft0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~16_combout\,
	datac => \RotateLeft0~8_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~129_combout\);

-- Location: LCCOMB_X58_Y36_N20
\RotateLeft0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~130_combout\ = (\RotateLeft0~128_combout\) # (\RotateLeft0~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~128_combout\,
	datad => \RotateLeft0~129_combout\,
	combout => \RotateLeft0~130_combout\);

-- Location: LCCOMB_X57_Y34_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\B~combout\(12) $ (\A~combout\(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\B~combout\(12) & ((\A~combout\(12)) # (!\Add0~23\))) # (!\B~combout\(12) & (\A~combout\(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X58_Y33_N24
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux31~5_combout\ & ((\B~combout\(12)) # ((\A~combout\(12)) # (\Mux31~4_combout\)))) # (!\Mux31~5_combout\ & (\B~combout\(12) & (\A~combout\(12) & !\Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B~combout\(12),
	datac => \A~combout\(12),
	datad => \Mux31~4_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X58_Y33_N2
\Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~2_combout\ & ((\Mux23~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux23~2_combout\ & (((\Add0~24_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~5_combout\,
	datab => \Add0~24_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X57_Y36_N4
\Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux31~2_combout\ & (((\Mux31~3_combout\)))) # (!\Mux31~2_combout\ & ((\Mux31~3_combout\ & (\RotateLeft0~130_combout\)) # (!\Mux31~3_combout\ & ((\Mux23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \RotateLeft0~130_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux23~6_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X58_Y31_N12
\RotateRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~67_combout\ = (\B~combout\(3) & (((\B~combout\(2)) # (\ShiftRight0~32_combout\)))) # (!\B~combout\(3) & (\ShiftRight0~20_combout\ & (!\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \ShiftRight0~20_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~32_combout\,
	combout => \RotateRight0~67_combout\);

-- Location: LCCOMB_X58_Y31_N22
\RotateRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~68_combout\ = (\B~combout\(2) & ((\RotateRight0~67_combout\ & (\ShiftRight0~37_combout\)) # (!\RotateRight0~67_combout\ & ((\ShiftRight0~30_combout\))))) # (!\B~combout\(2) & (((\RotateRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \ShiftRight0~30_combout\,
	datac => \B~combout\(2),
	datad => \RotateRight0~67_combout\,
	combout => \RotateRight0~68_combout\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(11),
	combout => \B~combout\(11));

-- Location: LCCOMB_X56_Y34_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\B~combout\(12) $ (\A~combout\(12) $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\B~combout\(12) & (\A~combout\(12) & !\Add1~23\)) # (!\B~combout\(12) & ((\A~combout\(12)) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X59_Y32_N2
\Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & ((\Mux31~0_combout\) # ((\RotateRight0~68_combout\)))) # (!\Mux23~0_combout\ & (!\Mux31~0_combout\ & ((\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \RotateRight0~68_combout\,
	datad => \Add1~24_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X57_Y36_N30
\RotateLeft0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~132_combout\ = (\RotateLeft0~131_combout\) # ((\RotateLeft0~111_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~131_combout\,
	datac => \RotateLeft0~111_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~132_combout\);

-- Location: LCCOMB_X57_Y36_N16
\Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux31~2_combout\ & ((\Mux23~7_combout\ & ((\RotateLeft0~132_combout\))) # (!\Mux23~7_combout\ & (\Mux23~1_combout\)))) # (!\Mux31~2_combout\ & (\Mux23~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux23~7_combout\,
	datac => \Mux23~1_combout\,
	datad => \RotateLeft0~132_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X58_Y31_N0
\ShiftRight0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~97_combout\ = (\ShiftRight0~96_combout\) # ((!\B~combout\(2) & \ShiftRight0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~96_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~84_combout\,
	combout => \ShiftRight0~97_combout\);

-- Location: LCCOMB_X59_Y35_N8
\Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux21~14_combout\ & ((\Mux23~8_combout\) # ((\ShiftRight0~97_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (((\ShiftRight0~97_combout\ & !\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux23~8_combout\,
	datac => \ShiftRight0~97_combout\,
	datad => \Mux31~9_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X53_Y35_N28
\ShiftRight0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~98_combout\ = (\B~combout\(2) & ((\B~combout\(3) & ((\ShiftRight0~42_combout\))) # (!\B~combout\(3) & (\ShiftRight0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(3),
	datac => \ShiftRight0~40_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftRight0~98_combout\);

-- Location: LCCOMB_X53_Y35_N22
\ShiftRight0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~99_combout\ = (\ShiftRight0~98_combout\) # ((\ShiftRight0~87_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~87_combout\,
	datab => \ShiftRight0~98_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~99_combout\);

-- Location: LCCOMB_X54_Y37_N20
\RotateLeft0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~136_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & ((\RotateLeft0~96_combout\))) # (!\B~combout\(3) & (\RotateLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~31_combout\,
	datac => \RotateLeft0~96_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~136_combout\);

-- Location: LCCOMB_X54_Y37_N30
\RotateLeft0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~137_combout\ = (\RotateLeft0~136_combout\) # ((\RotateLeft0~116_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~116_combout\,
	datac => \RotateLeft0~136_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~137_combout\);

-- Location: LCCOMB_X57_Y34_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\A~combout\(13) & ((\B~combout\(13) & (\Add0~25\ & VCC)) # (!\B~combout\(13) & (!\Add0~25\)))) # (!\A~combout\(13) & ((\B~combout\(13) & (!\Add0~25\)) # (!\B~combout\(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\A~combout\(13) & (!\B~combout\(13) & !\Add0~25\)) # (!\A~combout\(13) & ((!\Add0~25\) # (!\B~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X59_Y33_N28
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(13) & (!\B~combout\(13) & \opcode~combout\(0))) # (!\A~combout\(13) & (\B~combout\(13) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \opcode~combout\(1),
	datac => \B~combout\(13),
	datad => \opcode~combout\(0),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X60_Y34_N8
\ShiftLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\B~combout\(2) & (((\ShiftLeft0~9_combout\)))) # (!\B~combout\(2) & ((\RotateLeft0~39_combout\) # ((\RotateLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~39_combout\,
	datab => \RotateLeft0~40_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \B~combout\(2),
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X60_Y34_N12
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\ShiftRight0~72_combout\ & ((\RotateLeft0~133_combout\) # ((\ShiftLeft0~15_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~133_combout\,
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \B~combout\(3),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X59_Y33_N30
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~4_combout\ & (((\Mux22~3_combout\) # (!\Mux31~6_combout\)))) # (!\Mux22~4_combout\ & (\ShiftRight0~109_combout\ & (\Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~109_combout\,
	datab => \Mux22~4_combout\,
	datac => \Mux31~6_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X59_Y33_N0
\Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux22~2_combout\ & (((\Mux22~5_combout\)) # (!\Mux31~4_combout\))) # (!\Mux22~2_combout\ & (\Mux31~4_combout\ & (\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux31~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Mux22~5_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X59_Y34_N28
\Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux31~3_combout\ & (((\Mux31~2_combout\)))) # (!\Mux31~3_combout\ & ((\Mux31~2_combout\ & (\Mux22~1_combout\)) # (!\Mux31~2_combout\ & ((\Mux22~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X54_Y37_N2
\RotateLeft0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~134_combout\ = (\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~29_combout\))) # (!\B~combout\(2) & (\RotateLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~41_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~29_combout\,
	combout => \RotateLeft0~134_combout\);

-- Location: LCCOMB_X54_Y37_N24
\RotateLeft0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~133_combout\ = (\RotateLeft0~43_combout\ & ((\ShiftRight0~27_combout\) # ((\ShiftRight0~16_combout\ & \RotateLeft0~46_combout\)))) # (!\RotateLeft0~43_combout\ & (\ShiftRight0~16_combout\ & (\RotateLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~43_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \RotateLeft0~46_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~133_combout\);

-- Location: LCCOMB_X58_Y37_N10
\RotateLeft0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~135_combout\ = (\RotateLeft0~134_combout\) # (\RotateLeft0~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RotateLeft0~134_combout\,
	datad => \RotateLeft0~133_combout\,
	combout => \RotateLeft0~135_combout\);

-- Location: LCCOMB_X58_Y37_N12
\Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux31~3_combout\ & ((\Mux22~7_combout\ & (\RotateLeft0~137_combout\)) # (!\Mux22~7_combout\ & ((\RotateLeft0~135_combout\))))) # (!\Mux31~3_combout\ & (((\Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \RotateLeft0~137_combout\,
	datac => \Mux22~7_combout\,
	datad => \RotateLeft0~135_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X58_Y35_N2
\Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\Mux21~14_combout\ & ((\Mux22~8_combout\) # ((\ShiftRight0~99_combout\ & !\Mux31~9_combout\)))) # (!\Mux21~14_combout\ & (\ShiftRight0~99_combout\ & (!\Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \ShiftRight0~99_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux22~8_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X59_Y33_N12
\Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(14) & (!\A~combout\(14) & \opcode~combout\(0))) # (!\B~combout\(14) & (\A~combout\(14) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \opcode~combout\(1),
	datac => \A~combout\(14),
	datad => \opcode~combout\(0),
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X58_Y31_N2
\ShiftRight0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~110_combout\ = (!\B~combout\(3) & (!\B~combout\(1) & (!\B~combout\(2) & \RotateRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \B~combout\(1),
	datac => \B~combout\(2),
	datad => \RotateRight0~9_combout\,
	combout => \ShiftRight0~110_combout\);

-- Location: LCCOMB_X59_Y33_N14
\Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux21~8_combout\ & ((\Mux21~7_combout\) # ((!\Mux31~6_combout\)))) # (!\Mux21~8_combout\ & (((\Mux31~6_combout\ & \ShiftRight0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~7_combout\,
	datab => \Mux21~8_combout\,
	datac => \Mux31~6_combout\,
	datad => \ShiftRight0~110_combout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X59_Y33_N18
\Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\B~combout\(14) & ((\Mux31~5_combout\) # ((\A~combout\(14) & !\Mux31~4_combout\)))) # (!\B~combout\(14) & (\Mux31~5_combout\ & ((\A~combout\(14)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \Mux31~5_combout\,
	datac => \A~combout\(14),
	datad => \Mux31~4_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X58_Y33_N20
\Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~10_combout\ = (\Mux31~4_combout\ & ((\Mux21~6_combout\ & ((\Mux21~9_combout\))) # (!\Mux21~6_combout\ & (\Add0~28_combout\)))) # (!\Mux31~4_combout\ & (((\Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux21~9_combout\,
	datad => \Mux21~6_combout\,
	combout => \Mux21~10_combout\);

-- Location: LCCOMB_X59_Y37_N18
\RotateLeft0~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~139_combout\ = (\B~combout\(3) & ((\B~combout\(2) & ((\RotateLeft0~52_combout\))) # (!\B~combout\(2) & (\RotateLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(3),
	datac => \RotateLeft0~63_combout\,
	datad => \RotateLeft0~52_combout\,
	combout => \RotateLeft0~139_combout\);

-- Location: LCCOMB_X59_Y37_N24
\RotateLeft0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~138_combout\ = (\RotateLeft0~65_combout\ & ((\ShiftRight0~27_combout\) # ((\RotateLeft0~68_combout\ & \ShiftRight0~16_combout\)))) # (!\RotateLeft0~65_combout\ & (\RotateLeft0~68_combout\ & (\ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~65_combout\,
	datab => \RotateLeft0~68_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~138_combout\);

-- Location: LCCOMB_X58_Y37_N22
\RotateLeft0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~140_combout\ = (\RotateLeft0~139_combout\) # (\RotateLeft0~138_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~139_combout\,
	datad => \RotateLeft0~138_combout\,
	combout => \RotateLeft0~140_combout\);

-- Location: LCCOMB_X58_Y33_N30
\Mux21~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~11_combout\ = (\Mux31~3_combout\ & ((\Mux31~2_combout\) # ((\RotateLeft0~140_combout\)))) # (!\Mux31~3_combout\ & (!\Mux31~2_combout\ & (\Mux21~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux21~10_combout\,
	datad => \RotateLeft0~140_combout\,
	combout => \Mux21~11_combout\);

-- Location: LCCOMB_X59_Y37_N28
\RotateLeft0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~141_combout\ = (!\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~101_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(3),
	datac => \RotateLeft0~101_combout\,
	datad => \RotateLeft0~54_combout\,
	combout => \RotateLeft0~141_combout\);

-- Location: LCCOMB_X59_Y37_N14
\RotateLeft0~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~142_combout\ = (\RotateLeft0~141_combout\) # ((\RotateLeft0~121_combout\ & \B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~121_combout\,
	datac => \B~combout\(2),
	datad => \RotateLeft0~141_combout\,
	combout => \RotateLeft0~142_combout\);

-- Location: LCCOMB_X56_Y32_N18
\Mux21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~12_combout\ = (\Mux21~11_combout\ & (((\RotateLeft0~142_combout\) # (!\Mux31~2_combout\)))) # (!\Mux21~11_combout\ & (\Mux21~5_combout\ & (\Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \Mux21~11_combout\,
	datac => \Mux31~2_combout\,
	datad => \RotateLeft0~142_combout\,
	combout => \Mux21~12_combout\);

-- Location: LCCOMB_X56_Y32_N28
\ShiftRight0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~100_combout\ = (\B~combout\(2) & ((\B~combout\(3) & ((\RotateRight0~30_combout\))) # (!\B~combout\(3) & (\RotateRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateRight0~26_combout\,
	datac => \RotateRight0~30_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~100_combout\);

-- Location: LCCOMB_X56_Y32_N30
\ShiftRight0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~101_combout\ = (\ShiftRight0~100_combout\) # ((\ShiftRight0~90_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~100_combout\,
	datac => \ShiftRight0~90_combout\,
	datad => \B~combout\(2),
	combout => \ShiftRight0~101_combout\);

-- Location: LCCOMB_X56_Y32_N24
\Mux21~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~13_combout\ = (\Mux21~14_combout\ & ((\Mux21~12_combout\) # ((!\Mux31~9_combout\ & \ShiftRight0~101_combout\)))) # (!\Mux21~14_combout\ & (((!\Mux31~9_combout\ & \ShiftRight0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~14_combout\,
	datab => \Mux21~12_combout\,
	datac => \Mux31~9_combout\,
	datad => \ShiftRight0~101_combout\,
	combout => \Mux21~13_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: LCCOMB_X52_Y34_N26
\Mux20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~12_combout\ = (\B~combout\(15) & ((\A~combout\(15) & (!\opcode~combout\(3))) # (!\A~combout\(15) & ((\opcode~combout\(0)))))) # (!\B~combout\(15) & ((\A~combout\(15) & ((\opcode~combout\(0)))) # (!\A~combout\(15) & (\opcode~combout\(3) & 
-- !\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \B~combout\(15),
	datac => \A~combout\(15),
	datad => \opcode~combout\(0),
	combout => \Mux20~12_combout\);

-- Location: LCCOMB_X52_Y34_N28
\Mux20~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~13_combout\ = (\opcode~combout\(1) & ((\Mux20~11_combout\) # ((\opcode~combout\(2))))) # (!\opcode~combout\(1) & (((\Mux20~12_combout\ & !\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~11_combout\,
	datab => \Mux20~12_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux20~13_combout\);

-- Location: LCCOMB_X52_Y34_N12
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\B~combout\(4)) # ((!\opcode~combout\(0) & ((\ShiftLeft0~7_combout\) # (\ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \B~combout\(4),
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X56_Y34_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\A~combout\(15) & ((\B~combout\(15) & (!\Add1~29\)) # (!\B~combout\(15) & (\Add1~29\ & VCC)))) # (!\A~combout\(15) & ((\B~combout\(15) & ((\Add1~29\) # (GND))) # (!\B~combout\(15) & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\A~combout\(15) & (\B~combout\(15) & !\Add1~29\)) # (!\A~combout\(15) & ((\B~combout\(15)) # (!\Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X52_Y34_N6
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\opcode~combout\(3) & (\ShiftRight0~104_combout\ & (!\Mux20~4_combout\))) # (!\opcode~combout\(3) & (((\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~104_combout\,
	datab => \Mux20~4_combout\,
	datac => \opcode~combout\(3),
	datad => \Add1~30_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X52_Y34_N24
\Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux20~5_combout\) # ((\Mux20~16_combout\ & (\Mux20~4_combout\ & \opcode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~16_combout\,
	datab => \Mux20~4_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux20~5_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X54_Y36_N30
\RotateLeft0~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~144_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & (\RotateLeft0~69_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~69_combout\,
	datac => \RotateLeft0~21_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateLeft0~144_combout\);

-- Location: LCCOMB_X60_Y36_N8
\RotateLeft0~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~143_combout\ = (\ShiftRight0~27_combout\ & ((\RotateLeft0~74_combout\) # ((\RotateLeft0~75_combout\ & \ShiftRight0~16_combout\)))) # (!\ShiftRight0~27_combout\ & (\RotateLeft0~75_combout\ & (\ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \RotateLeft0~75_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \RotateLeft0~74_combout\,
	combout => \RotateLeft0~143_combout\);

-- Location: LCCOMB_X53_Y36_N8
\RotateLeft0~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~145_combout\ = (\RotateLeft0~144_combout\) # ((\RotateLeft0~143_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~144_combout\,
	datac => \RotateLeft0~73_combout\,
	datad => \RotateLeft0~143_combout\,
	combout => \RotateLeft0~145_combout\);

-- Location: LCCOMB_X53_Y36_N24
\Mux35~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (!\opcode~combout\(0) & (\opcode~combout\(3) & !\B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(3),
	datad => \B~combout\(4),
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X59_Y36_N6
\ShiftLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\ShiftLeft0~18_combout\) # ((\ShiftLeft0~17_combout\ & \B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datac => \ShiftLeft0~17_combout\,
	datad => \B~combout\(3),
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X53_Y36_N26
\Mux20~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~14_combout\ = (\Mux19~2_combout\ & ((\RotateLeft0~145_combout\) # ((\Mux35~4_combout\ & \ShiftLeft0~19_combout\)))) # (!\Mux19~2_combout\ & (((\Mux35~4_combout\ & \ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \RotateLeft0~145_combout\,
	datac => \Mux35~4_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux20~14_combout\);

-- Location: LCCOMB_X52_Y34_N22
\Mux20~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~15_combout\ = (\opcode~combout\(2) & ((\Mux20~13_combout\ & ((\Mux20~14_combout\))) # (!\Mux20~13_combout\ & (\Mux20~7_combout\)))) # (!\opcode~combout\(2) & (\Mux20~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux20~13_combout\,
	datac => \Mux20~7_combout\,
	datad => \Mux20~14_combout\,
	combout => \Mux20~15_combout\);

-- Location: LCCOMB_X52_Y33_N18
\Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\B~combout\(16) & ((\A~combout\(16) & ((!\opcode~combout\(3)))) # (!\A~combout\(16) & (\opcode~combout\(0))))) # (!\B~combout\(16) & ((\A~combout\(16) & (\opcode~combout\(0))) # (!\A~combout\(16) & (!\opcode~combout\(0) & 
-- \opcode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(3),
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X57_Y31_N0
\ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\ShiftRight0~20_combout\ & ((\RotateRight0~11_combout\) # ((\ShiftRight0~23_combout\ & \ShiftRight0~22_combout\)))) # (!\ShiftRight0~20_combout\ & (\ShiftRight0~23_combout\ & ((\ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight0~23_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X52_Y35_N26
\ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\ShiftRight0~16_combout\ & ((\B~combout\(0) & ((\ShiftRight0~17_combout\))) # (!\B~combout\(0) & (\RotateRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~8_combout\,
	datab => \B~combout\(0),
	datac => \ShiftRight0~17_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X57_Y31_N10
\ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\ShiftRight0~24_combout\) # ((\ShiftRight0~18_combout\) # ((\ShiftRight0~26_combout\ & \ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight0~24_combout\,
	datac => \ShiftRight0~18_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X53_Y32_N22
\Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\ShiftRight0~72_combout\ & (\opcode~combout\(3) & (\ShiftRight0~28_combout\ & \opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \opcode~combout\(3),
	datac => \ShiftRight0~28_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X54_Y32_N24
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\B~combout\(0) & (!\B~combout\(2) & (!\B~combout\(1) & \A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(2),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X54_Y32_N10
\Mux35~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & (\Mux27~0_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \Mux27~0_combout\,
	datad => \B~combout\(3),
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X53_Y36_N2
\RotateLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\ShiftRight0~23_combout\ & ((\RotateLeft0~5_combout\) # ((\RotateLeft0~8_combout\ & \RotateRight0~11_combout\)))) # (!\ShiftRight0~23_combout\ & (((\RotateLeft0~8_combout\ & \RotateRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~5_combout\,
	datac => \RotateLeft0~8_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateLeft0~9_combout\);

-- Location: LCCOMB_X51_Y35_N10
\RotateLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\B~combout\(0) & (\RotateLeft0~10_combout\)) # (!\B~combout\(0) & ((\RotateLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~10_combout\,
	datac => \RotateLeft0~11_combout\,
	combout => \RotateLeft0~12_combout\);

-- Location: LCCOMB_X53_Y36_N4
\RotateLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\RotateLeft0~2_combout\) # ((\RotateLeft0~9_combout\) # ((\RotateLeft0~12_combout\ & \ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~2_combout\,
	datab => \RotateLeft0~9_combout\,
	datac => \RotateLeft0~12_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \RotateLeft0~13_combout\);

-- Location: LCCOMB_X53_Y36_N30
\Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~5_combout\) # ((\RotateLeft0~13_combout\ & (\Mux35~4_combout\ & !\ShiftLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~5_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \Mux35~4_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X53_Y36_N16
\Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux19~7_combout\) # ((\Mux19~6_combout\) # ((\Mux19~2_combout\ & \Mux35~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~7_combout\,
	datac => \Mux35~5_combout\,
	datad => \Mux19~6_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X52_Y33_N12
\Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~10_combout\ = (\opcode~combout\(1) & (((\opcode~combout\(2)) # (\Mux19~8_combout\)))) # (!\opcode~combout\(1) & (\Mux19~9_combout\ & (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux19~9_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux19~8_combout\,
	combout => \Mux19~10_combout\);

-- Location: LCCOMB_X53_Y32_N30
\Mux19~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~13_combout\ = (\opcode~combout\(0) & ((\ShiftRight0~38_combout\))) # (!\opcode~combout\(0) & (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	datac => \ShiftRight0~38_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux19~13_combout\);

-- Location: LCCOMB_X53_Y32_N20
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\) # ((\opcode~combout\(3) & (\Mux20~4_combout\ & \Mux19~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \opcode~combout\(3),
	datac => \Mux20~4_combout\,
	datad => \Mux19~13_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X54_Y36_N22
\RotateLeft0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~23_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & ((\RotateLeft0~21_combout\))) # (!\B~combout\(0) & (\RotateLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~22_combout\,
	datac => \RotateLeft0~21_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateLeft0~23_combout\);

-- Location: LCCOMB_X54_Y36_N0
\RotateLeft0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~27_combout\ = (\RotateLeft0~20_combout\) # ((\RotateLeft0~23_combout\) # ((\RotateLeft0~26_combout\ & \ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~20_combout\,
	datab => \RotateLeft0~23_combout\,
	datac => \RotateLeft0~26_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \RotateLeft0~27_combout\);

-- Location: LCCOMB_X53_Y36_N10
\Mux19~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~11_combout\ = (\Mux19~2_combout\ & ((\RotateLeft0~27_combout\) # ((\RotateLeft0~13_combout\ & \Mux35~4_combout\)))) # (!\Mux19~2_combout\ & (\RotateLeft0~13_combout\ & (\Mux35~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \Mux35~4_combout\,
	datad => \RotateLeft0~27_combout\,
	combout => \Mux19~11_combout\);

-- Location: LCCOMB_X52_Y33_N6
\Mux19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~12_combout\ = (\Mux19~10_combout\ & (((\Mux19~11_combout\) # (!\opcode~combout\(2))))) # (!\Mux19~10_combout\ & (\Mux19~4_combout\ & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~10_combout\,
	datab => \Mux19~4_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux19~11_combout\,
	combout => \Mux19~12_combout\);

-- Location: LCCOMB_X54_Y36_N2
\RotateLeft0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~34_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & ((\RotateLeft0~22_combout\))) # (!\B~combout\(0) & (\RotateLeft0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateLeft0~33_combout\,
	datac => \RotateLeft0~22_combout\,
	datad => \RotateRight0~11_combout\,
	combout => \RotateLeft0~34_combout\);

-- Location: LCCOMB_X54_Y37_N8
\RotateLeft0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~32_combout\ = (\ShiftRight0~27_combout\ & ((\RotateLeft0~29_combout\) # ((\ShiftRight0~16_combout\ & \RotateLeft0~31_combout\)))) # (!\ShiftRight0~27_combout\ & (\ShiftRight0~16_combout\ & (\RotateLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \RotateLeft0~31_combout\,
	datad => \RotateLeft0~29_combout\,
	combout => \RotateLeft0~32_combout\);

-- Location: LCCOMB_X54_Y37_N10
\RotateLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~37_combout\ = (\RotateLeft0~34_combout\) # ((\RotateLeft0~32_combout\) # ((\ShiftRight0~23_combout\ & \RotateLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateLeft0~34_combout\,
	datac => \RotateLeft0~36_combout\,
	datad => \RotateLeft0~32_combout\,
	combout => \RotateLeft0~37_combout\);

-- Location: LCCOMB_X54_Y32_N28
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ((!\opcode~combout\(0) & (\opcode~combout\(1) & \opcode~combout\(3)))) # (!\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X61_Y35_N8
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(17) & (\opcode~combout\(0) & !\B~combout\(17))) # (!\A~combout\(17) & (\opcode~combout\(0) $ (!\B~combout\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \B~combout\(17),
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X54_Y35_N8
\ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\ShiftRight1~6_combout\) # ((\RotateRight0~21_combout\) # ((\ShiftRight0~43_combout\ & \RotateRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \ShiftRight1~6_combout\,
	datac => \RotateRight0~11_combout\,
	datad => \RotateRight0~21_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X60_Y36_N26
\Mux34~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~12_combout\ = (!\B~combout\(2) & (!\B~combout\(1) & (\RotateLeft0~38_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(1),
	datac => \RotateLeft0~38_combout\,
	datad => \B~combout\(3),
	combout => \Mux34~12_combout\);

-- Location: LCCOMB_X61_Y35_N22
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & \Mux34~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \Mux34~12_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X61_Y35_N26
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux15~0_combout\ & ((\Mux18~4_combout\ & ((\Mux18~3_combout\))) # (!\Mux18~4_combout\ & (\ShiftRight0~44_combout\)))) # (!\Mux15~0_combout\ & (\Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux18~4_combout\,
	datac => \ShiftRight0~44_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X61_Y35_N4
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux31~5_combout\ & ((\Mux31~4_combout\) # ((\A~combout\(17)) # (\B~combout\(17))))) # (!\Mux31~5_combout\ & (!\Mux31~4_combout\ & (\A~combout\(17) & \B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \A~combout\(17),
	datad => \B~combout\(17),
	combout => \Mux18~2_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(14),
	combout => \B~combout\(14));

-- Location: LCCOMB_X57_Y33_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\A~combout\(17) & ((\B~combout\(17) & (\Add0~33\ & VCC)) # (!\B~combout\(17) & (!\Add0~33\)))) # (!\A~combout\(17) & ((\B~combout\(17) & (!\Add0~33\)) # (!\B~combout\(17) & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\A~combout\(17) & (!\B~combout\(17) & !\Add0~33\)) # (!\A~combout\(17) & ((!\Add0~33\) # (!\B~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \B~combout\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X61_Y35_N12
\Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux31~4_combout\ & ((\Mux18~2_combout\ & (\Mux18~5_combout\)) # (!\Mux18~2_combout\ & ((\Add0~34_combout\))))) # (!\Mux31~4_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \Mux18~5_combout\,
	datac => \Mux18~2_combout\,
	datad => \Add0~34_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X54_Y35_N18
\Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux15~2_combout\ & (\RotateLeft0~37_combout\ & (\Mux15~1_combout\))) # (!\Mux15~2_combout\ & (((\Mux18~6_combout\) # (!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \RotateLeft0~37_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux18~6_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X54_Y32_N18
\Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\opcode~combout\(1) & \opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X60_Y31_N8
\ShiftRight1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\B~combout\(2) & ((\B~combout\(1) & (\A~combout\(31))) # (!\B~combout\(1) & ((\RotateRight0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(31),
	datac => \B~combout\(1),
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight1~7_combout\);

-- Location: LCCOMB_X60_Y31_N10
\ShiftRight1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\ShiftRight1~7_combout\) # ((!\B~combout\(2) & \ShiftRight0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \ShiftRight1~7_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X54_Y35_N24
\ShiftRight1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\ShiftRight1~6_combout\) # ((\ShiftRight1~8_combout\ & \B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~6_combout\,
	datac => \ShiftRight1~8_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X54_Y35_N30
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & (\RotateRight0~24_combout\)) # (!\opcode~combout\(0) & ((\ShiftRight1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~24_combout\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight1~9_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X54_Y35_N0
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux20~4_combout\ & ((\Mux18~0_combout\ & (\ShiftRight0~55_combout\)) # (!\Mux18~0_combout\ & ((\A~combout\(31)))))) # (!\Mux20~4_combout\ & (\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux18~0_combout\,
	datac => \ShiftRight0~55_combout\,
	datad => \A~combout\(31),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X54_Y35_N12
\Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux18~7_combout\ & ((\Add1~34_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux18~7_combout\ & (((\Mux36~0_combout\ & \Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \Mux18~7_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X52_Y34_N8
\Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux35~4_combout\ & (\opcode~combout\(1) & ((\opcode~combout\(2)) # (!\ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~4_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X54_Y35_N14
\Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~50_combout\))) # (!\Mux15~3_combout\ & (\Mux18~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~8_combout\,
	datab => \RotateLeft0~50_combout\,
	datac => \Mux15~3_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X54_Y32_N6
\Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\opcode~combout\(2) & ((\opcode~combout\(1)) # (\opcode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X57_Y35_N4
\Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux15~2_combout\ & (((\RotateLeft0~60_combout\ & \Mux15~1_combout\)))) # (!\Mux15~2_combout\ & ((\Mux17~6_combout\) # ((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~6_combout\,
	datab => \RotateLeft0~60_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X56_Y33_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\B~combout\(18) $ (\A~combout\(18) $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\B~combout\(18) & (\A~combout\(18) & !\Add1~35\)) # (!\B~combout\(18) & ((\A~combout\(18)) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X56_Y32_N20
\ShiftRight1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\ShiftRight0~16_combout\ & ((\RotateRight0~28_combout\) # ((\ShiftRight0~27_combout\ & \RotateRight0~26_combout\)))) # (!\ShiftRight0~16_combout\ & (((\ShiftRight0~27_combout\ & \RotateRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \RotateRight0~28_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \RotateRight0~26_combout\,
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X60_Y32_N30
\RotateRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~76_combout\ = (\B~combout\(2) & (\B~combout\(3) & ((\RotateRight0~31_combout\) # (\ShiftRight0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~31_combout\,
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \ShiftRight0~56_combout\,
	combout => \RotateRight0~76_combout\);

-- Location: LCCOMB_X59_Y32_N20
\RotateRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~32_combout\ = (\ShiftRight1~10_combout\) # ((\RotateRight0~76_combout\) # ((\RotateRight0~30_combout\ & \ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~30_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \RotateRight0~76_combout\,
	combout => \RotateRight0~32_combout\);

-- Location: LCCOMB_X59_Y32_N4
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~32_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~13_combout\,
	datab => \Mux20~4_combout\,
	datac => \opcode~combout\(0),
	datad => \RotateRight0~32_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X59_Y32_N22
\Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux20~4_combout\ & ((\Mux17~0_combout\ & ((\ShiftRight0~60_combout\))) # (!\Mux17~0_combout\ & (\A~combout\(31))))) # (!\Mux20~4_combout\ & (\Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \Mux17~0_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~60_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X57_Y35_N30
\Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux36~0_combout\ & ((\Mux17~7_combout\ & (\Add1~36_combout\)) # (!\Mux17~7_combout\ & ((\Mux17~1_combout\))))) # (!\Mux36~0_combout\ & (\Mux17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Mux17~7_combout\,
	datac => \Add1~36_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X57_Y35_N24
\Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~72_combout\))) # (!\Mux15~3_combout\ & (\Mux17~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~8_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~72_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X60_Y31_N26
\ShiftRight0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~106_combout\ = (\B~combout\(2) & (\A~combout\(31) & (\ShiftLeft0~12_combout\ & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(31),
	datac => \ShiftLeft0~12_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~106_combout\);

-- Location: LCCOMB_X57_Y31_N18
\ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\ShiftRight1~15_combout\) # ((\ShiftRight0~106_combout\) # ((\ShiftRight1~16_combout\) # (\ShiftRight1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \ShiftRight0~106_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \ShiftRight1~17_combout\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X58_Y34_N16
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(19) & (!\B~combout\(19) & \opcode~combout\(0))) # (!\A~combout\(19) & (\B~combout\(19) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \opcode~combout\(1),
	datac => \B~combout\(19),
	datad => \opcode~combout\(0),
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X58_Y36_N4
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & (\RotateLeft0~77_combout\ & \ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \RotateLeft0~77_combout\,
	datad => \ShiftRight0~27_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X58_Y34_N26
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux15~0_combout\ & ((\Mux16~4_combout\ & ((\Mux16~3_combout\))) # (!\Mux16~4_combout\ & (\ShiftRight0~61_combout\)))) # (!\Mux15~0_combout\ & (((\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \ShiftRight0~61_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X58_Y34_N14
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\A~combout\(19) & ((\Mux31~5_combout\) # ((\B~combout\(19) & !\Mux31~4_combout\)))) # (!\A~combout\(19) & (\Mux31~5_combout\ & ((\B~combout\(19)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \B~combout\(19),
	datac => \Mux31~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X58_Y34_N12
\Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~2_combout\ & (((\Mux16~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux16~2_combout\ & (\Add0~38_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Mux16~5_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X57_Y35_N28
\Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (\Mux15~1_combout\ & ((\RotateLeft0~79_combout\) # (!\Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~1_combout\,
	datac => \Mux15~2_combout\,
	datad => \RotateLeft0~79_combout\,
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X57_Y35_N6
\Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~11_combout\ = (\Mux16~9_combout\) # ((\Mux15~2_combout\ & ((\Mux16~10_combout\))) # (!\Mux15~2_combout\ & ((\Mux16~6_combout\) # (!\Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~9_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux16~6_combout\,
	datad => \Mux16~10_combout\,
	combout => \Mux16~11_combout\);

-- Location: LCCOMB_X56_Y33_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\B~combout\(19) & ((\A~combout\(19) & (!\Add1~37\)) # (!\A~combout\(19) & ((\Add1~37\) # (GND))))) # (!\B~combout\(19) & ((\A~combout\(19) & (\Add1~37\ & VCC)) # (!\A~combout\(19) & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\B~combout\(19) & ((!\Add1~37\) # (!\A~combout\(19)))) # (!\B~combout\(19) & (!\A~combout\(19) & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X54_Y32_N8
\Mux16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~13_combout\ = (\Mux16~7_combout\ & (\opcode~combout\(2) & ((!\opcode~combout\(1))))) # (!\Mux16~7_combout\ & (((\Add1~38_combout\) # (\opcode~combout\(1))) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~7_combout\,
	datab => \opcode~combout\(2),
	datac => \Add1~38_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux16~13_combout\);

-- Location: LCCOMB_X59_Y36_N16
\RotateLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~82_combout\ = (\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~80_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~80_combout\,
	datac => \RotateLeft0~81_combout\,
	datad => \B~combout\(3),
	combout => \RotateLeft0~82_combout\);

-- Location: LCCOMB_X60_Y36_N28
\RotateLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~86_combout\ = (\RotateLeft0~82_combout\) # ((!\B~combout\(2) & \RotateLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \RotateLeft0~82_combout\,
	datad => \RotateLeft0~85_combout\,
	combout => \RotateLeft0~86_combout\);

-- Location: LCCOMB_X57_Y35_N16
\Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~12_combout\ = (\Mux15~3_combout\ & (((\RotateLeft0~86_combout\)))) # (!\Mux15~3_combout\ & (\Mux16~11_combout\ & (\Mux16~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~11_combout\,
	datab => \Mux16~13_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~86_combout\,
	combout => \Mux16~12_combout\);

-- Location: LCCOMB_X53_Y36_N0
\RotateLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~89_combout\ = (\B~combout\(2) & ((\B~combout\(3) & (\RotateLeft0~5_combout\)) # (!\B~combout\(3) & ((\RotateLeft0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \RotateLeft0~5_combout\,
	datac => \RotateLeft0~12_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~89_combout\);

-- Location: LCCOMB_X57_Y36_N26
\RotateLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateLeft0~93_combout\ = (\RotateLeft0~89_combout\) # ((\RotateLeft0~92_combout\ & !\B~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~92_combout\,
	datac => \RotateLeft0~89_combout\,
	datad => \B~combout\(2),
	combout => \RotateLeft0~93_combout\);

-- Location: LCCOMB_X58_Y34_N30
\Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\A~combout\(20) & ((\Mux31~5_combout\) # ((\B~combout\(20) & !\Mux31~4_combout\)))) # (!\A~combout\(20) & (\Mux31~5_combout\ & ((\B~combout\(20)) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datac => \Mux31~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X60_Y37_N4
\ShiftLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\B~combout\(2) & (!\B~combout\(0) & (!\B~combout\(1) & \A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X60_Y37_N6
\ShiftLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\ShiftLeft0~13_combout\) # ((!\B~combout\(2) & ((\RotateLeft0~6_combout\) # (\RotateLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~6_combout\,
	datab => \RotateLeft0~7_combout\,
	datac => \B~combout\(2),
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X58_Y36_N6
\Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (!\ShiftLeft0~7_combout\ & (!\ShiftLeft0~4_combout\ & (\ShiftLeft0~14_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \B~combout\(3),
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X58_Y34_N24
\Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(20) & (!\B~combout\(20) & \opcode~combout\(0))) # (!\A~combout\(20) & (\B~combout\(20) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \opcode~combout\(1),
	datac => \B~combout\(20),
	datad => \opcode~combout\(0),
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X57_Y32_N28
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\opcode~combout\(1) & ((\ShiftRight0~72_combout\) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~72_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X58_Y34_N2
\Mux15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux15~8_combout\ & (((\Mux15~7_combout\) # (!\Mux15~0_combout\)))) # (!\Mux15~8_combout\ & (!\ShiftRight0~107_combout\ & ((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~107_combout\,
	datab => \Mux15~7_combout\,
	datac => \Mux15~8_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X58_Y34_N28
\Mux15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\Mux15~6_combout\ & (((\Mux15~9_combout\) # (!\Mux31~4_combout\)))) # (!\Mux15~6_combout\ & (\Add0~40_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Mux15~6_combout\,
	datac => \Mux15~9_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X57_Y37_N24
\Mux15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\Mux15~2_combout\ & (\Mux15~1_combout\ & ((\RotateLeft0~88_combout\)))) # (!\Mux15~2_combout\ & (((\Mux15~10_combout\)) # (!\Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~10_combout\,
	datad => \RotateLeft0~88_combout\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X57_Y31_N2
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~4_combout\ & ((\ShiftRight0~70_combout\) # ((!\Mux20~4_combout\)))) # (!\Mux15~4_combout\ & (((\Mux20~4_combout\ & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \Mux20~4_combout\,
	datad => \A~combout\(31),
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X57_Y37_N18
\Mux15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (\Mux36~0_combout\ & ((\Mux15~11_combout\ & (\Add1~40_combout\)) # (!\Mux15~11_combout\ & ((\Mux15~5_combout\))))) # (!\Mux36~0_combout\ & (((\Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Mux36~0_combout\,
	datac => \Mux15~11_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X57_Y37_N4
\Mux15~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~93_combout\)) # (!\Mux15~3_combout\ & ((\Mux15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~93_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux15~12_combout\,
	combout => \Mux15~13_combout\);

-- Location: LCCOMB_X60_Y34_N14
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~7_combout\ & (\ShiftLeft0~15_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \ShiftLeft0~15_combout\,
	datad => \B~combout\(3),
	combout => \Mux14~3_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: LCCOMB_X60_Y33_N4
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & (\A~combout\(21) $ (\B~combout\(21)))) # (!\opcode~combout\(0) & (!\A~combout\(21) & !\B~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \A~combout\(21),
	datad => \B~combout\(21),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X60_Y31_N4
\ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\B~combout\(1) & (!\B~combout\(0) & (\A~combout\(31)))) # (!\B~combout\(1) & (((\RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(31),
	datac => \B~combout\(1),
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X60_Y34_N6
\ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\ShiftRight1~24_combout\) # ((\ShiftRight1~20_combout\) # ((\ShiftRight0~23_combout\ & \ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight1~24_combout\,
	datac => \ShiftRight1~20_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X60_Y33_N22
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux15~0_combout\ & ((\Mux14~4_combout\ & (\Mux14~3_combout\)) # (!\Mux14~4_combout\ & ((\ShiftRight0~71_combout\))))) # (!\Mux15~0_combout\ & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux14~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \ShiftRight0~71_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X60_Y33_N10
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux31~4_combout\ & (((\Mux31~5_combout\)))) # (!\Mux31~4_combout\ & ((\A~combout\(21) & ((\B~combout\(21)) # (\Mux31~5_combout\))) # (!\A~combout\(21) & (\B~combout\(21) & \Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \A~combout\(21),
	datac => \B~combout\(21),
	datad => \Mux31~5_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X60_Y33_N8
\Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux31~4_combout\ & ((\Mux14~2_combout\ & ((\Mux14~5_combout\))) # (!\Mux14~2_combout\ & (\Add0~42_combout\)))) # (!\Mux31~4_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X57_Y37_N14
\Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux15~2_combout\ & (\RotateLeft0~95_combout\ & (\Mux15~1_combout\))) # (!\Mux15~2_combout\ & (((\Mux14~6_combout\) # (!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \RotateLeft0~95_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X56_Y33_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\B~combout\(21) & ((\A~combout\(21) & (!\Add1~41\)) # (!\A~combout\(21) & ((\Add1~41\) # (GND))))) # (!\B~combout\(21) & ((\A~combout\(21) & (\Add1~41\ & VCC)) # (!\A~combout\(21) & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\B~combout\(21) & ((!\Add1~41\) # (!\A~combout\(21)))) # (!\B~combout\(21) & (!\A~combout\(21) & !\Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(21),
	datab => \A~combout\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X57_Y37_N16
\Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux14~7_combout\ & (((\Add1~42_combout\) # (!\Mux36~0_combout\)))) # (!\Mux14~7_combout\ & (\Mux14~1_combout\ & (\Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~7_combout\,
	datac => \Mux36~0_combout\,
	datad => \Add1~42_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X57_Y37_N10
\Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~98_combout\)) # (!\Mux15~3_combout\ & ((\Mux14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~98_combout\,
	datab => \Mux15~3_combout\,
	datac => \Mux14~8_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X56_Y33_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\A~combout\(22) $ (\B~combout\(22) $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\A~combout\(22) & ((!\Add1~43\) # (!\B~combout\(22)))) # (!\A~combout\(22) & (!\B~combout\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \B~combout\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X60_Y35_N26
\Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux15~1_combout\ & ((\Mux15~2_combout\ & ((\RotateLeft0~100_combout\))) # (!\Mux15~2_combout\ & (\Mux13~7_combout\)))) # (!\Mux15~1_combout\ & (((!\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~2_combout\,
	datad => \RotateLeft0~100_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X60_Y35_N12
\Mux13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux36~0_combout\ & ((\Mux13~8_combout\ & ((\Add1~44_combout\))) # (!\Mux13~8_combout\ & (\Mux13~3_combout\)))) # (!\Mux36~0_combout\ & (((\Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Add1~44_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X60_Y35_N6
\Mux13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~103_combout\)) # (!\Mux15~3_combout\ & ((\Mux13~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~103_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux13~9_combout\,
	combout => \Mux13~10_combout\);

-- Location: LCCOMB_X60_Y33_N16
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux31~5_combout\ & ((\B~combout\(23)) # ((\Mux31~4_combout\) # (\A~combout\(23))))) # (!\Mux31~5_combout\ & (\B~combout\(23) & (!\Mux31~4_combout\ & \A~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B~combout\(23),
	datac => \Mux31~4_combout\,
	datad => \A~combout\(23),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X57_Y33_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\B~combout\(23) & ((\A~combout\(23) & (\Add0~45\ & VCC)) # (!\A~combout\(23) & (!\Add0~45\)))) # (!\B~combout\(23) & ((\A~combout\(23) & (!\Add0~45\)) # (!\A~combout\(23) & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\B~combout\(23) & (!\A~combout\(23) & !\Add0~45\)) # (!\B~combout\(23) & ((!\Add0~45\) # (!\A~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X60_Y33_N30
\Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux31~4_combout\ & ((\Mux12~4_combout\ & (\Mux12~6_combout\)) # (!\Mux12~4_combout\ & ((\Add0~46_combout\))))) # (!\Mux31~4_combout\ & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux12~4_combout\,
	datad => \Add0~46_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X57_Y37_N20
\Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux15~2_combout\ & (\RotateLeft0~105_combout\ & (\Mux15~1_combout\))) # (!\Mux15~2_combout\ & (((\Mux12~7_combout\) # (!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \RotateLeft0~105_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X59_Y30_N22
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\ShiftRight0~82_combout\)) # (!\Mux20~4_combout\))) # (!\Mux12~2_combout\ & (\Mux20~4_combout\ & (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux20~4_combout\,
	datac => \A~combout\(31),
	datad => \ShiftRight0~82_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X57_Y37_N6
\Mux12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux36~0_combout\ & ((\Mux12~8_combout\ & (\Add1~46_combout\)) # (!\Mux12~8_combout\ & ((\Mux12~3_combout\))))) # (!\Mux36~0_combout\ & (((\Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Mux36~0_combout\,
	datac => \Mux12~8_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X57_Y37_N0
\Mux12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~107_combout\))) # (!\Mux15~3_combout\ & (\Mux12~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~9_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~107_combout\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X56_Y33_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\A~combout\(24) $ (\B~combout\(24) $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\A~combout\(24) & ((!\Add1~47\) # (!\B~combout\(24)))) # (!\A~combout\(24) & (!\B~combout\(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X57_Y32_N30
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux31~5_combout\ & ((\A~combout\(24)) # ((\B~combout\(24)) # (\Mux31~4_combout\)))) # (!\Mux31~5_combout\ & (\A~combout\(24) & (\B~combout\(24) & !\Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \A~combout\(24),
	datac => \B~combout\(24),
	datad => \Mux31~4_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X57_Y33_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\A~combout\(24) $ (\B~combout\(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\A~combout\(24) & ((\B~combout\(24)) # (!\Add0~47\))) # (!\A~combout\(24) & (\B~combout\(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X57_Y32_N6
\Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~2_combout\ & ((\Mux11~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux11~2_combout\ & (((\Add0~48_combout\ & \Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~2_combout\,
	datac => \Add0~48_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X57_Y37_N2
\Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux15~2_combout\ & (((\Mux15~1_combout\ & \RotateLeft0~110_combout\)))) # (!\Mux15~2_combout\ & ((\Mux11~6_combout\) # ((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux11~6_combout\,
	datac => \Mux15~1_combout\,
	datad => \RotateLeft0~110_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X57_Y37_N12
\Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux36~0_combout\ & ((\Mux11~7_combout\ & ((\Add1~48_combout\))) # (!\Mux11~7_combout\ & (\Mux11~1_combout\)))) # (!\Mux36~0_combout\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Add1~48_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X57_Y37_N22
\Mux11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~112_combout\)) # (!\Mux15~3_combout\ & ((\Mux11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~112_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X61_Y34_N8
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux31~5_combout\ & ((\B~combout\(25)) # ((\Mux31~4_combout\) # (\A~combout\(25))))) # (!\Mux31~5_combout\ & (\B~combout\(25) & (!\Mux31~4_combout\ & \A~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \B~combout\(25),
	datac => \Mux31~4_combout\,
	datad => \A~combout\(25),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X57_Y33_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\B~combout\(25) & ((\A~combout\(25) & (\Add0~49\ & VCC)) # (!\A~combout\(25) & (!\Add0~49\)))) # (!\B~combout\(25) & ((\A~combout\(25) & (!\Add0~49\)) # (!\A~combout\(25) & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\B~combout\(25) & (!\A~combout\(25) & !\Add0~49\)) # (!\B~combout\(25) & ((!\Add0~49\) # (!\A~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X61_Y34_N22
\Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~2_combout\ & ((\Mux10~5_combout\) # ((!\Mux31~4_combout\)))) # (!\Mux10~2_combout\ & (((\Mux31~4_combout\ & \Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux31~4_combout\,
	datad => \Add0~50_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X57_Y35_N26
\Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux15~1_combout\ & ((\Mux15~2_combout\ & (\RotateLeft0~115_combout\)) # (!\Mux15~2_combout\ & ((\Mux10~6_combout\))))) # (!\Mux15~1_combout\ & (((!\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~115_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X59_Y31_N4
\RotateRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~59_combout\ = (\ShiftRight0~23_combout\ & ((\B~combout\(0) & (\ShiftRight0~47_combout\)) # (!\B~combout\(0) & ((\ShiftRight0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \ShiftRight0~23_combout\,
	datac => \ShiftRight0~47_combout\,
	datad => \ShiftRight0~29_combout\,
	combout => \RotateRight0~59_combout\);

-- Location: LCCOMB_X56_Y35_N30
\RotateRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~60_combout\ = (\RotateRight0~58_combout\) # ((\RotateRight0~59_combout\) # ((\ShiftRight0~27_combout\ & \ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~58_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \RotateRight0~59_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \RotateRight0~60_combout\);

-- Location: LCCOMB_X54_Y35_N28
\ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\B~combout\(3) & (\A~combout\(31))) # (!\B~combout\(3) & ((\ShiftRight1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	datac => \ShiftRight1~8_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X56_Y35_N28
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\opcode~combout\(0) & ((\RotateRight0~60_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~60_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~32_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X56_Y35_N14
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux20~4_combout\ & ((\Mux10~0_combout\ & ((\ShiftRight0~88_combout\))) # (!\Mux10~0_combout\ & (\A~combout\(31))))) # (!\Mux20~4_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \ShiftRight0~88_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X57_Y35_N12
\Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~7_combout\ & ((\Add1~50_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux10~7_combout\ & (((\Mux36~0_combout\ & \Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datab => \Mux10~7_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X57_Y35_N14
\Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~117_combout\)) # (!\Mux15~3_combout\ & ((\Mux10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~117_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux10~8_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X56_Y33_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\B~combout\(26) $ (\A~combout\(26) $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\B~combout\(26) & (\A~combout\(26) & !\Add1~51\)) # (!\B~combout\(26) & ((\A~combout\(26)) # (!\Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \A~combout\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X60_Y35_N2
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux15~2_combout\ & (((\RotateLeft0~120_combout\ & \Mux15~1_combout\)))) # (!\Mux15~2_combout\ & ((\Mux9~6_combout\) # ((!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux15~2_combout\,
	datac => \RotateLeft0~120_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X60_Y35_N4
\Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux36~0_combout\ & ((\Mux9~7_combout\ & ((\Add1~52_combout\))) # (!\Mux9~7_combout\ & (\Mux9~1_combout\)))) # (!\Mux36~0_combout\ & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Add1~52_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X60_Y35_N22
\Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~122_combout\))) # (!\Mux15~3_combout\ & (\Mux9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~8_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~122_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X57_Y33_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\B~combout\(27) & ((\A~combout\(27) & (\Add0~53\ & VCC)) # (!\A~combout\(27) & (!\Add0~53\)))) # (!\B~combout\(27) & ((\A~combout\(27) & (!\Add0~53\)) # (!\A~combout\(27) & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\B~combout\(27) & (!\A~combout\(27) & !\Add0~53\)) # (!\B~combout\(27) & ((!\Add0~53\) # (!\A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X58_Y32_N22
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\B~combout\(27) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A~combout\(27))))) # (!\B~combout\(27) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \Mux31~5_combout\,
	datac => \Mux31~4_combout\,
	datad => \A~combout\(27),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X58_Y32_N20
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux31~4_combout\ & ((\Mux8~2_combout\ & (\Mux8~5_combout\)) # (!\Mux8~2_combout\ & ((\Add0~54_combout\))))) # (!\Mux31~4_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Add0~54_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X57_Y36_N2
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux15~1_combout\ & ((\Mux15~2_combout\ & (\RotateLeft0~125_combout\)) # (!\Mux15~2_combout\ & ((\Mux8~6_combout\))))) # (!\Mux15~1_combout\ & (!\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~2_combout\,
	datac => \RotateLeft0~125_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X59_Y34_N4
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\ShiftRight0~94_combout\)) # (!\Mux20~4_combout\))) # (!\Mux8~0_combout\ & (\Mux20~4_combout\ & ((\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux20~4_combout\,
	datac => \ShiftRight0~94_combout\,
	datad => \A~combout\(31),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X57_Y36_N20
\Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\Add1~54_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux8~7_combout\ & (((\Mux36~0_combout\ & \Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Mux8~7_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X57_Y36_N6
\Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~127_combout\))) # (!\Mux15~3_combout\ & (\Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~127_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X56_Y33_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\B~combout\(28) $ (\A~combout\(28) $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\B~combout\(28) & (\A~combout\(28) & !\Add1~55\)) # (!\B~combout\(28) & ((\A~combout\(28)) # (!\Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \A~combout\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X59_Y32_N30
\ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\ShiftRight0~95_combout\) # ((\A~combout\(31) & ((\B~combout\(3)) # (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~95_combout\,
	datab => \B~combout\(3),
	datac => \A~combout\(31),
	datad => \B~combout\(2),
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X59_Y32_N10
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\opcode~combout\(0) & ((\RotateRight0~68_combout\) # ((\Mux20~4_combout\)))) # (!\opcode~combout\(0) & (((!\Mux20~4_combout\ & \ShiftRight1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~68_combout\,
	datac => \Mux20~4_combout\,
	datad => \ShiftRight1~40_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X59_Y32_N12
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux20~4_combout\ & ((\Mux7~0_combout\ & ((\ShiftRight0~97_combout\))) # (!\Mux7~0_combout\ & (\A~combout\(31))))) # (!\Mux20~4_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \A~combout\(31),
	datac => \ShiftRight0~97_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X57_Y36_N10
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\Add1~56_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux7~7_combout\ & (((\Mux36~0_combout\ & \Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \Add1~56_combout\,
	datac => \Mux36~0_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X57_Y36_N12
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux15~3_combout\ & ((\RotateLeft0~132_combout\))) # (!\Mux15~3_combout\ & (\Mux7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datac => \Mux15~3_combout\,
	datad => \RotateLeft0~132_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X61_Y33_N18
\RotateRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~22_combout\ = (\B~combout\(1) & ((\B~combout\(0) & ((\A~combout\(0)))) # (!\B~combout\(0) & (\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \B~combout\(1),
	datac => \A~combout\(31),
	datad => \A~combout\(0),
	combout => \RotateRight0~22_combout\);

-- Location: LCCOMB_X61_Y33_N4
\RotateRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~23_combout\ = (\RotateRight0~22_combout\) # ((!\B~combout\(1) & \RotateRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datac => \RotateRight0~22_combout\,
	datad => \RotateRight0~19_combout\,
	combout => \RotateRight0~23_combout\);

-- Location: LCCOMB_X53_Y35_N30
\RotateRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~69_combout\ = (\ShiftRight0~48_combout\ & ((\ShiftRight0~16_combout\) # ((\ShiftRight0~27_combout\ & \RotateRight0~23_combout\)))) # (!\ShiftRight0~48_combout\ & (\ShiftRight0~27_combout\ & ((\RotateRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \RotateRight0~23_combout\,
	combout => \RotateRight0~69_combout\);

-- Location: LCCOMB_X53_Y35_N18
\RotateRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~71_combout\ = (\RotateRight0~70_combout\) # ((\RotateRight0~69_combout\) # ((\ShiftRight0~23_combout\ & \ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~70_combout\,
	datab => \RotateRight0~69_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \RotateRight0~71_combout\);

-- Location: LCCOMB_X56_Y35_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~71_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datab => \RotateRight0~71_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X56_Y35_N2
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\ShiftRight0~99_combout\) # ((!\Mux20~4_combout\)))) # (!\Mux6~0_combout\ & (((\Mux20~4_combout\ & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~99_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux20~4_combout\,
	datad => \A~combout\(31),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X59_Y33_N8
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\B~combout\(29) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A~combout\(29))))) # (!\B~combout\(29) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \Mux31~4_combout\,
	datac => \Mux31~5_combout\,
	datad => \A~combout\(29),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X59_Y33_N26
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(29) $ (\B~combout\(29))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(29) & !\B~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(29),
	datac => \opcode~combout\(1),
	datad => \B~combout\(29),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X60_Y34_N18
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\ShiftLeft0~8_combout\ & ((\RotateLeft0~133_combout\) # ((\ShiftLeft0~15_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~133_combout\,
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \B~combout\(3),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X59_Y33_N4
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & (((\Mux6~3_combout\) # (!\Mux15~0_combout\)))) # (!\Mux6~4_combout\ & (\ShiftRight0~109_combout\ & (\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~109_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X59_Y33_N6
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~2_combout\ & (((\Mux6~5_combout\) # (!\Mux31~4_combout\)))) # (!\Mux6~2_combout\ & (\Add0~58_combout\ & ((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux6~5_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X58_Y37_N16
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux15~2_combout\ & (\RotateLeft0~135_combout\ & ((\Mux15~1_combout\)))) # (!\Mux15~2_combout\ & (((\Mux6~6_combout\) # (!\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~135_combout\,
	datab => \Mux15~2_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X58_Y37_N2
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\Add1~58_combout\) # ((!\Mux36~0_combout\)))) # (!\Mux6~7_combout\ & (((\Mux6~1_combout\ & \Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X58_Y37_N28
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~137_combout\)) # (!\Mux15~3_combout\ & ((\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RotateLeft0~137_combout\,
	datac => \Mux15~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X56_Y33_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\B~combout\(30) $ (\A~combout\(30) $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\B~combout\(30) & (\A~combout\(30) & !\Add1~59\)) # (!\B~combout\(30) & ((\A~combout\(30)) # (!\Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X60_Y32_N10
\ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\B~combout\(3) & (\RotateRight0~38_combout\)) # (!\B~combout\(3) & ((\RotateRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~38_combout\,
	datac => \B~combout\(3),
	datad => \RotateRight0~40_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X60_Y32_N28
\RotateRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~72_combout\ = (\B~combout\(2) & ((\ShiftRight0~59_combout\))) # (!\B~combout\(2) & (\RotateRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~62_combout\,
	datac => \B~combout\(2),
	datad => \ShiftRight0~59_combout\,
	combout => \RotateRight0~72_combout\);

-- Location: LCCOMB_X56_Y32_N10
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux20~4_combout\ & (((\opcode~combout\(0))))) # (!\Mux20~4_combout\ & ((\opcode~combout\(0) & ((\RotateRight0~72_combout\))) # (!\opcode~combout\(0) & (\ShiftRight1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~37_combout\,
	datab => \RotateRight0~72_combout\,
	datac => \Mux20~4_combout\,
	datad => \opcode~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X56_Y32_N4
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux20~4_combout\ & ((\Mux5~0_combout\ & (\ShiftRight0~101_combout\)) # (!\Mux5~0_combout\ & ((\A~combout\(31)))))) # (!\Mux20~4_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \ShiftRight0~101_combout\,
	datac => \A~combout\(31),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X59_Y33_N24
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\B~combout\(30) & ((\Mux31~5_combout\) # ((!\Mux31~4_combout\ & \A~combout\(30))))) # (!\B~combout\(30) & (\Mux31~5_combout\ & ((\Mux31~4_combout\) # (\A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \Mux31~4_combout\,
	datac => \Mux31~5_combout\,
	datad => \A~combout\(30),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X57_Y33_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\B~combout\(30) $ (\A~combout\(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\B~combout\(30) & ((\A~combout\(30)) # (!\Add0~59\))) # (!\B~combout\(30) & (\A~combout\(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X59_Y33_N22
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux31~4_combout\ & ((\Mux5~2_combout\ & (\Mux5~5_combout\)) # (!\Mux5~2_combout\ & ((\Add0~60_combout\))))) # (!\Mux31~4_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux31~4_combout\,
	datac => \Mux5~2_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X58_Y37_N6
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux15~1_combout\ & ((\Mux15~2_combout\ & (\RotateLeft0~140_combout\)) # (!\Mux15~2_combout\ & ((\Mux5~6_combout\))))) # (!\Mux15~1_combout\ & (((!\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \RotateLeft0~140_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X58_Y37_N0
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux36~0_combout\ & ((\Mux5~7_combout\ & (\Add1~60_combout\)) # (!\Mux5~7_combout\ & ((\Mux5~1_combout\))))) # (!\Mux36~0_combout\ & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Add1~60_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X58_Y37_N18
\Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux15~3_combout\ & (\RotateLeft0~142_combout\)) # (!\Mux15~3_combout\ & ((\Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~3_combout\,
	datac => \RotateLeft0~142_combout\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X53_Y36_N22
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux31~0_combout\ & ((\B~combout\(4) & ((\ShiftLeft0~19_combout\))) # (!\B~combout\(4) & (\RotateLeft0~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \RotateLeft0~145_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \B~combout\(4),
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X53_Y32_N2
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\B~combout\(4) & (((!\opcode~combout\(0) & \ShiftLeft0~19_combout\)))) # (!\B~combout\(4) & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \opcode~combout\(0),
	datac => \B~combout\(4),
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X57_Y33_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \B~combout\(31) $ (\Add0~61\ $ (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X52_Y33_N2
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\opcode~combout\(3) & (\Mux4~4_combout\ & (!\ShiftLeft0~8_combout\))) # (!\opcode~combout\(3) & (((\Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux4~4_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \Add0~62_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X52_Y33_N28
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\B~combout\(31) & ((\A~combout\(31) & (!\opcode~combout\(3))) # (!\A~combout\(31) & ((\opcode~combout\(0)))))) # (!\B~combout\(31) & ((\opcode~combout\(0) & ((\A~combout\(31)))) # (!\opcode~combout\(0) & (\opcode~combout\(3) & 
-- !\A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \B~combout\(31),
	datac => \opcode~combout\(0),
	datad => \A~combout\(31),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X52_Y33_N30
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\opcode~combout\(1) & ((\Mux4~5_combout\) # ((\opcode~combout\(2))))) # (!\opcode~combout\(1) & (((!\opcode~combout\(2) & \Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux4~5_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X59_Y31_N2
\RotateRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~73_combout\ = (\RotateRight0~53_combout\ & ((\ShiftRight0~27_combout\) # ((\ShiftRight0~16_combout\ & \RotateRight0~46_combout\)))) # (!\RotateRight0~53_combout\ & (\ShiftRight0~16_combout\ & ((\RotateRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~53_combout\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \RotateRight0~46_combout\,
	combout => \RotateRight0~73_combout\);

-- Location: LCCOMB_X59_Y31_N28
\RotateRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~74_combout\ = (\RotateRight0~11_combout\ & ((\B~combout\(0) & (\RotateRight0~15_combout\)) # (!\B~combout\(0) & ((\RotateRight0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \RotateRight0~11_combout\,
	datac => \RotateRight0~15_combout\,
	datad => \RotateRight0~37_combout\,
	combout => \RotateRight0~74_combout\);

-- Location: LCCOMB_X59_Y31_N14
\RotateRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~75_combout\ = (\RotateRight0~73_combout\) # ((\RotateRight0~74_combout\) # ((\RotateRight0~48_combout\ & \ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~48_combout\,
	datab => \RotateRight0~73_combout\,
	datac => \ShiftRight0~23_combout\,
	datad => \RotateRight0~74_combout\,
	combout => \RotateRight0~75_combout\);

-- Location: LCCOMB_X52_Y36_N10
\RotateRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~10_combout\ = (\B~combout\(1) & ((\A~combout\(26)))) # (!\B~combout\(1) & (\A~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(24),
	datad => \A~combout\(26),
	combout => \RotateRight0~10_combout\);

-- Location: LCCOMB_X56_Y31_N4
\RotateRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \RotateRight0~66_combout\ = (\B~combout\(0) & ((\RotateRight0~10_combout\))) # (!\B~combout\(0) & (\RotateRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \RotateRight0~27_combout\,
	datad => \RotateRight0~10_combout\,
	combout => \RotateRight0~66_combout\);

-- Location: LCCOMB_X56_Y31_N14
\ShiftRight0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~111_combout\ = (\ShiftRight0~103_combout\) # ((!\B~combout\(2) & (\RotateRight0~47_combout\ & !\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~103_combout\,
	datab => \B~combout\(2),
	datac => \RotateRight0~47_combout\,
	datad => \B~combout\(3),
	combout => \ShiftRight0~111_combout\);

-- Location: LCCOMB_X60_Y31_N24
\ShiftRight0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~102_combout\ = (\RotateRight0~11_combout\ & ((\RotateRight0~41_combout\) # ((\B~combout\(1) & \RotateRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~11_combout\,
	datab => \RotateRight0~41_combout\,
	datac => \B~combout\(1),
	datad => \RotateRight0~19_combout\,
	combout => \ShiftRight0~102_combout\);

-- Location: LCCOMB_X56_Y31_N18
\ShiftRight0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~104_combout\ = (\ShiftRight0~111_combout\) # ((\ShiftRight0~102_combout\) # ((\ShiftRight0~23_combout\ & \RotateRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \RotateRight0~66_combout\,
	datac => \ShiftRight0~111_combout\,
	datad => \ShiftRight0~102_combout\,
	combout => \ShiftRight0~104_combout\);

-- Location: LCCOMB_X52_Y34_N2
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\opcode~combout\(0) & ((\B~combout\(4) & ((\ShiftRight0~104_combout\))) # (!\B~combout\(4) & (\RotateRight0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \RotateRight0~75_combout\,
	datac => \ShiftRight0~104_combout\,
	datad => \B~combout\(4),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X52_Y33_N8
\Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\A~combout\(31) & !\opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datac => \opcode~combout\(0),
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X56_Y33_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \B~combout\(31) $ (\Add1~61\ $ (!\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X52_Y33_N0
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\opcode~combout\(3) & ((\Mux4~0_combout\) # ((\Mux20~6_combout\)))) # (!\opcode~combout\(3) & (((\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux4~0_combout\,
	datac => \Mux20~6_combout\,
	datad => \Add1~62_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X52_Y33_N24
\Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~7_combout\ & ((\Mux4~8_combout\) # ((!\opcode~combout\(2))))) # (!\Mux4~7_combout\ & (((\opcode~combout\(2) & \Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~8_combout\,
	datab => \Mux4~7_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux4~1_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X59_Y35_N10
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux31~20_combout\ & (!\Mux32~11_combout\ & (!\Mux28~9_combout\ & !\Mux27~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~20_combout\,
	datab => \Mux32~11_combout\,
	datac => \Mux28~9_combout\,
	datad => \Mux27~10_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X59_Y35_N28
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & (!\Mux30~9_combout\ & (!\Mux29~9_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Mux30~9_combout\,
	datac => \Mux29~9_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X58_Y37_N20
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux20~15_combout\ & (!\Mux19~12_combout\ & (!\Mux4~9_combout\ & !\Mux35~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~15_combout\,
	datab => \Mux19~12_combout\,
	datac => \Mux4~9_combout\,
	datad => \Mux35~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X58_Y37_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!\Mux5~9_combout\ & (\Equal0~1_combout\ & !\Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Mux5~9_combout\,
	datac => \Equal0~1_combout\,
	datad => \Mux6~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y35_N14
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux24~9_combout\ & (!\Mux23~9_combout\ & (!\Mux26~9_combout\ & !\Mux25~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~9_combout\,
	datab => \Mux23~9_combout\,
	datac => \Mux26~9_combout\,
	datad => \Mux25~9_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X57_Y37_N8
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux16~12_combout\ & (!\Mux17~9_combout\ & (!\Mux18~9_combout\ & !\Mux15~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~12_combout\,
	datab => \Mux17~9_combout\,
	datac => \Mux18~9_combout\,
	datad => \Mux15~13_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X57_Y37_N26
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux14~9_combout\ & (!\Mux11~9_combout\ & (!\Mux13~10_combout\ & !\Mux12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux11~9_combout\,
	datac => \Mux13~10_combout\,
	datad => \Mux12~10_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X57_Y37_N28
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux22~9_combout\ & (!\Mux21~13_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \Mux21~13_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X58_Y37_N8
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~5_combout\ & (\Equal0~2_combout\ & (\Equal0~6_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X52_Y33_N20
\Mux36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~1_combout\ & ((\Add0~62_combout\ & (!\B~combout\(31) & !\A~combout\(31))) # (!\Add0~62_combout\ & (\B~combout\(31) & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datab => \Add0~62_combout\,
	datac => \B~combout\(31),
	datad => \A~combout\(31),
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X52_Y33_N22
\Mux36~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux36~0_combout\ & ((\Add1~62_combout\ & (\B~combout\(31) & !\A~combout\(31))) # (!\Add1~62_combout\ & (!\B~combout\(31) & \A~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \B~combout\(31),
	datac => \Mux36~0_combout\,
	datad => \A~combout\(31),
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X52_Y33_N16
\Mux36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (!\opcode~combout\(0) & (!\opcode~combout\(3) & ((\Mux36~2_combout\) # (\Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~2_combout\,
	datab => \Mux36~3_combout\,
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(3),
	combout => \Mux36~4_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux35~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux34~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux33~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux32~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux31~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux30~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux29~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux28~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(7));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(8));

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(9));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(10));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(11));

-- Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(12));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(13));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(14));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(15));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(16));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(17));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(18));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(19));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(20));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(21));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(22));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(23));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(24));

-- Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(25));

-- Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(26));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(27));

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(28));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(29));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(30));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(31));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovfl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux36~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovfl);
END structure;


