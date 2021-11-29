library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reset8 is
    Port ( 
        ResetButtonIn:      IN  std_logic;
        ResetActiveHigh:    OUT std_logic;
        ResetActiveLow:     OUT std_logic;
        ResetLED:           OUT std_logic 
    );
end reset8;

architecture Behavioral of reset8 is
begin
    --To do: Add debouncing
    ResetActiveHigh <= ResetButtonIn;
    ResetActiveLow  <= NOT ResetButtonIn;
    ResetLED <= ResetButtonIn ;
end Behavioral;
