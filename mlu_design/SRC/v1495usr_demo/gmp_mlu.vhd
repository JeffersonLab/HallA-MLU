-- ****************************************************************************
-- This version is from Bob Michaels, Jan 2014
-- The idea is to make an MLU for HRS.
-- I'm going to leave some of the original comments from the file
-- I modified.
--
-- Company:         CAEN SpA - Viareggio - Italy
-- Model:           V1495 -  Multipurpose Programmable Trigger Unit
-- FPGA Proj. Name: V1495USR_DEMO
-- Device:          ALTERA EP1C4F400C6
-- Author:          (recent) Bob Michaels 
--                  (original) Luca Colombini (l.colombini@caen.it)
-- Date:            (recent) Jan 2014;  (orig) 02-03-2006
-- ----------------------------------------------------------------------------
-- Module:          COIN_REFERENCE
-- Description:     Reference design to use the V1495 board 
--                  as a Coincidence Unit & I/O Register. 
--                  The main thing we care about for Hall A is logic of 
--                  A,B -> C   and   E -> F.

-- ****************************************************************************

-- ############################################################################
-- Revision History:
--   Date         Author          Revision             Comments
--   02 Mar 06    LC              1.0                  Creation
--   03 Feb 14    R.M.            2.0                  Bob's MLU design
-- ############################################################################

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_misc.all;  -- Use OR_REDUCE function

USE work.v1495pkg.all;

