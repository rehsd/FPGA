-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Mar 18 19:39:44 2025
-- Host        : i14700f-Ubuntu running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rich/VivadoProjects/rehsdZynq/rehsdZynq.gen/sources_1/bd/rehsdZynq_BD/ip/rehsdZynq_BD_VGA_Testing_Top_0_0/rehsdZynq_BD_VGA_Testing_Top_0_0_sim_netlist.vhdl
-- Design      : rehsdZynq_BD_VGA_Testing_Top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_Row_Count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_VSync_Start : out STD_LOGIC;
    i_HSync : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_VSync : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses : entity is "VGA_Sync_Pulses";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses is
  signal o_Col_Count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \o_Col_Count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal o_Row_Count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \o_Row_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_Row_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_2_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_4__1_n_0\ : STD_LOGIC;
  signal o_Row_Count_0 : STD_LOGIC;
  signal \^o_row_count_reg[7]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Col_Count[0]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_Col_Count[1]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_Col_Count[2]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_Col_Count[3]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_Col_Count[4]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_Col_Count[7]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_Col_Count[8]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_Col_Count[9]_i_3__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_Row_Count[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_Row_Count[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_Row_Count[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_Row_Count[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_Row_Count[4]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_Row_Count[6]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_Row_Count[7]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_Row_Count[8]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_Row_Count[8]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_4__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of o_VSync_i_1 : label is "soft_lutpair14";
begin
  \o_Row_Count_reg[7]_0\(0) <= \^o_row_count_reg[7]_0\(0);
\o_Col_Count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => o_Col_Count(0),
      O => p_1_in(0)
    );
\o_Col_Count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => o_Col_Count(0),
      I1 => o_Col_Count(1),
      O => p_1_in(1)
    );
\o_Col_Count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => o_Col_Count(1),
      I1 => o_Col_Count(0),
      I2 => o_Col_Count(2),
      O => p_1_in(2)
    );
\o_Col_Count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => o_Col_Count(2),
      I1 => o_Col_Count(0),
      I2 => o_Col_Count(1),
      I3 => o_Col_Count(3),
      O => p_1_in(3)
    );
\o_Col_Count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => o_Col_Count(3),
      I1 => o_Col_Count(1),
      I2 => o_Col_Count(0),
      I3 => o_Col_Count(2),
      I4 => o_Col_Count(4),
      O => p_1_in(4)
    );
\o_Col_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => o_Col_Count(4),
      I1 => o_Col_Count(2),
      I2 => o_Col_Count(0),
      I3 => o_Col_Count(1),
      I4 => o_Col_Count(3),
      I5 => o_Col_Count(5),
      O => p_1_in(5)
    );
\o_Col_Count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => o_Col_Count(5),
      I1 => \o_Col_Count[9]_i_3__0_n_0\,
      I2 => o_Col_Count(6),
      O => p_1_in(6)
    );
\o_Col_Count[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => o_Col_Count(6),
      I1 => \o_Col_Count[9]_i_3__0_n_0\,
      I2 => o_Col_Count(5),
      I3 => o_Col_Count(7),
      O => p_1_in(7)
    );
\o_Col_Count[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => o_Col_Count(7),
      I1 => o_Col_Count(5),
      I2 => \o_Col_Count[9]_i_3__0_n_0\,
      I3 => o_Col_Count(6),
      I4 => o_Col_Count(8),
      O => p_1_in(8)
    );
\o_Col_Count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_row_count_reg[7]_0\(0),
      I1 => E(0),
      O => SR(0)
    );
\o_Col_Count[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => o_Col_Count(8),
      I1 => o_Col_Count(9),
      I2 => o_Col_Count(7),
      I3 => o_Col_Count(6),
      I4 => o_Col_Count(5),
      I5 => \o_Col_Count[9]_i_3__0_n_0\,
      O => o_Row_Count_0
    );
\o_Col_Count[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => o_Col_Count(8),
      I1 => o_Col_Count(6),
      I2 => \o_Col_Count[9]_i_3__0_n_0\,
      I3 => o_Col_Count(5),
      I4 => o_Col_Count(7),
      I5 => o_Col_Count(9),
      O => p_1_in(9)
    );
\o_Col_Count[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => o_Col_Count(3),
      I1 => o_Col_Count(1),
      I2 => o_Col_Count(0),
      I3 => o_Col_Count(2),
      I4 => o_Col_Count(4),
      O => \o_Col_Count[9]_i_3__0_n_0\
    );
\o_Col_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(0),
      Q => o_Col_Count(0),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(1),
      Q => o_Col_Count(1),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(2),
      Q => o_Col_Count(2),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(3),
      Q => o_Col_Count(3),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(4),
      Q => o_Col_Count(4),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(5),
      Q => o_Col_Count(5),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(6),
      Q => o_Col_Count(6),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(7),
      Q => o_Col_Count(7),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(8),
      Q => o_Col_Count(8),
      R => o_Row_Count_0
    );
\o_Col_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => p_1_in(9),
      Q => o_Col_Count(9),
      R => o_Row_Count_0
    );
o_HSync_reg_srl2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => o_Col_Count(8),
      I1 => o_Col_Count(7),
      I2 => o_Col_Count(9),
      O => i_HSync
    );
\o_Row_Count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => o_Row_Count(2),
      I1 => \o_Row_Count[0]_i_2_n_0\,
      I2 => o_Row_Count(0),
      O => \o_Row_Count[0]_i_1_n_0\
    );
\o_Row_Count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => o_Row_Count(1),
      I1 => o_Row_Count(4),
      I2 => o_Row_Count(5),
      I3 => o_Row_Count(3),
      I4 => \o_Row_Count[9]_i_4__1_n_0\,
      O => \o_Row_Count[0]_i_2_n_0\
    );
\o_Row_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => o_Row_Count(0),
      I1 => o_Row_Count(1),
      O => \o_Row_Count[1]_i_1_n_0\
    );
\o_Row_Count[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \o_Row_Count[9]_i_3__0_n_0\,
      I1 => o_Row_Count(0),
      I2 => o_Row_Count(1),
      I3 => o_Row_Count(2),
      O => \o_Row_Count[2]_i_1__0_n_0\
    );
\o_Row_Count[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7800F0F0"
    )
        port map (
      I0 => o_Row_Count(1),
      I1 => o_Row_Count(0),
      I2 => o_Row_Count(3),
      I3 => \o_Row_Count[9]_i_3__0_n_0\,
      I4 => o_Row_Count(2),
      O => \o_Row_Count[3]_i_1__0_n_0\
    );
\o_Row_Count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => o_Row_Count(4),
      I1 => o_Row_Count(2),
      I2 => o_Row_Count(0),
      I3 => o_Row_Count(1),
      I4 => o_Row_Count(3),
      O => \o_Row_Count[4]_i_1__0_n_0\
    );
\o_Row_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => o_Row_Count(5),
      I1 => o_Row_Count(3),
      I2 => o_Row_Count(1),
      I3 => o_Row_Count(0),
      I4 => o_Row_Count(2),
      I5 => o_Row_Count(4),
      O => \o_Row_Count[5]_i_1_n_0\
    );
\o_Row_Count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => o_Row_Count(6),
      I1 => \o_Row_Count[8]_i_2__0_n_0\,
      I2 => o_Row_Count(5),
      O => \o_Row_Count[6]_i_1__0_n_0\
    );
\o_Row_Count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => o_Row_Count(5),
      I1 => \o_Row_Count[8]_i_2__0_n_0\,
      I2 => o_Row_Count(6),
      I3 => o_Row_Count(7),
      O => \o_Row_Count[7]_i_1__0_n_0\
    );
\o_Row_Count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => o_Row_Count(8),
      I1 => o_Row_Count(5),
      I2 => \o_Row_Count[8]_i_2__0_n_0\,
      I3 => o_Row_Count(6),
      I4 => o_Row_Count(7),
      O => \o_Row_Count[8]_i_1__0_n_0\
    );
\o_Row_Count[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => o_Row_Count(3),
      I1 => o_Row_Count(1),
      I2 => o_Row_Count(0),
      I3 => o_Row_Count(2),
      I4 => o_Row_Count(4),
      O => \o_Row_Count[8]_i_2__0_n_0\
    );
\o_Row_Count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9909"
    )
        port map (
      I0 => o_Row_Count(9),
      I1 => \o_Row_Count[9]_i_2_n_0\,
      I2 => o_Row_Count(2),
      I3 => \o_Row_Count[9]_i_3__0_n_0\,
      O => \o_Row_Count[9]_i_1_n_0\
    );
\o_Row_Count[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => o_Row_Count(7),
      I1 => o_Row_Count(5),
      I2 => o_Row_Count(8),
      I3 => o_Row_Count(6),
      I4 => o_Row_Count(9),
      I5 => w_VSync,
      O => \^o_row_count_reg[7]_0\(0)
    );
\o_Row_Count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \o_Row_Count[8]_i_2__0_n_0\,
      I1 => o_Row_Count(6),
      I2 => o_Row_Count(8),
      I3 => o_Row_Count(5),
      I4 => o_Row_Count(7),
      O => \o_Row_Count[9]_i_2_n_0\
    );
\o_Row_Count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => o_Row_Count(0),
      I1 => \o_Row_Count[9]_i_4__1_n_0\,
      I2 => o_Row_Count(3),
      I3 => o_Row_Count(5),
      I4 => o_Row_Count(4),
      I5 => o_Row_Count(1),
      O => \o_Row_Count[9]_i_3__0_n_0\
    );
