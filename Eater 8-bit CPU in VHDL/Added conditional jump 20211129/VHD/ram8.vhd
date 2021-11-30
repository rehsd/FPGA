library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ram8 is
   PORT
   (
      sys_clk_i:        IN   std_logic;
      data:             IN   std_logic_vector (7 DOWNTO 0);
      rw_address:       IN   std_logic_vector (3 downto 0) :="0000";
      load_addr_enable: IN   std_logic;
      write_enable:     IN   std_logic;
      q_addr_out:       OUT  std_logic_vector (3 DOWNTO 0);
      q_data_out:       OUT  std_logic_vector (7 DOWNTO 0);
      reset_mem:        IN   std_logic
   );
end ram8;

architecture Behavioral of ram8 is

TYPE mem IS ARRAY(0 TO 15) OF std_logic_vector(7 DOWNTO 0);
SIGNAL ram_block : mem;
signal data_out_t: std_logic_vector (7 downto 0);
signal address_t: std_logic_vector (3 downto 0) :="0000";

begin
    PROCESS (sys_clk_i, rw_address, reset_mem, write_enable, load_addr_enable, data)
        variable startup: boolean:=true;
    BEGIN
        if(startup=true OR reset_mem ='1') then
            --(memory address) <= "memory value"

            --*** 0 to 255 to 0, repeat *********************************************************
            ram_block(0) <="11100000";   --0    OUT
            ram_block(1) <="00101111";   --1    ADD addr15
            ram_block(2) <="01110100";   --2    JC 4
            ram_block(3) <="01100000";   --3    JMP 0
            ram_block(4) <="00111111";   --4    SUB addr15
            ram_block(5) <="11100000";   --5    OUT
            ram_block(6) <="10000000";   --6    JZ 0
            ram_block(7) <="01100100";   --7    JMP 4

            --just data...
            ram_block(8) <="00000000";
            ram_block(9) <="00000000";
            ram_block(10)<="00000000";
            ram_block(11)<="00000000";
            ram_block(12)<="00000000";
            ram_block(13)<="00000000";
            ram_block(14)<="00000000";
            ram_block(15)<="00000001";
            --******************************************************************************

            
--            --*** Add 3, then loop *********************************************************
--            ram_block(0) <="01010001";   --0    LDI 3
--            ram_block(1) <="01001111";   --1    STA 15
--            ram_block(2) <="01010000";   --2    LDI 0
--            ram_block(3) <="00101111";   --3    ADD 15
--            ram_block(4) <="11100000";   --4    OUT
--            ram_block(5) <="01100011";   --5    JMP addr3
            
--            --just data...
--            ram_block(6) <="00000000";
--            ram_block(7) <="00000000";
--            ram_block(8) <="00000000";
--            ram_block(9) <="00000000";
--            ram_block(10)<="00000000";
--            ram_block(11)<="00000000";
--            ram_block(12)<="00000000";
--            ram_block(13)<="00000000";
--            ram_block(14)<="00000000";
--            ram_block(15)<="00000000";
--            --******************************************************************************
            
            
--            --*** Add 14 and 28 ********************************************************
--            ram_block(0) <="00011110";   --0    LDA addr14 (0001  1110)
--            ram_block(1) <="00101111";   --1    ADD addr15 (0010  1111)
--            ram_block(2) <="11100000";   --2    OUT
--            ram_block(3) <="11110000";   --3    HLT
            
--            --just data...
--            ram_block(4) <="00011110";
--            ram_block(5) <="00101111";
--            ram_block(6) <="11100000";
--            ram_block(7) <="11110000";
--            ram_block(8) <="11110000";
--            ram_block(9) <="11110000";
--            ram_block(10)<="11110000";
--            ram_block(11)<="11110000";
--            ram_block(12)<="11110000";
--            ram_block(13)<="11110000";
--            ram_block(14)<="00011100";   --28
--            ram_block(15)<="00001110";   --14
--            --******************************************************************************
            
            startup:=false;
            data_out_t <= ram_block(0);
        else
            if rising_edge(sys_clk_i) then
                if(load_addr_enable = '1') then
                    data_out_t <= ram_block(to_integer(unsigned(rw_address)));
                    address_t <= rw_address;
                elsif(write_enable = '1') then
                    ram_block(to_integer(unsigned(address_t))) <= data;
                    data_out_t <= ram_block(to_integer(unsigned(address_t)));
                    --address_t <= rw_address;
                end if;
            end if;        
        end if;


    END PROCESS;
    q_data_out <= data_out_t;
    q_addr_out <= address_t;  
    
end Behavioral;
