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
    i_Trig : in std_logic;

    --Output Word
    o_Count : out unsigned (31 downto 0) := (others => '0')

    );
end entity count32;



architecture rtl of count32 is

  constant BUFF_DEPTH : integer := 3;	--counting from 0

  type buff_array is array (0 to BUFF_DEPTH) of unsigned(31 downto 0);
  signal r_Buffer : buff_array := (others => to_unsigned(0,32));

  signal r_nStoredEvents   : unsigned(15 downto 0) := (others => '0');
  signal r_maxStoredEvents : unsigned(15 downto 0) := to_unsigned(BUFF_DEPTH+1,16);
  signal r_nMissedEvents   : unsigned(15 downto 0) := (others => '0');
  signal r_Count : unsigned (63 downto 0) := (others => '0');
  signal r_Output : unsigned (31 downto 0) := (others => '0');
  signal r_EdgeTrig : std_logic := '0';
  signal r_OldTrig : std_logic := '0';
  signal r_Trig : std_logic := '0';
  signal r_EdgeRead : std_logic := '0';
  signal r_OldRead : std_logic := '0';
  signal r_Read : std_logic := '0';
  signal r_EdgeClk : std_logic := '0';
  signal r_OldClk : std_logic := '0';
  signal r_Clk : std_logic := '0';

begin

  p_ReadWrite : process(i_LCLK) is
  begin
    if rising_edge(i_LCLK) then
      if i_Reset = '1' then
        for i in 0 to BUFF_DEPTH loop
          r_Buffer(0) <= to_unsigned(0,32);
          r_Output <= to_unsigned(0,32);
        end loop;
      else
        r_OldTrig <= r_Trig;
        r_Trig <= i_Trig;
        r_EdgeTrig <= r_Trig and not r_OldTrig;
        r_OldRead <= r_Read;
        r_Read <= i_Read;
        r_EdgeRead <= r_Read and not r_OldRead;

	--Read and trig rising edges
        if (r_EdgeRead='1' and r_EdgeTrig='1') then
          if (r_nStoredEvents > 0 and r_nStoredEvents < r_maxStoredEvents) then
            r_Output <= r_Buffer(0);
            r_Buffer(BUFF_DEPTH) <= to_unsigned(0,32);	--for the array shift, write a zero at the high-end
            for i in 0 to BUFF_DEPTH-1 loop
              if i /= r_nStoredEvents then
                r_Buffer(i) <= r_Buffer(i+1);
              else
                r_Buffer(i) <= r_Count(31 downto 0);
              end if;
            end loop;
          elsif(r_nStoredEvents = 0) then
            r_Output <= to_unsigned(0,32);	--trying to read with no stored events, set output to zero
            r_Buffer(to_integer(r_nStoredEvents)) <= r_Count(31 downto 0);
            r_nStoredEvents <= r_nStoredEvents + 1;
          elsif(r_nStoredEvents = r_maxStoredEvents) then	--trying to trigger with full buffer, increment nMissedEvents
            r_nMissedEvents <= r_nMissedEvents + 1;
            r_Output <= r_Buffer(0);
            r_nStoredEvents <= r_nStoredEvents - 1;
            r_Buffer(BUFF_DEPTH) <= to_unsigned(0,32);	--for the array shift, write a zero at the high-end
            for i in 0 to BUFF_DEPTH-1 loop
              r_Buffer(i) <= r_Buffer(i+1);
            end loop;
          end if;

	--Read rising edge only
        elsif (r_EdgeRead='1' and r_EdgeTrig='0') then
          if (r_nStoredEvents > 0) then
            r_Output <= r_Buffer(0);
            r_nStoredEvents <= r_nStoredEvents - 1;
            r_Buffer(BUFF_DEPTH) <= to_unsigned(0,32);	--for the array shift, write a zero at the high-end
            for i in 0 to BUFF_DEPTH-1 loop
              r_Buffer(i) <= r_Buffer(i+1);
            end loop;
          else
            r_Output <= to_unsigned(0,32);
          end if;

	--Trig rising edge only
        elsif (r_EdgeRead='0' and r_EdgeTrig='1') then
	  if (r_nStoredEvents < r_maxStoredEvents) then
            r_Buffer(to_integer(r_nStoredEvents)) <= r_Count(31 downto 0);
            r_nStoredEvents <= r_nStoredEvents + 1;
          else
            r_nMissedEvents <= r_nMissedEvents + 1;	--trying to trigger with full buffer, increment nMissedEvents
          end if;
        end if;

      end if;
    end if;
  end process p_ReadWrite;

  p_Count : process(i_LCLK) is
  begin
    if rising_edge(i_LCLK) then
      if i_Reset = '1' then
        o_Count <= to_unsigned(0,32);
        r_Count <= to_unsigned(0,64);
      else
        o_Count <= r_Output;
--        o_Count <= X"DEADBEEF";
        r_OldClk <= r_Clk;
        r_Clk <= i_Clk;
        if (r_OldClk = '0' and r_Clk = '1') then
          r_Count <= r_Count + 1;
        end if;
      end if;
    end if;
  end process p_Count;

end architecture rtl;