\o_Row_Count[9]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => o_Row_Count(9),
      I1 => o_Row_Count(7),
      I2 => o_Row_Count(8),
      I3 => o_Row_Count(6),
      O => \o_Row_Count[9]_i_4__1_n_0\
    );
\o_Row_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[0]_i_1_n_0\,
      Q => o_Row_Count(0),
      R => '0'
    );
\o_Row_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[1]_i_1_n_0\,
      Q => o_Row_Count(1),
      R => '0'
    );
\o_Row_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[2]_i_1__0_n_0\,
      Q => o_Row_Count(2),
      R => '0'
    );
\o_Row_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[3]_i_1__0_n_0\,
      Q => o_Row_Count(3),
      R => '0'
    );
\o_Row_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[4]_i_1__0_n_0\,
      Q => o_Row_Count(4),
      R => '0'
    );
\o_Row_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[5]_i_1_n_0\,
      Q => o_Row_Count(5),
      R => '0'
    );
\o_Row_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[6]_i_1__0_n_0\,
      Q => o_Row_Count(6),
      R => '0'
    );
\o_Row_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[7]_i_1__0_n_0\,
      Q => o_Row_Count(7),
      R => '0'
    );
\o_Row_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[8]_i_1__0_n_0\,
      Q => o_Row_Count(8),
      R => '0'
    );
\o_Row_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count_0,
      D => \o_Row_Count[9]_i_1_n_0\,
      Q => o_Row_Count(9),
      R => '0'
    );
o_VSync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => o_Row_Count(9),
      I1 => o_Row_Count(6),
      I2 => o_Row_Count(8),
      I3 => o_Row_Count(5),
      I4 => o_Row_Count(7),
      O => w_VSync_Start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count is
  port (
    w_VSync : out STD_LOGIC;
    o_Blu_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_Red_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_Grn_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    w_VSync_Start : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Blu_Video_reg[2]\ : in STD_LOGIC;
    \o_Blu_Video_reg[2]_0\ : in STD_LOGIC;
    \o_Red_Video_reg[2]\ : in STD_LOGIC;
    \o_Grn_Video_reg[2]\ : in STD_LOGIC;
    \o_Grn_Video_reg[2]_0\ : in STD_LOGIC;
    w_VSync_TP : in STD_LOGIC;
    w_VSync_0 : in STD_LOGIC;
    \r_Blu_Video_reg[2]_srl2_i_1_0\ : in STD_LOGIC;
    \o_Row_Count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_Col_Count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count : entity is "VGA_Sync_To_Count";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_Col_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[8]_i_2_n_0\ : STD_LOGIC;
  signal \o_Col_Count[9]_i_2_n_0\ : STD_LOGIC;
  signal \o_Row_Count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_10_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_3__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_4_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_5__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_6_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_7_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_8_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_9_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_11_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_12_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_13_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_14_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_15_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_16_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_17_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_18_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_19_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_20_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_21_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_22_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_23_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_24_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_25_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_26_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_2_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_3_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_5_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_7_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_8_n_0\ : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_i_9_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_10_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_2_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_5_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_6_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_7_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_8_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_i_9_n_0\ : STD_LOGIC;
  signal \r_Red_Video_reg[2]_srl2_i_2_n_0\ : STD_LOGIC;
  signal \r_Red_Video_reg[2]_srl2_i_4_n_0\ : STD_LOGIC;
  signal \r_Red_Video_reg[2]_srl2_i_5_n_0\ : STD_LOGIC;
  signal \r_Red_Video_reg[2]_srl2_i_6_n_0\ : STD_LOGIC;
  signal w_Col_Count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal w_Row_Count : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Col_Count[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_Col_Count[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_Col_Count[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_Col_Count[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_Col_Count[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_Col_Count[6]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_Col_Count[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_Col_Count[8]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_Row_Count[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_Row_Count[2]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_Row_Count[3]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_Row_Count[4]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_Row_Count[7]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_Row_Count[8]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_10\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_5__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_13\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_19\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_21\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_22\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_23\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_24\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_25\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_26\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_7\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_Grn_Video_reg[2]_srl2_i_10\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_Grn_Video_reg[2]_srl2_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_Grn_Video_reg[2]_srl2_i_8\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_Red_Video_reg[2]_srl2_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_Red_Video_reg[2]_srl2_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_Red_Video_reg[2]_srl2_i_5\ : label is "soft_lutpair25";
begin
  E(0) <= \^e\(0);
\o_Col_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_Col_Count(0),
      O => \o_Col_Count[0]_i_1_n_0\
    );
\o_Col_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_Col_Count(0),
      I1 => w_Col_Count(1),
      O => \o_Col_Count[1]_i_1_n_0\
    );
\o_Col_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_Col_Count(2),
      I1 => w_Col_Count(1),
      I2 => w_Col_Count(0),
      O => \o_Col_Count[2]_i_1_n_0\
    );
\o_Col_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => w_Col_Count(3),
      I1 => w_Col_Count(2),
      I2 => w_Col_Count(1),
      I3 => w_Col_Count(0),
      O => \o_Col_Count[3]_i_1_n_0\
    );
\o_Col_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_Col_Count(4),
      I1 => w_Col_Count(0),
      I2 => w_Col_Count(1),
      I3 => w_Col_Count(2),
      I4 => w_Col_Count(3),
      O => \o_Col_Count[4]_i_1_n_0\
    );
\o_Col_Count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_Col_Count(5),
      I1 => w_Col_Count(3),
      I2 => w_Col_Count(4),
      I3 => w_Col_Count(2),
      I4 => w_Col_Count(1),
      I5 => w_Col_Count(0),
      O => \o_Col_Count[5]_i_1__0_n_0\
    );
\o_Col_Count[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => w_Col_Count(6),
      I1 => w_Col_Count(5),
      I2 => \o_Row_Count[9]_i_4_n_0\,
      O => \o_Col_Count[6]_i_1__1_n_0\
    );
\o_Col_Count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => w_Col_Count(7),
      I1 => \o_Row_Count[9]_i_4_n_0\,
      I2 => w_Col_Count(5),
      I3 => w_Col_Count(6),
      O => \o_Col_Count[7]_i_1_n_0\
    );
\o_Col_Count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => w_Col_Count(8),
      I1 => w_Col_Count(5),
      I2 => w_Col_Count(4),
      I3 => w_Col_Count(7),
      I4 => w_Col_Count(6),
      I5 => \o_Col_Count[8]_i_2_n_0\,
      O => \o_Col_Count[8]_i_1_n_0\
    );
\o_Col_Count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => w_Col_Count(0),
      I1 => w_Col_Count(1),
      I2 => w_Col_Count(2),
      I3 => w_Col_Count(3),
      O => \o_Col_Count[8]_i_2_n_0\
    );
\o_Col_Count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => \o_Row_Count[9]_i_4_n_0\,
      I2 => w_Col_Count(8),
      I3 => w_Col_Count(7),
      I4 => w_Col_Count(6),
      I5 => w_Col_Count(5),
      O => \o_Col_Count[9]_i_2_n_0\
    );
\o_Col_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[0]_i_1_n_0\,
      Q => w_Col_Count(0),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[1]_i_1_n_0\,
      Q => w_Col_Count(1),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[2]_i_1_n_0\,
      Q => w_Col_Count(2),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[3]_i_1_n_0\,
      Q => w_Col_Count(3),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[4]_i_1_n_0\,
      Q => w_Col_Count(4),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[5]_i_1__0_n_0\,
      Q => w_Col_Count(5),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[6]_i_1__1_n_0\,
      Q => w_Col_Count(6),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[7]_i_1_n_0\,
      Q => w_Col_Count(7),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[8]_i_1_n_0\,
      Q => w_Col_Count(8),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Col_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[9]_i_2_n_0\,
      Q => w_Col_Count(9),
      R => \o_Col_Count_reg[0]_0\(0)
    );
\o_Row_Count[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => w_Row_Count(0),
      I1 => \o_Row_Count[3]_i_2__0_n_0\,
      I2 => w_Row_Count(2),
      I3 => w_Row_Count(1),
      O => \o_Row_Count[0]_i_1__0_n_0\
    );
\o_Row_Count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_Row_Count(0),
      I1 => w_Row_Count(1),
      O => \o_Row_Count[1]_i_1__0_n_0\
    );
\o_Row_Count[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7868"
    )
        port map (
      I0 => w_Row_Count(0),
      I1 => w_Row_Count(1),
      I2 => w_Row_Count(2),
      I3 => \o_Row_Count[3]_i_2__0_n_0\,
      O => \o_Row_Count[2]_i_1__1_n_0\
    );
\o_Row_Count[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7788FB00"
    )
        port map (
      I0 => w_Row_Count(1),
      I1 => w_Row_Count(2),
      I2 => \o_Row_Count[3]_i_2__0_n_0\,
      I3 => w_Row_Count(3),
      I4 => w_Row_Count(0),
      O => \o_Row_Count[3]_i_1__1_n_0\
    );
\o_Row_Count[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => w_Row_Count(7),
      I1 => w_Row_Count(6),
      I2 => \o_Row_Count[9]_i_10_n_0\,
      I3 => w_Row_Count(8),
      I4 => w_Row_Count(3),
      I5 => w_Row_Count(9),
      O => \o_Row_Count[3]_i_2__0_n_0\
    );
