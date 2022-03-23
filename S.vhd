


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY sr_tb IS
END sr_tb;
 
ARCHITECTURE behavior OF sr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sin : IN  std_logic;
         pin : IN  std_logic_vector(7 downto 0);
         mode : IN  std_logic_vector(1 downto 0);
         sout : OUT  std_logic;
         pout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sin : std_logic := '0';
   signal pin : std_logic_vector(7 downto 0) := (others => '0');
   signal mode : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic;
   signal pout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift PORT MAP (
          clk => clk,
          rst => rst,
          sin => sin,
          pin => pin,
          mode => mode,
          sout => sout,
          pout => pout
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
      rst<='1';
		wait for 100 ns;
	   rst<='0';
		pin<="01101011";
		sin<='0';
		mode<="11";
      wait for 100 ns;	
      wait;
   end process;

END;
