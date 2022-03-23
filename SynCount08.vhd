
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity SynCount08 is
    Port ( Rst,Clk,Ud,Load : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end SynCount08;

architecture Behavioral of SynCount08 is


 component ClkDiv is
 port ( clk,rst: in Std_logic ;
        clkd : out Std_logic);
		  end component;
		  
 
 Signal clkd : std_logic ;
 Signal temp : std_logic_vector(7 downto 0);
Begin
U1: ClkDiv port map ( clk , rst, clkd);
process
begin 
if( rst ='1') then
      temp <="0000 0000";
else if ( load ='1') then
     temp <="0000 1010" ;
elsif( rising_edge(clkd)) then
               if( (ud='0') and ( temp < "0001001")) then
	                temp <= temp + 1 ;
                elsif( (ud='0') and (temp > "00000011")) then
	                temp <= temp -1;
	                 end if;
                    end if;

end process;
q<= temp;

end Behavioral;

