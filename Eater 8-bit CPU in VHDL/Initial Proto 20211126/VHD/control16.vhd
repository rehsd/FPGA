library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity control16 is
PORT
   (
      sys_clk_i:        IN   std_logic;
      inst  :           IN   std_logic_vector (3 DOWNTO 0) := "0000";
      step  :           IN   std_logic_vector (2 DOWNTO 0) := "000";
      load_enable:      IN   std_logic;
      q_CONTROL16:      OUT  std_logic_vector (15 DOWNTO 0);
      q_HALT:           OUT  std_logic;
      q_MEM_ADDR_IN:    OUT  std_logic;
      q_RAM_IN:         OUT  std_logic;
      q_RAM_OUT:        OUT  std_logic;
      q_INST_OUT:       OUT  std_logic;
      q_INST_IN:        OUT  std_logic;
      q_A_IN:           OUT  std_logic;
      q_A_OUT:          OUT  std_logic;
      q_SUM_OUT:        OUT  std_logic;
      q_SUBTRACT:       OUT  std_logic;
      q_B_IN:           OUT  std_logic;
      q_OUTREG_IN:      OUT  std_logic;
      q_COUNTER_ENABLE: OUT  std_logic;
      q_COUNTER_OUT:    OUT  std_logic;
      q_JUMP:           OUT  std_logic;
      q_FI:             OUT  std_logic;
      q_CurrentADDR:    OUT  std_logic_vector (7 downto 0)
   );
end control16;

architecture Behavioral of control16 is

TYPE mem IS ARRAY(0 TO 255) OF std_logic_vector(15 DOWNTO 0);
SIGNAL rom_block : mem;
signal addr: integer;

signal q_HALT_t             : std_logic;
signal q_MEM_ADDR_IN_t      : std_logic;
signal q_RAM_IN_t           : std_logic;
signal q_RAM_OUT_t          : std_logic;
signal q_INST_OUT_t         : std_logic;
signal q_INST_IN_t          : std_logic;
signal q_A_IN_t             : std_logic;
signal q_A_OUT_t            : std_logic;
signal q_SUM_OUT_t          : std_logic;
signal q_SUBTRACT_t         : std_logic;
signal q_B_IN_t             : std_logic;
signal q_OUTREG_IN_t        : std_logic;
signal q_COUNTER_ENABLE_t   : std_logic;
signal q_COUNTER_OUT_t      : std_logic;
signal q_JUMP_t             : std_logic;
signal q_FI_t               : std_logic;

