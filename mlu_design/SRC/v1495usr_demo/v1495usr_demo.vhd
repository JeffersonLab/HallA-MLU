-- ****************************************************************************
-- Company:              CAEN SpA - Viareggio - Italy
-- Model:                V1495 -  Multipurpose Programmable Trigger Unit
-- FPGA Proj. Name:      v1495usr_demo
-- Device:               ALTERA EP1C4F400C6
-- Author:               Luca Colombini
-- Date:                 12:50:12 10/03/2006
-- ----------------------------------------------------------------------------
-- Module:               V1495USR_DEMO
-- Description:          Top level entity of the demo design.
-- ****************************************************************************

-- ############################################################################
-- Revision History:
-- ############################################################################
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY v1495usr_demo IS
   PORT( 
      A        : IN     std_logic_vector (31 DOWNTO 0);
      B        : IN     std_logic_vector (31 DOWNTO 0);
      GIN      : IN     std_logic_vector (1 DOWNTO 0);
      IDD      : IN     std_logic_vector (2 DOWNTO 0);
      IDE      : IN     std_logic_vector (2 DOWNTO 0);
      IDF      : IN     std_logic_vector (2 DOWNTO 0);
      LCLK     : IN     std_logic;
      PULSE    : IN     std_logic_vector (3 DOWNTO 0);
      WnR      : IN     std_logic;
      nADS     : IN     std_logic;
      nBLAST   : IN     std_logic;
      nLRESET  : IN     std_logic;
      C        : OUT    std_logic_vector (31 DOWNTO 0);
      DIRDDLY  : OUT    std_logic;
      GOUT     : OUT    std_logic_vector (1 DOWNTO 0);
      SELD     : OUT    std_logic;
      SELE     : OUT    std_logic;
      SELF     : OUT    std_logic;
      SELG     : OUT    std_logic;
      START    : OUT    std_logic_vector (1 DOWNTO 0);
      WR_DLY0  : OUT    std_logic;
      WR_DLY1  : OUT    std_logic;
      nINT     : OUT    std_logic;
      nLEDG    : OUT    std_logic;
      nLEDR    : OUT    std_logic;
      nOED     : OUT    std_logic;
      nOEDDLY0 : OUT    std_logic;
      nOEDDLY1 : OUT    std_logic;
      nOEE     : OUT    std_logic;
      nOEF     : OUT    std_logic;
      nOEG     : OUT    std_logic;
      nREADY   : OUT    std_logic;
      nSTART   : OUT    std_logic_vector (3 DOWNTO 2);
      D        : INOUT  std_logic_vector (31 DOWNTO 0);
      DDLY     : INOUT  std_logic_vector (7 DOWNTO 0);
      E        : INOUT  std_logic_vector (31 DOWNTO 0);
      F        : INOUT  std_logic_vector (31 DOWNTO 0);
      FPGA     : INOUT  std_logic_vector (3 DOWNTO 0);
      LAD      : INOUT  std_logic_vector (15 DOWNTO 0);
      SPARE    : INOUT  std_logic_vector (11 DOWNTO 0)
   );

-- Declarations

END v1495usr_demo ;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_misc.all;
USE ieee.std_logic_unsigned.all;


