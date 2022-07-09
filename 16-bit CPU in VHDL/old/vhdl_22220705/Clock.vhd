----------------------------------------------------------------------------------
-- Company: 
-- Engineer: rehsd
-- 
-- Create Date: November 2021
-- Design Name: 8-bit Clock
-- Module Name: Clock - Behavioral
-- Project Name: 8-bit Clock
-- Target Devices: Arty A7
-- Tool Versions: 
-- Description: Clock module from Ben Eater's 8-bit computer
-- 
-- Dependencies: 
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
--use IEEE.math_real.all;

entity Clock is
    Generic (
        CLOCK_RATE      : integer   := 100000000       --Clock of FPGA - 100 MHz on A7-100
        --CLOCKOUT_MAX    : integer   := 256                --Set to maximum desired clock output (Hz)
            );       
    Port ( 
        sys_clk_i             : in    STD_LOGIC;
        SpeedAdjust     : in    STD_LOGIC_VECTOR (4 downto 0);  --From rotary encoder - 0 to 255
        clock_ClockOut  : out   STD_LOGIC;                     --Output clock
        BTN             : in    STD_LOGIC;
        SWT             : in    STD_LOGIC;
        --clockSpeedDelay : out   STD_LOGIC_VECTOR (26 downto 0) := (others => '0');  --100 MHz max
        Halt            : in    STD_LOGIC
        );
end Clock;

architecture Behavioral of Clock is
    signal counter_max          : integer := 0;
    signal buttonDisableDelay   : integer;
    
    signal count_reg   	: unsigned(26 downto 0) := (others => '0');
    signal clockout_reg : std_logic :='1';      --start clock high
    
    begin
        clock_ClockOut <= clockout_reg;
        --clockSpeedDelay <= std_logic_vector(to_unsigned(counter_max, 27));

        --Scale counter_max based on 8-bit encoder location tracking (0 to 31 for choices for clock speed, min to max)
		count_proc: process(sys_clk_i, SWT, BTN, SpeedAdjust, Halt)
	    begin
	    
        if(Halt='1') then
            clockout_reg <= '0';
            counter_max <= 99999999;
		else
    		case SpeedAdjust is
                when "00000" =>
                    counter_max <= 99999999;
                when "00001" =>
                    counter_max <= 50000000;
                when "00010" =>
                    counter_max <= 25000000;
                when "00011" =>
                    counter_max <= 16660000;
                when "00100" =>
                    counter_max <= 11108889;
                when "00101" =>
                    counter_max <= 7405185;
                when "00110" =>
                    counter_max <= 4936297;
                when "00111" =>
                    counter_max <= 3290535;
                when "01000" =>
                    counter_max <= 2193471;
                when "01001" =>
                    counter_max <= 1462168;
                when "01010" =>
                    counter_max <= 974681;
                when "01011" =>
                    counter_max <= 649722;
                when "01100" =>
                    counter_max <= 433105;
                when "01101" =>
                    counter_max <= 288708;
                when "01110" =>
                    counter_max <= 192453;
                when "01111" =>
                    counter_max <= 128289;                    
                when "10000" =>
                    counter_max <= 85517;
                when "10001" =>
                    counter_max <= 57006;
                when "10010" =>
                    counter_max <= 38000;
                when "10011" =>
                    counter_max <= 25331;
                when "10100" =>
                    counter_max <= 16886;
                when "10101" =>
                    counter_max <= 11256;
                when "10110" =>
                    counter_max <= 7503;
                when "10111" =>
                    counter_max <= 5002;
                when "11000" =>
                    counter_max <= 3334;
                when "11001" =>
                    counter_max <= 2223;
                when "11010" =>
                    counter_max <= 1482;
                when "11011" =>
                    counter_max <= 988;
                when "11100" =>
                    counter_max <= 658;
                when "11101" =>
                    counter_max <= 439;
                when "11110" =>
                    counter_max <= 200;
                when "11111" =>
                    counter_max <= 1;                       
                when others =>          --shouldn't ever get here
                    counter_max <= 90000000;
            end case;
        
            if rising_edge(sys_clk_i) then
                if (SWT ='1') then       --btn = 1 is auto clock
                    if(count_reg > counter_max) then
                        count_reg <= (others => '0');
                        clockout_reg <= NOT clockout_reg;
                    else
                        count_reg <= count_reg + 1;
                        clockout_reg <= clockout_reg;
                    end if;
                else                    -- manual clock pulsing with BTN
                    --check for button press, if pressed, clock pulse
                    if(BTN='1') then
                        if buttonDisableDelay < 1 then
                            count_reg <= (others => '0');
                            clockout_reg <= NOT clockout_reg;
                            --reset delay countdown timer
                            buttonDisableDelay <= 1_600_0000;
                        else
                            buttonDisableDelay <= buttonDisableDelay - 1;
                        end if;
                    end if;
                end if;
            end if;
           end if;
		end process;
		
    end Behavioral;