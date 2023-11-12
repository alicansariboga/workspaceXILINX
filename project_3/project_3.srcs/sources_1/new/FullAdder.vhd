-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Carry : out STD_LOGIC;
           Sum : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
signal X1,X2,X3: std_logic;
begin

    X1 <= A xor B;
    X2 <= A and B;
    X3 <= X1 and Cin;
    
    Carry <= X2 or X3;
    Sum <= X1 xor cin;

end Behavioral;
