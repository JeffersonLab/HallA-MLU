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
  signal r_Delay_Uniform : unsigned (12 downto 0) := (others => '0');
  signal r_Delay_Geometric : unsigned (12 downto 0) := (others => '0');
  signal r_A : unsigned (26 downto 0) := (others => '0');
  signal r_B : unsigned (26 downto 0) := (others => '0');
  signal r_C : unsigned (26 downto 0) := (others => '0');
  signal r_Clk_Cnt : unsigned (13 downto 0) := (others => '0');

  signal r_Calc_Delay : std_logic := '1';
  signal r_Calc_Geometric : unsigned (7 downto 0) := to_unsigned(0,8);
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
          r_Calc_Geometric <= to_unsigned(1,8);
          r_Delay_Uniform <= to_unsigned(0,13);
          r_Delay_Geometric <= to_unsigned(0,13);
          r_A <= to_unsigned(0,27);
          r_B <= to_unsigned(0,27);
          r_C <= to_unsigned(0,27);
          r_Clk_Cnt <= "00000000000000";
        end if;
      end if;

      -- transform uniform random number between 0 and 8192 to geometric distriubtion random number between 0 and 8192
      if r_Calc_Geometric = 1 then
        r_Delay_Uniform <= r_lfsr(12 downto 0);			--uniform delay is set by 13 lowest LFSR bits
        r_Calc_Geometric <= r_Calc_Geometric + 1;
      end if;
      if r_Calc_Geometric = 2 then
	r_A <= ('0' & r_Delay_Uniform & "0000000000000") + to_unsigned(2898794,27);	--2898794 requires 22 bits, r_A is 27 bits
        r_B <=  to_unsigned(21513,27) - ("0000000000000" & r_Delay_Uniform & '0');
        r_Calc_Geometric <= r_Calc_Geometric + 1;
      end if;
      if r_Calc_Geometric = 3 then
        r_C <= r_A / r_B;
        r_Calc_Geometric <= r_Calc_Geometric + 1;
      end if;
      if r_Calc_Geometric = 4 then
        r_Delay_Geometric <= r_C(12 downto 0);
        r_Calc_Geometric <= to_unsigned(0,8);
        r_Go_Count <= '1';
      end if;

      if r_Go_Count = '1' then
        if r_Clk_Cnt < r_Delay_Geometric then
          r_Clk_Cnt <= r_Clk_Cnt + 1;
        else
          write(myline, to_integer(r_Delay_Uniform));		--non-synthesisable, for simulation only
          write(myline, string'(" "));		--non-synthesisable, for simulation only
          write(myline, to_integer(r_Delay_Geometric));		--non-synthesisable, for simulation only
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