\o_Row_Count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_Row_Count(4),
      I1 => w_Row_Count(2),
      I2 => w_Row_Count(3),
      I3 => w_Row_Count(1),
      I4 => w_Row_Count(0),
      O => \o_Row_Count[4]_i_1__1_n_0\
    );
\o_Row_Count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_Row_Count(5),
      I1 => w_Row_Count(0),
      I2 => w_Row_Count(1),
      I3 => w_Row_Count(3),
      I4 => w_Row_Count(2),
      I5 => w_Row_Count(4),
      O => \o_Row_Count[5]_i_1__0_n_0\
    );
\o_Row_Count[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => w_Row_Count(6),
      I1 => \o_Row_Count[8]_i_2__1_n_0\,
      O => \o_Row_Count[6]_i_1__1_n_0\
    );
\o_Row_Count[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => w_Row_Count(7),
      I1 => w_Row_Count(6),
      I2 => \o_Row_Count[8]_i_2__1_n_0\,
      O => \o_Row_Count[7]_i_1__1_n_0\
    );
\o_Row_Count[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => w_Row_Count(8),
      I1 => \o_Row_Count[8]_i_2__1_n_0\,
      I2 => w_Row_Count(7),
      I3 => w_Row_Count(6),
      O => \o_Row_Count[8]_i_1__1_n_0\
    );
\o_Row_Count[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => w_Row_Count(4),
      I1 => w_Row_Count(2),
      I2 => w_Row_Count(3),
      I3 => w_Row_Count(1),
      I4 => w_Row_Count(0),
      I5 => w_Row_Count(5),
      O => \o_Row_Count[8]_i_2__1_n_0\
    );
\o_Row_Count[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_Row_Count(5),
      I1 => w_Row_Count(4),
      O => \o_Row_Count[9]_i_10_n_0\
    );
\o_Row_Count[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_VSync_TP,
      I1 => w_VSync_0,
      O => SR(0)
    );
\o_Row_Count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \o_Row_Count[9]_i_4_n_0\,
      I1 => w_Col_Count(5),
      I2 => w_Col_Count(8),
      I3 => w_Col_Count(9),
      I4 => w_Col_Count(6),
      I5 => w_Col_Count(7),
      O => \^e\(0)
    );
\o_Row_Count[9]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666660666666"
    )
        port map (
      I0 => w_Row_Count(9),
      I1 => \o_Row_Count[9]_i_5__0_n_0\,
      I2 => \o_Row_Count[9]_i_6_n_0\,
      I3 => w_Row_Count(2),
      I4 => \o_Row_Count[9]_i_7_n_0\,
      I5 => \o_Row_Count[9]_i_8_n_0\,
      O => \o_Row_Count[9]_i_3__1_n_0\
    );
\o_Row_Count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => w_Col_Count(0),
      I1 => w_Col_Count(1),
      I2 => w_Col_Count(2),
      I3 => w_Col_Count(4),
      I4 => w_Col_Count(3),
      O => \o_Row_Count[9]_i_4_n_0\
    );
\o_Row_Count[9]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \o_Row_Count[9]_i_9_n_0\,
      I1 => w_Row_Count(7),
      I2 => w_Row_Count(6),
      I3 => w_Row_Count(5),
      I4 => w_Row_Count(8),
      O => \o_Row_Count[9]_i_5__0_n_0\
    );
\o_Row_Count[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_Row_Count(8),
      I1 => w_Row_Count(7),
      O => \o_Row_Count[9]_i_6_n_0\
    );
\o_Row_Count[9]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_Row_Count(0),
      I1 => w_Row_Count(1),
      O => \o_Row_Count[9]_i_7_n_0\
    );
\o_Row_Count[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF7FFFFFFF7"
    )
        port map (
      I0 => w_Row_Count(9),
      I1 => w_Row_Count(3),
      I2 => w_Row_Count(8),
      I3 => \o_Row_Count[9]_i_10_n_0\,
      I4 => w_Row_Count(6),
      I5 => w_Row_Count(7),
      O => \o_Row_Count[9]_i_8_n_0\
    );
\o_Row_Count[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => w_Row_Count(0),
      I1 => w_Row_Count(1),
      I2 => w_Row_Count(3),
      I3 => w_Row_Count(2),
      I4 => w_Row_Count(4),
      O => \o_Row_Count[9]_i_9_n_0\
    );
\o_Row_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[0]_i_1__0_n_0\,
      Q => w_Row_Count(0),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[1]_i_1__0_n_0\,
      Q => w_Row_Count(1),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[2]_i_1__1_n_0\,
      Q => w_Row_Count(2),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[3]_i_1__1_n_0\,
      Q => w_Row_Count(3),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[4]_i_1__1_n_0\,
      Q => w_Row_Count(4),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[5]_i_1__0_n_0\,
      Q => w_Row_Count(5),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[6]_i_1__1_n_0\,
      Q => w_Row_Count(6),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[7]_i_1__1_n_0\,
      Q => w_Row_Count(7),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[8]_i_1__1_n_0\,
      Q => w_Row_Count(8),
      R => \o_Row_Count_reg[0]_0\(0)
    );
\o_Row_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => \^e\(0),
      D => \o_Row_Count[9]_i_3__1_n_0\,
      Q => w_Row_Count(9),
      R => \o_Row_Count_reg[0]_0\(0)
    );
o_VSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => w_VSync_Start,
      Q => w_VSync,
      R => '0'
    );
\r_Blu_Video_reg[2]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888A8A8A888A"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_2_n_0\,
      I1 => \r_Blu_Video_reg[2]_srl2_i_3_n_0\,
      I2 => \o_Blu_Video_reg[2]\,
      I3 => \r_Blu_Video_reg[2]_srl2_i_5_n_0\,
      I4 => \o_Blu_Video_reg[2]_0\,
      I5 => \r_Blu_Video_reg[2]_srl2_i_7_n_0\,
      O => o_Blu_Video(0)
    );
\r_Blu_Video_reg[2]_srl2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5688FFFFFFFF5688"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => w_Row_Count(6),
      I5 => w_Col_Count(6),
      O => \r_Blu_Video_reg[2]_srl2_i_11_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5688000000005688"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => w_Row_Count(3),
      I5 => w_Col_Count(3),
      O => \r_Blu_Video_reg[2]_srl2_i_12_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_20_n_0\,
      I1 => w_Row_Count(9),
      I2 => w_Row_Count(3),
      I3 => w_Row_Count(6),
      I4 => w_Row_Count(2),
      O => \r_Blu_Video_reg[2]_srl2_i_13_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_Grn_Video_reg[2]_srl2_i_8_n_0\,
      I1 => w_Col_Count(2),
      I2 => \r_Blu_Video_reg[2]_srl2_i_21_n_0\,
      I3 => \r_Blu_Video_reg[2]_srl2_i_22_n_0\,
      I4 => w_Col_Count(3),
      I5 => \r_Blu_Video_reg[2]_srl2_i_23_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_14_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => w_Row_Count(4),
      I1 => w_Row_Count(8),
      I2 => w_Row_Count(7),
      I3 => w_Row_Count(6),
      I4 => \o_Row_Count[9]_i_7_n_0\,
      I5 => \r_Blu_Video_reg[2]_srl2_i_24_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_15_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080808000"
    )
        port map (
      I0 => w_Col_Count(2),
      I1 => w_Col_Count(9),
      I2 => \r_Blu_Video_reg[2]_srl2_i_25_n_0\,
      I3 => w_Col_Count(0),
      I4 => w_Col_Count(1),
      I5 => \r_Blu_Video_reg[2]_srl2_i_26_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_16_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440204021402"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => w_Col_Count(6),
      I2 => w_Col_Count(7),
      I3 => w_Col_Count(8),
      I4 => w_Col_Count(4),
      I5 => w_Col_Count(5),
      O => \r_Blu_Video_reg[2]_srl2_i_17_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007A001F"
    )
        port map (
      I0 => w_Col_Count(5),
      I1 => w_Col_Count(4),
      I2 => w_Col_Count(6),
      I3 => w_Col_Count(8),
      I4 => w_Col_Count(7),
      I5 => w_Col_Count(9),
      O => \r_Blu_Video_reg[2]_srl2_i_18_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => w_Row_Count(8),
      I1 => w_Row_Count(5),
      I2 => w_Row_Count(6),
      I3 => w_Row_Count(7),
      O => \r_Blu_Video_reg[2]_srl2_i_19_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C55CD0C4C15CD0C0"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => \r_Blu_Video_reg[2]_srl2_i_9_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_2_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => w_Row_Count(7),
      I1 => w_Row_Count(8),
      I2 => w_Row_Count(5),
      I3 => w_Row_Count(4),
      I4 => w_Row_Count(0),
      I5 => w_Row_Count(1),
      O => \r_Blu_Video_reg[2]_srl2_i_20_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_Col_Count(6),
      I1 => w_Col_Count(7),
      O => \r_Blu_Video_reg[2]_srl2_i_21_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_Col_Count(4),
      I1 => w_Col_Count(5),
      O => \r_Blu_Video_reg[2]_srl2_i_22_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_Col_Count(8),
      I1 => w_Col_Count(9),
      O => \r_Blu_Video_reg[2]_srl2_i_23_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => w_Row_Count(3),
      I1 => w_Row_Count(2),
      O => \r_Blu_Video_reg[2]_srl2_i_24_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_Col_Count(3),
      I1 => w_Col_Count(4),
      O => \r_Blu_Video_reg[2]_srl2_i_25_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => w_Col_Count(5),
      I1 => w_Col_Count(6),
      O => \r_Blu_Video_reg[2]_srl2_i_26_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555D5"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_1_0\,
      I1 => \r_Blu_Video_reg[2]_srl2_i_11_n_0\,
      I2 => \o_Blu_Video_reg[2]\,
      I3 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I4 => \r_Blu_Video_reg[2]_srl2_i_12_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_3_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I1 => \r_Blu_Video_reg[2]_srl2_i_13_n_0\,
      I2 => \r_Blu_Video_reg[2]_srl2_i_14_n_0\,
      I3 => \r_Blu_Video_reg[2]_srl2_i_15_n_0\,
      I4 => \r_Blu_Video_reg[2]_srl2_i_16_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_5_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_17_n_0\,
      I1 => \r_Blu_Video_reg[2]_srl2_i_18_n_0\,
      I2 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_7_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8FFFF"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => w_Col_Count(8),
      I2 => w_Col_Count(7),
      I3 => w_Row_Count(9),
      I4 => \r_Blu_Video_reg[2]_srl2_i_19_n_0\,
      O => \r_Blu_Video_reg[2]_srl2_i_8_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_Col_Count(5),
      I1 => w_Row_Count(5),
      O => \r_Blu_Video_reg[2]_srl2_i_9_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F4F"
    )
        port map (
      I0 => \r_Grn_Video_reg[2]_srl2_i_2_n_0\,
      I1 => \o_Grn_Video_reg[2]\,
      I2 => \o_Grn_Video_reg[2]_0\,
      I3 => \r_Grn_Video_reg[2]_srl2_i_5_n_0\,
      I4 => \r_Grn_Video_reg[2]_srl2_i_6_n_0\,
      I5 => \r_Grn_Video_reg[2]_srl2_i_7_n_0\,
      O => o_Grn_Video(0)
    );
