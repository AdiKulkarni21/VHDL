library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comp1 is
    Port ( p,q,i,j,k : in  STD_LOGIC;
           g,e,l : out  STD_LOGIC);
end comp1;

architecture Behavioral of comp1 is

begin
process(p,q,i,j,k)
begin

if(p='0' and q='1')then
g<='0'; e<='0'; l<='1';

elsif(p='1' and q='0')then
g<='1'; e<='0'; l<='0';

elsif(p=q)then
g<=i; e<=j; l<=k;

end if;
end process;
end Behavioral; 
