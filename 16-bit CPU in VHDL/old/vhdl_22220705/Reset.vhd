
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reset is
    Port ( 
        CLK:                IN  std_logic;
        ResetButtonIn:      IN  std_logic   :='0';
        ExcludeRAM:         IN  std_logic   :='0';
        ResetActiveHigh:    OUT std_logic   :='0';
        ResetActiveHighRAM: OUT std_logic   :='0';
        ResetActiveLow:     OUT std_logic   :='1';
        ResetLED:           OUT std_logic   :='0'; 
        ResetRAMLED:        OUT std_logic   :='0'
    );
end Reset;

architecture Behavioral of Reset is
begin
    ResetActiveHigh     <= ResetButtonIn;
    ResetActiveLow      <= NOT ResetButtonIn;
    ResetLED            <= ResetButtonIn ;
--                ResetRAMLED         <= '1' when (ExcludeRAM = '0' and ResetButtonIn = '1') else '0';
--                ResetActiveHighRAM  <= '1' when (ExcludeRAM = '0' and ResetButtonIn = '1') else '0';
    process (CLK, ExcludeRAM, ResetButtonIn)
    BEGIN
        if rising_edge(CLK) then
            if ResetButtonIn = '1' and ExcludeRAM = '0' then
                ResetRAMLED <= '1';
                ResetActiveHighRAM <= '1';
             else
                ResetRAMLED <= '0';
                ResetActiveHighRAM <= '0';             
            end if;
        end if;
    END PROCESS;
end Behavioral;
