----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2022 01:14:50 PM
-- Design Name: 
-- Module Name: MUX - mux_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
    Port ( input_1 : in STD_LOGIC_VECTOR (0 TO 7);
           input_2 : in STD_LOGIC_VECTOR (0 TO 2);
           output : out STD_LOGIC);
end MUX;

architecture mux_arch of MUX is
    begin
        process(input_1, input_2)
            begin
                case input_2 is
                   when "000" => output<=input_1(0);
                   when "001" => output<=input_1(1);
                   when "010" => output<=input_1(2);
                   when "011" => output<=input_1(3);
                   when "100" => output<=input_1(4);
                   when "101" => output<=input_1(5);
                   when "110" => output<=input_1(6);
                   when "111" => output<=input_1(7);
                   when others => output<= '0';
                end case;
            end process;

end mux_arch;
