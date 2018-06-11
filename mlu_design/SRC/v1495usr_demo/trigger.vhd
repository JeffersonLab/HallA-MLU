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

    		i_trig23	: in std_logic;		--Trigger for LFSR23
                i_trig22        : in std_logic;         --Trigger for LFSR22
                i_trig21        : in std_logic;         --Trigger for LFSR21
                i_trig20        : in std_logic;         --Trigger for LFSR20

    		E		: in std_logic_vector(31 downto 0);
	 
    		C		: out std_logic_vector(31 downto 0);
--    		D		: out std_logic_vector(31 downto 0);
    		F		: out std_logic_vector(31 downto 0)
  	);
end trigger;

architecture synthesis of trigger is
begin
	P_TRIG : process(i_trig23, i_trig22, i_trig21, i_trig20)
      	begin
        	F(0) <= i_trig23;
		F(1) <= i_trig22;
		F(2) <= i_trig21;
		F(3) <= i_trig20;

		F(4) <= '0';
                F(5) <= '0';
                F(6) <= '0';
                F(7) <= '0';

		F(31 downto 8) <= (others => '0');
      	end process;
end synthesis;
