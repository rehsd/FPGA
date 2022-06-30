library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Control is
PORT
   (
      sys_clk_i:        IN   std_logic;
      inst  :           IN   std_logic_vector (3 DOWNTO 0) := "0000";
      step  :           IN   std_logic_vector (2 DOWNTO 0) := "000";
      flags :           IN   std_logic_vector (7 DOWNTO 0) := "00000000";
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
      q_CurrentADDR:    OUT  std_logic_vector (8 downto 0)
   );
end Control;

architecture Behavioral of Control is

TYPE mem IS ARRAY(0 TO 511) OF std_logic_vector(15 DOWNTO 0);
SIGNAL rom_block : mem := (others=> (others=>'0'));
signal addr: integer := 0;

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
                                                        --INST     STEP   CF,ZF   
    rom_block(0)         <="0100000000000100";   --NOP    0000     000     00
    rom_block(1)         <="0100000000000100";   --NOP    0000     000     01
    rom_block(2)         <="0100000000000100";   --NOP    0000     000     10
    rom_block(3)         <="0100000000000100";   --NOP    0000     000     11
    rom_block(4)         <="0001010000001000";   --NOP    0000     001     00
    rom_block(5)         <="0001010000001000";   --NOP    0000     001     01
    rom_block(6)         <="0001010000001000";   --NOP    0000     001     10
    rom_block(7)         <="0001010000001000";   --NOP    0000     001     11
    rom_block(8)         <="0000000000000000";   --NOP    0000     010     00
    rom_block(9)         <="0000000000000000";   --NOP    0000     010     01
    rom_block(10)         <="0000000000000000";   --NOP    0000     010     10
    rom_block(11)         <="0000000000000000";   --NOP    0000     010     11
    rom_block(12)         <="0000000000000000";   --NOP    0000     011     00
    rom_block(13)         <="0000000000000000";   --NOP    0000     011     01
    rom_block(14)         <="0000000000000000";   --NOP    0000     011     10
    rom_block(15)         <="0000000000000000";   --NOP    0000     011     11
    rom_block(16)         <="0000000000000000";   --NOP    0000     100     00
    rom_block(17)         <="0000000000000000";   --NOP    0000     100     01
    rom_block(18)         <="0000000000000000";   --NOP    0000     100     10
    rom_block(19)         <="0000000000000000";   --NOP    0000     100     11
    rom_block(32)         <="0100000000000100";   --LDA    0001     000     00
    rom_block(33)         <="0100000000000100";   --LDA    0001     000     01
    rom_block(34)         <="0100000000000100";   --LDA    0001     000     10
    rom_block(35)         <="0100000000000100";   --LDA    0001     000     11
    rom_block(36)         <="0001010000001000";   --LDA    0001     001     00
    rom_block(37)         <="0001010000001000";   --LDA    0001     001     01
    rom_block(38)         <="0001010000001000";   --LDA    0001     001     10
    rom_block(39)         <="0001010000001000";   --LDA    0001     001     11
    rom_block(40)         <="0100100000000000";   --LDA    0001     010     00
    rom_block(41)         <="0100100000000000";   --LDA    0001     010     01
    rom_block(42)         <="0100100000000000";   --LDA    0001     010     10
    rom_block(43)         <="0100100000000000";   --LDA    0001     010     11
    rom_block(44)         <="0001001000000000";   --LDA    0001     011     00
    rom_block(45)         <="0001001000000000";   --LDA    0001     011     01
    rom_block(46)         <="0001001000000000";   --LDA    0001     011     10
    rom_block(47)         <="0001001000000000";   --LDA    0001     011     11
    rom_block(48)         <="0000000000000000";   --LDA    0001     100     00
    rom_block(49)         <="0000000000000000";   --LDA    0001     100     01
    rom_block(50)         <="0000000000000000";   --LDA    0001     100     10
    rom_block(51)         <="0000000000000000";   --LDA    0001     100     11
    rom_block(64)         <="0100000000000100";   --ADD    0010     000     00
    rom_block(65)         <="0100000000000100";   --ADD    0010     000     01
    rom_block(66)         <="0100000000000100";   --ADD    0010     000     10
    rom_block(67)         <="0100000000000100";   --ADD    0010     000     11
    rom_block(68)         <="0001010000001000";   --ADD    0010     001     00
    rom_block(69)         <="0001010000001000";   --ADD    0010     001     01
    rom_block(70)         <="0001010000001000";   --ADD    0010     001     10
    rom_block(71)         <="0001010000001000";   --ADD    0010     001     11
    rom_block(72)         <="0100100000000000";   --ADD    0010     010     00
    rom_block(73)         <="0100100000000000";   --ADD    0010     010     01
    rom_block(74)         <="0100100000000000";   --ADD    0010     010     10
    rom_block(75)         <="0100100000000000";   --ADD    0010     010     11
    rom_block(76)         <="0001000000100000";   --ADD    0010     011     00
    rom_block(77)         <="0001000000100000";   --ADD    0010     011     01
    rom_block(78)         <="0001000000100000";   --ADD    0010     011     10
    rom_block(79)         <="0001000000100000";   --ADD    0010     011     11
    rom_block(80)         <="0000001010000001";   --ADD    0010     100     00
    rom_block(81)         <="0000001010000001";   --ADD    0010     100     01
    rom_block(82)         <="0000001010000001";   --ADD    0010     100     10
    rom_block(83)         <="0000001010000001";   --ADD    0010     100     11
    rom_block(96)         <="0100000000000100";   --SUB    0011     000     00
    rom_block(97)         <="0100000000000100";   --SUB    0011     000     01
    rom_block(98)         <="0100000000000100";   --SUB    0011     000     10
    rom_block(99)         <="0100000000000100";   --SUB    0011     000     11
    rom_block(100)         <="0001010000001000";   --SUB    0011     001     00
    rom_block(101)         <="0001010000001000";   --SUB    0011     001     01
    rom_block(102)         <="0001010000001000";   --SUB    0011     001     10
    rom_block(103)         <="0001010000001000";   --SUB    0011     001     11
    rom_block(104)         <="0100100000000000";   --SUB    0011     010     00
    rom_block(105)         <="0100100000000000";   --SUB    0011     010     01
    rom_block(106)         <="0100100000000000";   --SUB    0011     010     10
    rom_block(107)         <="0100100000000000";   --SUB    0011     010     11
    rom_block(108)         <="0001000000100000";   --SUB    0011     011     00
    rom_block(109)         <="0001000000100000";   --SUB    0011     011     01
    rom_block(110)         <="0001000000100000";   --SUB    0011     011     10
    rom_block(111)         <="0001000000100000";   --SUB    0011     011     11
    rom_block(112)         <="0000001011000001";   --SUB    0011     100     00
    rom_block(113)         <="0000001011000001";   --SUB    0011     100     01
    rom_block(114)         <="0000001011000001";   --SUB    0011     100     10
    rom_block(115)         <="0000001011000001";   --SUB    0011     100     11
    rom_block(128)         <="0100000000000100";   --STA    0100     000     00
    rom_block(129)         <="0100000000000100";   --STA    0100     000     01
    rom_block(130)         <="0100000000000100";   --STA    0100     000     10
    rom_block(131)         <="0100000000000100";   --STA    0100     000     11
    rom_block(132)         <="0001010000001000";   --STA    0100     001     00
    rom_block(133)         <="0001010000001000";   --STA    0100     001     01
    rom_block(134)         <="0001010000001000";   --STA    0100     001     10
    rom_block(135)         <="0001010000001000";   --STA    0100     001     11
    rom_block(136)         <="0100100000000000";   --STA    0100     010     00
    rom_block(137)         <="0100100000000000";   --STA    0100     010     01
    rom_block(138)         <="0100100000000000";   --STA    0100     010     10
    rom_block(139)         <="0100100000000000";   --STA    0100     010     11
    rom_block(140)         <="0010000100000000";   --STA    0100     011     00
    rom_block(141)         <="0010000100000000";   --STA    0100     011     01
    rom_block(142)         <="0010000100000000";   --STA    0100     011     10
    rom_block(143)         <="0010000100000000";   --STA    0100     011     11
    rom_block(144)         <="0000000000000000";   --STA    0100     100     00
    rom_block(145)         <="0000000000000000";   --STA    0100     100     01
    rom_block(146)         <="0000000000000000";   --STA    0100     100     10
    rom_block(147)         <="0000000000000000";   --STA    0100     100     11
    rom_block(160)         <="0100000000000100";   --LDI    0101     000     00
    rom_block(161)         <="0100000000000100";   --LDI    0101     000     01
    rom_block(162)         <="0100000000000100";   --LDI    0101     000     10
    rom_block(163)         <="0100000000000100";   --LDI    0101     000     11
    rom_block(164)         <="0001010000001000";   --LDI    0101     001     00
    rom_block(165)         <="0001010000001000";   --LDI    0101     001     01
    rom_block(166)         <="0001010000001000";   --LDI    0101     001     10
    rom_block(167)         <="0001010000001000";   --LDI    0101     001     11
    rom_block(168)         <="0000101000000000";   --LDI    0101     010     00
    rom_block(169)         <="0000101000000000";   --LDI    0101     010     01
    rom_block(170)         <="0000101000000000";   --LDI    0101     010     10
    rom_block(171)         <="0000101000000000";   --LDI    0101     010     11
    rom_block(172)         <="0000000000000000";   --LDI    0101     011     00
    rom_block(173)         <="0000000000000000";   --LDI    0101     011     01
    rom_block(174)         <="0000000000000000";   --LDI    0101     011     10
    rom_block(175)         <="0000000000000000";   --LDI    0101     011     11
    rom_block(176)         <="0000000000000000";   --LDI    0101     100     00
    rom_block(177)         <="0000000000000000";   --LDI    0101     100     01
    rom_block(178)         <="0000000000000000";   --LDI    0101     100     10
    rom_block(179)         <="0000000000000000";   --LDI    0101     100     11
    rom_block(192)         <="0100000000000100";   --JMP    0110     000     00         
    rom_block(193)         <="0100000000000100";   --JMP    0110     000     01         
    rom_block(194)         <="0100000000000100";   --JMP    0110     000     10
    rom_block(195)         <="0100000000000100";   --JMP    0110     000     11
    rom_block(196)         <="0001010000001010";   --JMP    0110     001     00         --** modified: +JMP -- calling early, as the Vivado IP for binary counter load applies to the next clock rise. CE must also be high during the read of new values.
    rom_block(197)         <="0001010000001010";   --JMP    0110     001     01         --**     
    rom_block(198)         <="0001010000001010";   --JMP    0110     001     10         --**
    rom_block(199)         <="0001010000001010";   --JMP    0110     001     11         --**
    rom_block(200)         <="0000100000001010";   --JMP    0110     010     00         --** modified: +CE since load is ignored by the Vivado IP counter when CE is low. Can possibly dial timing of JMP steps in better. 
    rom_block(201)         <="0000100000001010";   --JMP    0110     010     01         --**
    rom_block(202)         <="0000100000001010";   --JMP    0110     010     10         --**
    rom_block(203)         <="0000100000001010";   --JMP    0110     010     11         --**
    rom_block(204)         <="0000000000000000";   --JMP    0110     011     00
    rom_block(205)         <="0000000000000000";   --JMP    0110     011     01
    rom_block(206)         <="0000000000000000";   --JMP    0110     011     10
    rom_block(207)         <="0000000000000000";   --JMP    0110     011     11
    rom_block(208)         <="0000000000000000";   --JMP    0110     100     00
    rom_block(209)         <="0000000000000000";   --JMP    0110     100     01
    rom_block(210)         <="0000000000000000";   --JMP    0110     100     10
    rom_block(211)         <="0000000000000000";   --JMP    0110     100     11
    rom_block(224)         <="0100000000000100";   --JC    0111     000     00
    rom_block(225)         <="0100000000000100";   --JC    0111     000     01
    rom_block(226)         <="0100000000000100";   --JC    0111     000     10
    rom_block(227)         <="0100000000000100";   --JC    0111     000     11
    rom_block(228)         <="0001010000001000";   --JC    0111     001     00          --**? modified: +JMP -- calling early, as the Vivado IP for binary counter load applies to the next clock rise. CE must also be high during the read of new values.
    rom_block(229)         <="0001010000001000";   --JC    0111     001     01          --**?
    rom_block(230)         <="0001010000001000";   --JC    0111     001     10          --**?
    rom_block(231)         <="0001010000001000";   --JC    0111     001     11          --**?
    rom_block(232)         <="0000000000000000";   --JC    0111     010     00
    rom_block(233)         <="0000000000000000";   --JC    0111     010     01
    rom_block(234)         <="0000100000001010";   --JC    0111     010     10          --** modified: +CE since load is ignored by the Vivado IP counter when CE is low. Can possibly dial timing of JMP steps in better. 
    rom_block(235)         <="0000100000001010";   --JC    0111     010     11          --**
    rom_block(236)         <="0000000000000000";   --JC    0111     011     00
    rom_block(237)         <="0000000000000000";   --JC    0111     011     01
    rom_block(238)         <="0000100000001010";   --JC    0111     011     10
    rom_block(239)         <="0000100000001010";   --JC    0111     011     11
    rom_block(240)         <="0000000000000000";   --JC    0111     100     00
    rom_block(241)         <="0000000000000000";   --JC    0111     100     01
    rom_block(242)         <="0000100000001010";   --JC    0111     100     10
    rom_block(243)         <="0000100000001010";   --JC    0111     100     11
    rom_block(256)         <="0100000000000100";   --JZ    1000     000     00
    rom_block(257)         <="0100000000000100";   --JZ    1000     000     01
    rom_block(258)         <="0100000000000100";   --JZ    1000     000     10
    rom_block(259)         <="0100000000000100";   --JZ    1000     000     11
    rom_block(260)         <="0001010000001000";   --JZ    1000     001     00          --**? modified: +JMP -- calling early, as the Vivado IP for binary counter load applies to the next clock rise. CE must also be high during the read of new values.
    rom_block(261)         <="0001010000001000";   --JZ    1000     001     01          --**?
    rom_block(262)         <="0001010000001000";   --JZ    1000     001     10          --**?
    rom_block(263)         <="0001010000001000";   --JZ    1000     001     11          --**?
    rom_block(264)         <="0000000000000000";   --JZ    1000     010     00
    rom_block(265)         <="0000100000001010";   --JZ    1000     010     01          --** modified: +CE since load is ignored by the Vivado IP counter when CE is low. Can possibly dial timing of JMP steps in better. 
    rom_block(266)         <="0000000000000000";   --JZ    1000     010     10
    rom_block(267)         <="0000100000001010";   --JZ    1000     010     11          --**
    rom_block(268)         <="0000000000000000";   --JZ    1000     011     00
    rom_block(269)         <="0000100000001010";   --JZ    1000     011     01
    rom_block(270)         <="0000000000000000";   --JZ    1000     011     10
    rom_block(271)         <="0000100000001010";   --JZ    1000     011     11
    rom_block(272)         <="0000000000000000";   --JZ    1000     100     00
    rom_block(273)         <="0000100000001010";   --JZ    1000     100     01
    rom_block(274)         <="0000000000000000";   --JZ    1000     100     10
    rom_block(275)         <="0000100000001010";   --JZ    1000     100     11
    rom_block(288)         <="0100000000000100";   --TBD    1001     000     00
    rom_block(289)         <="0100000000000100";   --TBD    1001     000     01
    rom_block(290)         <="0100000000000100";   --TBD    1001     000     10
    rom_block(291)         <="0100000000000100";   --TBD    1001     000     11
    rom_block(292)         <="0001010000001000";   --TBD    1001     001     00
    rom_block(293)         <="0001010000001000";   --TBD    1001     001     01
    rom_block(294)         <="0001010000001000";   --TBD    1001     001     10
    rom_block(295)         <="0001010000001000";   --TBD    1001     001     11
    rom_block(296)         <="0000000000000000";   --TBD    1001     010     00
    rom_block(297)         <="0000000000000000";   --TBD    1001     010     01
    rom_block(298)         <="0000000000000000";   --TBD    1001     010     10
    rom_block(299)         <="0000000000000000";   --TBD    1001     010     11
    rom_block(300)         <="0000000000000000";   --TBD    1001     011     00
    rom_block(301)         <="0000000000000000";   --TBD    1001     011     01
    rom_block(302)         <="0000000000000000";   --TBD    1001     011     10
    rom_block(303)         <="0000000000000000";   --TBD    1001     011     11
    rom_block(304)         <="0000000000000000";   --TBD    1001     100     00
    rom_block(305)         <="0000000000000000";   --TBD    1001     100     01
    rom_block(306)         <="0000000000000000";   --TBD    1001     100     10
    rom_block(307)         <="0000000000000000";   --TBD    1001     100     11
    rom_block(320)         <="0100000000000100";   --TBD    1010     000     00
    rom_block(321)         <="0100000000000100";   --TBD    1010     000     01
    rom_block(322)         <="0100000000000100";   --TBD    1010     000     10
    rom_block(323)         <="0100000000000100";   --TBD    1010     000     11
    rom_block(324)         <="0001010000001000";   --TBD    1010     001     00
    rom_block(325)         <="0001010000001000";   --TBD    1010     001     01
    rom_block(326)         <="0001010000001000";   --TBD    1010     001     10
    rom_block(327)         <="0001010000001000";   --TBD    1010     001     11
    rom_block(328)         <="0000000000000000";   --TBD    1010     010     00
    rom_block(329)         <="0000000000000000";   --TBD    1010     010     01
    rom_block(330)         <="0000000000000000";   --TBD    1010     010     10
    rom_block(331)         <="0000000000000000";   --TBD    1010     010     11
    rom_block(332)         <="0000000000000000";   --TBD    1010     011     00
    rom_block(333)         <="0000000000000000";   --TBD    1010     011     01
    rom_block(334)         <="0000000000000000";   --TBD    1010     011     10
    rom_block(335)         <="0000000000000000";   --TBD    1010     011     11
    rom_block(336)         <="0000000000000000";   --TBD    1010     100     00
    rom_block(337)         <="0000000000000000";   --TBD    1010     100     01
    rom_block(338)         <="0000000000000000";   --TBD    1010     100     10
    rom_block(339)         <="0000000000000000";   --TBD    1010     100     11
    rom_block(352)         <="0100000000000100";   --TBD    1011     000     00
    rom_block(353)         <="0100000000000100";   --TBD    1011     000     01
    rom_block(354)         <="0100000000000100";   --TBD    1011     000     10
    rom_block(355)         <="0100000000000100";   --TBD    1011     000     11
    rom_block(356)         <="0001010000001000";   --TBD    1011     001     00
    rom_block(357)         <="0001010000001000";   --TBD    1011     001     01
    rom_block(358)         <="0001010000001000";   --TBD    1011     001     10
    rom_block(359)         <="0001010000001000";   --TBD    1011     001     11
    rom_block(360)         <="0000000000000000";   --TBD    1011     010     00
    rom_block(361)         <="0000000000000000";   --TBD    1011     010     01
    rom_block(362)         <="0000000000000000";   --TBD    1011     010     10
    rom_block(363)         <="0000000000000000";   --TBD    1011     010     11
    rom_block(364)         <="0000000000000000";   --TBD    1011     011     00
    rom_block(365)         <="0000000000000000";   --TBD    1011     011     01
    rom_block(366)         <="0000000000000000";   --TBD    1011     011     10
    rom_block(367)         <="0000000000000000";   --TBD    1011     011     11
    rom_block(368)         <="0000000000000000";   --TBD    1011     100     00
    rom_block(369)         <="0000000000000000";   --TBD    1011     100     01
    rom_block(370)         <="0000000000000000";   --TBD    1011     100     10
    rom_block(371)         <="0000000000000000";   --TBD    1011     100     11
    rom_block(384)         <="0100000000000100";   --TBD    1100     000     00
    rom_block(385)         <="0100000000000100";   --TBD    1100     000     01
    rom_block(386)         <="0100000000000100";   --TBD    1100     000     10
    rom_block(387)         <="0100000000000100";   --TBD    1100     000     11
    rom_block(388)         <="0001010000001000";   --TBD    1100     001     00
    rom_block(389)         <="0001010000001000";   --TBD    1100     001     01
    rom_block(390)         <="0001010000001000";   --TBD    1100     001     10
    rom_block(391)         <="0001010000001000";   --TBD    1100     001     11
    rom_block(392)         <="0000000000000000";   --TBD    1100     010     00
    rom_block(393)         <="0000000000000000";   --TBD    1100     010     01
    rom_block(394)         <="0000000000000000";   --TBD    1100     010     10
    rom_block(395)         <="0000000000000000";   --TBD    1100     010     11
    rom_block(396)         <="0000000000000000";   --TBD    1100     011     00
    rom_block(397)         <="0000000000000000";   --TBD    1100     011     01
    rom_block(398)         <="0000000000000000";   --TBD    1100     011     10
    rom_block(399)         <="0000000000000000";   --TBD    1100     011     11
    rom_block(400)         <="0000000000000000";   --TBD    1100     100     00
    rom_block(401)         <="0000000000000000";   --TBD    1100     100     01
    rom_block(402)         <="0000000000000000";   --TBD    1100     100     10
    rom_block(403)         <="0000000000000000";   --TBD    1100     100     11
    rom_block(416)         <="0100000000000100";   --TBD    1101     000     00
    rom_block(417)         <="0100000000000100";   --TBD    1101     000     01
    rom_block(418)         <="0100000000000100";   --TBD    1101     000     10
    rom_block(419)         <="0100000000000100";   --TBD    1101     000     11
    rom_block(420)         <="0001010000001000";   --TBD    1101     001     00
    rom_block(421)         <="0001010000001000";   --TBD    1101     001     01
    rom_block(422)         <="0001010000001000";   --TBD    1101     001     10
    rom_block(423)         <="0001010000001000";   --TBD    1101     001     11
    rom_block(424)         <="0000000000000000";   --TBD    1101     010     00
    rom_block(425)         <="0000000000000000";   --TBD    1101     010     01
    rom_block(426)         <="0000000000000000";   --TBD    1101     010     10
    rom_block(427)         <="0000000000000000";   --TBD    1101     010     11
    rom_block(428)         <="0000000000000000";   --TBD    1101     011     00
    rom_block(429)         <="0000000000000000";   --TBD    1101     011     01
    rom_block(430)         <="0000000000000000";   --TBD    1101     011     10
    rom_block(431)         <="0000000000000000";   --TBD    1101     011     11
    rom_block(432)         <="0000000000000000";   --TBD    1101     100     00
    rom_block(433)         <="0000000000000000";   --TBD    1101     100     01
    rom_block(434)         <="0000000000000000";   --TBD    1101     100     10
    rom_block(435)         <="0000000000000000";   --TBD    1101     100     11
    rom_block(448)         <="0100000000000100";   --OUT    1110     000     00
    rom_block(449)         <="0100000000000100";   --OUT    1110     000     01
    rom_block(450)         <="0100000000000100";   --OUT    1110     000     10
    rom_block(451)         <="0100000000000100";   --OUT    1110     000     11
    rom_block(452)         <="0001010000001000";   --OUT    1110     001     00
    rom_block(453)         <="0001010000001000";   --OUT    1110     001     01
    rom_block(454)         <="0001010000001000";   --OUT    1110     001     10
    rom_block(455)         <="0001010000001000";   --OUT    1110     001     11
    rom_block(456)         <="0000000100010000";   --OUT    1110     010     00
    rom_block(457)         <="0000000100010000";   --OUT    1110     010     01
    rom_block(458)         <="0000000100010000";   --OUT    1110     010     10
    rom_block(459)         <="0000000100010000";   --OUT    1110     010     11
    rom_block(460)         <="0000000000000000";   --OUT    1110     011     00
    rom_block(461)         <="0000000000000000";   --OUT    1110     011     01
    rom_block(462)         <="0000000000000000";   --OUT    1110     011     10
    rom_block(463)         <="0000000000000000";   --OUT    1110     011     11
    rom_block(464)         <="0000000000000000";   --OUT    1110     100     00
    rom_block(465)         <="0000000000000000";   --OUT    1110     100     01
    rom_block(466)         <="0000000000000000";   --OUT    1110     100     10
    rom_block(467)         <="0000000000000000";   --OUT    1110     100     11
    rom_block(480)         <="0100000000000100";   --HLT    1111     000     00
    rom_block(481)         <="0100000000000100";   --HLT    1111     000     01
    rom_block(482)         <="0100000000000100";   --HLT    1111     000     10
    rom_block(483)         <="0100000000000100";   --HLT    1111     000     11
    rom_block(484)         <="0001010000001000";   --HLT    1111     001     00
    rom_block(485)         <="0001010000001000";   --HLT    1111     001     01
    rom_block(486)         <="0001010000001000";   --HLT    1111     001     10
    rom_block(487)         <="0001010000001000";   --HLT    1111     001     11
    rom_block(488)         <="1000000000000000";   --HLT    1111     010     00
    rom_block(489)         <="1000000000000000";   --HLT    1111     010     01
    rom_block(490)         <="1000000000000000";   --HLT    1111     010     10
    rom_block(491)         <="1000000000000000";   --HLT    1111     010     11
    rom_block(492)         <="0000000000000000";   --HLT    1111     011     00
    rom_block(493)         <="0000000000000000";   --HLT    1111     011     01
    rom_block(494)         <="0000000000000000";   --HLT    1111     011     10
    rom_block(495)         <="0000000000000000";   --HLT    1111     011     11
    rom_block(496)         <="0000000000000000";   --HLT    1111     100     00
    rom_block(497)         <="0000000000000000";   --HLT    1111     100     01
    rom_block(498)         <="0000000000000000";   --HLT    1111     100     10
    rom_block(499)         <="0000000000000000";   --HLT    1111     100     11

