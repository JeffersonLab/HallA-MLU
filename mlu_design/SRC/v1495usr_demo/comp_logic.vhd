--This module compares the 17bit number from the LFSR to another value
--if the data valid pulse is on. If this condition is cleared (rand < num)
--another pulse is sent to the trigger

--Adam Kobert
--6/6/2018

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp_logic is
	port
	(
		--Clock
		i_Clk		: in std_logic;				--Clock	

		--Input
		i_Rand1		: in std_logic_vector(15 downto 0);	--Number from LFSR159
                i_Rand2        	: in std_logic_vector(15 downto 0);     --Number from LFSR161
                i_Rand3        	: in std_logic_vector(15 downto 0);     --Number from LFSR167
                i_Rand4        	: in std_logic_vector(15 downto 0);     --Number from LFSR94

		i_DV		: in std_logic;				--Data valid pulse

		i_val159	: in std_logic_vector(15 downto 0);	--Number to compare to LFSR159
                i_val161        : in std_logic_vector(15 downto 0);     --Number to compare to LFSR161
                i_val167        : in std_logic_vector(15 downto 0);     --Number to compare to LFSR167
                i_val94         : in std_logic_vector(15 downto 0);     --Number to compare to LFSR94

		--Output	
		o_trig159	: out std_logic := '0';			--trigger for LFSR159
                o_trig161       : out std_logic := '0';			--trigger for LFSR161
                o_trig167       : out std_logic := '0';			--trigger for LFSR167
                o_trig94        : out std_logic := '0'	                --trigger for LFSR94
	);
end entity comp_logic;


architecture rtl of comp_logic is

	signal r_trig159	: std_logic	:= '0';
	signal r_trig161	: std_logic	:= '0';
        signal r_trig167        : std_logic     := '0';
        signal r_trig94        	: std_logic     := '0';
begin
	p_Logic : process (i_Clk) is
	begin
		if rising_edge(i_Clk) then
			if i_DV = '1' then
				if to_integer(unsigned(i_Rand1)) < to_integer((unsigned(i_val159))) then
					r_trig159 <= '1';
				else
					r_trig159 <= '0';
				end if;
                        	if to_integer(unsigned(i_Rand2)) < to_integer((unsigned(i_val161))) then
                        	        r_trig161 <= '1';
                        	else
                        	        r_trig161 <= '0';
                        	end if;
                        	if to_integer(unsigned(i_Rand3)) < to_integer((unsigned(i_val167))) then
                        	        r_trig167 <= '1';
                        	else
                        	        r_trig167 <= '0';
                        	end if;
                        	if to_integer(unsigned(i_Rand4)) < to_integer((unsigned(i_val94))) then
                        	        r_trig94 <= '1';
                        	else
                        	        r_trig94 <= '0';
                        	end if;

			else
				r_trig159 	<= '0';
                        	r_trig161 	<= '0';
                        	r_trig167 	<= '0';
                        	r_trig94 	<= '0';
			end if;
		end if;
	end process p_Logic;

	o_trig159	<= r_trig159;
        o_trig161       <= r_trig161;
        o_trig167       <= r_trig167;
        o_trig94       	<= r_trig94;


end architecture rtl;
