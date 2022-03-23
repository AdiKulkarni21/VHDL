library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Dreg01NEAsyn_001 is

PORT( D,RST,CLK: IN STD_LOGIC;
      Q,QB:OUT STD_LOGIC);

end Dreg01NEAsyn_001;

architecture Behavioral of Dreg01NEAsyn_001 is

begin
     PROCESS(D,RST,CLK )

   BEGIN
          IF(RST ='1')THEN
                Q<='0';
					 QB<='1';
              ELSIF ( CLK'EVENT AND CLK = '0') THEN
                 Q<=D;
					  QB<= NOT D;
          END IF;

       END PROCESS;

end Behavioral;

