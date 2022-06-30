library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity RAM is
   PORT
   (
      sys_clk_i             :  IN   std_logic;
      data                  :  IN   std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      rw_address            :  IN   std_logic_vector (3 downto 0)    := "0000";
      load_addr_enable      :  IN   std_logic                        := '0';
      write_enable          :  IN   std_logic                        := '0';
      q_addr_out            :  OUT  std_logic_vector (3 DOWNTO 0)    := "0000";
      q_data_out            :  OUT  std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      reset_mem             :  IN   std_logic                        := '0';
      load_ram_direct       :  IN   std_logic                        := '0';
      read_ram_direct       :  IN   std_logic                        := '0';
      ram_direct_addr       :  IN   std_logic_vector (3 downto 0)    := "0000";
      ram_direct_data_in    :  IN   std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      ram_direct_data_out   :  OUT  std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      ram_direct_addr_out   :  OUT  std_logic_vector (3 downto 0)    := "0000"
   );
end RAM;

architecture Behavioral of RAM is

TYPE mem IS ARRAY(0 TO 15) OF std_logic_vector(15 DOWNTO 0);
SIGNAL ram_block            : mem;
signal data_out_t           : std_logic_vector (15 downto 0)     := "0000000000000000";
signal address_t            : std_logic_vector (3 downto 0)      := "0000";
signal direct_data_out_t    : std_logic_vector (15 downto 0)     := "0000000000000000";
signal direct_addr_out_t    : std_logic_vector (3 downto 0)      := "0000";

begin
    PROCESS (sys_clk_i, rw_address, reset_mem, write_enable, load_addr_enable, data, ram_block, load_ram_direct, ram_direct_data_in, read_ram_direct, ram_direct_addr)
        variable startup: boolean:=true;
    BEGIN
        if(startup=true OR reset_mem ='1') then
            --(memory address) <= "memory value"

--            --*** 0 to 255 to 0, repeat *********************************************************
--            ram_block(0) <="11100000";   --0    OUT
--            ram_block(1) <="00101111";   --1    ADD addr15
--            ram_block(2) <="01110100";   --2    JC 4
--            ram_block(3) <="01100000";   --3    JMP 0
--            ram_block(4) <="00111111";   --4    SUB addr15
--            ram_block(5) <="11100000";   --5    OUT
--            ram_block(6) <="10000000";   --6    JZ 0
--                ram_block(7) <="01100100";   --7    JMP 4

--            --just data...
--            ram_block(8) <="00000000";
--            ram_block(9) <="00000000";
--            ram_block(10)<="00000000";
--            ram_block(11)<="00000000";
--            ram_block(12)<="00000000";
--            ram_block(13)<="00000000";
--            ram_block(14)<="00000000";
--            ram_block(15)<="00000001";
--            --******************************************************************************

            
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
            
            
            --*** Add 14 and 28 ********************************************************
            ram_block(0) <="0000000000011110";   --1E    LDA addr14 (0001  1110)
            ram_block(1) <="0000000000101111";   --2F    ADD addr15 (0010  1111)
            ram_block(2) <="0000000011100000";   --E0    OUT
            ram_block(3) <="0000000011110000";   --F0    HLT
            
            --just data...
            ram_block(4) <="0000000000000000";
            ram_block(5) <="0000000000000000";
            ram_block(6) <="0000000000000000";
            ram_block(7) <="0000000000000000";
            ram_block(8) <="0000000000000000";
            ram_block(9) <="0000000000000000";
            ram_block(10)<="0000000000000000";
            ram_block(11)<="0000000000000000";
            ram_block(12)<="0000000000000000";
            ram_block(13)<="0000000000000000";  
            
            ram_block(14)<="0100000000011100";   --401C         16,412
            ram_block(15)<="0001100000001110";   --180E         6,158
            --******************************************************************************
            
            startup:=false;
            data_out_t <= ram_block(0);
        elsif read_ram_direct = '1' then
            direct_addr_out_t <= ram_direct_addr; 
            direct_data_out_t <= ram_block(to_integer(unsigned(ram_direct_addr)));
            startup:=false;
        else
            direct_addr_out_t <= "0000";
            if rising_edge(sys_clk_i) then  
                direct_addr_out_t <= "0000";
                
                if load_ram_direct = '1' then
                    ram_block(to_integer(unsigned(ram_direct_addr))) <= ram_direct_data_in;
                    --reset current memory location to 0000
                    address_t <= "0000";
                    data_out_t <= ram_block(0); 
                
                elsif(load_addr_enable = '1') then
                    data_out_t <= ram_block(to_integer(unsigned(rw_address)));
                    address_t <= rw_address;
                elsif(write_enable = '1') then
                    ram_block(to_integer(unsigned(address_t))) <= data;
                    data_out_t <= ram_block(to_integer(unsigned(address_t)));
                end if;        
            startup:=false;
            end if;
        end if;
         
    END PROCESS;
    q_data_out <= data_out_t;
    q_addr_out <= address_t;  
    ram_direct_addr_out <= direct_addr_out_t;
    ram_direct_data_out <= direct_data_out_t;
    
end Behavioral;
