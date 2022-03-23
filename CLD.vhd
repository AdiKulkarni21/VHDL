library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity clocK_divider is
    Port ( clk,rst : in  STD_LOGIC;
           clkd : out  STD_LOGIC);
end clocK_divider;

architecture Behavioral of clocK_divider is
signal temp:std_logic;
signal count:integer range 0 to 1000000:=0;
begin
process(clk,rst)
begin
if(rst='1') then
temp<='0'; count<=0;
elsif falling_edge(clk) then
   if(count=1000000) then
	temp<= not temp;
	count<=0;
	else 
	count<=count+1;
	end if;
	end if;
	end process;
	clkd<=temp;
	end Behavioral;


