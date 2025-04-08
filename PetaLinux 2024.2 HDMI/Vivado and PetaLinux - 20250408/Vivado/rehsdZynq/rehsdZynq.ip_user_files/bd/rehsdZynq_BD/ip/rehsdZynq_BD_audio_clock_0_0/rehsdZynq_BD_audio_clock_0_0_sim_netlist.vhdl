-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Apr  3 19:35:03 2025
-- Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rich/VivadoProjects/rehsdZynq/rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ip/rehsdZynq_BD_audio_clock_0_0/rehsdZynq_BD_audio_clock_0_0_sim_netlist.vhdl
-- Design      : rehsdZynq_BD_audio_clock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_audio_clock_0_0_audio_clock is
  port (
    clk_out_48k : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk_in_100m : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_audio_clock_0_0_audio_clock : entity is "audio_clock";
end rehsdZynq_BD_audio_clock_0_0_audio_clock;

architecture STRUCTURE of rehsdZynq_BD_audio_clock_0_0_audio_clock is
  signal \^clk_out_48k\ : STD_LOGIC;
  signal clk_out_48k_i_1_n_0 : STD_LOGIC;
  signal clk_out_48k_i_2_n_0 : STD_LOGIC;
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_1\ : STD_LOGIC;
  signal \counter1_carry__1_n_2\ : STD_LOGIC;
  signal \counter1_carry__1_n_3\ : STD_LOGIC;
  signal \counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_n_2\ : STD_LOGIC;
  signal \counter1_carry__2_n_3\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_i_5_n_0 : STD_LOGIC;
  signal counter1_carry_i_6_n_0 : STD_LOGIC;
  signal counter1_carry_i_7_n_0 : STD_LOGIC;
  signal counter1_carry_i_8_n_0 : STD_LOGIC;
  signal counter1_carry_i_9_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of counter1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
begin
  clk_out_48k <= \^clk_out_48k\;
clk_out_48k_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => load,
      I1 => \^clk_out_48k\,
      O => clk_out_48k_i_1_n_0
    );
clk_out_48k_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => clk_out_48k_i_2_n_0
    );
clk_out_48k_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => clk_out_48k_i_1_n_0,
      Q => \^clk_out_48k\
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => counter1_carry_i_1_n_0,
      DI(3) => counter1_carry_i_2_n_0,
      DI(2) => counter1_carry_i_3_n_0,
      DI(1) => counter1_carry_i_4_n_0,
      DI(0) => counter1_carry_i_5_n_0,
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter1_carry_i_6_n_0,
      S(2) => counter1_carry_i_7_n_0,
      S(1) => counter1_carry_i_8_n_0,
      S(0) => counter1_carry_i_9_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__0_i_1_n_0\,
      DI(2) => \counter1_carry__0_i_2_n_0\,
      DI(1) => \counter1_carry__0_i_3_n_0\,
      DI(0) => \counter1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__0_i_5_n_0\,
      S(2) => \counter1_carry__0_i_6_n_0\,
      S(1) => \counter1_carry__0_i_7_n_0\,
      S(0) => \counter1_carry__0_i_8_n_0\
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => \counter1_carry__0_i_5_n_0\
    );
\counter1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => \counter1_carry__0_i_6_n_0\
    );
\counter1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => \counter1_carry__0_i_7_n_0\
    );
\counter1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(10),
      O => \counter1_carry__0_i_8_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3) => \counter1_carry__1_n_0\,
      CO(2) => \counter1_carry__1_n_1\,
      CO(1) => \counter1_carry__1_n_2\,
      CO(0) => \counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__1_i_1_n_0\,
      DI(2) => \counter1_carry__1_i_2_n_0\,
      DI(1) => \counter1_carry__1_i_3_n_0\,
      DI(0) => \counter1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__1_i_5_n_0\,
      S(2) => \counter1_carry__1_i_6_n_0\,
      S(1) => \counter1_carry__1_i_7_n_0\,
      S(0) => \counter1_carry__1_i_8_n_0\
    );
\counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \counter1_carry__1_i_1_n_0\
    );
\counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \counter1_carry__1_i_2_n_0\
    );
\counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \counter1_carry__1_i_3_n_0\
    );
\counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \counter1_carry__1_i_4_n_0\
    );
\counter1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \counter1_carry__1_i_5_n_0\
    );
\counter1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \counter1_carry__1_i_6_n_0\
    );
\counter1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \counter1_carry__1_i_7_n_0\
    );
\counter1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \counter1_carry__1_i_8_n_0\
    );
\counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__1_n_0\,
      CO(3) => \NLW_counter1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => load,
      CO(1) => \counter1_carry__2_n_2\,
      CO(0) => \counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \counter1_carry__2_i_1_n_0\,
      DI(1) => \counter1_carry__2_i_2_n_0\,
      DI(0) => \counter1_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \counter1_carry__2_i_4_n_0\,
      S(1) => \counter1_carry__2_i_5_n_0\,
      S(0) => \counter1_carry__2_i_6_n_0\
    );
\counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      O => \counter1_carry__2_i_1_n_0\
    );
\counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(29),
      O => \counter1_carry__2_i_2_n_0\
    );
\counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \counter1_carry__2_i_3_n_0\
    );
\counter1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      O => \counter1_carry__2_i_4_n_0\
    );
\counter1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(29),
      O => \counter1_carry__2_i_5_n_0\
    );
\counter1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \counter1_carry__2_i_6_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      O => counter1_carry_i_4_n_0
    );
counter1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => counter1_carry_i_5_n_0
    );
counter1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => counter1_carry_i_6_n_0
    );
counter1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => counter1_carry_i_7_n_0
    );
counter1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      O => counter1_carry_i_8_n_0
    );
counter1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => counter1_carry_i_9_n_0
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(0),
      I1 => load,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      I1 => load,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => load,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      I1 => load,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => load,
      O => \counter[0]_i_6_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      I1 => load,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      I1 => load,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      I1 => load,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      I1 => load,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(19),
      I1 => load,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(18),
      I1 => load,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(17),
      I1 => load,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      I1 => load,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(23),
      I1 => load,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(22),
      I1 => load,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(21),
      I1 => load,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(20),
      I1 => load,
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(27),
      I1 => load,
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(26),
      I1 => load,
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(25),
      I1 => load,
      O => \counter[24]_i_4_n_0\
    );
\counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(24),
      I1 => load,
      O => \counter[24]_i_5_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(31),
      I1 => load,
      O => \counter[28]_i_2_n_0\
    );
\counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(30),
      I1 => load,
      O => \counter[28]_i_3_n_0\
    );
\counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(29),
      I1 => load,
      O => \counter[28]_i_4_n_0\
    );
\counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(28),
      I1 => load,
      O => \counter[28]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      I1 => load,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      I1 => load,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => load,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      I1 => load,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      I1 => load,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      I1 => load,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => load,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => load,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => \counter[24]_i_2_n_0\,
      S(2) => \counter[24]_i_3_n_0\,
      S(1) => \counter[24]_i_4_n_0\,
      S(0) => \counter[24]_i_5_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28)
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3) => \counter[28]_i_2_n_0\,
      S(2) => \counter[28]_i_3_n_0\,
      S(1) => \counter[28]_i_4_n_0\,
      S(0) => \counter[28]_i_5_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_100m,
      CE => '1',
      CLR => clk_out_48k_i_2_n_0,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_audio_clock_0_0 is
  port (
    clk_in_100m : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk_out_48k : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rehsdZynq_BD_audio_clock_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rehsdZynq_BD_audio_clock_0_0 : entity is "rehsdZynq_BD_audio_clock_0_0,audio_clock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of rehsdZynq_BD_audio_clock_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of rehsdZynq_BD_audio_clock_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of rehsdZynq_BD_audio_clock_0_0 : entity is "audio_clock,Vivado 2024.2";
end rehsdZynq_BD_audio_clock_0_0;

architecture STRUCTURE of rehsdZynq_BD_audio_clock_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.rehsdZynq_BD_audio_clock_0_0_audio_clock
     port map (
      clk_in_100m => clk_in_100m,
      clk_out_48k => clk_out_48k,
      reset_n => reset_n
    );
end STRUCTURE;
