library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tff is
    Port ( t,clk,rst : in  STD_LOGIC;
           q :inout  STD_LOGIC);
end tff;

architecture Behavioral of tff is

begin
process(clk,rst)
begin
if(rst='1') then q<='0';
elsif(falling_edge(clk) and t='1') then
q<=not q;
end if;
end process;
end Behavioral;
