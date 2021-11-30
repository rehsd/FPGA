library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity bus8 is
    Port ( 
        d_in_A                  : IN std_logic_vector (7 downto 0);
        d_in_B                  : IN std_logic_vector (7 downto 0);
        d_in_SUM                : IN std_logic_vector (7 downto 0);
        d_in_COUNTER            : IN std_logic_vector (7 downto 0);
        d_in_MEM_ADDR           : IN std_logic_vector (7 downto 0);
        d_in_MEM                : IN std_logic_vector (7 downto 0);
        d_in_INST               : IN std_logic_vector (7 downto 0);
        load_enable_A           : IN std_logic;
        load_enable_B           : IN std_logic;
        load_enable_SUM         : IN std_logic;
        load_enable_COUNTER     : IN std_logic;
        load_enable_MEM_ADDR    : IN std_logic;
        load_enable_MEM         : IN std_logic;
        load_enable_INST        : IN std_logic;
        load_enable_JMP         : IN std_logic;
        clr                     : IN std_logic;
        sys_clk_i               : IN std_logic;
        q_out                   : OUT std_logic_vector (7 downto 0)  := "00000000"
    );
end bus8;

architecture Behavioral of bus8 is
    signal tempOut: std_logic_vector (7 downto 0);
begin
    process(d_in_A, d_in_B, d_in_SUM, d_in_COUNTER, d_in_MEM_ADDR, d_in_MEM, d_in_INST, load_enable_A, load_enable_B, load_enable_SUM, load_enable_COUNTER, load_enable_MEM_ADDR, load_enable_MEM, load_enable_INST, clr, sys_clk_i)
    begin 
        if(clr='1') then
            tempOut <="00000000";
        else--if(rising_edge(sys_clk_i)) then
            if (load_enable_COUNTER = '1') then
                tempOut <= d_in_COUNTER;
            elsif(load_enable_MEM = '1') then 
                tempOut <=d_in_MEM;
            elsif load_enable_A = '1' then
                tempOut <= d_in_A ;
            elsif load_enable_B = '1' then
                tempOut <= d_in_B;
            elsif load_enable_SUM = '1' then
                tempOut <= d_in_SUM ;
            elsif load_enable_MEM_ADDR  = '1' then
                tempOut <= d_in_MEM_ADDR;
            elsif load_enable_INST  = '1' then
                tempOut <= d_in_INST  ;
            elsif load_enable_JMP = '1' then
                tempOut <= d_in_INST;
            end if;
        end if;
    end process;
    q_out<=tempOut;
end Behavioral;
