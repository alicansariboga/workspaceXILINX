library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUL is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           D4 : in STD_LOGIC;
           D5 : in STD_LOGIC;
           D6 : in STD_LOGIC;
           D7 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           
           output1 : out STD_LOGIC
           );
end MUL;

architecture Behavioral of MUL is
begin

    output1 <= ((not S0) and (not S1) and (not S2) and D0) or 
                    ((S0) and (not S1) and (not S2) and D1) or 
                        ((not S0) and (S1) and (not S2) and D2) or 
                            ((S0) and (S1) and (S2) and D3) or 
                                ((not S0) and (not S1) and (S2) and D4) or 
                                    ((S0) and (not S1) and (S2) and D5) or 
                                        ((not S0) and (S1) and (S2) and D6) or 
                                            ((S0) and (S1) and (S2) and D7) ;


end Behavioral;
