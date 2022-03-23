library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity RING16PEAsyn_001 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (15 downto 0));
end RING16PEAsyn_001;
 
architecture Behavioral of RING16PEAsyn_001 is
signal q_tmp: std_logic_vector(15 downto 0):= "0000000000000000";
begin
process(CLK,RST)
begin
if RST = '1' then
    q_tmp <= "0000000000000001";
elsif Rising_edge(CLK) then
    q_tmp(1) <= q_tmp(0);
    q_tmp(2) <= q_tmp(1);
    q_tmp(3) <= q_tmp(2);
    q_tmp(4) <= q_tmp(3);
	 q_tmp(5) <= q_tmp(4);
    q_tmp(6) <= q_tmp(5);
    q_tmp(7) <= q_tmp(6);
    q_tmp(8) <= q_tmp(7);
	 q_tmp(9) <= q_tmp(8);
    q_tmp(10) <= q_tmp(9);
	 q_tmp(11) <= q_tmp(10);
    q_tmp(12) <= q_tmp(11);
	 q_tmp(13) <= q_tmp(12);
	 q_tmp(14) <= q_tmp(13);
	q_tmp(15) <= q_tmp(14);
	q_tmp(0) <= q_tmp(15);
	 
	 
	 
	 
end if;
end process;
Q <= q_tmp;
end Behavioral;
