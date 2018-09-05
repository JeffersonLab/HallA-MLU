
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bcm_tx is
port(
	reset_n		:in std_logic;
	clock		:in std_logic;
	
	load		:in std_logic;
	data_ch1	:in std_logic_vector(27 downto 0);
	data_ch2	:in std_logic_vector(27 downto 0); 
	
	tx_out		:out std_logic
	);
end bcm_tx;


architecture rtl of bcm_tx is 

constant pLIMIT :integer := 25; 	--	 tx period = pLIMIT/fclk
constant bLIMIT :integer := 116; 	--	(number of bits to transmit) * 2

type reg_type is record
	periodCount	:std_logic_vector(4 downto 0);		-- tx period counter
	bitCount	:std_logic_vector(7 downto 0);		-- bit counter
	shiftReg	:std_logic_vector(115 downto 0); 	-- transmit shift register
	load		:std_logic;						 	-- load buffer 
	tx_en		:std_logic;							-- transmit enable
end record reg_type;

signal D,Q :reg_type; -- register inputs/outputs
signal data :std_logic_vector(55 downto 0); -- tx data
signal mdata :std_logic_vector(111 downto 0); -- manchester encoded tx data
signal shift_en :std_logic;	-- shift enable


begin
 
D.load <= load;

-- combine channels 1 and 2
data <= data_ch1 & data_ch2;

-- 112 bit manchester encoded data ( 0 = {1,0} , 1 = {0,1} ) 
G1: for n in 0 to 55 generate
	mdata(2*n) 		<= data(n); -- even bits
	mdata(2*n + 1) 	<= not data(n); -- odd bits
end generate G1;

shift_en <= '1' when Q.tx_en = '1' and Q.periodCount = pLIMIT-1 else '0';
	
-- output shift register
D.shiftReg <= "00" & mdata & "00" when Q.load = '1' -- transmit data + start/stop bits 
else Q.shiftReg(114 downto 0) & '1' when shift_en = '1' 
else Q.shiftReg;

tx_out <= Q.shiftReg(115); -- MSB first

D.tx_en <= '1' when Q.load = '1' else '0' when Q.bitCount = bLIMIT else Q.tx_en;

-- transmit rate counter (2MHz clock , baud rate = 1MHz)
D.periodCount <= (others => '0') when Q.periodCount = pLIMIT-1 
else Q.periodCount + 1 when Q.tx_en = '1' and Q.bitCount < bLIMIT 
else Q.periodCount;
	
-- number of bits transmitted
D.bitCount <= (others => '0') when Q.bitCount = bLIMIT 
else Q.bitCount + 1 when Q.tx_en = '1' and Q.periodCount = pLIMIT-1 
else Q.bitCount;
	
-- registers
reg: process(reset_n,clock)
begin
	if (reset_n = '0') then
		Q.periodCount 	<= (others => '0');
		Q.bitCount 		<= (others => '0');
		Q.shiftReg 		<= (others => '1');
		Q.load 			<= '0';
		Q.tx_en			<= '0';
	elsif rising_edge(clock) then
		Q <= D;
	end if;
end process reg;

end rtl;
	
	
	
	
