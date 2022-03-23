
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RING16PEAsyn_001_TB IS
END RING16PEAsyn_001_TB;
 
ARCHITECTURE behavior OF RING16PEAsyn_001_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RING16PEAsyn_001
    PORT(
         PRESET : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         q : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PRESET : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RING16PEAsyn_001 PORT MAP (
          PRESET => PRESET,
          clk => clk,
          rst => rst,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
WAIT FOR 12 NS;	
PRESET<='0';WAIT FOR 100NS;
rst<='1'; wait for 50 ns;

    wait;
end process;

END;
