--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:48 08/06/2021
-- Design Name:   
-- Module Name:   C:/VHDL programming/SAM/SAM_TB.vhd
-- Project Name:  SAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SAM_TB IS
END SAM_TB;
 
ARCHITECTURE behavior OF SAM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift
    PORT(
         clk : IN  std_logic;
         st : IN  std_logic;
         meand : IN  std_logic_vector(3 downto 0);
         mplier : IN  std_logic_vector(3 downto 0);
         done : OUT  std_logic;
         pr : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal st : std_logic := '0';
   signal meand : std_logic_vector(3 downto 0) := (others => '0');
   signal mplier : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal pr : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift PORT MAP (
          clk => clk,
          st => st,
          meand => meand,
          mplier => mplier,
          done => done,
          pr => pr
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
	 wait for 100 ns;	
     a<="0000";b<="1000";start<='1';clk<='1';rst<='0'; wait for 100 ns;	
     a<="1000";b<="1010";start<='1';clk<='1';rst<='0'; wait for 100 ns;	
     a<="0001";b<="1110";start<='1';clk<='1';rst<='0'; wait for 100 ns;	
 a<="0011";b<="1010";start<='1';clk<='1';rst<='0'; wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
