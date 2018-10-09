--When this module recieves the trigger signal, it outputs through F

--Adam Kobert
--6/8/18

LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE work.v1495pkg.all;


entity trigger is
  	port
	(
    		i_Clk		: in std_logic;
    		OPERATOR	: in std_logic;

    		i_trig159	: in std_logic;		--Trigger for LFSR159
                i_trig161       : in std_logic;         --Trigger for LFSR161
                i_trig167       : in std_logic;         --Trigger for LFSR167
                i_trig94        : in std_logic;         --Trigger for LFSR94

		bcm_debug1	: in std_logic;
		bcm_debug2	: in std_logic;
		bcm_debug3	: in std_logic;
		bcm_debug4	: in std_logic;

    		E		: in std_logic_vector(31 downto 0);
	 
    		C		: out std_logic_vector(31 downto 0);
--    		D		: out std_logic_vector(31 downto 0);
    		F		: out std_logic_vector(31 downto 0)
  	);
end trigger;

architecture synthesis of trigger is
begin
	P_TRIG : process(i_trig159, i_trig161, i_trig167, i_trig94)
      	begin
        	F(0) <= i_trig94;
		F(1) <= i_trig159;
		F(2) <= i_trig161;
		F(3) <= i_trig167;

		F(4) <= bcm_debug1;
                F(5) <= bcm_debug2;
                F(6) <= bcm_debug3;
                F(7) <= bcm_debug4;

		F(31 downto 8) <= (others => '0');
      	end process;
end synthesis;
