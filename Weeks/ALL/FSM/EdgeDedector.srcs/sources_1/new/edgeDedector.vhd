----------------------------------------------------------------------------------

-- 12.01.2023 --
-- COMP ORG LAB --

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgeDetector is
    Port ( clk, reset : in STD_LOGIC;
           level : in STD_LOGIC;
           Moore_tick : out STD_LOGIC);
end edgeDetector;

architecture arch of edgeDetector is
    type stateMoore_type is (zero, edge, one); -- 3 states are required for Moore.
    signal stateMoore_reg, stateMoore_next : stateMoore_type;
begin
    process(clk, reset)
    begin
        if (reset = '1') then -- go to state zero if reset
            stateMoore_reg <= zero;
        
        elsif (clk'event and clk = '1') then -- otherwise update the states
            stateMoore_reg <= stateMoore_next;
        
        else 
            null;
        end if;
     end process;
     
     -- Moore Design
     process (stateMoore_reg, level)
     begin
        -- store current state as next
        stateMoore_next <= stateMoore_reg; -- required when no case statement is statisfied
        
        Moore_tick <= '0'; -- set tick to zero (so that 'tick = 1' is available for i cycle only)
        case stateMoore_reg is 
            when zero => -- if state is zero
                if level = '1' then -- and level is 1
                    stateMoore_next <= edge; -- then go to state edge.
                end if;
            when edge => 
        Moore_tick <= '1'; -- set the tick to 1.
                if level = '1' then -- if level is 1.
                    stateMoore_next <= one; -- go to state one.
                else
                    stateMoore_next <= zero; -- go to state zero.
                end if;
             when one =>
                if level = '1' then -- if level is 0.
                    stateMoore_next <= zero; -- then go to state zero.
                end if;
         end case;
     end process;
end arch;
