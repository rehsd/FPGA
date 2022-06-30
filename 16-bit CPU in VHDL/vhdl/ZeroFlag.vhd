library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFlag is
    Port (
        d_in_A  : IN  std_logic_vector (15 downto 0);
        isZero  : OUT std_logic       
    );
end ZeroFlag;

architecture Behavioral of ZeroFlag is

begin
    isZero <= '1' when d_in_A = "0000000000000000" else '0';
end Behavioral;