\r_Grn_Video_reg[2]_srl2_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_Col_Count(4),
      I1 => w_Row_Count(4),
      O => \r_Grn_Video_reg[2]_srl2_i_10_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14055415"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => w_Col_Count(6),
      I2 => w_Col_Count(7),
      I3 => w_Col_Count(8),
      I4 => w_Col_Count(5),
      O => \r_Grn_Video_reg[2]_srl2_i_2_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFFFFFFFFF"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_16_n_0\,
      I1 => \r_Blu_Video_reg[2]_srl2_i_15_n_0\,
      I2 => \r_Grn_Video_reg[2]_srl2_i_8_n_0\,
      I3 => w_Col_Count(2),
      I4 => \r_Grn_Video_reg[2]_srl2_i_9_n_0\,
      I5 => \r_Blu_Video_reg[2]_srl2_i_13_n_0\,
      O => \r_Grn_Video_reg[2]_srl2_i_5_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \r_Grn_Video_reg[2]_srl2_i_10_n_0\,
      O => \r_Grn_Video_reg[2]_srl2_i_6_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000F909F0F0F0FF"
    )
        port map (
      I0 => w_Row_Count(5),
      I1 => w_Col_Count(5),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(2),
      O => \r_Grn_Video_reg[2]_srl2_i_7_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_Col_Count(0),
      I1 => w_Col_Count(1),
      O => \r_Grn_Video_reg[2]_srl2_i_8_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => w_Col_Count(8),
      I1 => w_Col_Count(9),
      I2 => w_Col_Count(3),
      I3 => w_Col_Count(4),
      I4 => w_Col_Count(5),
      I5 => \r_Blu_Video_reg[2]_srl2_i_21_n_0\,
      O => \r_Grn_Video_reg[2]_srl2_i_9_n_0\
    );
\r_Red_Video_reg[2]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF101F0000"
    )
        port map (
      I0 => Q(0),
      I1 => \r_Blu_Video_reg[2]_srl2_i_5_n_0\,
      I2 => Q(1),
      I3 => \r_Red_Video_reg[2]_srl2_i_2_n_0\,
      I4 => \o_Red_Video_reg[2]\,
      I5 => \r_Red_Video_reg[2]_srl2_i_4_n_0\,
      O => o_Red_Video(0)
    );
\r_Red_Video_reg[2]_srl2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBEAEAFB"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I1 => Q(0),
      I2 => \r_Red_Video_reg[2]_srl2_i_5_n_0\,
      I3 => w_Row_Count(5),
      I4 => w_Col_Count(5),
      O => \r_Red_Video_reg[2]_srl2_i_2_n_0\
    );
\r_Red_Video_reg[2]_srl2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Blu_Video_reg[2]_srl2_i_8_n_0\,
      I1 => \r_Red_Video_reg[2]_srl2_i_6_n_0\,
      O => \r_Red_Video_reg[2]_srl2_i_4_n_0\
    );
\r_Red_Video_reg[2]_srl2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => w_Col_Count(6),
      I2 => w_Col_Count(7),
      I3 => w_Col_Count(8),
      O => \r_Red_Video_reg[2]_srl2_i_5_n_0\
    );
\r_Red_Video_reg[2]_srl2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C0CFCFF7CCCFCFF"
    )
        port map (
      I0 => \r_Grn_Video_reg[2]_srl2_i_10_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \r_Blu_Video_reg[2]_srl2_i_9_n_0\,
      O => \r_Red_Video_reg[2]_srl2_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0 is
  port (
    w_VSync : out STD_LOGIC;
    \o_Col_Count_reg[4]_0\ : out STD_LOGIC;
    \o_Row_Count_reg[7]_0\ : out STD_LOGIC;
    o_HSync_reg_0 : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    w_VSync_TP : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0 : entity is "VGA_Sync_To_Count";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0 is
  signal \o_Col_Count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_Col_Count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \o_Col_Count[9]_i_3_n_0\ : STD_LOGIC;
  signal o_HSync_i_2_n_0 : STD_LOGIC;
  signal o_HSync_reg_n_0 : STD_LOGIC;
  signal o_Row_Count : STD_LOGIC;
  signal \o_Row_Count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_Row_Count[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_Row_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_Row_Count[8]_i_2_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_3_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_5_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_6__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count[9]_i_7__0_n_0\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[8]\ : STD_LOGIC;
  signal \o_Row_Count_reg_n_0_[9]\ : STD_LOGIC;
  signal o_VSync_i_2_n_0 : STD_LOGIC;
  signal w_Col_Count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^w_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Col_Count[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_Col_Count[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_Col_Count[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_Col_Count[4]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_Col_Count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_Col_Count[7]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_Col_Count[8]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_Col_Count[9]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_Col_Count[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_HSync_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_HSync_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_Row_Count[1]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_Row_Count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_Row_Count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_Row_Count[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_Row_Count[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_Row_Count[8]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_4__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_Row_Count[9]_i_7__0\ : label is "soft_lutpair0";
begin
  w_VSync <= \^w_vsync\;
\o_Col_Count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_Col_Count(0),
      O => \o_Col_Count[0]_i_1__0_n_0\
    );
\o_Col_Count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_Col_Count(0),
      I1 => w_Col_Count(1),
      O => \o_Col_Count[1]_i_1__0_n_0\
    );
\o_Col_Count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_Col_Count(2),
      I1 => w_Col_Count(0),
      I2 => w_Col_Count(1),
      O => \o_Col_Count[2]_i_1__0_n_0\
    );
\o_Col_Count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => w_Col_Count(1),
      I1 => w_Col_Count(0),
      I2 => w_Col_Count(2),
      I3 => w_Col_Count(3),
      O => \o_Col_Count[3]_i_1__0_n_0\
    );
\o_Col_Count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_Col_Count(4),
      I1 => w_Col_Count(1),
      I2 => w_Col_Count(0),
      I3 => w_Col_Count(2),
      I4 => w_Col_Count(3),
      O => \o_Col_Count[4]_i_1__0_n_0\
    );
\o_Col_Count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_Col_Count(5),
      I1 => w_Col_Count(3),
      I2 => w_Col_Count(2),
      I3 => w_Col_Count(0),
      I4 => w_Col_Count(1),
      I5 => w_Col_Count(4),
      O => \o_Col_Count[5]_i_1__1_n_0\
    );
\o_Col_Count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => w_Col_Count(6),
      I1 => w_Col_Count(4),
      I2 => w_Col_Count(5),
      I3 => \o_Col_Count[8]_i_2__0_n_0\,
      O => \o_Col_Count[6]_i_1_n_0\
    );
\o_Col_Count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_Col_Count(7),
      I1 => w_Col_Count(6),
      I2 => w_Col_Count(5),
      I3 => w_Col_Count(4),
      I4 => \o_Col_Count[8]_i_2__0_n_0\,
      O => \o_Col_Count[7]_i_1__0_n_0\
    );
\o_Col_Count[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_Col_Count(8),
      I1 => \o_Col_Count[8]_i_2__0_n_0\,
      I2 => w_Col_Count(4),
      I3 => w_Col_Count(5),
      I4 => w_Col_Count(6),
      I5 => w_Col_Count(7),
      O => \o_Col_Count[8]_i_1__0_n_0\
    );
\o_Col_Count[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => w_Col_Count(3),
      I1 => w_Col_Count(2),
      I2 => w_Col_Count(0),
      I3 => w_Col_Count(1),
      O => \o_Col_Count[8]_i_2__0_n_0\
    );
\o_Col_Count[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^w_vsync\,
      I1 => w_VSync_TP,
      I2 => o_Row_Count,
      O => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count[9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => \o_Col_Count[9]_i_3_n_0\,
      I2 => w_Col_Count(8),
      O => \o_Col_Count[9]_i_2__0_n_0\
    );
\o_Col_Count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => w_Col_Count(7),
      I1 => w_Col_Count(6),
      I2 => w_Col_Count(5),
      I3 => w_Col_Count(4),
      I4 => \o_Col_Count[8]_i_2__0_n_0\,
      O => \o_Col_Count[9]_i_3_n_0\
    );
\o_Col_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[0]_i_1__0_n_0\,
      Q => w_Col_Count(0),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[1]_i_1__0_n_0\,
      Q => w_Col_Count(1),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[2]_i_1__0_n_0\,
      Q => w_Col_Count(2),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[3]_i_1__0_n_0\,
      Q => w_Col_Count(3),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[4]_i_1__0_n_0\,
      Q => w_Col_Count(4),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[5]_i_1__1_n_0\,
      Q => w_Col_Count(5),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[6]_i_1_n_0\,
      Q => w_Col_Count(6),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[7]_i_1__0_n_0\,
      Q => w_Col_Count(7),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[8]_i_1__0_n_0\,
      Q => w_Col_Count(8),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
\o_Col_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \o_Col_Count[9]_i_2__0_n_0\,
      Q => w_Col_Count(9),
      R => \o_Col_Count[9]_i_1__0_n_0\
    );
