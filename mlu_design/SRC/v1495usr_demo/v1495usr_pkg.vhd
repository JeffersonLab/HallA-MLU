-- ****************************************************************************
-- Company:         CAEN SpA - Viareggio - Italy
-- Model:           V1495 -  Multipurpose Programmable Trigger Unit
-- FPGA Proj. Name: V1495USR_DEMO
-- Device:          ALTERA EP1C4F400C6
-- Author:          Luca Colombini
-- Date:            02-03-2006
-- ----------------------------------------------------------------------------
-- Module:          V1495USR_PKG
-- Description:     Package that implements global constants (ID Codes, 
--                  Register Addresses).
-- ****************************************************************************

-- ############################################################################
-- Revision History:
-- ############################################################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE v1495pkg IS
   
-- Constants

-- DEMO Revision
constant REVISION : std_logic_vector(15 downto 0) := X"0207";

-- Expansion Mezzanine Type ID-Codes
constant A395A : std_logic_vector(2 downto 0) := "000"; -- 32CH IN LVDS/ECL INTERFACE
constant A395B : std_logic_vector(2 downto 0) := "001"; -- 32CH OUT LVDS INTERFACE
constant A395C : std_logic_vector(2 downto 0) := "010"; -- 32CH OUT ECL INTERFACE
constant A395D : std_logic_vector(2 downto 0) := "011"; -- 8CH I/O SELECT NIM/TTL INTER

-- Register Address Map
constant A_ASTATUS_L  : std_logic_vector(15 downto 0) := X"1000";
constant A_ASTATUS_H  : std_logic_vector(15 downto 0) := X"1002";
constant A_BSTATUS_L  : std_logic_vector(15 downto 0) := X"1004";
constant A_BSTATUS_H  : std_logic_vector(15 downto 0) := X"1006";
constant A_CSTATUS_L  : std_logic_vector(15 downto 0) := X"1008";
constant A_CSTATUS_H  : std_logic_vector(15 downto 0) := X"100A";
constant A_AMASK_L    : std_logic_vector(15 downto 0) := X"100C";
constant A_AMASK_H    : std_logic_vector(15 downto 0) := X"100E";
constant A_BMASK_L    : std_logic_vector(15 downto 0) := X"1010";
constant A_BMASK_H    : std_logic_vector(15 downto 0) := X"1012";
constant A_CMASK_L    : std_logic_vector(15 downto 0) := X"1014";
constant A_CMASK_H    : std_logic_vector(15 downto 0) := X"1016";
constant A_GATEWIDTH  : std_logic_vector(15 downto 0) := X"1018";
constant A_CCTRL_L    : std_logic_vector(15 downto 0) := X"101A";
constant A_CCTRL_H    : std_logic_vector(15 downto 0) := X"101C";
constant A_MODE       : std_logic_vector(15 downto 0) := X"101E";
constant A_SCRATCH    : std_logic_vector(15 downto 0) := X"1020";
constant A_GCTRL      : std_logic_vector(15 downto 0) := X"1022";
constant A_DCTRL_L    : std_logic_vector(15 downto 0) := X"1024";
constant A_DCTRL_H    : std_logic_vector(15 downto 0) := X"1026";
constant A_DDATA_L    : std_logic_vector(15 downto 0) := X"1028";
constant A_DDATA_H    : std_logic_vector(15 downto 0) := X"102A";
constant A_ECTRL_L    : std_logic_vector(15 downto 0) := X"102C";
constant A_ECTRL_H    : std_logic_vector(15 downto 0) := X"102E";
constant A_EDATA_L    : std_logic_vector(15 downto 0) := X"1030";
constant A_EDATA_H    : std_logic_vector(15 downto 0) := X"1032";
constant A_FCTRL_L    : std_logic_vector(15 downto 0) := X"1034";
constant A_FCTRL_H    : std_logic_vector(15 downto 0) := X"1036";
constant A_FDATA_L    : std_logic_vector(15 downto 0) := X"1038";
constant A_FDATA_H    : std_logic_vector(15 downto 0) := X"103A";
constant A_REVISION   : std_logic_vector(15 downto 0) := X"103C";
constant A_PDL_CTRL   : std_logic_vector(15 downto 0) := X"103E";
constant A_PDL_DATA   : std_logic_vector(15 downto 0) := X"1040";
constant A_DIDCODE    : std_logic_vector(15 downto 0) := X"1042";
constant A_EIDCODE    : std_logic_vector(15 downto 0) := X"1044";
constant A_FIDCODE    : std_logic_vector(15 downto 0) := X"1046";
constant A_COUNT_L    : std_logic_vector(15 downto 0) := X"1048";
constant A_COUNT_H    : std_logic_vector(15 downto 0) := X"104A";

--User defined comparison number addresses
constant A_VAL159	: std_logic_vector(15 downto 0) := X"104C";
constant A_VAL161       : std_logic_vector(15 downto 0) := X"104E";
constant A_VAL167       : std_logic_vector(15 downto 0) := X"1050";
constant A_VAL94        : std_logic_vector(15 downto 0) := X"1052";

--32bit output

constant A_BCM_L	: std_logic_vector(15 downto 0) := X"1054";
constant A_BCM_H	: std_logic_vector(15 downto 0) := X"1056";

END v1495pkg;
