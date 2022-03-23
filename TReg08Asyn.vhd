library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity asctff8 is
    Port ( t: in STD_LOGIC;
	 clk,rst : in  STD_LOGIC;
           q :inout  STD_LOGIC_VECTOR(7 downto 0));
end asctff8;

architecture Behavioral of asctff8 is
signal clkin:std_logic;
signal x:std_logic_vector(6 downto 0);
component tff
   port (t,clk,rst:in std_logic;
	      q:out std_logic);
			end component;
component clock_divider
   port (clk,rst:in std_logic;
	      clkd:out std_logic);
			end component;
begin
u1:tff port map(t,clkin,rst,q(0));
u2:tff port map(t,x(0),rst,q(1));
u3:tff port map(t,x(1),rst,q(2));
u4:tff port map(t,x(2),rst,q(3));
u5:tff port map(t,x(3),rst,q(4));
u6:tff port map(t,x(4),rst,q(5));
u7:tff port map(t,x(5),rst,q(6));
u8:tff port map(t,x(6),rst,q(7));
u9:clock_divider port map(clk,rst,clkin);
x(0)<=q(0);
x(1)<=q(1);
x(2)<=q(2);
x(3)<=q(3);
x(4)<=q(4);
x(5)<=q(5);
x(6)<=q(6);
end Behavioral;
