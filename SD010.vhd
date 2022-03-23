library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity seq_det is
port(   clk : in std_logic;  --clock signal
        reset : in std_logic;   --reset signal
        seq : in std_logic;    --serial bit sequence    
        det : out std_logic  --A '1' indicates the pattern "010" is detected in the sequence. 
        );
end seq_det;

architecture Behavioral of seq_det is

type state_type is (s0,s1,s2);  --Defines the type for states in the state machine
signal state : state_type := s0;  --Declare the signal with the corresponding state type.

begin

process(clk,reset) 
begin
    if( reset = '1' ) then     --resets state and output signal when reset is asserted.
        det<= '0';
        state <= s0; 
    elsif ( rising_edge(clk) ) then   --calculates the next state based on current state and input bit.
        case state is
            when s0 =>   --when the current state is s0.
                det <= '0';
                if ( seq = '0' ) then
                    state <= s1;
                else    
                    state <= s0;
                end if; 
            when s1=>   --when the current state is s1.
                if ( seq = '0' ) then
                    state <= s1;
                else    
                    state <= s2;
                end if; 
           
            when s2 =>   --when the current state is s2.
                if ( seq = '1' ) then
                    state <= s2;
                else    
                    state <= s0;
                    det <= '1';   --Output is asserted when the pattern "010" is found in the sequence.
                end if;     
            when others =>
                NULL;
        end case;
    end if;
end process;    
end Behavioral; 
