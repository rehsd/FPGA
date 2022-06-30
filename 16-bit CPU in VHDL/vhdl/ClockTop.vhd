----------------------------------------------------------------------------------
-- Create Date:    14:52:09 08/17/2011 
-- Modified 14 NOV architecture by rehsd
--
-- Description: 
-- Generates a slow clock for processor. 
-- The clock can be adjusted dynamically with a rotary encoder.
-- Switch and button to support manual, push-button clock pulses.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClockTop is
    Port (
			  sys_clk_i            : in    std_logic;                         --100 MHz clock from Arty
              EncoderIn          : in    STD_LOGIC_VECTOR (7 downto 4);  	-- the pmod is plugged in to the lower row of connector JB
			  ClockOut           : out   STD_LOGIC;      
			  --clockSpeedDelay    : out   STD_LOGIC_VECTOR (27 downto 0);  --100 MHz EightBit_Clock                    --Output clock for 8-bit computer
			  Halt               : in    STD_LOGIC
			  );
end ClockTop;

architecture Behavioral of ClockTop is
    component Clock is
        Generic (
            CLOCK_RATE      : integer   := 100000000              --Clock of FPGA - 100 MHz on A7-100
            --CLOCKOUT_MAX    : integer   :=      256                --Set to maximum desired clock output (Hz)
                );       
        Port ( 
            sys_clk_i         : in    STD_LOGIC;
            SpeedAdjust     : in    STD_LOGIC_VECTOR (4 downto 0); --From rotary encoder - 0 to 255
            clock_ClockOut  : out   STD_LOGIC;
            BTN             : in    STD_LOGIC;
            SWT             : in    STD_LOGIC;
            --clockSpeedDelay : out   STD_LOGIC_VECTOR (27 downto 0);  --100 MHz max
            Halt            : in    STD_LOGIC
            );  
    end component; 
    
    component Debounce_Encoder is
        Port (
                sys_clk_i        : in    STD_LOGIC;
                Ain            : in    STD_LOGIC;
                Bin            : in    STD_LOGIC;
                Aout           : out   STD_LOGIC;
                Bout           : out   STD_LOGIC
            );
    end component;
    
    component Debounce_Switch is
        Port (
                sys_clk_i     : IN  STD_LOGIC;  --input clock
                reset_n       : IN  STD_LOGIC;  --asynchronous active low reset
                BTNin         :  IN  STD_LOGIC;  --input signal to be debounced
                BTNout        : OUT STD_LOGIC --debounced signal
            );
    end component;
        
    component Encoder is
        Port (
                sys_clk_i      : in    STD_LOGIC;
                A              : in    STD_LOGIC;
                B              : in    STD_LOGIC;
                EncOut         : inout STD_LOGIC_VECTOR (4 downto 0)
             );
	end component;

signal EncO : std_logic_vector (4 downto 0);
signal AO, BO, BTNO: std_logic;

begin
	D1: Debounce_Encoder port map ( sys_clk_i=>sys_clk_i, Ain=>EncoderIn(4), Bin=>EncoderIn(5), Aout=> AO, Bout=> BO );
    D2: Debounce_Switch port map (sys_clk_i=>sys_clk_i, reset_n=>'1', BTNin => EncoderIn(6), BTNout=>BTNO);
	E1: Encoder port map ( sys_clk_i=>sys_clk_i, A=>AO, B=>BO, EncOut=>EncO);
	--C1: Clock  port map ( ClockIn=>ClockIn, SpeedAdjust=>EncO, clock_ClockOut=>ClockOut, BTN=>BTNO, SWT=>EncoderIn(7), clockSpeedDelay=>clockSpeedDelay, Halt=>Halt);
	C1: Clock  port map ( sys_clk_i=>sys_clk_i, SpeedAdjust=>EncO, clock_ClockOut=>ClockOut, BTN=>BTNO, SWT=>EncoderIn(7), Halt=>Halt);
end Behavioral;
