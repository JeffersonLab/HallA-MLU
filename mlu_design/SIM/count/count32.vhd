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
  signal r_OldClk : std_logic := '0';
  signal r_Clk : std_logic := '0';

begin

  p_New : process(i_LCLK, i_Reset) is
  begin
    if i_Reset = '1' then
      o_Count <= to_unsigned(0,32);
      r_Count <= to_unsigned(0,32);
      r_Output <= to_unsigned(0,32);
    elsif rising_edge(i_LCLK) then
      o_Count <= r_Output;
      r_OldRead <= r_Read;
      r_Read <= i_Read;
      r_OldClk <= r_Clk;
      r_Clk <= i_Clk;
      if (r_OldRead = '0' and r_Read = '1') then
        r_Output <= r_Count;
      end if;
      if (r_OldClk = '0' and r_Clk = '1') then
        r_Count <= r_Count + 1;
      end if;
    end if;
  end process p_New;

end architecture rtl;
