----------------------------------------------------------------------------------

-- 06.10.22 --
-- COMP ORG LAB --

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MyX is
    Port ( input_1 : in STD_LOGIC;
           input_2 : in STD_LOGIC;
           result : out STD_LOGIC);
end MyX;

architecture Behavioral of MyX is
begin


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
