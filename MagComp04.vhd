
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MagComp04 is
    Port ( A: in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
    
           X: out  STD_LOGIC;
           Y: out  STD_LOGIC;
           Z: out  STD_LOGIC;
			  CA1,CA2,CA3:in STD_LOGIC
			  );
end MagComp04;

architecture Behavioral of MagComp04 is
 component  MagComp01 is

       Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P : out  STD_LOGIC;
           Q : out  STD_LOGIC;
           J : out  STD_LOGIC;
			  C1 ,C2 ,C3 : IN STD_LOGIC
			  );
			  end component;
			  
			  signal K,L,M :STD_LOGIC_VECTOR(2 DOWNTO 0);
			  BEGIN
			  
U1: MagComp01 port map(A(0),B(0),K(0),L(0),M(0),CA1,CA2,CA3);
U2: MagComp01 port map(A(1),B(1),K(1),L(1),M(1),K(0),L(0),M(0));
U3: MagComp01 port map(A(2),B(2),K(2),L(2),M(2),K(1),L(1),M(1));
U4: MagComp01 port map(A(3),B(3),X,Y,Z,K(2),L(2),M(2));


end Behavioral;