o_HSync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => o_HSync_i_2_n_0,
      I1 => w_Col_Count(4),
      I2 => w_Col_Count(5),
      I3 => w_Col_Count(6),
      O => \o_Col_Count_reg[4]_0\
    );
o_HSync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => w_Col_Count(9),
      I1 => o_HSync_reg_n_0,
      I2 => w_Col_Count(7),
      I3 => w_Col_Count(8),
      O => o_HSync_i_2_n_0
    );
o_HSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => o_HSync_reg_0,
      Q => o_HSync_reg_n_0,
      R => '0'
    );
\o_Row_Count[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[0]\,
      I1 => \o_Row_Count[3]_i_2_n_0\,
      O => \o_Row_Count[0]_i_1__1_n_0\
    );
\o_Row_Count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[0]\,
      I1 => \o_Row_Count_reg_n_0_[1]\,
      O => \o_Row_Count[1]_i_1__1_n_0\
    );
\o_Row_Count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08787878"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[0]\,
      I1 => \o_Row_Count_reg_n_0_[1]\,
      I2 => \o_Row_Count_reg_n_0_[2]\,
      I3 => \o_Row_Count[3]_i_3_n_0\,
      I4 => \o_Row_Count[9]_i_7__0_n_0\,
      O => \o_Row_Count[2]_i_1_n_0\
    );
\o_Row_Count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1444C44414444444"
    )
        port map (
      I0 => \o_Row_Count[3]_i_2_n_0\,
      I1 => \o_Row_Count_reg_n_0_[3]\,
      I2 => \o_Row_Count_reg_n_0_[2]\,
      I3 => \o_Row_Count_reg_n_0_[0]\,
      I4 => \o_Row_Count_reg_n_0_[1]\,
      I5 => \o_Row_Count[3]_i_3_n_0\,
      O => \o_Row_Count[3]_i_1_n_0\
    );
\o_Row_Count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055040000"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[1]\,
      I1 => \o_Row_Count_reg_n_0_[3]\,
      I2 => \o_Row_Count_reg_n_0_[4]\,
      I3 => \o_Row_Count_reg_n_0_[5]\,
      I4 => \o_Row_Count_reg_n_0_[9]\,
      I5 => \o_Row_Count[9]_i_6__0_n_0\,
      O => \o_Row_Count[3]_i_2_n_0\
    );
\o_Row_Count[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[9]\,
      I1 => \o_Row_Count_reg_n_0_[4]\,
      I2 => \o_Row_Count_reg_n_0_[8]\,
      I3 => \o_Row_Count_reg_n_0_[5]\,
      I4 => \o_Row_Count_reg_n_0_[6]\,
      I5 => \o_Row_Count_reg_n_0_[7]\,
      O => \o_Row_Count[3]_i_3_n_0\
    );
\o_Row_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[4]\,
      I1 => \o_Row_Count_reg_n_0_[3]\,
      I2 => \o_Row_Count_reg_n_0_[2]\,
      I3 => \o_Row_Count_reg_n_0_[1]\,
      I4 => \o_Row_Count_reg_n_0_[0]\,
      O => \o_Row_Count[4]_i_1_n_0\
    );
\o_Row_Count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[5]\,
      I1 => \o_Row_Count_reg_n_0_[4]\,
      I2 => \o_Row_Count_reg_n_0_[3]\,
      I3 => \o_Row_Count_reg_n_0_[2]\,
      I4 => \o_Row_Count_reg_n_0_[1]\,
      I5 => \o_Row_Count_reg_n_0_[0]\,
      O => \o_Row_Count[5]_i_1__1_n_0\
    );
\o_Row_Count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[6]\,
      I1 => \o_Row_Count[8]_i_2_n_0\,
      I2 => \o_Row_Count_reg_n_0_[5]\,
      O => \o_Row_Count[6]_i_1_n_0\
    );
\o_Row_Count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[7]\,
      I1 => \o_Row_Count_reg_n_0_[5]\,
      I2 => \o_Row_Count[8]_i_2_n_0\,
      I3 => \o_Row_Count_reg_n_0_[6]\,
      O => \o_Row_Count[7]_i_1_n_0\
    );
\o_Row_Count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[6]\,
      I1 => \o_Row_Count[8]_i_2_n_0\,
      I2 => \o_Row_Count_reg_n_0_[5]\,
      I3 => \o_Row_Count_reg_n_0_[7]\,
      I4 => \o_Row_Count_reg_n_0_[8]\,
      O => \o_Row_Count[8]_i_1_n_0\
    );
\o_Row_Count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[0]\,
      I1 => \o_Row_Count_reg_n_0_[1]\,
      I2 => \o_Row_Count_reg_n_0_[2]\,
      I3 => \o_Row_Count_reg_n_0_[3]\,
      I4 => \o_Row_Count_reg_n_0_[4]\,
      O => \o_Row_Count[8]_i_2_n_0\
    );
\o_Row_Count[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => w_Col_Count(7),
      I1 => w_Col_Count(9),
      I2 => w_Col_Count(8),
      I3 => w_Col_Count(5),
      I4 => w_Col_Count(6),
      I5 => \o_Row_Count[9]_i_4__0_n_0\,
      O => o_Row_Count
    );
\o_Row_Count[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6266"
    )
        port map (
      I0 => \o_Row_Count[9]_i_5_n_0\,
      I1 => \o_Row_Count_reg_n_0_[9]\,
      I2 => \o_Row_Count[9]_i_6__0_n_0\,
      I3 => \o_Row_Count[9]_i_7__0_n_0\,
      O => \o_Row_Count[9]_i_3_n_0\
    );
\o_Row_Count[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => w_Col_Count(4),
      I1 => w_Col_Count(1),
      I2 => w_Col_Count(0),
      I3 => w_Col_Count(2),
      I4 => w_Col_Count(3),
      O => \o_Row_Count[9]_i_4__0_n_0\
    );
\o_Row_Count[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[8]\,
      I1 => \o_Row_Count_reg_n_0_[7]\,
      I2 => \o_Row_Count_reg_n_0_[5]\,
      I3 => \o_Row_Count[8]_i_2_n_0\,
      I4 => \o_Row_Count_reg_n_0_[6]\,
      O => \o_Row_Count[9]_i_5_n_0\
    );
\o_Row_Count[9]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[4]\,
      I1 => \o_Row_Count_reg_n_0_[8]\,
      I2 => \o_Row_Count_reg_n_0_[5]\,
      I3 => \o_Row_Count_reg_n_0_[6]\,
      I4 => \o_Row_Count_reg_n_0_[7]\,
      I5 => \o_Row_Count_reg_n_0_[2]\,
      O => \o_Row_Count[9]_i_6__0_n_0\
    );
\o_Row_Count[9]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004544"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[0]\,
      I1 => \o_Row_Count_reg_n_0_[5]\,
      I2 => \o_Row_Count_reg_n_0_[4]\,
      I3 => \o_Row_Count_reg_n_0_[3]\,
      I4 => \o_Row_Count_reg_n_0_[1]\,
      O => \o_Row_Count[9]_i_7__0_n_0\
    );
\o_Row_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[0]_i_1__1_n_0\,
      Q => \o_Row_Count_reg_n_0_[0]\,
      R => SR(0)
    );
\o_Row_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[1]_i_1__1_n_0\,
      Q => \o_Row_Count_reg_n_0_[1]\,
      R => SR(0)
    );
\o_Row_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[2]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[2]\,
      R => SR(0)
    );
\o_Row_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[3]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[3]\,
      R => SR(0)
    );
\o_Row_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[4]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[4]\,
      R => SR(0)
    );
\o_Row_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[5]_i_1__1_n_0\,
      Q => \o_Row_Count_reg_n_0_[5]\,
      R => SR(0)
    );
\o_Row_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[6]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[6]\,
      R => SR(0)
    );
\o_Row_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[7]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[7]\,
      R => SR(0)
    );
