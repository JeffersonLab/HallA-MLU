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
		i_Random	: in std_logic_vector(16 downto 0);	--Number from LFSR
		i_DV		: in std_logic;				--Data valid pulse
		i_value		: in std_logic_vector(16 downto 0);	--Number to compare to

		--Output	
		o_trigger	: out std_logic := '0'				--Pulse Trigger
	);

end entity comp_logic;


architecture rtl of comp_logic is
begin
	p_Logic : process (i_DV) is
	begin
		if rising_edge(i_DV) then
			if to_integer(unsigned(i_Random)) < to_integer((unsigned(i_value))) then
				o_trigger <= '1';
			else
				o_trigger <= '0';
			end if;
		else
			o_trigger <= '0';
		end if;
	end process p_Logic;
end architecture rtl;
