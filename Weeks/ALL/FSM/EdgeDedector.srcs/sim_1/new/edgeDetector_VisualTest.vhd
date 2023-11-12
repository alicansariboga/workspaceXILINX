----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/12/2023 05:09:44 PM
-- Design Name: 
-- Module Name: edgeDetector_VisualTest - Behavioral
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

-- Moore Visual Test

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgeDetector_VisualTest is
    Port ( CLOCK_50, reset : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR(1 downto 0);
           LEDR : out STD_LOGIC_VECTOR(1 downto 0)
    );
end edgeDetector_VisualTest;

architecture arch of edgeDetector_VisualTest is
    signal clk_Pulse1s: std_logic;
begin

        -- clock 1 s
        clock_1s: entity work.clockTick
        generic map (M=>50000000, N=>26)
        port map (clk=CLOCK_50, reset=>reset,
                        clkPulse=clk_Pulse1s);
        
        -- edge detector
        edgeDetector_VisualTest : entity work.edgeDetector
            port map (clk=>clk_Pulse1s, reset=>reset, level=>SW(1),
                        Moore_tick=> LEDR(0));

end arch;
