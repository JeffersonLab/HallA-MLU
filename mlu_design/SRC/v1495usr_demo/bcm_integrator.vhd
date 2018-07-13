--This module allows for a running sum

--Adam Kobert
--7/12/18

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcm_integrator is
	port
	(
		i_data		: in std_logic_vector(31 downto 0);	--Data Input
		i_DV		: in std_logic;				--Data Valid
		i_read		: in std_logic;				--Read Command
		i_reset		: in std_logic;				--Reset Command
		i_Clk		: in std_logic;				--Clock

		o_sum		: out std_logic_vector(63 downto 0)	--Data Output
	);
end entity bcm_integrator;


architecture rtl of bcm_integrator is
	signal r_sum	: unsigned(63 downto 0)	:= to_unsigned(0, 64);	--Contains running sum


begin

	p_Add	: process(i_DV, i_reset) is
	begin

		if i_reset = '1' then
                        r_sum <= to_unsigned(0, 64);
	
		elsif i_DV = '1' then
			r_sum	<= r_sum + unsigned(i_data);
		end if;
	end process p_Add;

	p_Read	: process(i_read) is
	begin
		if i_read = '1' and i_read'event then
			o_sum <= std_logic_vector(r_sum);
			
		end if;
	end process p_Read;

end architecture rtl;
