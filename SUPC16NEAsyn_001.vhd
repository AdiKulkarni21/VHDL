
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SUPC16NEAsyn_001 is
    Port ( T : in  STD_LOGIC;
          CLK : in  STD_LOGIC;
	        RST : in  STD_LOGIC;
           Q: out  STD_LOGIC_VECTOR(14 DOWNTO 0)
			  );
end SUPC16NEAsyn_001;

architecture ARCH001 of SUPC16NEAsyn_001 is
COMPONENT  Dreg01NEAsyn_001 is 
 PORT (T  :IN STD_LOGIC;
      CLK:IN STD_LOGIC;
      RST:IN STD_LOGIC;
       Q:OUT STD_LOGIC
      );
 
 
 end component;
 component and001 is
 
  PORT ( A,B : IN STD_LOGIC;
         Y: OUT STD_LOGIC
			);
			
 end component;

SIGNAL I : STD_LOGIC_VECTOR (14 DOWNTO 0);
SIGNAL X: STD_LOGIC_VECTOR( 15 DOWNTO 0);
 BEGIN 
 
 A1: Dreg01NEAsyn_001 PORT MAP ( T , CLK , RST, X(0)); 

 A2: Dreg01NEAsyn_001 PORT MAP ( X(0), CLK , RST, X(1));
  U1: and001 PORT MAP (X(0),X(1),I(1));
 
 A3: Dreg01NEAsyn_001 PORT MAP ( I(1), CLK , RST, X(2));
  U2: and001 PORT MAP (I(1),X(2),I(2));

 A4: Dreg01NEAsyn_001 PORT MAP ( I(2), CLK , RST, X(3));
  U3: and001 PORT MAP (I(2),X(3),I(3));
 
 A5: Dreg01NEAsyn_001 PORT MAP ( I(3), CLK , RST, X(4));
   U4: and001 PORT MAP  (I(3),X(4),I(4));
  
 A6: Dreg01NEAsyn_001 PORT MAP ( I(4), CLK , RST, X(5));
   U5: and001 PORT MAP (I(4),X(5),I(5));
 
 A7: Dreg01NEAsyn_001 PORT MAP ( I(5), CLK , RST, X(6));
   U6: and001 PORT MAP (I(5),X(6),I(6));
 
 A8: Dreg01NEAsyn_001 PORT MAP ( I(6), CLK , RST, X(7));
   U7: and001 PORT MAP  (I(6),X(7),I(7));
 
 A9: Dreg01NEAsyn_001 PORT MAP ( I(7), CLK , RST, X(8));
   U8: and001 PORT MAP (I(7),X(8),I(8));
 
 A10: Dreg01NEAsyn_001 PORT MAP ( I(8), CLK , RST, X(9));
   U9: and001 PORT MAP (I(8),X(9),I(9));
 
 A11: Dreg01NEAsyn_001 PORT MAP ( I(9), CLK , RST, X(10));
   U10: and001 PORT MAP (I(9),X(10),I(10));
 
 A12: Dreg01NEAsyn_001 PORT MAP ( I(10), CLK , RST, X(11));
   U11: and001 PORT MAP (I(10),X(11),I(11));
 
 A13: Dreg01NEAsyn_001 PORT MAP ( I(11), CLK , RST, X(12));
   U12: and001 PORT MAP  (I(11),X(12),I(12));
 
 A14: Dreg01NEAsyn_001 PORT MAP ( I(12), CLK , RST, X(13));
   U13: and001 PORT MAP (I(12),X(13),I(13));
 
 A15: Dreg01NEAsyn_001 PORT MAP ( I(13), CLK , RST, X(14));
   U14: and001 PORT MAP (I(13),X(14),I(14));
 
 A16: Dreg01NEAsyn_001 PORT MAP ( I(14), CLK , RST, X(15));
 
 
 
 
 end ARCH001;

