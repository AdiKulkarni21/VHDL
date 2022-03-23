LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

   ENTITY Dreg01PEAsyn_001 IS

  PORT( D,RST,CLK: IN STD_LOGIC;
      Q,QB:OUT STD_LOGIC);

 END Dreg01PEAsyn_001;

 ARCHITECTURE ARCH001 OF Dreg01PEAsyn_001 IS
  BEGIN
       PROCESS(D,RST,CLK )

   BEGIN
          IF(RST ='0')THEN
                Q<='0';
			      QB <= '1';
              ELSIF ( CLK'EVENT AND CLK = '1') THEN
                 Q<=D;
				     QB <= NOT D; 
          END IF;

       END PROCESS;

  END ARCH001;
