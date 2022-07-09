----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:    11:33:37 08/19/2011 
--
-- Module Name:    debouncer - Behavioral 
-- Project Name: 	 PmodENC
-- Target Devices: Nexys 3 
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
--	This file defines a debouncer for eliminating the logic noise presented when the shaft is rotated.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Debounce_Encoder is
    Port ( sys_clk_i : in  STD_LOGIC;
			-- signals from the pmod
           Ain    : in  STD_LOGIC; 
           Bin    : in  STD_LOGIC;
		   --BTNin  : in  STD_LOGIC;
			-- debounced signals 
		   Aout   : out STD_LOGIC;
		   Bout   : out STD_LOGIC
		   --BTNout : out STD_LOGIC
			  );
end Debounce_Encoder;

architecture Behavioral of Debounce_Encoder is

signal sclk: std_logic_vector (7 downto 0);
signal sclkBTN: std_logic_vector (18 downto 0);
signal sampledA, sampledB, sampledBTN : std_logic;
begin
	process(sys_clk_i)
		begin 
			if rising_edge(sys_clk_i) then
				sampledA <= Ain;
				sampledB <= Bin;
				--sampledBTN <= BTNin ;
				-- clock is divided to 1MHz
				-- samples every 1uS to check if the input is the same as the sample
				-- if the signal is stable, the debouncer should output the signal
				if sclk > "01100011" then        --0 to 99, if above...
					if sampledA = Ain then 
						Aout <= Ain;
					end if;
					if sampledB = Bin then 
						Bout <= Bin;
					end if;
					sclk <="00000000";
				else
					sclk <= sclk +1;
				end if;
				
--				if sclkBTN > "11110100001001000000" then 
--				    if sampledBTN = BTNin  then
--					    BTNout <= BTNin ;
--					end if;
--					sclkBTN <= "0000000000000000000";
--				else
--                    sclkBTN <= sclkBTN +1;
--				end if;
			end if;
	end process;
end Behavioral;

