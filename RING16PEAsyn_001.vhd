
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity RING16PEAsyn_001 is
    Port ( PRESET,clk, rst : in  STD_LOGIC;
          Q : inout  STD_LOGIC_VECTOR (15 downto 0));
end RING16PEAsyn_001;
 
architecture arch of RING16PEAsyn_001 is

component DregPR is
 Port ( D,PR,clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

component Dreg01PEAsyn_001 is
 Port ( D,RST, CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;


SIGNAL x : std_logic_vector (15 downto 0);

begin

		A1 : DregPR  port map (x(15),PRESET,clk,x(0));
		A2 : Dreg01PEAsyn_001 port map (x(0),RST,CLK,x(1));
		A3 : Dreg01PEAsyn_001 port map (x(1),RST,CLK,x(2));
		A4 : Dreg01PEAsyn_001 port map (x(2),RST,CLK,x(3));
		A5 : Dreg01PEAsyn_001 port map (x(3),RST,CLK,x(4));
		A6 : Dreg01PEAsyn_001 port map (x(4),RST,CLK,x(5));
		A7: Dreg01PEAsyn_001 port map (x(5),RST,CLK,x(6));
		A8: Dreg01PEAsyn_001 port map (x(6),RST,CLK,x(7));
		A9: Dreg01PEAsyn_001 port map (x(7),RST,CLK,x(8));
		A10: Dreg01PEAsyn_001 port map (x(8),RST,CLK,x(9));
		A11: Dreg01PEAsyn_001 port map (x(9),RST,CLK,x(10));
		A12: Dreg01PEAsyn_001 port map (x(10),RST,CLK,x(11));
		A13: Dreg01PEAsyn_001 port map (x(11),RST,CLK,x(12));
		A14: Dreg01PEAsyn_001 port map (x(12),RST,CLK,x(13));
		A15: Dreg01PEAsyn_001 port map (x(13),RST,CLK,x(14));
		A16: Dreg01PEAsyn_001 port map (x(14),RST,CLK,x(15));
end arch;
