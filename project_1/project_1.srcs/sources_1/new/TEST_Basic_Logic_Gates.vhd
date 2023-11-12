----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2022 10:07:42 PM
-- Design Name: 
-- Module Name: TEST_Basic_Logic_Gates - Behavioral
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

entity TEST_Basic_Logic_Gates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end TEST_Basic_Logic_Gates;

----------------------------------------------------------------------------

architecture Behavioral_BUFFER of TEST_Basic_Logic_Gates is
begin

    process(A)
    begin
    
        if (A = '1') then
            Y <= '1';
        else 
            Y <= '0';
        end if;
    
    end process;

end Behavioral_BUFFER;

----------------------------------------------------------------------------

architecture Behavioral_AND of TEST_Basic_Logic_Gates is
begin

    process(A,B)
    begin

        if ((A = '1') and (B = '1')) then
            Y <= '1';
        else
            Y <= '0';
        end if;

    end process;

end Behavioral_AND;

----------------------------------------------------------------------------

architecture Behavioral_OR of TEST_Basic_Logic_Gates is
begin




end Behavioral_OR;

----------------------------------------------------------------------------

architecture Behavioral_XOR of TEST_Basic_Logic_Gates is
begin



end Behavioral_XOR;

----------------------------------------------------------------------------

architecture Behavioral_NOT of TEST_Basic_Logic_Gates is
begin




end Behavioral_NOT;

----------------------------------------------------------------------------

architecture Behavioral_NAND of TEST_Basic_Logic_Gates is
begin




end Behavioral_NAND;

----------------------------------------------------------------------------

architecture Behavioral_NOR of TEST_Basic_Logic_Gates is
begin




end Behavioral_NOR;

----------------------------------------------------------------------------

architecture Behavioral_XNOR of TEST_Basic_Logic_Gates is
begin




end Behavioral_XNOR;

----------------------------------------------------------------------------