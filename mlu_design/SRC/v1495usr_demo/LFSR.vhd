library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.numeric_std.all;

--This module uses an 18bit LFSR generate a stochastic output bit
--the delay between successive outputs ranges between 13 and 13+2^13=8205 clock cycles
--the entire pattern of delays repeats every 2**18=262144 clock cycles
--the output width is 1 clock cycle

--To Do--
-- implement generics for number of bits in delay

entity LFSR is
  port (
    --Clock
    i_Clk : in std_logic;

    --Output Bit
    o_Random : out std_logic := '0'

    );
end entity LFSR;



architecture rtl of LFSR is

  signal r_lfsr : unsigned (17 downto 0) := "000000000000000001";
  signal r_Delay : unsigned (12 downto 0) := (others => '0');
  signal r_Clk_Cnt : unsigned (13 downto 0) := (others => '0');

  signal r_Calc_Delay : std_logic := '1';
  signal r_Set_Delay : std_logic := '0';
  signal r_Go_Count : std_logic := '0';



begin

  p_Delay : process(i_Clk) is
    variable myline : line;
  begin
    if rising_edge(i_Clk) then

      if r_Calc_Delay = '1' then
        o_Random <= '0';
        if r_Clk_Cnt < 13 then
          r_lfsr <= r_lfsr(16 downto 0) & (r_lfsr(17) xor r_lfsr(10));
          r_Clk_Cnt <= r_Clk_Cnt + 1;
        else
          r_Calc_Delay <= '0';
          r_Set_Delay <= '1';
          r_Clk_Cnt <= "00000000000000";
        end if;
      end if;

      if r_Set_Delay = '1' then
        r_Delay <= r_lfsr(12 downto 0);			--delay is set by 13 lowest LFSR bits
        r_Set_Delay <= '0';
        r_Go_Count <= '1';
      end if;

      if r_Go_Count = '1' then
        if r_Clk_Cnt < r_Delay then
          r_Clk_Cnt <= r_Clk_Cnt + 1;
        else
          write(myline, to_integer(r_Delay));		--non-synthesisable, for simulation only
          writeline(output, myline);			--non-synthesisable, for simulation only
          o_Random <= '1';
          r_Clk_Cnt <= "00000000000000";
          r_Calc_Delay <= '1';
          r_Go_Count <= '0';
        end if;
      end if;

    end if;
  end process p_Delay;

end architecture rtl;
