--This module uses various length LFSRs generate 4 16bit pseudo-random
--numbers, and every 16 clock cycles will transmit a data-valid pulse

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
    		o_Rand1		: out std_logic_vector(15 downto 0);	--LFSR159 output
                o_Rand2		: out std_logic_vector(15 downto 0);  	--LFSR161 output
                o_Rand3        	: out std_logic_vector(15 downto 0);   	--LFSR167 output
                o_Rand4       	: out std_logic_vector(15 downto 0);    --LFSR94 output
		o_DV		: out std_logic				--Data valid pulse

    	);
end entity LFSR;


architecture rtl of LFSR is

	constant c_Wait		: integer := 16;	--Number of clock cycles to wait between trasmissions

	constant c_v1		: std_logic_vector(158 downto 0) := "100110110000111010010010000000010001100000101010110001111111110100011110010011000110101011010101111000111011011010111110100000100011110101001110111011111110000";
	constant c_v2		: std_logic_vector(160 downto 0) := "10100100100100011001001101011101001110101110000101011111100110011111010011010010000010001111010100001101001000010110111011001101100001010100010000011110101000100";
	constant c_v3		: std_logic_vector(166 downto 0) := "01111110110100010000001110000101011100100011001110111010001110001010111011010010101010001111100000001101000110001100000010110000010110101010110110111000111000100000100";
	constant c_v4		: std_logic_vector(93 downto 0) := "0010111101000110110111110001011000100010010110111010111101000111100111011010001101110010010101";

  	signal r_lfsr1		: unsigned (158 downto 0) 	:= unsigned(c_v1);	--Contains LFSR159 random number
        signal r_lfsr2         	: unsigned (160 downto 0) 	:= unsigned(c_v2); 	--Contains LFSR161 random number
        signal r_lfsr3         	: unsigned (166 downto 0) 	:= unsigned(c_v3); 	--Contains LFSR167 random number
        signal r_lfsr4         	: unsigned (93 downto 0) 	:= unsigned(c_v4); 	--Contains LFSR94 random number

	signal r_Count		: integer range 0 to c_Wait := 0;	
	signal r_State		: std_logic := '0';	--Determines calculation or transmission state
							--'0'=calculate, '1'=transmit
begin

  	p_Rand : process(i_Clk) is
  	begin
    		if rising_edge(i_Clk) then
			if r_Count < c_Wait then
          			r_lfsr1 <= r_lfsr1(157 downto 0) & (r_lfsr1(158) xor r_lfsr1(127));  	-- Generates New Random Number
                                r_lfsr2 <= r_lfsr2(159 downto 0) & (r_lfsr2(160) xor r_lfsr2(142));  	-- Generates New Random Number
                                r_lfsr3 <= r_lfsr3(165 downto 0) & (r_lfsr3(166) xor r_lfsr3(160));  	-- Generates New Random Number
                                r_lfsr4 <= r_lfsr4(92 downto 0) & (r_lfsr4(93) xor r_lfsr4(72));  	-- Generates New Random Number

				r_Count <= r_Count + 1;
				r_State <= '0';
			else
				r_Count <= 0;
				r_State <= '1';
			end if;

		end if;
  	end process p_Rand;

	o_DV <= r_State;
	o_Rand1 <= std_logic_vector(r_lfsr1(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand2 <= std_logic_vector(r_lfsr2(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand3 <= std_logic_vector(r_lfsr3(15 downto 0)); --transmits 16bit psudo-random number
        o_Rand4 <= std_logic_vector(r_lfsr4(15 downto 0)); --transmits 16bit psudo-random number

end architecture rtl;
