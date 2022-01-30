-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Wed Oct  6 17:46:28 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./Counter_L1_synth.vhd
-- Design      : Counter_L1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_L1 is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    I_N_1_en : in STD_LOGIC;
    I_W_1_en : in STD_LOGIC;
    I_N_clean : in STD_LOGIC;
    I_W_clean : in STD_LOGIC;
    O_N_1 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    O_W_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    O_W_N : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Counter_L1 : entity is true;
  attribute N_size : integer;
  attribute N_size of Counter_L1 : entity is 6;
  attribute W_size : integer;
  attribute W_size of Counter_L1 : entity is 5;
end Counter_L1;

architecture STRUCTURE of Counter_L1 is
  signal I_N_1_en_IBUF : STD_LOGIC;
  signal I_N_clean_IBUF : STD_LOGIC;
  signal I_W_1_en_IBUF : STD_LOGIC;
  signal I_W_clean_IBUF : STD_LOGIC;
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal I_en : STD_LOGIC;
  signal I_rst_IBUF : STD_LOGIC;
  signal O_N_1_OBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal O_W_1_OBUF : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal O_W_N0 : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal O_W_N_OBUF : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \O_W_N_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_1_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_1_n_1\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_1_n_2\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_1_n_3\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_2_n_1\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_2_n_2\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_2_n_3\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[5]_inst_i_8_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_1_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_1_n_1\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_1_n_2\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_1_n_3\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_2_n_1\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_2_n_2\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_2_n_3\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \O_W_N_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \temp_value[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \temp_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_value[5]_i_2_n_0\ : STD_LOGIC;
  signal \temp_value[5]_i_3_n_0\ : STD_LOGIC;
  signal \temp_value[5]_i_5_n_0\ : STD_LOGIC;
  signal \temp_value[5]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_O_W_N_OBUF[10]_inst_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_O_W_N_OBUF[10]_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_O_W_N_OBUF[10]_inst_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_O_W_N_OBUF[10]_inst_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_O_W_N_OBUF[5]_inst_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \temp_value[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_value[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_value[4]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_value[5]_i_2\ : label is "soft_lutpair1";
begin
\Counter_28/temp_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[4]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[0]_i_1__0_n_0\,
      Q => O_W_N_OBUF(0)
    );
\Counter_28/temp_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[4]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[1]_i_1__0_n_0\,
      Q => O_W_N_OBUF(1)
    );
\Counter_28/temp_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[4]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[2]_i_1__0_n_0\,
      Q => O_W_1_OBUF(2)
    );
\Counter_28/temp_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[4]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[3]_i_1__0_n_0\,
      Q => O_W_1_OBUF(3)
    );
\Counter_28/temp_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[4]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[4]_i_2_n_0\,
      Q => O_W_1_OBUF(4)
    );
\Counter_40/temp_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[0]_i_1_n_0\,
      Q => O_N_1_OBUF(0)
    );
\Counter_40/temp_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[1]_i_1_n_0\,
      Q => O_N_1_OBUF(1)
    );
\Counter_40/temp_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[2]_i_1_n_0\,
      Q => O_N_1_OBUF(2)
    );
\Counter_40/temp_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[3]_i_1_n_0\,
      Q => O_N_1_OBUF(3)
    );
\Counter_40/temp_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[4]_i_1__0_n_0\,
      Q => O_N_1_OBUF(4)
    );
\Counter_40/temp_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[5]_i_1_n_0\,
      CLR => \temp_value[5]_i_3_n_0\,
      D => \temp_value[5]_i_2_n_0\,
      Q => O_N_1_OBUF(5)
    );
I_N_1_en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_N_1_en,
      O => I_N_1_en_IBUF
    );
I_N_clean_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_N_clean,
      O => I_N_clean_IBUF
    );
I_W_1_en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_W_1_en,
      O => I_W_1_en_IBUF
    );
I_W_clean_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_W_clean,
      O => I_W_clean_IBUF
    );
I_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => I_clk_IBUF,
      O => I_clk_IBUF_BUFG
    );
I_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_clk,
      O => I_clk_IBUF
    );
