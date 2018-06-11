--This module uses an 18bit LFSR generate an 17bit pseudo-random
--number, and every 18 clock cycles will transmit a data-valid pulse

--Adam Kobert
--6/6/2018

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LFSR is
  	port 
	(
    		--Clock
    		i_Clk		: in std_logic;

    		--Output
    		o_Rand23	: out std_logic_vector(15 downto 0);	--LFSR23 output
                o_Rand22        : out std_logic_vector(15 downto 0);    --LFSR22 output
                o_Rand21        : out std_logic_vector(15 downto 0);    --LFSR21 output
                o_Rand20        : out std_logic_vector(15 downto 0);    --LFSR20 output
		o_DV		: out std_logic				--Data valid pulse

    	);
end entity LFSR;


architecture rtl of LFSR is

	constant c_Wait		: integer := 16;	--Number of clock cycles to wait between trasmissions

  	signal r_lfsr23		: unsigned (22 downto 0) := to_unsigned(1, 23);	--Contains LFSR23 random number
        signal r_lfsr22         : unsigned (22 downto 0) := to_unsigned(1, 23); --Contains LFSR23 random number
        signal r_lfsr21         : unsigned (22 downto 0) := to_unsigned(1, 23); --Contains LFSR23 random number
        signal r_lfsr20         : unsigned (22 downto 0) := to_unsigned(1, 23); --Contains LFSR23 random number

	signal r_Count		: integer range 0 to c_Wait := 0;	
	signal r_State		: std_logic := '0';	--Determines calculation or transmission state
							--'0'=calculate, '1'=transmit
begin

  	p_Rand : process(i_Clk) is
  	begin
    		if rising_edge(i_Clk) then
			if r_Count < c_Wait then
          			r_lfsr23 <= r_lfsr23(21 downto 0) & (r_lfsr23(22) xor r_lfsr23(17));  -- Generates New Random Number
                                r_lfsr22 <= r_lfsr22(21 downto 0) & (r_lfsr22(21) xor r_lfsr22(20));  -- Generates New Random Number
                                r_lfsr21 <= r_lfsr21(21 downto 0) & (r_lfsr21(20) xor r_lfsr21(18));  -- Generates New Random Number
                                r_lfsr20 <= r_lfsr20(21 downto 0) & (r_lfsr20(19) xor r_lfsr20(16));  -- Generates New Random Number

				r_Count <= r_Count + 1;
				r_State <= '0';
			else
				r_Count <= 0;
				r_State <= '1';
			end if;

		end if;
  	end process p_Rand;

	o_DV <= r_State;
	o_Rand23 <= std_logic_vector(r_lfsr23(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand22 <= std_logic_vector(r_lfsr22(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand21 <= std_logic_vector(r_lfsr21(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand20 <= std_logic_vector(r_lfsr20(15 downto 0)); --transmits 16bit psudo-random number

end architecture rtl;
