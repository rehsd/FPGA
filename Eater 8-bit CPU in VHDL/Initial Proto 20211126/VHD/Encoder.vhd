
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Encoder is
		Port (
					sys_clk_i: in STD_LOGIC;
					-- signals from the pmod
					A : in  STD_LOGIC;	
					B : in  STD_LOGIC;
                    -- position of the name name 
					EncOut: out STD_LOGIC_VECTOR (4 downto 0)
			  );
end Encoder;

architecture Behavioral of Encoder is

type stateType is ( idle, R1, R2, R3, L1, L2, L3, add, sub);
signal curState, nextState: stateType;
signal signalOut: std_logic_vector (4 downto 0) := (others => '0');

begin
    --EncOut <= "00000000";
EncOut <= signalOut;

	clock: process (sys_clk_i)

    begin
        if rising_edge(sys_clk_i) then
            -- detect if the shaft is rotated to right or left
            -- right: add 1 to the position at each click
            -- left: subtract 1 from the position at each A 
            if curState /= nextState then
                if (curState = add) then
                    if signalOut < "11111" then 
                        signalOut <= signalOut+1;
                    else
                        signalOut <= "11111";
                    end if;
                elsif (curState = sub) then
                    if signalOut > "00000" then 
                        signalOut <= signalOut-1;
                    else
                        signalOut <= "00000";
                    end if;
                else
                    signalOut <= signalOut;
                end if;
            else
                signalOut <= signalOut;
            end if;
            curState <= nextState;
        end if;
    end process; 

    next_state: process (curState, A, B)
	
    begin
			case curState is
				--detent position
            when idle =>
					 if B = '0' then
                        nextState <= R1;
					 elsif A = '0' then
						nextState <= L1;
					 else
						nextState <= idle;
                end if;
				-- start of right cycle
				--R1
            when R1 =>
					if B='1' then
                  nextState <= idle;
               elsif A = '0' then
                  nextState <= R2;
					else
						nextState <= R1;
               end if;
            --R2  					
            when R2 =>
					if A ='1' then
                  nextState <= R1;
               elsif B = '1' then
                  nextState <= R3;
					else
						nextState <= R2;
               end if;
				--R3	
				when R3 =>
					if B ='0' then
                  nextState <= R2;
               elsif A = '1' then
                  nextState <= add;
					else
						nextState <= R3;
               end if;
				when add =>	
					nextState <= idle;
				-- start of left cycle
            --L1 
				when L1 =>
					if A ='1' then
                  nextState <= idle;
               elsif B = '0' then
                  nextState <= L2;
					else
						nextState <= L1;
               end if;
				--L2	
				when L2 =>
					if B ='1' then
                  nextState <= L1;
               elsif A = '1' then
                  nextState <= L3;
					else
						nextState <= L2;
               end if;
				--L3
				when L3 =>
					if A ='0' then
                  nextState <= L2;
               elsif B = '1' then
                  nextState <= sub;
					else
						nextState <= L3;
               end if;
				when sub =>	
					nextState <= idle;
				when others =>
					nextState <= idle;
        end case;
	end process; 	

end Behavioral;