I_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_rst,
      O => I_rst_IBUF
    );
\O_N_1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(0),
      O => O_N_1(0)
    );
\O_N_1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(1),
      O => O_N_1(1)
    );
\O_N_1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(2),
      O => O_N_1(2)
    );
\O_N_1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(3),
      O => O_N_1(3)
    );
\O_N_1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(4),
      O => O_N_1(4)
    );
\O_N_1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_1_OBUF(5),
      O => O_N_1(5)
    );
\O_W_1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(0),
      O => O_W_1(0)
    );
\O_W_1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(1),
      O => O_W_1(1)
    );
\O_W_1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_1_OBUF(2),
      O => O_W_1(2)
    );
\O_W_1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_1_OBUF(3),
      O => O_W_1(3)
    );
\O_W_1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_1_OBUF(4),
      O => O_W_1(4)
    );
\O_W_N_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(0),
      O => O_W_N(0)
    );
\O_W_N_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(10),
      O => O_W_N(10)
    );
\O_W_N_OBUF[10]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_W_N_OBUF[9]_inst_i_1_n_0\,
      CO(3 downto 0) => \NLW_O_W_N_OBUF[10]_inst_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_O_W_N_OBUF[10]_inst_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => O_W_N_OBUF(10),
      S(3 downto 1) => B"000",
      S(0) => O_W_N0(10)
    );
\O_W_N_OBUF[10]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_W_N_OBUF[9]_inst_i_2_n_0\,
      CO(3 downto 0) => \NLW_O_W_N_OBUF[10]_inst_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_O_W_N_OBUF[10]_inst_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => O_W_N0(10),
      S(3 downto 1) => B"000",
      S(0) => \O_W_N_OBUF[10]_inst_i_3_n_0\
    );
\O_W_N_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_N_1_OBUF(5),
      O => \O_W_N_OBUF[10]_inst_i_3_n_0\
    );
\O_W_N_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(1),
      O => O_W_N(1)
    );
\O_W_N_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(2),
      O => O_W_N(2)
    );
\O_W_N_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_N0(2),
      O => O_W_N_OBUF(2)
    );
\O_W_N_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(3),
      O => O_W_N(3)
    );
\O_W_N_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(4),
      O => O_W_N(4)
    );
\O_W_N_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(5),
      O => O_W_N(5)
    );
\O_W_N_OBUF[5]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \O_W_N_OBUF[5]_inst_i_1_n_0\,
      CO(2) => \O_W_N_OBUF[5]_inst_i_1_n_1\,
      CO(1) => \O_W_N_OBUF[5]_inst_i_1_n_2\,
      CO(0) => \O_W_N_OBUF[5]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => O_W_1_OBUF(4 downto 2),
      O(3 downto 1) => O_W_N_OBUF(5 downto 3),
      O(0) => \NLW_O_W_N_OBUF[5]_inst_i_1_O_UNCONNECTED\(0),
      S(3) => O_W_N0(5),
      S(2) => \O_W_N_OBUF[5]_inst_i_3_n_0\,
      S(1) => \O_W_N_OBUF[5]_inst_i_4_n_0\,
      S(0) => \O_W_N_OBUF[5]_inst_i_5_n_0\
    );
\O_W_N_OBUF[5]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \O_W_N_OBUF[5]_inst_i_2_n_0\,
      CO(2) => \O_W_N_OBUF[5]_inst_i_2_n_1\,
      CO(1) => \O_W_N_OBUF[5]_inst_i_2_n_2\,
      CO(0) => \O_W_N_OBUF[5]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3) => O_N_1_OBUF(0),
      DI(2 downto 0) => B"001",
      O(3 downto 0) => O_W_N0(5 downto 2),
      S(3) => \O_W_N_OBUF[5]_inst_i_6_n_0\,
      S(2) => \O_W_N_OBUF[5]_inst_i_7_n_0\,
      S(1) => \O_W_N_OBUF[5]_inst_i_8_n_0\,
      S(0) => O_N_1_OBUF(0)
    );
