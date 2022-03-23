library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity fa1 is
    Port ( a,b,c : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end fa1;

architecture Behavioral of fa1 is

begin
s<= a xor b xor c;
cout<=(a and b) or( b and c) or (a and c);
end Behavioral;
