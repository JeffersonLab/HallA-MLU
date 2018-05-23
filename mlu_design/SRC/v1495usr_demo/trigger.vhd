--New source file for trigger component

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_misc.all;  -- Use OR_REDUCE function

USE work.v1495pkg.all;


entity trigger is
  port(
    i_Clk			: in std_logic;
    OPERATOR			: in std_logic;
    RANDOM			: in std_logic;
    E				: in std_logic_vector(31 downto 0);
	 
    C				: out std_logic_vector(31 downto 0);
--    D				: out std_logic_vector(31 downto 0);
    F				: out std_logic_vector(31 downto 0)
  );
end trigger;

architecture synthesis of trigger is
  begin
    P_TRIG : process(i_Clk)
      begin
        F(0) <= '0';
        F(1) <= '0';
        F(2) <= '0';
        F(3) <= '0';
        F(4) <= '0';
        F(5) <= '0';
        F(6) <= RANDOM;
        F(7) <= RANDOM;
      end process;
end synthesis;
