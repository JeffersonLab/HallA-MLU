LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_misc.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.v1495pkg.all  ; 
ENTITY \trigger_tb.vhd\  IS 
END ; 
 
ARCHITECTURE \trigger_tb.vhd_arch\   OF \trigger_tb.vhd\   IS
  SIGNAL OPERATOR   :  STD_LOGIC  ; 
  SIGNAL E   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL F   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL C   :  std_logic_vector (31 downto 0)  ; 
  COMPONENT trigger  
    PORT ( 
      OPERATOR  : in STD_LOGIC ; 
      E  : in std_logic_vector (31 downto 0) ; 
      F  : out std_logic_vector (31 downto 0) ; 
      C  : out std_logic_vector (31 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : trigger  
    PORT MAP ( 
      OPERATOR   => OPERATOR  ,
      E   => E  ,
      F   => F  ,
      C   => C   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 us, Period = 0 ps
  Process
	Begin
	 OPERATOR  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 1 Range(00000000000000000000000000000000-00000000000000000000000011111111)
-- Start Time = 0 ps, End Time = 1 us, Period = 5 ns
  Process
	variable VARE  : std_logic_vector (31 downto 0);
	Begin
	 E  <= "00000000000000000000000000000000"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