--   --NOP
--   rom_block(0)         <="0100000000000100";   --NOP-Ftch -0000 0000     01000000  00000010    MI  CO     
--   rom_block(1)         <="0001010000001000";   --NOP-Ftch -0000 0001                           RO  INSTIN  CE
--   rom_block(2)         <="0000000000000000";   --NOP-Ftch -0000 0010                           no-op
--   rom_block(3)         <="0000000000000000";   --NOP-Ftch -0000 0011                           no-op
--   rom_block(4)         <="0000000000000000";   --NOP-Ftch -0000 0100                           no-op

--   --LDA
--   rom_block(16)        <="0100000000000100";   --LDA-Ftch -0001 0000     01000000  00000010    MI  CO     
--   rom_block(17)        <="0001010000001000";   --LDA-Ftch -0001 0001                           RO  INSTIN  CE
--   rom_block(18)        <="0100100000000000";   --LDA      -0001 0010                           MI  INSOUT
--   rom_block(19)        <="0001001000000000";   --LDA      -0001 0011                           RO  AIN
--   rom_block(20)        <="0000000000000000";   --LDA      -0001 0100                           no-op
   
--   --ADD
--   rom_block(32)        <="0100000000000100";   --ADD-Ftch -0010 0000     01000000  00000010    MI  CO     
--   rom_block(33)        <="0001010000001000";   --ADD-Ftch -0010 0001                           RO  INSTIN  CE
--   rom_block(34)        <="0100100000000000";   --ADD      -0010 0010                           MI  INSOUT              
--   rom_block(35)        <="0001000000100000";   --ADD      -0010 0011                           RO  BIN             ******
--   rom_block(36)        <="0000001010000001";   --ADD      -0010 0100                           AIN SUMOUT
   
