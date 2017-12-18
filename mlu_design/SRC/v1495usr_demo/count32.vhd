library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use ieee.numeric_std.all;

--this module counts rising edges on an input, and outputs the 31-bit count
--while i_Reset is high, the count is continuously reset to 0


entity count32 is
  port (
    --Clock
    i_Clk : in std_logic;
    i_Reset : in std_logic;
    i_Trigger : in std_logic;

    --Output Bit
    o_Count : out unsigned (31 downto 0) := (others => '0')

    );
end entity count32;



architecture rtl of count32 is

  signal r_Count : unsigned (31 downto 0) := (others => '0');
  signal r_Output : unsigned (31 downto 0) := (others => '0');
  signal r_OldTrig : std_logic := '0';
  signal r_Trig : std_logic := '0';

begin

  p_Count : process(i_Clk, i_Reset) is
  begin
    if i_Reset = '1' then
      r_Count <= to_unsigned(0,32);
      r_Output <= to_unsigned(0,32);
      o_Count <= to_unsigned(0,32);
    elsif rising_edge(i_Clk) then
      r_OldTrig <= r_Trig;
      r_Trig <= i_Trigger;
      if (r_OldTrig = '0' and r_Trig = '1') then
        r_Output <= r_Count;
      end if;
      r_Count <= r_Count + 1;
      o_Count <= r_Output;
    end if;
  end process p_Count;

--  p_Output : process(i_Trigger) is
--  begin
--    if rising_edge(i_Trigger) and i_Reset = '0' then
--      r_Output <= r_Count;
--    end if;
--  end process p_Output;

end architecture rtl;
