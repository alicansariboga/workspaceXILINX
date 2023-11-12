----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 02:10:08 PM
-- Design Name: 
-- Module Name: Comparator - Behavioral
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
----------------------------------------------------------------------------------

-- 12.01.2023 --
-- COMP ORG LAB --

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

entity Comparator is
    Port ( A, B : in std_logic_vector(1 downto 0);
           BgreaterA : out STD_LOGIC;
           AequalB : out STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is
signal tmp1, tmp2, tmp3, tmp4, tmp5: std_logic;
-- Temporary signals

begin

-- A_Less_B combinational logic circuit
        tmp1 <= (not A(0)) and (not A(1)) and B(0);
        tmp2 <= (not A(1)) and B(1);
        tmp3 <= (not A(0)) and B(1) and B(0) and A(1);
        BgreaterA <= tmp1 or tmp2 or tmp3;
        
        tmp4<= A(0) xnor B(0);
        tmp5 <= A(1) xnor B(1);
        AequalB <= tmp4 or tmp5;

end Behavioral;