\O_W_N_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O_W_1_OBUF(4),
      I1 => O_W_N0(4),
      O => \O_W_N_OBUF[5]_inst_i_3_n_0\
    );
\O_W_N_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O_W_1_OBUF(3),
      I1 => O_W_N0(3),
      O => \O_W_N_OBUF[5]_inst_i_4_n_0\
    );
\O_W_N_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_N0(2),
      O => \O_W_N_OBUF[5]_inst_i_5_n_0\
    );
\O_W_N_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => O_N_1_OBUF(0),
      I1 => O_N_1_OBUF(3),
      O => \O_W_N_OBUF[5]_inst_i_6_n_0\
    );
\O_W_N_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_N_1_OBUF(2),
      O => \O_W_N_OBUF[5]_inst_i_7_n_0\
    );
\O_W_N_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_N_1_OBUF(1),
      O => \O_W_N_OBUF[5]_inst_i_8_n_0\
    );
\O_W_N_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(6),
      O => O_W_N(6)
    );
\O_W_N_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(7),
      O => O_W_N(7)
    );
\O_W_N_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(8),
      O => O_W_N(8)
    );
\O_W_N_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_W_N_OBUF(9),
      O => O_W_N(9)
    );
\O_W_N_OBUF[9]_inst_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_W_N_OBUF[5]_inst_i_1_n_0\,
      CO(3) => \O_W_N_OBUF[9]_inst_i_1_n_0\,
      CO(2) => \O_W_N_OBUF[9]_inst_i_1_n_1\,
      CO(1) => \O_W_N_OBUF[9]_inst_i_1_n_2\,
      CO(0) => \O_W_N_OBUF[9]_inst_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => O_W_N_OBUF(9 downto 6),
      S(3 downto 0) => O_W_N0(9 downto 6)
    );
\O_W_N_OBUF[9]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_W_N_OBUF[5]_inst_i_2_n_0\,
      CO(3) => \O_W_N_OBUF[9]_inst_i_2_n_0\,
      CO(2) => \O_W_N_OBUF[9]_inst_i_2_n_1\,
      CO(1) => \O_W_N_OBUF[9]_inst_i_2_n_2\,
      CO(0) => \O_W_N_OBUF[9]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => O_N_1_OBUF(4 downto 1),
      O(3 downto 0) => O_W_N0(9 downto 6),
      S(3) => \O_W_N_OBUF[9]_inst_i_3_n_0\,
      S(2) => \O_W_N_OBUF[9]_inst_i_4_n_0\,
      S(1) => \O_W_N_OBUF[9]_inst_i_5_n_0\,
      S(0) => \O_W_N_OBUF[9]_inst_i_6_n_0\
    );
\O_W_N_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_N_1_OBUF(4),
      O => \O_W_N_OBUF[9]_inst_i_3_n_0\
    );
\O_W_N_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => O_N_1_OBUF(3),
      O => \O_W_N_OBUF[9]_inst_i_4_n_0\
    );
\O_W_N_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => O_N_1_OBUF(2),
      I1 => O_N_1_OBUF(5),
      O => \O_W_N_OBUF[9]_inst_i_5_n_0\
    );
\O_W_N_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => O_N_1_OBUF(1),
      I1 => O_N_1_OBUF(4),
      O => \O_W_N_OBUF[9]_inst_i_6_n_0\
    );
\temp_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => O_N_1_OBUF(0),
      I1 => \temp_value[5]_i_5_n_0\,
      I2 => I_N_clean_IBUF,
      O => \temp_value[0]_i_1_n_0\
    );
\temp_value[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => O_W_N_OBUF(0),
      I1 => O_W_1_OBUF(2),
      I2 => O_W_1_OBUF(4),
      I3 => O_W_1_OBUF(3),
      I4 => I_W_clean_IBUF,
      O => \temp_value[0]_i_1__0_n_0\
    );
\temp_value[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \temp_value[5]_i_5_n_0\,
      I1 => O_N_1_OBUF(0),
      I2 => O_N_1_OBUF(1),
      I3 => I_N_clean_IBUF,
      O => \temp_value[1]_i_1_n_0\
    );