--   --SUB
--   rom_block(48)        <="0100000000000100";   --SUB      -0011 0000
--   rom_block(49)        <="0001010000001000";   --SUB      -0011 0001
--   rom_block(50)        <="0100100000000000";   --SUB      -0011 0010
--   rom_block(51)        <="0001000000100000";   --SUB      -0011 0011
--   rom_block(52)        <="0000001011000001";   --SUB      -0011 0100
   
--   --STA
--   rom_block(64)        <="0100000000000100";   --STA      -0100 0000
--   rom_block(65)        <="0001010000001000";   --STA      -0100 0001
--   rom_block(66)        <="0100100000000000";   --STA      -0100 0001   MI      INSTOUT  
--   rom_block(67)        <="0010000100000000";   --STA      -0100 0011   RAMIN   AOUT        ****
--   rom_block(68)        <="0000000000000000";   --STA      -0100 0100
   
--   --LDI
--   rom_block(80)        <="0100000000000100";   --LDI      -0101 0000
--   rom_block(81)        <="0001010000001000";   --LDI      -0101 0001
--   rom_block(82)        <="0000101000000000";   --LDI      -0101 0010
--   rom_block(83)        <="0000000000000000";   --LDI      -0101 0011
--   rom_block(84)        <="0000000000000000";   --LDI      -0101 0100
   
