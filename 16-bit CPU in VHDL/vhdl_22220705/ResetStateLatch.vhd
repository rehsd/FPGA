library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ResetStateLatch is
    Port (  
        sys_clk_i : in    STD_LOGIC;
        s   : in    STD_LOGIC;
        r   : in    STD_LOGIC;
        Q   : out   STD_LOGIC   :='0';
        Qnot : out  STD_LOGIC   :='1'
        );
end ResetStateLatch;

architecture Behavioral of ResetStateLatch is
signal t1,t2 : std_logic; 
   begin    
    t1 <= r nor t2;
    t2 <= s nor t1;
      process (sys_clk_i,r,s)  
      begin
       if(rising_edge(sys_clk_i)) then
             if(r='0' and s='0') then
              Q <=t1;
              Qnot <= t2;
             elsif(r='0' and s='1') then
              Q <='1';
              Qnot <='0';
             elsif(r='1' and s='0') then
              Q <='0';
              Qnot <='1';
             elsif(r='1' and s='1') then
              Q <='X';
              Qnot <='X';
             end if;
            end if;          
      end process;  
end Behavioral;
