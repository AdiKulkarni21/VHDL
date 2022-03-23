LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY Dreg01NEsyn_001_TB IS
END Dreg01NEsyn_001_TB;
 
ARCHITECTURE behavior OF Dreg01NEsyn_001_TB IS 
 

 
    COMPONENT Dreg01NEsyn_001
    PORT(
         D : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dreg01NEsyn_001 PORT MAP (
          D => D,
          RST => RST,
          CLK => CLK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
   rst <= '1'; wait for 22 ns; 
d <= '0'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
rst <= '0'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
d <= '0'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
d <= '0'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
rst <= '1'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
d <= '0'; wait for 20 ns; 
rst <= '0'; wait for 20 ns; 
d <= '1'; wait for 20 ns; 
d <= '0'; wait for 20 ns; 
rst <= '0'; wait for 20 ns; 

      wait;
   end process;

END;