--   --JMP
--   rom_block(96)        <="0100000000000100";   --JMP      -0110 0000
--   rom_block(97)        <="0001010000001010";   --JMP      -0110 0001                --modified: +JMP -- calling early, as the Vivado IP for binary counter load applies to the next clock rise. CE must also be high during the read of new values.
--   rom_block(98)        <="0000100000001010";   --JMP      -0110 0010   INSTOUT JMP  --modified: +CE since load is ignored by the Vivado IP counter when CE is low. Can possibly dial timing of JMP steps in better.
--   rom_block(99)        <="0000000000000000";   --JMP      -0110 0011
--   rom_block(100)       <="0000000000000000";   --JMP      -0110 0100
   
--   --JC
--   rom_block(112)       <="0100000000000100";   --JC       -0111 0000
--   rom_block(113)       <="0001010000001000";   --JC       -0111 0001
--   rom_block(114)       <="0000000000000000";   --JC       -0111 0010   ***x2 - CF
--   --rom_block(114)       <="0000100000000010";   --JC       -0111 0010   ***x2 - CF
--   rom_block(115)       <="0000000000000000";   --JC       -0111 0011
--   rom_block(116)       <="0000000000000000";   --JC       -0111 0100
   
--   --JZ
--   rom_block(128)       <="0100000000000100";   --JZ       -1000 0000
--   rom_block(129)       <="0001010000001000";   --JZ       -1000 0001
--   rom_block(130)       <="0000000000000000";   --JZ       -1000 0010   ***x2 - BF
--   --rom_block(130)       <="0000100000000010";   --JZ       -1000 0010   ***x2 - BF
--   rom_block(131)       <="0000000000000000";   --JZ       -1000 0011
--   rom_block(132)       <="0000000000000000";   --JZ       -1000 0100
   