\o_Row_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[8]_i_1_n_0\,
      Q => \o_Row_Count_reg_n_0_[8]\,
      R => SR(0)
    );
\o_Row_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => o_Row_Count,
      D => \o_Row_Count[9]_i_3_n_0\,
      Q => \o_Row_Count_reg_n_0_[9]\,
      R => SR(0)
    );
\o_VSync_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[7]\,
      I1 => \o_Row_Count_reg_n_0_[8]\,
      I2 => \^w_vsync\,
      I3 => \o_Row_Count_reg_n_0_[9]\,
      I4 => o_VSync_i_2_n_0,
      O => \o_Row_Count_reg[7]_0\
    );
o_VSync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \o_Row_Count_reg_n_0_[5]\,
      I1 => \o_Row_Count_reg_n_0_[6]\,
      I2 => \o_Row_Count_reg_n_0_[4]\,
      I3 => \o_Row_Count_reg_n_0_[2]\,
      I4 => \o_Row_Count_reg_n_0_[3]\,
      I5 => \o_Row_Count_reg_n_0_[1]\,
      O => o_VSync_i_2_n_0
    );
o_VSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => w_VSync_TP,
      Q => \^w_vsync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch is
  port (
    o_VGA_RGB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    w_VSync : out STD_LOGIC;
    o_VGA_HSync : out STD_LOGIC;
    o_VGA_VSync : out STD_LOGIC;
    \r_TEST_PATTERN_reg[3]\ : out STD_LOGIC;
    \r_TEST_PATTERN_reg[1]\ : out STD_LOGIC;
    \r_TEST_PATTERN_reg[1]_0\ : out STD_LOGIC;
    \r_TEST_PATTERN_reg[1]_1\ : out STD_LOGIC;
    \r_TEST_PATTERN_reg[4]\ : out STD_LOGIC;
    \r_TEST_PATTERN_reg[3]_0\ : out STD_LOGIC;
    o_HSync_reg_0 : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    o_Blu_Video : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_Grn_Video : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_Red_Video : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_VSync_TP : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch : entity is "VGA_Sync_Porch";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch is
  signal UUT_n_1 : STD_LOGIC;
  signal UUT_n_2 : STD_LOGIC;
  signal \r_Blu_Video_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \r_Grn_Video_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \r_Red_Video_reg[2]_srl2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \r_Blu_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Blu_Video_reg ";
  attribute srl_name : string;
  attribute srl_name of \r_Blu_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Blu_Video_reg[2]_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Blu_Video_reg[2]_srl2_i_6\ : label is "soft_lutpair11";
  attribute srl_bus_name of \r_Grn_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Grn_Video_reg ";
  attribute srl_name of \r_Grn_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Grn_Video_reg[2]_srl2 ";
  attribute SOFT_HLUTNM of \r_Grn_Video_reg[2]_srl2_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_Grn_Video_reg[2]_srl2_i_4\ : label is "soft_lutpair12";
  attribute srl_bus_name of \r_Red_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Red_Video_reg ";
  attribute srl_name of \r_Red_Video_reg[2]_srl2\ : label is "\U0/VGA_Sync_Porch_Inst/r_Red_Video_reg[2]_srl2 ";
  attribute SOFT_HLUTNM of \r_Red_Video_reg[2]_srl2_i_3\ : label is "soft_lutpair12";
begin
UUT: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count_0
     port map (
      SR(0) => SR(0),
      i_VGA_Clock => i_VGA_Clock,
      \o_Col_Count_reg[4]_0\ => UUT_n_1,
      o_HSync_reg_0 => o_HSync_reg_0,
      \o_Row_Count_reg[7]_0\ => UUT_n_2,
      w_VSync => w_VSync,
      w_VSync_TP => w_VSync_TP
    );
\o_Blu_Video_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \r_Blu_Video_reg[2]_srl2_n_0\,
      Q => o_VGA_RGB(0),
      R => '0'
    );
\o_Grn_Video_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \r_Grn_Video_reg[2]_srl2_n_0\,
      Q => o_VGA_RGB(1),
      R => '0'
    );
o_HSync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_VGA_Clock,
      CE => '1',
      D => UUT_n_1,
      Q => o_VGA_HSync,
      R => '0'
    );
\o_Red_Video_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \r_Red_Video_reg[2]_srl2_n_0\,
      Q => o_VGA_RGB(2),
      R => '0'
    );
o_VSync_reg: unisim.vcomponents.FDRE
     port map (
      C => i_VGA_Clock,
      CE => '1',
      D => UUT_n_2,
      Q => o_VGA_VSync,
      R => '0'
    );
\r_Blu_Video_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => i_VGA_Clock,
      D => o_Blu_Video(0),
      Q => \r_Blu_Video_reg[2]_srl2_n_0\
    );
\r_Blu_Video_reg[2]_srl2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      O => \r_TEST_PATTERN_reg[3]\
    );
\r_Blu_Video_reg[2]_srl2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E968"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      O => \r_TEST_PATTERN_reg[1]\
    );
\r_Blu_Video_reg[2]_srl2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"52A8"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => \r_TEST_PATTERN_reg[1]_0\
    );
\r_Grn_Video_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => i_VGA_Clock,
      D => o_Grn_Video(0),
      Q => \r_Grn_Video_reg[2]_srl2_n_0\
    );
\r_Grn_Video_reg[2]_srl2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A54"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      O => \r_TEST_PATTERN_reg[1]_1\
    );
\r_Grn_Video_reg[2]_srl2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F41"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => \r_TEST_PATTERN_reg[4]\
    );
\r_Red_Video_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => i_VGA_Clock,
      D => o_Red_Video(0),
      Q => \r_Red_Video_reg[2]_srl2_n_0\
    );
\r_Red_Video_reg[2]_srl2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \r_TEST_PATTERN_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen is
  port (
    i_VGA_Clock_0 : out STD_LOGIC;
    w_VSync : out STD_LOGIC;
    w_VSync_TP : out STD_LOGIC;
    o_Blu_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_Red_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_Grn_Video : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_HSync : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    w_VSync_Start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Blu_Video_reg[2]\ : in STD_LOGIC;
    \o_Blu_Video_reg[2]_0\ : in STD_LOGIC;
    \o_Red_Video_reg[2]\ : in STD_LOGIC;
    \o_Grn_Video_reg[2]\ : in STD_LOGIC;
    \o_Grn_Video_reg[2]_0\ : in STD_LOGIC;
    w_VSync_0 : in STD_LOGIC;
    \r_Blu_Video_reg[2]_srl2_i_1\ : in STD_LOGIC;
    \o_Row_Count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \o_Col_Count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen : entity is "VGA_Test_Pattern_Gen";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen is
  signal \^w_vsync\ : STD_LOGIC;
  signal \^w_vsync_tp\ : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of o_HSync_reg_srl2 : label is "\U0/VGA_Test_Pattern_Gen_Inst/o_HSync_reg_srl2 ";
begin
  w_VSync <= \^w_vsync\;
  w_VSync_TP <= \^w_vsync_tp\;
UUT: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_To_Count
     port map (
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      i_VGA_Clock => i_VGA_Clock,
      o_Blu_Video(0) => o_Blu_Video(0),
      \o_Blu_Video_reg[2]\ => \o_Blu_Video_reg[2]\,
      \o_Blu_Video_reg[2]_0\ => \o_Blu_Video_reg[2]_0\,
      \o_Col_Count_reg[0]_0\(0) => \o_Col_Count_reg[0]\(0),
      o_Grn_Video(0) => o_Grn_Video(0),
      \o_Grn_Video_reg[2]\ => \o_Grn_Video_reg[2]\,
      \o_Grn_Video_reg[2]_0\ => \o_Grn_Video_reg[2]_0\,
      o_Red_Video(0) => o_Red_Video(0),
      \o_Red_Video_reg[2]\ => \o_Red_Video_reg[2]\,
      \o_Row_Count_reg[0]_0\(0) => \o_Row_Count_reg[0]\(0),
      \r_Blu_Video_reg[2]_srl2_i_1_0\ => \r_Blu_Video_reg[2]_srl2_i_1\,
      w_VSync => \^w_vsync\,
      w_VSync_0 => w_VSync_0,
      w_VSync_Start => w_VSync_Start,
      w_VSync_TP => \^w_vsync_tp\
    );
o_HSync_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => i_VGA_Clock,
      D => i_HSync,
      Q => i_VGA_Clock_0
    );
