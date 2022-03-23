library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift is
port(
		clk:in std_logic;
		rst:in std_logic;
		sin:in std_logic;
		pin:in std_logic_vector(7 downto 0);
		mode:in std_logic_vector(1 downto 0);
		sout:out std_logic;
		pout:out std_logic_vector(7 downto 0)
		);
end shift;


architecture Behavioral of shift is
signal temp:std_logic_vector(7 downto 0);
signal count:integer range 0 to 8:=0;

begin
    process(rst,clk,sin,mode,pin)
		
		begin
		
		if rst='1' then
		sout<='0';
		pout<="00000000";
		temp<="00000000";
		
		
		elsif(clk'event and clk='0')then
		
		  case mode is
		  --SISO
		  when "00"=>
		  temp(6 downto 0)<= temp(7 downto 1);
		  temp(7)<=sin;
		  sout<=temp(0);
		  
		  --SIPO
		  when"01"=>
		  temp(6 downto 0)<= temp(7 downto 1);
        temp(7)<=sin;
		  pout<=temp;
		
		  --PIPO
		  when"10"=>
		  temp<=pin;
		  pout<=temp;
		 
        --PISO
		  when "11"=>
		   if count=0 then
		   temp<=pin;
			sout<=temp(0);
			count<=count+1;
			
			elsif	count<8 then
			temp(6 downto 0)<= temp(7 downto 1);
			sout<=temp(0);
			count<=count+1;
			
			else 
			sout<=temp(7);
			end if;
		   
		  when others=>
		  null;
		  
		  end case;
		  
		end if;	
		   
		end process;
		
end Behavioral;