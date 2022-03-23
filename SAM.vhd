library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_bit.ALL;

entity shift is
  Port ( clk ,st : in  bit;
           meand,mplier : in  unsigned (3 downto 0);
           done : out  bit;
         pr : out unsigned(8 downto 0));
end shift;

architecture Behavioral of shift is
signal state: integer range 0 to 9;
signal acc: unsigned(8 downto 0);
alias m: bit is acc(0);
begin
process(clk)
begin
if(clk'event and clk='1') then
case state is
when 0 =>
if (st='1') then
acc(8 downto 4) <= "00000";
acc(3 downto 0) <= mplier;
state <= 1;
end if;
when 1|3|5|7 => 
if (m='1') then
acc(8 downto 4) <= '0' & acc(7 downto 4)+meand;
state <= state+1;
else
state <= state+2;
end if;
when 2|4|6|8 =>
acc <= '0' & acc(8 downto 1);
state <= state+1;
when 9 =>
state <=0;
end case;
end if;
end process;
done <= '1' when state =9 else '0';
pr <= acc;                                                                                                                 
end Behavioral; 