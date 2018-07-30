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
    o_Count : out std_logic_vector (31 downto 0) := (others => '0')

    );
end entity count32;



architecture rtl of count32 is

  signal r_Inhibit_Write : std_logic := '0';
  signal r_Inhibit_Read : std_logic := '0';
  signal r_pointRead : unsigned(1 downto 0) := (others => '0');
  signal r_pointWrite : unsigned(1 downto 0) := (others => '0');
  signal r_Count : unsigned (63 downto 0) := (others => '0');
  signal r_Output : unsigned (31 downto 0) := (others => '0');
  signal r_Buffer0 : unsigned (31 downto 0) := (others => '0');
  signal r_Buffer1 : unsigned (31 downto 0) := (others => '0');
  signal r_Buffer2 : unsigned (31 downto 0) := (others => '0');
  signal r_Buffer3 : unsigned (31 downto 0) := (others => '0');
  signal r_OldRead : std_logic := '0';
  signal r_Read : std_logic := '0';
  signal r_OldClk : std_logic := '0';
  signal r_Clk : std_logic := '0';

begin

  p_ReadWrite : process(i_LCLK) is
  begin
    if rising_edge(i_LCLK) then
      if i_Reset = '1' then
        r_Buffer0 <= to_unsigned(0,32);
        r_Buffer1 <= to_unsigned(0,32);
        r_Buffer2 <= to_unsigned(0,32);
        r_Buffer3 <= to_unsigned(0,32);
      else
        r_OldTrig <= r_Trig;
        r_Trig <= i_Trig;
        r_OldRead <= r_Read;
        r_Read <= i_Read;
        if (r_pointRead = '0') then
          r_Output <= r_Buffer0;
        end if;
        if (r_pointRead = '1') then
          r_Output <= r_Buffer1;
        end if;
        if (r_pointRead = '2') then
          r_Output <= r_Buffer2;
        end if;
        if (r_pointRead = '3') then
          r_Output <= r_Buffer3;
        end if;

        --Read and Trigger rising edges in same clock cycle
        if (r_OldRead = '0' and r_Read = '1' and r_OldTrig = '0' and r_Trig = '1') then
          --need to figure out a nice way to handle this....

	--Read rising edge only
        elsif (r_OldRead = '0' and r_Read = '1' and r_Inhibit_Read = '0') then
          r_Inhibit_Write <= '0';  --We're reading out something, so enable writing
          if (r_pointRead = '0') then
            r_pointRead <= r_pointRead + 1;
            r_Buffer0 <= to_unsigned(0,32);
            if (r_pointWrite = 1) then
              r_Inhibit_Read <= '1';
            end if;
          end if;
          if (r_pointRead = '1') then
            r_pointRead <= r_pointRead + 1;
            r_Buffer1 <= to_unsigned(0,32);
            if (r_pointWrite = 2) then
              r_Inhibit_Read <= '1';
            end if;
          end if;
          if (r_pointRead = '2') then
            r_pointRead <= r_pointRead + 1;
            r_Buffer2 <= to_unsigned(0,32);
            if (r_pointWrite = 3) then
              r_Inhibit_Read <= '1';
            end if;
          end if;
          if (r_pointRead = '3') then
            r_pointRead <= r_pointRead + 1;
            r_Buffer3 <= to_unsigned(0,32);
            if (r_pointWrite = 0) then
              r_Inhibit_Read <= '1';
            end if;
          end if;

	--Trig rising edge only
        elsif (r_OldTrig = '0' and r_Trig = '1' and r_Inhibit_Write = '0') then
          r_Inhibit_Read <= '0';  --We're writing new info, so enable reading
          if (r_pointWrite = 0) then
            r_Buffer0 <= r_Count(31 downto 0);
            r_pointWrite <= r_pointWrite + 1;
            if (r_pointRead = 1) then
              r_Inhibit_Write <= '1';
            end if;
          end if;
          if (r_pointWrite = 1) then
            r_Buffer1 <= r_Count(31 downto 0);
            r_pointWrite <= r_pointWrite + 1;
            if (r_pointRead = 2) then
              r_Inhibit_Write <= '1';
            end if;
          end if;
          if (r_pointWrite = 2) then
            r_Buffer2 <= r_Count(31 downto 0);
            r_pointWrite <= r_pointWrite + 1;
            if (r_pointRead = 3) then
              r_Inhibit_Write <= '1';
            end if;
          end if;
          if (r_pointWrite = 3) then
            r_Buffer3 <= r_Count(31 downto 0);
            r_pointWrite <= to_unsigned(0,2);
            if (r_pointRead = 0) then
              r_Inhibit_Write <= '1';
            end if;
          end if;
        end if;
      end if;
    end if;
  end process p_ReadWrite;

  p_Count : process(i_LCLK) is
  begin
    if rising_edge(i_LCLK) then
      if i_Reset = '1' then
        o_Count <= std_logic_vector(to_unsigned(0,32));
        r_Count <= to_unsigned(0,64);
      else
        o_Count <= std_logic_vector(r_Output);
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
