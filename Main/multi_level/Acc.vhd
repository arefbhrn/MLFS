-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Wed Oct  6 17:41:54 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./Acc_synth.vhd
-- Design      : Acc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Acc is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    I_load : in STD_LOGIC;
    I_d : in STD_LOGIC_VECTOR ( 16 downto 0 );
    O_d : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Acc : entity is true;
  attribute size : integer;
  attribute size of Acc : entity is 17;
end Acc;

architecture STRUCTURE of Acc is
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal I_d_IBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal I_load_IBUF : STD_LOGIC;
  signal I_rst_IBUF : STD_LOGIC;
  signal O_d_OBUF : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \tmp_value[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_value[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_value[0]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_value[0]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_value[0]_i_6_n_0\ : STD_LOGIC;
  signal \tmp_value[12]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_value[12]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_value[12]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_value[12]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_value[16]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_value[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_value[4]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_value[4]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_value[4]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_value[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_value[8]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_value[8]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_value[8]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \tmp_value_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \tmp_value_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \tmp_value_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \tmp_value_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tmp_value_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_tmp_value_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_value_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
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
\I_d_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(0),
      O => I_d_IBUF(0)
    );
\I_d_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(10),
      O => I_d_IBUF(10)
    );
\I_d_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(11),
      O => I_d_IBUF(11)
    );
\I_d_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(12),
      O => I_d_IBUF(12)
    );
\I_d_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(13),
      O => I_d_IBUF(13)
    );
\I_d_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(14),
      O => I_d_IBUF(14)
    );
\I_d_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(15),
      O => I_d_IBUF(15)
    );
\I_d_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(16),
      O => I_d_IBUF(16)
    );
\I_d_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(1),
      O => I_d_IBUF(1)
    );
\I_d_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(2),
      O => I_d_IBUF(2)
    );
\I_d_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(3),
      O => I_d_IBUF(3)
    );
\I_d_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(4),
      O => I_d_IBUF(4)
    );
\I_d_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(5),
      O => I_d_IBUF(5)
    );
\I_d_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(6),
      O => I_d_IBUF(6)
    );
\I_d_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(7),
      O => I_d_IBUF(7)
    );
\I_d_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(8),
      O => I_d_IBUF(8)
    );
\I_d_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_d(9),
      O => I_d_IBUF(9)
    );
I_load_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_load,
      O => I_load_IBUF
    );
I_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_rst,
      O => I_rst_IBUF
    );
\O_d_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(0),
      O => O_d(0)
    );
\O_d_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(10),
      O => O_d(10)
    );
\O_d_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(11),
      O => O_d(11)
    );
\O_d_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(12),
      O => O_d(12)
    );
\O_d_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(13),
      O => O_d(13)
    );
\O_d_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(14),
      O => O_d(14)
    );
\O_d_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(15),
      O => O_d(15)
    );
\O_d_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(16),
      O => O_d(16)
    );
\O_d_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(1),
      O => O_d(1)
    );
\O_d_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(2),
      O => O_d(2)
    );
\O_d_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(3),
      O => O_d(3)
    );
\O_d_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(4),
      O => O_d(4)
    );
\O_d_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(5),
      O => O_d(5)
    );
\O_d_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(6),
      O => O_d(6)
    );
\O_d_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(7),
      O => O_d(7)
    );
\O_d_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(8),
      O => O_d(8)
    );
\O_d_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_d_OBUF(9),
      O => O_d(9)
    );
\tmp_value[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_IBUF,
      O => \tmp_value[0]_i_2_n_0\
    );
\tmp_value[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(3),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(3),
      O => \tmp_value[0]_i_3_n_0\
    );
\tmp_value[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(2),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(2),
      O => \tmp_value[0]_i_4_n_0\
    );
\tmp_value[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(1),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(1),
      O => \tmp_value[0]_i_5_n_0\
    );
\tmp_value[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(0),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(0),
      O => \tmp_value[0]_i_6_n_0\
    );
\tmp_value[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(15),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(15),
      O => \tmp_value[12]_i_2_n_0\
    );
\tmp_value[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(14),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(14),
      O => \tmp_value[12]_i_3_n_0\
    );
\tmp_value[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(13),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(13),
      O => \tmp_value[12]_i_4_n_0\
    );
\tmp_value[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(12),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(12),
      O => \tmp_value[12]_i_5_n_0\
    );
\tmp_value[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(16),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(16),
      O => \tmp_value[16]_i_2_n_0\
    );
\tmp_value[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(7),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(7),
      O => \tmp_value[4]_i_2_n_0\
    );
\tmp_value[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(6),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(6),
      O => \tmp_value[4]_i_3_n_0\
    );
\tmp_value[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(5),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(5),
      O => \tmp_value[4]_i_4_n_0\
    );
\tmp_value[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(4),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(4),
      O => \tmp_value[4]_i_5_n_0\
    );
\tmp_value[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(11),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(11),
      O => \tmp_value[8]_i_2_n_0\
    );
\tmp_value[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(10),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(10),
      O => \tmp_value[8]_i_3_n_0\
    );
\tmp_value[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(9),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(9),
      O => \tmp_value[8]_i_4_n_0\
    );
\tmp_value[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => I_d_IBUF(8),
      I1 => I_load_IBUF,
      I2 => O_d_OBUF(8),
      O => \tmp_value[8]_i_5_n_0\
    );
\tmp_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[0]_i_1_n_7\,
      Q => O_d_OBUF(0)
    );
