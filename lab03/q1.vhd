library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity function_g is
    Port (
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        c : in STD_LOGIC;
        g : out STD_LOGIC
    );
end function_g;

-- Conditional signal assignment architecture
architecture conditional_arch of function_g is
begin
    g <= '1' when (a = '0' and b = '0' and c = '0') else  -- 0 0 0
         '0' when (a = '0' and b = '0' and c = '1') else  -- 0 0 1
         '1' when (a = '0' and b = '1' and c = '0') else  -- 0 1 0
         '0' when (a = '0' and b = '1' and c = '1') else  -- 0 1 1
         '0' when (a = '1' and b = '0' and c = '0') else  -- 1 0 0
         '1' when (a = '1' and b = '0' and c = '1') else  -- 1 0 1
         '1' when (a = '1' and b = '1' and c = '0') else  -- 1 1 0
         '0'; -- 1 1 1 (default case, and covers don?t care cases)
end conditional_arch;
