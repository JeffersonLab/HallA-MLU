-- Copyright (C) 1991-2011 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Web Edition"

-- DATE "04/24/2017 11:18:25"

-- 
-- Device: Altera EP1C20F400C6 Package FBGA400
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	v1495usr_demo IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	GIN : IN std_logic_vector(1 DOWNTO 0);
	IDD : IN std_logic_vector(2 DOWNTO 0);
	IDE : IN std_logic_vector(2 DOWNTO 0);
	IDF : IN std_logic_vector(2 DOWNTO 0);
	LCLK : IN std_logic;
	PULSE : IN std_logic_vector(3 DOWNTO 0);
	WnR : IN std_logic;
	nADS : IN std_logic;
	nBLAST : IN std_logic;
	nLRESET : IN std_logic;
	C : OUT std_logic_vector(31 DOWNTO 0);
	DIRDDLY : OUT std_logic;
	GOUT : OUT std_logic_vector(1 DOWNTO 0);
	SELD : OUT std_logic;
	SELE : OUT std_logic;
	SELF : OUT std_logic;
	SELG : OUT std_logic;
	START : OUT std_logic_vector(1 DOWNTO 0);
	WR_DLY0 : OUT std_logic;
	WR_DLY1 : OUT std_logic;
	nINT : OUT std_logic;
	nLEDG : OUT std_logic;
	nLEDR : OUT std_logic;
	nOED : OUT std_logic;
	nOEDDLY0 : OUT std_logic;
	nOEDDLY1 : OUT std_logic;
	nOEE : OUT std_logic;
	nOEF : OUT std_logic;
	nOEG : OUT std_logic;
	nREADY : OUT std_logic;
	nSTART : OUT std_logic_vector(3 DOWNTO 2);
	D : INOUT std_logic_vector(31 DOWNTO 0);
	DDLY : INOUT std_logic_vector(7 DOWNTO 0);
	E : INOUT std_logic_vector(31 DOWNTO 0);
	F : INOUT std_logic_vector(31 DOWNTO 0);
	FPGA : INOUT std_logic_vector(3 DOWNTO 0);
	LAD : INOUT std_logic_vector(15 DOWNTO 0);
	SPARE : INOUT std_logic_vector(11 DOWNTO 0)
	);
END v1495usr_demo;

-- Design Ports Information
-- D[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[1]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[4]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[7]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[8]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[9]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[10]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[11]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[12]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[13]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[14]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[15]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[16]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[17]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[18]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[19]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[20]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[21]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[22]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[23]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[24]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[25]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[26]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[27]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[28]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[29]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[30]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[31]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- DDLY[0]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[1]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[2]	=>  Location: PIN_N17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[3]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[4]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[5]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[6]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDLY[7]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[0]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[1]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[2]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[3]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[4]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[6]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[7]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[8]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[9]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[10]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[11]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[12]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[13]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[14]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[15]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[16]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[17]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[18]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[19]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[20]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[21]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[22]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[23]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[24]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[25]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[26]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[27]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[28]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[29]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[30]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- E[31]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[0]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[1]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[2]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[3]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[4]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[5]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[6]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[7]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[8]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[10]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[11]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[12]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[13]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[14]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[15]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[16]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[17]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[18]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[19]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[20]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[21]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[22]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[23]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[24]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[25]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[26]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[27]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[28]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[29]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[30]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- F[31]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- FPGA[0]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- FPGA[1]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- FPGA[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- FPGA[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[4]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[5]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[9]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[10]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[11]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[12]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[13]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[14]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LAD[15]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[0]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[1]	=>  Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[3]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[4]	=>  Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[5]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[7]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[8]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[9]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[10]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPARE[11]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- GIN[0]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GIN[1]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[1]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[2]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[3]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[5]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[6]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[7]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[8]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[9]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[10]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[11]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[12]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[13]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[14]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[15]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[16]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[17]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[18]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[19]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[20]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[21]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[22]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[23]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[24]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[25]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[26]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[27]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[28]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[29]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[30]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- C[31]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- DIRDDLY	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- GOUT[0]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- GOUT[1]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SELD	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SELE	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SELF	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SELG	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- START[0]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- START[1]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- WR_DLY0	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- WR_DLY1	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nINT	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nLEDG	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nLEDR	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOED	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOEDDLY0	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOEDDLY1	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOEE	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOEF	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nOEG	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nREADY	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nSTART[2]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- nSTART[3]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCLK	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nLRESET	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PULSE[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PULSE[1]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nADS	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WnR	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDE[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDE[2]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDE[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PULSE[2]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PULSE[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nBLAST	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDD[0]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDD[1]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDD[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDF[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDF[1]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IDF[2]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF v1495usr_demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_GIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_IDD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IDE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IDF : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LCLK : std_logic;
SIGNAL ww_PULSE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WnR : std_logic;
SIGNAL ww_nADS : std_logic;
SIGNAL ww_nBLAST : std_logic;
SIGNAL ww_nLRESET : std_logic;
SIGNAL ww_C : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DIRDDLY : std_logic;
SIGNAL ww_GOUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SELD : std_logic;
SIGNAL ww_SELE : std_logic;
SIGNAL ww_SELF : std_logic;
SIGNAL ww_SELG : std_logic;
SIGNAL ww_START : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_WR_DLY0 : std_logic;
SIGNAL ww_WR_DLY1 : std_logic;
SIGNAL ww_nINT : std_logic;
SIGNAL ww_nLEDG : std_logic;
SIGNAL ww_nLEDR : std_logic;
SIGNAL ww_nOED : std_logic;
SIGNAL ww_nOEDDLY0 : std_logic;
SIGNAL ww_nOEDDLY1 : std_logic;
SIGNAL ww_nOEE : std_logic;
SIGNAL ww_nOEF : std_logic;
SIGNAL ww_nOEG : std_logic;
SIGNAL ww_nREADY : std_logic;
SIGNAL ww_nSTART : std_logic_vector(3 DOWNTO 2);
SIGNAL \I1|I1|ADDR_s_3__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_1__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_0__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_7__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_8__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_9__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_12__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_10__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_11__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_13__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_14__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_15__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_6__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_2__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_4__Z~regout\ : std_logic;
SIGNAL \I1|I1|ADDR_s_5__Z~regout\ : std_logic;
SIGNAL \I0|WideOr0~0_combout\ : std_logic;
SIGNAL \I0|WideOr0~1_combout\ : std_logic;
SIGNAL \I0|WideOr0~combout\ : std_logic;
SIGNAL \I0|Mux4~0_combout\ : std_logic;
SIGNAL \I0|Mux4~combout\ : std_logic;
SIGNAL \D[0]~0\ : std_logic;
SIGNAL \D[1]~1\ : std_logic;
SIGNAL \D[2]~2\ : std_logic;
SIGNAL \D[3]~3\ : std_logic;
SIGNAL \D[4]~4\ : std_logic;
SIGNAL \D[5]~5\ : std_logic;
SIGNAL \D[6]~6\ : std_logic;
SIGNAL \D[7]~7\ : std_logic;
SIGNAL \D[8]~8\ : std_logic;
SIGNAL \D[9]~9\ : std_logic;
SIGNAL \D[10]~10\ : std_logic;
SIGNAL \D[11]~11\ : std_logic;
SIGNAL \D[12]~12\ : std_logic;
SIGNAL \D[13]~13\ : std_logic;
SIGNAL \D[14]~14\ : std_logic;
SIGNAL \D[15]~15\ : std_logic;
SIGNAL \D[16]~16\ : std_logic;
SIGNAL \D[17]~17\ : std_logic;
SIGNAL \D[18]~18\ : std_logic;
SIGNAL \D[19]~19\ : std_logic;
SIGNAL \D[20]~20\ : std_logic;
SIGNAL \D[21]~21\ : std_logic;
SIGNAL \D[22]~22\ : std_logic;
SIGNAL \D[23]~23\ : std_logic;
SIGNAL \D[24]~24\ : std_logic;
SIGNAL \D[25]~25\ : std_logic;
SIGNAL \D[26]~26\ : std_logic;
SIGNAL \D[27]~27\ : std_logic;
SIGNAL \D[28]~28\ : std_logic;
SIGNAL \D[29]~29\ : std_logic;
SIGNAL \D[30]~30\ : std_logic;
SIGNAL \D[31]~31\ : std_logic;
SIGNAL \DDLY[0]~0\ : std_logic;
SIGNAL \DDLY[1]~1\ : std_logic;
SIGNAL \DDLY[2]~2\ : std_logic;
SIGNAL \DDLY[3]~3\ : std_logic;
SIGNAL \DDLY[4]~4\ : std_logic;
SIGNAL \DDLY[5]~5\ : std_logic;
SIGNAL \DDLY[6]~6\ : std_logic;
SIGNAL \DDLY[7]~7\ : std_logic;
SIGNAL \E[0]~0\ : std_logic;
SIGNAL \E[1]~1\ : std_logic;
SIGNAL \E[2]~2\ : std_logic;
SIGNAL \E[3]~3\ : std_logic;
SIGNAL \E[4]~4\ : std_logic;
SIGNAL \E[5]~5\ : std_logic;
SIGNAL \E[6]~6\ : std_logic;
SIGNAL \E[7]~7\ : std_logic;
SIGNAL \E[8]~8\ : std_logic;
SIGNAL \E[9]~9\ : std_logic;
SIGNAL \E[10]~10\ : std_logic;
SIGNAL \E[11]~11\ : std_logic;
SIGNAL \E[12]~12\ : std_logic;
SIGNAL \E[13]~13\ : std_logic;
SIGNAL \E[14]~14\ : std_logic;
SIGNAL \E[15]~15\ : std_logic;
SIGNAL \E[16]~16\ : std_logic;
SIGNAL \E[17]~17\ : std_logic;
SIGNAL \E[18]~18\ : std_logic;
SIGNAL \E[19]~19\ : std_logic;
SIGNAL \E[20]~20\ : std_logic;
SIGNAL \E[21]~21\ : std_logic;
SIGNAL \E[22]~22\ : std_logic;
SIGNAL \E[23]~23\ : std_logic;
SIGNAL \E[24]~24\ : std_logic;
SIGNAL \E[25]~25\ : std_logic;
SIGNAL \E[26]~26\ : std_logic;
SIGNAL \E[27]~27\ : std_logic;
SIGNAL \E[28]~28\ : std_logic;
SIGNAL \E[29]~29\ : std_logic;
SIGNAL \E[30]~30\ : std_logic;
SIGNAL \E[31]~31\ : std_logic;
SIGNAL \F[0]~0\ : std_logic;
SIGNAL \F[1]~1\ : std_logic;
SIGNAL \F[2]~2\ : std_logic;
SIGNAL \F[3]~3\ : std_logic;
SIGNAL \F[4]~4\ : std_logic;
SIGNAL \F[5]~5\ : std_logic;
SIGNAL \F[6]~6\ : std_logic;
SIGNAL \F[7]~7\ : std_logic;
SIGNAL \F[8]~8\ : std_logic;
SIGNAL \F[9]~9\ : std_logic;
SIGNAL \F[10]~10\ : std_logic;
SIGNAL \F[11]~11\ : std_logic;
SIGNAL \F[12]~12\ : std_logic;
SIGNAL \F[13]~13\ : std_logic;
SIGNAL \F[14]~14\ : std_logic;
SIGNAL \F[15]~15\ : std_logic;
SIGNAL \F[16]~16\ : std_logic;
SIGNAL \F[17]~17\ : std_logic;
SIGNAL \F[18]~18\ : std_logic;
SIGNAL \F[19]~19\ : std_logic;
SIGNAL \F[20]~20\ : std_logic;
SIGNAL \F[21]~21\ : std_logic;
SIGNAL \F[22]~22\ : std_logic;
SIGNAL \F[23]~23\ : std_logic;
SIGNAL \F[24]~24\ : std_logic;
SIGNAL \F[25]~25\ : std_logic;
SIGNAL \F[26]~26\ : std_logic;
SIGNAL \F[27]~27\ : std_logic;
SIGNAL \F[28]~28\ : std_logic;
SIGNAL \F[29]~29\ : std_logic;
SIGNAL \F[30]~30\ : std_logic;
SIGNAL \F[31]~31\ : std_logic;
SIGNAL \LAD[0]~0\ : std_logic;
SIGNAL \LAD[1]~1\ : std_logic;
SIGNAL \LAD[2]~2\ : std_logic;
SIGNAL \LAD[3]~3\ : std_logic;
SIGNAL \LAD[4]~4\ : std_logic;
SIGNAL \LAD[5]~5\ : std_logic;
SIGNAL \LAD[6]~6\ : std_logic;
SIGNAL \LAD[7]~7\ : std_logic;
SIGNAL \LAD[8]~8\ : std_logic;
SIGNAL \LAD[9]~9\ : std_logic;
SIGNAL \LAD[10]~10\ : std_logic;
SIGNAL \LAD[11]~11\ : std_logic;
SIGNAL \LAD[12]~12\ : std_logic;
SIGNAL \LAD[13]~13\ : std_logic;
SIGNAL \LAD[14]~14\ : std_logic;
SIGNAL \LAD[15]~15\ : std_logic;
SIGNAL \LCLK~combout\ : std_logic;
SIGNAL \nLRESET~combout\ : std_logic;
SIGNAL \nADS~combout\ : std_logic;
SIGNAL \WnR~combout\ : std_logic;
SIGNAL \I1|I1|g1_0_x\ : std_logic;
SIGNAL \nBLAST~combout\ : std_logic;
SIGNAL \I1|I1|m1_x\ : std_logic;
SIGNAL \I1|I1|g0_x\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_4\ : std_logic;
SIGNAL \I1|I1|WREN_s\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_5\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_2\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_6\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_0\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_9\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_7\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_8\ : std_logic;
SIGNAL \I0|Equal9~0_combout\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_15\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_14\ : std_logic;
SIGNAL \I0|Equal9~2_combout\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_11\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_13\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_12\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_10\ : std_logic;
SIGNAL \I0|Equal9~1_combout\ : std_logic;
SIGNAL \I0|C_CONTROL[16]~2_combout\ : std_logic;
SIGNAL \I0|Equal15~3_combout\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_3\ : std_logic;
SIGNAL \I1|I1|REG_ADDR_x_1\ : std_logic;
SIGNAL \I0|Equal18~0_combout\ : std_logic;
SIGNAL \I0|D_DATA[0]~0_combout\ : std_logic;
SIGNAL \I0|Equal9~4_combout\ : std_logic;
SIGNAL \I0|Equal12~0_combout\ : std_logic;
SIGNAL \I0|Equal11~2_combout\ : std_logic;
SIGNAL \I0|Equal15~2_combout\ : std_logic;
SIGNAL \I0|Equal16~0_combout\ : std_logic;
SIGNAL \I0|D_CONTROL[1]~2_combout\ : std_logic;
SIGNAL \I1|I2|DIR_i_iv\ : std_logic;
SIGNAL \I1|I2|dir_i199_x\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_0\ : std_logic;
SIGNAL \I1|I2|OUT_i_0\ : std_logic;
SIGNAL \I1|I2|dir_i198_x\ : std_logic;
SIGNAL \I1|I2|OUT_i_1\ : std_logic;
SIGNAL \I1|I2|OUT_i_2\ : std_logic;
SIGNAL \I1|I2|OUT_i_3\ : std_logic;
SIGNAL \I1|I2|OUT_i_4\ : std_logic;
SIGNAL \I1|I2|OUT_i_5\ : std_logic;
SIGNAL \I1|I2|OUT_i_6\ : std_logic;
SIGNAL \I1|I2|OUT_i_7\ : std_logic;
SIGNAL \I1|I2|OUT_i_8\ : std_logic;
SIGNAL \I1|I2|OUT_i_9\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_11\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_12\ : std_logic;
SIGNAL \I1|I2|OUT_i_12\ : std_logic;
SIGNAL \I1|I2|OUT_i_13\ : std_logic;
SIGNAL \I0|Equal19~0_combout\ : std_logic;
SIGNAL \I0|D_DATA[16]~1_combout\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_15\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_16\ : std_logic;
SIGNAL \I1|I2|OUT_i_16\ : std_logic;
SIGNAL \I1|I2|OUT_i_17\ : std_logic;
SIGNAL \I1|I2|OUT_i_18\ : std_logic;
SIGNAL \I1|I2|OUT_i_19\ : std_logic;
SIGNAL \I1|I2|OUT_i_20\ : std_logic;
SIGNAL \I1|I2|OUT_i_21\ : std_logic;
SIGNAL \I1|I2|OUT_i_22\ : std_logic;
SIGNAL \I1|I2|OUT_i_23\ : std_logic;
SIGNAL \I1|I2|OUT_i_24\ : std_logic;
SIGNAL \I1|I2|OUT_i_25\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_27\ : std_logic;
SIGNAL \I1|I2|OUT_i_x_28\ : std_logic;
SIGNAL \I1|I2|OUT_i_28\ : std_logic;
SIGNAL \I1|I2|OUT_i_29\ : std_logic;
SIGNAL \I0|Equal17~2_combout\ : std_logic;
SIGNAL \I0|PDL_CONTROL[1]~2_combout\ : std_logic;
SIGNAL \I0|Equal9~3_combout\ : std_logic;
SIGNAL \I0|Equal30~0_combout\ : std_logic;
SIGNAL \I0|PDL_DATA[0]~0_combout\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_0\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_1\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_2\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_3\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_4\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_5\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_6\ : std_logic;
SIGNAL \I1|I5|DDLY_OUT_x_7\ : std_logic;
SIGNAL \I0|Equal22~0_combout\ : std_logic;
SIGNAL \I0|E_DATA[0]~0_combout\ : std_logic;
SIGNAL \I0|Equal16~1_combout\ : std_logic;
SIGNAL \I0|E_CONTROL[1]~0_combout\ : std_logic;
SIGNAL \I1|I3|DIR_i_iv\ : std_logic;
SIGNAL \I1|I3|dir_i199_x\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_0\ : std_logic;
SIGNAL \I1|I3|OUT_i_0\ : std_logic;
SIGNAL \I1|I3|dir_i198_x\ : std_logic;
SIGNAL \I1|I3|OUT_i_1\ : std_logic;
SIGNAL \I1|I3|OUT_i_2\ : std_logic;
SIGNAL \I1|I3|OUT_i_3\ : std_logic;
SIGNAL \I1|I3|OUT_i_4\ : std_logic;
SIGNAL \I1|I3|OUT_i_5\ : std_logic;
SIGNAL \I1|I3|OUT_i_6\ : std_logic;
SIGNAL \I1|I3|OUT_i_7\ : std_logic;
SIGNAL \I1|I3|OUT_i_8\ : std_logic;
SIGNAL \I1|I3|OUT_i_9\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_11\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_12\ : std_logic;
SIGNAL \I1|I3|OUT_i_12\ : std_logic;
SIGNAL \I1|I3|OUT_i_13\ : std_logic;
SIGNAL \I0|Equal23~0_combout\ : std_logic;
SIGNAL \I0|E_DATA[16]~1_combout\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_15\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_16\ : std_logic;
SIGNAL \I1|I3|OUT_i_16\ : std_logic;
SIGNAL \I1|I3|OUT_i_17\ : std_logic;
SIGNAL \I1|I3|OUT_i_18\ : std_logic;
SIGNAL \I1|I3|OUT_i_19\ : std_logic;
SIGNAL \I1|I3|OUT_i_20\ : std_logic;
SIGNAL \I1|I3|OUT_i_21\ : std_logic;
SIGNAL \I1|I3|OUT_i_22\ : std_logic;
SIGNAL \I1|I3|OUT_i_23\ : std_logic;
SIGNAL \I1|I3|OUT_i_24\ : std_logic;
SIGNAL \I1|I3|OUT_i_25\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_27\ : std_logic;
SIGNAL \I1|I3|OUT_i_x_28\ : std_logic;
SIGNAL \I1|I3|OUT_i_28\ : std_logic;
SIGNAL \I1|I3|OUT_i_29\ : std_logic;
SIGNAL \I1|I3|DIN_1\ : std_logic;
SIGNAL \I1|I3|DIN_0\ : std_logic;
SIGNAL \I0|GATEWIDTH[15]~2_combout\ : std_logic;
SIGNAL \I0|C_MASK[0]~0_combout\ : std_logic;
SIGNAL \I0|F_DOUT[0]~0_combout\ : std_logic;
SIGNAL \I0|F_CONTROL[1]~0_combout\ : std_logic;
SIGNAL \I1|I4|DIR_i_iv\ : std_logic;
SIGNAL \I1|I4|dir_i199_x\ : std_logic;
SIGNAL \I1|I3|DIN_2\ : std_logic;
SIGNAL \I0|C~1_combout\ : std_logic;
SIGNAL \I0|F_DOUT[1]~2_combout\ : std_logic;
SIGNAL \I0|F_DOUT[2]~1_combout\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_0\ : std_logic;
SIGNAL \I1|I4|OUT_i_0\ : std_logic;
SIGNAL \I1|I4|dir_i198_x\ : std_logic;
SIGNAL \I1|I3|DIN_3\ : std_logic;
SIGNAL \I0|F_DOUT[3]~3_combout\ : std_logic;
SIGNAL \I1|I4|OUT_i_1\ : std_logic;
SIGNAL \I0|C~4_combout\ : std_logic;
SIGNAL \I0|F_DOUT[4]~4_combout\ : std_logic;
SIGNAL \I0|F_DOUT[4]~5_combout\ : std_logic;
SIGNAL \I1|I4|OUT_i_2\ : std_logic;
SIGNAL \I0|C~6_combout\ : std_logic;
SIGNAL \I0|C~5_combout\ : std_logic;
SIGNAL \I0|F_DOUT[5]~6_combout\ : std_logic;
SIGNAL \I1|I4|OUT_i_3\ : std_logic;
SIGNAL \I1|I3|DIN_4\ : std_logic;
SIGNAL \I1|I4|OUT_i_4\ : std_logic;
SIGNAL \I1|I3|DIN_5\ : std_logic;
SIGNAL \I1|I4|OUT_i_5\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_11\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_12\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_15\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_16\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_27\ : std_logic;
SIGNAL \I1|I4|OUT_i_x_28\ : std_logic;
SIGNAL \I0|Equal24~0_combout\ : std_logic;
SIGNAL \I0|Equal21~0_combout\ : std_logic;
SIGNAL \I0|E_CONTROL[16]~1_combout\ : std_logic;
SIGNAL \I0|Selector15~4\ : std_logic;
SIGNAL \I1|I4|DIN_0\ : std_logic;
SIGNAL \I1|I2|DIN_0\ : std_logic;
SIGNAL \I0|Selector15~2_combout\ : std_logic;
SIGNAL \I0|GATEWIDTH[15]~3_combout\ : std_logic;
SIGNAL \I0|Equal14~0_combout\ : std_logic;
SIGNAL \I0|Selector15~0_combout\ : std_logic;
SIGNAL \I0|C~0_combout\ : std_logic;
SIGNAL \I0|Selector15~1_combout\ : std_logic;
SIGNAL \I0|Equal25~0_combout\ : std_logic;
SIGNAL \I0|Equal29~2_combout\ : std_logic;
SIGNAL \I0|F_CONTROL[16]~1_combout\ : std_logic;
SIGNAL \I0|Selector15~3\ : std_logic;
SIGNAL \I0|Selector15~5_combout\ : std_logic;
SIGNAL \I0|Selector15~7_combout\ : std_logic;
SIGNAL \I0|Equal17~3_combout\ : std_logic;
SIGNAL \I0|Equal20~0_combout\ : std_logic;
SIGNAL \I0|D_CONTROL[16]~3_combout\ : std_logic;
SIGNAL \I0|Selector15~6\ : std_logic;
SIGNAL \I0|Equal31~0_combout\ : std_logic;
SIGNAL \I1|I3|DIN_16\ : std_logic;
SIGNAL \I0|Selector15~9_combout\ : std_logic;
SIGNAL \I0|Equal27~3_combout\ : std_logic;
SIGNAL \I1|I4|DIN_16\ : std_logic;
SIGNAL \I0|Equal33~0_combout\ : std_logic;
SIGNAL \I0|Selector15~8_combout\ : std_logic;
SIGNAL \I0|Selector15~10_combout\ : std_logic;
SIGNAL \I1|I2|DIN_16\ : std_logic;
SIGNAL \I0|Equal9~5_combout\ : std_logic;
SIGNAL \I0|Selector15~12_combout\ : std_logic;
SIGNAL \I0|Equal11~3_combout\ : std_logic;
SIGNAL \I0|Selector15~11_combout\ : std_logic;
SIGNAL \I0|Equal30~1_combout\ : std_logic;
SIGNAL \I0|Equal10~1_combout\ : std_logic;
SIGNAL \I0|Selector15~14_combout\ : std_logic;
SIGNAL \I0|Equal32~0_combout\ : std_logic;
SIGNAL \I0|Equal15~4_combout\ : std_logic;
SIGNAL \I0|SCRATCH[0]~0_combout\ : std_logic;
SIGNAL \I0|Selector15~13\ : std_logic;
SIGNAL \I0|Selector15~15_combout\ : std_logic;
SIGNAL \I1|I1|RDEN_s\ : std_logic;
SIGNAL \I1|I1|REG_RDEN_x\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_0\ : std_logic;
SIGNAL \I1|I1|un2_lad_oe_i_x\ : std_logic;
SIGNAL \I0|C_CONTROL[0]~4_combout\ : std_logic;
SIGNAL \I0|Selector14~5\ : std_logic;
SIGNAL \I0|Selector14~6\ : std_logic;
SIGNAL \I1|I4|DIN_17\ : std_logic;
SIGNAL \I0|Selector14~7_combout\ : std_logic;
SIGNAL \I1|I3|DIN_17\ : std_logic;
SIGNAL \I0|Selector14~8_combout\ : std_logic;
SIGNAL \I0|Selector14~9_combout\ : std_logic;
SIGNAL \I0|Selector14~3\ : std_logic;
SIGNAL \I0|Selector14~2\ : std_logic;
SIGNAL \I1|I4|DIN_1\ : std_logic;
SIGNAL \I1|I2|DIN_1\ : std_logic;
SIGNAL \I0|Selector14~1_combout\ : std_logic;
SIGNAL \I0|Selector14~0_combout\ : std_logic;
SIGNAL \I0|Selector14~4_combout\ : std_logic;
SIGNAL \I0|Selector14~13_combout\ : std_logic;
SIGNAL \I0|Selector14~12_combout\ : std_logic;
SIGNAL \I1|I2|DIN_17\ : std_logic;
SIGNAL \I0|Selector14~11_combout\ : std_logic;
SIGNAL \I0|Selector14~10_combout\ : std_logic;
SIGNAL \I0|Selector14~14_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_1\ : std_logic;
SIGNAL \I0|Selector13~3\ : std_logic;
SIGNAL \I0|Selector13~2\ : std_logic;
SIGNAL \I1|I2|DIN_2\ : std_logic;
SIGNAL \I1|I4|DIN_2\ : std_logic;
SIGNAL \I0|Selector13~1_combout\ : std_logic;
SIGNAL \I0|C~2_combout\ : std_logic;
SIGNAL \I0|Selector13~0_combout\ : std_logic;
SIGNAL \I0|Selector13~4_combout\ : std_logic;
SIGNAL \I0|Selector13~6\ : std_logic;
SIGNAL \I0|Selector13~5\ : std_logic;
SIGNAL \I1|I4|DIN_18\ : std_logic;
SIGNAL \I0|Selector13~7_combout\ : std_logic;
SIGNAL \I1|I3|DIN_18\ : std_logic;
SIGNAL \I0|Selector13~8_combout\ : std_logic;
SIGNAL \I0|Selector13~9_combout\ : std_logic;
SIGNAL \I1|I2|DIN_18\ : std_logic;
SIGNAL \I0|Selector13~11_combout\ : std_logic;
SIGNAL \I0|Selector13~12\ : std_logic;
SIGNAL \I0|Selector13~13_combout\ : std_logic;
SIGNAL \I0|Selector13~10_combout\ : std_logic;
SIGNAL \I0|Selector13~14_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_2\ : std_logic;
SIGNAL \I1|I4|DIN_3\ : std_logic;
SIGNAL \I1|I2|DIN_3\ : std_logic;
SIGNAL \I0|Selector12~1_combout\ : std_logic;
SIGNAL \I0|Selector12~3\ : std_logic;
SIGNAL \I0|Selector12~2\ : std_logic;
SIGNAL \I0|C~3_combout\ : std_logic;
SIGNAL \I0|Selector12~0_combout\ : std_logic;
SIGNAL \I0|Selector12~4_combout\ : std_logic;
SIGNAL \I0|Selector12~12_combout\ : std_logic;
SIGNAL \I1|I4|DIN_19\ : std_logic;
SIGNAL \I0|Selector12~7_combout\ : std_logic;
SIGNAL \I0|Selector12~5\ : std_logic;
SIGNAL \I0|Selector12~6\ : std_logic;
SIGNAL \I1|I3|DIN_19\ : std_logic;
SIGNAL \I0|Selector12~8_combout\ : std_logic;
SIGNAL \I0|Selector12~9_combout\ : std_logic;
SIGNAL \I1|I2|DIN_19\ : std_logic;
SIGNAL \I0|Selector12~10_combout\ : std_logic;
SIGNAL \I0|Selector12~11_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_3\ : std_logic;
SIGNAL \I0|Equal10~0_combout\ : std_logic;
SIGNAL \I0|MODE[4]~0_combout\ : std_logic;
SIGNAL \I0|Selector11~12_combout\ : std_logic;
SIGNAL \I0|Selector11~3\ : std_logic;
SIGNAL \I1|I4|DIN_4\ : std_logic;
SIGNAL \I1|I2|DIN_4\ : std_logic;
SIGNAL \I0|Selector11~1_combout\ : std_logic;
SIGNAL \I0|Selector11~2\ : std_logic;
SIGNAL \I0|Selector11~0_combout\ : std_logic;
SIGNAL \I0|Selector11~4_combout\ : std_logic;
SIGNAL \I0|Selector11~5\ : std_logic;
SIGNAL \I1|I4|DIN_20\ : std_logic;
SIGNAL \I0|Selector11~7_combout\ : std_logic;
SIGNAL \I0|Selector11~6\ : std_logic;
SIGNAL \I1|I3|DIN_20\ : std_logic;
SIGNAL \I0|Selector11~8_combout\ : std_logic;
SIGNAL \I0|Selector11~9_combout\ : std_logic;
SIGNAL \I1|I2|DIN_20\ : std_logic;
SIGNAL \I0|Selector11~10_combout\ : std_logic;
SIGNAL \I0|Selector11~11_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_4\ : std_logic;
SIGNAL \I0|Selector10~6\ : std_logic;
SIGNAL \I1|I4|DIN_21\ : std_logic;
SIGNAL \I0|Selector10~7_combout\ : std_logic;
SIGNAL \I1|I3|DIN_21\ : std_logic;
SIGNAL \I0|Selector10~8_combout\ : std_logic;
SIGNAL \I0|Selector10~5\ : std_logic;
SIGNAL \I0|Selector10~9_combout\ : std_logic;
SIGNAL \I0|Selector10~12\ : std_logic;
SIGNAL \I1|I4|DIN_5\ : std_logic;
SIGNAL \I1|I2|DIN_5\ : std_logic;
SIGNAL \I0|Selector10~1_combout\ : std_logic;
SIGNAL \I0|Selector10~2\ : std_logic;
SIGNAL \I0|Selector10~3\ : std_logic;
SIGNAL \I0|Selector10~0_combout\ : std_logic;
SIGNAL \I0|Selector10~4_combout\ : std_logic;
SIGNAL \I1|I2|DIN_21\ : std_logic;
SIGNAL \I0|Selector10~10_combout\ : std_logic;
SIGNAL \I0|Selector10~11_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_5\ : std_logic;
SIGNAL \I0|Selector9~12_combout\ : std_logic;
SIGNAL \I0|Selector9~5\ : std_logic;
SIGNAL \I0|Selector9~6\ : std_logic;
SIGNAL \I1|I4|DIN_22\ : std_logic;
SIGNAL \I0|Selector9~7_combout\ : std_logic;
SIGNAL \I1|I3|DIN_22\ : std_logic;
SIGNAL \I0|Selector9~8_combout\ : std_logic;
SIGNAL \I0|Selector9~9_combout\ : std_logic;
SIGNAL \I1|I2|DIN_22\ : std_logic;
SIGNAL \I1|I3|DIN_6\ : std_logic;
SIGNAL \I0|Selector9~10_combout\ : std_logic;
SIGNAL \I0|Selector9~11_combout\ : std_logic;
SIGNAL \I0|Selector9~2\ : std_logic;
SIGNAL \I0|Selector9~3\ : std_logic;
SIGNAL \I1|I2|DIN_6\ : std_logic;
SIGNAL \I1|I4|DIN_6\ : std_logic;
SIGNAL \I0|Selector9~1_combout\ : std_logic;
SIGNAL \I0|Selector9~0_combout\ : std_logic;
SIGNAL \I0|Selector9~4_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_6\ : std_logic;
SIGNAL \I1|I4|DIN_23\ : std_logic;
SIGNAL \I0|Selector8~7_combout\ : std_logic;
SIGNAL \I0|Selector8~6\ : std_logic;
SIGNAL \I0|Selector8~5\ : std_logic;
SIGNAL \I1|I3|DIN_23\ : std_logic;
SIGNAL \I0|Selector8~8_combout\ : std_logic;
SIGNAL \I0|Selector8~9_combout\ : std_logic;
SIGNAL \I0|Selector8~12\ : std_logic;
SIGNAL \I1|I2|DIN_23\ : std_logic;
SIGNAL \I1|I3|DIN_7\ : std_logic;
SIGNAL \I0|Selector8~10_combout\ : std_logic;
SIGNAL \I0|Selector8~11_combout\ : std_logic;
SIGNAL \I0|Selector8~3\ : std_logic;
SIGNAL \I0|Selector8~2\ : std_logic;
SIGNAL \I1|I4|DIN_7\ : std_logic;
SIGNAL \I1|I2|DIN_7\ : std_logic;
SIGNAL \I0|Selector8~1_combout\ : std_logic;
SIGNAL \I0|Selector8~0_combout\ : std_logic;
SIGNAL \I0|Selector8~4_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_7\ : std_logic;
SIGNAL \I1|I2|DIN_24\ : std_logic;
SIGNAL \I1|I3|DIN_8\ : std_logic;
SIGNAL \I0|Selector7~9_combout\ : std_logic;
SIGNAL \I0|Selector7~10\ : std_logic;
SIGNAL \I0|Selector7~5\ : std_logic;
SIGNAL \I0|Selector7~4\ : std_logic;
SIGNAL \I1|I4|DIN_24\ : std_logic;
SIGNAL \I0|Selector7~6_combout\ : std_logic;
SIGNAL \I1|I3|DIN_24\ : std_logic;
SIGNAL \I0|Selector7~7_combout\ : std_logic;
SIGNAL \I0|Selector7~8_combout\ : std_logic;
SIGNAL \I0|Selector7~2\ : std_logic;
SIGNAL \I0|Selector7~1\ : std_logic;
SIGNAL \I1|I4|DIN_8\ : std_logic;
SIGNAL \I1|I2|DIN_8\ : std_logic;
SIGNAL \I0|Selector7~0_combout\ : std_logic;
SIGNAL \I0|Selector7~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_8\ : std_logic;
SIGNAL \I0|Selector6~11_combout\ : std_logic;
SIGNAL \I1|I2|DIN_25\ : std_logic;
SIGNAL \I1|I3|DIN_9\ : std_logic;
SIGNAL \I0|Selector6~9_combout\ : std_logic;
SIGNAL \I0|Selector6~10_combout\ : std_logic;
SIGNAL \I0|Selector6~4\ : std_logic;
SIGNAL \I1|I4|DIN_25\ : std_logic;
SIGNAL \I0|Equal27~2_combout\ : std_logic;
SIGNAL \I0|Selector6~6_combout\ : std_logic;
SIGNAL \I0|Selector6~5\ : std_logic;
SIGNAL \I1|I3|DIN_25\ : std_logic;
SIGNAL \I0|Selector6~7_combout\ : std_logic;
SIGNAL \I0|Selector6~8_combout\ : std_logic;
SIGNAL \I0|Selector6~2\ : std_logic;
SIGNAL \I0|Selector6~1\ : std_logic;
SIGNAL \I1|I2|DIN_9\ : std_logic;
SIGNAL \I1|I4|DIN_9\ : std_logic;
SIGNAL \I0|Selector6~0_combout\ : std_logic;
SIGNAL \I0|Selector6~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_9\ : std_logic;
SIGNAL \I0|Selector5~10\ : std_logic;
SIGNAL \I1|I2|DIN_26\ : std_logic;
SIGNAL \I1|I3|DIN_10\ : std_logic;
SIGNAL \I0|Selector5~9_combout\ : std_logic;
SIGNAL \I1|I4|DIN_26\ : std_logic;
SIGNAL \I0|Selector5~6_combout\ : std_logic;
SIGNAL \I0|Selector5~5\ : std_logic;
SIGNAL \I0|Selector5~4\ : std_logic;
SIGNAL \I1|I3|DIN_26\ : std_logic;
SIGNAL \I0|Selector5~7_combout\ : std_logic;
SIGNAL \I0|Selector5~8_combout\ : std_logic;
SIGNAL \I0|Selector5~1\ : std_logic;
SIGNAL \I0|Selector5~2\ : std_logic;
SIGNAL \I1|I4|DIN_10\ : std_logic;
SIGNAL \I1|I2|DIN_10\ : std_logic;
SIGNAL \I0|Selector5~0_combout\ : std_logic;
SIGNAL \I0|Selector5~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_10\ : std_logic;
SIGNAL \I0|Selector4~10_combout\ : std_logic;
SIGNAL \I1|I2|DIN_27\ : std_logic;
SIGNAL \I1|I3|DIN_11\ : std_logic;
SIGNAL \I0|Selector4~9_combout\ : std_logic;
SIGNAL \I0|Selector4~4\ : std_logic;
SIGNAL \I0|Selector4~5\ : std_logic;
SIGNAL \I1|I4|DIN_27\ : std_logic;
SIGNAL \I0|Selector4~6_combout\ : std_logic;
SIGNAL \I1|I3|DIN_27\ : std_logic;
SIGNAL \I0|Selector4~7_combout\ : std_logic;
SIGNAL \I0|Selector4~8_combout\ : std_logic;
SIGNAL \I1|I2|DIN_11\ : std_logic;
SIGNAL \I1|I4|DIN_11\ : std_logic;
SIGNAL \I0|Selector4~0_combout\ : std_logic;
SIGNAL \I0|Selector4~1\ : std_logic;
SIGNAL \I0|Selector4~2\ : std_logic;
SIGNAL \I0|Selector4~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_11\ : std_logic;
SIGNAL \I0|Selector3~10_combout\ : std_logic;
SIGNAL \I0|Selector3~1\ : std_logic;
SIGNAL \I0|Selector3~2\ : std_logic;
SIGNAL \I1|I4|DIN_12\ : std_logic;
SIGNAL \I1|I2|DIN_12\ : std_logic;
SIGNAL \I0|Selector3~0_combout\ : std_logic;
SIGNAL \I0|Selector3~3_combout\ : std_logic;
SIGNAL \I1|I2|DIN_28\ : std_logic;
SIGNAL \I1|I3|DIN_12\ : std_logic;
SIGNAL \I0|Selector3~9_combout\ : std_logic;
SIGNAL \I0|Selector3~5\ : std_logic;
SIGNAL \I0|Selector3~4\ : std_logic;
SIGNAL \I1|I4|DIN_28\ : std_logic;
SIGNAL \I0|Selector3~6_combout\ : std_logic;
SIGNAL \I1|I3|DIN_28\ : std_logic;
SIGNAL \I0|Selector3~7_combout\ : std_logic;
SIGNAL \I0|Selector3~8_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_12\ : std_logic;
SIGNAL \I0|Selector2~10\ : std_logic;
SIGNAL \I1|I2|DIN_29\ : std_logic;
SIGNAL \I1|I3|DIN_13\ : std_logic;
SIGNAL \I0|Selector2~9_combout\ : std_logic;
SIGNAL \I0|Selector2~4\ : std_logic;
SIGNAL \I1|I4|DIN_29\ : std_logic;
SIGNAL \I0|Selector2~6_combout\ : std_logic;
SIGNAL \I0|Selector2~5\ : std_logic;
SIGNAL \I1|I3|DIN_29\ : std_logic;
SIGNAL \I0|Selector2~7_combout\ : std_logic;
SIGNAL \I0|Selector2~8_combout\ : std_logic;
SIGNAL \I1|I2|DIN_13\ : std_logic;
SIGNAL \I1|I4|DIN_13\ : std_logic;
SIGNAL \I0|Selector2~0_combout\ : std_logic;
SIGNAL \I0|Selector2~1\ : std_logic;
SIGNAL \I0|Selector2~2\ : std_logic;
SIGNAL \I0|Selector2~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_13\ : std_logic;
SIGNAL \I0|Selector1~10_combout\ : std_logic;
SIGNAL \I1|I2|DIN_30\ : std_logic;
SIGNAL \I1|I3|DIN_14\ : std_logic;
SIGNAL \I0|Selector1~9_combout\ : std_logic;
SIGNAL \I0|Selector1~5\ : std_logic;
SIGNAL \I1|I4|DIN_30\ : std_logic;
SIGNAL \I0|Selector1~6_combout\ : std_logic;
SIGNAL \I0|Selector1~4\ : std_logic;
SIGNAL \I1|I3|DIN_30\ : std_logic;
SIGNAL \I0|Selector1~7_combout\ : std_logic;
SIGNAL \I0|Selector1~8_combout\ : std_logic;
SIGNAL \I1|I4|DIN_14\ : std_logic;
SIGNAL \I1|I2|DIN_14\ : std_logic;
SIGNAL \I0|Selector1~0_combout\ : std_logic;
SIGNAL \I0|Selector1~1\ : std_logic;
SIGNAL \I0|Selector1~2\ : std_logic;
SIGNAL \I0|Selector1~3_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_14\ : std_logic;
SIGNAL \I0|Selector0~10\ : std_logic;
SIGNAL \I1|I2|DIN_31\ : std_logic;
SIGNAL \I1|I3|DIN_15\ : std_logic;
SIGNAL \I0|Selector0~9_combout\ : std_logic;
SIGNAL \I1|I4|DIN_15\ : std_logic;
SIGNAL \I1|I2|DIN_15\ : std_logic;
SIGNAL \I0|Selector0~0_combout\ : std_logic;
SIGNAL \I0|Selector0~1\ : std_logic;
SIGNAL \I0|Selector0~2\ : std_logic;
SIGNAL \I0|Selector0~3_combout\ : std_logic;
SIGNAL \I1|I4|DIN_31\ : std_logic;
SIGNAL \I0|Selector0~6_combout\ : std_logic;
SIGNAL \I0|Selector0~4\ : std_logic;
SIGNAL \I0|Selector0~5\ : std_logic;
SIGNAL \I1|I3|DIN_31\ : std_logic;
SIGNAL \I0|Selector0~7_combout\ : std_logic;
SIGNAL \I0|Selector0~8_combout\ : std_logic;
SIGNAL \I1|I1|LAD_OUT_x_15\ : std_logic;
SIGNAL \I0|C_DOUT[0]~0_combout\ : std_logic;
SIGNAL \I0|C_DOUT[1]~1_combout\ : std_logic;
SIGNAL \I0|C_DOUT[2]~2_combout\ : std_logic;
SIGNAL \I0|C_DOUT[3]~3\ : std_logic;
SIGNAL \I0|C_DOUT[4]~4\ : std_logic;
SIGNAL \I0|C_DOUT[5]~5_combout\ : std_logic;
SIGNAL \I0|C_DOUT[6]~6_combout\ : std_logic;
SIGNAL \I0|C_DOUT[7]~7_combout\ : std_logic;
SIGNAL \I0|C_DOUT[8]~8_combout\ : std_logic;
SIGNAL \I0|C_DOUT[9]~9_combout\ : std_logic;
SIGNAL \I0|C_DOUT[10]~10_combout\ : std_logic;
SIGNAL \I0|C_DOUT[11]~11_combout\ : std_logic;
SIGNAL \I0|C_DOUT[12]~12_combout\ : std_logic;
SIGNAL \I0|C_DOUT[13]~13_combout\ : std_logic;
SIGNAL \I0|C_DOUT[14]~14_combout\ : std_logic;
SIGNAL \I0|C_DOUT[15]~15_combout\ : std_logic;
SIGNAL \I0|C_MASK[16]~1_combout\ : std_logic;
SIGNAL \I0|C_CONTROL[16]~3_combout\ : std_logic;
SIGNAL \I0|C_DOUT[16]~16\ : std_logic;
SIGNAL \I0|C_DOUT[17]~17\ : std_logic;
SIGNAL \I0|C_DOUT[18]~18\ : std_logic;
SIGNAL \I0|C_DOUT[19]~19\ : std_logic;
SIGNAL \I0|C_DOUT[20]~20\ : std_logic;
SIGNAL \I0|C_DOUT[21]~21\ : std_logic;
SIGNAL \I0|C_DOUT[22]~22\ : std_logic;
SIGNAL \I0|C_DOUT[23]~23\ : std_logic;
SIGNAL \I0|C_DOUT[24]~24\ : std_logic;
SIGNAL \I0|C_DOUT[25]~25\ : std_logic;
SIGNAL \I0|C_DOUT[26]~26\ : std_logic;
SIGNAL \I0|C_DOUT[27]~27\ : std_logic;
SIGNAL \I0|C_DOUT[28]~28\ : std_logic;
SIGNAL \I0|C_DOUT[29]~29\ : std_logic;
SIGNAL \I0|C_DOUT[30]~30\ : std_logic;
SIGNAL \I0|C_DOUT[31]~31\ : std_logic;
SIGNAL \I0|P_DLO_DELAY~0_combout\ : std_logic;
SIGNAL \I0|STOP_PDL~regout\ : std_logic;
SIGNAL \I0|CNT[1]~1\ : std_logic;
SIGNAL \I0|CNT[1]~1COUT1_44\ : std_logic;
SIGNAL \I0|CNT[2]~5\ : std_logic;
SIGNAL \I0|CNT[3]~3\ : std_logic;
SIGNAL \I0|CNT[3]~3COUT1_46\ : std_logic;
SIGNAL \I0|CNT[4]~9\ : std_logic;
SIGNAL \I0|CNT[4]~9COUT1_48\ : std_logic;
SIGNAL \I0|CNT[5]~7\ : std_logic;
SIGNAL \I0|CNT[5]~7COUT1_50\ : std_logic;
SIGNAL \I0|CNT[6]~13\ : std_logic;
SIGNAL \I0|CNT[6]~13COUT1_52\ : std_logic;
SIGNAL \I0|CNT[7]~11\ : std_logic;
SIGNAL \I0|CNT[8]~21\ : std_logic;
SIGNAL \I0|CNT[8]~21COUT1_54\ : std_logic;
SIGNAL \I0|CNT[9]~19\ : std_logic;
SIGNAL \I0|CNT[9]~19COUT1_56\ : std_logic;
SIGNAL \I0|CNT[10]~17\ : std_logic;
SIGNAL \I0|CNT[10]~17COUT1_58\ : std_logic;
SIGNAL \I0|CNT[11]~15\ : std_logic;
SIGNAL \I0|CNT[11]~15COUT1_60\ : std_logic;
SIGNAL \I0|CNT[12]~25\ : std_logic;
SIGNAL \I0|CNT[13]~23\ : std_logic;
SIGNAL \I0|CNT[13]~23COUT1_62\ : std_logic;
SIGNAL \I0|CNT[14]~29\ : std_logic;
SIGNAL \I0|CNT[14]~29COUT1_64\ : std_logic;
SIGNAL \I0|GATEWIDTH[15]~4_combout\ : std_logic;
SIGNAL \I0|Equal1~9\ : std_logic;
SIGNAL \I0|Equal1~8\ : std_logic;
SIGNAL \I0|Equal1~5\ : std_logic;
SIGNAL \I0|Equal1~6\ : std_logic;
SIGNAL \I0|Equal1~7\ : std_logic;
SIGNAL \I0|Equal1~0\ : std_logic;
SIGNAL \I0|Equal1~2\ : std_logic;
SIGNAL \I0|Equal1~1\ : std_logic;
SIGNAL \I0|Equal1~3\ : std_logic;
SIGNAL \I0|Equal1~4_combout\ : std_logic;
SIGNAL \I0|Equal1~10_combout\ : std_logic;
SIGNAL \I0|STOP_DLO~regout\ : std_logic;
SIGNAL \I0|P_COINC~0_combout\ : std_logic;
SIGNAL \I0|STARTDELAY~regout\ : std_logic;
SIGNAL \I0|ENABLE_CNT~0_combout\ : std_logic;
SIGNAL \I0|ENABLE_CNT~regout\ : std_logic;
SIGNAL \I0|WVF_CNT[0]~1\ : std_logic;
SIGNAL \I0|WVF_CNT[0]~1COUT1_16\ : std_logic;
SIGNAL \I0|WVF_CNT[1]~3\ : std_logic;
SIGNAL \I0|WVF_CNT[1]~3COUT1_18\ : std_logic;
SIGNAL \I0|WVF_CNT[2]~5\ : std_logic;
SIGNAL \I0|WVF_CNT[2]~5COUT1_20\ : std_logic;
SIGNAL \I0|WVF_CNT[3]~7\ : std_logic;
SIGNAL \I0|WVF_CNT[3]~7COUT1_22\ : std_logic;
SIGNAL \I0|Equal0~0_combout\ : std_logic;
SIGNAL \I0|Equal0~1_combout\ : std_logic;
SIGNAL \I0|PDL_IN_i~regout\ : std_logic;
SIGNAL \I0|PDL_PULSEOUT~1_combout\ : std_logic;
SIGNAL \I0|PDL_PULSEOUT~0_combout\ : std_logic;
SIGNAL \I0|Mux1~0\ : std_logic;
SIGNAL \I0|Mux1\ : std_logic;
SIGNAL \I0|DLO_PULSEOUT~regout\ : std_logic;
SIGNAL \I0|GREEN_PULSE~0\ : std_logic;
SIGNAL \I0|GREEN_PULSE~1_combout\ : std_logic;
SIGNAL \I0|G_CONTROL[0]~0_combout\ : std_logic;
SIGNAL \I0|Mux0~0_combout\ : std_logic;
SIGNAL \I0|Mux2~0_combout\ : std_logic;
SIGNAL \I1|I5|un1_wr_dly0_x\ : std_logic;
SIGNAL \I1|I5|un1_wr_dly1_x\ : std_logic;
SIGNAL \I1|I8|TCNT1_cout[0]~COUT1_6\ : std_logic;
SIGNAL \I1|I8|TCNT1_cout[1]~COUT1_8\ : std_logic;
SIGNAL \I1|I8|TCNT1_cout[2]~COUT1_10\ : std_logic;
SIGNAL \I1|I8|TCNT1_cout[4]~COUT1_12\ : std_logic;
SIGNAL \I1|I8|un7_tcnt1_3\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[0]~COUT1_8\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[1]~COUT1_10\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[2]~COUT1_12\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[3]~COUT1_14\ : std_logic;
SIGNAL \I1|I8|un10_tcnt2_4\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[5]~COUT1_16\ : std_logic;
SIGNAL \I1|I8|TCNT2_cout[6]~COUT1_18\ : std_logic;
SIGNAL \I1|I8|un10_tcnt2_5\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[0]~COUT1_8\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[1]~COUT1_10\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[2]~COUT1_12\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[3]~COUT1_14\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[5]~COUT1_16\ : std_logic;
SIGNAL \I1|I8|g0_3_5\ : std_logic;
SIGNAL \I1|I8|TCNT3_cout[6]~COUT1_18\ : std_logic;
SIGNAL \I1|I8|g0_3_4\ : std_logic;
SIGNAL \I1|I8|TMONOSG\ : std_logic;
SIGNAL \I1|I8|un2_green_pulse_x\ : std_logic;
SIGNAL \I1|I8|nLEDG\ : std_logic;
SIGNAL \I1|I8|TMONOSR\ : std_logic;
SIGNAL \I1|I8|nLEDR\ : std_logic;
SIGNAL \I1|I1|nREADY_s_i\ : std_logic;
SIGNAL \I0|Mux3~0_combout\ : std_logic;
SIGNAL \I0|Mux5~0_combout\ : std_logic;
SIGNAL \I0|MODE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I1|I8|TCNT1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \I1|I8|TCNT2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I1|I8|TCNT3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I1|I8|TICK\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \I0|C_CONTROL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|C_MASK\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|D_CONTROL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|E_CONTROL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|F_CONTROL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|GATEWIDTH\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|PDL_CONTROL\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|REG_DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|WVF_CNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IDD~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDE~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDF~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PULSE~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I1|I1|LBSTATE\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I1|I8|TCNT1_cout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \I1|I8|TCNT2_cout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I1|I8|TCNT3_cout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I1|I8|TICK_combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I0|CNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|C_STATUS\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|D_DATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|E_DATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|F_DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|G_CONTROL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I0|PDL_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|SCRATCH\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I0|ALT_INV_E_CONTROL\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|ALT_INV_PDL_CONTROL\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \I1|I1|ALT_INV_nREADY_s_i\ : std_logic;
SIGNAL \I1|I4|ALT_INV_DIR_i_iv\ : std_logic;
SIGNAL \I1|I4|ALT_INV_dir_i198_x\ : std_logic;
SIGNAL \I0|ALT_INV_F_CONTROL\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|ALT_INV_D_CONTROL\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|ALT_INV_GREEN_PULSE~1_combout\ : std_logic;
SIGNAL \I0|ALT_INV_G_CONTROL\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \I0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_nLRESET~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_GIN <= GIN;
ww_IDD <= IDD;
ww_IDE <= IDE;
ww_IDF <= IDF;
ww_LCLK <= LCLK;
ww_PULSE <= PULSE;
ww_WnR <= WnR;
ww_nADS <= nADS;
ww_nBLAST <= nBLAST;
ww_nLRESET <= nLRESET;
C <= ww_C;
DIRDDLY <= ww_DIRDDLY;
GOUT <= ww_GOUT;
SELD <= ww_SELD;
SELE <= ww_SELE;
SELF <= ww_SELF;
SELG <= ww_SELG;
START <= ww_START;
WR_DLY0 <= ww_WR_DLY0;
WR_DLY1 <= ww_WR_DLY1;
nINT <= ww_nINT;
nLEDG <= ww_nLEDG;
nLEDR <= ww_nLEDR;
nOED <= ww_nOED;
nOEDDLY0 <= ww_nOEDDLY0;
nOEDDLY1 <= ww_nOEDDLY1;
nOEE <= ww_nOEE;
nOEF <= ww_nOEF;
nOEG <= ww_nOEG;
nREADY <= ww_nREADY;
nSTART <= ww_nSTART;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\I0|ALT_INV_E_CONTROL\(0) <= NOT \I0|E_CONTROL\(0);
\I0|ALT_INV_PDL_CONTROL\(2) <= NOT \I0|PDL_CONTROL\(2);
\I1|I1|ALT_INV_nREADY_s_i\ <= NOT \I1|I1|nREADY_s_i\;
\I1|I4|ALT_INV_DIR_i_iv\ <= NOT \I1|I4|DIR_i_iv\;
\I1|I4|ALT_INV_dir_i198_x\ <= NOT \I1|I4|dir_i198_x\;
\I0|ALT_INV_F_CONTROL\(0) <= NOT \I0|F_CONTROL\(0);
\I0|ALT_INV_D_CONTROL\(0) <= NOT \I0|D_CONTROL\(0);
\I0|ALT_INV_GREEN_PULSE~1_combout\ <= NOT \I0|GREEN_PULSE~1_combout\;
\I0|ALT_INV_G_CONTROL\(0) <= NOT \I0|G_CONTROL\(0);
\I0|ALT_INV_Mux3~0_combout\ <= NOT \I0|Mux3~0_combout\;
\I0|ALT_INV_Mux5~0_combout\ <= NOT \I0|Mux5~0_combout\;
\ALT_INV_nLRESET~combout\ <= NOT \nLRESET~combout\;

-- Location: LC_X36_Y18_N1
\I0|WideOr0~0\ : cyclone_lcell
-- Equation(s):
-- \I0|WideOr0~0_combout\ = (((!\I1|I3|DIN_5\) # (!\I1|I3|DIN_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_4\,
	datad => \I1|I3|DIN_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|WideOr0~0_combout\);

-- Location: LC_X24_Y16_N9
\I0|WideOr0~1\ : cyclone_lcell
-- Equation(s):
-- \I0|WideOr0~1_combout\ = (\I0|C_STATUS\(3)) # ((\I0|C_STATUS\(5)) # ((\I0|C_STATUS\(2)) # (\I0|C_STATUS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(3),
	datab => \I0|C_STATUS\(5),
	datac => \I0|C_STATUS\(2),
	datad => \I0|C_STATUS\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|WideOr0~1_combout\);

-- Location: LC_X24_Y16_N7
\I0|WideOr0\ : cyclone_lcell
-- Equation(s):
-- \I0|WideOr0~combout\ = LCELL((\I0|C_STATUS\(0)) # ((\I0|WideOr0~0_combout\) # ((\I0|WideOr0~1_combout\) # (\I0|C_STATUS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(0),
	datab => \I0|WideOr0~0_combout\,
	datac => \I0|WideOr0~1_combout\,
	datad => \I0|C_STATUS\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|WideOr0~combout\);

-- Location: LC_X8_Y16_N8
\I0|Mux4~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux4~0_combout\ = ((\I0|MODE\(0) & ((\PULSE~combout\(3)))) # (!\I0|MODE\(0) & (\PULSE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \PULSE~combout\(2),
	datac => \PULSE~combout\(3),
	datad => \I0|MODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux4~0_combout\);

-- Location: LC_X8_Y16_N9
\I0|Mux4\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux4~combout\ = LCELL((((\I0|MODE\(1) & \I0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|MODE\(1),
	datad => \I0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux4~combout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PULSE[2]~I\ : cyclone_io
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
	padio => ww_PULSE(2),
	combout => \PULSE~combout\(2));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PULSE[3]~I\ : cyclone_io
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
	padio => ww_PULSE(3),
	combout => \PULSE~combout\(3));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[0]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I0|D_DATA\(0),
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(0),
	combout => \D[0]~0\);

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[1]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_0\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(1),
	combout => \D[1]~1\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[2]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_0\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(2),
	combout => \D[2]~2\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[3]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_1\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(3),
	combout => \D[3]~3\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[4]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_2\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(4),
	combout => \D[4]~4\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[5]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_3\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(5),
	combout => \D[5]~5\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[6]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_4\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(6),
	combout => \D[6]~6\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[7]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_5\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(7),
	combout => \D[7]~7\);

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[8]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_6\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(8),
	combout => \D[8]~8\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[9]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_7\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(9),
	combout => \D[9]~9\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[10]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_8\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(10),
	combout => \D[10]~10\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[11]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_9\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(11),
	combout => \D[11]~11\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[12]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_11\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(12),
	combout => \D[12]~12\);

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[13]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_12\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(13),
	combout => \D[13]~13\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[14]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_12\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(14),
	combout => \D[14]~14\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[15]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_13\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(15),
	combout => \D[15]~15\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[16]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_15\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(16),
	combout => \D[16]~16\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[17]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_16\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(17),
	combout => \D[17]~17\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[18]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_16\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(18),
	combout => \D[18]~18\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[19]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_17\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(19),
	combout => \D[19]~19\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[20]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_18\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(20),
	combout => \D[20]~20\);

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[21]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_19\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(21),
	combout => \D[21]~21\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[22]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_20\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(22),
	combout => \D[22]~22\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[23]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_21\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(23),
	combout => \D[23]~23\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[24]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_22\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(24),
	combout => \D[24]~24\);

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[25]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_23\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(25),
	combout => \D[25]~25\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[26]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_24\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(26),
	combout => \D[26]~26\);

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[27]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_25\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(27),
	combout => \D[27]~27\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[28]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_27\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(28),
	combout => \D[28]~28\);

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[29]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_x_28\,
	oe => \I1|I2|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(29),
	combout => \D[29]~29\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[30]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_28\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(30),
	combout => \D[30]~30\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[31]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I2|OUT_i_29\,
	oe => \I1|I2|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(31),
	combout => \D[31]~31\);

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[0]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_0\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(0),
	combout => \DDLY[0]~0\);

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[1]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_1\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(1),
	combout => \DDLY[1]~1\);

-- Location: PIN_N17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[2]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_2\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(2),
	combout => \DDLY[2]~2\);

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[3]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_3\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(3),
	combout => \DDLY[3]~3\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[4]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_4\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(4),
	combout => \DDLY[4]~4\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[5]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_5\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(5),
	combout => \DDLY[5]~5\);

-- Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[6]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_6\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(6),
	combout => \DDLY[6]~6\);

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDLY[7]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I5|DDLY_OUT_x_7\,
	oe => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DDLY(7),
	combout => \DDLY[7]~7\);

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[0]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I0|E_DATA\(0),
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(0),
	combout => \E[0]~0\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[1]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_0\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(1),
	combout => \E[1]~1\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[2]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_0\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(2),
	combout => \E[2]~2\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[3]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_1\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(3),
	combout => \E[3]~3\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[4]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_2\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(4),
	combout => \E[4]~4\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[5]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_3\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(5),
	combout => \E[5]~5\);

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[6]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_4\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(6),
	combout => \E[6]~6\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[7]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_5\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(7),
	combout => \E[7]~7\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[8]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_6\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(8),
	combout => \E[8]~8\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[9]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_7\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(9),
	combout => \E[9]~9\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[10]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_8\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(10),
	combout => \E[10]~10\);

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[11]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_9\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(11),
	combout => \E[11]~11\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[12]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_11\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(12),
	combout => \E[12]~12\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[13]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_12\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(13),
	combout => \E[13]~13\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[14]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_12\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(14),
	combout => \E[14]~14\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[15]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_13\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(15),
	combout => \E[15]~15\);

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[16]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_15\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(16),
	combout => \E[16]~16\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[17]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_16\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(17),
	combout => \E[17]~17\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[18]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_16\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(18),
	combout => \E[18]~18\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[19]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_17\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(19),
	combout => \E[19]~19\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[20]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_18\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(20),
	combout => \E[20]~20\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[21]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_19\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(21),
	combout => \E[21]~21\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[22]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_20\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(22),
	combout => \E[22]~22\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[23]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_21\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(23),
	combout => \E[23]~23\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[24]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_22\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(24),
	combout => \E[24]~24\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[25]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_23\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(25),
	combout => \E[25]~25\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[26]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_24\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(26),
	combout => \E[26]~26\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[27]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_25\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(27),
	combout => \E[27]~27\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[28]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_27\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(28),
	combout => \E[28]~28\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[29]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_x_28\,
	oe => \I1|I3|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(29),
	combout => \E[29]~29\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[30]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_28\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(30),
	combout => \E[30]~30\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\E[31]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I3|OUT_i_29\,
	oe => \I1|I3|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => E(31),
	combout => \E[31]~31\);

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[0]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I0|F_DOUT[0]~0_combout\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(0),
	combout => \F[0]~0\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[1]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_0\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(1),
	combout => \F[1]~1\);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[2]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_0\,
	oe => \I1|I4|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(2),
	combout => \F[2]~2\);

-- Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[3]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_1\,
	oe => \I1|I4|dir_i198_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(3),
	combout => \F[3]~3\);

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[4]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_2\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(4),
	combout => \F[4]~4\);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[5]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_3\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(5),
	combout => \F[5]~5\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[6]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_4\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(6),
	combout => \F[6]~6\);

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[7]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_5\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(7),
	combout => \F[7]~7\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[8]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(8),
	combout => \F[8]~8\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[9]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(9),
	combout => \F[9]~9\);

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[10]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(10),
	combout => \F[10]~10\);

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[11]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(11),
	combout => \F[11]~11\);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[12]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_11\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(12),
	combout => \F[12]~12\);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[13]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_12\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(13),
	combout => \F[13]~13\);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[14]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(14),
	combout => \F[14]~14\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[15]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(15),
	combout => \F[15]~15\);

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[16]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_15\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(16),
	combout => \F[16]~16\);

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[17]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_16\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(17),
	combout => \F[17]~17\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[18]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(18),
	combout => \F[18]~18\);

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[19]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(19),
	combout => \F[19]~19\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[20]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(20),
	combout => \F[20]~20\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[21]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(21),
	combout => \F[21]~21\);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[22]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(22),
	combout => \F[22]~22\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[23]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(23),
	combout => \F[23]~23\);

-- Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[24]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(24),
	combout => \F[24]~24\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[25]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(25),
	combout => \F[25]~25\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[26]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(26),
	combout => \F[26]~26\);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[27]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_DIR_i_iv\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(27),
	combout => \F[27]~27\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[28]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_27\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(28),
	combout => \F[28]~28\);

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[29]~I\ : cyclone_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|OUT_i_x_28\,
	oe => \I1|I4|DIR_i_iv\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(29),
	combout => \F[29]~29\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[30]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(30),
	combout => \F[30]~30\);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\F[31]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I4|ALT_INV_dir_i198_x\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => F(31),
	combout => \F[31]~31\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_0\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(0),
	combout => \LAD[0]~0\,
	regout => \I0|C_CONTROL\(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_1\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(1),
	combout => \LAD[1]~1\,
	regout => \I0|C_CONTROL\(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_2\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(2),
	combout => \LAD[2]~2\,
	regout => \I0|C_CONTROL\(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "preset",
	input_power_up => "high",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_3\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|MODE[4]~0_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(3),
	combout => \LAD[3]~3\,
	regout => \I0|MODE\(3));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_4\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|MODE[4]~0_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(4),
	combout => \LAD[4]~4\,
	regout => \I0|MODE\(4));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_5\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(5),
	combout => \LAD[5]~5\,
	regout => \I0|C_CONTROL\(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_6\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(6),
	combout => \LAD[6]~6\,
	regout => \I0|C_CONTROL\(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_7\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(7),
	combout => \LAD[7]~7\,
	regout => \I0|C_CONTROL\(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[8]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_8\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(8),
	combout => \LAD[8]~8\,
	regout => \I0|C_CONTROL\(8));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[9]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_9\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(9),
	combout => \LAD[9]~9\,
	regout => \I0|C_CONTROL\(9));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[10]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_10\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(10),
	combout => \LAD[10]~10\,
	regout => \I0|C_CONTROL\(10));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[11]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_11\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(11),
	combout => \LAD[11]~11\,
	regout => \I0|C_CONTROL\(11));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[12]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_12\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(12),
	combout => \LAD[12]~12\,
	regout => \I0|C_CONTROL\(12));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[13]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_13\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(13),
	combout => \LAD[13]~13\,
	regout => \I0|C_CONTROL\(13));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[14]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_14\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(14),
	combout => \LAD[14]~14\,
	regout => \I0|C_CONTROL\(14));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LAD[15]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "clear",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \I1|I1|LAD_OUT_x_15\,
	oe => \I1|I1|un2_lad_oe_i_x\,
	inclk => \LCLK~combout\,
	inclkena => \I0|C_CONTROL[0]~4_combout\,
	areset => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LAD(15),
	combout => \LAD[15]~15\,
	regout => \I0|C_CONTROL\(15));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LCLK~I\ : cyclone_io
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
	padio => ww_LCLK,
	combout => \LCLK~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nLRESET~I\ : cyclone_io
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
	padio => ww_nLRESET,
	combout => \nLRESET~combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nADS~I\ : cyclone_io
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
	padio => ww_nADS,
	combout => \nADS~combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WnR~I\ : cyclone_io
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
	padio => ww_WnR,
	combout => \WnR~combout\);

-- Location: LC_X39_Y23_N9
\I1|I1|LBSTATE_ns_1_0__g1_0_x\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|g1_0_x\ = ((\I1|I1|LBSTATE\(1)) # ((!\nADS~combout\ & !\WnR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nADS~combout\,
	datac => \WnR~combout\,
	datad => \I1|I1|LBSTATE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|g1_0_x\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nBLAST~I\ : cyclone_io
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
	padio => ww_nBLAST,
	combout => \nBLAST~combout\);

-- Location: LC_X39_Y23_N5
\I1|I1|LBSTATE_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LBSTATE\(1) = DFFEAS((\I1|I1|LBSTATE\(0) & (((!\I1|I1|LBSTATE\(1) & !\nBLAST~combout\)))) # (!\I1|I1|LBSTATE\(0) & (\I1|I1|g1_0_x\)), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a3a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I1|g1_0_x\,
	datab => \I1|I1|LBSTATE\(1),
	datac => \I1|I1|LBSTATE\(0),
	datad => \nBLAST~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I1|LBSTATE\(1));

-- Location: LC_X34_Y19_N4
\I1|I1|LBSTATE_ns_1_0__m1_x\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|m1_x\ = (((\WnR~combout\ & !\nADS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WnR~combout\,
	datad => \nADS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|m1_x\);

-- Location: LC_X39_Y23_N2
\I1|I1|LBSTATE_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LBSTATE\(0) = DFFEAS((\I1|I1|LBSTATE\(0) & (!\I1|I1|LBSTATE\(1))) # (!\I1|I1|LBSTATE\(0) & ((\I1|I1|LBSTATE\(1) & ((!\nBLAST~combout\))) # (!\I1|I1|LBSTATE\(1) & (\I1|I1|m1_x\)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3276",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I1|LBSTATE\(0),
	datab => \I1|I1|LBSTATE\(1),
	datac => \I1|I1|m1_x\,
	datad => \nBLAST~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I1|LBSTATE\(0));

-- Location: LC_X39_Y23_N1
\I1|I1|nREADY_s_i_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|g0_x\ = (!\I1|I1|LBSTATE\(0) & (!\I1|I1|LBSTATE\(1) & (!\nADS~combout\)))
-- \I1|I1|nREADY_s_i\ = DFFEAS(\I1|I1|g0_x\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I1|LBSTATE\(0),
	datab => \I1|I1|LBSTATE\(1),
	datac => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|g0_x\,
	regout => \I1|I1|nREADY_s_i\);

-- Location: LC_X37_Y17_N0
\I1|I1|ADDR_s_4__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_4\ = ((\nADS~combout\ & ((G1_ADDR_s_4__Z))) # (!\nADS~combout\ & (\LAD[4]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[4]~4\,
	datac => \LAD[4]~4\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_4\,
	regout => \I1|I1|ADDR_s_4__Z~regout\);

-- Location: LC_X39_Y23_N0
\I1|I1|WREN_s_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|WREN_s\ = DFFEAS((!\I1|I1|LBSTATE\(0) & (!\nADS~combout\ & (\WnR~combout\ & !\I1|I1|LBSTATE\(1)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I1|LBSTATE\(0),
	datab => \nADS~combout\,
	datac => \WnR~combout\,
	datad => \I1|I1|LBSTATE\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I1|WREN_s\);

-- Location: LC_X37_Y17_N7
\I1|I1|ADDR_s_5__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_5\ = ((\nADS~combout\ & ((G1_ADDR_s_5__Z))) # (!\nADS~combout\ & (\LAD[5]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[5]~5\,
	datac => \LAD[5]~5\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_5\,
	regout => \I1|I1|ADDR_s_5__Z~regout\);

-- Location: LC_X37_Y17_N9
\I1|I1|ADDR_s_2__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_2\ = ((\nADS~combout\ & ((G1_ADDR_s_2__Z))) # (!\nADS~combout\ & (\LAD[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[2]~2\,
	datac => \LAD[2]~2\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_2\,
	regout => \I1|I1|ADDR_s_2__Z~regout\);

-- Location: LC_X39_Y17_N8
\I1|I1|ADDR_s_6__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_6\ = (\nADS~combout\ & (((G1_ADDR_s_6__Z)))) # (!\nADS~combout\ & (\LAD[6]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \nADS~combout\,
	datab => \LAD[6]~6\,
	datac => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_6\,
	regout => \I1|I1|ADDR_s_6__Z~regout\);

-- Location: LC_X37_Y17_N8
\I1|I1|ADDR_s_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_0\ = (\nADS~combout\ & (((G1_ADDR_s_0__Z)))) # (!\nADS~combout\ & (\LAD[0]~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \nADS~combout\,
	datab => \LAD[0]~0\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_0\,
	regout => \I1|I1|ADDR_s_0__Z~regout\);

-- Location: LC_X37_Y17_N5
\I1|I1|ADDR_s_9__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_9\ = ((\nADS~combout\ & ((G1_ADDR_s_9__Z))) # (!\nADS~combout\ & (\LAD[9]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[9]~9\,
	datac => \LAD[9]~9\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_9\,
	regout => \I1|I1|ADDR_s_9__Z~regout\);

-- Location: LC_X37_Y17_N2
\I1|I1|ADDR_s_7__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_7\ = ((\nADS~combout\ & ((G1_ADDR_s_7__Z))) # (!\nADS~combout\ & (\LAD[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[7]~7\,
	datac => \LAD[7]~7\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_7\,
	regout => \I1|I1|ADDR_s_7__Z~regout\);

-- Location: LC_X39_Y17_N9
\I1|I1|ADDR_s_8__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_8\ = (\nADS~combout\ & (((G1_ADDR_s_8__Z)))) # (!\nADS~combout\ & (\LAD[8]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \nADS~combout\,
	datab => \LAD[8]~8\,
	datac => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_8\,
	regout => \I1|I1|ADDR_s_8__Z~regout\);

-- Location: LC_X36_Y17_N3
\I0|Equal9~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~0_combout\ = (!\I1|I1|REG_ADDR_x_0\ & (!\I1|I1|REG_ADDR_x_9\ & (!\I1|I1|REG_ADDR_x_7\ & !\I1|I1|REG_ADDR_x_8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_0\,
	datab => \I1|I1|REG_ADDR_x_9\,
	datac => \I1|I1|REG_ADDR_x_7\,
	datad => \I1|I1|REG_ADDR_x_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~0_combout\);

-- Location: LC_X35_Y17_N8
\I1|I1|ADDR_s_15__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_15\ = ((\nADS~combout\ & ((G1_ADDR_s_15__Z))) # (!\nADS~combout\ & (\LAD[15]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[15]~15\,
	datac => \LAD[15]~15\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_15\,
	regout => \I1|I1|ADDR_s_15__Z~regout\);

-- Location: LC_X35_Y17_N2
\I1|I1|ADDR_s_14__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_14\ = ((\nADS~combout\ & ((G1_ADDR_s_14__Z))) # (!\nADS~combout\ & (\LAD[14]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[14]~14\,
	datac => \LAD[14]~14\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_14\,
	regout => \I1|I1|ADDR_s_14__Z~regout\);

-- Location: LC_X36_Y17_N7
\I0|Equal9~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~2_combout\ = (((!\I1|I1|REG_ADDR_x_15\ & !\I1|I1|REG_ADDR_x_14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|REG_ADDR_x_15\,
	datad => \I1|I1|REG_ADDR_x_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~2_combout\);

-- Location: LC_X35_Y17_N3
\I1|I1|ADDR_s_11__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_11\ = ((\nADS~combout\ & ((G1_ADDR_s_11__Z))) # (!\nADS~combout\ & (\LAD[11]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[11]~11\,
	datac => \LAD[11]~11\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_11\,
	regout => \I1|I1|ADDR_s_11__Z~regout\);

-- Location: LC_X35_Y17_N9
\I1|I1|ADDR_s_13__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_13\ = ((\nADS~combout\ & ((G1_ADDR_s_13__Z))) # (!\nADS~combout\ & (\LAD[13]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[13]~13\,
	datac => \LAD[13]~13\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_13\,
	regout => \I1|I1|ADDR_s_13__Z~regout\);

-- Location: LC_X35_Y17_N0
\I1|I1|ADDR_s_12__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_12\ = (\nADS~combout\ & (((G1_ADDR_s_12__Z)))) # (!\nADS~combout\ & (((\LAD[12]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \nADS~combout\,
	datac => \LAD[12]~12\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_12\,
	regout => \I1|I1|ADDR_s_12__Z~regout\);

-- Location: LC_X37_Y15_N4
\I1|I1|ADDR_s_10__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_10\ = ((\nADS~combout\ & ((G1_ADDR_s_10__Z))) # (!\nADS~combout\ & (\LAD[10]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \LAD[10]~10\,
	datac => \LAD[10]~10\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_10\,
	regout => \I1|I1|ADDR_s_10__Z~regout\);

-- Location: LC_X36_Y17_N8
\I0|Equal9~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~1_combout\ = (!\I1|I1|REG_ADDR_x_11\ & (!\I1|I1|REG_ADDR_x_13\ & (\I1|I1|REG_ADDR_x_12\ & !\I1|I1|REG_ADDR_x_10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_11\,
	datab => \I1|I1|REG_ADDR_x_13\,
	datac => \I1|I1|REG_ADDR_x_12\,
	datad => \I1|I1|REG_ADDR_x_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~1_combout\);

-- Location: LC_X36_Y17_N9
\I0|C_CONTROL[16]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|C_CONTROL[16]~2_combout\ = (!\I1|I1|REG_ADDR_x_6\ & (\I0|Equal9~0_combout\ & (\I0|Equal9~2_combout\ & \I0|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_6\,
	datab => \I0|Equal9~0_combout\,
	datac => \I0|Equal9~2_combout\,
	datad => \I0|Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_CONTROL[16]~2_combout\);

-- Location: LC_X36_Y17_N5
\I0|Equal15~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal15~3_combout\ = (\I1|I1|REG_ADDR_x_5\ & (!\I1|I1|REG_ADDR_x_2\ & (\I0|C_CONTROL[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_5\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|C_CONTROL[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal15~3_combout\);

-- Location: LC_X37_Y17_N6
\I1|I1|ADDR_s_3__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_3\ = ((\nADS~combout\ & ((G1_ADDR_s_3__Z))) # (!\nADS~combout\ & (\LAD[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[3]~3\,
	datac => \LAD[3]~3\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_3\,
	regout => \I1|I1|ADDR_s_3__Z~regout\);

-- Location: LC_X35_Y17_N4
\I1|I1|ADDR_s_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_ADDR_x_1\ = ((\nADS~combout\ & ((G1_ADDR_s_1__Z))) # (!\nADS~combout\ & (\LAD[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[1]~1\,
	datac => \LAD[1]~1\,
	datad => \nADS~combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I1|I1|g0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_ADDR_x_1\,
	regout => \I1|I1|ADDR_s_1__Z~regout\);

-- Location: LC_X39_Y22_N1
\I0|Equal18~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal18~0_combout\ = ((\I0|Equal15~3_combout\ & (\I1|I1|REG_ADDR_x_3\ & !\I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|Equal15~3_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal18~0_combout\);

-- Location: LC_X39_Y22_N7
\I0|D_DATA[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|D_DATA[0]~0_combout\ = ((!\I1|I1|REG_ADDR_x_4\ & (\I1|I1|WREN_s\ & \I0|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|D_DATA[0]~0_combout\);

-- Location: LC_X37_Y17_N4
\I0|D_DATA[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|D_DATA\(0) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|D_DATA\(0));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cyclone_io
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

-- Location: LC_X37_Y17_N1
\I0|Equal9~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~4_combout\ = ((!\I1|I1|REG_ADDR_x_4\ & (!\I1|I1|REG_ADDR_x_5\ & !\I1|I1|REG_ADDR_x_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|REG_ADDR_x_5\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~4_combout\);

-- Location: LC_X33_Y17_N5
\I0|Equal12~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal12~0_combout\ = (\I0|Equal9~4_combout\ & (\I0|C_CONTROL[16]~2_combout\ & (\I1|I1|REG_ADDR_x_1\ & \I1|I1|REG_ADDR_x_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~4_combout\,
	datab => \I0|C_CONTROL[16]~2_combout\,
	datac => \I1|I1|REG_ADDR_x_1\,
	datad => \I1|I1|REG_ADDR_x_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal12~0_combout\);

-- Location: LC_X37_Y21_N6
\I0|Equal11~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal11~2_combout\ = (((!\I1|I1|REG_ADDR_x_1\ & \I1|I1|REG_ADDR_x_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|REG_ADDR_x_1\,
	datad => \I1|I1|REG_ADDR_x_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal11~2_combout\);

-- Location: LC_X37_Y21_N8
\I0|Equal15~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal15~2_combout\ = (((!\I1|I1|REG_ADDR_x_4\ & !\I1|I1|REG_ADDR_x_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal15~2_combout\);

-- Location: LC_X33_Y17_N1
\I0|Equal16~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal16~0_combout\ = (\I0|C_CONTROL[16]~2_combout\ & (\I1|I1|REG_ADDR_x_5\ & (\I0|Equal11~2_combout\ & \I0|Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL[16]~2_combout\,
	datab => \I1|I1|REG_ADDR_x_5\,
	datac => \I0|Equal11~2_combout\,
	datad => \I0|Equal15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal16~0_combout\);

-- Location: LC_X33_Y17_N0
\I0|D_CONTROL[1]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|D_CONTROL[1]~2_combout\ = (((\I1|I1|WREN_s\ & \I0|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|D_CONTROL[1]~2_combout\);

-- Location: LC_X33_Y17_N2
\I0|D_CONTROL[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~6\ = (\B~combout\(17) & ((\I0|Equal12~0_combout\) # ((C1_D_CONTROL[1] & \I0|Equal16~0_combout\)))) # (!\B~combout\(17) & (((C1_D_CONTROL[1] & \I0|Equal16~0_combout\))))
-- \I0|D_CONTROL\(1) = DFFEAS(\I0|Selector14~6\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_CONTROL[1]~2_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(17),
	datab => \I0|Equal12~0_combout\,
	datac => \LAD[1]~1\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~6\,
	regout => \I0|D_CONTROL\(1));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDD[0]~I\ : cyclone_io
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
	padio => ww_IDD(0),
	combout => \IDD~combout\(0));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDD[1]~I\ : cyclone_io
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
	padio => ww_IDD(1),
	combout => \IDD~combout\(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDD[2]~I\ : cyclone_io
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
	padio => ww_IDD(2),
	combout => \IDD~combout\(2));

-- Location: LC_X41_Y20_N0
\I1|I2|DIR_i_iv_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIR_i_iv\ = (!\IDD~combout\(2) & ((\IDD~combout\(0) & ((!\IDD~combout\(1)) # (!\I0|D_CONTROL\(1)))) # (!\IDD~combout\(0) & ((\IDD~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|D_CONTROL\(1),
	datab => \IDD~combout\(0),
	datac => \IDD~combout\(1),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIR_i_iv\);

-- Location: LC_X38_Y22_N0
\I0|D_DATA[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|D_DATA\(1) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|D_DATA\(1));

-- Location: LC_X39_Y21_N1
\I1|I2|dir_i199_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|dir_i199_x\ = ((\IDD~combout\(1) & (\IDD~combout\(0) & !\IDD~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IDD~combout\(1),
	datac => \IDD~combout\(0),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|dir_i199_x\);

-- Location: LC_X38_Y22_N5
\I0|D_DATA[2]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_0\ = ((\I1|I2|dir_i199_x\ & ((C1_D_DATA[2]))) # (!\I1|I2|dir_i199_x\ & (\I0|D_DATA\(1))))
-- \I0|D_DATA\(2) = DFFEAS(\I1|I2|OUT_i_x_0\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|D_DATA\(1),
	datac => \LAD[2]~2\,
	datad => \I1|I2|dir_i199_x\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_0\,
	regout => \I0|D_DATA\(2));

-- Location: LC_X38_Y25_N3
\I1|I2|OUT_i_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_0\ = (\I0|D_DATA\(2) & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \I0|D_DATA\(2),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_0\);

-- Location: LC_X38_Y25_N6
\I1|I2|dir_i198_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|dir_i198_x\ = ((!\IDD~combout\(2) & (\IDD~combout\(1) $ (\IDD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datac => \IDD~combout\(0),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|dir_i198_x\);

-- Location: LC_X40_Y25_N4
\I0|D_DATA[3]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_1\ = (C1_D_DATA[3] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))
-- \I0|D_DATA\(3) = DFFEAS(\I1|I2|OUT_i_1\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[3]~3\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_1\,
	regout => \I0|D_DATA\(3));

-- Location: LC_X40_Y25_N3
\I0|D_DATA[4]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_2\ = (C1_D_DATA[4] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))
-- \I0|D_DATA\(4) = DFFEAS(\I1|I2|OUT_i_2\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[4]~4\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_2\,
	regout => \I0|D_DATA\(4));

-- Location: LC_X40_Y25_N2
\I0|D_DATA[5]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_3\ = (C1_D_DATA[5] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))
-- \I0|D_DATA\(5) = DFFEAS(\I1|I2|OUT_i_3\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[5]~5\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_3\,
	regout => \I0|D_DATA\(5));

-- Location: LC_X40_Y25_N0
\I0|D_DATA[6]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_4\ = (C1_D_DATA[6] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))
-- \I0|D_DATA\(6) = DFFEAS(\I1|I2|OUT_i_4\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[6]~6\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_4\,
	regout => \I0|D_DATA\(6));

-- Location: LC_X40_Y25_N1
\I0|D_DATA[7]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_5\ = (C1_D_DATA[7] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))
-- \I0|D_DATA\(7) = DFFEAS(\I1|I2|OUT_i_5\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_DATA[0]~0_combout\, \LAD[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[7]~7\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_5\,
	regout => \I0|D_DATA\(7));

-- Location: LC_X40_Y25_N5
\I0|D_DATA[8]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_6\ = (C1_D_DATA[8] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[8]~8\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_6\,
	regout => \I0|D_DATA\(8));

-- Location: LC_X40_Y25_N8
\I0|D_DATA[9]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_7\ = (C1_D_DATA[9] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[9]~9\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_7\,
	regout => \I0|D_DATA\(9));

-- Location: LC_X38_Y25_N1
\I0|D_DATA[10]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_8\ = (C1_D_DATA[10] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[10]~10\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_8\,
	regout => \I0|D_DATA\(10));

-- Location: LC_X38_Y25_N7
\I0|D_DATA[11]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_9\ = (C1_D_DATA[11] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[11]~11\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_9\,
	regout => \I0|D_DATA\(11));

-- Location: LC_X40_Y25_N6
\I0|D_DATA[12]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_11\ = (\I1|I2|dir_i199_x\ & (((\I0|D_DATA\(4))))) # (!\I1|I2|dir_i199_x\ & (((C1_D_DATA[12]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I2|dir_i199_x\,
	datac => \LAD[12]~12\,
	datad => \I0|D_DATA\(4),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_11\,
	regout => \I0|D_DATA\(12));

-- Location: LC_X40_Y25_N9
\I0|D_DATA[13]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_12\ = (\I1|I2|dir_i199_x\ & (((\I0|D_DATA\(6))))) # (!\I1|I2|dir_i199_x\ & (((C1_D_DATA[13]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I2|dir_i199_x\,
	datac => \LAD[13]~13\,
	datad => \I0|D_DATA\(6),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_12\,
	regout => \I0|D_DATA\(13));

-- Location: LC_X38_Y25_N8
\I0|D_DATA[14]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_12\ = (C1_D_DATA[14] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[14]~14\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_12\,
	regout => \I0|D_DATA\(14));

-- Location: LC_X38_Y25_N2
\I0|D_DATA[15]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_13\ = (C1_D_DATA[15] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[15]~15\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_13\,
	regout => \I0|D_DATA\(15));

-- Location: LC_X38_Y22_N1
\I0|Equal19~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal19~0_combout\ = (\I1|I1|REG_ADDR_x_1\ & (!\I1|I1|REG_ADDR_x_4\ & (\I0|Equal15~3_combout\ & \I1|I1|REG_ADDR_x_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_1\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I0|Equal15~3_combout\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal19~0_combout\);

-- Location: LC_X38_Y22_N3
\I0|D_DATA[16]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|D_DATA[16]~1_combout\ = (((\I1|I1|WREN_s\ & \I0|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|D_DATA[16]~1_combout\);

-- Location: LC_X38_Y22_N4
\I0|D_DATA[16]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_15\ = ((\I1|I2|dir_i199_x\ & (\I0|D_DATA\(1))) # (!\I1|I2|dir_i199_x\ & ((C1_D_DATA[16]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|D_DATA\(1),
	datac => \LAD[0]~0\,
	datad => \I1|I2|dir_i199_x\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_15\,
	regout => \I0|D_DATA\(16));

-- Location: LC_X38_Y22_N6
\I0|D_DATA[17]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_16\ = ((\I1|I2|dir_i199_x\ & ((\I0|D_DATA\(3)))) # (!\I1|I2|dir_i199_x\ & (C1_D_DATA[17])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I2|dir_i199_x\,
	datac => \LAD[1]~1\,
	datad => \I0|D_DATA\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_16\,
	regout => \I0|D_DATA\(17));

-- Location: LC_X38_Y25_N4
\I0|D_DATA[18]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_16\ = (C1_D_DATA[18] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[2]~2\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_16\,
	regout => \I0|D_DATA\(18));

-- Location: LC_X38_Y25_N5
\I0|D_DATA[19]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_17\ = (C1_D_DATA[19] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[3]~3\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_17\,
	regout => \I0|D_DATA\(19));

-- Location: LC_X39_Y17_N6
\I0|D_DATA[20]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_18\ = (C1_D_DATA[20] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[4]~4\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_18\,
	regout => \I0|D_DATA\(20));

-- Location: LC_X39_Y17_N3
\I0|D_DATA[21]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_19\ = (C1_D_DATA[21] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[5]~5\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_19\,
	regout => \I0|D_DATA\(21));

-- Location: LC_X39_Y17_N1
\I0|D_DATA[22]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_20\ = (C1_D_DATA[22] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[6]~6\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_20\,
	regout => \I0|D_DATA\(22));

-- Location: LC_X39_Y17_N7
\I0|D_DATA[23]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_21\ = (C1_D_DATA[23] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[7]~7\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_21\,
	regout => \I0|D_DATA\(23));

-- Location: LC_X39_Y17_N0
\I0|D_DATA[24]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_22\ = (C1_D_DATA[24] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[8]~8\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_22\,
	regout => \I0|D_DATA\(24));

-- Location: LC_X39_Y17_N2
\I0|D_DATA[25]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_23\ = (C1_D_DATA[25] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[9]~9\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_23\,
	regout => \I0|D_DATA\(25));

-- Location: LC_X39_Y17_N5
\I0|D_DATA[26]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_24\ = (C1_D_DATA[26] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[10]~10\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_24\,
	regout => \I0|D_DATA\(26));

-- Location: LC_X39_Y17_N4
\I0|D_DATA[27]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_25\ = (C1_D_DATA[27] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[11]~11\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_25\,
	regout => \I0|D_DATA\(27));

-- Location: LC_X38_Y22_N7
\I0|D_DATA[28]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_27\ = ((\I1|I2|dir_i199_x\ & ((\I0|D_DATA\(5)))) # (!\I1|I2|dir_i199_x\ & (C1_D_DATA[28])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I2|dir_i199_x\,
	datac => \LAD[12]~12\,
	datad => \I0|D_DATA\(5),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_27\,
	regout => \I0|D_DATA\(28));

-- Location: LC_X40_Y25_N7
\I0|D_DATA[29]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_x_28\ = (\I1|I2|dir_i199_x\ & (((\I0|D_DATA\(7))))) # (!\I1|I2|dir_i199_x\ & (((C1_D_DATA[29]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I2|dir_i199_x\,
	datac => \LAD[13]~13\,
	datad => \I0|D_DATA\(7),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_x_28\,
	regout => \I0|D_DATA\(29));

-- Location: LC_X38_Y25_N0
\I0|D_DATA[30]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_28\ = (C1_D_DATA[30] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[14]~14\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_28\,
	regout => \I0|D_DATA\(30));

-- Location: LC_X38_Y25_N9
\I0|D_DATA[31]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|OUT_i_29\ = (C1_D_DATA[31] & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \LAD[15]~15\,
	datad => \IDD~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|OUT_i_29\,
	regout => \I0|D_DATA\(31));

-- Location: LC_X36_Y17_N2
\I0|Equal17~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal17~2_combout\ = (\I1|I1|REG_ADDR_x_5\ & (\I1|I1|REG_ADDR_x_2\ & (\I0|C_CONTROL[16]~2_combout\ & \I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_5\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|C_CONTROL[16]~2_combout\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal17~2_combout\);

-- Location: LC_X37_Y23_N1
\I0|PDL_CONTROL[1]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL[1]~2_combout\ = (\I1|I1|REG_ADDR_x_4\ & (\I1|I1|REG_ADDR_x_3\ & (\I1|I1|WREN_s\ & \I0|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I1|I1|REG_ADDR_x_3\,
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|PDL_CONTROL[1]~2_combout\);

-- Location: LC_X36_Y24_N9
\I0|PDL_CONTROL[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(1) = DFFEAS((((\LAD[1]~1\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(1));

-- Location: LC_X24_Y17_N1
\I0|Equal9~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~3_combout\ = (\I0|Equal9~0_combout\ & (!\I1|I1|REG_ADDR_x_14\ & (!\I1|I1|REG_ADDR_x_15\ & \I0|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~0_combout\,
	datab => \I1|I1|REG_ADDR_x_14\,
	datac => \I1|I1|REG_ADDR_x_15\,
	datad => \I0|Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~3_combout\);

-- Location: LC_X24_Y17_N9
\I0|Equal30~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal30~0_combout\ = (\I1|I1|REG_ADDR_x_6\ & (\I0|Equal9~4_combout\ & ((\I0|Equal9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_6\,
	datab => \I0|Equal9~4_combout\,
	datad => \I0|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal30~0_combout\);

-- Location: LC_X37_Y19_N1
\I0|PDL_DATA[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_DATA[0]~0_combout\ = (\I1|I1|WREN_s\ & (!\I1|I1|REG_ADDR_x_1\ & (!\I1|I1|REG_ADDR_x_2\ & \I0|Equal30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I1|I1|REG_ADDR_x_1\,
	datac => \I1|I1|REG_ADDR_x_2\,
	datad => \I0|Equal30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|PDL_DATA[0]~0_combout\);

-- Location: LC_X33_Y22_N8
\I0|PDL_DATA[0]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_0\ = (((C1_PDL_DATA[0] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_0\,
	regout => \I0|PDL_DATA\(0));

-- Location: LC_X33_Y22_N3
\I0|PDL_DATA[1]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_1\ = (((C1_PDL_DATA[1] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_1\,
	regout => \I0|PDL_DATA\(1));

-- Location: LC_X40_Y19_N4
\I0|PDL_DATA[2]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_2\ = (((C1_PDL_DATA[2] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[2]~2\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_2\,
	regout => \I0|PDL_DATA\(2));

-- Location: LC_X40_Y19_N9
\I0|PDL_DATA[3]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_3\ = (((C1_PDL_DATA[3] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_3\,
	regout => \I0|PDL_DATA\(3));

-- Location: LC_X40_Y19_N2
\I0|PDL_DATA[4]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_4\ = (((C1_PDL_DATA[4] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[4]~4\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_4\,
	regout => \I0|PDL_DATA\(4));

-- Location: LC_X40_Y19_N3
\I0|PDL_DATA[5]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_5\ = (((C1_PDL_DATA[5] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[5]~5\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_5\,
	regout => \I0|PDL_DATA\(5));

-- Location: LC_X40_Y19_N0
\I0|PDL_DATA[6]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_6\ = (((C1_PDL_DATA[6] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[6]~6\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_6\,
	regout => \I0|PDL_DATA\(6));

-- Location: LC_X33_Y22_N7
\I0|PDL_DATA[7]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|DDLY_OUT_x_7\ = (((C1_PDL_DATA[7] & \I0|PDL_CONTROL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[7]~7\,
	datad => \I0|PDL_CONTROL\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|DDLY_OUT_x_7\,
	regout => \I0|PDL_DATA\(7));

-- Location: LC_X35_Y18_N8
\I0|Equal22~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal22~0_combout\ = (\I1|I1|REG_ADDR_x_4\ & (\I0|Equal15~3_combout\ & (!\I1|I1|REG_ADDR_x_3\ & !\I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I0|Equal15~3_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal22~0_combout\);

-- Location: LC_X35_Y18_N7
\I0|E_DATA[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA[0]~0_combout\ = (((\I0|Equal22~0_combout\ & \I1|I1|WREN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|Equal22~0_combout\,
	datad => \I1|I1|WREN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|E_DATA[0]~0_combout\);

-- Location: LC_X33_Y16_N3
\I0|E_DATA[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(0) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDE[1]~I\ : cyclone_io
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
	padio => ww_IDE(1),
	combout => \IDE~combout\(1));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDE[2]~I\ : cyclone_io
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
	padio => ww_IDE(2),
	combout => \IDE~combout\(2));

-- Location: LC_X36_Y17_N4
\I0|Equal16~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal16~1_combout\ = (\I1|I1|REG_ADDR_x_5\ & (\I1|I1|REG_ADDR_x_2\ & (\I0|C_CONTROL[16]~2_combout\ & !\I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_5\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|C_CONTROL[16]~2_combout\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal16~1_combout\);

-- Location: LC_X34_Y21_N5
\I0|E_CONTROL[1]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL[1]~0_combout\ = (\I1|I1|WREN_s\ & (\I0|Equal16~1_combout\ & (\I1|I1|REG_ADDR_x_3\ & !\I1|I1|REG_ADDR_x_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I0|Equal16~1_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|E_CONTROL[1]~0_combout\);

-- Location: LC_X35_Y17_N7
\I0|E_CONTROL[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(1) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDE[0]~I\ : cyclone_io
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
	padio => ww_IDE(0),
	combout => \IDE~combout\(0));

-- Location: LC_X35_Y17_N5
\I1|I3|DIR_i_iv_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIR_i_iv\ = (!\IDE~combout\(2) & ((\IDE~combout\(1) & ((!\IDE~combout\(0)) # (!\I0|E_CONTROL\(1)))) # (!\IDE~combout\(1) & ((\IDE~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1322",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \I0|E_CONTROL\(1),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIR_i_iv\);

-- Location: LC_X36_Y20_N1
\I1|I3|dir_i199_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|dir_i199_x\ = ((!\IDE~combout\(2) & (\IDE~combout\(1) & \IDE~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(1),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|dir_i199_x\);

-- Location: LC_X39_Y8_N3
\I0|E_DATA[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(1) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(1));

-- Location: LC_X39_Y8_N7
\I0|E_DATA[2]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_0\ = ((\I1|I3|dir_i199_x\ & (C1_E_DATA[2])) # (!\I1|I3|dir_i199_x\ & ((\I0|E_DATA\(1)))))
-- \I0|E_DATA\(2) = DFFEAS(\I1|I3|OUT_i_x_0\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I3|dir_i199_x\,
	datac => \LAD[2]~2\,
	datad => \I0|E_DATA\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_0\,
	regout => \I0|E_DATA\(2));

-- Location: LC_X39_Y8_N5
\I1|I3|OUT_i_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_0\ = (\I0|E_DATA\(2) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(2),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_0\);

-- Location: LC_X33_Y16_N2
\I1|I3|dir_i198_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|dir_i198_x\ = (!\IDE~combout\(2) & ((\IDE~combout\(1) $ (\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datac => \IDE~combout\(1),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|dir_i198_x\);

-- Location: LC_X39_Y8_N2
\I0|E_DATA[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(3) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(3));

-- Location: LC_X39_Y8_N8
\I1|I3|OUT_i_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_1\ = (\I0|E_DATA\(3) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(3),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_1\);

-- Location: LC_X39_Y8_N9
\I0|E_DATA[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(4) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(4));

-- Location: LC_X39_Y8_N1
\I1|I3|OUT_i_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_2\ = (\I0|E_DATA\(4) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(4),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_2\);

-- Location: LC_X43_Y16_N9
\I0|E_DATA[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(5) = DFFEAS((((\LAD[5]~5\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(5));

-- Location: LC_X43_Y16_N0
\I1|I3|OUT_i_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_3\ = (\I0|E_DATA\(5) & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \I0|E_DATA\(5),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_3\);

-- Location: LC_X43_Y16_N3
\I0|E_DATA[6]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_4\ = (C1_E_DATA[6] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))
-- \I0|E_DATA\(6) = DFFEAS(\I1|I3|OUT_i_4\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \LAD[6]~6\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_4\,
	regout => \I0|E_DATA\(6));

-- Location: LC_X43_Y16_N8
\I0|E_DATA[7]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_5\ = (C1_E_DATA[7] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))
-- \I0|E_DATA\(7) = DFFEAS(\I1|I3|OUT_i_5\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, \LAD[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \LAD[7]~7\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_5\,
	regout => \I0|E_DATA\(7));

-- Location: LC_X43_Y16_N5
\I0|E_DATA[8]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_6\ = (C1_E_DATA[8] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \LAD[8]~8\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_6\,
	regout => \I0|E_DATA\(8));

-- Location: LC_X33_Y16_N0
\I0|E_DATA[9]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_7\ = (C1_E_DATA[9] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[9]~9\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_7\,
	regout => \I0|E_DATA\(9));

-- Location: LC_X33_Y16_N8
\I0|E_DATA[10]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_8\ = (C1_E_DATA[10] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[10]~10\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_8\,
	regout => \I0|E_DATA\(10));

-- Location: LC_X33_Y16_N9
\I0|E_DATA[11]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_9\ = (C1_E_DATA[11] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[11]~11\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_9\,
	regout => \I0|E_DATA\(11));

-- Location: LC_X39_Y8_N6
\I0|E_DATA[12]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_11\ = (\I1|I3|dir_i199_x\ & (\I0|E_DATA\(4))) # (!\I1|I3|dir_i199_x\ & (((C1_E_DATA[12]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_DATA\(4),
	datab => \I1|I3|dir_i199_x\,
	datac => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_11\,
	regout => \I0|E_DATA\(12));

-- Location: LC_X43_Y16_N2
\I0|E_DATA[13]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_12\ = ((\I1|I3|dir_i199_x\ & ((\I0|E_DATA\(6)))) # (!\I1|I3|dir_i199_x\ & (C1_E_DATA[13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I3|dir_i199_x\,
	datac => \LAD[13]~13\,
	datad => \I0|E_DATA\(6),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_12\,
	regout => \I0|E_DATA\(13));

-- Location: LC_X33_Y16_N7
\I0|E_DATA[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(14) = DFFEAS((((\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(14));

-- Location: LC_X33_Y16_N4
\I1|I3|OUT_i_14_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_12\ = (\I0|E_DATA\(14) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(14),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_12\);

-- Location: LC_X33_Y16_N6
\I0|E_DATA[15]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_13\ = (C1_E_DATA[15] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[15]~15\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_13\,
	regout => \I0|E_DATA\(15));

-- Location: LC_X36_Y17_N6
\I0|Equal23~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal23~0_combout\ = (!\I1|I1|REG_ADDR_x_3\ & (\I1|I1|REG_ADDR_x_1\ & (\I1|I1|REG_ADDR_x_4\ & \I0|Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_3\,
	datab => \I1|I1|REG_ADDR_x_1\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal23~0_combout\);

-- Location: LC_X38_Y17_N1
\I0|E_DATA[16]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA[16]~1_combout\ = ((\I1|I1|WREN_s\ & (\I0|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|WREN_s\,
	datac => \I0|Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|E_DATA[16]~1_combout\);

-- Location: LC_X39_Y8_N0
\I0|E_DATA[16]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_15\ = ((\I1|I3|dir_i199_x\ & ((\I0|E_DATA\(1)))) # (!\I1|I3|dir_i199_x\ & (C1_E_DATA[16])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I3|dir_i199_x\,
	datac => \LAD[0]~0\,
	datad => \I0|E_DATA\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_15\,
	regout => \I0|E_DATA\(16));

-- Location: LC_X39_Y8_N4
\I0|E_DATA[17]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_16\ = (\I1|I3|dir_i199_x\ & (\I0|E_DATA\(3))) # (!\I1|I3|dir_i199_x\ & (((C1_E_DATA[17]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_DATA\(3),
	datab => \I1|I3|dir_i199_x\,
	datac => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_16\,
	regout => \I0|E_DATA\(17));

-- Location: LC_X37_Y15_N3
\I0|E_DATA[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(18) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[16]~1_combout\, \LAD[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(18));

-- Location: LC_X33_Y16_N5
\I1|I3|OUT_i_18_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_16\ = (\I0|E_DATA\(18) & (((\IDE~combout\(2)) # (!\IDE~combout\(1))) # (!\IDE~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(0),
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(1),
	datad => \I0|E_DATA\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_16\);

-- Location: LC_X37_Y15_N7
\I0|E_DATA[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(19) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[16]~1_combout\, \LAD[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(19));

-- Location: LC_X37_Y15_N0
\I1|I3|OUT_i_19_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_17\ = (\I0|E_DATA\(19) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(19),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_17\);

-- Location: LC_X38_Y17_N5
\I0|E_DATA[20]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_18\ = (C1_E_DATA[20] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[4]~4\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_18\,
	regout => \I0|E_DATA\(20));

-- Location: LC_X38_Y17_N8
\I0|E_DATA[21]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_19\ = (C1_E_DATA[21] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[5]~5\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_19\,
	regout => \I0|E_DATA\(21));

-- Location: LC_X43_Y16_N7
\I0|E_DATA[22]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_20\ = (C1_E_DATA[22] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \LAD[6]~6\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_20\,
	regout => \I0|E_DATA\(22));

-- Location: LC_X43_Y16_N1
\I0|E_DATA[23]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_21\ = (C1_E_DATA[23] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \LAD[7]~7\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_21\,
	regout => \I0|E_DATA\(23));

-- Location: LC_X37_Y15_N5
\I0|E_DATA[24]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_22\ = (C1_E_DATA[24] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[8]~8\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_22\,
	regout => \I0|E_DATA\(24));

-- Location: LC_X37_Y15_N6
\I0|E_DATA[25]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_23\ = (C1_E_DATA[25] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[9]~9\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_23\,
	regout => \I0|E_DATA\(25));

-- Location: LC_X37_Y15_N8
\I0|E_DATA[26]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_24\ = (C1_E_DATA[26] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[10]~10\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_24\,
	regout => \I0|E_DATA\(26));

-- Location: LC_X37_Y15_N1
\I0|E_DATA[27]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_25\ = (C1_E_DATA[27] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[11]~11\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_25\,
	regout => \I0|E_DATA\(27));

-- Location: LC_X43_Y16_N6
\I0|E_DATA[28]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_27\ = ((\I1|I3|dir_i199_x\ & (\I0|E_DATA\(5))) # (!\I1|I3|dir_i199_x\ & ((C1_E_DATA[28]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|E_DATA\(5),
	datac => \LAD[12]~12\,
	datad => \I1|I3|dir_i199_x\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_27\,
	regout => \I0|E_DATA\(28));

-- Location: LC_X43_Y16_N4
\I0|E_DATA[29]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_x_28\ = ((\I1|I3|dir_i199_x\ & (\I0|E_DATA\(7))) # (!\I1|I3|dir_i199_x\ & ((C1_E_DATA[29]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|E_DATA\(7),
	datac => \LAD[13]~13\,
	datad => \I1|I3|dir_i199_x\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_x_28\,
	regout => \I0|E_DATA\(29));

-- Location: LC_X37_Y15_N2
\I0|E_DATA[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_DATA\(30) = DFFEAS((((\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_DATA[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_DATA\(30));

-- Location: LC_X37_Y15_N9
\I1|I3|OUT_i_30_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_28\ = (\I0|E_DATA\(30) & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \I0|E_DATA\(30),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_28\);

-- Location: LC_X33_Y16_N1
\I0|E_DATA[31]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|OUT_i_29\ = (C1_E_DATA[31] & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(0),
	datac => \LAD[15]~15\,
	datad => \IDE~combout\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_DATA[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|OUT_i_29\,
	regout => \I0|E_DATA\(31));

-- Location: LC_X36_Y20_N5
\I0|E_CONTROL[0]\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_2\ = (\I1|I3|dir_i199_x\ & (\E[3]~3\ $ (((C1_E_CONTROL[0]))))) # (!\I1|I3|dir_i199_x\ & (((\E[2]~2\))))
-- \I0|E_CONTROL\(0) = DFFEAS(\I1|I3|DIN_2\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5acc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \E[3]~3\,
	datab => \E[2]~2\,
	datac => \LAD[0]~0\,
	datad => \I1|I3|dir_i199_x\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_2\,
	regout => \I0|E_CONTROL\(0));

-- Location: LC_X36_Y20_N0
\I1|I3|DIN_1_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_1\ = (\I1|I3|dir_i199_x\ & (\E[18]~18\ $ ((\I0|E_CONTROL\(0))))) # (!\I1|I3|dir_i199_x\ & (((\E[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[18]~18\,
	datab => \I0|E_CONTROL\(0),
	datac => \E[1]~1\,
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_1\);

-- Location: LC_X36_Y20_N7
\I1|I3|DIN_0_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_0\ = (\I1|I3|dir_i199_x\ & ((\I0|E_CONTROL\(0) $ (\E[2]~2\)))) # (!\I1|I3|dir_i199_x\ & (\E[0]~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[0]~0\,
	datab => \I0|E_CONTROL\(0),
	datac => \E[2]~2\,
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_0\);

-- Location: LC_X37_Y17_N3
\I0|GATEWIDTH[15]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH[15]~2_combout\ = ((\I1|I1|REG_ADDR_x_4\ & (!\I1|I1|REG_ADDR_x_5\ & \I1|I1|WREN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|REG_ADDR_x_5\,
	datad => \I1|I1|WREN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|GATEWIDTH[15]~2_combout\);

-- Location: LC_X37_Y21_N2
\I0|C_MASK[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK[0]~0_combout\ = (\I0|Equal11~2_combout\ & (!\I1|I1|REG_ADDR_x_3\ & (\I0|C_CONTROL[16]~2_combout\ & \I0|GATEWIDTH[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal11~2_combout\,
	datab => \I1|I1|REG_ADDR_x_3\,
	datac => \I0|C_CONTROL[16]~2_combout\,
	datad => \I0|GATEWIDTH[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_MASK[0]~0_combout\);

-- Location: LC_X33_Y22_N0
\I0|C_MASK[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(0) = DFFEAS((((!\LAD[0]~0\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(0));

-- Location: LC_X33_Y20_N0
\I0|F_DOUT[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[0]~0_combout\ = (\I1|I3|DIN_0\ & (!\I0|C_MASK\(0) & ((\I0|MODE\(4)) # (\I1|I3|DIN_1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(4),
	datab => \I1|I3|DIN_1\,
	datac => \I1|I3|DIN_0\,
	datad => \I0|C_MASK\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[0]~0_combout\);

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDF[1]~I\ : cyclone_io
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
	padio => ww_IDF(1),
	combout => \IDF~combout\(1));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDF[2]~I\ : cyclone_io
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
	padio => ww_IDF(2),
	combout => \IDF~combout\(2));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDF[0]~I\ : cyclone_io
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
	padio => ww_IDF(0),
	combout => \IDF~combout\(0));

-- Location: LC_X39_Y22_N2
\I0|F_CONTROL[1]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL[1]~0_combout\ = (\I1|I1|WREN_s\ & (\I0|Equal16~1_combout\ & (!\I1|I1|REG_ADDR_x_3\ & \I1|I1|REG_ADDR_x_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I0|Equal16~1_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_CONTROL[1]~0_combout\);

-- Location: LC_X40_Y18_N9
\I0|F_CONTROL[1]\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIR_i_iv\ = (!\IDF~combout\(2) & ((\IDF~combout\(1) & ((!\IDF~combout\(0)) # (!C1_F_CONTROL[1]))) # (!\IDF~combout\(1) & ((\IDF~combout\(0))))))
-- \I0|F_CONTROL\(1) = DFFEAS(\I1|I4|DIR_i_iv\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1322",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDF~combout\(1),
	datab => \IDF~combout\(2),
	datac => \LAD[1]~1\,
	datad => \IDF~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIR_i_iv\,
	regout => \I0|F_CONTROL\(1));

-- Location: LC_X39_Y21_N3
\I1|I4|dir_i199_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|dir_i199_x\ = (\IDF~combout\(0) & (!\IDF~combout\(2) & (\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \IDF~combout\(2),
	datac => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|dir_i199_x\);

-- Location: LC_X33_Y20_N1
\I0|C~1\ : cyclone_lcell
-- Equation(s):
-- \I0|C~1_combout\ = (((\I1|I3|DIN_2\ & \I1|I3|DIN_0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_2\,
	datad => \I1|I3|DIN_0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~1_combout\);

-- Location: LC_X33_Y20_N5
\I0|C_MASK[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(1) = DFFEAS((((!\LAD[1]~1\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(1));

-- Location: LC_X33_Y20_N8
\I0|F_DOUT[1]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[1]~2_combout\ = (!\I0|C_MASK\(1) & ((\I0|MODE\(4) & ((\I1|I3|DIN_1\))) # (!\I0|MODE\(4) & (\I0|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C~1_combout\,
	datab => \I0|C_MASK\(1),
	datac => \I1|I3|DIN_1\,
	datad => \I0|MODE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[1]~2_combout\);

-- Location: LC_X33_Y22_N9
\I0|C_MASK[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(2) = DFFEAS((((!\LAD[2]~2\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(2));

-- Location: LC_X33_Y20_N3
\I0|F_DOUT[2]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[2]~1_combout\ = (\I1|I3|DIN_2\ & (!\I0|C_MASK\(2) & ((\I1|I3|DIN_1\) # (\I0|MODE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|DIN_2\,
	datab => \I1|I3|DIN_1\,
	datac => \I0|C_MASK\(2),
	datad => \I0|MODE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[2]~1_combout\);

-- Location: LC_X33_Y20_N4
\I1|I4|OUT_i_x_1_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_0\ = (\I1|I4|dir_i199_x\ & (((\I0|F_DOUT[2]~1_combout\)))) # (!\I1|I4|dir_i199_x\ & (((\I0|F_DOUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|dir_i199_x\,
	datac => \I0|F_DOUT[1]~2_combout\,
	datad => \I0|F_DOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_0\);

-- Location: LC_X33_Y20_N9
\I1|I4|OUT_i_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_0\ = (\I0|F_DOUT[2]~1_combout\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \I0|F_DOUT[2]~1_combout\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_0\);

-- Location: LC_X33_Y18_N1
\I1|I4|dir_i198_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|dir_i198_x\ = (!\IDF~combout\(2) & ((\IDF~combout\(0) $ (\IDF~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datac => \IDF~combout\(0),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|dir_i198_x\);

-- Location: LC_X36_Y20_N9
\I1|I3|DIN_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_3\ = (\I1|I3|dir_i199_x\ & (\E[19]~19\ $ ((\I0|E_CONTROL\(0))))) # (!\I1|I3|dir_i199_x\ & (((\E[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[19]~19\,
	datab => \I0|E_CONTROL\(0),
	datac => \E[3]~3\,
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_3\);

-- Location: LC_X37_Y20_N3
\I0|C_MASK[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(3) = DFFEAS((((!\LAD[3]~3\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(3));

-- Location: LC_X37_Y20_N6
\I0|F_DOUT[3]~3\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[3]~3_combout\ = (\I1|I3|DIN_3\ & (!\I0|C_MASK\(3) & ((\I0|MODE\(4)) # (\I1|I3|DIN_0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(4),
	datab => \I1|I3|DIN_3\,
	datac => \I0|C_MASK\(3),
	datad => \I1|I3|DIN_0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[3]~3_combout\);

-- Location: LC_X33_Y18_N6
\I1|I4|OUT_i_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_1\ = (\I0|F_DOUT[3]~3_combout\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \I0|F_DOUT[3]~3_combout\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_1\);

-- Location: LC_X37_Y20_N1
\I0|C~4\ : cyclone_lcell
-- Equation(s):
-- \I0|C~4_combout\ = (((\I1|I3|DIN_1\ & \I1|I3|DIN_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_1\,
	datad => \I1|I3|DIN_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~4_combout\);

-- Location: LC_X37_Y20_N0
\I0|F_DOUT[4]~4\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[4]~4_combout\ = (((\I1|I3|DIN_1\) # (\I1|I3|DIN_0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_1\,
	datad => \I1|I3|DIN_0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[4]~4_combout\);

-- Location: LC_X37_Y20_N5
\I0|C_MASK[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(4) = DFFEAS((((!\LAD[4]~4\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(4));

-- Location: LC_X37_Y20_N7
\I0|F_DOUT[4]~5\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[4]~5_combout\ = (!\I0|C_MASK\(4) & ((\I0|MODE\(4) & ((\I0|F_DOUT[4]~4_combout\))) # (!\I0|MODE\(4) & (\I0|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C~4_combout\,
	datab => \I0|F_DOUT[4]~4_combout\,
	datac => \I0|MODE\(4),
	datad => \I0|C_MASK\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[4]~5_combout\);

-- Location: LC_X40_Y18_N4
\I1|I4|OUT_i_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_2\ = (\I0|F_DOUT[4]~5_combout\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \IDF~combout\(2),
	datac => \IDF~combout\(1),
	datad => \I0|F_DOUT[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_2\);

-- Location: LC_X36_Y20_N3
\I0|C~6\ : cyclone_lcell
-- Equation(s):
-- \I0|C~6_combout\ = (\I1|I3|DIN_2\ & (((\I1|I3|DIN_0\) # (\I1|I3|DIN_1\)))) # (!\I1|I3|DIN_2\ & (((\I1|I3|DIN_0\ & \I1|I3|DIN_1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|DIN_2\,
	datac => \I1|I3|DIN_0\,
	datad => \I1|I3|DIN_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~6_combout\);

-- Location: LC_X35_Y20_N0
\I0|C~5\ : cyclone_lcell
-- Equation(s):
-- \I0|C~5_combout\ = (((\I1|I3|DIN_2\ & \I1|I3|DIN_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_2\,
	datad => \I1|I3|DIN_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~5_combout\);

-- Location: LC_X35_Y20_N3
\I0|C_MASK[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(5) = DFFEAS((((!\LAD[5]~5\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(5));

-- Location: LC_X35_Y20_N4
\I0|F_DOUT[5]~6\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT[5]~6_combout\ = (!\I0|C_MASK\(5) & ((\I0|MODE\(4) & (\I0|C~6_combout\)) # (!\I0|MODE\(4) & ((\I0|C~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C~6_combout\,
	datab => \I0|C~5_combout\,
	datac => \I0|MODE\(4),
	datad => \I0|C_MASK\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT[5]~6_combout\);

-- Location: LC_X40_Y18_N5
\I1|I4|OUT_i_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_3\ = (\I0|F_DOUT[5]~6_combout\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \I0|F_DOUT[5]~6_combout\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_3\);

-- Location: LC_X37_Y18_N0
\I1|I3|DIN_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_4\ = (\I1|I3|dir_i199_x\ & ((\E[14]~14\ $ (\I0|E_CONTROL\(0))))) # (!\I1|I3|dir_i199_x\ & (\E[4]~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[4]~4\,
	datab => \E[14]~14\,
	datac => \I0|E_CONTROL\(0),
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_4\);

-- Location: LC_X32_Y19_N4
\I0|C_MASK[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(6) = DFFEAS((((!\LAD[6]~6\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(6));

-- Location: LC_X32_Y17_N6
\I0|F_DOUT[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT\(6) = (((\I1|I3|DIN_4\ & !\I0|C_MASK\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_4\,
	datad => \I0|C_MASK\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT\(6));

-- Location: LC_X40_Y18_N6
\I1|I4|OUT_i_6_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_4\ = (\I0|F_DOUT\(6) & ((\IDF~combout\(2)) # ((!\IDF~combout\(0)) # (!\IDF~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_DOUT\(6),
	datab => \IDF~combout\(2),
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_4\);

-- Location: LC_X37_Y18_N4
\I1|I3|DIN_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_5\ = (\I1|I3|dir_i199_x\ & (\E[30]~30\ $ (((\I0|E_CONTROL\(0)))))) # (!\I1|I3|dir_i199_x\ & (((\E[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[30]~30\,
	datab => \E[5]~5\,
	datac => \I0|E_CONTROL\(0),
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_5\);

-- Location: LC_X33_Y18_N4
\I0|C_MASK[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(7) = DFFEAS((((!\LAD[7]~7\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(7));

-- Location: LC_X33_Y18_N0
\I0|F_DOUT[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_DOUT\(7) = ((\I1|I3|DIN_5\ & (!\I0|C_MASK\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I3|DIN_5\,
	datac => \I0|C_MASK\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_DOUT\(7));

-- Location: LC_X33_Y18_N9
\I1|I4|OUT_i_7_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_5\ = (\I0|F_DOUT\(7) & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \I0|F_DOUT\(7),
	datac => \IDF~combout\(0),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_5\);

-- Location: LC_X40_Y18_N8
\I1|I4|OUT_i_x_12_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_11\ = (((\I1|I4|dir_i199_x\ & \I0|F_DOUT[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I4|dir_i199_x\,
	datad => \I0|F_DOUT[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_11\);

-- Location: LC_X40_Y18_N1
\I1|I4|OUT_i_x_13_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_12\ = (\I0|F_DOUT\(6) & (((\I1|I4|dir_i199_x\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_DOUT\(6),
	datac => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_12\);

-- Location: LC_X33_Y20_N7
\I1|I4|OUT_i_x_16_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_15\ = (((\I0|F_DOUT[1]~2_combout\ & \I1|I4|dir_i199_x\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|F_DOUT[1]~2_combout\,
	datad => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_15\);

-- Location: LC_X40_Y18_N2
\I1|I4|OUT_i_x_17_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_16\ = (((\I1|I4|dir_i199_x\ & \I0|F_DOUT[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I4|dir_i199_x\,
	datad => \I0|F_DOUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_16\);

-- Location: LC_X40_Y18_N7
\I1|I4|OUT_i_x_28_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_27\ = ((\I0|F_DOUT[5]~6_combout\ & (\I1|I4|dir_i199_x\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|F_DOUT[5]~6_combout\,
	datac => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_27\);

-- Location: LC_X33_Y18_N2
\I1|I4|OUT_i_x_29_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|OUT_i_x_28\ = ((\I1|I4|dir_i199_x\ & ((\I0|F_DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I4|dir_i199_x\,
	datad => \I0|F_DOUT\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|OUT_i_x_28\);

-- Location: LC_X39_Y18_N3
\I0|Equal24~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal24~0_combout\ = ((\I0|Equal16~1_combout\ & (!\I1|I1|REG_ADDR_x_3\ & \I1|I1|REG_ADDR_x_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|Equal16~1_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal24~0_combout\);

-- Location: LC_X34_Y18_N2
\I0|F_CONTROL[0]\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_7\ = (\I1|I4|dir_i199_x\ & (\F[31]~31\ $ ((C1_F_CONTROL[0])))) # (!\I1|I4|dir_i199_x\ & (((\F[7]~7\))))
-- \I0|F_CONTROL\(0) = DFFEAS(\I1|I4|DIN_7\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b48",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \F[31]~31\,
	datab => \I1|I4|dir_i199_x\,
	datac => \LAD[0]~0\,
	datad => \F[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_7\,
	regout => \I0|F_CONTROL\(0));

-- Location: LC_X39_Y18_N6
\I0|Equal21~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal21~0_combout\ = (\I0|Equal17~2_combout\ & (((\I1|I1|REG_ADDR_x_3\ & !\I1|I1|REG_ADDR_x_4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal17~2_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal21~0_combout\);

-- Location: LC_X39_Y18_N7
\I0|E_CONTROL[16]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL[16]~1_combout\ = (\I1|I1|REG_ADDR_x_3\ & (!\I1|I1|REG_ADDR_x_4\ & (\I1|I1|WREN_s\ & \I0|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_3\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|E_CONTROL[16]~1_combout\);

-- Location: LC_X39_Y18_N4
\I0|E_CONTROL[16]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~4\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(0)) # ((C1_E_CONTROL[16] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[16] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(0),
	datac => \LAD[0]~0\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~4\,
	regout => \I0|E_CONTROL\(16));

-- Location: LC_X39_Y21_N4
\I1|I4|DIN_0_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_0\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ ((\F[2]~2\)))) # (!\I1|I4|dir_i199_x\ & (((\F[0]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \I1|I4|dir_i199_x\,
	datac => \F[2]~2\,
	datad => \F[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_0\);

-- Location: LC_X34_Y18_N6
\I0|D_CONTROL[0]\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_7\ = (\I1|I2|dir_i199_x\ & (\D[31]~31\ $ ((C1_D_CONTROL[0])))) # (!\I1|I2|dir_i199_x\ & (((\D[7]~7\))))
-- \I0|D_CONTROL\(0) = DFFEAS(\I1|I2|DIN_7\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|D_CONTROL[1]~2_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d28",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I2|dir_i199_x\,
	datab => \D[31]~31\,
	datac => \LAD[0]~0\,
	datad => \D[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_7\,
	regout => \I0|D_CONTROL\(0));

-- Location: LC_X39_Y19_N4
\I1|I2|DIN_0_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_0\ = (\I1|I2|dir_i199_x\ & ((\D[2]~2\ $ (\I0|D_CONTROL\(0))))) # (!\I1|I2|dir_i199_x\ & (\D[0]~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~0\,
	datab => \D[2]~2\,
	datac => \I0|D_CONTROL\(0),
	datad => \I1|I2|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_0\);

-- Location: LC_X39_Y19_N9
\I0|Selector15~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~2_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_0\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_0\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I2|DIN_0\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~2_combout\);

-- Location: LC_X37_Y16_N8
\I0|GATEWIDTH[15]~3\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH[15]~3_combout\ = (\I0|C_CONTROL[16]~2_combout\ & (!\I1|I1|REG_ADDR_x_1\ & (\I1|I1|REG_ADDR_x_3\ & !\I1|I1|REG_ADDR_x_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL[16]~2_combout\,
	datab => \I1|I1|REG_ADDR_x_1\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|GATEWIDTH[15]~3_combout\);

-- Location: LC_X37_Y16_N6
\I0|Equal14~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal14~0_combout\ = (!\I1|I1|REG_ADDR_x_2\ & (\I1|I1|REG_ADDR_x_3\ & (\I1|I1|REG_ADDR_x_1\ & \I0|C_CONTROL[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_2\,
	datab => \I1|I1|REG_ADDR_x_3\,
	datac => \I1|I1|REG_ADDR_x_1\,
	datad => \I0|C_CONTROL[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal14~0_combout\);

-- Location: LC_X36_Y20_N8
\I0|Selector15~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~0_combout\ = (!\I1|I1|REG_ADDR_x_4\ & (!\I1|I1|REG_ADDR_x_5\ & ((\I0|GATEWIDTH[15]~3_combout\) # (\I0|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I0|GATEWIDTH[15]~3_combout\,
	datac => \I1|I1|REG_ADDR_x_5\,
	datad => \I0|Equal14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~0_combout\);

-- Location: LC_X36_Y20_N6
\I0|C~0\ : cyclone_lcell
-- Equation(s):
-- \I0|C~0_combout\ = (((\I1|I3|DIN_0\ & \I1|I3|DIN_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_0\,
	datad => \I1|I3|DIN_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~0_combout\);

-- Location: LC_X36_Y19_N1
\I0|C_STATUS[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(0) = ((\I0|MODE\(4) & (!\I1|I3|DIN_0\)) # (!\I0|MODE\(4) & ((!\I0|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|DIN_0\,
	datac => \I0|C~0_combout\,
	datad => \I0|MODE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(0));

-- Location: LC_X36_Y19_N2
\I0|Selector15~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~1_combout\ = (\I0|Selector15~0_combout\ & (((\I0|C_STATUS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~0_combout\,
	datad => \I0|C_STATUS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~1_combout\);

-- Location: LC_X36_Y23_N2
\I0|Equal25~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal25~0_combout\ = (\I1|I1|REG_ADDR_x_4\ & (((\I0|Equal17~2_combout\ & !\I1|I1|REG_ADDR_x_3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datac => \I0|Equal17~2_combout\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal25~0_combout\);

-- Location: LC_X36_Y24_N8
\I0|PDL_CONTROL[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(0) = DFFEAS((((!\LAD[0]~0\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(0));

-- Location: LC_X36_Y23_N9
\I0|Equal29~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal29~2_combout\ = (\I1|I1|REG_ADDR_x_4\ & (((\I0|Equal17~2_combout\ & \I1|I1|REG_ADDR_x_3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datac => \I0|Equal17~2_combout\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal29~2_combout\);

-- Location: LC_X37_Y23_N2
\I0|F_CONTROL[16]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL[16]~1_combout\ = (\I1|I1|REG_ADDR_x_4\ & (!\I1|I1|REG_ADDR_x_3\ & (\I1|I1|WREN_s\ & \I0|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I1|I1|REG_ADDR_x_3\,
	datac => \I1|I1|WREN_s\,
	datad => \I0|Equal17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|F_CONTROL[16]~1_combout\);

-- Location: LC_X36_Y23_N0
\I0|F_CONTROL[16]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~3\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[16]) # ((!\I0|PDL_CONTROL\(0) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (!\I0|PDL_CONTROL\(0) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(0),
	datac => \LAD[0]~0\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~3\,
	regout => \I0|F_CONTROL\(16));

-- Location: LC_X36_Y19_N3
\I0|Selector15~5\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~5_combout\ = (\I0|Selector15~4\) # ((\I0|Selector15~2_combout\) # ((\I0|Selector15~1_combout\) # (\I0|Selector15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~4\,
	datab => \I0|Selector15~2_combout\,
	datac => \I0|Selector15~1_combout\,
	datad => \I0|Selector15~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~5_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cyclone_io
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

-- Location: LC_X36_Y21_N4
\I0|Selector15~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~7_combout\ = (\I0|Equal12~0_combout\ & ((\B~combout\(16)) # ((\I0|D_CONTROL\(0) & \I0|Equal16~0_combout\)))) # (!\I0|Equal12~0_combout\ & (((\I0|D_CONTROL\(0) & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal12~0_combout\,
	datab => \B~combout\(16),
	datac => \I0|D_CONTROL\(0),
	datad => \I0|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~7_combout\);

-- Location: LC_X34_Y21_N0
\I0|Equal17~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal17~3_combout\ = (!\I1|I1|REG_ADDR_x_4\ & (((!\I1|I1|REG_ADDR_x_3\ & \I0|Equal17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I0|Equal17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal17~3_combout\);

-- Location: LC_X34_Y21_N4
\I0|Equal20~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal20~0_combout\ = (!\I1|I1|REG_ADDR_x_4\ & (((\I1|I1|REG_ADDR_x_3\ & \I0|Equal16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I0|Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal20~0_combout\);

-- Location: LC_X34_Y21_N8
\I0|D_CONTROL[16]~3\ : cyclone_lcell
-- Equation(s):
-- \I0|D_CONTROL[16]~3_combout\ = (\I1|I1|WREN_s\ & (!\I1|I1|REG_ADDR_x_4\ & (!\I1|I1|REG_ADDR_x_3\ & \I0|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I0|Equal17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|D_CONTROL[16]~3_combout\);

-- Location: LC_X36_Y19_N4
\I0|D_CONTROL[16]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~6\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[16]) # ((\I0|E_CONTROL\(0) & \I0|Equal20~0_combout\)))) # (!\I0|Equal17~3_combout\ & (\I0|E_CONTROL\(0) & ((\I0|Equal20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|E_CONTROL\(0),
	datac => \LAD[0]~0\,
	datad => \I0|Equal20~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~6\,
	regout => \I0|D_CONTROL\(16));

-- Location: LC_X38_Y17_N4
\I0|Equal31~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal31~0_combout\ = (\I1|I1|REG_ADDR_x_1\ & (!\I1|I1|REG_ADDR_x_2\ & ((\I0|Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_1\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datad => \I0|Equal30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal31~0_combout\);

-- Location: LC_X38_Y17_N2
\I1|I3|DIN_16_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_16\ = (\E[16]~16\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \E[16]~16\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_16\);

-- Location: LC_X38_Y17_N3
\I0|Selector15~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~9_combout\ = (\IDD~combout\(0) & ((\I0|Equal31~0_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_16\)))) # (!\IDD~combout\(0) & (((\I0|Equal23~0_combout\ & \I1|I3|DIN_16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \I0|Equal31~0_combout\,
	datac => \I0|Equal23~0_combout\,
	datad => \I1|I3|DIN_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~9_combout\);

-- Location: LC_X35_Y18_N1
\I0|Equal27~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal27~3_combout\ = (\I1|I1|REG_ADDR_x_4\ & (\I0|Equal15~3_combout\ & (\I1|I1|REG_ADDR_x_3\ & \I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I0|Equal15~3_combout\,
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal27~3_combout\);

-- Location: LC_X36_Y21_N2
\I1|I4|DIN_16_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_16\ = (\F[16]~16\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(1),
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \F[16]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_16\);

-- Location: LC_X37_Y19_N0
\I0|Equal33~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal33~0_combout\ = ((\I1|I1|REG_ADDR_x_2\ & (\I1|I1|REG_ADDR_x_1\ & \I0|Equal30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I1|I1|REG_ADDR_x_1\,
	datad => \I0|Equal30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal33~0_combout\);

-- Location: LC_X36_Y21_N1
\I0|Selector15~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~8_combout\ = (\I0|Equal27~3_combout\ & ((\I1|I4|DIN_16\) # ((\IDF~combout\(0) & \I0|Equal33~0_combout\)))) # (!\I0|Equal27~3_combout\ & (\IDF~combout\(0) & ((\I0|Equal33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal27~3_combout\,
	datab => \IDF~combout\(0),
	datac => \I1|I4|DIN_16\,
	datad => \I0|Equal33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~8_combout\);

-- Location: LC_X36_Y19_N8
\I0|Selector15~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~10_combout\ = (\I0|Selector15~7_combout\) # ((\I0|Selector15~6\) # ((\I0|Selector15~9_combout\) # (\I0|Selector15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~7_combout\,
	datab => \I0|Selector15~6\,
	datac => \I0|Selector15~9_combout\,
	datad => \I0|Selector15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~10_combout\);

-- Location: LC_X43_Y22_N9
\I1|I2|DIN_16_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_16\ = (\D[16]~16\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(2),
	datac => \IDD~combout\(0),
	datad => \D[16]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_16\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N1
\I0|Equal9~5\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal9~5_combout\ = (!\I1|I1|REG_ADDR_x_1\ & (\I0|C_CONTROL[16]~2_combout\ & (\I0|Equal9~4_combout\ & !\I1|I1|REG_ADDR_x_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_1\,
	datab => \I0|C_CONTROL[16]~2_combout\,
	datac => \I0|Equal9~4_combout\,
	datad => \I1|I1|REG_ADDR_x_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal9~5_combout\);

-- Location: LC_X38_Y22_N8
\I0|Selector15~12\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~12_combout\ = (\I0|Equal19~0_combout\ & ((\I1|I2|DIN_16\) # ((\A~combout\(0) & \I0|Equal9~5_combout\)))) # (!\I0|Equal19~0_combout\ & (((\A~combout\(0) & \I0|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal19~0_combout\,
	datab => \I1|I2|DIN_16\,
	datac => \A~combout\(0),
	datad => \I0|Equal9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~12_combout\);

-- Location: LC_X35_Y16_N2
\I0|Equal11~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal11~3_combout\ = (!\I1|I1|REG_ADDR_x_1\ & (\I0|C_CONTROL[16]~2_combout\ & (\I0|Equal9~4_combout\ & \I1|I1|REG_ADDR_x_2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_1\,
	datab => \I0|C_CONTROL[16]~2_combout\,
	datac => \I0|Equal9~4_combout\,
	datad => \I1|I1|REG_ADDR_x_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal11~3_combout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N7
\I0|Selector15~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~11_combout\ = (\I0|Equal11~3_combout\ & ((\B~combout\(0)) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_0\)))) # (!\I0|Equal11~3_combout\ & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal11~3_combout\,
	datab => \I0|Equal22~0_combout\,
	datac => \B~combout\(0),
	datad => \I1|I3|DIN_0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~11_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cyclone_io
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

-- Location: LC_X37_Y19_N8
\I0|Equal30~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal30~1_combout\ = ((!\I1|I1|REG_ADDR_x_2\ & (\I0|Equal30~0_combout\ & !\I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|Equal30~0_combout\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal30~1_combout\);

-- Location: LC_X37_Y19_N4
\I0|Equal10~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal10~1_combout\ = (\I0|Equal9~4_combout\ & (\I0|C_CONTROL[16]~2_combout\ & (!\I1|I1|REG_ADDR_x_2\ & \I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~4_combout\,
	datab => \I0|C_CONTROL[16]~2_combout\,
	datac => \I1|I1|REG_ADDR_x_2\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal10~1_combout\);

-- Location: LC_X37_Y19_N5
\I0|Selector15~14\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~14_combout\ = (\A~combout\(16) & ((\I0|Equal10~1_combout\) # ((\I0|Equal30~1_combout\ & \DDLY[0]~0\)))) # (!\A~combout\(16) & (\I0|Equal30~1_combout\ & ((\DDLY[0]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \I0|Equal30~1_combout\,
	datac => \I0|Equal10~1_combout\,
	datad => \DDLY[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~14_combout\);

-- Location: LC_X33_Y17_N9
\I0|Equal32~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal32~0_combout\ = (\I0|Equal9~4_combout\ & (\I1|I1|REG_ADDR_x_6\ & (\I0|Equal11~2_combout\ & \I0|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~4_combout\,
	datab => \I1|I1|REG_ADDR_x_6\,
	datac => \I0|Equal11~2_combout\,
	datad => \I0|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal32~0_combout\);

-- Location: LC_X36_Y17_N1
\I0|Equal15~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal15~4_combout\ = (!\I1|I1|REG_ADDR_x_3\ & (!\I1|I1|REG_ADDR_x_1\ & (!\I1|I1|REG_ADDR_x_4\ & \I0|Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_3\,
	datab => \I1|I1|REG_ADDR_x_1\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal15~4_combout\);

-- Location: LC_X33_Y17_N4
\I0|SCRATCH[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH[0]~0_combout\ = (\I1|I1|WREN_s\ & (\I0|Equal15~3_combout\ & (!\I1|I1|REG_ADDR_x_1\ & \I0|Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I0|Equal15~3_combout\,
	datac => \I1|I1|REG_ADDR_x_1\,
	datad => \I0|Equal15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|SCRATCH[0]~0_combout\);

-- Location: LC_X33_Y17_N8
\I0|SCRATCH[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~13\ = (\I0|Equal32~0_combout\ & ((\IDE~combout\(0)) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[0])))) # (!\I0|Equal32~0_combout\ & (\I0|Equal15~4_combout\ & (C1_SCRATCH[0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal32~0_combout\,
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[0]~0\,
	datad => \IDE~combout\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~13\,
	regout => \I0|SCRATCH\(0));

-- Location: LC_X36_Y19_N6
\I0|Selector15~15\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector15~15_combout\ = (\I0|Selector15~12_combout\) # ((\I0|Selector15~11_combout\) # ((\I0|Selector15~14_combout\) # (\I0|Selector15~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~12_combout\,
	datab => \I0|Selector15~11_combout\,
	datac => \I0|Selector15~14_combout\,
	datad => \I0|Selector15~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector15~15_combout\);

-- Location: LC_X39_Y23_N3
\I1|I1|RDEN_s_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|RDEN_s\ = DFFEAS((!\I1|I1|LBSTATE\(0) & (!\nADS~combout\ & (!\WnR~combout\ & !\I1|I1|LBSTATE\(1)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I1|LBSTATE\(0),
	datab => \nADS~combout\,
	datac => \WnR~combout\,
	datad => \I1|I1|LBSTATE\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I1|RDEN_s\);

-- Location: LC_X34_Y19_N6
\I1|I1|REG_RDEN_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|REG_RDEN_x\ = ((!\WnR~combout\ & ((\I1|I1|RDEN_s\) # (!\nADS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nADS~combout\,
	datac => \WnR~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|REG_RDEN_x\);

-- Location: LC_X36_Y19_N5
\I0|REG_DOUT[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(0) = DFFEAS(((\I0|Selector15~5_combout\) # ((\I0|Selector15~10_combout\) # (\I0|Selector15~15_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|Selector15~5_combout\,
	datac => \I0|Selector15~10_combout\,
	datad => \I0|Selector15~15_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(0));

-- Location: LC_X39_Y23_N6
\I1|I1|LAD_OUT_x_0_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_0\ = (\I0|REG_DOUT\(0) & (\nADS~combout\ & ((\I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|REG_DOUT\(0),
	datab => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_0\);

-- Location: LC_X34_Y19_N0
\I1|I1|un2_lad_oe_i_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|un2_lad_oe_i_x\ = ((\nADS~combout\ & ((\I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|un2_lad_oe_i_x\);

-- Location: LC_X37_Y21_N7
\I0|C_CONTROL[0]~4\ : cyclone_lcell
-- Equation(s):
-- \I0|C_CONTROL[0]~4_combout\ = (\I1|I1|WREN_s\ & (!\I1|I1|REG_ADDR_x_5\ & (\I1|I1|REG_ADDR_x_4\ & \I0|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I1|I1|REG_ADDR_x_5\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_CONTROL[0]~4_combout\);

-- Location: LC_X34_Y21_N7
\I0|D_CONTROL[17]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~5\ = (\I0|E_CONTROL\(1) & ((\I0|Equal20~0_combout\) # ((C1_D_CONTROL[17] & \I0|Equal17~3_combout\)))) # (!\I0|E_CONTROL\(1) & (((C1_D_CONTROL[17] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_CONTROL\(1),
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[1]~1\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~5\,
	regout => \I0|D_CONTROL\(17));

-- Location: LC_X36_Y21_N5
\I1|I4|DIN_17_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_17\ = (\F[17]~17\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(1),
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \F[17]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_17\);

-- Location: LC_X36_Y21_N3
\I0|Selector14~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~7_combout\ = (\IDF~combout\(1) & ((\I0|Equal33~0_combout\) # ((\I1|I4|DIN_17\ & \I0|Equal27~3_combout\)))) # (!\IDF~combout\(1) & (\I1|I4|DIN_17\ & (\I0|Equal27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(1),
	datab => \I1|I4|DIN_17\,
	datac => \I0|Equal27~3_combout\,
	datad => \I0|Equal33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~7_combout\);

-- Location: LC_X38_Y17_N6
\I1|I3|DIN_17_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_17\ = (\E[17]~17\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \E[17]~17\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_17\);

-- Location: LC_X38_Y17_N7
\I0|Selector14~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~8_combout\ = (\IDD~combout\(1) & ((\I0|Equal31~0_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_17\)))) # (!\IDD~combout\(1) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal31~0_combout\,
	datad => \I1|I3|DIN_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~8_combout\);

-- Location: LC_X34_Y21_N3
\I0|Selector14~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~9_combout\ = (\I0|Selector14~5\) # ((\I0|Selector14~6\) # ((\I0|Selector14~7_combout\) # (\I0|Selector14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector14~5\,
	datab => \I0|Selector14~6\,
	datac => \I0|Selector14~7_combout\,
	datad => \I0|Selector14~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~9_combout\);

-- Location: LC_X39_Y18_N0
\I0|E_CONTROL[17]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~3\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(1)) # ((C1_E_CONTROL[17] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[17] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(1),
	datac => \LAD[1]~1\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~3\,
	regout => \I0|E_CONTROL\(17));

-- Location: LC_X36_Y23_N6
\I0|F_CONTROL[17]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[17]) # ((\I0|PDL_CONTROL\(1) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(1) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(1),
	datac => \LAD[1]~1\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~2\,
	regout => \I0|F_CONTROL\(17));

-- Location: LC_X36_Y21_N0
\I1|I4|DIN_1_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_1\ = (\I1|I4|dir_i199_x\ & ((\F[18]~18\ $ (\I0|F_CONTROL\(0))))) # (!\I1|I4|dir_i199_x\ & (\F[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ee4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|dir_i199_x\,
	datab => \F[1]~1\,
	datac => \F[18]~18\,
	datad => \I0|F_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_1\);

-- Location: LC_X36_Y21_N7
\I1|I2|DIN_1_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_1\ = (\I1|I2|dir_i199_x\ & ((\I0|D_CONTROL\(0) $ (\D[18]~18\)))) # (!\I1|I2|dir_i199_x\ & (\D[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~1\,
	datab => \I1|I2|dir_i199_x\,
	datac => \I0|D_CONTROL\(0),
	datad => \D[18]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_1\);

-- Location: LC_X36_Y21_N6
\I0|Selector14~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_1\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I1|I4|DIN_1\,
	datac => \I1|I2|DIN_1\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~1_combout\);

-- Location: LC_X33_Y20_N2
\I0|C_STATUS[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(1) = (\I0|MODE\(4) & (((!\I1|I3|DIN_1\)))) # (!\I0|MODE\(4) & (((!\I0|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(4),
	datac => \I1|I3|DIN_1\,
	datad => \I0|C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(1));

-- Location: LC_X34_Y21_N6
\I0|Selector14~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~0_combout\ = (\I0|Selector15~0_combout\ & (((\I0|C_STATUS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~0_combout\,
	datad => \I0|C_STATUS\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~0_combout\);

-- Location: LC_X34_Y21_N9
\I0|Selector14~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~4_combout\ = (\I0|Selector14~3\) # ((\I0|Selector14~2\) # ((\I0|Selector14~1_combout\) # (\I0|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector14~3\,
	datab => \I0|Selector14~2\,
	datac => \I0|Selector14~1_combout\,
	datad => \I0|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~4_combout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cyclone_io
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

-- Location: LC_X37_Y19_N2
\I0|Selector14~13\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~13_combout\ = (\A~combout\(17) & ((\I0|Equal10~1_combout\) # ((\I0|Equal30~1_combout\ & \DDLY[1]~1\)))) # (!\A~combout\(17) & (((\I0|Equal30~1_combout\ & \DDLY[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \I0|Equal10~1_combout\,
	datac => \I0|Equal30~1_combout\,
	datad => \DDLY[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~13_combout\);

-- Location: LC_X33_Y17_N3
\I0|SCRATCH[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(1) = DFFEAS((((!\LAD[1]~1\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(1));

-- Location: LC_X33_Y17_N7
\I0|Selector14~12\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~12_combout\ = (\I0|Equal32~0_combout\ & ((\IDE~combout\(1)) # ((!\I0|SCRATCH\(1) & \I0|Equal15~4_combout\)))) # (!\I0|Equal32~0_combout\ & (!\I0|SCRATCH\(1) & (\I0|Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal32~0_combout\,
	datab => \I0|SCRATCH\(1),
	datac => \I0|Equal15~4_combout\,
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~12_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cyclone_io
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

-- Location: LC_X43_Y22_N6
\I1|I2|DIN_17_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_17\ = (\D[17]~17\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(2),
	datac => \IDD~combout\(0),
	datad => \D[17]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_17\);

-- Location: LC_X38_Y22_N9
\I0|Selector14~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~11_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(1)) # ((\I1|I2|DIN_17\ & \I0|Equal19~0_combout\)))) # (!\I0|Equal9~5_combout\ & (((\I1|I2|DIN_17\ & \I0|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \A~combout\(1),
	datac => \I1|I2|DIN_17\,
	datad => \I0|Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~11_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N0
\I0|Selector14~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~10_combout\ = (\B~combout\(1) & ((\I0|Equal11~3_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_1\)))) # (!\B~combout\(1) & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal11~3_combout\,
	datad => \I1|I3|DIN_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~10_combout\);

-- Location: LC_X34_Y21_N1
\I0|Selector14~14\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector14~14_combout\ = (\I0|Selector14~13_combout\) # ((\I0|Selector14~12_combout\) # ((\I0|Selector14~11_combout\) # (\I0|Selector14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector14~13_combout\,
	datab => \I0|Selector14~12_combout\,
	datac => \I0|Selector14~11_combout\,
	datad => \I0|Selector14~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector14~14_combout\);

-- Location: LC_X34_Y21_N2
\I0|REG_DOUT[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(1) = DFFEAS(((\I0|Selector14~9_combout\) # ((\I0|Selector14~4_combout\) # (\I0|Selector14~14_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|Selector14~9_combout\,
	datac => \I0|Selector14~4_combout\,
	datad => \I0|Selector14~14_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(1));

-- Location: LC_X39_Y23_N7
\I1|I1|LAD_OUT_x_1_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_1\ = (\I0|REG_DOUT\(1) & (((\nADS~combout\ & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|REG_DOUT\(1),
	datac => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_1\);

-- Location: LC_X40_Y19_N7
\I0|F_CONTROL[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(2) = DFFEAS((((\LAD[2]~2\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(2));

-- Location: LC_X39_Y18_N5
\I0|E_CONTROL[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~3\ = (\I0|F_CONTROL\(2) & ((\I0|Equal24~0_combout\) # ((C1_E_CONTROL[18] & \I0|Equal21~0_combout\)))) # (!\I0|F_CONTROL\(2) & (((C1_E_CONTROL[18] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|F_CONTROL\(2),
	datab => \I0|Equal24~0_combout\,
	datac => \LAD[2]~2\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~3\,
	regout => \I0|E_CONTROL\(18));

-- Location: LC_X36_Y24_N6
\I0|PDL_CONTROL[2]\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|un1_wr_dly1_x\ = ((!\I0|PDL_CONTROL\(0) & (C1_PDL_CONTROL[2])))
-- \I0|PDL_CONTROL\(2) = DFFEAS(\I1|I5|un1_wr_dly1_x\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|PDL_CONTROL\(0),
	datac => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|un1_wr_dly1_x\,
	regout => \I0|PDL_CONTROL\(2));

-- Location: LC_X36_Y23_N3
\I0|F_CONTROL[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[18]) # ((\I0|PDL_CONTROL\(2) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(2) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(2),
	datac => \LAD[2]~2\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~2\,
	regout => \I0|F_CONTROL\(18));

-- Location: LC_X39_Y19_N2
\I1|I2|DIN_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_2\ = (\I1|I2|dir_i199_x\ & ((\I0|D_CONTROL\(0) $ (\D[3]~3\)))) # (!\I1|I2|dir_i199_x\ & (\D[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~2\,
	datab => \I1|I2|dir_i199_x\,
	datac => \I0|D_CONTROL\(0),
	datad => \D[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_2\);

-- Location: LC_X39_Y21_N5
\I1|I4|DIN_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_2\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ (((\F[3]~3\))))) # (!\I1|I4|dir_i199_x\ & (((\F[2]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \I1|I4|dir_i199_x\,
	datac => \F[2]~2\,
	datad => \F[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_2\);

-- Location: LC_X39_Y19_N1
\I0|Selector13~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & ((\I1|I4|DIN_2\))) # (!\I1|I1|REG_ADDR_x_4\ & (\I1|I2|DIN_2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_2\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I4|DIN_2\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~1_combout\);

-- Location: LC_X35_Y19_N6
\I0|C~2\ : cyclone_lcell
-- Equation(s):
-- \I0|C~2_combout\ = (\I1|I3|DIN_2\ & (((\I1|I3|DIN_1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|DIN_2\,
	datac => \I1|I3|DIN_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~2_combout\);

-- Location: LC_X35_Y19_N7
\I0|C_STATUS[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(2) = ((\I0|MODE\(4) & (!\I1|I3|DIN_2\)) # (!\I0|MODE\(4) & ((!\I0|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "505f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|DIN_2\,
	datac => \I0|MODE\(4),
	datad => \I0|C~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(2));

-- Location: LC_X35_Y19_N8
\I0|Selector13~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~0_combout\ = ((\I0|Selector15~0_combout\ & ((\I0|C_STATUS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|Selector15~0_combout\,
	datad => \I0|C_STATUS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~0_combout\);

-- Location: LC_X35_Y19_N3
\I0|Selector13~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~4_combout\ = (\I0|Selector13~3\) # ((\I0|Selector13~2\) # ((\I0|Selector13~1_combout\) # (\I0|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector13~3\,
	datab => \I0|Selector13~2\,
	datac => \I0|Selector13~1_combout\,
	datad => \I0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~4_combout\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cyclone_io
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

-- Location: LC_X33_Y17_N6
\I0|D_CONTROL[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~6\ = (\B~combout\(18) & ((\I0|Equal12~0_combout\) # ((C1_D_CONTROL[2] & \I0|Equal16~0_combout\)))) # (!\B~combout\(18) & (((C1_D_CONTROL[2] & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(18),
	datab => \I0|Equal12~0_combout\,
	datac => \LAD[2]~2\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~6\,
	regout => \I0|D_CONTROL\(2));

-- Location: LC_X34_Y22_N1
\I0|E_CONTROL[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(2) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(2));

-- Location: LC_X35_Y19_N4
\I0|D_CONTROL[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~5\ = (\I0|E_CONTROL\(2) & ((\I0|Equal20~0_combout\) # ((\I0|Equal17~3_combout\ & C1_D_CONTROL[18])))) # (!\I0|E_CONTROL\(2) & (\I0|Equal17~3_combout\ & (C1_D_CONTROL[18])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_CONTROL\(2),
	datab => \I0|Equal17~3_combout\,
	datac => \LAD[2]~2\,
	datad => \I0|Equal20~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~5\,
	regout => \I0|D_CONTROL\(18));

-- Location: LC_X36_Y21_N8
\I1|I4|DIN_18_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_18\ = (\F[18]~18\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[18]~18\,
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_18\);

-- Location: LC_X36_Y21_N9
\I0|Selector13~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~7_combout\ = (\I0|Equal27~3_combout\ & ((\I1|I4|DIN_18\) # ((\IDF~combout\(2) & \I0|Equal33~0_combout\)))) # (!\I0|Equal27~3_combout\ & (((\IDF~combout\(2) & \I0|Equal33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal27~3_combout\,
	datab => \I1|I4|DIN_18\,
	datac => \IDF~combout\(2),
	datad => \I0|Equal33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~7_combout\);

-- Location: LC_X38_Y17_N0
\I1|I3|DIN_18_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_18\ = (\E[18]~18\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \E[18]~18\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_18\);

-- Location: LC_X38_Y17_N9
\I0|Selector13~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~8_combout\ = (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_18\) # ((\IDD~combout\(2) & \I0|Equal31~0_combout\)))) # (!\I0|Equal23~0_combout\ & (\IDD~combout\(2) & (\I0|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal23~0_combout\,
	datab => \IDD~combout\(2),
	datac => \I0|Equal31~0_combout\,
	datad => \I1|I3|DIN_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~8_combout\);

-- Location: LC_X35_Y19_N2
\I0|Selector13~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~9_combout\ = (\I0|Selector13~6\) # ((\I0|Selector13~5\) # ((\I0|Selector13~7_combout\) # (\I0|Selector13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector13~6\,
	datab => \I0|Selector13~5\,
	datac => \I0|Selector13~7_combout\,
	datad => \I0|Selector13~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~9_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cyclone_io
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

-- Location: LC_X43_Y22_N1
\I1|I2|DIN_18_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_18\ = (\D[18]~18\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \IDD~combout\(2),
	datac => \D[18]~18\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_18\);

-- Location: LC_X38_Y22_N2
\I0|Selector13~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~11_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(2)) # ((\I1|I2|DIN_18\ & \I0|Equal19~0_combout\)))) # (!\I0|Equal9~5_combout\ & (((\I1|I2|DIN_18\ & \I0|Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \A~combout\(2),
	datac => \I1|I2|DIN_18\,
	datad => \I0|Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~11_combout\);

-- Location: LC_X36_Y17_N0
\I0|SCRATCH[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~12\ = (\IDE~combout\(2) & ((\I0|Equal32~0_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[2])))) # (!\IDE~combout\(2) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \IDE~combout\(2),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[2]~2\,
	datad => \I0|Equal32~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~12\,
	regout => \I0|SCRATCH\(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cyclone_io
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

-- Location: LC_X37_Y19_N9
\I0|Selector13~13\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~13_combout\ = (\A~combout\(18) & ((\I0|Equal10~1_combout\) # ((\I0|Equal30~1_combout\ & \DDLY[2]~2\)))) # (!\A~combout\(18) & (\I0|Equal30~1_combout\ & ((\DDLY[2]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \I0|Equal30~1_combout\,
	datac => \I0|Equal10~1_combout\,
	datad => \DDLY[2]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~13_combout\);

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N9
\I0|Selector13~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~10_combout\ = (\B~combout\(2) & ((\I0|Equal11~3_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_2\)))) # (!\B~combout\(2) & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal11~3_combout\,
	datad => \I1|I3|DIN_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~10_combout\);

-- Location: LC_X35_Y19_N5
\I0|Selector13~14\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector13~14_combout\ = (\I0|Selector13~11_combout\) # ((\I0|Selector13~12\) # ((\I0|Selector13~13_combout\) # (\I0|Selector13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector13~11_combout\,
	datab => \I0|Selector13~12\,
	datac => \I0|Selector13~13_combout\,
	datad => \I0|Selector13~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector13~14_combout\);

-- Location: LC_X35_Y19_N9
\I0|REG_DOUT[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(2) = DFFEAS(((\I0|Selector13~4_combout\) # ((\I0|Selector13~9_combout\) # (\I0|Selector13~14_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|Selector13~4_combout\,
	datac => \I0|Selector13~9_combout\,
	datad => \I0|Selector13~14_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(2));

-- Location: LC_X39_Y23_N4
\I1|I1|LAD_OUT_x_2_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_2\ = (\I0|REG_DOUT\(2) & (((\nADS~combout\ & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|REG_DOUT\(2),
	datac => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_2\);

-- Location: LC_X39_Y19_N5
\I1|I4|DIN_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_3\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ ((\F[19]~19\)))) # (!\I1|I4|dir_i199_x\ & (((\F[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \I1|I4|dir_i199_x\,
	datac => \F[19]~19\,
	datad => \F[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_3\);

-- Location: LC_X39_Y19_N8
\I1|I2|DIN_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_3\ = (\I1|I2|dir_i199_x\ & (\I0|D_CONTROL\(0) $ ((\D[19]~19\)))) # (!\I1|I2|dir_i199_x\ & (((\D[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|dir_i199_x\,
	datab => \I0|D_CONTROL\(0),
	datac => \D[19]~19\,
	datad => \D[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_3\);

-- Location: LC_X39_Y19_N3
\I0|Selector12~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_3\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I1|I4|DIN_3\,
	datac => \I1|I2|DIN_3\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~1_combout\);

-- Location: LC_X40_Y19_N5
\I0|F_CONTROL[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(3) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(3));

-- Location: LC_X39_Y18_N8
\I0|E_CONTROL[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~3\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(3)) # ((C1_E_CONTROL[19] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[19] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(3),
	datac => \LAD[3]~3\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~3\,
	regout => \I0|E_CONTROL\(19));

-- Location: LC_X37_Y23_N4
\I0|PDL_CONTROL[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(3) = DFFEAS((((\LAD[3]~3\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(3));

-- Location: LC_X36_Y23_N4
\I0|F_CONTROL[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[19]) # ((\I0|PDL_CONTROL\(3) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(3) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(3),
	datac => \LAD[3]~3\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~2\,
	regout => \I0|F_CONTROL\(19));

-- Location: LC_X35_Y20_N1
\I0|C~3\ : cyclone_lcell
-- Equation(s):
-- \I0|C~3_combout\ = (((\I1|I3|DIN_0\ & \I1|I3|DIN_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I3|DIN_0\,
	datad => \I1|I3|DIN_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C~3_combout\);

-- Location: LC_X35_Y20_N2
\I0|C_STATUS[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(3) = ((\I0|MODE\(4) & (!\I1|I3|DIN_3\)) # (!\I0|MODE\(4) & ((!\I0|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "303f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I3|DIN_3\,
	datac => \I0|MODE\(4),
	datad => \I0|C~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(3));

-- Location: LC_X35_Y20_N8
\I0|Selector12~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~0_combout\ = (((\I0|C_STATUS\(3) & \I0|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|C_STATUS\(3),
	datad => \I0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~0_combout\);

-- Location: LC_X35_Y20_N9
\I0|Selector12~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~4_combout\ = (\I0|Selector12~1_combout\) # ((\I0|Selector12~3\) # ((\I0|Selector12~2\) # (\I0|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector12~1_combout\,
	datab => \I0|Selector12~3\,
	datac => \I0|Selector12~2\,
	datad => \I0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~4_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N8
\I0|SCRATCH[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(3) = DFFEAS((((!\LAD[3]~3\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(3));

-- Location: LC_X34_Y24_N3
\I0|Selector12~12\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~12_combout\ = (\A~combout\(19) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & !\I0|SCRATCH\(3))))) # (!\A~combout\(19) & (\I0|Equal15~4_combout\ & (!\I0|SCRATCH\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \I0|Equal15~4_combout\,
	datac => \I0|SCRATCH\(3),
	datad => \I0|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~12_combout\);

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N4
\I1|I4|DIN_19_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_19\ = (\F[19]~19\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[19]~19\,
	datac => \IDF~combout\(2),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_19\);

-- Location: LC_X35_Y18_N6
\I0|Selector12~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~7_combout\ = (\B~combout\(3) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_19\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(3) & (((\I1|I4|DIN_19\ & \I0|Equal27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \I0|Equal11~3_combout\,
	datac => \I1|I4|DIN_19\,
	datad => \I0|Equal27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~7_combout\);

-- Location: LC_X35_Y18_N5
\I0|E_CONTROL[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(3) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(3));

-- Location: LC_X35_Y18_N0
\I0|D_CONTROL[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~5\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[19]) # ((\I0|Equal20~0_combout\ & \I0|E_CONTROL\(3))))) # (!\I0|Equal17~3_combout\ & (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[3]~3\,
	datad => \I0|E_CONTROL\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~5\,
	regout => \I0|D_CONTROL\(19));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N7
\I0|D_CONTROL[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~6\ = (\B~combout\(19) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[3])))) # (!\B~combout\(19) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(19),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[3]~3\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~6\,
	regout => \I0|D_CONTROL\(3));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N4
\I1|I3|DIN_19_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_19\ = (\E[19]~19\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[19]~19\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_19\);

-- Location: LC_X35_Y18_N2
\I0|Selector12~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~8_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(3)) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_19\)))) # (!\I0|Equal9~5_combout\ & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \I0|Equal23~0_combout\,
	datac => \A~combout\(3),
	datad => \I1|I3|DIN_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~8_combout\);

-- Location: LC_X35_Y18_N3
\I0|Selector12~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~9_combout\ = (\I0|Selector12~7_combout\) # ((\I0|Selector12~5\) # ((\I0|Selector12~6\) # (\I0|Selector12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector12~7_combout\,
	datab => \I0|Selector12~5\,
	datac => \I0|Selector12~6\,
	datad => \I0|Selector12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~9_combout\);

-- Location: LC_X39_Y19_N6
\I1|I2|DIN_19_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_19\ = (\D[19]~19\ & ((\IDD~combout\(2)) # ((!\IDD~combout\(0)) # (!\IDD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(2),
	datab => \IDD~combout\(1),
	datac => \D[19]~19\,
	datad => \IDD~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_19\);

-- Location: LC_X37_Y19_N3
\I0|Selector12~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~10_combout\ = (\DDLY[3]~3\ & ((\I0|Equal30~1_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_3\)))) # (!\DDLY[3]~3\ & (((\I0|Equal22~0_combout\ & \I1|I3|DIN_3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DDLY[3]~3\,
	datab => \I0|Equal30~1_combout\,
	datac => \I0|Equal22~0_combout\,
	datad => \I1|I3|DIN_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~10_combout\);

-- Location: LC_X35_Y20_N6
\I0|Selector12~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector12~11_combout\ = ((\I0|Selector12~10_combout\) # ((\I1|I2|DIN_19\ & \I0|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_19\,
	datac => \I0|Equal19~0_combout\,
	datad => \I0|Selector12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector12~11_combout\);

-- Location: LC_X35_Y20_N7
\I0|REG_DOUT[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(3) = DFFEAS((\I0|Selector12~4_combout\) # ((\I0|Selector12~12_combout\) # ((\I0|Selector12~9_combout\) # (\I0|Selector12~11_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector12~4_combout\,
	datab => \I0|Selector12~12_combout\,
	datac => \I0|Selector12~9_combout\,
	datad => \I0|Selector12~11_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(3));

-- Location: LC_X39_Y23_N8
\I1|I1|LAD_OUT_x_3_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_3\ = ((\I0|REG_DOUT\(3) & (\nADS~combout\ & \I1|I1|RDEN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|REG_DOUT\(3),
	datac => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_3\);

-- Location: LC_X24_Y17_N2
\I0|Equal10~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal10~0_combout\ = ((\I1|I1|REG_ADDR_x_1\ & (!\I1|I1|REG_ADDR_x_6\ & \I0|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I1|REG_ADDR_x_1\,
	datac => \I1|I1|REG_ADDR_x_6\,
	datad => \I0|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal10~0_combout\);

-- Location: LC_X24_Y17_N3
\I0|MODE[4]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|MODE[4]~0_combout\ = (\I0|Equal10~0_combout\ & (\I1|I1|REG_ADDR_x_2\ & (\I0|GATEWIDTH[15]~2_combout\ & \I1|I1|REG_ADDR_x_3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal10~0_combout\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|GATEWIDTH[15]~2_combout\,
	datad => \I1|I1|REG_ADDR_x_3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|MODE[4]~0_combout\);

-- Location: LC_X34_Y24_N7
\I0|SCRATCH[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(4) = DFFEAS((((!\LAD[4]~4\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N2
\I0|Selector11~12\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~12_combout\ = (\I0|SCRATCH\(4) & (\A~combout\(20) & ((\I0|Equal10~1_combout\)))) # (!\I0|SCRATCH\(4) & ((\I0|Equal15~4_combout\) # ((\A~combout\(20) & \I0|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|SCRATCH\(4),
	datab => \A~combout\(20),
	datac => \I0|Equal15~4_combout\,
	datad => \I0|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~12_combout\);

-- Location: LC_X40_Y19_N1
\I0|F_CONTROL[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(4) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(4));

-- Location: LC_X39_Y18_N1
\I0|E_CONTROL[20]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~3\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(4)) # ((C1_E_CONTROL[20] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[20] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(4),
	datac => \LAD[4]~4\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~3\,
	regout => \I0|E_CONTROL\(20));

-- Location: LC_X40_Y21_N8
\I1|I4|DIN_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_4\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ (((\F[14]~14\))))) # (!\I1|I4|dir_i199_x\ & (((\F[4]~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \F[4]~4\,
	datac => \F[14]~14\,
	datad => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_4\);

-- Location: LC_X39_Y19_N7
\I1|I2|DIN_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_4\ = (\I1|I2|dir_i199_x\ & ((\D[14]~14\ $ (\I0|D_CONTROL\(0))))) # (!\I1|I2|dir_i199_x\ & (\D[4]~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~4\,
	datab => \D[14]~14\,
	datac => \I0|D_CONTROL\(0),
	datad => \I1|I2|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_4\);

-- Location: LC_X39_Y19_N0
\I0|Selector11~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_4\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_4\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I2|DIN_4\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~1_combout\);

-- Location: LC_X37_Y23_N5
\I0|PDL_CONTROL[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(4) = DFFEAS((((\LAD[4]~4\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(4));

-- Location: LC_X36_Y23_N7
\I0|F_CONTROL[20]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[20]) # ((\I0|PDL_CONTROL\(4) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(4) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(4),
	datac => \LAD[4]~4\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~2\,
	regout => \I0|F_CONTROL\(20));

-- Location: LC_X37_Y20_N2
\I0|C_STATUS[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(4) = (\I0|MODE\(4) & (((!\I0|C~0_combout\)))) # (!\I0|MODE\(4) & (((!\I0|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(4),
	datac => \I0|C~0_combout\,
	datad => \I0|C~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(4));

-- Location: LC_X38_Y20_N3
\I0|Selector11~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~0_combout\ = (((\I0|Selector15~0_combout\ & \I0|C_STATUS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|Selector15~0_combout\,
	datad => \I0|C_STATUS\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~0_combout\);

-- Location: LC_X38_Y20_N8
\I0|Selector11~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~4_combout\ = (\I0|Selector11~3\) # ((\I0|Selector11~1_combout\) # ((\I0|Selector11~2\) # (\I0|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector11~3\,
	datab => \I0|Selector11~1_combout\,
	datac => \I0|Selector11~2\,
	datad => \I0|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~4_combout\);

-- Location: LC_X34_Y22_N7
\I0|E_CONTROL[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(4) = DFFEAS((((\LAD[4]~4\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(4));

-- Location: LC_X38_Y20_N6
\I0|D_CONTROL[20]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~5\ = (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(4)) # ((C1_D_CONTROL[20] & \I0|Equal17~3_combout\)))) # (!\I0|Equal20~0_combout\ & (((C1_D_CONTROL[20] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal20~0_combout\,
	datab => \I0|E_CONTROL\(4),
	datac => \LAD[4]~4\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~5\,
	regout => \I0|D_CONTROL\(20));

-- Location: LC_X34_Y18_N4
\I1|I4|DIN_20_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_20\ = (\F[20]~20\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[20]~20\,
	datab => \IDF~combout\(1),
	datac => \IDF~combout\(0),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_20\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cyclone_io
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

-- Location: LC_X35_Y18_N4
\I0|Selector11~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~7_combout\ = (\I1|I4|DIN_20\ & ((\I0|Equal27~3_combout\) # ((\I0|Equal11~3_combout\ & \B~combout\(4))))) # (!\I1|I4|DIN_20\ & (\I0|Equal11~3_combout\ & (\B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_20\,
	datab => \I0|Equal11~3_combout\,
	datac => \B~combout\(4),
	datad => \I0|Equal27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~7_combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N1
\I0|D_CONTROL[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~6\ = (\B~combout\(20) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[4])))) # (!\B~combout\(20) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(20),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[4]~4\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~6\,
	regout => \I0|D_CONTROL\(4));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cyclone_io
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

-- Location: LC_X38_Y19_N1
\I1|I3|DIN_20_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_20\ = (\E[20]~20\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \E[20]~20\,
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_20\);

-- Location: LC_X38_Y19_N2
\I0|Selector11~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~8_combout\ = (\A~combout\(4) & ((\I0|Equal9~5_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_20\)))) # (!\A~combout\(4) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~8_combout\);

-- Location: LC_X38_Y20_N2
\I0|Selector11~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~9_combout\ = (\I0|Selector11~5\) # ((\I0|Selector11~7_combout\) # ((\I0|Selector11~6\) # (\I0|Selector11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector11~5\,
	datab => \I0|Selector11~7_combout\,
	datac => \I0|Selector11~6\,
	datad => \I0|Selector11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~9_combout\);

-- Location: LC_X43_Y22_N7
\I1|I2|DIN_20_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_20\ = (\D[20]~20\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(2),
	datac => \IDD~combout\(0),
	datad => \D[20]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_20\);

-- Location: LC_X37_Y19_N6
\I0|Selector11~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~10_combout\ = (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_4\) # ((\DDLY[4]~4\ & \I0|Equal30~1_combout\)))) # (!\I0|Equal22~0_combout\ & (\DDLY[4]~4\ & (\I0|Equal30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal22~0_combout\,
	datab => \DDLY[4]~4\,
	datac => \I0|Equal30~1_combout\,
	datad => \I1|I3|DIN_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~10_combout\);

-- Location: LC_X37_Y19_N7
\I0|Selector11~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector11~11_combout\ = ((\I0|Selector11~10_combout\) # ((\I0|Equal19~0_combout\ & \I1|I2|DIN_20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|Equal19~0_combout\,
	datac => \I1|I2|DIN_20\,
	datad => \I0|Selector11~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector11~11_combout\);

-- Location: LC_X38_Y20_N9
\I0|REG_DOUT[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(4) = DFFEAS((\I0|Selector11~12_combout\) # ((\I0|Selector11~4_combout\) # ((\I0|Selector11~9_combout\) # (\I0|Selector11~11_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector11~12_combout\,
	datab => \I0|Selector11~4_combout\,
	datac => \I0|Selector11~9_combout\,
	datad => \I0|Selector11~11_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(4));

-- Location: LC_X37_Y24_N6
\I1|I1|LAD_OUT_x_4_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_4\ = (\nADS~combout\ & (\I0|REG_DOUT\(4) & ((\I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datab => \I0|REG_DOUT\(4),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_4\);

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N2
\I0|D_CONTROL[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~6\ = (\B~combout\(21) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[5])))) # (!\B~combout\(21) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(21),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[5]~5\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~6\,
	regout => \I0|D_CONTROL\(5));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N5
\I1|I4|DIN_21_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_21\ = (\F[21]~21\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[21]~21\,
	datac => \IDF~combout\(2),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_21\);

-- Location: LC_X35_Y16_N6
\I0|Selector10~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~7_combout\ = (\B~combout\(5) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_21\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(5) & (\I1|I4|DIN_21\ & ((\I0|Equal27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \I1|I4|DIN_21\,
	datac => \I0|Equal11~3_combout\,
	datad => \I0|Equal27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~7_combout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cyclone_io
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

-- Location: LC_X38_Y19_N8
\I1|I3|DIN_21_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_21\ = (\E[21]~21\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \IDE~combout\(0),
	datad => \E[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_21\);

-- Location: LC_X38_Y19_N9
\I0|Selector10~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~8_combout\ = (\A~combout\(5) & ((\I0|Equal9~5_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_21\)))) # (!\A~combout\(5) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~8_combout\);

-- Location: LC_X34_Y22_N5
\I0|E_CONTROL[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(5) = DFFEAS((((\LAD[5]~5\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(5));

-- Location: LC_X35_Y21_N0
\I0|D_CONTROL[21]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~5\ = (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(5)) # ((\I0|Equal17~3_combout\ & C1_D_CONTROL[21])))) # (!\I0|Equal20~0_combout\ & (\I0|Equal17~3_combout\ & (C1_D_CONTROL[21])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal20~0_combout\,
	datab => \I0|Equal17~3_combout\,
	datac => \LAD[5]~5\,
	datad => \I0|E_CONTROL\(5),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~5\,
	regout => \I0|D_CONTROL\(21));

-- Location: LC_X35_Y21_N2
\I0|Selector10~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~9_combout\ = (\I0|Selector10~6\) # ((\I0|Selector10~7_combout\) # ((\I0|Selector10~8_combout\) # (\I0|Selector10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector10~6\,
	datab => \I0|Selector10~7_combout\,
	datac => \I0|Selector10~8_combout\,
	datad => \I0|Selector10~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~9_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N5
\I0|SCRATCH[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~12\ = (\A~combout\(21) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[5])))) # (!\A~combout\(21) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(21),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[5]~5\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~12\,
	regout => \I0|SCRATCH\(5));

-- Location: LC_X39_Y21_N2
\I1|I4|DIN_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_5\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ ((\F[30]~30\)))) # (!\I1|I4|dir_i199_x\ & (((\F[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \F[30]~30\,
	datac => \F[5]~5\,
	datad => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_5\);

-- Location: LC_X39_Y21_N0
\I1|I2|DIN_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_5\ = (\I1|I2|dir_i199_x\ & (\I0|D_CONTROL\(0) $ ((\D[30]~30\)))) # (!\I1|I2|dir_i199_x\ & (((\D[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|dir_i199_x\,
	datab => \I0|D_CONTROL\(0),
	datac => \D[30]~30\,
	datad => \D[5]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_5\);

-- Location: LC_X39_Y21_N7
\I0|Selector10~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_5\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_5\,
	datab => \I1|I2|DIN_5\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~1_combout\);

-- Location: LC_X37_Y23_N3
\I0|PDL_CONTROL[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(5) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(5));

-- Location: LC_X36_Y23_N1
\I0|F_CONTROL[21]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[21]) # ((\I0|Equal29~2_combout\ & \I0|PDL_CONTROL\(5))))) # (!\I0|Equal25~0_combout\ & (\I0|Equal29~2_combout\ & ((\I0|PDL_CONTROL\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|Equal29~2_combout\,
	datac => \LAD[5]~5\,
	datad => \I0|PDL_CONTROL\(5),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~2\,
	regout => \I0|F_CONTROL\(21));

-- Location: LC_X40_Y19_N6
\I0|F_CONTROL[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(5) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(5));

-- Location: LC_X39_Y18_N9
\I0|E_CONTROL[21]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~3\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(5)) # ((C1_E_CONTROL[21] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[21] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(5),
	datac => \LAD[5]~5\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~3\,
	regout => \I0|E_CONTROL\(21));

-- Location: LC_X36_Y20_N2
\I0|C_STATUS[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_STATUS\(5) = ((\I0|MODE\(4) & ((!\I0|C~6_combout\))) # (!\I0|MODE\(4) & (!\I0|C~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|MODE\(4),
	datac => \I0|C~5_combout\,
	datad => \I0|C~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_STATUS\(5));

-- Location: LC_X36_Y20_N4
\I0|Selector10~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~0_combout\ = ((\I0|Selector15~0_combout\ & (\I0|C_STATUS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|Selector15~0_combout\,
	datac => \I0|C_STATUS\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~0_combout\);

-- Location: LC_X35_Y21_N9
\I0|Selector10~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~4_combout\ = (\I0|Selector10~1_combout\) # ((\I0|Selector10~2\) # ((\I0|Selector10~3\) # (\I0|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector10~1_combout\,
	datab => \I0|Selector10~2\,
	datac => \I0|Selector10~3\,
	datad => \I0|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~4_combout\);

-- Location: LC_X43_Y22_N8
\I1|I2|DIN_21_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_21\ = (\D[21]~21\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \IDD~combout\(2),
	datac => \D[21]~21\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_21\);

-- Location: LC_X35_Y21_N6
\I0|Selector10~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~10_combout\ = (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_5\) # ((\I0|Equal30~1_combout\ & \DDLY[5]~5\)))) # (!\I0|Equal22~0_combout\ & (\I0|Equal30~1_combout\ & (\DDLY[5]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal22~0_combout\,
	datab => \I0|Equal30~1_combout\,
	datac => \DDLY[5]~5\,
	datad => \I1|I3|DIN_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~10_combout\);

-- Location: LC_X35_Y21_N7
\I0|Selector10~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector10~11_combout\ = ((\I0|Selector10~10_combout\) # ((\I0|Equal19~0_combout\ & \I1|I2|DIN_21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal19~0_combout\,
	datac => \I1|I2|DIN_21\,
	datad => \I0|Selector10~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector10~11_combout\);

-- Location: LC_X35_Y21_N8
\I0|REG_DOUT[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(5) = DFFEAS((\I0|Selector10~9_combout\) # ((\I0|Selector10~12\) # ((\I0|Selector10~4_combout\) # (\I0|Selector10~11_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector10~9_combout\,
	datab => \I0|Selector10~12\,
	datac => \I0|Selector10~4_combout\,
	datad => \I0|Selector10~11_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(5));

-- Location: LC_X37_Y24_N8
\I1|I1|LAD_OUT_x_5_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_5\ = (\nADS~combout\ & (((\I0|REG_DOUT\(5) & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datac => \I0|REG_DOUT\(5),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_5\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cyclone_io
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

-- Location: LC_X34_Y23_N8
\I0|SCRATCH[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(6) = DFFEAS((((!\LAD[6]~6\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(6));

-- Location: LC_X34_Y23_N1
\I0|Selector9~12\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~12_combout\ = (\A~combout\(22) & ((\I0|Equal10~1_combout\) # ((!\I0|SCRATCH\(6) & \I0|Equal15~4_combout\)))) # (!\A~combout\(22) & (!\I0|SCRATCH\(6) & ((\I0|Equal15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \I0|SCRATCH\(6),
	datac => \I0|Equal10~1_combout\,
	datad => \I0|Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~12_combout\);

-- Location: LC_X34_Y22_N4
\I0|E_CONTROL[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(6) = DFFEAS((((\LAD[6]~6\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(6));

-- Location: LC_X38_Y21_N9
\I0|D_CONTROL[22]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~5\ = (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(6)) # ((\I0|Equal17~3_combout\ & C1_D_CONTROL[22])))) # (!\I0|Equal20~0_combout\ & (\I0|Equal17~3_combout\ & (C1_D_CONTROL[22])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal20~0_combout\,
	datab => \I0|Equal17~3_combout\,
	datac => \LAD[6]~6\,
	datad => \I0|E_CONTROL\(6),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~5\,
	regout => \I0|D_CONTROL\(22));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N6
\I0|D_CONTROL[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~6\ = (\B~combout\(22) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[6])))) # (!\B~combout\(22) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[6])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(22),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[6]~6\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~6\,
	regout => \I0|D_CONTROL\(6));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cyclone_io
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

-- Location: LC_X35_Y16_N8
\I1|I4|DIN_22_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_22\ = (\F[22]~22\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \IDF~combout\(2),
	datac => \F[22]~22\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_22\);

-- Location: LC_X35_Y16_N3
\I0|Selector9~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~7_combout\ = (\B~combout\(6) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_22\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(6) & (\I1|I4|DIN_22\ & ((\I0|Equal27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \I1|I4|DIN_22\,
	datac => \I0|Equal11~3_combout\,
	datad => \I0|Equal27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~7_combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cyclone_io
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

-- Location: LC_X38_Y19_N3
\I1|I3|DIN_22_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_22\ = (\E[22]~22\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[22]~22\,
	datab => \IDE~combout\(1),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_22\);

-- Location: LC_X38_Y19_N4
\I0|Selector9~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~8_combout\ = (\A~combout\(6) & ((\I0|Equal9~5_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_22\)))) # (!\A~combout\(6) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~8_combout\);

-- Location: LC_X38_Y21_N0
\I0|Selector9~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~9_combout\ = (\I0|Selector9~5\) # ((\I0|Selector9~6\) # ((\I0|Selector9~7_combout\) # (\I0|Selector9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector9~5\,
	datab => \I0|Selector9~6\,
	datac => \I0|Selector9~7_combout\,
	datad => \I0|Selector9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~9_combout\);

-- Location: LC_X43_Y22_N2
\I1|I2|DIN_22_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_22\ = (\D[22]~22\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \IDD~combout\(2),
	datac => \D[22]~22\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_22\);

-- Location: LC_X37_Y18_N2
\I1|I3|DIN_6_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_6\ = (\I1|I3|dir_i199_x\ & ((\I0|E_CONTROL\(0) $ (\E[15]~15\)))) # (!\I1|I3|dir_i199_x\ & (\E[6]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[6]~6\,
	datab => \I0|E_CONTROL\(0),
	datac => \E[15]~15\,
	datad => \I1|I3|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_6\);

-- Location: LC_X38_Y21_N1
\I0|Selector9~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~10_combout\ = (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_6\) # ((\DDLY[6]~6\ & \I0|Equal30~1_combout\)))) # (!\I0|Equal22~0_combout\ & (\DDLY[6]~6\ & (\I0|Equal30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal22~0_combout\,
	datab => \DDLY[6]~6\,
	datac => \I0|Equal30~1_combout\,
	datad => \I1|I3|DIN_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~10_combout\);

-- Location: LC_X38_Y21_N2
\I0|Selector9~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~11_combout\ = ((\I0|Selector9~10_combout\) # ((\I1|I2|DIN_22\ & \I0|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I1|I2|DIN_22\,
	datac => \I0|Equal19~0_combout\,
	datad => \I0|Selector9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~11_combout\);

-- Location: LC_X37_Y23_N0
\I0|PDL_CONTROL[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(6) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(6));

-- Location: LC_X36_Y23_N5
\I0|F_CONTROL[22]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[22]) # ((\I0|PDL_CONTROL\(6) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(6) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(6),
	datac => \LAD[6]~6\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~2\,
	regout => \I0|F_CONTROL\(22));

-- Location: LC_X40_Y19_N8
\I0|F_CONTROL[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(6) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(6));

-- Location: LC_X39_Y18_N2
\I0|E_CONTROL[22]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~3\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(6)) # ((\I0|Equal21~0_combout\ & C1_E_CONTROL[22])))) # (!\I0|Equal24~0_combout\ & (\I0|Equal21~0_combout\ & (C1_E_CONTROL[22])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|Equal21~0_combout\,
	datac => \LAD[6]~6\,
	datad => \I0|F_CONTROL\(6),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~3\,
	regout => \I0|E_CONTROL\(22));

-- Location: LC_X40_Y21_N6
\I1|I2|DIN_6_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_6\ = (\I1|I2|dir_i199_x\ & (\D[15]~15\ $ ((\I0|D_CONTROL\(0))))) # (!\I1|I2|dir_i199_x\ & (((\D[6]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|dir_i199_x\,
	datab => \D[15]~15\,
	datac => \I0|D_CONTROL\(0),
	datad => \D[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_6\);

-- Location: LC_X40_Y21_N5
\I1|I4|DIN_6_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_6\ = (\I1|I4|dir_i199_x\ & (\I0|F_CONTROL\(0) $ ((\F[15]~15\)))) # (!\I1|I4|dir_i199_x\ & (((\F[6]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|F_CONTROL\(0),
	datab => \F[15]~15\,
	datac => \F[6]~6\,
	datad => \I1|I4|dir_i199_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_6\);

-- Location: LC_X40_Y21_N7
\I0|Selector9~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & ((\I1|I4|DIN_6\))) # (!\I1|I1|REG_ADDR_x_4\ & (\I1|I2|DIN_6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_6\,
	datab => \I0|Equal18~0_combout\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I1|I4|DIN_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~1_combout\);

-- Location: LC_X38_Y20_N5
\I0|Selector9~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~0_combout\ = (((\I0|Selector15~0_combout\ & !\I1|I3|DIN_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|Selector15~0_combout\,
	datad => \I1|I3|DIN_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~0_combout\);

-- Location: LC_X38_Y21_N4
\I0|Selector9~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector9~4_combout\ = (\I0|Selector9~2\) # ((\I0|Selector9~3\) # ((\I0|Selector9~1_combout\) # (\I0|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector9~2\,
	datab => \I0|Selector9~3\,
	datac => \I0|Selector9~1_combout\,
	datad => \I0|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector9~4_combout\);

-- Location: LC_X38_Y21_N5
\I0|REG_DOUT[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(6) = DFFEAS((\I0|Selector9~12_combout\) # ((\I0|Selector9~9_combout\) # ((\I0|Selector9~11_combout\) # (\I0|Selector9~4_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector9~12_combout\,
	datab => \I0|Selector9~9_combout\,
	datac => \I0|Selector9~11_combout\,
	datad => \I0|Selector9~4_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(6));

-- Location: LC_X37_Y24_N5
\I1|I1|LAD_OUT_x_6_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_6\ = (\nADS~combout\ & (\I0|REG_DOUT\(6) & ((\I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datab => \I0|REG_DOUT\(6),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_6\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cyclone_io
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

-- Location: LC_X34_Y17_N5
\I1|I4|DIN_23_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_23\ = (\F[23]~23\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[23]~23\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_23\);

-- Location: LC_X34_Y17_N1
\I0|Selector8~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~7_combout\ = (\B~combout\(7) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_23\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(7) & (\I1|I4|DIN_23\ & (\I0|Equal27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \I1|I4|DIN_23\,
	datac => \I0|Equal27~3_combout\,
	datad => \I0|Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~7_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N8
\I0|D_CONTROL[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~6\ = (\B~combout\(23) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[7])))) # (!\B~combout\(23) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(23),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[7]~7\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~6\,
	regout => \I0|D_CONTROL\(7));

-- Location: LC_X34_Y22_N0
\I0|E_CONTROL[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(7) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(7));

-- Location: LC_X37_Y22_N7
\I0|D_CONTROL[23]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~5\ = (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(7)) # ((C1_D_CONTROL[23] & \I0|Equal17~3_combout\)))) # (!\I0|Equal20~0_combout\ & (((C1_D_CONTROL[23] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal20~0_combout\,
	datab => \I0|E_CONTROL\(7),
	datac => \LAD[7]~7\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~5\,
	regout => \I0|D_CONTROL\(23));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cyclone_io
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

-- Location: LC_X38_Y19_N6
\I1|I3|DIN_23_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_23\ = (\E[23]~23\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \E[23]~23\,
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_23\);

-- Location: LC_X38_Y19_N0
\I0|Selector8~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~8_combout\ = (\A~combout\(7) & ((\I0|Equal9~5_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_23\)))) # (!\A~combout\(7) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~8_combout\);

-- Location: LC_X37_Y22_N9
\I0|Selector8~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~9_combout\ = (\I0|Selector8~7_combout\) # ((\I0|Selector8~6\) # ((\I0|Selector8~5\) # (\I0|Selector8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector8~7_combout\,
	datab => \I0|Selector8~6\,
	datac => \I0|Selector8~5\,
	datad => \I0|Selector8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~9_combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N9
\I0|SCRATCH[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~12\ = (\A~combout\(23) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[7])))) # (!\A~combout\(23) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(23),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[7]~7\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~12\,
	regout => \I0|SCRATCH\(7));

-- Location: LC_X43_Y22_N3
\I1|I2|DIN_23_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_23\ = (\D[23]~23\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(2),
	datac => \IDD~combout\(0),
	datad => \D[23]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_23\);

-- Location: LC_X37_Y18_N7
\I1|I3|DIN_7_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_7\ = (\I1|I3|dir_i199_x\ & ((\I0|E_CONTROL\(0) $ (\E[31]~31\)))) # (!\I1|I3|dir_i199_x\ & (\E[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[7]~7\,
	datab => \I1|I3|dir_i199_x\,
	datac => \I0|E_CONTROL\(0),
	datad => \E[31]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_7\);

-- Location: LC_X37_Y22_N1
\I0|Selector8~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~10_combout\ = (\DDLY[7]~7\ & ((\I0|Equal30~1_combout\) # ((\I1|I3|DIN_7\ & \I0|Equal22~0_combout\)))) # (!\DDLY[7]~7\ & (\I1|I3|DIN_7\ & (\I0|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DDLY[7]~7\,
	datab => \I1|I3|DIN_7\,
	datac => \I0|Equal22~0_combout\,
	datad => \I0|Equal30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~10_combout\);

-- Location: LC_X37_Y22_N2
\I0|Selector8~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~11_combout\ = ((\I0|Selector8~10_combout\) # ((\I0|Equal19~0_combout\ & \I1|I2|DIN_23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal19~0_combout\,
	datac => \I1|I2|DIN_23\,
	datad => \I0|Selector8~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~11_combout\);

-- Location: LC_X39_Y22_N3
\I0|F_CONTROL[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(7) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(7));

-- Location: LC_X39_Y22_N8
\I0|E_CONTROL[23]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~3\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[23]) # ((\I0|F_CONTROL\(7) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(7) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(7),
	datac => \LAD[7]~7\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~3\,
	regout => \I0|E_CONTROL\(23));

-- Location: LC_X36_Y24_N2
\I0|PDL_CONTROL[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(7) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(7));

-- Location: LC_X36_Y23_N8
\I0|F_CONTROL[23]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~2\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[23]) # ((\I0|PDL_CONTROL\(7) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(7) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(7),
	datac => \LAD[7]~7\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~2\,
	regout => \I0|F_CONTROL\(23));

-- Location: LC_X39_Y22_N5
\I0|Selector8~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~1_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_7\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_7\,
	datab => \I1|I2|DIN_7\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~1_combout\);

-- Location: LC_X36_Y18_N8
\I0|Selector8~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~0_combout\ = (\I0|Selector15~0_combout\ & (((!\I1|I3|DIN_5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector15~0_combout\,
	datad => \I1|I3|DIN_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~0_combout\);

-- Location: LC_X37_Y22_N3
\I0|Selector8~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector8~4_combout\ = (\I0|Selector8~3\) # ((\I0|Selector8~2\) # ((\I0|Selector8~1_combout\) # (\I0|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector8~3\,
	datab => \I0|Selector8~2\,
	datac => \I0|Selector8~1_combout\,
	datad => \I0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector8~4_combout\);

-- Location: LC_X37_Y22_N4
\I0|REG_DOUT[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(7) = DFFEAS((\I0|Selector8~9_combout\) # ((\I0|Selector8~12\) # ((\I0|Selector8~11_combout\) # (\I0|Selector8~4_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector8~9_combout\,
	datab => \I0|Selector8~12\,
	datac => \I0|Selector8~11_combout\,
	datad => \I0|Selector8~4_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(7));

-- Location: LC_X37_Y24_N2
\I1|I1|LAD_OUT_x_7_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_7\ = (\nADS~combout\ & (((\I0|REG_DOUT\(7) & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datac => \I0|REG_DOUT\(7),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_7\);

-- Location: LC_X41_Y22_N4
\I1|I2|DIN_24_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_24\ = (\D[24]~24\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[24]~24\,
	datab => \IDD~combout\(0),
	datac => \IDD~combout\(1),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_24\);

-- Location: LC_X41_Y22_N3
\I1|I3|DIN_8_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_8\ = (\E[8]~8\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \E[8]~8\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_8\);

-- Location: LC_X41_Y22_N5
\I0|Selector7~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~9_combout\ = (\I0|Equal19~0_combout\ & ((\I1|I2|DIN_24\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_8\)))) # (!\I0|Equal19~0_combout\ & (((\I0|Equal22~0_combout\ & \I1|I3|DIN_8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal19~0_combout\,
	datab => \I1|I2|DIN_24\,
	datac => \I0|Equal22~0_combout\,
	datad => \I1|I3|DIN_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~9_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N0
\I0|SCRATCH[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~10\ = (\A~combout\(24) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[8])))) # (!\A~combout\(24) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(24),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[8]~8\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~10\,
	regout => \I0|SCRATCH\(8));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N5
\I0|D_CONTROL[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~5\ = (\B~combout\(24) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[8])))) # (!\B~combout\(24) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(24),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[8]~8\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~5\,
	regout => \I0|D_CONTROL\(8));

-- Location: LC_X34_Y22_N8
\I0|E_CONTROL[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(8) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[8]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(8));

-- Location: LC_X36_Y22_N5
\I0|D_CONTROL[24]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~4\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[24]) # ((\I0|Equal20~0_combout\ & \I0|E_CONTROL\(8))))) # (!\I0|Equal17~3_combout\ & (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[8]~8\,
	datad => \I0|E_CONTROL\(8),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~4\,
	regout => \I0|D_CONTROL\(24));

-- Location: LC_X34_Y17_N9
\I1|I4|DIN_24_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_24\ = (\F[24]~24\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \IDF~combout\(1),
	datac => \F[24]~24\,
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_24\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cyclone_io
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

-- Location: LC_X34_Y17_N8
\I0|Selector7~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~6_combout\ = (\I1|I4|DIN_24\ & ((\I0|Equal27~3_combout\) # ((\B~combout\(8) & \I0|Equal11~3_combout\)))) # (!\I1|I4|DIN_24\ & (\B~combout\(8) & ((\I0|Equal11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_24\,
	datab => \B~combout\(8),
	datac => \I0|Equal27~3_combout\,
	datad => \I0|Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~6_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N0
\I1|I3|DIN_24_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_24\ = (\E[24]~24\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[24]~24\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_24\);

-- Location: LC_X36_Y22_N8
\I0|Selector7~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~7_combout\ = (\A~combout\(8) & ((\I0|Equal9~5_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_24\)))) # (!\A~combout\(8) & (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \I0|Equal23~0_combout\,
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~7_combout\);

-- Location: LC_X36_Y22_N9
\I0|Selector7~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~8_combout\ = (\I0|Selector7~5\) # ((\I0|Selector7~4\) # ((\I0|Selector7~6_combout\) # (\I0|Selector7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector7~5\,
	datab => \I0|Selector7~4\,
	datac => \I0|Selector7~6_combout\,
	datad => \I0|Selector7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~8_combout\);

-- Location: LC_X39_Y22_N0
\I0|F_CONTROL[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(8) = DFFEAS((((\LAD[8]~8\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(8));

-- Location: LC_X39_Y22_N9
\I0|E_CONTROL[24]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[24]) # ((\I0|F_CONTROL\(8) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(8) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(8),
	datac => \LAD[8]~8\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~2\,
	regout => \I0|E_CONTROL\(24));

-- Location: LC_X37_Y23_N9
\I0|PDL_CONTROL[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(8) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[8]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(8));

-- Location: LC_X37_Y23_N6
\I0|F_CONTROL[24]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~1\ = (\I0|PDL_CONTROL\(8) & ((\I0|Equal29~2_combout\) # ((C1_F_CONTROL[24] & \I0|Equal25~0_combout\)))) # (!\I0|PDL_CONTROL\(8) & (((C1_F_CONTROL[24] & \I0|Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|PDL_CONTROL\(8),
	datab => \I0|Equal29~2_combout\,
	datac => \LAD[8]~8\,
	datad => \I0|Equal25~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~1\,
	regout => \I0|F_CONTROL\(24));

-- Location: LC_X41_Y19_N1
\I1|I4|DIN_8_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_8\ = (\F[8]~8\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(1),
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \F[8]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_8\);

-- Location: LC_X41_Y19_N7
\I1|I2|DIN_8_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_8\ = (\D[8]~8\ & ((\IDD~combout\(2)) # ((!\IDD~combout\(1)) # (!\IDD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(2),
	datab => \IDD~combout\(0),
	datac => \D[8]~8\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_8\);

-- Location: LC_X41_Y19_N2
\I0|Selector7~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_8\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_8\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I2|DIN_8\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~0_combout\);

-- Location: LC_X36_Y22_N3
\I0|Selector7~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector7~3_combout\ = (\I0|Selector7~2\) # ((\I0|Selector7~1\) # ((\I0|Selector7~0_combout\) # (\I0|Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector7~2\,
	datab => \I0|Selector7~1\,
	datac => \I0|Selector7~0_combout\,
	datad => \I0|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector7~3_combout\);

-- Location: LC_X36_Y22_N4
\I0|REG_DOUT[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(8) = DFFEAS((\I0|Selector7~9_combout\) # ((\I0|Selector7~10\) # ((\I0|Selector7~8_combout\) # (\I0|Selector7~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector7~9_combout\,
	datab => \I0|Selector7~10\,
	datac => \I0|Selector7~8_combout\,
	datad => \I0|Selector7~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(8));

-- Location: LC_X36_Y22_N6
\I1|I1|LAD_OUT_x_8_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_8\ = (\nADS~combout\ & (\I0|REG_DOUT\(8) & (\I1|I1|RDEN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datab => \I0|REG_DOUT\(8),
	datac => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_8\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cyclone_io
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

-- Location: LC_X34_Y23_N5
\I0|SCRATCH[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(9) = DFFEAS((((!\LAD[9]~9\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(9));

-- Location: LC_X34_Y23_N6
\I0|Selector6~11\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~11_combout\ = (\A~combout\(25) & ((\I0|Equal10~1_combout\) # ((!\I0|SCRATCH\(9) & \I0|Equal15~4_combout\)))) # (!\A~combout\(25) & (!\I0|SCRATCH\(9) & ((\I0|Equal15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \I0|SCRATCH\(9),
	datac => \I0|Equal10~1_combout\,
	datad => \I0|Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~11_combout\);

-- Location: LC_X43_Y22_N4
\I1|I2|DIN_25_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_25\ = (\D[25]~25\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \IDD~combout\(2),
	datac => \D[25]~25\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_25\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N5
\I1|I3|DIN_9_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_9\ = (\E[9]~9\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[9]~9\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_9\);

-- Location: LC_X33_Y21_N4
\I0|Selector6~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~9_combout\ = (\A~combout\(9) & ((\I0|Equal9~5_combout\) # ((\I1|I3|DIN_9\ & \I0|Equal22~0_combout\)))) # (!\A~combout\(9) & (((\I1|I3|DIN_9\ & \I0|Equal22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \I0|Equal9~5_combout\,
	datac => \I1|I3|DIN_9\,
	datad => \I0|Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~9_combout\);

-- Location: LC_X33_Y21_N5
\I0|Selector6~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~10_combout\ = ((\I0|Selector6~9_combout\) # ((\I1|I2|DIN_25\ & \I0|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_25\,
	datac => \I0|Equal19~0_combout\,
	datad => \I0|Selector6~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~10_combout\);

-- Location: LC_X34_Y22_N2
\I0|E_CONTROL[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(9) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[9]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(9));

-- Location: LC_X33_Y21_N9
\I0|D_CONTROL[25]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~4\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[25]) # ((\I0|E_CONTROL\(9) & \I0|Equal20~0_combout\)))) # (!\I0|Equal17~3_combout\ & (\I0|E_CONTROL\(9) & ((\I0|Equal20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|E_CONTROL\(9),
	datac => \LAD[9]~9\,
	datad => \I0|Equal20~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~4\,
	regout => \I0|D_CONTROL\(25));

-- Location: LC_X33_Y18_N8
\I1|I4|DIN_25_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_25\ = (\F[25]~25\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \F[25]~25\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_25\);

-- Location: LC_X35_Y18_N9
\I0|Equal27~2\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal27~2_combout\ = (((\I1|I1|REG_ADDR_x_3\ & \I1|I1|REG_ADDR_x_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I1|I1|REG_ADDR_x_3\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal27~2_combout\);

-- Location: LC_X33_Y18_N7
\I0|Selector6~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~6_combout\ = (\I0|Equal16~1_combout\ & ((\I0|Equal27~2_combout\) # ((\I0|Equal27~3_combout\ & \I1|I4|DIN_25\)))) # (!\I0|Equal16~1_combout\ & (\I0|Equal27~3_combout\ & (\I1|I4|DIN_25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal16~1_combout\,
	datab => \I0|Equal27~3_combout\,
	datac => \I1|I4|DIN_25\,
	datad => \I0|Equal27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~6_combout\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N3
\I0|D_CONTROL[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~5\ = (\B~combout\(25) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[9])))) # (!\B~combout\(25) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[9])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(25),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[9]~9\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~5\,
	regout => \I0|D_CONTROL\(9));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cyclone_io
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

-- Location: LC_X38_Y19_N5
\I1|I3|DIN_25_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_25\ = (\E[25]~25\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[25]~25\,
	datab => \IDE~combout\(1),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_25\);

-- Location: LC_X38_Y19_N7
\I0|Selector6~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~7_combout\ = (\B~combout\(9) & ((\I0|Equal11~3_combout\) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_25\)))) # (!\B~combout\(9) & (((\I0|Equal23~0_combout\ & \I1|I3|DIN_25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \I0|Equal11~3_combout\,
	datac => \I0|Equal23~0_combout\,
	datad => \I1|I3|DIN_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~7_combout\);

-- Location: LC_X33_Y21_N2
\I0|Selector6~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~8_combout\ = (\I0|Selector6~4\) # ((\I0|Selector6~6_combout\) # ((\I0|Selector6~5\) # (\I0|Selector6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector6~4\,
	datab => \I0|Selector6~6_combout\,
	datac => \I0|Selector6~5\,
	datad => \I0|Selector6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~8_combout\);

-- Location: LC_X39_Y22_N6
\I0|F_CONTROL[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(9) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[9]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(9));

-- Location: LC_X39_Y22_N4
\I0|E_CONTROL[25]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~2\ = (\I0|F_CONTROL\(9) & ((\I0|Equal24~0_combout\) # ((C1_E_CONTROL[25] & \I0|Equal21~0_combout\)))) # (!\I0|F_CONTROL\(9) & (((C1_E_CONTROL[25] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|F_CONTROL\(9),
	datab => \I0|Equal24~0_combout\,
	datac => \LAD[9]~9\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~2\,
	regout => \I0|E_CONTROL\(25));

-- Location: LC_X37_Y23_N7
\I0|PDL_CONTROL[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(9) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[9]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(9));

-- Location: LC_X37_Y23_N8
\I0|F_CONTROL[25]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~1\ = (\I0|PDL_CONTROL\(9) & ((\I0|Equal29~2_combout\) # ((\I0|Equal25~0_combout\ & C1_F_CONTROL[25])))) # (!\I0|PDL_CONTROL\(9) & (\I0|Equal25~0_combout\ & (C1_F_CONTROL[25])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|PDL_CONTROL\(9),
	datab => \I0|Equal25~0_combout\,
	datac => \LAD[9]~9\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~1\,
	regout => \I0|F_CONTROL\(25));

-- Location: LC_X41_Y19_N6
\I1|I2|DIN_9_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_9\ = (\D[9]~9\ & ((\IDD~combout\(2)) # ((!\IDD~combout\(1)) # (!\IDD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(2),
	datab => \IDD~combout\(0),
	datac => \D[9]~9\,
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_9\);

-- Location: LC_X41_Y19_N5
\I1|I4|DIN_9_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_9\ = (\F[9]~9\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(1),
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \F[9]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_9\);

-- Location: LC_X41_Y19_N3
\I0|Selector6~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & ((\I1|I4|DIN_9\))) # (!\I1|I1|REG_ADDR_x_4\ & (\I1|I2|DIN_9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_9\,
	datab => \I0|Equal18~0_combout\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I1|I4|DIN_9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~0_combout\);

-- Location: LC_X33_Y21_N7
\I0|Selector6~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector6~3_combout\ = (\I0|Selector6~2\) # ((\I0|Selector6~1\) # ((\I0|Selector6~0_combout\) # (\I0|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector6~2\,
	datab => \I0|Selector6~1\,
	datac => \I0|Selector6~0_combout\,
	datad => \I0|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector6~3_combout\);

-- Location: LC_X33_Y21_N8
\I0|REG_DOUT[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(9) = DFFEAS((\I0|Selector6~11_combout\) # ((\I0|Selector6~10_combout\) # ((\I0|Selector6~8_combout\) # (\I0|Selector6~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector6~11_combout\,
	datab => \I0|Selector6~10_combout\,
	datac => \I0|Selector6~8_combout\,
	datad => \I0|Selector6~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(9));

-- Location: LC_X37_Y24_N4
\I1|I1|LAD_OUT_x_9_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_9\ = (\nADS~combout\ & (((\I0|REG_DOUT\(9) & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datac => \I0|REG_DOUT\(9),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_9\);

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N4
\I0|SCRATCH[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~10\ = (\A~combout\(26) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[10])))) # (!\A~combout\(26) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[10])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(26),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[10]~10\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~10\,
	regout => \I0|SCRATCH\(10));

-- Location: LC_X41_Y22_N7
\I1|I2|DIN_26_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_26\ = (\D[26]~26\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[26]~26\,
	datab => \IDD~combout\(0),
	datac => \IDD~combout\(1),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_26\);

-- Location: LC_X41_Y22_N8
\I1|I3|DIN_10_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_10\ = (\E[10]~10\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \IDE~combout\(1),
	datac => \E[10]~10\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_10\);

-- Location: LC_X41_Y22_N9
\I0|Selector5~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~9_combout\ = (\I1|I2|DIN_26\ & ((\I0|Equal19~0_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_10\)))) # (!\I1|I2|DIN_26\ & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_26\,
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal19~0_combout\,
	datad => \I1|I3|DIN_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~9_combout\);

-- Location: LC_X34_Y17_N2
\I1|I4|DIN_26_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_26\ = (\F[26]~26\ & (((\IDF~combout\(2)) # (!\IDF~combout\(0))) # (!\IDF~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[26]~26\,
	datab => \IDF~combout\(1),
	datac => \IDF~combout\(0),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_26\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cyclone_io
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

-- Location: LC_X34_Y17_N6
\I0|Selector5~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~6_combout\ = (\I1|I4|DIN_26\ & ((\I0|Equal27~3_combout\) # ((\I0|Equal11~3_combout\ & \B~combout\(10))))) # (!\I1|I4|DIN_26\ & (\I0|Equal11~3_combout\ & ((\B~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_26\,
	datab => \I0|Equal11~3_combout\,
	datac => \I0|Equal27~3_combout\,
	datad => \B~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~6_combout\);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cyclone_io
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

-- Location: LC_X32_Y19_N0
\I0|D_CONTROL[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~5\ = (\B~combout\(26) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[10])))) # (!\B~combout\(26) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[10])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(26),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[10]~10\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~5\,
	regout => \I0|D_CONTROL\(10));

-- Location: LC_X34_Y22_N3
\I0|E_CONTROL[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(10) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[10]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[10]~10\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(10));

-- Location: LC_X34_Y19_N1
\I0|D_CONTROL[26]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~4\ = (\I0|E_CONTROL\(10) & ((\I0|Equal20~0_combout\) # ((C1_D_CONTROL[26] & \I0|Equal17~3_combout\)))) # (!\I0|E_CONTROL\(10) & (((C1_D_CONTROL[26] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_CONTROL\(10),
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[10]~10\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~4\,
	regout => \I0|D_CONTROL\(26));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N3
\I1|I3|DIN_26_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_26\ = (\E[26]~26\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[26]~26\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_26\);

-- Location: LC_X34_Y19_N8
\I0|Selector5~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~7_combout\ = (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_26\) # ((\A~combout\(10) & \I0|Equal9~5_combout\)))) # (!\I0|Equal23~0_combout\ & (\A~combout\(10) & (\I0|Equal9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal23~0_combout\,
	datab => \A~combout\(10),
	datac => \I0|Equal9~5_combout\,
	datad => \I1|I3|DIN_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~7_combout\);

-- Location: LC_X34_Y19_N9
\I0|Selector5~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~8_combout\ = (\I0|Selector5~6_combout\) # ((\I0|Selector5~5\) # ((\I0|Selector5~4\) # (\I0|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector5~6_combout\,
	datab => \I0|Selector5~5\,
	datac => \I0|Selector5~4\,
	datad => \I0|Selector5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~8_combout\);

-- Location: LC_X35_Y23_N8
\I0|PDL_CONTROL[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(10) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[10]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[10]~10\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(10));

-- Location: LC_X35_Y23_N5
\I0|F_CONTROL[26]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~1\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[26]) # ((\I0|PDL_CONTROL\(10) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(10) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(10),
	datac => \LAD[10]~10\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~1\,
	regout => \I0|F_CONTROL\(26));

-- Location: LC_X38_Y18_N9
\I0|F_CONTROL[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(10) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[10]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[10]~10\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(10));

-- Location: LC_X38_Y18_N1
\I0|E_CONTROL[26]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~2\ = (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(10)) # ((C1_E_CONTROL[26] & \I0|Equal21~0_combout\)))) # (!\I0|Equal24~0_combout\ & (((C1_E_CONTROL[26] & \I0|Equal21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal24~0_combout\,
	datab => \I0|F_CONTROL\(10),
	datac => \LAD[10]~10\,
	datad => \I0|Equal21~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~2\,
	regout => \I0|E_CONTROL\(26));

-- Location: LC_X41_Y19_N0
\I1|I4|DIN_10_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_10\ = (\F[10]~10\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[10]~10\,
	datab => \IDF~combout\(0),
	datac => \IDF~combout\(2),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_10\);

-- Location: LC_X41_Y19_N9
\I1|I2|DIN_10_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_10\ = (\D[10]~10\ & ((\IDD~combout\(2)) # ((!\IDD~combout\(1)) # (!\IDD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(2),
	datab => \D[10]~10\,
	datac => \IDD~combout\(0),
	datad => \IDD~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_10\);

-- Location: LC_X41_Y19_N8
\I0|Selector5~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_10\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_10\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I2|DIN_10\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~0_combout\);

-- Location: LC_X34_Y19_N2
\I0|Selector5~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector5~3_combout\ = (\I0|Selector5~1\) # ((\I0|Selector5~2\) # ((\I0|Selector5~0_combout\) # (\I0|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector5~1\,
	datab => \I0|Selector5~2\,
	datac => \I0|Selector5~0_combout\,
	datad => \I0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector5~3_combout\);

-- Location: LC_X34_Y19_N3
\I0|REG_DOUT[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(10) = DFFEAS((\I0|Selector5~10\) # ((\I0|Selector5~9_combout\) # ((\I0|Selector5~8_combout\) # (\I0|Selector5~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector5~10\,
	datab => \I0|Selector5~9_combout\,
	datac => \I0|Selector5~8_combout\,
	datad => \I0|Selector5~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(10));

-- Location: LC_X34_Y19_N7
\I1|I1|LAD_OUT_x_10_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_10\ = ((\I0|REG_DOUT\(10) & (\nADS~combout\ & \I1|I1|RDEN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|REG_DOUT\(10),
	datac => \nADS~combout\,
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_10\);

-- Location: LC_X34_Y23_N2
\I0|SCRATCH[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(11) = DFFEAS((((!\LAD[11]~11\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(11));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cyclone_io
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

-- Location: LC_X34_Y23_N4
\I0|Selector4~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~10_combout\ = (\I0|SCRATCH\(11) & (\A~combout\(27) & (\I0|Equal10~1_combout\))) # (!\I0|SCRATCH\(11) & ((\I0|Equal15~4_combout\) # ((\A~combout\(27) & \I0|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|SCRATCH\(11),
	datab => \A~combout\(27),
	datac => \I0|Equal10~1_combout\,
	datad => \I0|Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~10_combout\);

-- Location: LC_X41_Y22_N2
\I1|I2|DIN_27_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_27\ = (\D[27]~27\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \D[27]~27\,
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_27\);

-- Location: LC_X41_Y22_N0
\I1|I3|DIN_11_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_11\ = (\E[11]~11\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \E[11]~11\,
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_11\);

-- Location: LC_X41_Y22_N1
\I0|Selector4~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~9_combout\ = (\I1|I2|DIN_27\ & ((\I0|Equal19~0_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_11\)))) # (!\I1|I2|DIN_27\ & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_27\,
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal19~0_combout\,
	datad => \I1|I3|DIN_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~9_combout\);

-- Location: LC_X35_Y17_N1
\I0|E_CONTROL[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(11) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[11]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(11));

-- Location: LC_X35_Y22_N9
\I0|D_CONTROL[27]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~4\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[27]) # ((\I0|Equal20~0_combout\ & \I0|E_CONTROL\(11))))) # (!\I0|Equal17~3_combout\ & (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[11]~11\,
	datad => \I0|E_CONTROL\(11),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~4\,
	regout => \I0|D_CONTROL\(27));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cyclone_io
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

-- Location: LC_X32_Y20_N5
\I0|D_CONTROL[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~5\ = (\I0|Equal12~0_combout\ & ((\B~combout\(27)) # ((C1_D_CONTROL[11] & \I0|Equal16~0_combout\)))) # (!\I0|Equal12~0_combout\ & (((C1_D_CONTROL[11] & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal12~0_combout\,
	datab => \B~combout\(27),
	datac => \LAD[11]~11\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~5\,
	regout => \I0|D_CONTROL\(11));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cyclone_io
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

-- Location: LC_X34_Y17_N0
\I1|I4|DIN_27_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_27\ = (\F[27]~27\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[27]~27\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_27\);

-- Location: LC_X34_Y17_N7
\I0|Selector4~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~6_combout\ = (\B~combout\(11) & ((\I0|Equal11~3_combout\) # ((\I0|Equal27~3_combout\ & \I1|I4|DIN_27\)))) # (!\B~combout\(11) & (((\I0|Equal27~3_combout\ & \I1|I4|DIN_27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \I0|Equal11~3_combout\,
	datac => \I0|Equal27~3_combout\,
	datad => \I1|I4|DIN_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~6_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N8
\I1|I3|DIN_27_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_27\ = (\E[27]~27\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[27]~27\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_27\);

-- Location: LC_X35_Y22_N6
\I0|Selector4~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~7_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(11)) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_27\)))) # (!\I0|Equal9~5_combout\ & (((\I0|Equal23~0_combout\ & \I1|I3|DIN_27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \A~combout\(11),
	datac => \I0|Equal23~0_combout\,
	datad => \I1|I3|DIN_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~7_combout\);

-- Location: LC_X35_Y22_N7
\I0|Selector4~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~8_combout\ = (\I0|Selector4~4\) # ((\I0|Selector4~5\) # ((\I0|Selector4~6_combout\) # (\I0|Selector4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector4~4\,
	datab => \I0|Selector4~5\,
	datac => \I0|Selector4~6_combout\,
	datad => \I0|Selector4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~8_combout\);

-- Location: LC_X41_Y20_N9
\I1|I2|DIN_11_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_11\ = (\D[11]~11\ & ((\IDD~combout\(2)) # ((!\IDD~combout\(0)) # (!\IDD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(2),
	datab => \D[11]~11\,
	datac => \IDD~combout\(1),
	datad => \IDD~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_11\);

-- Location: LC_X41_Y20_N1
\I1|I4|DIN_11_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_11\ = (\F[11]~11\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \F[11]~11\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_11\);

-- Location: LC_X41_Y19_N4
\I0|Selector4~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & ((\I1|I4|DIN_11\))) # (!\I1|I1|REG_ADDR_x_4\ & (\I1|I2|DIN_11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_11\,
	datab => \I1|I1|REG_ADDR_x_4\,
	datac => \I1|I4|DIN_11\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~0_combout\);

-- Location: LC_X35_Y23_N4
\I0|PDL_CONTROL[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(11) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[11]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(11));

-- Location: LC_X35_Y23_N6
\I0|F_CONTROL[27]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~1\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[27]) # ((\I0|PDL_CONTROL\(11) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(11) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(11),
	datac => \LAD[11]~11\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~1\,
	regout => \I0|F_CONTROL\(27));

-- Location: LC_X38_Y18_N8
\I0|F_CONTROL[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(11) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[11]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(11));

-- Location: LC_X38_Y18_N4
\I0|E_CONTROL[27]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[27]) # ((\I0|F_CONTROL\(11) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(11) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(11),
	datac => \LAD[11]~11\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~2\,
	regout => \I0|E_CONTROL\(27));

-- Location: LC_X35_Y22_N3
\I0|Selector4~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector4~3_combout\ = (\I0|Selector4~0_combout\) # ((\I0|Selector4~1\) # ((\I0|Selector4~2\) # (\I0|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector4~0_combout\,
	datab => \I0|Selector4~1\,
	datac => \I0|Selector4~2\,
	datad => \I0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector4~3_combout\);

-- Location: LC_X35_Y22_N4
\I0|REG_DOUT[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(11) = DFFEAS((\I0|Selector4~10_combout\) # ((\I0|Selector4~9_combout\) # ((\I0|Selector4~8_combout\) # (\I0|Selector4~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector4~10_combout\,
	datab => \I0|Selector4~9_combout\,
	datac => \I0|Selector4~8_combout\,
	datad => \I0|Selector4~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(11));

-- Location: LC_X35_Y22_N8
\I1|I1|LAD_OUT_x_11_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_11\ = (\I1|I1|RDEN_s\ & (\I0|REG_DOUT\(11) & ((\nADS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|RDEN_s\,
	datab => \I0|REG_DOUT\(11),
	datad => \nADS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_11\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cyclone_io
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

-- Location: LC_X34_Y23_N0
\I0|SCRATCH[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(12) = DFFEAS((((!\LAD[12]~12\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(12));

-- Location: LC_X34_Y23_N7
\I0|Selector3~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~10_combout\ = (\A~combout\(28) & ((\I0|Equal10~1_combout\) # ((!\I0|SCRATCH\(12) & \I0|Equal15~4_combout\)))) # (!\A~combout\(28) & (!\I0|SCRATCH\(12) & ((\I0|Equal15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \I0|SCRATCH\(12),
	datac => \I0|Equal10~1_combout\,
	datad => \I0|Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~10_combout\);

-- Location: LC_X35_Y23_N0
\I0|PDL_CONTROL[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(12) = DFFEAS((((\LAD[12]~12\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(12));

-- Location: LC_X35_Y23_N7
\I0|F_CONTROL[28]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~1\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[28]) # ((\I0|PDL_CONTROL\(12) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(12) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(12),
	datac => \LAD[12]~12\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~1\,
	regout => \I0|F_CONTROL\(28));

-- Location: LC_X38_Y18_N5
\I0|F_CONTROL[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(12) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[12]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(12));

-- Location: LC_X38_Y18_N7
\I0|E_CONTROL[28]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[28]) # ((\I0|F_CONTROL\(12) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(12) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(12),
	datac => \LAD[12]~12\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~2\,
	regout => \I0|E_CONTROL\(28));

-- Location: LC_X41_Y20_N2
\I1|I4|DIN_12_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_12\ = (\F[12]~12\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \F[12]~12\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_12\);

-- Location: LC_X41_Y20_N5
\I1|I2|DIN_12_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_12\ = (\D[12]~12\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \D[12]~12\,
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_12\);

-- Location: LC_X41_Y20_N3
\I0|Selector3~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_12\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_12\,
	datab => \I1|I2|DIN_12\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~0_combout\);

-- Location: LC_X38_Y20_N4
\I0|Selector3~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~3_combout\ = (\I0|Selector3~1\) # ((\I0|Selector3~2\) # ((\I0|Selector3~0_combout\) # (\I0|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector3~1\,
	datab => \I0|Selector3~2\,
	datac => \I0|Selector3~0_combout\,
	datad => \I0|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~3_combout\);

-- Location: LC_X43_Y22_N5
\I1|I2|DIN_28_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_28\ = (\D[28]~28\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(2),
	datac => \IDD~combout\(0),
	datad => \D[28]~28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_28\);

-- Location: LC_X40_Y22_N6
\I1|I3|DIN_12_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_12\ = (\E[12]~12\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[12]~12\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_12\);

-- Location: LC_X41_Y22_N6
\I0|Selector3~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~9_combout\ = (\I1|I2|DIN_28\ & ((\I0|Equal19~0_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_12\)))) # (!\I1|I2|DIN_28\ & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_28\,
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal19~0_combout\,
	datad => \I1|I3|DIN_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~9_combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cyclone_io
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

-- Location: LC_X32_Y20_N1
\I0|D_CONTROL[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~5\ = (\I0|Equal12~0_combout\ & ((\B~combout\(28)) # ((C1_D_CONTROL[12] & \I0|Equal16~0_combout\)))) # (!\I0|Equal12~0_combout\ & (((C1_D_CONTROL[12] & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal12~0_combout\,
	datab => \B~combout\(28),
	datac => \LAD[12]~12\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~5\,
	regout => \I0|D_CONTROL\(12));

-- Location: LC_X35_Y17_N6
\I0|E_CONTROL[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(12) = DFFEAS((((\LAD[12]~12\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(12));

-- Location: LC_X39_Y20_N5
\I0|D_CONTROL[28]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~4\ = (\I0|Equal17~3_combout\ & ((C1_D_CONTROL[28]) # ((\I0|E_CONTROL\(12) & \I0|Equal20~0_combout\)))) # (!\I0|Equal17~3_combout\ & (\I0|E_CONTROL\(12) & ((\I0|Equal20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal17~3_combout\,
	datab => \I0|E_CONTROL\(12),
	datac => \LAD[12]~12\,
	datad => \I0|Equal20~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~4\,
	regout => \I0|D_CONTROL\(28));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cyclone_io
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

-- Location: LC_X41_Y20_N6
\I1|I4|DIN_28_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_28\ = (\F[28]~28\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \F[28]~28\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_28\);

-- Location: LC_X39_Y20_N4
\I0|Selector3~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~6_combout\ = (\B~combout\(12) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_28\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(12) & (\I1|I4|DIN_28\ & (\I0|Equal27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \I1|I4|DIN_28\,
	datac => \I0|Equal27~3_combout\,
	datad => \I0|Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~6_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cyclone_io
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

-- Location: LC_X40_Y22_N7
\I1|I3|DIN_28_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_28\ = (\E[28]~28\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[28]~28\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_28\);

-- Location: LC_X39_Y20_N6
\I0|Selector3~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~7_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(12)) # ((\I0|Equal23~0_combout\ & \I1|I3|DIN_28\)))) # (!\I0|Equal9~5_combout\ & (((\I0|Equal23~0_combout\ & \I1|I3|DIN_28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \A~combout\(12),
	datac => \I0|Equal23~0_combout\,
	datad => \I1|I3|DIN_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~7_combout\);

-- Location: LC_X39_Y20_N7
\I0|Selector3~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector3~8_combout\ = (\I0|Selector3~5\) # ((\I0|Selector3~4\) # ((\I0|Selector3~6_combout\) # (\I0|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector3~5\,
	datab => \I0|Selector3~4\,
	datac => \I0|Selector3~6_combout\,
	datad => \I0|Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector3~8_combout\);

-- Location: LC_X39_Y20_N8
\I0|REG_DOUT[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(12) = DFFEAS((\I0|Selector3~10_combout\) # ((\I0|Selector3~3_combout\) # ((\I0|Selector3~9_combout\) # (\I0|Selector3~8_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector3~10_combout\,
	datab => \I0|Selector3~3_combout\,
	datac => \I0|Selector3~9_combout\,
	datad => \I0|Selector3~8_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(12));

-- Location: LC_X39_Y20_N2
\I1|I1|LAD_OUT_x_12_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_12\ = (\nADS~combout\ & (\I0|REG_DOUT\(12) & (\I1|I1|RDEN_s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datab => \I0|REG_DOUT\(12),
	datac => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_12\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N1
\I0|SCRATCH[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~10\ = (\A~combout\(29) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[13])))) # (!\A~combout\(29) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(29),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[13]~13\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~10\,
	regout => \I0|SCRATCH\(13));

-- Location: LC_X40_Y22_N2
\I1|I2|DIN_29_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_29\ = (\D[29]~29\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(0),
	datab => \IDD~combout\(1),
	datac => \D[29]~29\,
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_29\);

-- Location: LC_X40_Y22_N1
\I1|I3|DIN_13_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_13\ = (\E[13]~13\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(1)) # (!\IDE~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[13]~13\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(0),
	datad => \IDE~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_13\);

-- Location: LC_X40_Y22_N9
\I0|Selector2~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~9_combout\ = (\I1|I2|DIN_29\ & ((\I0|Equal19~0_combout\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_13\)))) # (!\I1|I2|DIN_29\ & (\I0|Equal22~0_combout\ & ((\I1|I3|DIN_13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_29\,
	datab => \I0|Equal22~0_combout\,
	datac => \I0|Equal19~0_combout\,
	datad => \I1|I3|DIN_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~9_combout\);

-- Location: LC_X34_Y22_N6
\I0|E_CONTROL[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(13) = DFFEAS((((\LAD[13]~13\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(13));

-- Location: LC_X40_Y20_N6
\I0|D_CONTROL[29]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~4\ = (\I0|E_CONTROL\(13) & ((\I0|Equal20~0_combout\) # ((C1_D_CONTROL[29] & \I0|Equal17~3_combout\)))) # (!\I0|E_CONTROL\(13) & (((C1_D_CONTROL[29] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_CONTROL\(13),
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[13]~13\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~4\,
	regout => \I0|D_CONTROL\(29));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cyclone_io
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

-- Location: LC_X34_Y17_N3
\I1|I4|DIN_29_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_29\ = (\F[29]~29\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[29]~29\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_29\);

-- Location: LC_X34_Y17_N4
\I0|Selector2~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~6_combout\ = (\B~combout\(13) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_29\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(13) & (\I1|I4|DIN_29\ & (\I0|Equal27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \I1|I4|DIN_29\,
	datac => \I0|Equal27~3_combout\,
	datad => \I0|Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~6_combout\);

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cyclone_io
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

-- Location: LC_X32_Y20_N4
\I0|D_CONTROL[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~5\ = (\I0|Equal12~0_combout\ & ((\B~combout\(29)) # ((C1_D_CONTROL[13] & \I0|Equal16~0_combout\)))) # (!\I0|Equal12~0_combout\ & (((C1_D_CONTROL[13] & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal12~0_combout\,
	datab => \B~combout\(29),
	datac => \LAD[13]~13\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~5\,
	regout => \I0|D_CONTROL\(13));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cyclone_io
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

-- Location: LC_X44_Y21_N4
\I1|I3|DIN_29_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_29\ = (\E[29]~29\ & (((\IDE~combout\(2)) # (!\IDE~combout\(1))) # (!\IDE~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[29]~29\,
	datab => \IDE~combout\(0),
	datac => \IDE~combout\(1),
	datad => \IDE~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_29\);

-- Location: LC_X40_Y20_N1
\I0|Selector2~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~7_combout\ = (\I0|Equal9~5_combout\ & ((\A~combout\(13)) # ((\I1|I3|DIN_29\ & \I0|Equal23~0_combout\)))) # (!\I0|Equal9~5_combout\ & (((\I1|I3|DIN_29\ & \I0|Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal9~5_combout\,
	datab => \A~combout\(13),
	datac => \I1|I3|DIN_29\,
	datad => \I0|Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~7_combout\);

-- Location: LC_X40_Y20_N2
\I0|Selector2~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~8_combout\ = (\I0|Selector2~4\) # ((\I0|Selector2~6_combout\) # ((\I0|Selector2~5\) # (\I0|Selector2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector2~4\,
	datab => \I0|Selector2~6_combout\,
	datac => \I0|Selector2~5\,
	datad => \I0|Selector2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~8_combout\);

-- Location: LC_X41_Y20_N7
\I1|I2|DIN_13_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_13\ = (\D[13]~13\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \D[13]~13\,
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_13\);

-- Location: LC_X41_Y20_N4
\I1|I4|DIN_13_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_13\ = (\F[13]~13\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \IDF~combout\(0),
	datac => \F[13]~13\,
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_13\);

-- Location: LC_X41_Y20_N8
\I0|Selector2~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & ((\I1|I4|DIN_13\))) # (!\I1|I1|REG_ADDR_x_4\ & (\I1|I2|DIN_13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_13\,
	datab => \I1|I4|DIN_13\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I0|Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~0_combout\);

-- Location: LC_X35_Y23_N1
\I0|PDL_CONTROL[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(13) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[13]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(13));

-- Location: LC_X35_Y23_N2
\I0|F_CONTROL[29]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~1\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[29]) # ((\I0|Equal29~2_combout\ & \I0|PDL_CONTROL\(13))))) # (!\I0|Equal25~0_combout\ & (\I0|Equal29~2_combout\ & ((\I0|PDL_CONTROL\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|Equal29~2_combout\,
	datac => \LAD[13]~13\,
	datad => \I0|PDL_CONTROL\(13),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~1\,
	regout => \I0|F_CONTROL\(29));

-- Location: LC_X38_Y18_N0
\I0|F_CONTROL[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(13) = DFFEAS((((\LAD[13]~13\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(13));

-- Location: LC_X38_Y18_N6
\I0|E_CONTROL[29]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[29]) # ((\I0|F_CONTROL\(13) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(13) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(13),
	datac => \LAD[13]~13\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~2\,
	regout => \I0|E_CONTROL\(29));

-- Location: LC_X40_Y20_N7
\I0|Selector2~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector2~3_combout\ = (\I0|Selector2~0_combout\) # ((\I0|Selector2~1\) # ((\I0|Selector10~0_combout\) # (\I0|Selector2~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector2~0_combout\,
	datab => \I0|Selector2~1\,
	datac => \I0|Selector10~0_combout\,
	datad => \I0|Selector2~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector2~3_combout\);

-- Location: LC_X40_Y20_N8
\I0|REG_DOUT[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(13) = DFFEAS((\I0|Selector2~10\) # ((\I0|Selector2~9_combout\) # ((\I0|Selector2~8_combout\) # (\I0|Selector2~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector2~10\,
	datab => \I0|Selector2~9_combout\,
	datac => \I0|Selector2~8_combout\,
	datad => \I0|Selector2~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(13));

-- Location: LC_X40_Y20_N4
\I1|I1|LAD_OUT_x_13_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_13\ = (\I1|I1|RDEN_s\ & (\I0|REG_DOUT\(13) & (\nADS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|RDEN_s\,
	datab => \I0|REG_DOUT\(13),
	datac => \nADS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_13\);

-- Location: LC_X34_Y23_N9
\I0|SCRATCH[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|SCRATCH\(14) = DFFEAS((((!\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|SCRATCH[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|SCRATCH\(14));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cyclone_io
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

-- Location: LC_X34_Y23_N3
\I0|Selector1~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~10_combout\ = (\I0|SCRATCH\(14) & (((\I0|Equal10~1_combout\ & \A~combout\(30))))) # (!\I0|SCRATCH\(14) & ((\I0|Equal15~4_combout\) # ((\I0|Equal10~1_combout\ & \A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|SCRATCH\(14),
	datab => \I0|Equal15~4_combout\,
	datac => \I0|Equal10~1_combout\,
	datad => \A~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~10_combout\);

-- Location: LC_X39_Y21_N6
\I1|I2|DIN_30_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_30\ = (\D[30]~30\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \D[30]~30\,
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_30\);

-- Location: LC_X37_Y18_N6
\I1|I3|DIN_14_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_14\ = (\E[14]~14\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E[14]~14\,
	datab => \IDE~combout\(2),
	datac => \IDE~combout\(1),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_14\);

-- Location: LC_X37_Y18_N8
\I0|Selector1~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~9_combout\ = (\I0|Equal19~0_combout\ & ((\I1|I2|DIN_30\) # ((\I0|Equal22~0_combout\ & \I1|I3|DIN_14\)))) # (!\I0|Equal19~0_combout\ & (((\I0|Equal22~0_combout\ & \I1|I3|DIN_14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal19~0_combout\,
	datab => \I1|I2|DIN_30\,
	datac => \I0|Equal22~0_combout\,
	datad => \I1|I3|DIN_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~9_combout\);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cyclone_io
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

-- Location: LC_X32_Y20_N2
\I0|D_CONTROL[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~5\ = (\I0|Equal12~0_combout\ & ((\B~combout\(30)) # ((C1_D_CONTROL[14] & \I0|Equal16~0_combout\)))) # (!\I0|Equal12~0_combout\ & (((C1_D_CONTROL[14] & \I0|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal12~0_combout\,
	datab => \B~combout\(30),
	datac => \LAD[14]~14\,
	datad => \I0|Equal16~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~5\,
	regout => \I0|D_CONTROL\(14));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cyclone_io
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

-- Location: LC_X39_Y21_N8
\I1|I4|DIN_30_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_30\ = (\F[30]~30\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[30]~30\,
	datac => \IDF~combout\(1),
	datad => \IDF~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_30\);

-- Location: LC_X39_Y21_N9
\I0|Selector1~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~6_combout\ = (\B~combout\(14) & ((\I0|Equal11~3_combout\) # ((\I1|I4|DIN_30\ & \I0|Equal27~3_combout\)))) # (!\B~combout\(14) & (\I1|I4|DIN_30\ & ((\I0|Equal27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \I1|I4|DIN_30\,
	datac => \I0|Equal11~3_combout\,
	datad => \I0|Equal27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~6_combout\);

-- Location: LC_X34_Y22_N9
\I0|E_CONTROL[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(14) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[14]~14\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(14));

-- Location: LC_X34_Y20_N4
\I0|D_CONTROL[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~4\ = (\I0|Equal20~0_combout\ & ((\I0|E_CONTROL\(14)) # ((\I0|Equal17~3_combout\ & C1_D_CONTROL[30])))) # (!\I0|Equal20~0_combout\ & (\I0|Equal17~3_combout\ & (C1_D_CONTROL[30])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal20~0_combout\,
	datab => \I0|Equal17~3_combout\,
	datac => \LAD[14]~14\,
	datad => \I0|E_CONTROL\(14),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~4\,
	regout => \I0|D_CONTROL\(30));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cyclone_io
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

-- Location: LC_X37_Y18_N9
\I1|I3|DIN_30_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_30\ = (\E[30]~30\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \E[30]~30\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_30\);

-- Location: LC_X34_Y20_N1
\I0|Selector1~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~7_combout\ = (\I0|Equal23~0_combout\ & ((\I1|I3|DIN_30\) # ((\A~combout\(14) & \I0|Equal9~5_combout\)))) # (!\I0|Equal23~0_combout\ & (\A~combout\(14) & ((\I0|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal23~0_combout\,
	datab => \A~combout\(14),
	datac => \I1|I3|DIN_30\,
	datad => \I0|Equal9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~7_combout\);

-- Location: LC_X34_Y20_N2
\I0|Selector1~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~8_combout\ = (\I0|Selector1~5\) # ((\I0|Selector1~6_combout\) # ((\I0|Selector1~4\) # (\I0|Selector1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector1~5\,
	datab => \I0|Selector1~6_combout\,
	datac => \I0|Selector1~4\,
	datad => \I0|Selector1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~8_combout\);

-- Location: LC_X40_Y21_N4
\I1|I4|DIN_14_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_14\ = (\F[14]~14\ & ((\IDF~combout\(2)) # ((!\IDF~combout\(1)) # (!\IDF~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(2),
	datab => \F[14]~14\,
	datac => \IDF~combout\(0),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_14\);

-- Location: LC_X40_Y21_N0
\I1|I2|DIN_14_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_14\ = (\D[14]~14\ & (((\IDD~combout\(2)) # (!\IDD~combout\(1))) # (!\IDD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D[14]~14\,
	datab => \IDD~combout\(0),
	datac => \IDD~combout\(1),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_14\);

-- Location: LC_X40_Y21_N3
\I0|Selector1~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_14\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_4\,
	datab => \I0|Equal18~0_combout\,
	datac => \I1|I4|DIN_14\,
	datad => \I1|I2|DIN_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~0_combout\);

-- Location: LC_X35_Y23_N3
\I0|PDL_CONTROL[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(14) = DFFEAS((((\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(14));

-- Location: LC_X35_Y23_N9
\I0|F_CONTROL[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~1\ = (\I0|Equal25~0_combout\ & ((C1_F_CONTROL[30]) # ((\I0|PDL_CONTROL\(14) & \I0|Equal29~2_combout\)))) # (!\I0|Equal25~0_combout\ & (\I0|PDL_CONTROL\(14) & ((\I0|Equal29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal25~0_combout\,
	datab => \I0|PDL_CONTROL\(14),
	datac => \LAD[14]~14\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~1\,
	regout => \I0|F_CONTROL\(30));

-- Location: LC_X38_Y18_N3
\I0|F_CONTROL[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(14) = DFFEAS((((\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(14));

-- Location: LC_X38_Y18_N2
\I0|E_CONTROL[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[30]) # ((\I0|F_CONTROL\(14) & \I0|Equal24~0_combout\)))) # (!\I0|Equal21~0_combout\ & (\I0|F_CONTROL\(14) & ((\I0|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|F_CONTROL\(14),
	datac => \LAD[14]~14\,
	datad => \I0|Equal24~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~2\,
	regout => \I0|E_CONTROL\(30));

-- Location: LC_X34_Y20_N8
\I0|Selector1~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector1~3_combout\ = (\I0|Selector1~0_combout\) # ((\I0|Selector1~1\) # ((\I0|Selector1~2\) # (\I0|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector1~0_combout\,
	datab => \I0|Selector1~1\,
	datac => \I0|Selector1~2\,
	datad => \I0|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector1~3_combout\);

-- Location: LC_X34_Y20_N9
\I0|REG_DOUT[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(14) = DFFEAS((\I0|Selector1~10_combout\) # ((\I0|Selector1~9_combout\) # ((\I0|Selector1~8_combout\) # (\I0|Selector1~3_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector1~10_combout\,
	datab => \I0|Selector1~9_combout\,
	datac => \I0|Selector1~8_combout\,
	datad => \I0|Selector1~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(14));

-- Location: LC_X34_Y20_N6
\I1|I1|LAD_OUT_x_14_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_14\ = (\nADS~combout\ & (((\I0|REG_DOUT\(14) & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datac => \I0|REG_DOUT\(14),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_14\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cyclone_io
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

-- Location: LC_X34_Y24_N6
\I0|SCRATCH[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~10\ = (\A~combout\(31) & ((\I0|Equal10~1_combout\) # ((\I0|Equal15~4_combout\ & C1_SCRATCH[15])))) # (!\A~combout\(31) & (\I0|Equal15~4_combout\ & (C1_SCRATCH[15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \A~combout\(31),
	datab => \I0|Equal15~4_combout\,
	datac => \LAD[15]~15\,
	datad => \I0|Equal10~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|SCRATCH[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~10\,
	regout => \I0|SCRATCH\(15));

-- Location: LC_X37_Y18_N1
\I1|I2|DIN_31_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_31\ = (\D[31]~31\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \IDD~combout\(0),
	datac => \IDD~combout\(2),
	datad => \D[31]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_31\);

-- Location: LC_X37_Y18_N3
\I1|I3|DIN_15_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_15\ = (\E[15]~15\ & (((\IDE~combout\(2)) # (!\IDE~combout\(0))) # (!\IDE~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(1),
	datab => \IDE~combout\(2),
	datac => \E[15]~15\,
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_15\);

-- Location: LC_X37_Y18_N5
\I0|Selector0~9\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~9_combout\ = (\I1|I2|DIN_31\ & ((\I0|Equal19~0_combout\) # ((\I1|I3|DIN_15\ & \I0|Equal22~0_combout\)))) # (!\I1|I2|DIN_31\ & (\I1|I3|DIN_15\ & (\I0|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|DIN_31\,
	datab => \I1|I3|DIN_15\,
	datac => \I0|Equal22~0_combout\,
	datad => \I0|Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~9_combout\);

-- Location: LC_X40_Y21_N9
\I1|I4|DIN_15_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_15\ = (\F[15]~15\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \F[15]~15\,
	datac => \IDF~combout\(2),
	datad => \IDF~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_15\);

-- Location: LC_X40_Y21_N1
\I1|I2|DIN_15_\ : cyclone_lcell
-- Equation(s):
-- \I1|I2|DIN_15\ = (\D[15]~15\ & (((\IDD~combout\(2)) # (!\IDD~combout\(0))) # (!\IDD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDD~combout\(1),
	datab => \D[15]~15\,
	datac => \IDD~combout\(0),
	datad => \IDD~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I2|DIN_15\);

-- Location: LC_X40_Y21_N2
\I0|Selector0~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~0_combout\ = (\I0|Equal18~0_combout\ & ((\I1|I1|REG_ADDR_x_4\ & (\I1|I4|DIN_15\)) # (!\I1|I1|REG_ADDR_x_4\ & ((\I1|I2|DIN_15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I4|DIN_15\,
	datab => \I0|Equal18~0_combout\,
	datac => \I1|I1|REG_ADDR_x_4\,
	datad => \I1|I2|DIN_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~0_combout\);

-- Location: LC_X36_Y24_N7
\I0|PDL_CONTROL[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_CONTROL\(15) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|PDL_CONTROL[1]~2_combout\, \LAD[15]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|PDL_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_CONTROL\(15));

-- Location: LC_X36_Y24_N4
\I0|F_CONTROL[31]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~1\ = (\I0|PDL_CONTROL\(15) & ((\I0|Equal29~2_combout\) # ((\I0|Equal25~0_combout\ & C1_F_CONTROL[31])))) # (!\I0|PDL_CONTROL\(15) & (\I0|Equal25~0_combout\ & (C1_F_CONTROL[31])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|PDL_CONTROL\(15),
	datab => \I0|Equal25~0_combout\,
	datac => \LAD[15]~15\,
	datad => \I0|Equal29~2_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~1\,
	regout => \I0|F_CONTROL\(31));

-- Location: LC_X40_Y18_N3
\I0|F_CONTROL[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|F_CONTROL\(15) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|F_CONTROL[1]~0_combout\, \LAD[15]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|F_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|F_CONTROL\(15));

-- Location: LC_X40_Y18_N0
\I0|E_CONTROL[31]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~2\ = (\I0|Equal21~0_combout\ & ((C1_E_CONTROL[31]) # ((\I0|Equal24~0_combout\ & \I0|F_CONTROL\(15))))) # (!\I0|Equal21~0_combout\ & (\I0|Equal24~0_combout\ & ((\I0|F_CONTROL\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Equal21~0_combout\,
	datab => \I0|Equal24~0_combout\,
	datac => \LAD[15]~15\,
	datad => \I0|F_CONTROL\(15),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~2\,
	regout => \I0|E_CONTROL\(31));

-- Location: LC_X36_Y18_N9
\I0|Selector0~3\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~3_combout\ = (\I0|Selector0~0_combout\) # ((\I0|Selector0~1\) # ((\I0|Selector0~2\) # (\I0|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector0~0_combout\,
	datab => \I0|Selector0~1\,
	datac => \I0|Selector0~2\,
	datad => \I0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~3_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cyclone_io
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

-- Location: LC_X34_Y18_N8
\I1|I4|DIN_31_\ : cyclone_lcell
-- Equation(s):
-- \I1|I4|DIN_31\ = (\F[31]~31\ & (((\IDF~combout\(2)) # (!\IDF~combout\(1))) # (!\IDF~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDF~combout\(0),
	datab => \IDF~combout\(2),
	datac => \IDF~combout\(1),
	datad => \F[31]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|DIN_31\);

-- Location: LC_X34_Y18_N9
\I0|Selector0~6\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~6_combout\ = (\B~combout\(15) & ((\I0|Equal11~3_combout\) # ((\I0|Equal27~3_combout\ & \I1|I4|DIN_31\)))) # (!\B~combout\(15) & (((\I0|Equal27~3_combout\ & \I1|I4|DIN_31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datab => \I0|Equal11~3_combout\,
	datac => \I0|Equal27~3_combout\,
	datad => \I1|I4|DIN_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~6_combout\);

-- Location: LC_X35_Y15_N0
\I0|E_CONTROL[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|E_CONTROL\(15) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|E_CONTROL[1]~0_combout\, \LAD[15]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|E_CONTROL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|E_CONTROL\(15));

-- Location: LC_X36_Y18_N4
\I0|D_CONTROL[31]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~4\ = (\I0|E_CONTROL\(15) & ((\I0|Equal20~0_combout\) # ((C1_D_CONTROL[31] & \I0|Equal17~3_combout\)))) # (!\I0|E_CONTROL\(15) & (((C1_D_CONTROL[31] & \I0|Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|E_CONTROL\(15),
	datab => \I0|Equal20~0_combout\,
	datac => \LAD[15]~15\,
	datad => \I0|Equal17~3_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~4\,
	regout => \I0|D_CONTROL\(31));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cyclone_io
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

-- Location: LC_X34_Y18_N5
\I0|D_CONTROL[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~5\ = (\B~combout\(31) & ((\I0|Equal12~0_combout\) # ((\I0|Equal16~0_combout\ & C1_D_CONTROL[15])))) # (!\B~combout\(31) & (\I0|Equal16~0_combout\ & (C1_D_CONTROL[15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \B~combout\(31),
	datab => \I0|Equal16~0_combout\,
	datac => \LAD[15]~15\,
	datad => \I0|Equal12~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|D_CONTROL[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~5\,
	regout => \I0|D_CONTROL\(15));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cyclone_io
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

-- Location: LC_X44_Y21_N2
\I1|I3|DIN_31_\ : cyclone_lcell
-- Equation(s):
-- \I1|I3|DIN_31\ = (\E[31]~31\ & ((\IDE~combout\(2)) # ((!\IDE~combout\(0)) # (!\IDE~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDE~combout\(2),
	datab => \E[31]~31\,
	datac => \IDE~combout\(1),
	datad => \IDE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I3|DIN_31\);

-- Location: LC_X36_Y18_N5
\I0|Selector0~7\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~7_combout\ = (\A~combout\(15) & ((\I0|Equal9~5_combout\) # ((\I1|I3|DIN_31\ & \I0|Equal23~0_combout\)))) # (!\A~combout\(15) & (((\I1|I3|DIN_31\ & \I0|Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \I0|Equal9~5_combout\,
	datac => \I1|I3|DIN_31\,
	datad => \I0|Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~7_combout\);

-- Location: LC_X36_Y18_N6
\I0|Selector0~8\ : cyclone_lcell
-- Equation(s):
-- \I0|Selector0~8_combout\ = (\I0|Selector0~6_combout\) # ((\I0|Selector0~4\) # ((\I0|Selector0~5\) # (\I0|Selector0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Selector0~6_combout\,
	datab => \I0|Selector0~4\,
	datac => \I0|Selector0~5\,
	datad => \I0|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Selector0~8_combout\);

-- Location: LC_X36_Y18_N2
\I0|REG_DOUT[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|REG_DOUT\(15) = DFFEAS((\I0|Selector0~10\) # ((\I0|Selector0~9_combout\) # ((\I0|Selector0~3_combout\) # (\I0|Selector0~8_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I1|I1|REG_RDEN_x\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|Selector0~10\,
	datab => \I0|Selector0~9_combout\,
	datac => \I0|Selector0~3_combout\,
	datad => \I0|Selector0~8_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I1|I1|REG_RDEN_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|REG_DOUT\(15));

-- Location: LC_X37_Y24_N9
\I1|I1|LAD_OUT_x_15_\ : cyclone_lcell
-- Equation(s):
-- \I1|I1|LAD_OUT_x_15\ = (\nADS~combout\ & (((\I0|REG_DOUT\(15) & \I1|I1|RDEN_s\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nADS~combout\,
	datac => \I0|REG_DOUT\(15),
	datad => \I1|I1|RDEN_s\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|LAD_OUT_x_15\);

-- Location: LC_X32_Y18_N4
\I0|C_DOUT[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[0]~0_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(0))))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(0) & (\I0|C_STATUS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_MASK\(0),
	datab => \I0|MODE\(3),
	datac => \I0|C_STATUS\(0),
	datad => \I0|C_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[0]~0_combout\);

-- Location: LC_X33_Y20_N6
\I0|C_DOUT[1]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[1]~1_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(1))))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(1) & (\I0|C_STATUS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(3),
	datab => \I0|C_MASK\(1),
	datac => \I0|C_STATUS\(1),
	datad => \I0|C_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[1]~1_combout\);

-- Location: LC_X32_Y18_N1
\I0|C_DOUT[2]~2\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[2]~2_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(2))) # (!\I0|MODE\(3) & (((!\I0|C_MASK\(2) & \I0|C_STATUS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(2),
	datab => \I0|MODE\(3),
	datac => \I0|C_MASK\(2),
	datad => \I0|C_STATUS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[2]~2_combout\);

-- Location: LC_X37_Y20_N8
\I0|C_CONTROL[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[3]~3\ = (\I0|MODE\(3) & (((C1_C_CONTROL[3])))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(3) & ((\I0|C_STATUS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|C_MASK\(3),
	datab => \I0|MODE\(3),
	datac => \LAD[3]~3\,
	datad => \I0|C_STATUS\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[3]~3\,
	regout => \I0|C_CONTROL\(3));

-- Location: LC_X37_Y20_N9
\I0|C_CONTROL[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[4]~4\ = (\I0|MODE\(3) & (((C1_C_CONTROL[4])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(4) & ((!\I0|C_MASK\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(4),
	datac => \LAD[4]~4\,
	datad => \I0|C_MASK\(4),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[4]~4\,
	regout => \I0|C_CONTROL\(4));

-- Location: LC_X35_Y20_N5
\I0|C_DOUT[5]~5\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[5]~5_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(5))))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(5) & ((!\I0|C_MASK\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(5),
	datab => \I0|C_CONTROL\(5),
	datac => \I0|MODE\(3),
	datad => \I0|C_MASK\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[5]~5_combout\);

-- Location: LC_X32_Y17_N9
\I0|C_DOUT[6]~6\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[6]~6_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(6))) # (!\I0|MODE\(3) & (((!\I1|I3|DIN_4\ & !\I0|C_MASK\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(6),
	datab => \I1|I3|DIN_4\,
	datac => \I0|MODE\(3),
	datad => \I0|C_MASK\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[6]~6_combout\);

-- Location: LC_X33_Y18_N5
\I0|C_DOUT[7]~7\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[7]~7_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(7))) # (!\I0|MODE\(3) & (((!\I0|C_MASK\(7) & !\I1|I3|DIN_5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "888b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(7),
	datab => \I0|MODE\(3),
	datac => \I0|C_MASK\(7),
	datad => \I1|I3|DIN_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[7]~7_combout\);

-- Location: LC_X32_Y19_N9
\I0|C_MASK[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(8) = DFFEAS((((!\LAD[8]~8\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(8));

-- Location: LC_X32_Y18_N9
\I0|C_DOUT[8]~8\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[8]~8_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(8))))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(0) & (!\I0|C_MASK\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(0),
	datab => \I0|C_MASK\(8),
	datac => \I0|C_CONTROL\(8),
	datad => \I0|MODE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[8]~8_combout\);

-- Location: LC_X33_Y22_N6
\I0|C_MASK[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(9) = DFFEAS((((!\LAD[9]~9\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(9));

-- Location: LC_X32_Y16_N9
\I0|C_DOUT[9]~9\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[9]~9_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(9))))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(1) & ((!\I0|C_MASK\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(1),
	datab => \I0|C_CONTROL\(9),
	datac => \I0|MODE\(3),
	datad => \I0|C_MASK\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[9]~9_combout\);

-- Location: LC_X33_Y22_N2
\I0|C_MASK[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(10) = DFFEAS((((!\LAD[10]~10\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[10]~10\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(10));

-- Location: LC_X32_Y18_N5
\I0|C_DOUT[10]~10\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[10]~10_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(10))))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(2) & ((!\I0|C_MASK\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(2),
	datab => \I0|C_CONTROL\(10),
	datac => \I0|C_MASK\(10),
	datad => \I0|MODE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[10]~10_combout\);

-- Location: LC_X32_Y20_N0
\I0|C_MASK[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(11) = DFFEAS((((!\LAD[11]~11\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(11));

-- Location: LC_X32_Y20_N9
\I0|C_DOUT[11]~11\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[11]~11_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(11))) # (!\I0|MODE\(3) & (((\I0|C_STATUS\(3) & !\I0|C_MASK\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(11),
	datab => \I0|MODE\(3),
	datac => \I0|C_STATUS\(3),
	datad => \I0|C_MASK\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[11]~11_combout\);

-- Location: LC_X37_Y20_N4
\I0|C_MASK[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(12) = DFFEAS((((!\LAD[12]~12\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(12));

-- Location: LC_X32_Y20_N8
\I0|C_DOUT[12]~12\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[12]~12_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(12))))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(4) & ((!\I0|C_MASK\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_STATUS\(4),
	datab => \I0|MODE\(3),
	datac => \I0|C_CONTROL\(12),
	datad => \I0|C_MASK\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[12]~12_combout\);

-- Location: LC_X32_Y20_N7
\I0|C_MASK[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(13) = DFFEAS((((!\LAD[13]~13\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(13));

-- Location: LC_X32_Y20_N3
\I0|C_DOUT[13]~13\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[13]~13_combout\ = (\I0|MODE\(3) & (((\I0|C_CONTROL\(13))))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(13) & ((\I0|C_STATUS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_MASK\(13),
	datab => \I0|MODE\(3),
	datac => \I0|C_CONTROL\(13),
	datad => \I0|C_STATUS\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[13]~13_combout\);

-- Location: LC_X32_Y20_N6
\I0|C_MASK[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(14) = DFFEAS((((!\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(14));

-- Location: LC_X32_Y17_N2
\I0|C_DOUT[14]~14\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[14]~14_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(14))) # (!\I0|MODE\(3) & (((!\I1|I3|DIN_4\ & !\I0|C_MASK\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(14),
	datab => \I1|I3|DIN_4\,
	datac => \I0|MODE\(3),
	datad => \I0|C_MASK\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[14]~14_combout\);

-- Location: LC_X33_Y22_N4
\I0|C_MASK[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(15) = DFFEAS((((!\LAD[15]~15\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(15));

-- Location: LC_X32_Y21_N7
\I0|C_DOUT[15]~15\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[15]~15_combout\ = (\I0|MODE\(3) & (\I0|C_CONTROL\(15))) # (!\I0|MODE\(3) & (((!\I1|I3|DIN_5\ & !\I0|C_MASK\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|C_CONTROL\(15),
	datab => \I1|I3|DIN_5\,
	datac => \I0|MODE\(3),
	datad => \I0|C_MASK\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[15]~15_combout\);

-- Location: LC_X37_Y21_N4
\I0|C_MASK[16]~1\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK[16]~1_combout\ = (!\I1|I1|REG_ADDR_x_3\ & (\I1|I1|REG_ADDR_x_2\ & (\I0|Equal10~0_combout\ & \I0|GATEWIDTH[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|REG_ADDR_x_3\,
	datab => \I1|I1|REG_ADDR_x_2\,
	datac => \I0|Equal10~0_combout\,
	datad => \I0|GATEWIDTH[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_MASK[16]~1_combout\);

-- Location: LC_X37_Y21_N9
\I0|C_MASK[16]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(16) = DFFEAS((((!\LAD[0]~0\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(16));

-- Location: LC_X37_Y21_N1
\I0|C_CONTROL[16]~3\ : cyclone_lcell
-- Equation(s):
-- \I0|C_CONTROL[16]~3_combout\ = (\I0|Equal11~2_combout\ & (\I1|I1|REG_ADDR_x_3\ & (\I0|C_CONTROL[16]~2_combout\ & \I0|GATEWIDTH[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal11~2_combout\,
	datab => \I1|I1|REG_ADDR_x_3\,
	datac => \I0|C_CONTROL[16]~2_combout\,
	datad => \I0|GATEWIDTH[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_CONTROL[16]~3_combout\);

-- Location: LC_X32_Y18_N2
\I0|C_CONTROL[16]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[16]~16\ = (\I0|MODE\(3) & (((C1_C_CONTROL[16])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(0) & (!\I0|C_MASK\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|C_STATUS\(0),
	datab => \I0|C_MASK\(16),
	datac => \LAD[0]~0\,
	datad => \I0|MODE\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[16]~16\,
	regout => \I0|C_CONTROL\(16));

-- Location: LC_X37_Y21_N0
\I0|C_MASK[17]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(17) = DFFEAS((((!\LAD[1]~1\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[1]~1\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(17));

-- Location: LC_X32_Y16_N7
\I0|C_CONTROL[17]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[17]~17\ = (\I0|MODE\(3) & (((C1_C_CONTROL[17])))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(17) & ((\I0|C_STATUS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_MASK\(17),
	datac => \LAD[1]~1\,
	datad => \I0|C_STATUS\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[17]~17\,
	regout => \I0|C_CONTROL\(17));

-- Location: LC_X32_Y18_N3
\I0|C_MASK[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(18) = DFFEAS((((!\LAD[2]~2\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(18));

-- Location: LC_X32_Y18_N6
\I0|C_CONTROL[18]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[18]~18\ = (\I0|MODE\(3) & (((C1_C_CONTROL[18])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(2) & ((!\I0|C_MASK\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|C_STATUS\(2),
	datab => \I0|MODE\(3),
	datac => \LAD[2]~2\,
	datad => \I0|C_MASK\(18),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[18]~18\,
	regout => \I0|C_CONTROL\(18));

-- Location: LC_X32_Y16_N5
\I0|C_MASK[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(19) = DFFEAS((((!\LAD[3]~3\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[3]~3\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(19));

-- Location: LC_X32_Y16_N2
\I0|C_CONTROL[19]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[19]~19\ = (\I0|MODE\(3) & (((C1_C_CONTROL[19])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(3) & ((!\I0|C_MASK\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(3),
	datac => \LAD[3]~3\,
	datad => \I0|C_MASK\(19),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[19]~19\,
	regout => \I0|C_CONTROL\(19));

-- Location: LC_X32_Y16_N3
\I0|C_MASK[20]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(20) = DFFEAS((((!\LAD[4]~4\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[4]~4\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(20));

-- Location: LC_X32_Y16_N8
\I0|C_CONTROL[20]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[20]~20\ = (\I0|MODE\(3) & (((C1_C_CONTROL[20])))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(20) & ((\I0|C_STATUS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_MASK\(20),
	datac => \LAD[4]~4\,
	datad => \I0|C_STATUS\(4),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[20]~20\,
	regout => \I0|C_CONTROL\(20));

-- Location: LC_X32_Y17_N5
\I0|C_MASK[21]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(21) = DFFEAS((((!\LAD[5]~5\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(21));

-- Location: LC_X32_Y17_N8
\I0|C_CONTROL[21]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[21]~21\ = (\I0|MODE\(3) & (((C1_C_CONTROL[21])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(5) & ((!\I0|C_MASK\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(5),
	datac => \LAD[5]~5\,
	datad => \I0|C_MASK\(21),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[21]~21\,
	regout => \I0|C_CONTROL\(21));

-- Location: LC_X32_Y17_N1
\I0|C_MASK[22]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(22) = DFFEAS((((!\LAD[6]~6\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[6]~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(22));

-- Location: LC_X32_Y17_N4
\I0|C_CONTROL[22]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[22]~22\ = (\I0|MODE\(3) & (((C1_C_CONTROL[22])))) # (!\I0|MODE\(3) & (!\I1|I3|DIN_4\ & ((!\I0|C_MASK\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I1|I3|DIN_4\,
	datac => \LAD[6]~6\,
	datad => \I0|C_MASK\(22),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[22]~22\,
	regout => \I0|C_CONTROL\(22));

-- Location: LC_X32_Y21_N6
\I0|C_MASK[23]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(23) = DFFEAS((((!\LAD[7]~7\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(23));

-- Location: LC_X33_Y18_N3
\I0|C_CONTROL[23]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[23]~23\ = (\I0|MODE\(3) & (((C1_C_CONTROL[23])))) # (!\I0|MODE\(3) & (!\I1|I3|DIN_5\ & (!\I0|C_MASK\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I3|DIN_5\,
	datab => \I0|C_MASK\(23),
	datac => \LAD[7]~7\,
	datad => \I0|MODE\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[23]~23\,
	regout => \I0|C_CONTROL\(23));

-- Location: LC_X32_Y21_N8
\I0|C_MASK[24]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(24) = DFFEAS((((!\LAD[8]~8\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(24));

-- Location: LC_X32_Y18_N7
\I0|C_CONTROL[24]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[24]~24\ = (\I0|MODE\(3) & (((C1_C_CONTROL[24])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(0) & ((!\I0|C_MASK\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|C_STATUS\(0),
	datab => \I0|MODE\(3),
	datac => \LAD[8]~8\,
	datad => \I0|C_MASK\(24),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[24]~24\,
	regout => \I0|C_CONTROL\(24));

-- Location: LC_X32_Y16_N4
\I0|C_MASK[25]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(25) = DFFEAS((((!\LAD[9]~9\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[9]~9\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(25));

-- Location: LC_X32_Y16_N1
\I0|C_CONTROL[25]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[25]~25\ = (\I0|MODE\(3) & (((C1_C_CONTROL[25])))) # (!\I0|MODE\(3) & (!\I0|C_MASK\(25) & ((\I0|C_STATUS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_MASK\(25),
	datac => \LAD[9]~9\,
	datad => \I0|C_STATUS\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[25]~25\,
	regout => \I0|C_CONTROL\(25));

-- Location: LC_X32_Y18_N0
\I0|C_MASK[26]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(26) = DFFEAS((((!\LAD[10]~10\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[10]~10\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(26));

-- Location: LC_X32_Y18_N8
\I0|C_CONTROL[26]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[26]~26\ = (\I0|MODE\(3) & (((C1_C_CONTROL[26])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(2) & ((!\I0|C_MASK\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|C_STATUS\(2),
	datab => \I0|MODE\(3),
	datac => \LAD[10]~10\,
	datad => \I0|C_MASK\(26),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[26]~26\,
	regout => \I0|C_CONTROL\(26));

-- Location: LC_X32_Y16_N0
\I0|C_MASK[27]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(27) = DFFEAS((((!\LAD[11]~11\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(27));

-- Location: LC_X32_Y16_N6
\I0|C_CONTROL[27]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[27]~27\ = (\I0|MODE\(3) & (((C1_C_CONTROL[27])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(3) & ((!\I0|C_MASK\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(3),
	datac => \LAD[11]~11\,
	datad => \I0|C_MASK\(27),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[27]~27\,
	regout => \I0|C_CONTROL\(27));

-- Location: LC_X32_Y21_N3
\I0|C_MASK[28]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(28) = DFFEAS((((!\LAD[12]~12\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[12]~12\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(28));

-- Location: LC_X32_Y21_N9
\I0|C_CONTROL[28]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[28]~28\ = (\I0|MODE\(3) & (((C1_C_CONTROL[28])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(4) & ((!\I0|C_MASK\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(4),
	datac => \LAD[12]~12\,
	datad => \I0|C_MASK\(28),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[28]~28\,
	regout => \I0|C_CONTROL\(28));

-- Location: LC_X32_Y17_N0
\I0|C_MASK[29]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(29) = DFFEAS((((!\LAD[13]~13\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(29));

-- Location: LC_X32_Y17_N3
\I0|C_CONTROL[29]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[29]~29\ = (\I0|MODE\(3) & (((C1_C_CONTROL[29])))) # (!\I0|MODE\(3) & (\I0|C_STATUS\(5) & ((!\I0|C_MASK\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I0|C_STATUS\(5),
	datac => \LAD[13]~13\,
	datad => \I0|C_MASK\(29),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[29]~29\,
	regout => \I0|C_CONTROL\(29));

-- Location: LC_X32_Y21_N2
\I0|C_MASK[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(30) = DFFEAS((((!\LAD[14]~14\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[14]~14\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(30));

-- Location: LC_X32_Y17_N7
\I0|C_CONTROL[30]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[30]~30\ = (\I0|MODE\(3) & (((C1_C_CONTROL[30])))) # (!\I0|MODE\(3) & (!\I1|I3|DIN_4\ & ((!\I0|C_MASK\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I1|I3|DIN_4\,
	datac => \LAD[14]~14\,
	datad => \I0|C_MASK\(30),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[30]~30\,
	regout => \I0|C_CONTROL\(30));

-- Location: LC_X32_Y21_N5
\I0|C_MASK[31]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_MASK\(31) = DFFEAS((((!\LAD[15]~15\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|C_MASK[16]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|C_MASK[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|C_MASK\(31));

-- Location: LC_X32_Y21_N4
\I0|C_CONTROL[31]\ : cyclone_lcell
-- Equation(s):
-- \I0|C_DOUT[31]~31\ = (\I0|MODE\(3) & (((C1_C_CONTROL[31])))) # (!\I0|MODE\(3) & (!\I1|I3|DIN_5\ & ((!\I0|C_MASK\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(3),
	datab => \I1|I3|DIN_5\,
	datac => \LAD[15]~15\,
	datad => \I0|C_MASK\(31),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|C_CONTROL[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|C_DOUT[31]~31\,
	regout => \I0|C_CONTROL\(31));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PULSE[1]~I\ : cyclone_io
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
	padio => ww_PULSE(1),
	combout => \PULSE~combout\(1));

-- Location: LC_X24_Y16_N6
\I0|P_DLO_DELAY~0\ : cyclone_lcell
-- Equation(s):
-- \I0|P_DLO_DELAY~0_combout\ = (((!\I0|STARTDELAY~regout\) # (!\nLRESET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nLRESET~combout\,
	datad => \I0|STARTDELAY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|P_DLO_DELAY~0_combout\);

-- Location: LC_X24_Y17_N7
\I0|STOP_PDL\ : cyclone_lcell
-- Equation(s):
-- \I0|STOP_PDL~regout\ = DFFEAS(VCC, \I0|Mux1\, !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux1\,
	aclr => \I0|P_DLO_DELAY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|STOP_PDL~regout\);

-- Location: LC_X36_Y16_N2
\I0|CNT[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(0) = DFFEAS((((!\I0|CNT\(0)))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datac => \I0|CNT\(0),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(0));

-- Location: LC_X36_Y16_N3
\I0|CNT[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(1) = DFFEAS(\I0|CNT\(0) $ ((\I0|CNT\(1))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[1]~1\ = CARRY((\I0|CNT\(0) & (\I0|CNT\(1))))
-- \I0|CNT[1]~1COUT1_44\ = CARRY((\I0|CNT\(0) & (\I0|CNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(0),
	datab => \I0|CNT\(1),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(1),
	cout0 => \I0|CNT[1]~1\,
	cout1 => \I0|CNT[1]~1COUT1_44\);

-- Location: LC_X36_Y16_N4
\I0|CNT[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(2) = DFFEAS((\I0|CNT\(2) $ ((\I0|CNT[1]~1\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[2]~5\ = CARRY(((!\I0|CNT[1]~1COUT1_44\) # (!\I0|CNT\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(2),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin0 => \I0|CNT[1]~1\,
	cin1 => \I0|CNT[1]~1COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(2),
	cout => \I0|CNT[2]~5\);

-- Location: LC_X36_Y16_N5
\I0|CNT[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(3) = DFFEAS((\I0|CNT\(3) $ ((!\I0|CNT[2]~5\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[3]~3\ = CARRY(((\I0|CNT\(3) & !\I0|CNT[2]~5\)))
-- \I0|CNT[3]~3COUT1_46\ = CARRY(((\I0|CNT\(3) & !\I0|CNT[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(3),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(3),
	cout0 => \I0|CNT[3]~3\,
	cout1 => \I0|CNT[3]~3COUT1_46\);

-- Location: LC_X36_Y16_N6
\I0|CNT[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(4) = DFFEAS(\I0|CNT\(4) $ (((((!\I0|CNT[2]~5\ & \I0|CNT[3]~3\) # (\I0|CNT[2]~5\ & \I0|CNT[3]~3COUT1_46\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[4]~9\ = CARRY(((!\I0|CNT[3]~3\)) # (!\I0|CNT\(4)))
-- \I0|CNT[4]~9COUT1_48\ = CARRY(((!\I0|CNT[3]~3COUT1_46\)) # (!\I0|CNT\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(4),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[2]~5\,
	cin0 => \I0|CNT[3]~3\,
	cin1 => \I0|CNT[3]~3COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(4),
	cout0 => \I0|CNT[4]~9\,
	cout1 => \I0|CNT[4]~9COUT1_48\);

-- Location: LC_X36_Y16_N7
\I0|CNT[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(5) = DFFEAS(\I0|CNT\(5) $ ((((!(!\I0|CNT[2]~5\ & \I0|CNT[4]~9\) # (\I0|CNT[2]~5\ & \I0|CNT[4]~9COUT1_48\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[5]~7\ = CARRY((\I0|CNT\(5) & ((!\I0|CNT[4]~9\))))
-- \I0|CNT[5]~7COUT1_50\ = CARRY((\I0|CNT\(5) & ((!\I0|CNT[4]~9COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(5),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[2]~5\,
	cin0 => \I0|CNT[4]~9\,
	cin1 => \I0|CNT[4]~9COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(5),
	cout0 => \I0|CNT[5]~7\,
	cout1 => \I0|CNT[5]~7COUT1_50\);

-- Location: LC_X36_Y16_N8
\I0|CNT[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(6) = DFFEAS((\I0|CNT\(6) $ (((!\I0|CNT[2]~5\ & \I0|CNT[5]~7\) # (\I0|CNT[2]~5\ & \I0|CNT[5]~7COUT1_50\)))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[6]~13\ = CARRY(((!\I0|CNT[5]~7\) # (!\I0|CNT\(6))))
-- \I0|CNT[6]~13COUT1_52\ = CARRY(((!\I0|CNT[5]~7COUT1_50\) # (!\I0|CNT\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(6),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[2]~5\,
	cin0 => \I0|CNT[5]~7\,
	cin1 => \I0|CNT[5]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(6),
	cout0 => \I0|CNT[6]~13\,
	cout1 => \I0|CNT[6]~13COUT1_52\);

-- Location: LC_X36_Y16_N9
\I0|CNT[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(7) = DFFEAS(\I0|CNT\(7) $ ((((!(!\I0|CNT[2]~5\ & \I0|CNT[6]~13\) # (\I0|CNT[2]~5\ & \I0|CNT[6]~13COUT1_52\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[7]~11\ = CARRY((\I0|CNT\(7) & ((!\I0|CNT[6]~13COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(7),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[2]~5\,
	cin0 => \I0|CNT[6]~13\,
	cin1 => \I0|CNT[6]~13COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(7),
	cout => \I0|CNT[7]~11\);

-- Location: LC_X36_Y15_N0
\I0|CNT[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(8) = DFFEAS((\I0|CNT\(8) $ ((\I0|CNT[7]~11\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[8]~21\ = CARRY(((!\I0|CNT[7]~11\) # (!\I0|CNT\(8))))
-- \I0|CNT[8]~21COUT1_54\ = CARRY(((!\I0|CNT[7]~11\) # (!\I0|CNT\(8))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(8),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[7]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(8),
	cout0 => \I0|CNT[8]~21\,
	cout1 => \I0|CNT[8]~21COUT1_54\);

-- Location: LC_X36_Y15_N1
\I0|CNT[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(9) = DFFEAS(\I0|CNT\(9) $ ((((!(!\I0|CNT[7]~11\ & \I0|CNT[8]~21\) # (\I0|CNT[7]~11\ & \I0|CNT[8]~21COUT1_54\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[9]~19\ = CARRY((\I0|CNT\(9) & ((!\I0|CNT[8]~21\))))
-- \I0|CNT[9]~19COUT1_56\ = CARRY((\I0|CNT\(9) & ((!\I0|CNT[8]~21COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(9),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[7]~11\,
	cin0 => \I0|CNT[8]~21\,
	cin1 => \I0|CNT[8]~21COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(9),
	cout0 => \I0|CNT[9]~19\,
	cout1 => \I0|CNT[9]~19COUT1_56\);

-- Location: LC_X36_Y15_N2
\I0|CNT[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(10) = DFFEAS(\I0|CNT\(10) $ (((((!\I0|CNT[7]~11\ & \I0|CNT[9]~19\) # (\I0|CNT[7]~11\ & \I0|CNT[9]~19COUT1_56\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[10]~17\ = CARRY(((!\I0|CNT[9]~19\)) # (!\I0|CNT\(10)))
-- \I0|CNT[10]~17COUT1_58\ = CARRY(((!\I0|CNT[9]~19COUT1_56\)) # (!\I0|CNT\(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(10),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[7]~11\,
	cin0 => \I0|CNT[9]~19\,
	cin1 => \I0|CNT[9]~19COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(10),
	cout0 => \I0|CNT[10]~17\,
	cout1 => \I0|CNT[10]~17COUT1_58\);

-- Location: LC_X36_Y15_N3
\I0|CNT[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(11) = DFFEAS((\I0|CNT\(11) $ ((!(!\I0|CNT[7]~11\ & \I0|CNT[10]~17\) # (\I0|CNT[7]~11\ & \I0|CNT[10]~17COUT1_58\)))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[11]~15\ = CARRY(((\I0|CNT\(11) & !\I0|CNT[10]~17\)))
-- \I0|CNT[11]~15COUT1_60\ = CARRY(((\I0|CNT\(11) & !\I0|CNT[10]~17COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(11),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[7]~11\,
	cin0 => \I0|CNT[10]~17\,
	cin1 => \I0|CNT[10]~17COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(11),
	cout0 => \I0|CNT[11]~15\,
	cout1 => \I0|CNT[11]~15COUT1_60\);

-- Location: LC_X36_Y15_N4
\I0|CNT[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(12) = DFFEAS((\I0|CNT\(12) $ (((!\I0|CNT[7]~11\ & \I0|CNT[11]~15\) # (\I0|CNT[7]~11\ & \I0|CNT[11]~15COUT1_60\)))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[12]~25\ = CARRY(((!\I0|CNT[11]~15COUT1_60\) # (!\I0|CNT\(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(12),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[7]~11\,
	cin0 => \I0|CNT[11]~15\,
	cin1 => \I0|CNT[11]~15COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(12),
	cout => \I0|CNT[12]~25\);

-- Location: LC_X36_Y15_N5
\I0|CNT[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(13) = DFFEAS((\I0|CNT\(13) $ ((!\I0|CNT[12]~25\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[13]~23\ = CARRY(((\I0|CNT\(13) & !\I0|CNT[12]~25\)))
-- \I0|CNT[13]~23COUT1_62\ = CARRY(((\I0|CNT\(13) & !\I0|CNT[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|CNT\(13),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[12]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(13),
	cout0 => \I0|CNT[13]~23\,
	cout1 => \I0|CNT[13]~23COUT1_62\);

-- Location: LC_X36_Y15_N6
\I0|CNT[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(14) = DFFEAS(\I0|CNT\(14) $ (((((!\I0|CNT[12]~25\ & \I0|CNT[13]~23\) # (\I0|CNT[12]~25\ & \I0|CNT[13]~23COUT1_62\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )
-- \I0|CNT[14]~29\ = CARRY(((!\I0|CNT[13]~23\)) # (!\I0|CNT\(14)))
-- \I0|CNT[14]~29COUT1_64\ = CARRY(((!\I0|CNT[13]~23COUT1_62\)) # (!\I0|CNT\(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(14),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[12]~25\,
	cin0 => \I0|CNT[13]~23\,
	cin1 => \I0|CNT[13]~23COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(14),
	cout0 => \I0|CNT[14]~29\,
	cout1 => \I0|CNT[14]~29COUT1_64\);

-- Location: LC_X36_Y15_N7
\I0|CNT[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|CNT\(15) = DFFEAS(\I0|CNT\(15) $ ((((!(!\I0|CNT[12]~25\ & \I0|CNT[14]~29\) # (\I0|CNT[12]~25\ & \I0|CNT[14]~29COUT1_64\))))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	dataa => \I0|CNT\(15),
	aclr => \I0|P_DLO_DELAY~0_combout\,
	cin => \I0|CNT[12]~25\,
	cin0 => \I0|CNT[14]~29\,
	cin1 => \I0|CNT[14]~29COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|CNT\(15));

-- Location: LC_X37_Y16_N4
\I0|GATEWIDTH[15]~4\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH[15]~4_combout\ = (\I1|I1|WREN_s\ & (!\I1|I1|REG_ADDR_x_5\ & (\I0|GATEWIDTH[15]~3_combout\ & \I1|I1|REG_ADDR_x_4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|WREN_s\,
	datab => \I1|I1|REG_ADDR_x_5\,
	datac => \I0|GATEWIDTH[15]~3_combout\,
	datad => \I1|I1|REG_ADDR_x_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|GATEWIDTH[15]~4_combout\);

-- Location: LC_X35_Y15_N8
\I0|GATEWIDTH[15]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(15) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, \LAD[15]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[15]~15\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(15));

-- Location: LC_X35_Y15_N6
\I0|GATEWIDTH[14]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~9\ = (\I0|CNT\(15) & (\I0|GATEWIDTH\(15) & (C1_GATEWIDTH[14] $ (!\I0|CNT\(14))))) # (!\I0|CNT\(15) & (!\I0|GATEWIDTH\(15) & (C1_GATEWIDTH[14] $ (!\I0|CNT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(15),
	datab => \I0|GATEWIDTH\(15),
	datac => \LAD[14]~14\,
	datad => \I0|CNT\(14),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~9\,
	regout => \I0|GATEWIDTH\(14));

-- Location: LC_X35_Y15_N7
\I0|GATEWIDTH[13]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(13) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, \LAD[13]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[13]~13\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(13));

-- Location: LC_X35_Y15_N4
\I0|GATEWIDTH[12]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~8\ = (\I0|GATEWIDTH\(13) & (\I0|CNT\(13) & (C1_GATEWIDTH[12] $ (!\I0|CNT\(12))))) # (!\I0|GATEWIDTH\(13) & (!\I0|CNT\(13) & (C1_GATEWIDTH[12] $ (!\I0|CNT\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|GATEWIDTH\(13),
	datab => \I0|CNT\(13),
	datac => \LAD[12]~12\,
	datad => \I0|CNT\(12),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~8\,
	regout => \I0|GATEWIDTH\(12));

-- Location: LC_X35_Y15_N5
\I0|GATEWIDTH[11]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(11) = DFFEAS((((\LAD[11]~11\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[11]~11\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(11));

-- Location: LC_X36_Y15_N8
\I0|GATEWIDTH[10]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~5\ = (\I0|CNT\(10) & (C1_GATEWIDTH[10] & (\I0|GATEWIDTH\(11) $ (!\I0|CNT\(11))))) # (!\I0|CNT\(10) & (!C1_GATEWIDTH[10] & (\I0|GATEWIDTH\(11) $ (!\I0|CNT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(10),
	datab => \I0|GATEWIDTH\(11),
	datac => \LAD[10]~10\,
	datad => \I0|CNT\(11),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~5\,
	regout => \I0|GATEWIDTH\(10));

-- Location: LC_X35_Y15_N9
\I0|GATEWIDTH[8]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~6\ = (\I0|CNT\(8) $ ((C1_GATEWIDTH[8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|CNT\(8),
	datac => \LAD[8]~8\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~6\,
	regout => \I0|GATEWIDTH\(8));

-- Location: LC_X36_Y15_N9
\I0|GATEWIDTH[9]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~7\ = (\I0|Equal1~5\ & (!\I0|Equal1~6\ & (\I0|CNT\(9) $ (!C1_GATEWIDTH[9]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0084",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(9),
	datab => \I0|Equal1~5\,
	datac => \LAD[9]~9\,
	datad => \I0|Equal1~6\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~7\,
	regout => \I0|GATEWIDTH\(9));

-- Location: LC_X37_Y16_N9
\I0|GATEWIDTH[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(0) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[0]~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(0));

-- Location: LC_X36_Y16_N0
\I0|GATEWIDTH[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~0\ = (\I0|CNT\(0) & (\I0|GATEWIDTH\(0) & (\I0|CNT\(1) $ (!C1_GATEWIDTH[1])))) # (!\I0|CNT\(0) & (!\I0|GATEWIDTH\(0) & (\I0|CNT\(1) $ (!C1_GATEWIDTH[1]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(0),
	datab => \I0|CNT\(1),
	datac => \LAD[1]~1\,
	datad => \I0|GATEWIDTH\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~0\,
	regout => \I0|GATEWIDTH\(1));

-- Location: LC_X37_Y16_N3
\I0|GATEWIDTH[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(5) = DFFEAS(GND, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, \LAD[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[5]~5\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(5));

-- Location: LC_X37_Y16_N5
\I0|GATEWIDTH[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~2\ = (\I0|CNT\(4) & (C1_GATEWIDTH[4] & (\I0|GATEWIDTH\(5) $ (!\I0|CNT\(5))))) # (!\I0|CNT\(4) & (!C1_GATEWIDTH[4] & (\I0|GATEWIDTH\(5) $ (!\I0|CNT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(4),
	datab => \I0|GATEWIDTH\(5),
	datac => \LAD[4]~4\,
	datad => \I0|CNT\(5),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~2\,
	regout => \I0|GATEWIDTH\(4));

-- Location: LC_X37_Y16_N7
\I0|GATEWIDTH[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(2) = DFFEAS((((!\LAD[2]~2\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[2]~2\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(2));

-- Location: LC_X37_Y16_N2
\I0|GATEWIDTH[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~1\ = (\I0|GATEWIDTH\(2) & (!\I0|CNT\(2) & (\I0|CNT\(3) $ (!C1_GATEWIDTH[3])))) # (!\I0|GATEWIDTH\(2) & (\I0|CNT\(2) & (\I0|CNT\(3) $ (!C1_GATEWIDTH[3]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4182",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|GATEWIDTH\(2),
	datab => \I0|CNT\(3),
	datac => \LAD[3]~3\,
	datad => \I0|CNT\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~1\,
	regout => \I0|GATEWIDTH\(3));

-- Location: LC_X37_Y16_N0
\I0|GATEWIDTH[7]\ : cyclone_lcell
-- Equation(s):
-- \I0|GATEWIDTH\(7) = DFFEAS((((\LAD[7]~7\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|GATEWIDTH[15]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \LAD[7]~7\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|GATEWIDTH\(7));

-- Location: LC_X37_Y16_N1
\I0|GATEWIDTH[6]\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~3\ = (\I0|CNT\(6) & (C1_GATEWIDTH[6] & (\I0|GATEWIDTH\(7) $ (!\I0|CNT\(7))))) # (!\I0|CNT\(6) & (!C1_GATEWIDTH[6] & (\I0|GATEWIDTH\(7) $ (!\I0|CNT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|CNT\(6),
	datab => \I0|GATEWIDTH\(7),
	datac => \LAD[6]~6\,
	datad => \I0|CNT\(7),
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|GATEWIDTH[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~3\,
	regout => \I0|GATEWIDTH\(6));

-- Location: LC_X36_Y16_N1
\I0|Equal1~4\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~4_combout\ = (\I0|Equal1~0\ & (\I0|Equal1~2\ & (\I0|Equal1~1\ & \I0|Equal1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal1~0\,
	datab => \I0|Equal1~2\,
	datac => \I0|Equal1~1\,
	datad => \I0|Equal1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~4_combout\);

-- Location: LC_X24_Y16_N1
\I0|Equal1~10\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal1~10_combout\ = (\I0|Equal1~9\ & (\I0|Equal1~8\ & (\I0|Equal1~7\ & \I0|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal1~9\,
	datab => \I0|Equal1~8\,
	datac => \I0|Equal1~7\,
	datad => \I0|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal1~10_combout\);

-- Location: LC_X24_Y16_N0
\I0|STOP_DLO\ : cyclone_lcell
-- Equation(s):
-- \I0|STOP_DLO~regout\ = DFFEAS(((\I0|STOP_DLO~regout\) # ((\I0|Equal1~10_combout\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datab => \I0|STOP_DLO~regout\,
	datad => \I0|Equal1~10_combout\,
	aclr => \I0|P_DLO_DELAY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|STOP_DLO~regout\);

-- Location: LC_X24_Y16_N8
\I0|P_COINC~0\ : cyclone_lcell
-- Equation(s):
-- \I0|P_COINC~0_combout\ = (((\I0|STOP_PDL~regout\) # (\I0|STOP_DLO~regout\))) # (!\nLRESET~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nLRESET~combout\,
	datac => \I0|STOP_PDL~regout\,
	datad => \I0|STOP_DLO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|P_COINC~0_combout\);

-- Location: LC_X24_Y16_N3
\I0|STARTDELAY\ : cyclone_lcell
-- Equation(s):
-- \I0|STARTDELAY~regout\ = DFFEAS(VCC, \I0|WideOr0~combout\, !\I0|P_COINC~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|WideOr0~combout\,
	aclr => \I0|P_COINC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|STARTDELAY~regout\);

-- Location: LC_X23_Y16_N4
\I0|ENABLE_CNT~0\ : cyclone_lcell
-- Equation(s):
-- \I0|ENABLE_CNT~0_combout\ = (\I0|Equal0~1_combout\) # (((\I0|STARTDELAY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal0~1_combout\,
	datad => \I0|STARTDELAY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|ENABLE_CNT~0_combout\);

-- Location: LC_X23_Y16_N2
\I0|ENABLE_CNT\ : cyclone_lcell
-- Equation(s):
-- \I0|ENABLE_CNT~regout\ = DFFEAS((((!\I0|Equal0~1_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|ENABLE_CNT~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \I0|Equal0~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|ENABLE_CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|ENABLE_CNT~regout\);

-- Location: LC_X23_Y16_N5
\I0|WVF_CNT[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|WVF_CNT\(0) = DFFEAS(\I0|ENABLE_CNT~regout\ $ ((\I0|WVF_CNT\(0))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , \I0|Equal0~1_combout\, )
-- \I0|WVF_CNT[0]~1\ = CARRY((\I0|ENABLE_CNT~regout\ & (\I0|WVF_CNT\(0))))
-- \I0|WVF_CNT[0]~1COUT1_16\ = CARRY((\I0|ENABLE_CNT~regout\ & (\I0|WVF_CNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|ENABLE_CNT~regout\,
	datab => \I0|WVF_CNT\(0),
	aclr => \ALT_INV_nLRESET~combout\,
	sclr => \I0|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|WVF_CNT\(0),
	cout0 => \I0|WVF_CNT[0]~1\,
	cout1 => \I0|WVF_CNT[0]~1COUT1_16\);

-- Location: LC_X23_Y16_N6
\I0|WVF_CNT[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|WVF_CNT\(1) = DFFEAS(\I0|WVF_CNT\(1) $ ((((\I0|WVF_CNT[0]~1\)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , \I0|Equal0~1_combout\, )
-- \I0|WVF_CNT[1]~3\ = CARRY(((!\I0|WVF_CNT[0]~1\)) # (!\I0|WVF_CNT\(1)))
-- \I0|WVF_CNT[1]~3COUT1_18\ = CARRY(((!\I0|WVF_CNT[0]~1COUT1_16\)) # (!\I0|WVF_CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|WVF_CNT\(1),
	aclr => \ALT_INV_nLRESET~combout\,
	sclr => \I0|Equal0~1_combout\,
	cin0 => \I0|WVF_CNT[0]~1\,
	cin1 => \I0|WVF_CNT[0]~1COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|WVF_CNT\(1),
	cout0 => \I0|WVF_CNT[1]~3\,
	cout1 => \I0|WVF_CNT[1]~3COUT1_18\);

-- Location: LC_X23_Y16_N7
\I0|WVF_CNT[2]\ : cyclone_lcell
-- Equation(s):
-- \I0|WVF_CNT\(2) = DFFEAS(\I0|WVF_CNT\(2) $ ((((!\I0|WVF_CNT[1]~3\)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , \I0|Equal0~1_combout\, )
-- \I0|WVF_CNT[2]~5\ = CARRY((\I0|WVF_CNT\(2) & ((!\I0|WVF_CNT[1]~3\))))
-- \I0|WVF_CNT[2]~5COUT1_20\ = CARRY((\I0|WVF_CNT\(2) & ((!\I0|WVF_CNT[1]~3COUT1_18\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|WVF_CNT\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	sclr => \I0|Equal0~1_combout\,
	cin0 => \I0|WVF_CNT[1]~3\,
	cin1 => \I0|WVF_CNT[1]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|WVF_CNT\(2),
	cout0 => \I0|WVF_CNT[2]~5\,
	cout1 => \I0|WVF_CNT[2]~5COUT1_20\);

-- Location: LC_X23_Y16_N8
\I0|WVF_CNT[3]\ : cyclone_lcell
-- Equation(s):
-- \I0|WVF_CNT\(3) = DFFEAS((\I0|WVF_CNT\(3) $ ((\I0|WVF_CNT[2]~5\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , \I0|Equal0~1_combout\, )
-- \I0|WVF_CNT[3]~7\ = CARRY(((!\I0|WVF_CNT[2]~5\) # (!\I0|WVF_CNT\(3))))
-- \I0|WVF_CNT[3]~7COUT1_22\ = CARRY(((!\I0|WVF_CNT[2]~5COUT1_20\) # (!\I0|WVF_CNT\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|WVF_CNT\(3),
	aclr => \ALT_INV_nLRESET~combout\,
	sclr => \I0|Equal0~1_combout\,
	cin0 => \I0|WVF_CNT[2]~5\,
	cin1 => \I0|WVF_CNT[2]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|WVF_CNT\(3),
	cout0 => \I0|WVF_CNT[3]~7\,
	cout1 => \I0|WVF_CNT[3]~7COUT1_22\);

-- Location: LC_X23_Y16_N9
\I0|WVF_CNT[4]\ : cyclone_lcell
-- Equation(s):
-- \I0|WVF_CNT\(4) = DFFEAS(\I0|WVF_CNT\(4) $ ((((!\I0|WVF_CNT[3]~7\)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , \I0|Equal0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|WVF_CNT\(4),
	aclr => \ALT_INV_nLRESET~combout\,
	sclr => \I0|Equal0~1_combout\,
	cin0 => \I0|WVF_CNT[3]~7\,
	cin1 => \I0|WVF_CNT[3]~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|WVF_CNT\(4));

-- Location: LC_X23_Y16_N0
\I0|Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal0~0_combout\ = ((\I0|WVF_CNT\(0) & ((!\I0|WVF_CNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I0|WVF_CNT\(0),
	datad => \I0|WVF_CNT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal0~0_combout\);

-- Location: LC_X23_Y16_N1
\I0|Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \I0|Equal0~1_combout\ = (!\I0|WVF_CNT\(4) & (\I0|WVF_CNT\(3) & (\I0|WVF_CNT\(2) & \I0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|WVF_CNT\(4),
	datab => \I0|WVF_CNT\(3),
	datac => \I0|WVF_CNT\(2),
	datad => \I0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Equal0~1_combout\);

-- Location: LC_X23_Y16_N3
\I0|PDL_IN_i\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_IN_i~regout\ = DFFEAS((((!\I0|Equal0~1_combout\))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|ENABLE_CNT~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \I0|Equal0~1_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	ena => \I0|ENABLE_CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|PDL_IN_i~regout\);

-- Location: LC_X24_Y17_N0
\I0|PDL_PULSEOUT~1\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_PULSEOUT~1_combout\ = ((!\PULSE~combout\(1) & (\I0|PDL_IN_i~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \PULSE~combout\(1),
	datac => \I0|PDL_IN_i~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|PDL_PULSEOUT~1_combout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PULSE[0]~I\ : cyclone_io
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
	padio => ww_PULSE(0),
	combout => \PULSE~combout\(0));

-- Location: LC_X24_Y17_N4
\I0|PDL_PULSEOUT~0\ : cyclone_lcell
-- Equation(s):
-- \I0|PDL_PULSEOUT~0_combout\ = (((\I0|PDL_IN_i~regout\ & !\PULSE~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|PDL_IN_i~regout\,
	datad => \PULSE~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|PDL_PULSEOUT~0_combout\);

-- Location: LC_X24_Y17_N5
\I0|MODE[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux1~0\ = ((C1_MODE[0] & (\I0|PDL_PULSEOUT~1_combout\)) # (!C1_MODE[0] & ((\I0|PDL_PULSEOUT~0_combout\))))
-- \I0|MODE\(0) = DFFEAS(\I0|Mux1~0\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|MODE[4]~0_combout\, \LAD[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I0|PDL_PULSEOUT~1_combout\,
	datac => \LAD[0]~0\,
	datad => \I0|PDL_PULSEOUT~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|MODE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux1~0\,
	regout => \I0|MODE\(0));

-- Location: LC_X24_Y17_N6
\I0|MODE[1]\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux1\ = LCELL((((C1_MODE[1]) # (!\I0|Mux1~0\))))
-- \I0|MODE\(1) = DFFEAS(\I0|Mux1\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|MODE[4]~0_combout\, \LAD[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => \LAD[1]~1\,
	datad => \I0|Mux1~0\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|MODE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux1\,
	regout => \I0|MODE\(1));

-- Location: LC_X24_Y17_N8
\I0|MODE[5]\ : cyclone_lcell
-- Equation(s):
-- \I0|GREEN_PULSE~0\ = (C1_MODE[5] & (((\I0|STARTDELAY~regout\)))) # (!C1_MODE[5] & (!\I0|MODE\(1) & ((!\I0|Mux1\))))
-- \I0|MODE\(5) = DFFEAS(\I0|GREEN_PULSE~0\, GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , \I0|MODE[4]~0_combout\, \LAD[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c5",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I0|MODE\(1),
	datab => \I0|STARTDELAY~regout\,
	datac => \LAD[5]~5\,
	datad => \I0|Mux1\,
	aclr => \ALT_INV_nLRESET~combout\,
	sload => VCC,
	ena => \I0|MODE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|GREEN_PULSE~0\,
	regout => \I0|MODE\(5));

-- Location: LC_X24_Y16_N2
\I0|DLO_PULSEOUT\ : cyclone_lcell
-- Equation(s):
-- \I0|DLO_PULSEOUT~regout\ = DFFEAS((((!\I0|Equal1~10_combout\))), GLOBAL(\I0|Mux4~combout\), !GLOBAL(\I0|P_DLO_DELAY~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \I0|Mux4~combout\,
	datad => \I0|Equal1~10_combout\,
	aclr => \I0|P_DLO_DELAY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|DLO_PULSEOUT~regout\);

-- Location: LC_X24_Y16_N4
\I0|GREEN_PULSE~1\ : cyclone_lcell
-- Equation(s):
-- \I0|GREEN_PULSE~1_combout\ = (\I0|GREEN_PULSE~0\) # ((\I0|MODE\(1) & (!\I0|MODE\(5) & \I0|DLO_PULSEOUT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|MODE\(1),
	datab => \I0|MODE\(5),
	datac => \I0|DLO_PULSEOUT~regout\,
	datad => \I0|GREEN_PULSE~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|GREEN_PULSE~1_combout\);

-- Location: LC_X37_Y21_N5
\I0|G_CONTROL[0]~0\ : cyclone_lcell
-- Equation(s):
-- \I0|G_CONTROL[0]~0_combout\ = (\I0|Equal15~3_combout\ & (\I1|I1|WREN_s\ & (\I0|Equal15~2_combout\ & \I1|I1|REG_ADDR_x_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Equal15~3_combout\,
	datab => \I1|I1|WREN_s\,
	datac => \I0|Equal15~2_combout\,
	datad => \I1|I1|REG_ADDR_x_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|G_CONTROL[0]~0_combout\);

-- Location: LC_X37_Y21_N3
\I0|G_CONTROL[0]\ : cyclone_lcell
-- Equation(s):
-- \I0|G_CONTROL\(0) = DFFEAS(((\I0|G_CONTROL[0]~0_combout\ & (\LAD[0]~0\)) # (!\I0|G_CONTROL[0]~0_combout\ & ((\I0|G_CONTROL\(0))))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \LAD[0]~0\,
	datab => \I0|G_CONTROL\(0),
	datad => \I0|G_CONTROL[0]~0_combout\,
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|G_CONTROL\(0));

-- Location: LC_X8_Y16_N5
\I0|Mux0~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux0~0_combout\ = (\I0|PDL_IN_i~regout\ & (((!\I0|MODE\(1) & !\I0|MODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|PDL_IN_i~regout\,
	datac => \I0|MODE\(1),
	datad => \I0|MODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux0~0_combout\);

-- Location: LC_X8_Y16_N6
\I0|Mux2~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux2~0_combout\ = (\I0|PDL_IN_i~regout\ & (((!\I0|MODE\(1) & \I0|MODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|PDL_IN_i~regout\,
	datac => \I0|MODE\(1),
	datad => \I0|MODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux2~0_combout\);

-- Location: LC_X36_Y24_N5
\I1|I5|un1_wr_dly0_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I5|un1_wr_dly0_x\ = (((!\I0|PDL_CONTROL\(0) & !\I0|PDL_CONTROL\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I0|PDL_CONTROL\(0),
	datad => \I0|PDL_CONTROL\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I5|un1_wr_dly0_x\);

-- Location: LC_X52_Y20_N1
\I1|I8|TCNT1_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(0) = DFFEAS(((!\I1|I8|TCNT1\(0))), GLOBAL(\LCLK~combout\), VCC, , , , , , )
-- \I1|I8|TCNT1_cout\(0) = CARRY(((\I1|I8|TCNT1\(0))))
-- \I1|I8|TCNT1_cout[0]~COUT1_6\ = CARRY(((\I1|I8|TCNT1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT1\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(0),
	cout0 => \I1|I8|TCNT1_cout\(0),
	cout1 => \I1|I8|TCNT1_cout[0]~COUT1_6\);

-- Location: LC_X52_Y20_N2
\I1|I8|TCNT1_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(1) = DFFEAS(\I1|I8|TCNT1\(1) $ ((((\I1|I8|TCNT1_cout\(0))))), GLOBAL(\LCLK~combout\), VCC, , , , , , )
-- \I1|I8|TCNT1_cout\(1) = CARRY(((!\I1|I8|TCNT1_cout\(0))) # (!\I1|I8|TCNT1\(1)))
-- \I1|I8|TCNT1_cout[1]~COUT1_8\ = CARRY(((!\I1|I8|TCNT1_cout[0]~COUT1_6\)) # (!\I1|I8|TCNT1\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT1\(1),
	aclr => GND,
	cin0 => \I1|I8|TCNT1_cout\(0),
	cin1 => \I1|I8|TCNT1_cout[0]~COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(1),
	cout0 => \I1|I8|TCNT1_cout\(1),
	cout1 => \I1|I8|TCNT1_cout[1]~COUT1_8\);

-- Location: LC_X52_Y20_N3
\I1|I8|TCNT1_2__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(2) = DFFEAS((\I1|I8|TCNT1\(2) $ ((!\I1|I8|TCNT1_cout\(1)))), GLOBAL(\LCLK~combout\), VCC, , , , , , )
-- \I1|I8|TCNT1_cout\(2) = CARRY(((\I1|I8|TCNT1\(2) & !\I1|I8|TCNT1_cout\(1))))
-- \I1|I8|TCNT1_cout[2]~COUT1_10\ = CARRY(((\I1|I8|TCNT1\(2) & !\I1|I8|TCNT1_cout[1]~COUT1_8\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT1\(2),
	aclr => GND,
	cin0 => \I1|I8|TCNT1_cout\(1),
	cin1 => \I1|I8|TCNT1_cout[1]~COUT1_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(2),
	cout0 => \I1|I8|TCNT1_cout\(2),
	cout1 => \I1|I8|TCNT1_cout[2]~COUT1_10\);

-- Location: LC_X52_Y20_N4
\I1|I8|TCNT1_3__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(3) = DFFEAS((\I1|I8|TCNT1\(3) $ ((\I1|I8|TCNT1_cout\(2)))), GLOBAL(\LCLK~combout\), VCC, , , , , , )
-- \I1|I8|TCNT1_cout\(3) = CARRY(((!\I1|I8|TCNT1_cout[2]~COUT1_10\) # (!\I1|I8|TCNT1\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT1\(3),
	aclr => GND,
	cin0 => \I1|I8|TCNT1_cout\(2),
	cin1 => \I1|I8|TCNT1_cout[2]~COUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(3),
	cout => \I1|I8|TCNT1_cout\(3));

-- Location: LC_X52_Y20_N5
\I1|I8|TCNT1_4__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(4) = DFFEAS((\I1|I8|TCNT1\(4) $ ((!\I1|I8|TCNT1_cout\(3)))), GLOBAL(\LCLK~combout\), VCC, , , , , , )
-- \I1|I8|TCNT1_cout\(4) = CARRY(((\I1|I8|TCNT1\(4) & !\I1|I8|TCNT1_cout\(3))))
-- \I1|I8|TCNT1_cout[4]~COUT1_12\ = CARRY(((\I1|I8|TCNT1\(4) & !\I1|I8|TCNT1_cout\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT1\(4),
	aclr => GND,
	cin => \I1|I8|TCNT1_cout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(4),
	cout0 => \I1|I8|TCNT1_cout\(4),
	cout1 => \I1|I8|TCNT1_cout[4]~COUT1_12\);

-- Location: LC_X52_Y20_N6
\I1|I8|TCNT1_5__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT1\(5) = DFFEAS((((!\I1|I8|TCNT1_cout\(3) & \I1|I8|TCNT1_cout\(4)) # (\I1|I8|TCNT1_cout\(3) & \I1|I8|TCNT1_cout[4]~COUT1_12\) $ (\I1|I8|TCNT1\(5)))), GLOBAL(\LCLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \I1|I8|TCNT1\(5),
	aclr => GND,
	cin => \I1|I8|TCNT1_cout\(3),
	cin0 => \I1|I8|TCNT1_cout\(4),
	cin1 => \I1|I8|TCNT1_cout[4]~COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT1\(5));

-- Location: LC_X52_Y20_N8
\I1|I8|un7_tcnt1_3_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|un7_tcnt1_3\ = (!\I1|I8|TCNT1\(0) & (!\I1|I8|TCNT1\(3) & (!\I1|I8|TCNT1\(1) & !\I1|I8|TCNT1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I8|TCNT1\(0),
	datab => \I1|I8|TCNT1\(3),
	datac => \I1|I8|TCNT1\(1),
	datad => \I1|I8|TCNT1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|un7_tcnt1_3\);

-- Location: LC_X52_Y20_N9
\I1|I8|TICK_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TICK_combout\(0) = (!\I1|I8|TCNT1\(5) & (!\I1|I8|TCNT1\(4) & ((\I1|I8|un7_tcnt1_3\))))
-- \I1|I8|TICK\(0) = DFFEAS(\I1|I8|TICK_combout\(0), GLOBAL(\LCLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT1\(5),
	datab => \I1|I8|TCNT1\(4),
	datad => \I1|I8|un7_tcnt1_3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|TICK_combout\(0),
	regout => \I1|I8|TICK\(0));

-- Location: LC_X53_Y20_N0
\I1|I8|TCNT2_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(0) = DFFEAS(((!\I1|I8|TCNT2\(0))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(0) = CARRY(((\I1|I8|TCNT2\(0))))
-- \I1|I8|TCNT2_cout[0]~COUT1_8\ = CARRY(((\I1|I8|TCNT2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT2\(0),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(0),
	cout0 => \I1|I8|TCNT2_cout\(0),
	cout1 => \I1|I8|TCNT2_cout[0]~COUT1_8\);

-- Location: LC_X53_Y20_N1
\I1|I8|TCNT2_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(1) = DFFEAS(\I1|I8|TCNT2\(1) $ ((((\I1|I8|TCNT2_cout\(0))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(1) = CARRY(((!\I1|I8|TCNT2_cout\(0))) # (!\I1|I8|TCNT2\(1)))
-- \I1|I8|TCNT2_cout[1]~COUT1_10\ = CARRY(((!\I1|I8|TCNT2_cout[0]~COUT1_8\)) # (!\I1|I8|TCNT2\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT2\(1),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin0 => \I1|I8|TCNT2_cout\(0),
	cin1 => \I1|I8|TCNT2_cout[0]~COUT1_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(1),
	cout0 => \I1|I8|TCNT2_cout\(1),
	cout1 => \I1|I8|TCNT2_cout[1]~COUT1_10\);

-- Location: LC_X53_Y20_N2
\I1|I8|TCNT2_2__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(2) = DFFEAS(\I1|I8|TCNT2\(2) $ ((((!\I1|I8|TCNT2_cout\(1))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(2) = CARRY((\I1|I8|TCNT2\(2) & ((!\I1|I8|TCNT2_cout\(1)))))
-- \I1|I8|TCNT2_cout[2]~COUT1_12\ = CARRY((\I1|I8|TCNT2\(2) & ((!\I1|I8|TCNT2_cout[1]~COUT1_10\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT2\(2),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin0 => \I1|I8|TCNT2_cout\(1),
	cin1 => \I1|I8|TCNT2_cout[1]~COUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(2),
	cout0 => \I1|I8|TCNT2_cout\(2),
	cout1 => \I1|I8|TCNT2_cout[2]~COUT1_12\);

-- Location: LC_X53_Y20_N3
\I1|I8|TCNT2_3__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(3) = DFFEAS((\I1|I8|TCNT2\(3) $ ((\I1|I8|TCNT2_cout\(2)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(3) = CARRY(((!\I1|I8|TCNT2_cout\(2)) # (!\I1|I8|TCNT2\(3))))
-- \I1|I8|TCNT2_cout[3]~COUT1_14\ = CARRY(((!\I1|I8|TCNT2_cout[2]~COUT1_12\) # (!\I1|I8|TCNT2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT2\(3),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin0 => \I1|I8|TCNT2_cout\(2),
	cin1 => \I1|I8|TCNT2_cout[2]~COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(3),
	cout0 => \I1|I8|TCNT2_cout\(3),
	cout1 => \I1|I8|TCNT2_cout[3]~COUT1_14\);

-- Location: LC_X53_Y20_N4
\I1|I8|TCNT2_4__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(4) = DFFEAS((\I1|I8|TCNT2\(4) $ ((!\I1|I8|TCNT2_cout\(3)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(4) = CARRY(((\I1|I8|TCNT2\(4) & !\I1|I8|TCNT2_cout[3]~COUT1_14\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT2\(4),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin0 => \I1|I8|TCNT2_cout\(3),
	cin1 => \I1|I8|TCNT2_cout[3]~COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(4),
	cout => \I1|I8|TCNT2_cout\(4));

-- Location: LC_X54_Y20_N9
\I1|I8|un10_tcnt2_4_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|un10_tcnt2_4\ = (!\I1|I8|TCNT2\(1) & (!\I1|I8|TCNT2\(2) & (!\I1|I8|TCNT2\(3) & !\I1|I8|TCNT2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I8|TCNT2\(1),
	datab => \I1|I8|TCNT2\(2),
	datac => \I1|I8|TCNT2\(3),
	datad => \I1|I8|TCNT2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|un10_tcnt2_4\);

-- Location: LC_X53_Y20_N5
\I1|I8|TCNT2_5__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(5) = DFFEAS((\I1|I8|TCNT2\(5) $ ((\I1|I8|TCNT2_cout\(4)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(5) = CARRY(((!\I1|I8|TCNT2_cout\(4)) # (!\I1|I8|TCNT2\(5))))
-- \I1|I8|TCNT2_cout[5]~COUT1_16\ = CARRY(((!\I1|I8|TCNT2_cout\(4)) # (!\I1|I8|TCNT2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT2\(5),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin => \I1|I8|TCNT2_cout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(5),
	cout0 => \I1|I8|TCNT2_cout\(5),
	cout1 => \I1|I8|TCNT2_cout[5]~COUT1_16\);

-- Location: LC_X53_Y20_N6
\I1|I8|TCNT2_6__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(6) = DFFEAS(\I1|I8|TCNT2\(6) $ ((((!(!\I1|I8|TCNT2_cout\(4) & \I1|I8|TCNT2_cout\(5)) # (\I1|I8|TCNT2_cout\(4) & \I1|I8|TCNT2_cout[5]~COUT1_16\))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )
-- \I1|I8|TCNT2_cout\(6) = CARRY((\I1|I8|TCNT2\(6) & ((!\I1|I8|TCNT2_cout\(5)))))
-- \I1|I8|TCNT2_cout[6]~COUT1_18\ = CARRY((\I1|I8|TCNT2\(6) & ((!\I1|I8|TCNT2_cout[5]~COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT2\(6),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin => \I1|I8|TCNT2_cout\(4),
	cin0 => \I1|I8|TCNT2_cout\(5),
	cin1 => \I1|I8|TCNT2_cout[5]~COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(6),
	cout0 => \I1|I8|TCNT2_cout\(6),
	cout1 => \I1|I8|TCNT2_cout[6]~COUT1_18\);

-- Location: LC_X53_Y20_N7
\I1|I8|TCNT2_7__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT2\(7) = DFFEAS(\I1|I8|TCNT2\(7) $ (((((!\I1|I8|TCNT2_cout\(4) & \I1|I8|TCNT2_cout\(6)) # (\I1|I8|TCNT2_cout\(4) & \I1|I8|TCNT2_cout[6]~COUT1_18\))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT2\(7),
	aclr => GND,
	ena => \I1|I8|TICK\(0),
	cin => \I1|I8|TCNT2_cout\(4),
	cin0 => \I1|I8|TCNT2_cout\(6),
	cin1 => \I1|I8|TCNT2_cout[6]~COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT2\(7));

-- Location: LC_X53_Y20_N9
\I1|I8|un10_tcnt2_5_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|un10_tcnt2_5\ = (!\I1|I8|TCNT2\(6) & (!\I1|I8|TCNT2\(5) & (!\I1|I8|TCNT2\(7) & !\I1|I8|TCNT2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I8|TCNT2\(6),
	datab => \I1|I8|TCNT2\(5),
	datac => \I1|I8|TCNT2\(7),
	datad => \I1|I8|TCNT2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|un10_tcnt2_5\);

-- Location: LC_X53_Y20_N8
\I1|I8|TICK_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TICK_combout\(1) = ((\I1|I8|un10_tcnt2_4\ & (\I1|I8|un10_tcnt2_5\ & \I1|I8|TICK_combout\(0))))
-- \I1|I8|TICK\(1) = DFFEAS(\I1|I8|TICK_combout\(1), GLOBAL(\LCLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|un10_tcnt2_4\,
	datac => \I1|I8|un10_tcnt2_5\,
	datad => \I1|I8|TICK_combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|TICK_combout\(1),
	regout => \I1|I8|TICK\(1));

-- Location: LC_X48_Y20_N0
\I1|I8|TCNT3_0__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(0) = DFFEAS(((!\I1|I8|TCNT3\(0))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(0) = CARRY(((\I1|I8|TCNT3\(0))))
-- \I1|I8|TCNT3_cout[0]~COUT1_8\ = CARRY(((\I1|I8|TCNT3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT3\(0),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(0),
	cout0 => \I1|I8|TCNT3_cout\(0),
	cout1 => \I1|I8|TCNT3_cout[0]~COUT1_8\);

-- Location: LC_X48_Y20_N1
\I1|I8|TCNT3_1__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(1) = DFFEAS(\I1|I8|TCNT3\(1) $ ((((\I1|I8|TCNT3_cout\(0))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(1) = CARRY(((!\I1|I8|TCNT3_cout\(0))) # (!\I1|I8|TCNT3\(1)))
-- \I1|I8|TCNT3_cout[1]~COUT1_10\ = CARRY(((!\I1|I8|TCNT3_cout[0]~COUT1_8\)) # (!\I1|I8|TCNT3\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT3\(1),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin0 => \I1|I8|TCNT3_cout\(0),
	cin1 => \I1|I8|TCNT3_cout[0]~COUT1_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(1),
	cout0 => \I1|I8|TCNT3_cout\(1),
	cout1 => \I1|I8|TCNT3_cout[1]~COUT1_10\);

-- Location: LC_X48_Y20_N2
\I1|I8|TCNT3_2__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(2) = DFFEAS(\I1|I8|TCNT3\(2) $ ((((!\I1|I8|TCNT3_cout\(1))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(2) = CARRY((\I1|I8|TCNT3\(2) & ((!\I1|I8|TCNT3_cout\(1)))))
-- \I1|I8|TCNT3_cout[2]~COUT1_12\ = CARRY((\I1|I8|TCNT3\(2) & ((!\I1|I8|TCNT3_cout[1]~COUT1_10\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT3\(2),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin0 => \I1|I8|TCNT3_cout\(1),
	cin1 => \I1|I8|TCNT3_cout[1]~COUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(2),
	cout0 => \I1|I8|TCNT3_cout\(2),
	cout1 => \I1|I8|TCNT3_cout[2]~COUT1_12\);

-- Location: LC_X48_Y20_N3
\I1|I8|TCNT3_3__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(3) = DFFEAS((\I1|I8|TCNT3\(3) $ ((\I1|I8|TCNT3_cout\(2)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(3) = CARRY(((!\I1|I8|TCNT3_cout\(2)) # (!\I1|I8|TCNT3\(3))))
-- \I1|I8|TCNT3_cout[3]~COUT1_14\ = CARRY(((!\I1|I8|TCNT3_cout[2]~COUT1_12\) # (!\I1|I8|TCNT3\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT3\(3),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin0 => \I1|I8|TCNT3_cout\(2),
	cin1 => \I1|I8|TCNT3_cout[2]~COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(3),
	cout0 => \I1|I8|TCNT3_cout\(3),
	cout1 => \I1|I8|TCNT3_cout[3]~COUT1_14\);

-- Location: LC_X48_Y20_N4
\I1|I8|TCNT3_4__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(4) = DFFEAS((\I1|I8|TCNT3\(4) $ ((!\I1|I8|TCNT3_cout\(3)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(4) = CARRY(((\I1|I8|TCNT3\(4) & !\I1|I8|TCNT3_cout[3]~COUT1_14\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT3\(4),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin0 => \I1|I8|TCNT3_cout\(3),
	cin1 => \I1|I8|TCNT3_cout[3]~COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(4),
	cout => \I1|I8|TCNT3_cout\(4));

-- Location: LC_X48_Y20_N5
\I1|I8|TCNT3_5__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(5) = DFFEAS((\I1|I8|TCNT3\(5) $ ((\I1|I8|TCNT3_cout\(4)))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(5) = CARRY(((!\I1|I8|TCNT3_cout\(4)) # (!\I1|I8|TCNT3\(5))))
-- \I1|I8|TCNT3_cout[5]~COUT1_16\ = CARRY(((!\I1|I8|TCNT3_cout\(4)) # (!\I1|I8|TCNT3\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TCNT3\(5),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin => \I1|I8|TCNT3_cout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(5),
	cout0 => \I1|I8|TCNT3_cout\(5),
	cout1 => \I1|I8|TCNT3_cout[5]~COUT1_16\);

-- Location: LC_X48_Y20_N6
\I1|I8|TCNT3_6__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(6) = DFFEAS(\I1|I8|TCNT3\(6) $ ((((!(!\I1|I8|TCNT3_cout\(4) & \I1|I8|TCNT3_cout\(5)) # (\I1|I8|TCNT3_cout\(4) & \I1|I8|TCNT3_cout[5]~COUT1_16\))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )
-- \I1|I8|TCNT3_cout\(6) = CARRY((\I1|I8|TCNT3\(6) & ((!\I1|I8|TCNT3_cout\(5)))))
-- \I1|I8|TCNT3_cout[6]~COUT1_18\ = CARRY((\I1|I8|TCNT3\(6) & ((!\I1|I8|TCNT3_cout[5]~COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT3\(6),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin => \I1|I8|TCNT3_cout\(4),
	cin0 => \I1|I8|TCNT3_cout\(5),
	cin1 => \I1|I8|TCNT3_cout[5]~COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(6),
	cout0 => \I1|I8|TCNT3_cout\(6),
	cout1 => \I1|I8|TCNT3_cout[6]~COUT1_18\);

-- Location: LC_X51_Y20_N2
\I1|I8|g0_3_5_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|g0_3_5\ = (!\I1|I8|TCNT3\(6) & (!\I1|I8|TCNT3\(2) & (!\I1|I8|TCNT3\(3) & !\I1|I8|TCNT3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I8|TCNT3\(6),
	datab => \I1|I8|TCNT3\(2),
	datac => \I1|I8|TCNT3\(3),
	datad => \I1|I8|TCNT3\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|g0_3_5\);

-- Location: LC_X48_Y20_N7
\I1|I8|TCNT3_7__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TCNT3\(7) = DFFEAS(\I1|I8|TCNT3\(7) $ (((((!\I1|I8|TCNT3_cout\(4) & \I1|I8|TCNT3_cout\(6)) # (\I1|I8|TCNT3_cout\(4) & \I1|I8|TCNT3_cout[6]~COUT1_18\))))), GLOBAL(\LCLK~combout\), VCC, , \I1|I8|TICK\(1), , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	dataa => \I1|I8|TCNT3\(7),
	aclr => GND,
	ena => \I1|I8|TICK\(1),
	cin => \I1|I8|TCNT3_cout\(4),
	cin0 => \I1|I8|TCNT3_cout\(6),
	cin1 => \I1|I8|TCNT3_cout[6]~COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TCNT3\(7));

-- Location: LC_X48_Y20_N9
\I1|I8|g0_3_4_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|g0_3_4\ = (!\I1|I8|TCNT3\(1) & (!\I1|I8|TCNT3\(5) & (!\I1|I8|TCNT3\(7) & !\I1|I8|TCNT3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I8|TCNT3\(1),
	datab => \I1|I8|TCNT3\(5),
	datac => \I1|I8|TCNT3\(7),
	datad => \I1|I8|TCNT3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|g0_3_4\);

-- Location: LC_X48_Y20_N8
\I1|I8|TICK_2__Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TICK\(2) = DFFEAS(((\I1|I8|g0_3_5\ & (\I1|I8|g0_3_4\ & \I1|I8|TICK_combout\(1)))), GLOBAL(\LCLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|g0_3_5\,
	datac => \I1|I8|g0_3_4\,
	datad => \I1|I8|TICK_combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TICK\(2));

-- Location: LC_X28_Y16_N2
\I1|I8|TMONOSG_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TMONOSG\ = DFFEAS((((M1_TMONOSG & !\I1|I8|TICK\(2)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , VCC, \I0|GREEN_PULSE~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datac => VCC,
	datad => \I1|I8|TICK\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	aload => \I0|GREEN_PULSE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TMONOSG\);

-- Location: LC_X24_Y16_N5
\I1|I8|un2_green_pulse_x_cZ\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|un2_green_pulse_x\ = (((\nLRESET~combout\ & \I0|GREEN_PULSE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nLRESET~combout\,
	datad => \I0|GREEN_PULSE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I8|un2_green_pulse_x\);

-- Location: LC_X29_Y16_N2
\I1|I8|nLEDG_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|nLEDG\ = DFFEAS(((M1_nLEDG) # ((!\I1|I8|TMONOSG\ & \I1|I8|TICK\(2)))), GLOBAL(\LCLK~combout\), !\I1|I8|un2_green_pulse_x\, , , VCC, !GLOBAL(\nLRESET~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TMONOSG\,
	datac => VCC,
	datad => \I1|I8|TICK\(2),
	aclr => \I1|I8|un2_green_pulse_x\,
	aload => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|nLEDG\);

-- Location: LC_X29_Y16_N4
\I1|I8|TMONOSR_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|TMONOSR\ = DFFEAS((((M1_TMONOSR & !\I1|I8|TICK\(2)))), GLOBAL(\LCLK~combout\), GLOBAL(\nLRESET~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datad => \I1|I8|TICK\(2),
	aclr => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|TMONOSR\);

-- Location: LC_X31_Y16_N2
\I1|I8|nLEDR_Z\ : cyclone_lcell
-- Equation(s):
-- \I1|I8|nLEDR\ = DFFEAS(((M1_nLEDR) # ((!\I1|I8|TMONOSR\ & \I1|I8|TICK\(2)))), GLOBAL(\LCLK~combout\), VCC, , , VCC, !GLOBAL(\nLRESET~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \LCLK~combout\,
	datab => \I1|I8|TMONOSR\,
	datac => VCC,
	datad => \I1|I8|TICK\(2),
	aclr => GND,
	aload => \ALT_INV_nLRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|I8|nLEDR\);

-- Location: LC_X8_Y16_N4
\I0|Mux3~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux3~0_combout\ = (\I0|STARTDELAY~regout\ & (((\I0|MODE\(1) & !\I0|MODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|STARTDELAY~regout\,
	datac => \I0|MODE\(1),
	datad => \I0|MODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux3~0_combout\);

-- Location: LC_X8_Y16_N2
\I0|Mux5~0\ : cyclone_lcell
-- Equation(s):
-- \I0|Mux5~0_combout\ = (\I0|STARTDELAY~regout\ & (((\I0|MODE\(1) & \I0|MODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|STARTDELAY~regout\,
	datac => \I0|MODE\(1),
	datad => \I0|MODE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux5~0_combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\FPGA[0]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FPGA(0));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\FPGA[1]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FPGA(1));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\FPGA[2]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FPGA(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\FPGA[3]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FPGA(3));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[0]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(0));

-- Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[1]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(1));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[2]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(2));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[3]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(3));

-- Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[4]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(4));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[5]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[6]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[7]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(7));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[8]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(8));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[9]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(9));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[10]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(10));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPARE[11]~I\ : cyclone_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPARE(11));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GIN[0]~I\ : cyclone_io
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
	padio => ww_GIN(0));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GIN[1]~I\ : cyclone_io
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
	padio => ww_GIN(1));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[0]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(0));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[1]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(1));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[2]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(2));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[3]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[4]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[4]~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(4));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[5]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(5));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[6]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[7]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(7));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[8]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(8));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[9]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(9));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[10]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(10));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[11]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(11));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[12]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(12));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[13]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(13));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[14]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(14));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[15]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(15));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[16]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[16]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(16));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[17]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[17]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(17));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[18]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[18]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(18));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[19]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[19]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(19));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[20]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[20]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(20));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[21]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[21]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(21));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[22]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[22]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(22));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[23]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[23]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(23));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[24]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[24]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(24));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[25]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[25]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(25));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[26]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[26]~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(26));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[27]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[27]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(27));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[28]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[28]~28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(28));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[29]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[29]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(29));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[30]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[30]~30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(30));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\C[31]~I\ : cyclone_io
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
	datain => \I0|C_DOUT[31]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C(31));

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\DIRDDLY~I\ : cyclone_io
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
	datain => \I0|PDL_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIRDDLY);

-- Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\GOUT[0]~I\ : cyclone_io
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
	datain => \I0|GREEN_PULSE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GOUT(0));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\GOUT[1]~I\ : cyclone_io
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
	datain => \I0|ALT_INV_GREEN_PULSE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GOUT(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SELD~I\ : cyclone_io
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
	datain => \I0|ALT_INV_D_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SELD);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SELE~I\ : cyclone_io
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
	datain => \I0|ALT_INV_E_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SELE);

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SELF~I\ : cyclone_io
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
	datain => \I0|ALT_INV_F_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SELF);

-- Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SELG~I\ : cyclone_io
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
	datain => \I0|ALT_INV_G_CONTROL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SELG);

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\START[0]~I\ : cyclone_io
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
	datain => \I0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_START(0));

-- Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\START[1]~I\ : cyclone_io
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
	datain => \I0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_START(1));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\WR_DLY0~I\ : cyclone_io
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
	datain => \I1|I5|un1_wr_dly0_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WR_DLY0);

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\WR_DLY1~I\ : cyclone_io
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
	datain => \I1|I5|un1_wr_dly1_x\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WR_DLY1);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nINT~I\ : cyclone_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nINT);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nLEDG~I\ : cyclone_io
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
	datain => \I1|I8|nLEDG\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nLEDG);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nLEDR~I\ : cyclone_io
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
	datain => \I1|I8|nLEDR\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nLEDR);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOED~I\ : cyclone_io
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
	datain => \I0|D_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOED);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOEDDLY0~I\ : cyclone_io
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
	datain => \I0|PDL_CONTROL\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOEDDLY0);

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOEDDLY1~I\ : cyclone_io
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
	datain => \I0|ALT_INV_PDL_CONTROL\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOEDDLY1);

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOEE~I\ : cyclone_io
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
	datain => \I0|E_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOEE);

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOEF~I\ : cyclone_io
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
	datain => \I0|F_CONTROL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOEF);

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nOEG~I\ : cyclone_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nOEG);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nREADY~I\ : cyclone_io
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
	datain => \I1|I1|ALT_INV_nREADY_s_i\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nREADY);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nSTART[2]~I\ : cyclone_io
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
	datain => \I0|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nSTART(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\nSTART[3]~I\ : cyclone_io
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
	datain => \I0|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nSTART(3));
END structure;


