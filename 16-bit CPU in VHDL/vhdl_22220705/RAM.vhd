--Logic to simulate ROM+RAM, with an extra ROM for initialization.
--Actual hardware will disable RAM, enable init ROM
--After init is complete, init ROM disabled and RAM enabled (both serving the same addresses starting at 0x0)
--Other ROM is for standard ROM from 8000 to FFFF
--Plan to use 32kx16 ROM and smae for RAM - for 64k of double-byte data
--Init ROM only needs to be x8, as the three first blocks only have lower byte populated (upper is all zeros). A tiny ROM will work. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity RAM is
   PORT
   (
      sys_clk_i             :  IN   std_logic;
      data                  :  IN   std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      rw_address            :  IN   std_logic_vector (15 downto 0)    := "0000000000000000";
      load_addr_enable      :  IN   std_logic                        := '0';
      write_enable          :  IN   std_logic                        := '0';
      q_addr_out            :  OUT  std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      q_data_out            :  OUT  std_logic_vector (15 DOWNTO 0)   := "0000000000000000";
      reset_mem             :  IN   std_logic                        := '0';
      initializing          :  IN   std_logic                        := '1'
   );
end RAM;

architecture Behavioral of RAM is

TYPE mem IS ARRAY(0 TO 255) OF std_logic_vector(15 DOWNTO 0);
SIGNAL ram_block            : mem;
signal data_out_t           : std_logic_vector (15 downto 0)     := "0000000000000000";
signal address_t            : std_logic_vector (15 downto 0)     := "0000000000000000";

