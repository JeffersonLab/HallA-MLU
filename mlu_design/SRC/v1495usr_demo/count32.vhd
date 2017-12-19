library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.numeric_std.all;

--this module counts rising edges on an input, and outputs the 31-bit count
--while i_Reset is high, the count is continuously reset to 0


entity count32 is
  port (
    --Clock
    i_LCLK : in std_logic;
    i_Clk : in std_logic;

    i_Reset : in std_logic;
    i_Read : in std_logic;

    --Output Bit
    o_Count : out unsigned (31 downto 0) := (others => '0')

    );
end entity count32;



architecture rtl of count32 is

  signal r_Count : unsigned (31 downto 0) := (others => '0');
  signal r_Output : unsigned (31 downto 0) := (others => '0');
  signal r_OldRead : std_logic := '0';
  signal r_Read : std_logic := '0';

begin

  p_Output : process(i_Read, i_Reset) is
  begin
    if i_Reset = '1' then
      o_Count <= to_unsigned(0,32);
      r_Output <= to_unsigned(0,32);
    else
      o_Count <= r_Output;
      if rising_edge(i_Read) then
        r_Output <= r_Count;
      end if;
    end if;
  end process p_Count;

  p_Count : process(i_Clk, i_Reset) is
  begin
    if i_Reset = '1' then
      r_Count <= to_unsigned(0,32);
    elsif rising_edge(i_Clk) then
      r_Count <= r_Count + 1;
    end if;
  end process p_Count;

end architecture rtl;
