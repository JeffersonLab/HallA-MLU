
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bcm_rx is
port(
	reset_n		:in std_logic;
	clock		:in std_logic;
	
	rx_in		:in std_logic;
	
	data_ch1	:out std_logic_vector(27 downto 0);
	data_ch2	:out std_logic_vector(27 downto 0); 
	data_ready	:out std_logic
	);
end bcm_rx;


architecture rtl of bcm_rx is 

constant pLIMIT :integer := 20; --	 rx period = pLIMIT/fclk
constant bLIMIT :integer := 112; --	 (number of receive bits) * 2

type reg_type is record
	idleCount	:std_logic_vector(11 downto 0);		-- idle state counter
	syncCount	:std_logic_vector(6 downto 0);		-- shift register start timer
	periodCount	:std_logic_vector(4 downto 0);		-- rx period counter
	bitCount	:std_logic_vector(7 downto 0);		-- bit counter
	shiftReg	:std_logic_vector(111 downto 0); 	-- receive shift register
	rx			:std_logic_vector(1 downto 0);		-- receive buffer
	rx_en		:std_logic;							-- receive enable
	ch1			:std_logic_vector(27 downto 0);
	ch2			:std_logic_vector(27 downto 0);
	ready		:std_logic;
end record reg_type;

signal D,Q :reg_type;
signal data :std_logic_vector(55 downto 0);
signal shift_en :std_logic;
signal start :std_logic;

begin
 
-- buffer rx in
D.rx(0) <= rx_in;
D.rx(1) <= Q.rx(0);

-- detect idle state between frames
D.idleCount <= (others => '0') when (Q.rx(1) = '1' and Q.rx(0) = '0') -- clear after start bit falling edge  
else Q.idleCount + 1 when Q.rx(1) = '1' and Q.idleCount < 1000 
else Q.idleCount;

-- wait for start of frame
start <= '1' when Q.idleCount = 1000 and D.idleCount = 0 else '0';

-- wait for first data bit
D.syncCount <= (others => '0') when Q.syncCount = 38 
else Q.syncCount + 1 when (start = '1' or Q.syncCount > 0)
else Q.syncCount;

-- receive enable
D.rx_en <= '1' when Q.syncCount = 38
else '0' when Q.bitCount = bLIMIT 
else Q.rx_en;
	
-- input shift register
D.shiftReg <= Q.shiftReg(110 downto 0) & Q.rx(1) when Q.periodCount = pLIMIT-1  
else Q.shiftReg;

-- rx rate counter (2MHz clock, baud rate=1MHz)
D.periodCount <= (others => '0') when Q.periodCount = pLIMIT-1 
else Q.periodCount + 1 when Q.rx_en = '1' and Q.bitCount < bLIMIT 
else Q.periodCount;
	
-- number of bits received
D.bitCount <= (others => '0') when Q.bitCount = bLIMIT 
else Q.bitCount + 1 when Q.rx_en = '1' and Q.periodCount = pLIMIT-1 
else Q.bitCount;

-- decoded data ( 0 = {1,0} , 1 = {0,1} ) 
G1: for n in 0 to 55 generate
	data(n) <= Q.shiftReg(2*n);
end generate G1;

D.ch1 <= data(55 downto 28) when Q.bitCount = bLIMIT else Q.ch1;
D.ch2 <= data(27 downto 0) when Q.bitCount = bLIMIT else Q.ch2;

data_ch1 <= Q.ch1;
data_ch2 <= Q.ch2;

D.ready <= '1' when Q.bitCount = bLIMIT else '0';

data_ready <= Q.ready;

-- registers
reg: process(reset_n,clock)
begin
	if (reset_n = '0') then	
		Q.idleCount 	<= (others => '0');
		Q.syncCount 	<= (others => '0');
		Q.periodCount 	<= (others => '0');
		Q.bitCount 		<= (others => '0');
		Q.shiftReg 		<= (others => '0');
		Q.rx_en			<= '0';
		Q.rx 			<= (others => '0');
		Q.ch1 			<= (others => '0');
		Q.ch2 			<= (others => '0');
		Q.ready			<= '0';
	elsif rising_edge(clock) then
		Q <= D;
	end if;
end process reg;

end rtl;
	
	
	
	