\tmp_value_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_value_reg[0]_i_1_n_0\,
      CO(2) => \tmp_value_reg[0]_i_1_n_1\,
      CO(1) => \tmp_value_reg[0]_i_1_n_2\,
      CO(0) => \tmp_value_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I_d_IBUF(3 downto 0),
      O(3) => \tmp_value_reg[0]_i_1_n_4\,
      O(2) => \tmp_value_reg[0]_i_1_n_5\,
      O(1) => \tmp_value_reg[0]_i_1_n_6\,
      O(0) => \tmp_value_reg[0]_i_1_n_7\,
      S(3) => \tmp_value[0]_i_3_n_0\,
      S(2) => \tmp_value[0]_i_4_n_0\,
      S(1) => \tmp_value[0]_i_5_n_0\,
      S(0) => \tmp_value[0]_i_6_n_0\
    );
\tmp_value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[8]_i_1_n_5\,
      Q => O_d_OBUF(10)
    );
\tmp_value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[8]_i_1_n_4\,
      Q => O_d_OBUF(11)
    );
\tmp_value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[12]_i_1_n_7\,
      Q => O_d_OBUF(12)
    );
\tmp_value_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_value_reg[8]_i_1_n_0\,
      CO(3) => \tmp_value_reg[12]_i_1_n_0\,
      CO(2) => \tmp_value_reg[12]_i_1_n_1\,
      CO(1) => \tmp_value_reg[12]_i_1_n_2\,
      CO(0) => \tmp_value_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I_d_IBUF(15 downto 12),
      O(3) => \tmp_value_reg[12]_i_1_n_4\,
      O(2) => \tmp_value_reg[12]_i_1_n_5\,
      O(1) => \tmp_value_reg[12]_i_1_n_6\,
      O(0) => \tmp_value_reg[12]_i_1_n_7\,
      S(3) => \tmp_value[12]_i_2_n_0\,
      S(2) => \tmp_value[12]_i_3_n_0\,
      S(1) => \tmp_value[12]_i_4_n_0\,
      S(0) => \tmp_value[12]_i_5_n_0\
    );
\tmp_value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[12]_i_1_n_6\,
      Q => O_d_OBUF(13)
    );
\tmp_value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[12]_i_1_n_5\,
      Q => O_d_OBUF(14)
    );
\tmp_value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[12]_i_1_n_4\,
      Q => O_d_OBUF(15)
    );
\tmp_value_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[16]_i_1_n_7\,
      Q => O_d_OBUF(16)
    );
\tmp_value_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_value_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_tmp_value_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tmp_value_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \tmp_value_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \tmp_value[16]_i_2_n_0\
    );
\tmp_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[0]_i_1_n_6\,
      Q => O_d_OBUF(1)
    );
\tmp_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[0]_i_1_n_5\,
      Q => O_d_OBUF(2)
    );
\tmp_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[0]_i_1_n_4\,
      Q => O_d_OBUF(3)
    );
\tmp_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[4]_i_1_n_7\,
      Q => O_d_OBUF(4)
    );
\tmp_value_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_value_reg[0]_i_1_n_0\,
      CO(3) => \tmp_value_reg[4]_i_1_n_0\,
      CO(2) => \tmp_value_reg[4]_i_1_n_1\,
      CO(1) => \tmp_value_reg[4]_i_1_n_2\,
      CO(0) => \tmp_value_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I_d_IBUF(7 downto 4),
      O(3) => \tmp_value_reg[4]_i_1_n_4\,
      O(2) => \tmp_value_reg[4]_i_1_n_5\,
      O(1) => \tmp_value_reg[4]_i_1_n_6\,
      O(0) => \tmp_value_reg[4]_i_1_n_7\,
      S(3) => \tmp_value[4]_i_2_n_0\,
      S(2) => \tmp_value[4]_i_3_n_0\,
      S(1) => \tmp_value[4]_i_4_n_0\,
      S(0) => \tmp_value[4]_i_5_n_0\
    );
\tmp_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[4]_i_1_n_6\,
      Q => O_d_OBUF(5)
    );
\tmp_value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[4]_i_1_n_5\,
      Q => O_d_OBUF(6)
    );
\tmp_value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[4]_i_1_n_4\,
      Q => O_d_OBUF(7)
    );
\tmp_value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[8]_i_1_n_7\,
      Q => O_d_OBUF(8)
    );
\tmp_value_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_value_reg[4]_i_1_n_0\,
      CO(3) => \tmp_value_reg[8]_i_1_n_0\,
      CO(2) => \tmp_value_reg[8]_i_1_n_1\,
      CO(1) => \tmp_value_reg[8]_i_1_n_2\,
      CO(0) => \tmp_value_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => I_d_IBUF(11 downto 8),
      O(3) => \tmp_value_reg[8]_i_1_n_4\,
      O(2) => \tmp_value_reg[8]_i_1_n_5\,
      O(1) => \tmp_value_reg[8]_i_1_n_6\,
      O(0) => \tmp_value_reg[8]_i_1_n_7\,
      S(3) => \tmp_value[8]_i_2_n_0\,
      S(2) => \tmp_value[8]_i_3_n_0\,
      S(1) => \tmp_value[8]_i_4_n_0\,
      S(0) => \tmp_value[8]_i_5_n_0\
    );
\tmp_value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \tmp_value[0]_i_2_n_0\,
      D => \tmp_value_reg[8]_i_1_n_6\,
      Q => O_d_OBUF(9)
    );
end STRUCTURE;
