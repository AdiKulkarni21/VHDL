library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity clas4 is
    Port ( a,b : in  STD_LOGIC_vector(3 downto 0);
           cin : in  STD_LOGIC;
			  cout : inout std_logic;
           s : out  STD_LOGIC_vector(3 downto 0);
           v : out  STD_LOGIC);
end clas4;

architecture Behavioral of clas4 is
signal h,p,g,c:std_logic_vector(3 downto 0);
begin
g<=a and h;
p<=a xor h;
c(0)<=cin;
h(0)<=b(0) xor cin;
h(1)<=b(1) xor cin;
h(2)<=b(2) xor cin;
h(3)<=b(3) xor cin;
c(1)<=g(0) or(p(0) and c(0));
c(2)<=g(1) or(p(1) and c(1));
c(3)<=g(2) or(p(2) and c(2));
cout<=g(3) or(p(3) and c(3));
s<=p xor c;
v<=cout;

end Behavioral;
