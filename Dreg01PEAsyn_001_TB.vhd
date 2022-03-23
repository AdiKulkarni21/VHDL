
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Dreg01PEAsyn_001_TB IS
END Dreg01PEAsyn_001_TB;
 
ARCHITECTURE behavior OF Dreg01PEAsyn_001_TB IS 
 
    
 
    COMPONENT Dreg01PEAsyn_001
    PORT(
         D : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Q,QB : OUT  std_logic
        );
    END COMPONENT;
    


   signal D : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Q : std_logic;
	signal QB : std_logic;



 
BEGIN
 

   uut: Dreg01PEAsyn_001 PORT MAP (
          D => D,
          RST => RST,
          CLK => CLK,
          Q => Q,
			 QB => QB
        );

  clk_process : PROCESS
BEGIN
  CLK <= '0';   WAIT FOR 10 NS;
  CLK <= '1';    WAIT FOR 10 NS;
END PROCESS;

PROCESS
BEGIN
RST <= '1'; WAIT FOR 22 NS;
D <= '0'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
RST <= '0'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
D <= '0'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
D <= '0'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
RST <= '1'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
D <= '0'; WAIT FOR 20 NS;
RST <= '0'; WAIT FOR 20 NS;
D <= '1'; WAIT FOR 20 NS;
D <= '0'; WAIT FOR 20 NS;
RST <= '0'; WAIT FOR 20 NS;


      wait;
   end process;

END;
