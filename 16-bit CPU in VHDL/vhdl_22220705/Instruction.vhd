library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity Instruction is
    Port ( 
        d_in            : IN std_logic_vector (15 downto 0);
        load_enable     : IN std_logic;
        clr             : IN std_logic :='0';
        sys_clk_i       : IN std_logic;
        q_out           : OUT std_logic_vector (15 downto 0) := "0000000000000000"
        --inst_lsb        : OUT std_logic_vector (3 downto 0) := "0000";
        --inst_msb        : OUT std_logic_vector (3 downto 0) := "0000"
        );
end Instruction;

architecture Behavioral of Instruction is
signal q_out_t:  std_logic_vector (15 downto 0) := "0000000000000000";

begin
    process(sys_clk_i, clr, load_enable, d_in)
    begin
        if clr = '1' then
            q_out_t <= "0000000000000000";
        --elsif (rising_edge(sys_clk_i)) then
        elsif load_enable = '1' then
            q_out_t <= d_in;
        else
            q_out_t <= q_out_t;
        end if;
    end process;
    q_out <= q_out_t;
    --inst_lsb <= q_out_t(3 downto 0);    
    --inst_msb <= q_out_t(7 downto 4);    -- std_logic_vector(resize(shift_right(unsigned(q_out_t),4),4));
end Behavioral;
