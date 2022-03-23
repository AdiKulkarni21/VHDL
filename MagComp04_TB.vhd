--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:25:32 08/14/2021
-- Design Name:   
-- Module Name:   C:/VHDL programming/ALL/MagComp04/MagComp04_TB.vhd
-- Project Name:  MagComp04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MagComp04
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
 
ENTITY MagComp04_TB IS
END MagComp04_TB;
 
ARCHITECTURE behavior OF MagComp04_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MagComp04
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic;
         CA1 : IN  std_logic;
         CA2 : IN  std_logic;
         CA3 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal CA1 : std_logic := '0';
   signal CA2 : std_logic := '0';
   signal CA3 : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MagComp04 PORT MAP (
          A => A,
          B => B,
          X => X,
          Y => Y,
          Z => Z,
          CA1 => CA1,
          CA2 => CA2,
          CA3 => CA3
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
  A<="0000";B<="0000";---- BOTH A AND ARE EQUAL

CA1<='0';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='1';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='1';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='0';CA3<='1';  wait for 10 ns;



A<="0000";B<="1000";---B>A IN THIS CAASE
CA1<='0';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='1';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='1';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='0';CA3<='1';  wait for 10 ns;


A<="0111";B<="1011";--- B>A IN THIS CAASE
CA1<='0';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='1';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='1';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='0';CA3<='1';  wait for 10 ns;

A<="1110";B<="1000";---A>B IN THIS CAASE 
CA1<='0';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='1';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='1';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='0';CA3<='1';  wait for 10 ns;

  
A<="1111";B<="1111";--A=B IN THIS CAASE

CA1<='0';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='1';CA2<='0';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='1';CA3<='0';  wait for 10 ns;
CA1<='0';CA2<='0';CA3<='1';  wait for 10 ns;

      wait;
   end process;

END;


