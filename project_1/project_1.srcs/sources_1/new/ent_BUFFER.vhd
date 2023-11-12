----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2022 08:42:00 PM
-- Design Name: 
-- Module Name: ent_BUFFER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity ent_BUFFER is
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end ent_BUFFER;

architecture Behavioral of ent_BUFFER is
begin

    process(A)
    begin
    
        if (A = '1') then
            Y <= '1';
        else 
            Y <= '0';
        end if;
    
    end process;


end Behavioral;
