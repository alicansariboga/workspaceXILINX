----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2022 10:08:27 PM
-- Design Name: 
-- Module Name: MyProject - workout
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

entity MyProject is
    Port ( switch : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           M1 : out STD_LOGIC;
           M2 : out STD_LOGIC);
end MyProject;

architecture workout of MyProject is
begin

    M1 <= switch and not (S1 nor S2);
    -- M1 <= (switch and not S2 and not S1) (or switch and S2 and S1);
    M2 <= switch and (not S2) and (S1);

end workout;
