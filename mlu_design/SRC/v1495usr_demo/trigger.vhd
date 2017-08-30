--New source file for trigger component

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_misc.all;  -- Use OR_REDUCE function

USE work.v1495pkg.all;


entity trigger is
  port(
    OPERATOR			: in std_logic;
    E				: in std_logic_vector(31 downto 0);
	 
    C				: out std_logic_vector(31 downto 0);
    F				: out std_logic_vector(31 downto 0)
  );
end trigger;

architecture synthesis of trigger is
  begin
    P_OPER_SEL : process(OPERATOR, E)
      begin
        if OPERATOR = '1' then
          F(0) <= E(0) and E(1);
          F(1) <= (E(0) or E(1)) and E(2);
          F(2) <= E(0) and E(1) and E(2);
          F(3) <= E(0) and E(1);
          F(4) <= (E(0) or E(1)) and E(2);
          F(5) <= E(0) and E(1) and E(2);
          F(6) <= E(6);
	  F(7) <= E(7);
        else
          F(0) <= E(0) and E(1);
          F(1) <= E(0) and E(2);
          F(2) <= E(1) and E(2);
          F(3) <= E(0) and E(3);
          F(4) <= E(1) and E(3);
          F(5) <= E(2) and E(3);
          F(6) <= E(4);
          F(7) <= E(5);
        end if;
      end process;
end synthesis;
