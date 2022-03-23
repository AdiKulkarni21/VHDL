library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ha1 is
    Port ( a,b : in  STD_LOGIC;
           s,c : out  STD_LOGIC);
end ha1;

architecture Behavioral of ha1 is

begin
s<=a xor b;
c<= a and b;

end Behavioral;
