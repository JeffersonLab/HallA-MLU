library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.numeric_std.all;

--This module uses an 18bit LFSR generate a stochastic output bit
--the delay between successive outputs ranges between 16 and 2^16 clock cycles
--the entire pattern of delays repeats every 2**18=262144 clock cycles
--the output width is 1 clock cycle (25ns on the v1495)

--To Do--
-- implement generics for number of bits in delay

entity LFSR_stoch is
  port (
    --Clock
    i_Clk : in std_logic;

    --'hit' probability (in units of 1/(2^16))
    i_Prob : in unsigned (15 downto 0) := (others => '0');

    --Output Bit
    o_Random : out std_logic := '0'

    );
end entity LFSR_stoch;



architecture rtl of LFSR_stoch is

  signal r_lfsr : unsigned (17 downto 0) := "000000000000000001";
  signal r_Delay : unsigned (12 downto 0) := (others => '0');
  signal r_Clk_Cnt : unsigned (13 downto 0) := (others => '0');
  signal r_Prob : unsigned (15 downto 0) := (others => '0');

  signal r_Calc_Rand : std_logic := '1';
  signal r_Check_Rand : std_logic := '0';


begin

  p_Delay : process(i_Clk) is
    variable myline : line;
  begin
    if rising_edge(i_Clk) then

      r_Prob <= i_Prob;
      o_Random <= '0';

      if r_Clk_Cnt < 16 then
        r_lfsr <= r_lfsr(16 downto 0) & (r_lfsr(17) xor r_lfsr(10));
        r_Clk_Cnt <= r_Clk_Cnt + 1;
        r_Check_Rand <= '0';
      else
        r_Check_Rand <= '1';
        r_Clk_Cnt <= "00000000000000";
      end if;

      if r_Check_Rand = '1' then
        if r_lfsr(15 downto 0) < r_Prob then		--pseudorandom is set by 16 lowest LFSR bits
          o_Random <= '1';
        else
          o_Random <= '0';
        end if;
      end if;

    end if;
  end process p_Delay;

end architecture rtl;
