
-- Testbench for LFSR
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_textio.all;
use STD.textio.all;
use ieee.numeric_std.all;

entity LFSR_TB is
end entity LFSR_TB;

architecture behave of LFSR_TB is

  constant c_CLK_PERIOD : time := 50 fs;
  signal r_Clock : std_logic := '0';
  signal r_Output : std_logic := '0';

begin

  r_Clock <= not r_Clock after c_CLK_PERIOD/2;

  -- Need to set up generics appropriately
  -- These will blink much faster than on hardware.
  -- This allows simulation to run quickly.
  LFSR_Inst : entity work.LFSR
    port map (
      i_Clk   => r_Clock,
      o_Random => r_Output
      );

--  p_Count : process (r_Clock) is
--  begin
--  if rising_edge(r_Clock) then
--    r_Input <= r_Input + 1;
--  end if;
--  end process;

  process is
   variable myline : line;
  begin
  report "Starting Testbench...";
--  write(myline, 16);
--  writeline(output, myline);
  wait for 500 ns;
--  write(myline, 17);
--  writeline(output, myline);
  assert false report "Test Complete" severity failure;
  end process;
  

end behave;