--   --UNUSED
--   rom_block(144)       <="0100000000000100";   --TBD      -1001 0000
--   rom_block(145)       <="0001010000001000";   --TBD      -1001 0000
--   rom_block(160)       <="0100000000000100";   --TBD      -1010 0000
--   rom_block(161)       <="0001010000001000";   --TBD      -1010 0000
--   rom_block(176)       <="0100000000000100";   --TBD      -1011 0000
--   rom_block(177)       <="0001010000001000";   --TBD      -1011 0000
--   rom_block(192)       <="0100000000000100";   --TBD      -1100 0000
--   rom_block(193)       <="0001010000001000";   --TBD      -1100 0000
--   rom_block(208)       <="0100000000000100";   --TBD      -1101 0000
--   rom_block(209)       <="0001010000001000";   --TBD      -1101 0000
   
--   --OUT
--   rom_block(224)       <="0100000000000100";   --OUT-Ftch -1110 0000     01000000  00000010    MI  CO     
--   rom_block(225)       <="0001010000001000";   --OUT-Ftch -1110 0001                           RO  INSTIN  CE
--   rom_block(226)       <="0000000100010000";   --OUT      -1110 0010                           AO  OI
--   rom_block(227)       <="0000000000000000";   --OUT      -1110 0011                           no-op
--   rom_block(228)       <="0000000000000000";   --OUT      -1110 0100                           no-op
   
