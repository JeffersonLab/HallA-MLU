library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--This module uses an 18bit LFSR generate an 18bit pseudo-random
--number, and every 18 clock cycles will transmit a data-valid pulse

entity LFSR is
  	port 
	(
    		--Clock
    		i_Clk		: in std_logic;

    		--Output
    		o_Random	: out std_logic_vector(17 downto 0);	--Number Transmitted
		o_DV		: out std_logic				--Data valid pulse

    	);
end entity LFSR;



architecture rtl of LFSR is

	constant c_Wait		: integer := 18;	--Number of clock cycles to wait between trasmissions

  	signal r_lfsr		: unsigned (17 downto 0) := "000000000000000001";	--Contains random number
	signal r_Count		: integer range 0 to c_Wait := 0;	
	signal r_State		: std_logic := '0';	--Determines calculation or transmission state
							--'0'=calculate, '1'=transmit
begin

  	p_Rand : process(i_Clk) is
  	begin
    		if rising_edge(i_Clk) then
			if r_Count < c_Wait then
          			r_lfsr <= r_lfsr(16 downto 0) & (r_lfsr(17) xor r_lfsr(10));	-- Generates New Random Number
				r_Count <= r_Count + 1;
				r_State <= '0';
			else
				r_Count <= 0;
				r_State <= '1';
			end if;

		end if;
  	end process p_Rand;

	o_DV <= r_State;
	o_Random <= std_logic_vector(r_lfsr);


end architecture rtl;