begin
    PROCESS (sys_clk_i, data, rw_address, load_addr_enable, write_enable, reset_mem, initializing)
        variable startup: boolean:=true;
    BEGIN
        if(startup=true OR reset_mem ='1') then
            if(initializing='1') then
                ram_block(0)    <="0000000010101101";  --LDA
                ram_block(1)    <="0000000011111100";  --value at 0xFFFC address (0x1FFC for testing on FPGA)
                ram_block(2)    <="0000000001000010";  --JMPA
                data_out_t      <="0000000010101101";
            else
                ram_block(0)   <="0000000000000000";
                ram_block(1)   <="0000000000000000";
                ram_block(2)   <="0000000000000000";
                data_out_t     <="0000000000000000";
            end if;
            ram_block(3)   <="0000000000000000";
            ram_block(4)   <="0000000000000000";
            ram_block(5)   <="0000000000000000";
            ram_block(6)   <="0000000000000000";
            ram_block(7)   <="0000000000000000";
            ram_block(8)   <="0000000000000000";
            ram_block(9)   <="0000000000000000";
            ram_block(10)   <="0000000000000000";
            ram_block(11)   <="0000000000000000";
            ram_block(12)   <="0000000000000000";
            ram_block(13)   <="0000000000000000";
            ram_block(14)   <="0000000000000000";
            ram_block(15)   <="0000000000000000";
            ram_block(16)   <="0000000000000000";
            ram_block(17)   <="0000000000000000";
            ram_block(18)   <="0000000000000000";
            ram_block(19)   <="0000000000000000";
            ram_block(20)   <="0000000000000000";
            ram_block(21)   <="0000000000000000";
            ram_block(22)   <="0000000000000000";
            ram_block(23)   <="0000000000000000";
            ram_block(24)   <="0000000000000000";
            ram_block(25)   <="0000000000000000";
            ram_block(26)   <="0000000000000000";
            ram_block(27)   <="0000000000000000";
            ram_block(28)   <="0000000000000000";
            ram_block(29)   <="0000000000000000";
            ram_block(30)   <="0000000000000000";
            ram_block(31)   <="0000000000000000";
            ram_block(32)   <="0000000000000000";
            ram_block(33)   <="0000000000000000";
            ram_block(34)   <="0000000000000000";
            ram_block(35)   <="0000000000000000";
            ram_block(36)   <="0000000000000000";
            ram_block(37)   <="0000000000000000";
            ram_block(38)   <="0000000000000000";
            ram_block(39)   <="0000000000000000";
            ram_block(40)   <="0000000000000000";
            ram_block(41)   <="0000000000000000";
            ram_block(42)   <="0000000000000000";
            ram_block(43)   <="0000000000000000";
            ram_block(44)   <="0000000000000000";
            ram_block(45)   <="0000000000000000";
            ram_block(46)   <="0000000000000000";
            ram_block(47)   <="0000000000000000";
            ram_block(48)   <="0000000000000000";
            ram_block(49)   <="0000000000000000";
            ram_block(50)   <="0000000000000000";
            ram_block(51)   <="0000000000000000";
            ram_block(52)   <="0000000000000000";
            ram_block(53)   <="0000000000000000";
            ram_block(54)   <="0000000000000000";
            ram_block(55)   <="0000000000000000";
            ram_block(56)   <="0000000000000000";
            ram_block(57)   <="0000000000000000";
            ram_block(58)   <="0000000000000000";
            ram_block(59)   <="0000000000000000";
            ram_block(60)   <="0000000000000000";
            ram_block(61)   <="0000000000000000";
            ram_block(62)   <="0000000000000000";
            ram_block(63)   <="0000000000000000";
            ram_block(64)   <="0000000000000000";
            ram_block(65)   <="0000000000000000";
            ram_block(66)   <="0000000000000000";
            ram_block(67)   <="0000000000000000";
            ram_block(68)   <="0000000000000000";
            ram_block(69)   <="0000000000000000";
            ram_block(70)   <="0000000000000000";
            ram_block(71)   <="0000000000000000";
            ram_block(72)   <="0000000000000000";
            ram_block(73)   <="0000000000000000";
            ram_block(74)   <="0000000000000000";
            ram_block(75)   <="0000000000000000";
            ram_block(76)   <="0000000000000000";
            ram_block(77)   <="0000000000000000";
            ram_block(78)   <="0000000000000000";
            ram_block(79)   <="0000000000000000";
            ram_block(80)   <="0000000000000000";
            ram_block(81)   <="0000000000000000";
            ram_block(82)   <="0000000000000000";
            ram_block(83)   <="0000000000000000";
            ram_block(84)   <="0000000000000000";
            ram_block(85)   <="0000000000000000";
            ram_block(86)   <="0000000000000000";
            ram_block(87)   <="0000000000000000";
            ram_block(88)   <="0000000000000000";
            ram_block(89)   <="0000000000000000";
            ram_block(90)   <="0000000000000000";
            ram_block(91)   <="0000000000000000";
            ram_block(92)   <="0000000000000000";
            ram_block(93)   <="0000000000000000";
            ram_block(94)   <="0000000000000000";
            ram_block(95)   <="0000000000000000";
            ram_block(96)   <="0000000000000000";
            ram_block(97)   <="0000000000000000";
            ram_block(98)   <="0000000000000000";
            ram_block(99)   <="0000000000000000";
            ram_block(100)   <="0000000000000000";
            ram_block(101)   <="0000000000000000";
            ram_block(102)   <="0000000000000000";
            ram_block(103)   <="0000000000000000";
            ram_block(104)   <="0000000000000000";
            ram_block(105)   <="0000000000000000";
            ram_block(106)   <="0000000000000000";
            ram_block(107)   <="0000000000000000";
            ram_block(108)   <="0000000000000000";
            ram_block(109)   <="0000000000000000";
            ram_block(110)   <="0000000000000000";
            ram_block(111)   <="0000000000000000";
            ram_block(112)   <="0000000000000000";
            ram_block(113)   <="0000000000000000";
            ram_block(114)   <="0000000000000000";
            ram_block(115)   <="0000000000000000";
            ram_block(116)   <="0000000000000000";
            ram_block(117)   <="0000000000000000";
            ram_block(118)   <="0000000000000000";
            ram_block(119)   <="0000000000000000";
            ram_block(120)   <="0000000000000000";
            ram_block(121)   <="0000000000000000";
            ram_block(122)   <="0000000000000000";
            ram_block(123)   <="0000000000000000";
            ram_block(124)   <="0000000000000000";
            ram_block(125)   <="0000000000000000";
            ram_block(126)   <="0000000000000000";
            ram_block(127)   <="0000000000000000";
            ram_block(128)   <="0000000011011011";      --STP
            ram_block(129)   <="0000000000000000";
            ram_block(130)   <="0000000000000000";
            ram_block(131)   <="0000000000000000";
            ram_block(132)   <="0000000000000000";
            ram_block(133)   <="0000000000000000";
            ram_block(134)   <="0000000000000000";
            ram_block(135)   <="0000000000000000";
            ram_block(136)   <="0000000000000000";
            ram_block(137)   <="0000000000000000";
            ram_block(138)   <="0000000000000000";
            ram_block(139)   <="0000000000000000";
            ram_block(140)   <="0000000000000000";
            ram_block(141)   <="0000000000000000";
            ram_block(142)   <="0000000000000000";
            ram_block(143)   <="0000000000000000";
            ram_block(144)   <="0000000000000000";
            ram_block(145)   <="0000000000000000";
            ram_block(146)   <="0000000000000000";
            ram_block(147)   <="0000000000000000";
            ram_block(148)   <="0000000000000000";
            ram_block(149)   <="0000000000000000";
            ram_block(150)   <="0000000000000000";
            ram_block(151)   <="0000000000000000";
            ram_block(152)   <="0000000000000000";
            ram_block(153)   <="0000000000000000";
            ram_block(154)   <="0000000000000000";
            ram_block(155)   <="0000000000000000";
            ram_block(156)   <="0000000000000000";
            ram_block(157)   <="0000000000000000";
            ram_block(158)   <="0000000000000000";
            ram_block(159)   <="0000000000000000";
            ram_block(160)   <="0000000000000000";
            ram_block(161)   <="0000000000000000";
            ram_block(162)   <="0000000000000000";
            ram_block(163)   <="0000000000000000";
            ram_block(164)   <="0000000000000000";
            ram_block(165)   <="0000000000000000";
            ram_block(166)   <="0000000000000000";
            ram_block(167)   <="0000000000000000";
            ram_block(168)   <="0000000000000000";
            ram_block(169)   <="0000000000000000";
            ram_block(170)   <="0000000000000000";
            ram_block(171)   <="0000000000000000";
            ram_block(172)   <="0000000000000000";
            ram_block(173)   <="0000000000000000";
            ram_block(174)   <="0000000000000000";
            ram_block(175)   <="0000000000000000";
            ram_block(176)   <="0000000000000000";
            ram_block(177)   <="0000000000000000";
            ram_block(178)   <="0000000000000000";
            ram_block(179)   <="0000000000000000";
            ram_block(180)   <="0000000000000000";
            ram_block(181)   <="0000000000000000";
            ram_block(182)   <="0000000000000000";
            ram_block(183)   <="0000000000000000";
            ram_block(184)   <="0000000000000000";
            ram_block(185)   <="0000000000000000";
            ram_block(186)   <="0000000000000000";
            ram_block(187)   <="0000000000000000";
            ram_block(188)   <="0000000000000000";
            ram_block(189)   <="0000000000000000";
            ram_block(190)   <="0000000000000000";
            ram_block(191)   <="0000000000000000";
            ram_block(192)   <="0000000000000000";
            ram_block(193)   <="0000000000000000";
            ram_block(194)   <="0000000000000000";
            ram_block(195)   <="0000000000000000";
            ram_block(196)   <="0000000000000000";
            ram_block(197)   <="0000000000000000";
            ram_block(198)   <="0000000000000000";
            ram_block(199)   <="0000000000000000";
            ram_block(200)   <="0000000000000000";
            ram_block(201)   <="0000000000000000";
            ram_block(202)   <="0000000000000000";
            ram_block(203)   <="0000000000000000";
            ram_block(204)   <="0000000000000000";
            ram_block(205)   <="0000000000000000";
            ram_block(206)   <="0000000000000000";
            ram_block(207)   <="0000000000000000";
            ram_block(208)   <="0000000000000000";
            ram_block(209)   <="0000000000000000";
            ram_block(210)   <="0000000000000000";
            ram_block(211)   <="0000000000000000";
            ram_block(212)   <="0000000000000000";
            ram_block(213)   <="0000000000000000";
            ram_block(214)   <="0000000000000000";
            ram_block(215)   <="0000000000000000";
            ram_block(216)   <="0000000000000000";
            ram_block(217)   <="0000000000000000";
            ram_block(218)   <="0000000000000000";
            ram_block(219)   <="0000000000000000";
            ram_block(220)   <="0000000000000000";
            ram_block(221)   <="0000000000000000";
            ram_block(222)   <="0000000000000000";
            ram_block(223)   <="0000000000000000";
            ram_block(224)   <="0000000000000000";
            ram_block(225)   <="0000000000000000";
            ram_block(226)   <="0000000000000000";
            ram_block(227)   <="0000000000000000";
            ram_block(228)   <="0000000000000000";
            ram_block(229)   <="0000000000000000";
            ram_block(230)   <="0000000000000000";
            ram_block(231)   <="0000000000000000";
            ram_block(232)   <="0000000000000000";
            ram_block(233)   <="0000000000000000";
            ram_block(234)   <="0000000000000000";
            ram_block(235)   <="0000000000000000";
            ram_block(236)   <="0000000000000000";
            ram_block(237)   <="0000000000000000";
            ram_block(238)   <="0000000000000000";
            ram_block(239)   <="0000000000000000";
            ram_block(240)   <="0000000000000000";
            ram_block(241)   <="0000000000000000";
            ram_block(242)   <="0000000000000000";
            ram_block(243)   <="0000000000000000";
            ram_block(244)   <="0000000000000000";
            ram_block(245)   <="0000000000000000";
            ram_block(246)   <="0000000000000000";
            ram_block(247)   <="0000000000000000";
            ram_block(248)   <="0000000000000000";
            ram_block(249)   <="0000000000000000";
            ram_block(250)   <="0000000000000000";
            ram_block(251)   <="0000000000000000";
            ram_block(252)  <="0000000010000000";  --FFFC
            ram_block(253)   <="0000000000000000";
            ram_block(254)   <="0000000000000000";
            ram_block(255)   <="0000000000000000";

            startup:=false;
            --data_out_t <= ram_block(0);
        else
            if rising_edge(sys_clk_i) then  
                if(load_addr_enable = '1') then
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
    
end Behavioral;
