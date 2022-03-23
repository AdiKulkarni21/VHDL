LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Treg01NEsyn_001 IS
PORT (T  :IN STD_LOGIC;
      CLK:IN STD_LOGIC;
      RST:IN STD_LOGIC;
      Q  :OUT STD_LOGIC
      );
END Treg01NEsyn_001;

ARCHITECTURE Arch001 OF Treg01NEsyn_001 IS
SIGNAL PSTATE,NSTATE:STD_LOGIC;
BEGIN

  PROC1:  PROCESS(NSTATE,CLK,RST)
    BEGIN
    IF(CLK 'EVENT AND CLK='0')THEN
    IF (RST ='1') THEN
    PSTATE<='0';
    ELSE
    PSTATE<=NSTATE;
    END IF;
    END IF;
    END PROCESS;

    PROC2: PROCESS (PSTATE,T)
    BEGIN
    IF(T='0') THEN
    NSTATE<=PSTATE;
    ELSE
    NSTATE<=NOT PSTATE;
    END IF;
    END PROCESS;
 Q<=PSTATE;
END Arch001;
