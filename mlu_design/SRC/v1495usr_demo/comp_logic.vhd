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
begin
	p_Logic : process (i_DV) is
	begin
		if rising_edge(i_DV) then
			if to_integer(unsigned(i_Rand1)) < to_integer((unsigned(i_val159))) then
				o_trig159 <= '1';
			else
				o_trig159 <= '0';
			end if;
                        if to_integer(unsigned(i_Rand2)) < to_integer((unsigned(i_val161))) then
                                o_trig161 <= '1';
                        else
                                o_trig161 <= '0';
                        end if;
                        if to_integer(unsigned(i_Rand3)) < to_integer((unsigned(i_val167))) then
                                o_trig167 <= '1';
                        else
                                o_trig167 <= '0';
                        end if;
                        if to_integer(unsigned(i_Rand4)) < to_integer((unsigned(i_val94))) then
                                o_trig94 <= '1';
                        else
                                o_trig94 <= '0';
                        end if;

		else
			o_trig159 	<= '0';
                        o_trig161 	<= '0';
                        o_trig167 	<= '0';
                        o_trig94 	<= '0';
		end if;

	end process p_Logic;
end architecture rtl;
