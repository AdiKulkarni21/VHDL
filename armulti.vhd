library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity armulti is
    Port ( a,b : in  STD_LOGIC_vector(3 downto 0);
           p : out  STD_LOGIC_vector(7 downto 0));
end armulti;

architecture Behavioral of armulti is
signal x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,c1,s1,c2,c3,c4,s2,c5,s3,c6,c7,s4,c8,s5,
       c9,c10,s6,c11,c12:std_logic;
component ha1
 port (a,b:in std_logic;
      s,c:out std_logic); 
end component;
component fa1
 port (a,b,c:in std_logic;
      s,cout:out std_logic);
		end component;
begin
p(0)<=a(0) and b(0);
x1<= a(0) and b(1);
x2<= a(1) and b(0);
x3<= a(0) and b(2);
x4<= a(1) and b(1);
x5<= a(2) and b(0);
x6<= a(2) and b(1);
x7<= a(0) and b(3);
x8<= a(3) and b(0);
x9<= a(1) and b(2);
x10<= a(1) and b(3);
x11<= a(2) and b(2);
x12<= a(2) and b(3);
x13<= a(3) and b(1);
x14<= a(3) and b(2);
x15<= a(3) and b(3);

u1: ha1 port map(x1,x2,p(1),c1);
u2: fa1 port map(x3,x4,c1,s1,c2);
u3: ha1 port map(x5,s1,p(2),c3);
u4: fa1 port map(x7,x9,c2,s2,c4);
u5: fa1 port map(x6,s2,c3,s3,c5);
u6: ha1 port map(x8,s3,p(3),c6);
u7: fa1 port map(x10,c4,c5,s4,c7);
u8: fa1 port map(x11,s4,c6,s5,c8);
u9 : ha1 port map(s5,x13,p(4),c9);
u10: fa1 port map(x12,c7,c8,s6,c10);
u11: fa1 port map(x14,s6,c9,p(5),c11);
u12: fa1 port map(x15,c10,c11,p(6),c12);
p(7)<=c12;
 end  Behavioral; 
