

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY SUPC16NEAsyn_001_TB IS
END SUPC16NEAsyn_001_TB;
 
ARCHITECTURE behavior OF SUPC16NEAsyn_001_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUPC16NEAsyn_001
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(14 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUPC16NEAsyn_001 PORT MAP (
          T => T,
          CLK => CLK,
          RST => RST,
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
RST<='1';
 T<= '1'; WAIT FOR 160 NS;


 
   end process;

END;