o_VSync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_VGA_Clock,
      CE => '1',
      D => \^w_vsync\,
      Q => \^w_vsync_tp\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top is
  port (
    o_VGA_RGB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_VGA_HSync : out STD_LOGIC;
    o_VGA_VSync : out STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    i_Clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top : entity is "VGA_Testing_Top";
end rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top is
  signal \UUT/o_Row_Count\ : STD_LOGIC;
  signal \UUT/w_Frame_Start\ : STD_LOGIC;
  signal \UUT/w_Frame_Start_0\ : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_10 : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_11 : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_6 : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_7 : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_8 : STD_LOGIC;
  signal VGA_Sync_Porch_Inst_n_9 : STD_LOGIC;
  signal VGA_Sync_Pulses_Inst_n_0 : STD_LOGIC;
  signal VGA_Test_Pattern_Gen_Inst_n_0 : STD_LOGIC;
  signal i_HSync : STD_LOGIC;
  signal o_Blu_Video : STD_LOGIC_VECTOR ( 2 to 2 );
  signal o_Grn_Video : STD_LOGIC_VECTOR ( 2 to 2 );
  signal o_Red_Video : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_CNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_CNT0_carry__0_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__0_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__1_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__2_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__3_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__4_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_0\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_1\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_4\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__5_n_7\ : STD_LOGIC;
  signal \r_CNT0_carry__6_n_2\ : STD_LOGIC;
  signal \r_CNT0_carry__6_n_3\ : STD_LOGIC;
  signal \r_CNT0_carry__6_n_5\ : STD_LOGIC;
  signal \r_CNT0_carry__6_n_6\ : STD_LOGIC;
  signal \r_CNT0_carry__6_n_7\ : STD_LOGIC;
  signal r_CNT0_carry_n_0 : STD_LOGIC;
  signal r_CNT0_carry_n_1 : STD_LOGIC;
  signal r_CNT0_carry_n_2 : STD_LOGIC;
  signal r_CNT0_carry_n_3 : STD_LOGIC;
  signal r_CNT0_carry_n_4 : STD_LOGIC;
  signal r_CNT0_carry_n_5 : STD_LOGIC;
  signal r_CNT0_carry_n_6 : STD_LOGIC;
  signal r_CNT0_carry_n_7 : STD_LOGIC;
  signal \r_CNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_2_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_5_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_6_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_7_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_8_n_0\ : STD_LOGIC;
  signal \r_CNT[31]_i_9_n_0\ : STD_LOGIC;
  signal \r_TEST_PATTERN_reg_n_0_[0]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_VSync : STD_LOGIC;
  signal w_VSync_1 : STD_LOGIC;
  signal w_VSync_Start : STD_LOGIC;
  signal w_VSync_TP : STD_LOGIC;
  signal \NLW_r_CNT0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_CNT0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of r_CNT0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \r_CNT0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_CNT[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_CNT[31]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_TEST_PATTERN[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_TEST_PATTERN[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_TEST_PATTERN[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_TEST_PATTERN[4]_i_1\ : label is "soft_lutpair41";
begin
VGA_Sync_Porch_Inst: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Porch
     port map (
      Q(3 downto 0) => sel0(3 downto 0),
      SR(0) => \UUT/w_Frame_Start_0\,
      i_VGA_Clock => i_VGA_Clock,
      o_Blu_Video(0) => o_Blu_Video(2),
      o_Grn_Video(0) => o_Grn_Video(2),
      o_HSync_reg_0 => VGA_Test_Pattern_Gen_Inst_n_0,
      o_Red_Video(0) => o_Red_Video(2),
      o_VGA_HSync => o_VGA_HSync,
      o_VGA_RGB(2 downto 0) => o_VGA_RGB(2 downto 0),
      o_VGA_VSync => o_VGA_VSync,
      \r_TEST_PATTERN_reg[1]\ => VGA_Sync_Porch_Inst_n_7,
      \r_TEST_PATTERN_reg[1]_0\ => VGA_Sync_Porch_Inst_n_8,
      \r_TEST_PATTERN_reg[1]_1\ => VGA_Sync_Porch_Inst_n_9,
      \r_TEST_PATTERN_reg[3]\ => VGA_Sync_Porch_Inst_n_6,
      \r_TEST_PATTERN_reg[3]_0\ => VGA_Sync_Porch_Inst_n_11,
      \r_TEST_PATTERN_reg[4]\ => VGA_Sync_Porch_Inst_n_10,
      w_VSync => w_VSync,
      w_VSync_TP => w_VSync_TP
    );
VGA_Sync_Pulses_Inst: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Sync_Pulses
     port map (
      E(0) => \UUT/o_Row_Count\,
      SR(0) => VGA_Sync_Pulses_Inst_n_0,
      i_HSync => i_HSync,
      i_VGA_Clock => i_VGA_Clock,
      \o_Row_Count_reg[7]_0\(0) => \UUT/w_Frame_Start\,
      w_VSync => w_VSync_1,
      w_VSync_Start => w_VSync_Start
    );
VGA_Test_Pattern_Gen_Inst: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Test_Pattern_Gen
     port map (
      E(0) => \UUT/o_Row_Count\,
      Q(3 downto 0) => sel0(3 downto 0),
      SR(0) => \UUT/w_Frame_Start_0\,
      i_HSync => i_HSync,
      i_VGA_Clock => i_VGA_Clock,
      i_VGA_Clock_0 => VGA_Test_Pattern_Gen_Inst_n_0,
      o_Blu_Video(0) => o_Blu_Video(2),
      \o_Blu_Video_reg[2]\ => VGA_Sync_Porch_Inst_n_7,
      \o_Blu_Video_reg[2]_0\ => VGA_Sync_Porch_Inst_n_8,
      \o_Col_Count_reg[0]\(0) => VGA_Sync_Pulses_Inst_n_0,
      o_Grn_Video(0) => o_Grn_Video(2),
      \o_Grn_Video_reg[2]\ => VGA_Sync_Porch_Inst_n_9,
      \o_Grn_Video_reg[2]_0\ => VGA_Sync_Porch_Inst_n_10,
      o_Red_Video(0) => o_Red_Video(2),
      \o_Red_Video_reg[2]\ => VGA_Sync_Porch_Inst_n_11,
      \o_Row_Count_reg[0]\(0) => \UUT/w_Frame_Start\,
      \r_Blu_Video_reg[2]_srl2_i_1\ => VGA_Sync_Porch_Inst_n_6,
      w_VSync => w_VSync_1,
      w_VSync_0 => w_VSync,
      w_VSync_Start => w_VSync_Start,
      w_VSync_TP => w_VSync_TP
    );
r_CNT0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_CNT0_carry_n_0,
      CO(2) => r_CNT0_carry_n_1,
      CO(1) => r_CNT0_carry_n_2,
      CO(0) => r_CNT0_carry_n_3,
      CYINIT => r_CNT(0),
      DI(3 downto 0) => B"0000",
      O(3) => r_CNT0_carry_n_4,
      O(2) => r_CNT0_carry_n_5,
      O(1) => r_CNT0_carry_n_6,
      O(0) => r_CNT0_carry_n_7,
      S(3 downto 0) => r_CNT(4 downto 1)
    );
\r_CNT0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_CNT0_carry_n_0,
      CO(3) => \r_CNT0_carry__0_n_0\,
      CO(2) => \r_CNT0_carry__0_n_1\,
      CO(1) => \r_CNT0_carry__0_n_2\,
      CO(0) => \r_CNT0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__0_n_4\,
      O(2) => \r_CNT0_carry__0_n_5\,
      O(1) => \r_CNT0_carry__0_n_6\,
      O(0) => \r_CNT0_carry__0_n_7\,
      S(3 downto 0) => r_CNT(8 downto 5)
    );
\r_CNT0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__0_n_0\,
      CO(3) => \r_CNT0_carry__1_n_0\,
      CO(2) => \r_CNT0_carry__1_n_1\,
      CO(1) => \r_CNT0_carry__1_n_2\,
      CO(0) => \r_CNT0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__1_n_4\,
      O(2) => \r_CNT0_carry__1_n_5\,
      O(1) => \r_CNT0_carry__1_n_6\,
      O(0) => \r_CNT0_carry__1_n_7\,
      S(3 downto 0) => r_CNT(12 downto 9)
    );
\r_CNT0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__1_n_0\,
      CO(3) => \r_CNT0_carry__2_n_0\,
      CO(2) => \r_CNT0_carry__2_n_1\,
      CO(1) => \r_CNT0_carry__2_n_2\,
      CO(0) => \r_CNT0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__2_n_4\,
      O(2) => \r_CNT0_carry__2_n_5\,
      O(1) => \r_CNT0_carry__2_n_6\,
      O(0) => \r_CNT0_carry__2_n_7\,
      S(3 downto 0) => r_CNT(16 downto 13)
    );
\r_CNT0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__2_n_0\,
      CO(3) => \r_CNT0_carry__3_n_0\,
      CO(2) => \r_CNT0_carry__3_n_1\,
      CO(1) => \r_CNT0_carry__3_n_2\,
      CO(0) => \r_CNT0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__3_n_4\,
      O(2) => \r_CNT0_carry__3_n_5\,
      O(1) => \r_CNT0_carry__3_n_6\,
      O(0) => \r_CNT0_carry__3_n_7\,
      S(3 downto 0) => r_CNT(20 downto 17)
    );
\r_CNT0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__3_n_0\,
      CO(3) => \r_CNT0_carry__4_n_0\,
      CO(2) => \r_CNT0_carry__4_n_1\,
      CO(1) => \r_CNT0_carry__4_n_2\,
      CO(0) => \r_CNT0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__4_n_4\,
      O(2) => \r_CNT0_carry__4_n_5\,
      O(1) => \r_CNT0_carry__4_n_6\,
      O(0) => \r_CNT0_carry__4_n_7\,
      S(3 downto 0) => r_CNT(24 downto 21)
    );
\r_CNT0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__4_n_0\,
      CO(3) => \r_CNT0_carry__5_n_0\,
      CO(2) => \r_CNT0_carry__5_n_1\,
      CO(1) => \r_CNT0_carry__5_n_2\,
      CO(0) => \r_CNT0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CNT0_carry__5_n_4\,
      O(2) => \r_CNT0_carry__5_n_5\,
      O(1) => \r_CNT0_carry__5_n_6\,
      O(0) => \r_CNT0_carry__5_n_7\,
      S(3 downto 0) => r_CNT(28 downto 25)
    );