ENTITY coin_reference IS
   PORT( 
      nLBRES      : IN     std_logic;                       -- Async Reset (active low)
      LCLK        : IN     std_logic;                       -- Local Bus Clock
      --*************************************************
      -- REGISTER INTERFACE
      --*************************************************
      REG_WREN    : IN     std_logic;                       -- Write pulse (active high)
      REG_RDEN    : IN     std_logic;                       -- Read  pulse (active high)
      REG_ADDR    : IN     std_logic_vector (15 DOWNTO 0);  -- Register address
      REG_DIN     : IN     std_logic_vector (15 DOWNTO 0);  -- Data from CAEN Local Bus
      REG_DOUT    : OUT    std_logic_vector (15 DOWNTO 0);  -- Data to   CAEN Local Bus
      USR_ACCESS  : IN     std_logic;                       -- Current register access is 
                                                            -- at user address space(Active high)
      --*************************************************
      -- V1495 Front Panel Ports (PORT A,B,C,G)
      --*************************************************
      A_DIN       : IN     std_logic_vector (31 DOWNTO 0);  -- In A (32 x LVDS/ECL)
      B_DIN       : IN     std_logic_vector (31 DOWNTO 0);  -- In B (32 x LVDS/ECL) 
      C_DOUT      : OUT    std_logic_vector (31 DOWNTO 0);  -- Out C (32 x LVDS)
      G_LEV       : OUT    std_logic;                       -- Output Level Select (NIM/TTL)
      G_DIR       : OUT    std_logic;                       -- Output Enable
      G_DOUT      : OUT    std_logic_vector (1 DOWNTO 0);   -- Out G - LEMO (2 x NIM/TTL)
      G_DIN       : IN     std_logic_vector (1 DOWNTO 0);   -- In G - LEMO (2 x NIM/TTL)
      --*************************************************
      -- A395x MEZZANINES INTERFACES (PORT D,E,F)
      --*************************************************
      -- Expansion Mezzanine Identifier:
      -- x_IDCODE :
      -- 000 : A395A (32 x IN LVDS/ECL)
      -- 001 : A395B (32 x OUT LVDS)
      -- 010 : A395C (32 x OUT ECL)
      -- 011 : A395D (8  x IN/OUT NIM/TTL)
      
      -- Expansion Mezzanine Port Signal Standard Select
      -- x_LEV : 
      --    0=>TTL,1=>NIM

      -- Expansion Mezzanine Port Direction
      -- x_DIR : 
      --    0=>OUT,1=>IN

      -- In/Out D (I/O Expansion)
      D_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0);  -- D slot mezzanine Identifier
      D_LEV       : OUT    std_logic;                       -- D slot Port Signal Level Select 
      D_DIR       : OUT    std_logic;                       -- D slot Port Direction
      D_DIN       : IN     std_logic_vector (31 DOWNTO 0);  -- D slot Data In  Bus
      D_DOUT      : OUT    std_logic_vector (31 DOWNTO 0);  -- D slot Data Out Bus
      -- In/Out E (I/O Expansion)
      E_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0);  -- E slot mezzanine Identifier
      E_LEV       : OUT    std_logic;                       -- E slot Port Signal Level Select
      E_DIR       : OUT    std_logic;                       -- E slot Port Direction
      E_DIN       : IN     std_logic_vector (31 DOWNTO 0);  -- E slot Data In  Bus
      E_DOUT      : OUT    std_logic_vector (31 DOWNTO 0);  -- E slot Data Out Bus
      -- In/Out F (I/O Expansion)
      F_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0);  -- F slot mezzanine Identifier
      F_LEV       : OUT    std_logic;                       -- F slot Port Signal Level Select
      F_DIR       : OUT    std_logic;                       -- F slot Port Direction
      F_DIN       : IN     std_logic_vector (31 DOWNTO 0);  -- F slot Data In  Bus
      F_DOUT      : OUT    std_logic_vector (31 DOWNTO 0);  -- F slot Data Out Bus
      --*************************************************
      -- DELAY LINES
      --*************************************************
      -- PDL = Programmable Delay Lines  (Step = 0.25ns / FSR = 64ns)
      -- DLO = Delay Line Oscillator     (Half Period ~ 10 ns)
      -- 3D3428 PDL (PROGRAMMABLE DELAY LINE) CONFIGURATION
      PDL_WR      : OUT    std_logic;                       -- Write Enable
      PDL_SEL     : OUT    std_logic;                       -- PDL Selection (0=>PDL0, 1=>PDL1)
      PDL_READ    : IN     std_logic_vector ( 7 DOWNTO 0);  -- Read Data
      PDL_WRITE   : OUT    std_logic_vector ( 7 DOWNTO 0);  -- Write Data
      PDL_DIR     : OUT    std_logic;                       -- Direction (0=>Write, 1=>Read)
      -- DELAY I/O
      PDL0_OUT    : IN     std_logic;                       -- Signal from PDL0 Output
      PDL1_OUT    : IN     std_logic;                       -- Signal from PDL1 Output
      DLO0_OUT    : IN     std_logic;                       -- Signal from DLO0 Output
      DLO1_OUT    : IN     std_logic;                       -- Signal from DLO1 Output
      PDL0_IN     : OUT    std_logic;                       -- Signal to   PDL0 Input
      PDL1_IN     : OUT    std_logic;                       -- Signal to   PDL1 Input
      DLO0_GATE   : OUT    std_logic;                       -- DLO0 Gate (active high)
      DLO1_GATE   : OUT    std_logic;                       -- DLO1 Gate (active high)
      --*************************************************
      -- SPARE PORTS
      --*************************************************
      SPARE_OUT    : OUT   std_logic_vector(11 downto 0);   -- SPARE Data Out 
      SPARE_IN     : IN    std_logic_vector(11 downto 0);   -- SPARE Data In
      SPARE_DIR    : OUT   std_logic_vector(11 downto 0);   -- SPARE Direction (0 => OUT, 1 => IN)   
      --*************************************************
      -- LED
      --*************************************************
      RED_PULSE       : OUT    std_logic;                   -- RED   Led Pulse (active high)
      GREEN_PULSE     : OUT    std_logic                    -- GREEN Led Pulse (active high)
   );

-- Declarations

END coin_reference ;

ARCHITECTURE rtl OF coin_reference IS

