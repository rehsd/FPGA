--When connecting switch to LED directly, it would cause issues
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramMode is
    Port (  CLK:                    IN  std_logic;
            ProgramModeSwitch:      IN  std_logic;
            ProgramModeOut:         OUT std_logic;
            ProgramModeLED:         OUT std_logic         
        );
end ProgramMode;

architecture Behavioral of ProgramMode is
begin
    process(CLK, ProgramModeSwitch)
    begin
        if rising_edge(CLK) then
            ProgramModeOut <= ProgramModeSwitch;
            ProgramModeLED <= ProgramModeSwitch;
        end if;
    end process;
end Behavioral;
