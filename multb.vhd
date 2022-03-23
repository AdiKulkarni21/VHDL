library ieee;
use ieee.std_logic_1164.all;

entity multy_tb is           -- testbench
end entity;

architecture foo of multy_tb is
    signal x, y:        std_logic_vector (3 downto 0);
    signal yp, rp:      std_logic_vector (7 downto 0);

    use ieee.numeric_std.all;

    function to_string (inp: std_logic_vector) return string is
        variable image_str: string (1 to inp'length);
        alias input_str:  std_logic_vector (1 to inp'length) is inp;
    begin
        for i in input_str'range loop
            image_str(i) := character'VALUE(std_ulogic'IMAGE(input_str(i)));
        end loop;
        return image_str;
    end function;

begin
DUT:
    entity work.multy
        port map (
            x => x,
            y => y,
            p => yp
        );
STIMULI:
    process
    begin
        for i in 0 to 15 loop
            x <= std_logic_vector(to_unsigned(i, x'length));
            for j in 0 to 15 loop
                y <= std_logic_vector(to_unsigned(j, y'length));
                wait for 0 ns; -- assignments take effect
                rp <= std_logic_vector(unsigned (x) * unsigned(y));
                wait for 10 ns;
                if yp /= rp then
                    report "multy error";
                    report HT & "expected " & to_string (rp);
                    report HT & "got      " & to_string (yp);
                end if;
            end loop;
        end loop;
        wait;
    end process;
end architecture;