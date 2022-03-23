

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity bg021 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end bg021;

architecture Behavioral of bg021 is

begin
Y <= A AND B;

end Behavioral;

