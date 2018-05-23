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
--5 LFSRs, of lengths 17, 11, 7, 5, 3
--5 LFSRs, of lengths 18, 17, 15, 11, 10
  signal r_lfsr1 : unsigned (17 downto 0) := "110011001101101011";
  signal r_lfsr2 : unsigned (16 downto 0) := "11001100110110101";
  signal r_lfsr3 : unsigned (14 downto 0) := "110011001101101";
  signal r_lfsr4 : unsigned (10 downto 0) := "11001100110";
  signal r_lfsr5 : unsigned (9 downto 0)  := "1100110011";
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
        r_lfsr1 <= r_lfsr1(16 downto 0) & (r_lfsr1(17) xor r_lfsr1(10));
        r_lfsr2 <= r_lfsr2(15 downto 0) & (r_lfsr2(16) xor r_lfsr2(13));
        r_lfsr3 <= r_lfsr3(13 downto 0) & (r_lfsr3(14) xor r_lfsr3(13));
        r_lfsr4 <= r_lfsr4(9 downto 0) & (r_lfsr4(10) xor r_lfsr4(8));
        r_lfsr5 <= r_lfsr5(8 downto 0) & (r_lfsr5(9) xor r_lfsr5(6));
        r_Calc_Delay <= '0';
        r_Set_Delay <= '1';
        o_Random <= '0';
      end if;
      if r_Set_Delay = '1' then
        r_Delay <= r_lfsr1(0) & r_lfsr2(0) & r_lfsr3(0) & r_lfsr4(0) & r_lfsr5(0);
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
