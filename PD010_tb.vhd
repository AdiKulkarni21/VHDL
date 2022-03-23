Library IEEE;
Use IEEE.std_logic_1164.all;

Entity PD010_tb is
End PD010_tb ;

Architecture arch01 of PD010_tb is

Component PD010 is
Port (x   : in std_logic;
      clk : in std_logic;
	  rst : in std_logic;
	  z   : out std_logic
	  );
End component;

signal x,clk,rst,z:std_logic;

begin
DUT : PD010 port map (x,clk,rst,z);

process 
begin 
clk <='0'; wait for 10 ns;
clk <='1'; wait for 10 ns;
End process;

Process 
Begin
rst<='1'; wait for 20 ns;
rst<='0'; wait for 20 ns;

x<='0'; wait for 20 ns;
x<='0'; wait for 20 ns;
x<='1'; wait for 20 ns;
x<='0'; wait for 20 ns;
x<='1'; wait for 20 ns;
x<='1'; wait for 20 ns;
x<='0'; wait for 20 ns;
x<='1'; wait for 20 ns;
x<='0'; wait for 20 ns;
wait;
End process;
 End arch01;
	  