--   --HLT
--   rom_block(240)       <="0100000000000100";   --HLT-Ftch -1111 0000     01000000  00000010    MI  CO     
--   rom_block(241)       <="0001010000001000";   --HLT-Ftch -1111 0001                           RO  INSTIN  CE
--   rom_block(242)       <="1000000000000000";   --HLT      -1111 0010                           HLT
--   rom_block(243)       <="0000000000000000";   --HLT      -1111 0011                           no-op
--   rom_block(244)       <="0000000000000000";   --HLT      -1111 addr                           no-op
   
   PROCESS (sys_clk_i, inst, step, load_enable, flags)
    
   BEGIN
      --if falling_edge(sys_clk_i) THEN
        if  load_enable = '1' then
             --addr<=to_integer(shift_left(unsigned(resize(unsigned(inst),8)),4) + unsigned(step));         --IIII0SSS
             --addr <= to_integer(unsigned(inst) & '0' & unsigned(step));
             
             --IIIISSSFF   Instruction Step Flag
             addr <= to_integer(unsigned(inst) & unsigned(step) & unsigned(flags(1 downto 0)));     --1 carry, 0 zero
             
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
         else
            addr<=addr;
         end if;
   END PROCESS;
   
    q_CONTROL16        <= rom_block(addr);
    --q_CurrentADDR      <= std_logic_vector(to_unsigned(addr,8));
    q_CurrentADDR      <= std_logic_vector(to_unsigned(addr,9));
    
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
