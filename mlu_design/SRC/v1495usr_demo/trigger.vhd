--When this module recieves the trigger signal, it outputs through F

--Adam Kobert
--6/8/18

LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE work.v1495pkg.all;


entity trigger is
  port(
    i_Clk			: in std_logic;
    OPERATOR			: in std_logic;
    i_trigger			: in std_logic;
    E				: in std_logic_vector(31 downto 0);
	 
    C				: out std_logic_vector(31 downto 0);
--    D				: out std_logic_vector(31 downto 0);
    F				: out std_logic_vector(31 downto 0)
  );
end trigger;

architecture synthesis of trigger is
  begin
    P_TRIG : process(i_trigger)
      begin
        F(0) <= '0';
        F(1) <= '0';
        F(2) <= '0';
        F(3) <= '0';
        F(4) <= '0';
        F(5) <= '0';
        F(6) <= i_trigger;
        F(7) <= i_trigger;
      end process;
end synthesis;
