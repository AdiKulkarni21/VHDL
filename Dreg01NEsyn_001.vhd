
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dreg01NEsyn_001 is
    Port ( D : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Dreg01NEsyn_001;

architecture ARCH001 of Dreg01NEsyn_001 is

begin
PROCESS(D,RST,CLK)
BEGIN
	if (clk'event and clk = '1') then 
		if (rst = '1') then 
			q <= '0';
		else
			q <= d; 
		end if;
	end if;
end process;
end ARCH001;

