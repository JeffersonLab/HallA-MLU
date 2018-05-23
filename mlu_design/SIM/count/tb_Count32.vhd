
-- Testbench for LFSR
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_textio.all;
use STD.textio.all;
use ieee.numeric_std.all;

entity Count32_TB is
end entity Count32_TB;

architecture behave of Count32_TB is

  constant c_CLK_PERIOD : time := 7 ns;
  constant c_LCLK_PERIOD : time := 1 ns;
  signal r_Clock : std_logic := '0';
  signal r_LCLK : std_logic := '0';
  signal r_Reset : std_logic := '0';
  signal r_Read : std_logic := '0';
  signal r_Out : unsigned (31 downto 0) := (others => '0');

begin

  r_Clock <= not r_Clock after c_CLK_PERIOD/2;
  r_LCLK <= not r_LCLK after c_LCLK_PERIOD/2;

  -- Need to set up generics appropriately
  -- These will blink much faster than on hardware.
  -- This allows simulation to run quickly.
  count32_Inst : entity work.count32
    port map (
      i_Clk   => r_Clock,
      i_LCLK   => r_LCLK,
      i_Reset   => r_Reset,
      i_Read   => r_Read,
      o_Count => r_Out
      );

  process is
  begin
  report "Starting Testbench...";
  wait for 100 ns;
  r_Read <= '1';
  wait for 10 ns;
  r_Read <= '0';
  wait for 100 ns;
  r_Reset <= '1';
  wait for 20 ns;
  r_Reset <= '0';
  wait for 200 ns;
  r_Read <= '1';
  wait for 10 ns;
  r_Read <= '0';
  wait for 100 ns;
  assert false report "Test Complete" severity failure;
  end process;
  

end behave;
