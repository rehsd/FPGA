
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reset is
    Port ( 
        CLK:                IN  std_logic;
        ResetButtonIn:      IN  std_logic   :='0';
        ResetActiveHigh:    OUT std_logic   :='0';
        ResetActiveLow:     OUT std_logic   :='1';
        ResetLED:           OUT std_logic   :='0' 
    );
end Reset;

architecture Behavioral of Reset is
begin
    ResetActiveHigh     <= ResetButtonIn;
    ResetActiveLow      <= NOT ResetButtonIn;
    ResetLED            <= ResetButtonIn ;
end Behavioral;
