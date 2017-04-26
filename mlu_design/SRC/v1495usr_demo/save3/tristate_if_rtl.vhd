-- ****************************************************************************
-- Company:         CAEN SpA - Viareggio - Italy
-- Model:           V1495 -  Multipurpose Programmable Trigger Unit
-- FPGA Proj. Name: V1495USR_DEMO
-- Device:          ALTERA EP1C4F400C6
-- Author:          Luca Colombini
-- Date:            02-03-2006
-- ----------------------------------------------------------------------------
-- Module:          TRISTATE_IF
-- Description:     Three-state buffers on bidirectional bus. 
-- ****************************************************************************

-- ############################################################################
-- Revision History:
-- ############################################################################

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY tristate_if IS
   PORT( 
      --*************************************************
      -- DATA & CONTROLS (FROM V1495HAL)
      --************************************************* 
      -- D MEZZZANINE DATA BUS
      D_DATA_IN   : OUT   std_logic_vector (31 DOWNTO 0);
      D_DATA_OE   : IN    std_logic_vector (31 DOWNTO 0);
      D_DATA_OUT  : IN    std_logic_vector (31 DOWNTO 0);
      -- E MEZZZANINE DATA BUS
      E_DATA_IN   : OUT   std_logic_vector (31 DOWNTO 0);
      E_DATA_OE   : IN    std_logic_vector (31 DOWNTO 0);
      E_DATA_OUT  : IN    std_logic_vector (31 DOWNTO 0);
      -- F MEZZZANINE DATA BUS
      F_DATA_IN   : OUT   std_logic_vector (31 DOWNTO 0);
      F_DATA_OE   : IN    std_logic_vector (31 DOWNTO 0);
      F_DATA_OUT  : IN    std_logic_vector (31 DOWNTO 0);
      -- LOCAL BUS DATA BUS
      LAD_IN      : OUT   std_logic_vector (15 DOWNTO 0);
      LAD_OE      : IN    std_logic;
      LAD_OUT     : IN    std_logic_vector (15 DOWNTO 0);
      -- PDL DELAY LINES PARALLEL PROGRAMMING DATA BUS
      DDLY_OE     : IN    std_logic;
      DDLY_OUT    : IN    std_logic_vector ( 7 DOWNTO 0);
      DDLY_IN     : OUT   std_logic_vector ( 7 DOWNTO 0);
      -- FPGA LINK
      FPGA_IN     : OUT   std_logic_vector ( 3 downto 0);
      FPGA_OUT    : IN    std_logic_vector ( 3 downto 0);
      FPGA_DIR    : IN    std_logic_vector ( 3 downto 0);
      --*************************************************
      -- BIDIR PORTS
      --*************************************************      
      D           : INOUT  std_logic_vector (31 DOWNTO 0);
      DDLY        : INOUT  std_logic_vector ( 7 DOWNTO 0);
      E           : INOUT  std_logic_vector (31 DOWNTO 0);
      F           : INOUT  std_logic_vector (31 DOWNTO 0);
      LAD         : INOUT  std_logic_vector (15 DOWNTO 0);
      FPGA        : INOUT  std_logic_vector ( 3 downto 0)
   );
END tristate_if;

--
ARCHITECTURE rtl OF tristate_if IS
BEGIN

  D_DATA_IN <= D;
  E_DATA_IN <= E;
  F_DATA_IN <= F;
  LAD_IN    <= LAD;
  DDLY_IN   <= DDLY;
  FPGA_IN   <= FPGA;
  
  process(D_DATA_OE, D_DATA_OUT)
  begin
    for i in 0 to 31 loop
      if D_DATA_OE(i) = '1' then
         D(i)    <= D_DATA_OUT(i); 
      else
         D(i)    <= 'Z';
      end if;
     end loop;
  end process;

  process(E_DATA_OE, E_DATA_OUT)
  begin
    for i in 0 to 31 loop
      if E_DATA_OE(i) = '1' then
         E(i)    <= E_DATA_OUT(i); 
      else
         E(i)    <= 'Z';
      end if;
     end loop;
  end process;

  process(F_DATA_OE, F_DATA_OUT)
  begin
    for i in 0 to 31 loop
      if F_DATA_OE(i) = '1' then
         F(i)    <= F_DATA_OUT(i); 
      else
         F(i)    <= 'Z';
      end if;
     end loop;
  end process;

  process(FPGA_DIR, FPGA_OUT)
  begin
    for i in 0 to 3 loop
      if FPGA_DIR(i) = '1' then
         FPGA(i)    <= FPGA_OUT(i); 
      else
         FPGA(i)    <= 'Z';
      end if;
     end loop;
  end process;

  
  LAD  <= LAD_OUT    when LAD_OE    = '1' else (others => 'Z');
  DDLY <= DDLY_OUT   when DDLY_OE   = '1' else (others => 'Z'); 
  
END rtl;

