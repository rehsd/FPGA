library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registerFlags is
    Port ( 
        d_in            : IN std_logic_vector (7 downto 0);
        load_enable     : IN std_logic;
        clr             : IN std_logic;
        sys_clk_i       : IN std_logic;
        q_out           : OUT std_logic_vector (7 downto 0)    );
end registerFlags;

architecture Behavioral of registerFlags is
signal q_out_t:  std_logic_vector (7 downto 0);

begin
    process(sys_clk_i, clr, load_enable, d_in)
    begin
        if clr = '1' then
            q_out_t <= "00000000";
        elsif (rising_edge(sys_clk_i)) then
            if load_enable = '1' then
                q_out_t <= d_in;
            end if;
        end if;
    end process;
    q_out <= q_out_t;
end Behavioral;