\temp_value[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007F7F00"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_1_OBUF(4),
      I2 => O_W_1_OBUF(3),
      I3 => O_W_N_OBUF(0),
      I4 => O_W_N_OBUF(1),
      I5 => I_W_clean_IBUF,
      O => \temp_value[1]_i_1__0_n_0\
    );
\temp_value[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001540"
    )
        port map (
      I0 => \temp_value[5]_i_5_n_0\,
      I1 => O_N_1_OBUF(0),
      I2 => O_N_1_OBUF(1),
      I3 => O_N_1_OBUF(2),
      I4 => I_N_clean_IBUF,
      O => \temp_value[2]_i_1_n_0\
    );
\temp_value[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000552A2A2A"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_1_OBUF(4),
      I2 => O_W_1_OBUF(3),
      I3 => O_W_N_OBUF(0),
      I4 => O_W_N_OBUF(1),
      I5 => I_W_clean_IBUF,
      O => \temp_value[2]_i_1__0_n_0\
    );
\temp_value[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => \temp_value[5]_i_5_n_0\,
      I1 => O_N_1_OBUF(1),
      I2 => O_N_1_OBUF(0),
      I3 => O_N_1_OBUF(2),
      I4 => O_N_1_OBUF(3),
      I5 => I_N_clean_IBUF,
      O => \temp_value[3]_i_1_n_0\
    );
\temp_value[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A707070"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_1_OBUF(4),
      I2 => O_W_1_OBUF(3),
      I3 => O_W_N_OBUF(1),
      I4 => O_W_N_OBUF(0),
      I5 => I_W_clean_IBUF,
      O => \temp_value[3]_i_1__0_n_0\
    );
\temp_value[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I_W_clean_IBUF,
      I1 => I_W_1_en_IBUF,
      O => \temp_value[4]_i_1_n_0\
    );
\temp_value[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \temp_value[5]_i_5_n_0\,
      I1 => \temp_value[5]_i_6_n_0\,
      I2 => O_N_1_OBUF(4),
      I3 => I_N_clean_IBUF,
      O => \temp_value[4]_i_1__0_n_0\
    );
\temp_value[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006C4C4C4C"
    )
        port map (
      I0 => O_W_1_OBUF(2),
      I1 => O_W_1_OBUF(4),
      I2 => O_W_1_OBUF(3),
      I3 => O_W_N_OBUF(0),
      I4 => O_W_N_OBUF(1),
      I5 => I_W_clean_IBUF,
      O => \temp_value[4]_i_2_n_0\
    );
\temp_value[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I_N_clean_IBUF,
      I1 => I_en,
      O => \temp_value[5]_i_1_n_0\
    );
\temp_value[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001540"
    )
        port map (
      I0 => \temp_value[5]_i_5_n_0\,
      I1 => \temp_value[5]_i_6_n_0\,
      I2 => O_N_1_OBUF(4),
      I3 => O_N_1_OBUF(5),
      I4 => I_N_clean_IBUF,
      O => \temp_value[5]_i_2_n_0\
    );
\temp_value[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_IBUF,
      O => \temp_value[5]_i_3_n_0\
    );
\temp_value[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => O_W_N_OBUF(1),
      I1 => O_W_1_OBUF(4),
      I2 => O_W_N_OBUF(0),
      I3 => I_N_1_en_IBUF,
      I4 => O_W_1_OBUF(2),
      I5 => O_W_1_OBUF(3),
      O => I_en
    );
\temp_value[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => O_N_1_OBUF(5),
      I1 => O_N_1_OBUF(4),
      I2 => O_N_1_OBUF(2),
      I3 => O_N_1_OBUF(0),
      I4 => O_N_1_OBUF(1),
      I5 => O_N_1_OBUF(3),
      O => \temp_value[5]_i_5_n_0\
    );
\temp_value[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => O_N_1_OBUF(3),
      I1 => O_N_1_OBUF(1),
      I2 => O_N_1_OBUF(0),
      I3 => O_N_1_OBUF(2),
      O => \temp_value[5]_i_6_n_0\
    );
end STRUCTURE;
