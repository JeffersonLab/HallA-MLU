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
    D				: out std_logic_vector(31 downto 0);
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
			 D(0) <= E(0);
			 D(1) <= E(1);
			 D(2) <= E(2);
			 D(3) <= E(3);
			 D(4) <= E(4);
			 D(5) <= E(5);
			 D(6) <= E(6);
			 D(7) <= E(7);
			 D(8) <= E(0) and E(1);
          D(9) <= (E(0) or E(1)) and E(2);
          D(10) <= E(0) and E(1) and E(2);
          D(11) <= E(0) and E(1);
          D(12) <= (E(0) or E(1)) and E(2);
          D(13) <= E(0) and E(1) and E(2);
          D(14) <= E(6);
			 D(15) <= E(7);
			 D(16) <= E(0);
			 D(17) <= E(1);
			 D(18) <= E(2);
			 D(19) <= E(3);
			 D(20) <= E(4);
			 D(21) <= E(5);
			 D(22) <= E(6);
			 D(23) <= E(7);
			 D(24) <= E(0) and E(1);
          D(25) <= (E(0) or E(1)) and E(2);
          D(26) <= E(0) and E(1) and E(2);
          D(27) <= E(0) and E(1);
          D(28) <= (E(0) or E(1)) and E(2);
          D(29) <= E(0) and E(1) and E(2);
          D(30) <= E(6);
			 D(31) <= E(7);
        else
          F(0) <= E(4);
          F(1) <= E(5);
          F(2) <= E(6);
          F(3) <= E(4) and E(0) and E(1);
          F(4) <= E(4) and E(1);
          F(5) <= E(4) and E(0);
          F(6) <= E(6);
          F(7) <= E(7);
			 D(0) <= E(0);
			 D(1) <= E(1);
			 D(2) <= E(2);
			 D(3) <= E(3);
			 D(4) <= E(4);
			 D(5) <= E(5);
			 D(6) <= E(6);
			 D(7) <= E(7);
			 D(8) <= E(4);
          D(9) <= E(5);
          D(10) <= E(6);
          D(11) <= E(4) and E(0) and E(1);
          D(12) <= E(4) and E(1);
          D(13) <= E(4) and E(0);
          D(14) <= E(6);
			 D(15) <= E(7);
			 D(16) <= E(0);
			 D(17) <= E(1);
			 D(18) <= E(2);
			 D(19) <= E(3);
			 D(20) <= E(4);
			 D(21) <= E(5);
			 D(22) <= E(6);
			 D(23) <= E(7);
			 D(24) <= E(4);
          D(25) <= E(5);
          D(26) <= E(6);
          D(27) <= E(4) and E(0) and E(1);
          D(28) <= E(4) and E(1);
          D(29) <= E(4) and E(0);
          D(30) <= E(6);
			 D(31) <= E(7);
        end if;
      end process;
end synthesis;
