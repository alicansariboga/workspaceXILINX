----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2022 10:32:45 PM
-- Design Name: 
-- Module Name: TEST - Behavioral
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

-- X01 and X02 series are input and X03 serie is output.
--  **Differences between Components and Processes** --
-- This page contains "AND, OR, XOR, NOT, NOR, NAND, XNOR" .

entity TEST is
    Port ( A01, B01, C01, D01  : in STD_LOGIC;
                B02, C02, D02  : in STD_LOGIC;
           A03, B03, C03, D03  : out STD_LOGIC);
end TEST;

----------------------------------------------------

architecture Behavioral of TEST is
begin

    PROP_1:process(A01)
    begin
    
    --NOT--
    
        if (A01 = '1') then
            A03 <= '0';
        else 
            A03 <= '1';
        end if;
    
    end process;
    
----------------------------------------------------
    
    PROP_2:process(B01,B02)
    begin
    
    --AND--

        if ((B01 = '1') and (B01 = '1')) then
            B03 <= '1';
        else
            B03 <= '0';
        end if;

    end process;
    
----------------------------------------------------
    
    PROP_3:process(C01,C02)
    begin
    
    --XNOR--
    
        if ((C01 = '0') and (C02 = '0')) then
            C03 <= '1';
        elsif ((C01 = '1') and (C02 = '1')) then
            C03 <= '1';
        else 
            C03 <= '0';
        end if;
    
    end process;
    
----------------------------------------------------

    PROP_4:process(D01, D02)
    begin
    
    --NAND--
    
        if ((D01 = '1') and (D02 = '1')) then
            D03 <= '0';
        else
            D03 <= '1';
        end if;
       
    end process;

end Behavioral;





------------------ More Behavioral------------------

--architecture Behavioral_BUFFER of TEST is
--begin

--    process(A)
--    begin
    
--        if (A = '1') then
--            Y <= '1';
--        else 
--            Y <= '0';
--        end if;
    
--    end process;

--end Behavioral_BUFFER;

--architecture Behavioral_AND of TEST is
--begin

--    process(A,B)
--    begin

--        if ((A = '1') and (B = '1')) then
--            Y <= '1';
--        else
--            Y <= '0';
--        end if;

--    end process;

--end Behavioral_AND;

--architecture Behavioral_XOR of TEST is
--begin

--    process(A,B)
--    begin
    
--        if ((A = '0') and (B = '1')) then
--            Y <= '1';
--        elsif ((A = '1') and (B = '0')) then
--            Y <= '1';
--        else 
--            Y <= '0';
--        end if;
    
--    end process;

--end Behavioral_XOR;

--architecture Behavioral_NOT of TEST is
--begin

--    process(A)
--    begin
    
--        if (A = '1') then
--            Y <= '0';
--        else 
--            Y <= '1';
--        end if;
    
--    end process;

--end Behavioral_NOT;

--architecture Behavioral_NAND of TEST is
--begin

--    process(A,B)
--    begin
    
--        if ((A = '1') and (B = '1')) then
--            Y <= '0';
--        else 
--            Y <= '1';
--        end if;
    
--    end process;

--end Behavioral_NAND;

--architecture Behavioral_NOR of TEST is
--begin

--    process(A,B)
--    begin
    
--        if ((A = '0') and (B = '0')) then
--            Y <= '1';
--        else 
--            Y <= '0';
--        end if;
    
--    end process;

--end Behavioral_NOR;

--architecture Behavioral_XNOR of TEST is
--begin

--    process(A,B)
--    begin
    
--        if ((A = '0') and (B = '0')) then
--            Y <= '1';
--        elsif ((A = '1') and (B = '1')) then
--            Y <= '1';
--        else 
--            Y <= '0';
--        end if;
    
--    end process;

--end Behavioral_XNOR;
