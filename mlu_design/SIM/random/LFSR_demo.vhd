library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.numeric_std.all;

entity LFSR is
  port (
    --Clock
    i_Clk : in std_logic;

    --Output Bit
    o_Random : out std_logic := '0';

    --Output delay and Go Count
    o_Delay : out unsigned (4 downto 0);
    o_Go_Count : out std_logic

    );
end entity LFSR;

--Clock rate is 25 MHz
--Baud rate is 115200
--therefore, there are ~217 clock cycles per bit in the bit stream
--therefore, between Start bit leading edge and mid first data bit there are ~325 clock cycles

--  0     217   434   651   868   1085  1302  1736  1953  2170  2387
--__       _____ _____ _____ _____ _____ _____ _____ _____ _____
--  \_____X_____X_____X_____X_____X_____X_____X_____X_____X   
--     S     0     1     2     3     4     5     6     7     S


architecture rtl of LFSR is

  signal r_lfsr : unsigned (17 downto 0) := "110011001101101010";
--  signal r_Delay : unsigned (14 downto 0) := (others => '0');
--  signal r_Clk_Cnt : unsigned (15 downto 0) := (others => '0');
--  signal r_lfsr : unsigned (4 downto 0) := "10101";
  signal r_Delay : unsigned (4 downto 0) := (others => '0');
  signal r_Clk_Cnt : unsigned (5 downto 0) := (others => '0');

  signal r_Calc_Delay : std_logic := '1';
  signal r_Set_Delay : std_logic := '0';
  signal r_Go_Count : std_logic := '0';



begin

  p_Delay : process(i_Clk) is
    variable myline : line;
  begin
    o_Delay <= r_Delay;
    o_Go_Count <= r_Go_Count;
    if rising_edge(i_Clk) then
      if r_Calc_Delay = '1' then
        r_lfsr <= r_lfsr(16 downto 0) & (r_lfsr(17) xor r_lfsr(10));
        r_Calc_Delay <= '0';
        r_Set_Delay <= '1';
        o_Random <= '0';
      end if;
      if r_Set_Delay = '1' then
        -- Perhaps using prime-distributed pickoff points will reduce the correlation between successive delays?
        -- Note: just because the LFSR loops at bit18 doesn't mean it has to cut off at bit 18
        --       we could keep a very long LFSR in order to construct a longer, prime-separated delay
--        r_Delay <= r_lfsr(0) & r_lfsr(2) & r_lfsr(5) & r_lfsr(10) & r_lfsr(17);     --delay is set by prime-separated LFSR bits
--        r_Delay <= r_lfsr(0) & r_lfsr(17) & r_lfsr(2) & r_lfsr(10) & r_lfsr(5);     --delay is set by scrambled prime-separated LFSR bits
--        r_Delay <= r_lfsr(0) & r_lfsr(1) & r_lfsr(2) & r_lfsr(3) & r_lfsr(4);     --delay is set by descending LFSR bits
        r_Delay <= r_lfsr(0) & r_lfsr(2) & r_lfsr(4) & r_lfsr(6) & r_lfsr(8);     --delay is set by every-other bits
--        r_Delay <= r_lfsr(4 downto 0);     --delay is set by adjacent LFSR bits
        r_Set_Delay <= '0';
        r_Go_Count <= '1';
      end if;
      if r_Go_Count = '1' then
        if r_Clk_Cnt < r_Delay then
          r_Clk_Cnt <= r_Clk_Cnt + 1;
        else
          write(myline, to_integer(r_Delay));
          writeline(output, myline);
          o_Random <= '1';
          r_Clk_Cnt <= "000000";
          r_Calc_Delay <= '1';
          r_Go_Count <= '0';
        end if;
      end if;
    end if;
  end process p_Delay;

end architecture rtl;