ARCHITECTURE struct OF v1495usr_demo IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A_DIN       : std_logic_vector(31 DOWNTO 0);
   SIGNAL B_DIN       : std_logic_vector(31 DOWNTO 0);
   SIGNAL C_DOUT      : std_logic_vector(31 DOWNTO 0);
   SIGNAL DDLY_IN     : std_logic_vector(7 DOWNTO 0);
   SIGNAL DDLY_OE     : std_logic;
   SIGNAL DDLY_OUT    : std_logic_vector(7 DOWNTO 0);
   SIGNAL DLO0_GATE   : std_logic;
   SIGNAL DLO0_OUT    : std_logic;
   SIGNAL DLO1_GATE   : std_logic;
   SIGNAL DLO1_OUT    : std_logic;
   SIGNAL D_DATA_IN   : std_logic_vector(31 DOWNTO 0);
   SIGNAL D_DATA_OE   : std_logic_vector(31 DOWNTO 0);
   SIGNAL D_DATA_OUT  : std_logic_vector(31 DOWNTO 0);
   SIGNAL D_DIN       : std_logic_vector(31 DOWNTO 0);
   SIGNAL D_DIR       : std_logic;
   SIGNAL D_DOUT      : std_logic_vector(31 DOWNTO 0);
   SIGNAL D_IDCODE    : std_logic_vector( 2 DOWNTO 0);
   SIGNAL D_LEV       : std_logic;
   SIGNAL E_DATA_IN   : std_logic_vector(31 DOWNTO 0);
   SIGNAL E_DATA_OE   : std_logic_vector(31 DOWNTO 0);
   SIGNAL E_DATA_OUT  : std_logic_vector(31 DOWNTO 0);
   SIGNAL E_DIN       : std_logic_vector(31 DOWNTO 0);
   SIGNAL E_DIR       : std_logic;
   SIGNAL E_DOUT      : std_logic_vector(31 DOWNTO 0);
   SIGNAL E_IDCODE    : std_logic_vector(2 DOWNTO 0);
   SIGNAL E_LEV       : std_logic;
   SIGNAL FPGA_DIR    : std_logic_vector(3 DOWNTO 0);
   SIGNAL FPGA_IN     : std_logic_vector(3 DOWNTO 0);
   SIGNAL FPGA_OUT    : std_logic_vector(3 DOWNTO 0);
   SIGNAL F_DATA_IN   : std_logic_vector(31 DOWNTO 0);
   SIGNAL F_DATA_OE   : std_logic_vector(31 DOWNTO 0);
   SIGNAL F_DATA_OUT  : std_logic_vector(31 DOWNTO 0);
   SIGNAL F_DIN       : std_logic_vector(31 DOWNTO 0);
   SIGNAL F_DIR       : std_logic;
   SIGNAL F_DOUT      : std_logic_vector(31 DOWNTO 0);
   SIGNAL F_IDCODE    : std_logic_vector( 2 DOWNTO 0);
   SIGNAL F_LEV       : std_logic;
   SIGNAL GREEN_PULSE : std_logic;
   SIGNAL G_DIN       : std_logic_vector(1 DOWNTO 0);
   SIGNAL G_DIR       : std_logic;
   SIGNAL G_DOUT      : std_logic_vector(1 DOWNTO 0);
   SIGNAL G_LEV       : std_logic;
   SIGNAL LAD_IN      : std_logic_vector(15 DOWNTO 0);
   SIGNAL LAD_OE      : std_logic;
   SIGNAL LAD_OUT     : std_logic_vector(15 DOWNTO 0);
   SIGNAL PDL0_IN     : std_logic;
   SIGNAL PDL0_OUT    : std_logic;
   SIGNAL PDL1_IN     : std_logic;
   SIGNAL PDL1_OUT    : std_logic;
   SIGNAL PDL_DIR     : std_logic;
   SIGNAL PDL_READ    : std_logic_vector( 7 DOWNTO 0);
   SIGNAL PDL_SEL     : std_logic;
   SIGNAL PDL_WR      : std_logic;
   SIGNAL PDL_WRITE   : std_logic_vector( 7 DOWNTO 0);
   SIGNAL RED_PULSE   : std_logic;
   SIGNAL REG_ADDR    : std_logic_vector(15 DOWNTO 0);
   SIGNAL REG_DIN     : std_logic_vector(15 DOWNTO 0);
   SIGNAL REG_DOUT    : std_logic_vector(15 DOWNTO 0);
   SIGNAL REG_RDEN    : std_logic;
   SIGNAL REG_WREN    : std_logic;
   SIGNAL SPARE_DIR   : std_logic_vector(11 DOWNTO 0);
   SIGNAL SPARE_IN    : std_logic_vector(11 DOWNTO 0);
   SIGNAL SPARE_OUT   : std_logic_vector(11 DOWNTO 0);
   SIGNAL USR_ACCESS  : std_logic;


   -- Component Declarations
   COMPONENT coin_reference
   PORT (
      nLBRES      : IN     std_logic ;                     -- Async Reset (active low)
      LCLK        : IN     std_logic ;                     -- Local Bus Clock
      --*************************************************
      -- REGISTER INTERFACE
      --*************************************************
      REG_WREN    : IN     std_logic ;                     -- Write pulse (active high)
      REG_RDEN    : IN     std_logic ;                     -- Read  pulse (active high)
      REG_ADDR    : IN     std_logic_vector (15 DOWNTO 0); -- Register address
      REG_DIN     : IN     std_logic_vector (15 DOWNTO 0); -- Data from CAEN Local Bus
      REG_DOUT    : OUT    std_logic_vector (15 DOWNTO 0); -- Data TO   CAEN Local Bus
      USR_ACCESS  : IN     std_logic ;                     -- Current register access is
      -- at user address space(Active high)
      --*************************************************
      -- V1495 Front Panel Ports (PORT A,B,C,G)
      --*************************************************
      A_DIN       : IN     std_logic_vector (31 DOWNTO 0); -- In A (32 x LVDS/ECL)
      B_DIN       : IN     std_logic_vector (31 DOWNTO 0); -- In B (32 x LVDS/ECL)
      C_DOUT      : OUT    std_logic_vector (31 DOWNTO 0); -- Out C (32 x LVDS)
      G_LEV       : OUT    std_logic ;                     -- Output Level Select (NIM/TTL)
      G_DIR       : OUT    std_logic ;                     -- Output Enable
      G_DOUT      : OUT    std_logic_vector (1 DOWNTO 0);  -- Out G - LEMO (2 x NIM/TTL)
      G_DIN       : IN     std_logic_vector (1 DOWNTO 0);  -- In G - LEMO (2 x NIM/TTL)
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
      D_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0); -- D slot mezzanine Identifier
      D_LEV       : OUT    std_logic ;                     -- D slot Port Signal Standard Select
      D_DIR       : OUT    std_logic ;                     -- D slot Port Direction
      D_DIN       : IN     std_logic_vector (31 DOWNTO 0); -- D slot Data In  Bus
      D_DOUT      : OUT    std_logic_vector (31 DOWNTO 0); -- D slot Data Out Bus
      -- In/Out E (I/O Expansion)
      E_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0); -- E slot mezzanine Identifier
      E_LEV       : OUT    std_logic ;                     -- E slot Port Signal Standard Select
      E_DIR       : OUT    std_logic ;                     -- E slot Port Direction
      E_DIN       : IN     std_logic_vector (31 DOWNTO 0); -- E slot Data In  Bus
      E_DOUT      : OUT    std_logic_vector (31 DOWNTO 0); -- E slot Data Out Bus
      -- In/Out F (I/O Expansion)
      F_IDCODE    : IN     std_logic_vector ( 2 DOWNTO 0); -- F slot mezzanine Identifier
      F_LEV       : OUT    std_logic ;                     -- F slot Port Signal Standard Select
      F_DIR       : OUT    std_logic ;                     -- F slot Port Direction
      F_DIN       : IN     std_logic_vector (31 DOWNTO 0); -- F slot Data In  Bus
      F_DOUT      : OUT    std_logic_vector (31 DOWNTO 0); -- F slot Data Out Bus
      --*************************************************
      -- DELAY LINES
      --*************************************************
      -- PDL = Programmable Delay Lines  (Step = 0.25ns / FSR = 64ns)
      -- DLO = Delay Line Oscillator     (Half Period ~ 10 ns)
      -- 3D3428 PDL (PROGRAMMABLE DELAY LINE) CONFIGURATION
      PDL_WR      : OUT    std_logic ;                     -- Write Enable
      PDL_SEL     : OUT    std_logic ;                     -- PDL Selection (0=>PDL0, 1=>PDL1)
      PDL_READ    : IN     std_logic_vector ( 7 DOWNTO 0); -- Read Data
      PDL_WRITE   : OUT    std_logic_vector ( 7 DOWNTO 0); -- Write Data
      PDL_DIR     : OUT    std_logic ;                     -- Direction (0=>Write, 1=>Read)
      -- DELAY I/O
      PDL0_OUT    : IN     std_logic ;                     -- Signal from PDL0 Output
      PDL1_OUT    : IN     std_logic ;                     -- Signal from PDL1 Output
      DLO0_OUT    : IN     std_logic ;                     -- Signal from DLO0 Output
      DLO1_OUT    : IN     std_logic ;                     -- Signal from DLO1 Output
      PDL0_IN     : OUT    std_logic ;                     -- Signal TO   PDL0 Input
      PDL1_IN     : OUT    std_logic ;                     -- Signal TO   PDL1 Input
      DLO0_GATE   : OUT    std_logic ;                     -- DLO0 Gate (active high)
      DLO1_GATE   : OUT    std_logic ;                     -- DLO1 Gate (active high)
      --*************************************************
      -- SPARE PORTS
      --*************************************************
      SPARE_OUT   : OUT    std_logic_vector (11 DOWNTO 0); -- SPARE Data Out
      SPARE_IN    : IN     std_logic_vector (11 DOWNTO 0); -- SPARE Data In
      SPARE_DIR   : OUT    std_logic_vector (11 DOWNTO 0); -- SPARE Direction (0 => OUT, 1 => IN)
      --*************************************************
      -- LED
      --*************************************************
      RED_PULSE   : OUT    std_logic ;                     -- RED   Led Pulse (active high)
      GREEN_PULSE : OUT    std_logic                       -- GREEN Led Pulse (active high)
   );
   END COMPONENT;
   COMPONENT spare_if
   PORT (
      SPARE_DIR : IN     std_logic_vector (11 DOWNTO 0);
      SPARE_OUT : IN     std_logic_vector (11 DOWNTO 0);
      SPARE_IN  : OUT    std_logic_vector (11 DOWNTO 0);
      SPARE     : INOUT  std_logic_vector (11 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT tristate_if
   PORT (
      DDLY_OE    : IN     std_logic;
      DDLY_OUT   : IN     std_logic_vector ( 7 DOWNTO 0);
      D_DATA_OE  : IN     std_logic_vector (31 DOWNTO 0);
      D_DATA_OUT : IN     std_logic_vector (31 DOWNTO 0);
      E_DATA_OE  : IN     std_logic_vector (31 DOWNTO 0);
      E_DATA_OUT : IN     std_logic_vector (31 DOWNTO 0);
      FPGA_DIR   : IN     std_logic_vector ( 3 DOWNTO 0);
      FPGA_OUT   : IN     std_logic_vector ( 3 DOWNTO 0);
      F_DATA_OE  : IN     std_logic_vector (31 DOWNTO 0);
      F_DATA_OUT : IN     std_logic_vector (31 DOWNTO 0);
      LAD_OE     : IN     std_logic;
      LAD_OUT    : IN     std_logic_vector (15 DOWNTO 0);
      DDLY_IN    : OUT    std_logic_vector ( 7 DOWNTO 0);
      D_DATA_IN  : OUT    std_logic_vector (31 DOWNTO 0);
      E_DATA_IN  : OUT    std_logic_vector (31 DOWNTO 0);
      FPGA_IN    : OUT    std_logic_vector ( 3 DOWNTO 0);
      F_DATA_IN  : OUT    std_logic_vector (31 DOWNTO 0);
      LAD_IN     : OUT    std_logic_vector (15 DOWNTO 0);
      D          : INOUT  std_logic_vector (31 DOWNTO 0);
      DDLY       : INOUT  std_logic_vector ( 7 DOWNTO 0);
      E          : INOUT  std_logic_vector (31 DOWNTO 0);
      F          : INOUT  std_logic_vector (31 DOWNTO 0);
      FPGA       : INOUT  std_logic_vector ( 3 DOWNTO 0);
      LAD        : INOUT  std_logic_vector (15 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT v1495usr_hal
   PORT (
      A           : IN     std_logic_vector (31 DOWNTO 0);
      B           : IN     std_logic_vector (31 DOWNTO 0);
      C_DOUT      : IN     std_logic_vector (31 DOWNTO 0);
      DDLY_IN     : IN     std_logic_vector (7 DOWNTO 0);
      DLO0_GATE   : IN     std_logic ;
      DLO1_GATE   : IN     std_logic ;
      D_DATA_IN   : IN     std_logic_vector (31 DOWNTO 0);
      D_DIR       : IN     std_logic ;
      D_DOUT      : IN     std_logic_vector (31 DOWNTO 0);
      D_LEV       : IN     std_logic ;
      E_DATA_IN   : IN     std_logic_vector (31 DOWNTO 0);
      E_DIR       : IN     std_logic ;
      E_DOUT      : IN     std_logic_vector (31 DOWNTO 0);
      E_LEV       : IN     std_logic ;
      FPGA_IN     : IN     std_logic_vector ( 3 DOWNTO 0);
      F_DATA_IN   : IN     std_logic_vector (31 DOWNTO 0);
      F_DIR       : IN     std_logic ;
      F_DOUT      : IN     std_logic_vector (31 DOWNTO 0);
      F_LEV       : IN     std_logic ;
      GIN         : IN     std_logic_vector (1 DOWNTO 0);
      GREEN_PULSE : IN     std_logic ;
      G_DIR       : IN     std_logic ;
      G_DOUT      : IN     std_logic_vector (1 DOWNTO 0);
      G_LEV       : IN     std_logic ;
      IDD         : IN     std_logic_vector (2 DOWNTO 0);
      IDE         : IN     std_logic_vector (2 DOWNTO 0);
      IDF         : IN     std_logic_vector (2 DOWNTO 0);
      LAD_IN      : IN     std_logic_vector (15 DOWNTO 0);
      LCLK        : IN     std_logic ;
      PDL0_IN     : IN     std_logic ;
      PDL1_IN     : IN     std_logic ;
      PDL_DIR     : IN     std_logic ;
      PDL_SEL     : IN     std_logic ;
      PDL_WR      : IN     std_logic ;
      PDL_WRITE   : IN     std_logic_vector ( 7 DOWNTO 0);
      PULSE       : IN     std_logic_vector (3 DOWNTO 0);
      RED_PULSE   : IN     std_logic ;
      REG_DOUT    : IN     std_logic_vector (15 DOWNTO 0);
      WnR         : IN     std_logic ;
      nADS        : IN     std_logic ;
      nBLAST      : IN     std_logic ;
      nLRESET     : IN     std_logic ;
      A_DIN       : OUT    std_logic_vector (31 DOWNTO 0);
      B_DIN       : OUT    std_logic_vector (31 DOWNTO 0);
      C           : OUT    std_logic_vector (31 DOWNTO 0);
      DDLY_OE     : OUT    std_logic ;
      DDLY_OUT    : OUT    std_logic_vector (7 DOWNTO 0);
      DIRDDLY     : OUT    std_logic ;
      DLO0_OUT    : OUT    std_logic ;
      DLO1_OUT    : OUT    std_logic ;
      D_DATA_OE   : OUT    std_logic_vector (31 DOWNTO 0);
      D_DATA_OUT  : OUT    std_logic_vector (31 DOWNTO 0);
      D_DIN       : OUT    std_logic_vector (31 DOWNTO 0);
      D_IDCODE    : OUT    std_logic_vector ( 2 DOWNTO 0);
      E_DATA_OE   : OUT    std_logic_vector (31 DOWNTO 0);
      E_DATA_OUT  : OUT    std_logic_vector (31 DOWNTO 0);
      E_DIN       : OUT    std_logic_vector (31 DOWNTO 0);
      E_IDCODE    : OUT    std_logic_vector (2 DOWNTO 0);
      FPGA_DIR    : OUT    std_logic_vector ( 3 DOWNTO 0);
      FPGA_OUT    : OUT    std_logic_vector ( 3 DOWNTO 0);
      F_DATA_OE   : OUT    std_logic_vector (31 DOWNTO 0);
      F_DATA_OUT  : OUT    std_logic_vector (31 DOWNTO 0);
      F_DIN       : OUT    std_logic_vector (31 DOWNTO 0);
      F_IDCODE    : OUT    std_logic_vector ( 2 DOWNTO 0);
      GOUT        : OUT    std_logic_vector (1 DOWNTO 0);
      G_DIN       : OUT    std_logic_vector (1 DOWNTO 0);
      LAD_OE      : OUT    std_logic ;
      LAD_OUT     : OUT    std_logic_vector (15 DOWNTO 0);
      PDL0_OUT    : OUT    std_logic ;
      PDL1_OUT    : OUT    std_logic ;
      PDL_READ    : OUT    std_logic_vector ( 7 DOWNTO 0);
      REG_ADDR    : OUT    std_logic_vector (15 DOWNTO 0);
      REG_DIN     : OUT    std_logic_vector (15 DOWNTO 0);
      REG_RDEN    : OUT    std_logic ;
      REG_WREN    : OUT    std_logic ;
      SELD        : OUT    std_logic ;
      SELE        : OUT    std_logic ;
      SELF        : OUT    std_logic ;
      SELG        : OUT    std_logic ;
      START       : OUT    std_logic_vector (1 DOWNTO 0);
      USR_ACCESS  : OUT    std_logic ;
      WR_DLY0     : OUT    std_logic ;
      WR_DLY1     : OUT    std_logic ;
      nINT        : OUT    std_logic ;
      nLEDG       : OUT    std_logic ;
      nLEDR       : OUT    std_logic ;
      nOED        : OUT    std_logic ;
      nOEDDLY0    : OUT    std_logic ;
      nOEDDLY1    : OUT    std_logic ;
      nOEE        : OUT    std_logic ;
      nOEF        : OUT    std_logic ;
      nOEG        : OUT    std_logic ;
      nREADY      : OUT    std_logic ;
      nSTART      : OUT    std_logic_vector (3 DOWNTO 2)
   );
   END COMPONENT;


BEGIN

   -- Instance port mappings.
   I0 : coin_reference
      PORT MAP (
         nLBRES      => nLRESET,
         LCLK        => LCLK,
         REG_WREN    => REG_WREN,
         REG_RDEN    => REG_RDEN,
         REG_ADDR    => REG_ADDR,
         REG_DIN     => REG_DIN,
         REG_DOUT    => REG_DOUT,
         USR_ACCESS  => USR_ACCESS,
         A_DIN       => A_DIN,
         B_DIN       => B_DIN,
         C_DOUT      => C_DOUT,
         G_LEV       => G_LEV,
         G_DIR       => G_DIR,
         G_DOUT      => G_DOUT,
         G_DIN       => G_DIN,
         D_IDCODE    => D_IDCODE,
         D_LEV       => D_LEV,
         D_DIR       => D_DIR,
         D_DIN       => D_DIN,
         D_DOUT      => D_DOUT,
         E_IDCODE    => E_IDCODE,
         E_LEV       => E_LEV,
         E_DIR       => E_DIR,
         E_DIN       => E_DIN,
         E_DOUT      => E_DOUT,
         F_IDCODE    => F_IDCODE,
         F_LEV       => F_LEV,
         F_DIR       => F_DIR,
         F_DIN       => F_DIN,
         F_DOUT      => F_DOUT,
         PDL_WR      => PDL_WR,
         PDL_SEL     => PDL_SEL,
         PDL_READ    => PDL_READ,
         PDL_WRITE   => PDL_WRITE,
         PDL_DIR     => PDL_DIR,
         PDL0_OUT    => PDL0_OUT,
         PDL1_OUT    => PDL1_OUT,
         DLO0_OUT    => DLO0_OUT,
         DLO1_OUT    => DLO1_OUT,
         PDL0_IN     => PDL0_IN,
         PDL1_IN     => PDL1_IN,
         DLO0_GATE   => DLO0_GATE,
         DLO1_GATE   => DLO1_GATE,
         SPARE_OUT   => SPARE_OUT,
         SPARE_IN    => SPARE_IN,
         SPARE_DIR   => SPARE_DIR,
         RED_PULSE   => RED_PULSE,
         GREEN_PULSE => GREEN_PULSE
      );
   I2 : spare_if
      PORT MAP (
         SPARE_OUT => SPARE_OUT,
         SPARE_IN  => SPARE_IN,
         SPARE_DIR => SPARE_DIR,
         SPARE     => SPARE
      );
   I3 : tristate_if
      PORT MAP (
         D_DATA_IN  => D_DATA_IN,
         D_DATA_OE  => D_DATA_OE,
         D_DATA_OUT => D_DATA_OUT,
         E_DATA_IN  => E_DATA_IN,
         E_DATA_OE  => E_DATA_OE,
         E_DATA_OUT => E_DATA_OUT,
         F_DATA_IN  => F_DATA_IN,
         F_DATA_OE  => F_DATA_OE,
         F_DATA_OUT => F_DATA_OUT,
         LAD_IN     => LAD_IN,
         LAD_OE     => LAD_OE,
         LAD_OUT    => LAD_OUT,
         DDLY_OE    => DDLY_OE,
         DDLY_OUT   => DDLY_OUT,
         DDLY_IN    => DDLY_IN,
         FPGA_IN    => FPGA_IN,
         FPGA_OUT   => FPGA_OUT,
         FPGA_DIR   => FPGA_DIR,
         D          => D,
         DDLY       => DDLY,
         E          => E,
         F          => F,
         LAD        => LAD,
         FPGA       => FPGA
      );
   I1 : v1495usr_hal
      PORT MAP (
         A           => A,
         B           => B,
         C_DOUT      => C_DOUT,
         DDLY_IN     => DDLY_IN,
         DLO0_GATE   => DLO0_GATE,
         DLO1_GATE   => DLO1_GATE,
         D_DATA_IN   => D_DATA_IN,
         D_DIR       => D_DIR,
         D_DOUT      => D_DOUT,
         D_LEV       => D_LEV,
         E_DATA_IN   => E_DATA_IN,
         E_DIR       => E_DIR,
         E_DOUT      => E_DOUT,
         E_LEV       => E_LEV,
         FPGA_IN     => FPGA_IN,
         F_DATA_IN   => F_DATA_IN,
         F_DIR       => F_DIR,
         F_DOUT      => F_DOUT,
         F_LEV       => F_LEV,
         GIN         => GIN,
         GREEN_PULSE => GREEN_PULSE,
         G_DIR       => G_DIR,
         G_DOUT      => G_DOUT,
         G_LEV       => G_LEV,
         IDD         => IDD,
         IDE         => IDE,
         IDF         => IDF,
         LAD_IN      => LAD_IN,
         LCLK        => LCLK,
         PDL0_IN     => PDL0_IN,
         PDL1_IN     => PDL1_IN,
         PDL_DIR     => PDL_DIR,
         PDL_SEL     => PDL_SEL,
         PDL_WR      => PDL_WR,
         PDL_WRITE   => PDL_WRITE,
         PULSE       => PULSE,
         RED_PULSE   => RED_PULSE,
         REG_DOUT    => REG_DOUT,
         WnR         => WnR,
         nADS        => nADS,
         nBLAST      => nBLAST,
         nLRESET     => nLRESET,
         A_DIN       => A_DIN,
         B_DIN       => B_DIN,
         C           => C,
         DDLY_OE     => DDLY_OE,
         DDLY_OUT    => DDLY_OUT,
         DIRDDLY     => DIRDDLY,
         DLO0_OUT    => DLO0_OUT,
         DLO1_OUT    => DLO1_OUT,
         D_DATA_OE   => D_DATA_OE,
         D_DATA_OUT  => D_DATA_OUT,
         D_DIN       => D_DIN,
         D_IDCODE    => D_IDCODE,
         E_DATA_OE   => E_DATA_OE,
         E_DATA_OUT  => E_DATA_OUT,
         E_DIN       => E_DIN,
         E_IDCODE    => E_IDCODE,
         FPGA_DIR    => FPGA_DIR,
         FPGA_OUT    => FPGA_OUT,
         F_DATA_OE   => F_DATA_OE,
         F_DATA_OUT  => F_DATA_OUT,
         F_DIN       => F_DIN,
         F_IDCODE    => F_IDCODE,
         GOUT        => GOUT,
         G_DIN       => G_DIN,
         LAD_OE      => LAD_OE,
         LAD_OUT     => LAD_OUT,
         PDL0_OUT    => PDL0_OUT,
         PDL1_OUT    => PDL1_OUT,
         PDL_READ    => PDL_READ,
         REG_ADDR    => REG_ADDR,
         REG_DIN     => REG_DIN,
         REG_RDEN    => REG_RDEN,
         REG_WREN    => REG_WREN,
         SELD        => SELD,
         SELE        => SELE,
         SELF        => SELF,
         SELG        => SELG,
         START       => START,
         USR_ACCESS  => USR_ACCESS,
         WR_DLY0     => WR_DLY0,
         WR_DLY1     => WR_DLY1,
         nINT        => nINT,
         nLEDG       => nLEDG,
         nLEDR       => nLEDR,
         nOED        => nOED,
         nOEDDLY0    => nOEDDLY0,
         nOEDDLY1    => nOEDDLY1,
         nOEE        => nOEE,
         nOEF        => nOEF,
         nOEG        => nOEG,
         nREADY      => nREADY,
         nSTART      => nSTART
      );

END struct;
