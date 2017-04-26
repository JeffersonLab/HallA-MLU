-- ****************************************************************************
-- Company:         CAEN SpA - Viareggio - Italy
-- Model:           V1495 -  Multipurpose Programmable Trigger Unit
-- FPGA Proj. Name: V1495USR_DEMO
-- Device:          ALTERA EP1C4F400C6
-- Author:          Luca Colombini
-- Date:            02-03-2006
-- ----------------------------------------------------------------------------
-- Module:          SPARE_IF
-- Description:     Interface entity to the Spare pins.
--                  It implements three-state buffering of spare pins.
-- ****************************************************************************

-- ############################################################################
-- Revision History:
-- ############################################################################

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY spare_if IS
  PORT(

      --*************************************************
      -- SPARE PORTS (USER SIDE)
      --*************************************************
      SPARE_OUT    : IN   std_logic_vector(11 downto 0);
      SPARE_IN     : OUT  std_logic_vector(11 downto 0);
      SPARE_DIR    : IN   std_logic_vector(11 downto 0);
      --*************************************************
      -- SPARE PORTS (I/O PAD)
      --*************************************************
      SPARE       : INOUT std_logic_vector(11 downto 0)
  );
END spare_if;

--
ARCHITECTURE rtl OF spare_if IS
BEGIN

  process(SPARE_DIR, SPARE_OUT)
  begin
    for i in 0 to 11 loop
      if SPARE_DIR(i) = '0' then
         SPARE(i)    <= SPARE_OUT(i); 
      else
         SPARE(i)    <= 'Z';
      end if;
     end loop;
  end process;

 
  SPARE_IN <= SPARE;
  
  
END rtl;

