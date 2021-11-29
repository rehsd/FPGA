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
   --NOP                                                  --INST STEP     CTL_MSB   CTL_LSB    
   rom_block(0)         <="0100000000000100";   --NOP-Ftch -0000 0000     01000000  00000010    MI  CO     
   rom_block(1)         <="0001010000001000";   --NOP-Ftch -0000 0001                           RO  INSTIN  CE
   rom_block(2)         <="0000000000000000";   --NOP-Ftch -0000 0001                           no-op
   rom_block(3)         <="0000000000000000";   --NOP-Ftch -0000 0001                           no-op
   rom_block(4)         <="0000000000000000";   --NOP-Ftch -0000 0001                           no-op

   --LDA
   rom_block(16)        <="0100000000000100";   --LDA-Ftch -0001 0000     01000000  00000010    MI  CO     
   rom_block(17)        <="0001010000001000";   --LDA-Ftch -0001 0001                           RO  INSTIN  CE
   rom_block(18)        <="0100100000000000";   --LDA      -0001 0010                           MI  INSOUT
   rom_block(19)        <="0001001000000000";   --LDA      -0001 0011                           RO  AIN
   rom_block(20)        <="0000000000000000";   --LDA      -0001 0100                           no-op
   
   --ADD
   rom_block(32)        <="0100000000000100";   --ADD-Ftch -0010 0000     01000000  00000010    MI  CO     
   rom_block(33)        <="0001010000001000";   --ADD-Ftch -0010 0001                           RO  INSTIN  CE
   rom_block(34)        <="0100100000000000";   --ADD      -0010 0010                           MI  INSOUT              
   rom_block(35)        <="0001000000100000";   --ADD      -0010 0011                           RO  BIN             ******
   rom_block(36)        <="0000001010000001";   --ADD      -0010 0100                           AIN SUMOUT
   
   --SUB
   rom_block(48)        <="0100000000000100";   --SUB      -0011 0000
   rom_block(49)        <="0001010000001000";   --SUB      -0011 0001
   rom_block(50)        <="0100100000000000";   --SUB      -0011 0010
   rom_block(51)        <="0001000000100000";   --SUB      -0011 0011
   rom_block(52)        <="0000001011000001";   --SUB      -0011 0100
   
   --STA
   rom_block(64)        <="0100000000000100";   --STA      -0100 0000
   rom_block(65)        <="0001010000001000";   --STA      -0100 0001
   rom_block(66)        <="0100100000000000";   --STA      -0100 0001   MI      INSTOUT  
   rom_block(67)        <="0010000100000000";   --STA      -0100 0011   RAMIN   AOUT        ****
   rom_block(68)        <="0000000000000000";   --STA      -0100 0100
   
   --LDI
   rom_block(80)        <="0100000000000100";   --LDI      -0101 0000
   rom_block(81)        <="0001010000001000";   --LDI      -0101 0001
   rom_block(82)        <="0000101000000000";   --LDI      -0101 0010
   rom_block(83)        <="0000000000000000";   --LDI      -0101 0011
   rom_block(84)        <="0000000000000000";   --LDI      -0101 0100
   
   --JMP
   rom_block(96)        <="0100000000000100";   --JMP      -0110 0000
   rom_block(97)        <="0001010000001010";   --JMP      -0110 0001                --modified: +JMP -- calling early, as the Vivado IP applies to the next clock rise. CE must also be high during the read of new values.
   rom_block(98)        <="0000100000001010";   --JMP      -0110 0010   INSTOUT JMP  --modified: +CE since load is ignored by the Vivado IP counter when CE is low. Can possibly dial timing of JMP steps in better.
   rom_block(99)        <="0000000000000000";   --JMP      -0110 0011
   rom_block(100)       <="0000000000000000";   --JMP      -0110 0100
   
   --JC
   rom_block(112)       <="0100000000000100";   --JC       -0111 0000
   rom_block(113)       <="0001010000001000";   --JC       -0111 0001
   rom_block(114)       <="0000000000000000";   --JC       -0111 0010   ***x2 - CF
   --rom_block(114)       <="0000100000000010";   --JC       -0111 0010   ***x2 - CF
   rom_block(115)       <="0000000000000000";   --JC       -0111 0011
   rom_block(116)       <="0000000000000000";   --JC       -0111 0100
   
   --JZ
   rom_block(128)       <="0100000000000100";   --JZ       -1000 0000
   rom_block(129)       <="0001010000001000";   --JZ       -1000 0001
   rom_block(130)       <="0000000000000000";   --JZ       -1000 0010   ***x2 - BF
   --rom_block(130)       <="0000100000000010";   --JZ       -1000 0010   ***x2 - BF
   rom_block(131)       <="0000000000000000";   --JZ       -1000 0011
   rom_block(132)       <="0000000000000000";   --JZ       -1000 0100
   
   --UNUSED
   rom_block(144)       <="0100000000000100";   --TBD      -1001 0000
   rom_block(145)       <="0001010000001000";   --TBD      -1001 0000
   rom_block(160)       <="0100000000000100";   --TBD      -1010 0000
   rom_block(161)       <="0001010000001000";   --TBD      -1010 0000
   rom_block(176)       <="0100000000000100";   --TBD      -1011 0000
   rom_block(177)       <="0001010000001000";   --TBD      -1011 0000
   rom_block(192)       <="0100000000000100";   --TBD      -1100 0000
   rom_block(193)       <="0001010000001000";   --TBD      -1100 0000
   rom_block(208)       <="0100000000000100";   --TBD      -1101 0000
   rom_block(209)       <="0001010000001000";   --TBD      -1101 0000
   
   --OUT
   rom_block(224)       <="0100000000000100";   --OUT-Ftch -1110 0000     01000000  00000010    MI  CO     
   rom_block(225)       <="0001010000001000";   --OUT-Ftch -1110 0001                           RO  INSTIN  CE
   rom_block(226)       <="0000000100010000";   --OUT      -1110 0010                           AO  OI
   rom_block(227)       <="0000000000000000";   --OUT      -1110 0011                           no-op
   rom_block(228)       <="0000000000000000";   --OUT      -1110 0100                           no-op
   
   --HLT
   rom_block(240)       <="0100000000000100";   --HLT-Ftch -1111 0000     01000000  00000010    MI  CO     
   rom_block(241)       <="0001010000001000";   --HLT-Ftch -1111 0001                           RO  INSTIN  CE
   rom_block(242)       <="1000000000000000";   --HLT      -1111 0010                           HLT
   rom_block(243)       <="0000000000000000";   --HLT      -1111 0011                           no-op
   rom_block(244)       <="0000000000000000";   --HLT      -1111 addr                           no-op
   
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
