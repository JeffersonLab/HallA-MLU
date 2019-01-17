--This module allows for a running sum
--Adam Kobert
--7/12/18
--
--Put everything in i_Clk domain (except for asychronous reset) -- Randall Evan McClellan -- 2018-09-07

--TODO--
-- put everthing in the same clock domain -- REM -- 2018-08-23

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcm_integrator is
	port
	(
		i_data		: in std_logic_vector(27 downto 0);	--Data Input
		i_DV		: in std_logic;				--Data Valid
		i_read		: in std_logic;				--Read Command
		i_reset		: in std_logic;				--Reset Command
		i_Clk		: in std_logic;				--Clock

		o_sum		: out std_logic_vector(63 downto 0);	--Sum Output
		o_current	: out std_logic_vector(31 downto 0)	--Current Output
	);
end entity bcm_integrator;


architecture rtl of bcm_integrator is
	signal r_sum		: unsigned(63 downto 0)	:= to_unsigned(0, 64);	--Contains running sum
	signal r_current	: unsigned(31 downto 0)	:= to_unsigned(0, 32);	--Contains latest current
	signal r_old_DV		: std_logic;
	signal r_old_read	: std_logic;

begin

	p_edges	: process(i_Clk) is
	begin
		if rising_edge(i_Clk) then
			r_old_DV <= i_DV;
			r_old_read <= i_read;
		end if;
	end process p_edges;

	p_Add	: process(i_Clk, i_reset) is
	begin
		if i_reset = '1' then
                        r_sum <= to_unsigned(0, 64);
		elsif rising_edge(i_Clk) then
			if (r_old_DV = '0' and i_DV = '1') then
				r_sum	<= r_sum + unsigned(i_data);
				r_current <= to_unsigned(0,4) & unsigned(i_data);
			end if;
		end if;
	end process p_Add;

	p_Read	: process(i_Clk, i_reset) is
	begin
		if i_reset = '1' then
                        o_sum <= std_logic_vector(to_unsigned(0, 64));
		elsif rising_edge(i_Clk) then
			if (r_old_read = '0' and i_read = '1') then
				o_sum <= std_logic_vector(r_sum);
				o_current <= std_logic_vector(r_current);
			end if;
		end if;
	end process p_Read;

end architecture rtl;
