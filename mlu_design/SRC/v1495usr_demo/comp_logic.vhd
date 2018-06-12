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
		i_Rand23	: in std_logic_vector(15 downto 0);	--Number from LFSR23
                i_Rand22        : in std_logic_vector(15 downto 0);     --Number from LFSR22
                i_Rand21        : in std_logic_vector(15 downto 0);     --Number from LFSR21
                i_Rand20        : in std_logic_vector(15 downto 0);     --Number from LFSR20

		i_DV		: in std_logic;				--Data valid pulse

		i_val23		: in std_logic_vector(15 downto 0);	--Number to compare to LFSR23
                i_val22         : in std_logic_vector(15 downto 0);     --Number to compare to LFSR22
                i_val21         : in std_logic_vector(15 downto 0);     --Number to compare to LFSR21
                i_val20         : in std_logic_vector(15 downto 0);     --Number to compare to LFSR20

		--Output	
		o_trig23	: out std_logic := '0';			--trigger for LFSR23
                o_trig22        : out std_logic := '0';			--trigger for LFSR22
                o_trig21        : out std_logic := '0';			--trigger for LFSR21
                o_trig20        : out std_logic := '0'	                --trigger for LFSR20
	);
end entity comp_logic;


architecture rtl of comp_logic is
begin
	p_Logic : process (i_DV) is
	begin
		if rising_edge(i_DV) then
			if to_integer(unsigned(i_Rand23)) < to_integer((unsigned(i_val23))) then
				o_trig23 <= '1';
			else
				o_trig23 <= '0';
			end if;
                        if to_integer(unsigned(i_Rand22)) < to_integer((unsigned(i_val22))) then
                                o_trig22 <= '1';
                        else
                                o_trig22 <= '0';
                        end if;
                        if to_integer(unsigned(i_Rand21)) < to_integer((unsigned(i_val21))) then
                                o_trig21 <= '1';
                        else
                                o_trig21 <= '0';
                        end if;
                        if to_integer(unsigned(i_Rand20)) < to_integer((unsigned(i_val20))) then
                                o_trig20 <= '1';
                        else
                                o_trig20 <= '0';
                        end if;

		else
			o_trig23 <= '0';
                        o_trig22 <= '0';
                        o_trig21 <= '0';
                        o_trig20 <= '0';
		end if;

	end process p_Logic;
end architecture rtl;
