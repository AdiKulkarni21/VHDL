
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DregPR is
    Port ( D : in  STD_LOGIC;
           PRESET : in  STD_LOGIC;
          CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DregPR;

architecture Behavioral of DregPR is

begin
PROCESS( D,PRESET,CLK)
BEGIN
  IF(PRESET ='0')THEN
                Q<='1';
              ELSIF ( CLK'EVENT AND CLK = '1') THEN
                 Q<=D;
END IF;
END PROCESS;

end Behavioral;