-- Registers
signal A_STATUS   : std_logic_vector(31 downto 0); -- R
signal B_STATUS   : std_logic_vector(31 downto 0); -- R
signal C_STATUS   : std_logic_vector(31 downto 0); -- R
signal A_MASK     : std_logic_vector(31 downto 0); -- W
signal B_MASK     : std_logic_vector(31 downto 0); -- W
signal C_MASK     : std_logic_vector(31 downto 0); -- W
signal GATEWIDTH  : std_logic_vector(15 downto 0); -- W
signal C_CONTROL  : std_logic_vector(31 downto 0); -- W
signal D_CONTROL  : std_logic_vector(31 downto 0); -- R/W
signal E_CONTROL  : std_logic_vector(31 downto 0); -- R/W
signal F_CONTROL  : std_logic_vector(31 downto 0); -- R/W
signal G_CONTROL  : std_logic_vector(31 downto 0); -- W
signal D_DATA     : std_logic_vector(31 downto 0); -- R/W
signal E_DATA     : std_logic_vector(31 downto 0); -- R/W
signal F_DATA     : std_logic_vector(31 downto 0); -- R/W
signal MODE       : std_logic_vector(15 downto 0); -- W
signal SCRATCH    : std_logic_vector(15 downto 0); -- R/W
signal PDL_CONTROL: std_logic_vector(15 downto 0); -- W
signal PDL_DATA   : std_logic_vector(15 downto 0); -- R/W

-- Register Bits
-- MODE Register
signal DELAY_SEL  : std_logic_vector(1 downto 0); -- "00" : PDL0 => Programmable Delay Line 0
                                                  -- "01" : PDL1 => Programmable Delay Line 0
                                                  -- "10" : DLO0  => Gated Delay Line Oscillator 0
                                                  -- "11" : DLO1  => Gated Delay Line Oscillator 1
signal UNIT_MODE  : std_logic; -- '0' : Coincidence Unit; '1' : I/O Register
signal OPERATOR   : std_logic; -- '0' : AND ; '1' : OR
signal PULSE_MODE : std_logic; --

-- Local Signals
signal A     : std_logic_vector(31 downto 0);
signal B     : std_logic_vector(31 downto 0);
signal C   : std_logic_vector(31 downto 0);
signal E   : std_logic_vector(31 downto 0);
signal F   : std_logic_vector(31 downto 0);

-- Coincidences
signal COINC       : std_logic;
signal EXT_GATE    : std_logic;   
signal DLO_GATE    : std_logic;   
signal PDL_GATE    : std_logic;   
signal STARTDELAY  : std_logic;
signal STOPDELAY   : std_logic; 
signal STOP_PDL    : std_logic; 
signal STOP_DLO    : std_logic; 
signal CNT         : std_logic_vector(15 downto 0);
signal DLO_PULSE   : std_logic;
signal PDL_PULSEOUT: std_logic;
signal DLO_PULSEOUT: std_logic;

-- WAVEFORM GENERATOR
signal WVF_CNT     : std_logic_vector(4 downto 0) := (others => '0');
signal PDL_IN_i    : std_logic;
signal ENABLE_CNT  : std_logic;