\r_CNT0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CNT0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_r_CNT0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_CNT0_carry__6_n_2\,
      CO(0) => \r_CNT0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_CNT0_carry__6_O_UNCONNECTED\(3),
      O(2) => \r_CNT0_carry__6_n_5\,
      O(1) => \r_CNT0_carry__6_n_6\,
      O(0) => \r_CNT0_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => r_CNT(31 downto 29)
    );
\r_CNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_CNT(0),
      O => \r_CNT[0]_i_1_n_0\
    );
\r_CNT[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \r_CNT[31]_i_2_n_0\,
      I1 => \r_CNT[31]_i_3_n_0\,
      I2 => \r_CNT[31]_i_4_n_0\,
      I3 => \r_CNT[31]_i_5_n_0\,
      O => \r_CNT[31]_i_1_n_0\
    );
\r_CNT[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => r_CNT(5),
      I1 => r_CNT(21),
      I2 => r_CNT(16),
      I3 => r_CNT(19),
      I4 => \r_CNT[31]_i_6_n_0\,
      O => \r_CNT[31]_i_2_n_0\
    );
\r_CNT[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => r_CNT(0),
      I1 => r_CNT(3),
      I2 => r_CNT(1),
      I3 => r_CNT(20),
      I4 => \r_CNT[31]_i_7_n_0\,
      O => \r_CNT[31]_i_3_n_0\
    );
\r_CNT[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => r_CNT(29),
      I1 => r_CNT(4),
      I2 => r_CNT(26),
      I3 => r_CNT(31),
      I4 => \r_CNT[31]_i_8_n_0\,
      O => \r_CNT[31]_i_4_n_0\
    );
\r_CNT[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => r_CNT(12),
      I1 => r_CNT(6),
      I2 => r_CNT(28),
      I3 => r_CNT(9),
      I4 => \r_CNT[31]_i_9_n_0\,
      O => \r_CNT[31]_i_5_n_0\
    );
\r_CNT[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => r_CNT(25),
      I1 => r_CNT(15),
      I2 => r_CNT(7),
      I3 => r_CNT(8),
      O => \r_CNT[31]_i_6_n_0\
    );
\r_CNT[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => r_CNT(18),
      I1 => r_CNT(27),
      I2 => r_CNT(23),
      I3 => r_CNT(22),
      O => \r_CNT[31]_i_7_n_0\
    );
\r_CNT[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => r_CNT(13),
      I1 => r_CNT(10),
      I2 => r_CNT(30),
      I3 => r_CNT(11),
      O => \r_CNT[31]_i_8_n_0\
    );
\r_CNT[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => r_CNT(14),
      I1 => r_CNT(24),
      I2 => r_CNT(2),
      I3 => r_CNT(17),
      O => \r_CNT[31]_i_9_n_0\
    );
\r_CNT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT[0]_i_1_n_0\,
      Q => r_CNT(0),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__1_n_6\,
      Q => r_CNT(10),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__1_n_5\,
      Q => r_CNT(11),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__1_n_4\,
      Q => r_CNT(12),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__2_n_7\,
      Q => r_CNT(13),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__2_n_6\,
      Q => r_CNT(14),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__2_n_5\,
      Q => r_CNT(15),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__2_n_4\,
      Q => r_CNT(16),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__3_n_7\,
      Q => r_CNT(17),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__3_n_6\,
      Q => r_CNT(18),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__3_n_5\,
      Q => r_CNT(19),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => r_CNT0_carry_n_7,
      Q => r_CNT(1),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__3_n_4\,
      Q => r_CNT(20),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__4_n_7\,
      Q => r_CNT(21),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__4_n_6\,
      Q => r_CNT(22),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__4_n_5\,
      Q => r_CNT(23),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__4_n_4\,
      Q => r_CNT(24),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__5_n_7\,
      Q => r_CNT(25),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__5_n_6\,
      Q => r_CNT(26),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__5_n_5\,
      Q => r_CNT(27),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__5_n_4\,
      Q => r_CNT(28),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__6_n_7\,
      Q => r_CNT(29),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => r_CNT0_carry_n_6,
      Q => r_CNT(2),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__6_n_6\,
      Q => r_CNT(30),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__6_n_5\,
      Q => r_CNT(31),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => r_CNT0_carry_n_5,
      Q => r_CNT(3),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => r_CNT0_carry_n_4,
      Q => r_CNT(4),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__0_n_7\,
      Q => r_CNT(5),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__0_n_6\,
      Q => r_CNT(6),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__0_n_5\,
      Q => r_CNT(7),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__0_n_4\,
      Q => r_CNT(8),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_CNT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_CNT0_carry__1_n_7\,
      Q => r_CNT(9),
      R => \r_CNT[31]_i_1_n_0\
    );
\r_TEST_PATTERN[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_TEST_PATTERN_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\r_TEST_PATTERN[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_TEST_PATTERN_reg_n_0_[0]\,
      I1 => sel0(0),
      O => p_0_in(1)
    );
\r_TEST_PATTERN[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \r_TEST_PATTERN_reg_n_0_[0]\,
      O => p_0_in(2)
    );
\r_TEST_PATTERN[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => \r_TEST_PATTERN_reg_n_0_[0]\,
      I3 => sel0(0),
      O => p_0_in(3)
    );
\r_TEST_PATTERN[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \r_TEST_PATTERN_reg_n_0_[0]\,
      I4 => sel0(0),
      O => p_0_in(4)
    );
\r_TEST_PATTERN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clock,
      CE => \r_CNT[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => \r_TEST_PATTERN_reg_n_0_[0]\,
      R => '0'
    );
\r_TEST_PATTERN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clock,
      CE => \r_CNT[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => sel0(0),
      R => '0'
    );
\r_TEST_PATTERN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clock,
      CE => \r_CNT[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => sel0(1),
      R => '0'
    );
\r_TEST_PATTERN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clock,
      CE => \r_CNT[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => sel0(2),
      R => '0'
    );
\r_TEST_PATTERN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_Clock,
      CE => \r_CNT[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => sel0(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rehsdZynq_BD_VGA_Testing_Top_0_0 is
  port (
    i_Clock : in STD_LOGIC;
    i_VGA_Clock : in STD_LOGIC;
    o_VGA_HSync : out STD_LOGIC;
    o_VGA_VSync : out STD_LOGIC;
    o_VGA_RGB : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rehsdZynq_BD_VGA_Testing_Top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rehsdZynq_BD_VGA_Testing_Top_0_0 : entity is "rehsdZynq_BD_VGA_Testing_Top_0_0,VGA_Testing_Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of rehsdZynq_BD_VGA_Testing_Top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of rehsdZynq_BD_VGA_Testing_Top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of rehsdZynq_BD_VGA_Testing_Top_0_0 : entity is "VGA_Testing_Top,Vivado 2024.2";
end rehsdZynq_BD_VGA_Testing_Top_0_0;

architecture STRUCTURE of rehsdZynq_BD_VGA_Testing_Top_0_0 is
  signal \^o_vga_rgb\ : STD_LOGIC_VECTOR ( 13 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_Clock : signal is "xilinx.com:signal:clock:1.0 i_Clock CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of i_Clock : signal is "slave i_Clock";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_Clock : signal is "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of i_VGA_Clock : signal is "xilinx.com:signal:clock:1.0 i_VGA_Clock CLK";
  attribute x_interface_mode of i_VGA_Clock : signal is "slave i_VGA_Clock";
  attribute x_interface_parameter of i_VGA_Clock : signal is "XIL_INTERFACENAME i_VGA_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rehsdZynq_BD_i_VGA_Clock_0, INSERT_VIP 0";
begin
  o_VGA_RGB(15) <= \^o_vga_rgb\(13);
  o_VGA_RGB(14) <= \^o_vga_rgb\(13);
  o_VGA_RGB(13) <= \^o_vga_rgb\(13);
  o_VGA_RGB(12) <= \^o_vga_rgb\(13);
  o_VGA_RGB(11) <= \^o_vga_rgb\(13);
  o_VGA_RGB(10) <= \^o_vga_rgb\(8);
  o_VGA_RGB(9) <= \^o_vga_rgb\(8);
  o_VGA_RGB(8) <= \^o_vga_rgb\(8);
  o_VGA_RGB(7) <= \^o_vga_rgb\(8);
  o_VGA_RGB(6) <= \^o_vga_rgb\(8);
  o_VGA_RGB(5) <= \^o_vga_rgb\(8);
  o_VGA_RGB(4) <= \^o_vga_rgb\(2);
  o_VGA_RGB(3) <= \^o_vga_rgb\(2);
  o_VGA_RGB(2) <= \^o_vga_rgb\(2);
  o_VGA_RGB(1) <= \^o_vga_rgb\(2);
  o_VGA_RGB(0) <= \^o_vga_rgb\(2);
U0: entity work.rehsdZynq_BD_VGA_Testing_Top_0_0_VGA_Testing_Top
     port map (
      i_Clock => i_Clock,
      i_VGA_Clock => i_VGA_Clock,
      o_VGA_HSync => o_VGA_HSync,
      o_VGA_RGB(2) => \^o_vga_rgb\(13),
      o_VGA_RGB(1) => \^o_vga_rgb\(8),
      o_VGA_RGB(0) => \^o_vga_rgb\(2),
      o_VGA_VSync => o_VGA_VSync
    );
end STRUCTURE;