begin
   --"ROM" programming   --TO DO, allow dynamic programming instead of hardcoding this...
   --HLT / MEMADDRIN / RAMIN / RAMOUT / INSTOUT / INSTIN / AIN / AOUT / SUMOUT / SUBTRACT / BIN / OUTREGIN / COUNTEN / COUNTOUT / JUMP / FI 
                                                          --INST STEP     CTL_MSB   CTL_LSB    
   rom_block(0)         <="0100000000000100";   --00-Fetch -0000 0000     01000000  00000010    MI  CO     
   rom_block(1)         <="0001010000001000";   --00-Fetch -0000 0001                           RO  INSTIN  CE
   
   rom_block(16)        <="0100000000000100";   --LDA-Ftch -0001 0000     01000000  00000010    MI  CO     
   rom_block(17)        <="0001010000001000";   --LDA-Ftch -0001 0001                           RO  INSTIN  CE
   rom_block(18)        <="0100100000000000";   --LDA      -0001 0010                           MI  INSOUT
   rom_block(19)        <="0001001000000000";   --LDA      -0001 0011                           RO  AIN
   rom_block(20)        <="0000000000000000";   --LDA      -0001 0100                           no-op
   
   rom_block(32)        <="0100000000000100";   --ADD-Ftch -0010 0000     01000000  00000010    MI  CO     
   rom_block(33)        <="0001010000001000";   --ADD-Ftch -0010 0001                           RO  INSTIN  CE
   rom_block(34)        <="0100100000000000";   --ADD      -0010 0010                           MI  INSOUT              
   rom_block(35)        <="0001000000100000";   --ADD      -0010 0011                           RO  BIN             ******
   --rom_block(36)        <="0000001010000000";   --ADD      -0010 0100                           AIN SUMOUT
   rom_block(36)        <="0000000000000000";   --ADD      -0010 0100                           AIN SUMOUT
   
   rom_block(48)        <="0100000000000100";   --Fetch    -0011 0000
   rom_block(49)        <="0001010000001000";   --Fetch    -0011 0000
   rom_block(64)        <="0100000000000100";   --Fetch    -0100 0000
   rom_block(65)        <="0001010000001000";   --Fetch    -0100 0000
   rom_block(80)        <="0100000000000100";   --Fetch    -0101 0000
   rom_block(81)        <="0001010000001000";   --Fetch    -0101 0000
   rom_block(96)        <="0100000000000100";   --Fetch    -0110 0000
   rom_block(97)        <="0001010000001000";   --Fetch    -0110 0000
   rom_block(112)       <="0100000000000100";   --Fetch    -0111 0000
   rom_block(113)       <="0001010000001000";   --Fetch    -0111 0000
   rom_block(128)       <="0100000000000100";   --Fetch    -1000 0000
   rom_block(129)       <="0001010000001000";   --Fetch    -1000 0000
   rom_block(144)       <="0100000000000100";   --Fetch    -1001 0000
   rom_block(145)       <="0001010000001000";   --Fetch    -1001 0000
   rom_block(160)       <="0100000000000100";   --Fetch    -1010 0000
   rom_block(161)       <="0001010000001000";   --Fetch    -1010 0000
   rom_block(176)       <="0100000000000100";   --Fetch    -1011 0000
   rom_block(177)       <="0001010000001000";   --Fetch    -1011 0000
   rom_block(192)       <="0100000000000100";   --Fetch    -1100 0000
   rom_block(193)       <="0001010000001000";   --Fetch    -1100 0000
   rom_block(208)       <="0100000000000100";   --Fetch    -1101 0000
   rom_block(209)       <="0001010000001000";   --Fetch    -1101 0000
   
   rom_block(224)       <="0100000000000100";   --OUT-Ftch -1110 0000     01000000  00000010    MI  CO     
   rom_block(225)       <="0001010000001000";   --OUT-Ftch -1110 0001                           RO  INSTIN  CE
   rom_block(226)       <="0000000100010000";   --OUT      -1110 0010
   rom_block(227)       <="0001010000001000";   --OUT      -1110 0011
   rom_block(228)       <="0000000000000000";   --OUT      -1110 0100
   
   rom_block(240)       <="0100000000000100";   --HLT-Ftch -1111 0000     01000000  00000010    MI  CO     
   rom_block(241)       <="0001010000001000";   --HLT-Ftch -1111 0001                           RO  INSTIN  CE
   rom_block(242)       <="1000000000000000";   --HLT      -1111 0010
   rom_block(243)       <="0000000000000000";   --HLT      -1111 0011
   rom_block(244)       <="0000000000000000";   --HLT      -1111 addr
   
   PROCESS (sys_clk_i, inst, step, load_enable)
    
   BEGIN
      --if falling_edge(sys_clk_i) THEN
        if  load_enable = '1' then
             addr<=to_integer(shift_left(unsigned(resize(unsigned(inst),8)),4) + unsigned(step));         --IIII0SSS
             q_HALT_t             <= rom_block(addr)(15);
             q_MEM_ADDR_IN_t      <= rom_block(addr)(14);
             q_RAM_IN_t           <= rom_block(addr)(13);
             q_RAM_OUT_t          <= rom_block(addr)(12);
             q_INST_OUT_t         <= rom_block(addr)(11);
             q_INST_IN_t          <= rom_block(addr)(10);
             q_A_IN_t             <= rom_block(addr)(9);
             q_A_OUT_t            <= rom_block(addr)(8);
             q_SUM_OUT_t          <= rom_block(addr)(7);
             q_SUBTRACT_t         <= rom_block(addr)(6);
             q_B_IN_t             <= rom_block(addr)(5);
             q_OUTREG_IN_t        <= rom_block(addr)(4);
             q_COUNTER_ENABLE_t   <= rom_block(addr)(3);
             q_COUNTER_OUT_t      <= rom_block(addr)(2);
             q_JUMP_t             <= rom_block(addr)(1);
             q_FI_t               <= rom_block(addr)(0);
         end if;
      --end if;
   END PROCESS;
   
    q_CONTROL16        <= rom_block(addr);
    q_CurrentADDR      <= std_logic_vector(to_unsigned(addr,8));
    
    q_HALT              <= q_HALT_t;
    q_MEM_ADDR_IN       <= q_MEM_ADDR_IN_t;
    q_RAM_IN            <= q_RAM_IN_t;
    q_RAM_OUT           <= q_RAM_OUT_t;
    q_INST_OUT          <= q_INST_OUT_t;
    q_INST_IN           <= q_INST_IN_t;
    q_A_IN              <= q_A_IN_t;
    q_A_OUT             <= q_A_OUT_t;
    q_SUM_OUT           <= q_SUM_OUT_t;
    q_SUBTRACT          <= q_SUBTRACT_t;
    q_B_IN              <= q_B_IN_t;
    q_OUTREG_IN         <= q_OUTREG_IN_t;
    q_COUNTER_ENABLE    <= q_COUNTER_ENABLE_t;
    q_COUNTER_OUT       <= q_COUNTER_OUT_t;
    q_JUMP              <= q_JUMP_t;
    q_FI                <= q_FI_t;

end Behavioral;