BEGIN

   
   --*************************************************
   -- SPARE PORT
   --*************************************************
   -- ALL Outputs driving 0
   SPARE_OUT <= (others => '0');
   SPARE_DIR <= (others => '1'); 

   --*************************************************
   -- LED PULSES
   --*************************************************
   RED_PULSE   <= '0';
   GREEN_PULSE <= EXT_GATE;

   --*************************************************
   -- PORT SIGNAL STANDARD SELECTION                             
   --*************************************************
   -- Ports D,E,F,G signal standard set by register.
   D_LEV <= D_CONTROL(0); 
   E_LEV <= E_CONTROL(0); 
   F_LEV <= F_CONTROL(0); 

   --*************************************************
   -- PORT DIRECTION
   --*************************************************
   -- Ports D,E,F,G set by register.
   D_DIR  <= D_CONTROL(1);
   E_DIR  <= E_CONTROL(1);
   F_DIR  <= F_CONTROL(1);

   --*************************************************
   -- PORT G DIRECTION & LEVEL
   --*************************************************   
   -- Port G direction is not user controllable
   -- because we want port G to be used as a GATE output.
   -- G_CONTROL register could be used to control port G
   -- direction.
   G_LEV <= G_CONTROL(0); 
   G_DIR  <= '0';         -- Port G is Output only

   --*************************************************
   -- PORT DATA OUT
   --*************************************************
   -- Ports D,E,F are driven by registers.
   D_DOUT <= D_DATA;
   E_DOUT <= E_DATA;
	E <= E_DIN;
   F_DOUT <= F;

   --*************************************************
   -- GATE ON EXTERNAL CONNECTOR   
   --*************************************************
   -- EXT_GATE drives G connector.  
   --  Port G MUST be configured as an output.
   --               __________________________
   -- EXT_GATE  ___|                          |_______
   --               __________________________
   -- G_DOUT(0) ___|                          |_______
   --           ___                            _______
   -- G_DOUT(1)    |__________________________|
   --
   G_DOUT(0)  <= EXT_GATE;
   G_DOUT(1)  <= not(EXT_GATE);

   --*************************************************
   -- PDL DELAY LINES CONTROL
   --*************************************************
   -- PDLs can be configured by two registers:
   --  * PDL_CONTROL
   --  * PDL_DATA
   PDL_WR     <= PDL_CONTROL(0);
   PDL_DIR    <= PDL_CONTROL(1);
   PDL_SEL    <= PDL_CONTROL(2);
   PDL_WRITE  <= PDL_DATA(7 downto 0);
   --- END OF DELAY LINES CONTROLS
   
   A_STATUS <= A_DIN;
   B_STATUS <= B_DIN;
   C_STATUS <= C;
   
   --*************************************************
   -- MODE Register Bit Mapping       
   --*************************************************
   DELAY_SEL(0) <= MODE(0);
   DELAY_SEL(1) <= MODE(1);
   UNIT_MODE    <= MODE(3);
   OPERATOR     <= MODE(4);
   PULSE_MODE   <= MODE(5);
   
   
   --*************************************************
   -- Inport Port (A,B) Masking
   --*************************************************
   -- Single bits of input port A & B can be masked
   -- through a register.
   
   -- Masking of Port A 
   A <= A_DIN and A_MASK;
   
   -- Masking of Port B 
   B <= B_DIN and B_MASK;

      --**********************************************************
   -- DRIVER of output ports   C, and F
   -- using input on E.   (A and B are ignored for now)
   -- the behavior is selected by OPERATOR
   -- OPERATOR=0  is GMp default
   -- OPERETOR=1  is an alternative with traditional 2/3 trig
   -- NOTE about ECL inputs vs NIM inputs and their mapping to logic
   --    For C output, in order to have consistent logic, we need to
   --    to use "or" instead of "and", and vice versa.  And then do
   --    NOT at the end to flip it.  
   
   P_OPER_SEL : process(OPERATOR, E)
   begin
     if OPERATOR = '1' then 
        C(0) <= E(0) nand E(1);
        C(1) <= E(0) nand E(1);
        C(1) <= NOT((E(0) or E(1)) and (E(0) or E(2)) and (E(1) or E(2)));
        C(2) <= NOT((E(0) or E(1)) and (E(0) or E(3)) and (E(1) or E(3)));
        C(3) <= NOT(E(0) or E(1) or E(2));
        C(4) <= NOT(E(0) or E(1) or E(2) or E(3));
        C(5) <= NOT(E(0) and E(1) and E(2) and E(3));
        C(6) <= E(4);
        C(7) <= E(5);
        C(8) <= E(0) nand E(1);
        C(9) <= (((E(0) nand E(1)) nor (E(0) nand E(2))) nor (E(1) nand E(2)));
        C(10) <= (((E(0) nand E(1)) nor (E(0) nand E(3))) nor (E(1) nand E(3)));
        C(11) <= (E(0) nand E(1)) nand E(2);
        C(12) <= ((E(0) nand E(1)) nand E(2)) nand E(3);
        C(13) <= ((E(0) nor E(1)) nor E(2)) nor E(3);
        C(14) <= E(4);
        C(15) <= E(5);
        C(16) <= E(0) nand E(1);
        C(17) <= (((E(0) nand E(1)) nor (E(0) nand E(2))) nor (E(1) nand E(2)));
        C(18) <= (((E(0) nand E(1)) nor (E(0) nand E(3))) nor (E(1) nand E(3)));
        C(19) <= (E(0) nand E(1)) nand E(2);
        C(20) <= ((E(0) nand E(1)) nand E(2)) nand E(3);
        C(21) <= ((E(0) nor E(1)) nor E(2)) nor E(3);
        C(22) <= E(4);
        C(23) <= E(5);
        C(24) <= E(0) nand E(1);
        C(25) <= (((E(0) nand E(1)) nor (E(0) nand E(2))) nor (E(1) nand E(2)));
        C(26) <= (((E(0) nand E(1)) nor (E(0) nand E(3))) nor (E(1) nand E(3)));
        C(27) <= (E(0) nand E(1)) nand E(2);
        C(28) <= ((E(0) nand E(1)) nand E(2)) nand E(3);
        C(29) <= ((E(0) nor E(1)) nor E(2)) nor E(3);
        C(30) <= E(4);
        C(31) <= E(5);
        F(0) <= E(0) and E(1);
        F(1) <= ((E(0) and E(1) ) or (E(0) and E(2)) or (E(1) and E(2)));
        F(2) <= ((E(0) and E(1) ) or (E(0) and E(3)) or (E(1) and E(3)));
        F(3) <= E(0) and E(1) and E(2);
        F(4) <= E(0) and E(1) and E(2) and E(3);
        F(5) <= E(0) or E(1) or E(2) or E(3);
        F(6) <= E(4);
        F(7) <= E(5);
    else
        C(0) <= E(0) nand E(1);
        C(1) <= E(0) nand E(2);
        C(2) <= E(1) nand E(2);
        C(3) <= E(0) nand E(3);
        C(4) <= E(1) nand E(3);
        C(5) <= E(2) nand E(3);
        C(6) <= E(4);
        C(7) <= E(5);
        C(8) <= E(0) nand E(1);
        C(9) <= E(0) nand E(2);
        C(10) <= E(1) nand E(2);
        C(11) <= E(0) nand E(3);
        C(12) <= E(1) nand E(3);
        C(13) <= E(2) nand E(3);
        C(14) <= E(4);
        C(15) <= E(5);
        C(16) <= E(0) nand E(1);
        C(17) <= E(0) nand E(2);
        C(18) <= E(1) nand E(2);
        C(19) <= E(0) nand E(3);
        C(20) <= E(1) nand E(3);
        C(21) <= E(2) nand E(3);
        C(22) <= E(4);
        C(23) <= E(5);
        C(24) <= E(0) nand E(1);
        C(25) <= E(0) nand E(2);
        C(26) <= E(1) nand E(2);
        C(27) <= E(0) nand E(3);
        C(28) <= E(1) nand E(3);
        C(29) <= E(2) nand E(3);
        C(30) <= E(4);
        C(31) <= E(5);
        F(0) <= E(0) and E(1);
        F(1) <= E(0) and E(2);
        F(2) <= E(1) and E(2);
        F(3) <= E(0) and E(3);
        F(4) <= E(1) and E(3);
        F(5) <= E(2) and E(3);
        F(6) <= E(4);
        F(7) <= E(5);
    end if;
   end process;

   
   -- Select Port C driver based on a configuration bit.
   P_C_DRIVE: process(UNIT_MODE, C, C_MASK, C_CONTROL)
   begin
     if UNIT_MODE = '0' then
        C_DOUT <= C and C_MASK;
     else
        C_DOUT <= C_CONTROL;
     end if;
   end process;

   --**********************************************************
   -- Coincidence Processing     
   --**********************************************************
   -- COINC signal is a '1' whenever one bit of C is '1'.
   COINC <= OR_REDUCE(C);
   
   STOPDELAY <= STOP_PDL or STOP_DLO;
   
   -- A '0' to '1' transition on COINC signal 
   -- starts the delay timer.
   P_COINC: process(COINC, STOPDELAY, nLBRES)
   begin
     if STOPDELAY='1' or nLBRES='0' then
       STARTDELAY <= '0';
     elsif COINC'event and COINC = '1' then
       STARTDELAY <= '1';
     end if;
   end process;

 
   --**********************************************************
   -- Select delay timer
   --**********************************************************
   P_DLY_SEL: process(DELAY_SEL, STARTDELAY,  
                      PDL_IN_i,  PDL0_OUT, PDL1_OUT,
                      DLO0_OUT,  DLO1_OUT)
   begin
     PDL0_IN       <= '0';
     PDL1_IN       <= '0';
     DLO0_GATE     <= '0';
     DLO1_GATE     <= '0';
     DLO_PULSE     <= '0';
     PDL_PULSEOUT  <= '0';
    case DELAY_SEL is
       when "00" =>          
                      PDL0_IN       <= PDL_IN_i;
                      PDL_PULSEOUT  <= PDL_IN_i and (not PDL0_OUT);

       when "01" =>           
                      PDL1_IN       <= PDL_IN_i;
                      PDL_PULSEOUT  <= PDL_IN_i and (not PDL1_OUT);

       when "10" =>   DLO0_GATE     <= STARTDELAY;       
                      DLO_PULSE     <= DLO0_OUT;
       when "11" =>   DLO1_GATE     <= STARTDELAY;       
                      DLO_PULSE     <= DLO1_OUT; 
       when others => null;
     end case;
   end process;    

   -- DDL WAVEFORM GENERATOR
   -- Monolithic DDL (3D3428) has a minimum pulse width specs (320 ns)
   -- for optimum linearity performance.
   --
   --
   --           _____________________         
   --   _______|                     |_________________
   --            _____________________            
   --   ________|                     |_________________
   --           _            
   --   _______||_______________________________________
   
   process(nLBRES, LCLK)
   begin
     if nLBRES = '0' then
       PDL_IN_i <= '0';
       WVF_CNT  <= (others => '0');
       ENABLE_CNT <= '0';
     elsif LCLK'event and LCLK='1' then 
       if STARTDELAY = '1' then
         PDL_IN_i   <= '1';
         ENABLE_CNT <= '1';
       end if;
       if ENABLE_CNT = '1' then
          WVF_CNT <= WVF_CNT + 1;
       end if;
       if WVF_CNT = "01101" then
         PDL_IN_i <= '0';
         WVF_CNT  <= (others => '0'); 
         ENABLE_CNT <= '0';
       end if;
     end if;
   end process;


  --****************************************
  -- DLO DELAY COUNTER
  --****************************************
  -- Counts pulses out of the selected delay 
  -- line before closing the GATE signal
  P_DLO_DELAY: process(nLBRES,DLO_PULSE, STARTDELAY)
  begin
    if ((nLBRES = '0') or (STARTDELAY = '0')) then
       CNT          <= (others => '0');
       STOP_DLO     <= '0';
       DLO_PULSEOUT <= '0';
    elsif DLO_PULSE'event and DLO_PULSE = '1' then
         CNT          <= CNT + 1;
         DLO_PULSEOUT <= '1';
         if CNT = GATEWIDTH then
            STOP_DLO     <= '1';
            DLO_PULSEOUT <= '0';
         end if;
       end if;
  end process;
  
  --****************************************
  -- PDL SINGLE SHOT ACQUISITION
  --****************************************
  -- This process detects the PDL pulse and resets
  -- the Coincidence register to allow a new coincidence
  -- to be detected.
  P_PDL_DELAY: process(nLBRES,PDL_PULSEOUT, STARTDELAY)
  begin
    if ((nLBRES = '0') or (STARTDELAY = '0')) then
       STOP_PDL  <= '0';
    elsif PDL_PULSEOUT'event and PDL_PULSEOUT = '0' then
       STOP_PDL  <= '1';
    end if;
  end process;
 
  --********************************************************************************
  -- DLOx: DELAY LINE OSCILLATORS
  --   GATE DRIVER
  --********************************************************************************

   --********************************************************************************
  -- PULSE MODE = '0' (GATEWIDTH = 3):
  --   EXT_GATE leading edge synchronous with PULSE leading egde.
  --               ____
  -- COINC     ___|    |________________________________________
  --                  ___     ___     ___     _
  -- DLO_PULSE ______|   |___|   |___|   |___| |________________
  --                  _______________________
  -- DLO_GATE  ______|                       |__________________
  --
   --********************************************************************************
  -- PULSE MODE = '1' (GATEWIDTH = 3):
  --   EXT_GATE leading edge synchronous with COINC leading egde.
  --               ____
  -- COINC     ___|    |________________________________________
  --                  ___     ___     ___     _
  -- DLO_PULSE ______|   |___|   |___|   |___| |________________
  --               __________________________
  -- DLO_GATE  ___|                          |__________________
  --
  DLO_GATE <= DLO_PULSEOUT when PULSE_MODE = '0' else
              STARTDELAY;

  --********************************************************************************
  -- PDLx: PROGRAMMABLE DELAY LINES
  --   GATE DRIVER
  --   NOTE: GATEWIDTH HAS NO EFFECT IN CASE OF A PDL-BASED GATE PULSE.
  --   THE GATE PULSE WIDTH DEPENDS ON CURRENT DELAY OF THE PDL CHIP.
  --********************************************************************************

   --********************************************************************************
  -- PULSE MODE = '0' :
  --   EXT_GATE leading edge synchronous with PULSE leading egde.
  --                  ____
  -- COINC        ___|    |________________________________________
  --                     ___ 
  -- PDL_PULSEOUT ______|   |______________________________________
  --                     ___
  -- PDL_GATE     ______|   |______________________________________
  --
   --********************************************************************************
  -- PULSE MODE = '1' :
  --   EXT_GATE leading edge synchronous with COINC leading egde.
  --                  ____
  -- COINC        ___|    |________________________________________
  --                     ___ 
  -- PDL_PULSEOUT ______|   |______________________________________
  --                  ______
  -- PDL_GATE     ___|      |______________________________________
  --              
  PDL_GATE <= PDL_PULSEOUT    when PULSE_MODE = '0' else
              STARTDELAY;
  

   -- GATE PULSE
   process(DELAY_SEL, PDL_GATE, DLO_GATE)
   begin
       case DELAY_SEL is
         when "00" | "01" =>    EXT_GATE  <= PDL_GATE;         -- PDL0, PDL1
         when "10" | "11" =>    EXT_GATE  <= DLO_GATE;         -- DLO0, DLO1                   
         when others => null;
       end case;
   end process;      

   --********************************************************************************
   -- USER REGISTERS SECTION
   --********************************************************************************
   
   -- WRITE REGISTERS
   P_WREG : process(LCLK, nLBRES)
   begin
      if (nLBRES = '0') then
         A_MASK       <= X"FFFFFFFF"; -- Default : Unmasked
         B_MASK       <= X"FFFFFFFF"; -- Default : Unmasked
         C_MASK       <= X"FFFFFFFF"; -- Default : Unmasked
         GATEWIDTH    <= X"0004";     -- Default : 
         C_CONTROL    <= X"00000000";
         MODE         <= X"0008";     -- Default : I/O Register
         SCRATCH      <= X"5A5A";
         G_CONTROL    <= X"00000000"; -- Default : Enable G port / Level=TTL
         D_CONTROL    <= X"00000000"; -- Default : Enable D port / Level=TTL
         D_DATA       <= X"00000000"; 
         E_CONTROL    <= X"00000000"; -- Default : Enable E port / Level=TTL
         E_DATA       <= X"00000000"; 
         F_CONTROL    <= X"00000000"; -- Default : Enable F port / Level=TTL
         F_DATA       <= X"00000000";
         PDL_CONTROL  <= X"0001";     -- DLY Buffer DIR = DLY -> FPGA; PDL Write Enabled
         PDL_DATA     <= X"0000";
       elsif LCLK'event and LCLK = '1' then
         if (REG_WREN = '1') and (USR_ACCESS = '1') then
           case REG_ADDR is
             when A_AMASK_L   => A_MASK(15 downto 0)      <= REG_DIN;
             when A_AMASK_H   => A_MASK(31 downto 16)     <= REG_DIN;
             when A_BMASK_L   => B_MASK(15 downto 0)      <= REG_DIN;
             when A_BMASK_H   => B_MASK(31 downto 16)     <= REG_DIN;
             when A_CMASK_L   => C_MASK(15 downto 0)      <= REG_DIN;
             when A_CMASK_H   => C_MASK(31 downto 16)     <= REG_DIN;
             when A_GATEWIDTH => GATEWIDTH                <= REG_DIN;
             when A_CCTRL_L   => C_CONTROL(15 downto 0)   <= REG_DIN;
             when A_CCTRL_H   => C_CONTROL(31 downto 16)  <= REG_DIN;   
             when A_MODE      => MODE                     <= REG_DIN;
             when A_SCRATCH   => SCRATCH                  <= REG_DIN; 
             when A_GCTRL     => G_CONTROL(15 downto 0)   <= REG_DIN; 
             when A_DCTRL_L   => D_CONTROL(15 downto  0)  <= REG_DIN;
             when A_DCTRL_H   => D_CONTROL(31 downto 16)  <= REG_DIN;
             when A_DDATA_L   => D_DATA   (15 downto  0)  <= REG_DIN;
             when A_DDATA_H   => D_DATA   (31 downto 16)  <= REG_DIN;
             when A_ECTRL_L   => E_CONTROL(15 downto  0)  <= REG_DIN;
             when A_ECTRL_H   => E_CONTROL(31 downto 16)  <= REG_DIN;
             when A_EDATA_L   => E_DATA   (15 downto  0)  <= REG_DIN;
             when A_EDATA_H   => E_DATA   (31 downto 16)  <= REG_DIN;
             when A_FCTRL_L   => F_CONTROL(15 downto  0)  <= REG_DIN;
             when A_FCTRL_H   => F_CONTROL(31 downto 16)  <= REG_DIN;
             when A_FDATA_L   => F_DATA   (15 downto  0)  <= REG_DIN;
             when A_FDATA_H   => F_DATA   (31 downto 16)  <= REG_DIN;
             when A_PDL_CTRL  => PDL_CONTROL              <= REG_DIN;
             when A_PDL_DATA  => PDL_DATA                 <= REG_DIN;
             when others      => null;
           end case;
         end if;
       end if;
     end process;
   
     
  -- READ REGISTERS
  P_RREG: process(LCLK, nLBRES)
  begin
       if (nLBRES = '0') then
         REG_DOUT   <= (others => '0');
       elsif LCLK'event and LCLK = '1' then
         if (REG_RDEN = '1') and (USR_ACCESS = '1') then
           case REG_ADDR is
             when A_ASTATUS_L   => REG_DOUT   <= A_STATUS (15 downto 0);
             when A_ASTATUS_H   => REG_DOUT   <= A_STATUS (31 downto 16);
             when A_BSTATUS_L   => REG_DOUT   <= B_STATUS (15 downto 0);
             when A_BSTATUS_H   => REG_DOUT   <= B_STATUS (31 downto 16);
             when A_CSTATUS_L   => REG_DOUT   <= C_STATUS (15 downto 0);
             when A_CSTATUS_H   => REG_DOUT   <= C_STATUS (31 downto 16);
             when A_SCRATCH     => REG_DOUT   <= SCRATCH; 
             when A_DCTRL_L     => REG_DOUT   <= D_CONTROL(15 downto  0);
             when A_DCTRL_H     => REG_DOUT   <= D_CONTROL(31 downto 16);
             when A_DDATA_L     => REG_DOUT   <= D_DIN    (15 downto  0);
             when A_DDATA_H     => REG_DOUT   <= D_DIN    (31 downto 16);
             when A_ECTRL_L     => REG_DOUT   <= E_CONTROL(15 downto  0);
             when A_ECTRL_H     => REG_DOUT   <= E_CONTROL(31 downto 16);
             when A_EDATA_L     => REG_DOUT   <= E_DIN    (15 downto  0);
             when A_EDATA_H     => REG_DOUT   <= E_DIN    (31 downto 16);
             when A_FCTRL_L     => REG_DOUT   <= F_CONTROL(15 downto  0);
             when A_FCTRL_H     => REG_DOUT   <= F_CONTROL(31 downto 16);
             when A_FDATA_L     => REG_DOUT   <= F_DIN    (15 downto  0);
             when A_FDATA_H     => REG_DOUT   <= F_DIN    (31 downto 16);
             when A_REVISION    => REG_DOUT   <= REVISION;
             when A_PDL_CTRL    => REG_DOUT   <= PDL_CONTROL;
             when A_PDL_DATA    => REG_DOUT   <= X"00"  & PDL_READ;
             when A_DIDCODE     => REG_DOUT   <= X"000" & '0' & D_IDCODE;
             when A_EIDCODE     => REG_DOUT   <= X"000" & '0' & E_IDCODE;
             when A_FIDCODE     => REG_DOUT   <= X"000" & '0' & F_IDCODE;
             when others        => REG_DOUT   <= (others => '0');
           end case;
         end if;
       end if;
     end process;
    
   
END rtl;

