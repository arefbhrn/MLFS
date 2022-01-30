-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Wed Oct  6 17:44:12 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./Arg_el_synth.vhd
-- Design      : Arg_el
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arg_el is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    I_en : in STD_LOGIC;
    I_P1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_P2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_I1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I_I2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Arg_el : entity is true;
end Arg_el;

architecture STRUCTURE of Arg_el is
  signal I_I1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal I_I2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal I_P1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_P2_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal I_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \I_data__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_en_IBUF : STD_LOGIC;
  signal I_rst_IBUF : STD_LOGIC;
  signal O_I_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal O_P_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal O_done_OBUF : STD_LOGIC;
  signal \O_value[7]_i_10_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_11_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_2_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_4_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_5_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_6_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_7_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_8_n_0\ : STD_LOGIC;
  signal \O_value[7]_i_9_n_0\ : STD_LOGIC;
  signal \O_value_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \O_value_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \O_value_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \O_value_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \NLW_O_value_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \O_value[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \O_value[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \O_value[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \O_value[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \O_value[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \O_value[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \O_value[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \O_value[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \O_value[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \O_value[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \O_value[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \O_value[7]_i_1\ : label is "soft_lutpair5";
begin
\I_I1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I1(0),
      O => I_I1_IBUF(0)
    );
\I_I1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I1(1),
      O => I_I1_IBUF(1)
    );
\I_I1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I1(2),
      O => I_I1_IBUF(2)
    );
\I_I1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I1(3),
      O => I_I1_IBUF(3)
    );
\I_I2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I2(0),
      O => I_I2_IBUF(0)
    );
\I_I2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I2(1),
      O => I_I2_IBUF(1)
    );
\I_I2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I2(2),
      O => I_I2_IBUF(2)
    );
\I_I2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_I2(3),
      O => I_I2_IBUF(3)
    );
\I_P1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(0),
      O => I_P1_IBUF(0)
    );
\I_P1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(1),
      O => I_P1_IBUF(1)
    );
\I_P1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(2),
      O => I_P1_IBUF(2)
    );
\I_P1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(3),
      O => I_P1_IBUF(3)
    );
\I_P1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(4),
      O => I_P1_IBUF(4)
    );
\I_P1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(5),
      O => I_P1_IBUF(5)
    );
\I_P1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(6),
      O => I_P1_IBUF(6)
    );
\I_P1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P1(7),
      O => I_P1_IBUF(7)
    );
\I_P2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(0),
      O => I_P2_IBUF(0)
    );
\I_P2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(1),
      O => I_P2_IBUF(1)
    );
\I_P2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(2),
      O => I_P2_IBUF(2)
    );
\I_P2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(3),
      O => I_P2_IBUF(3)
    );
\I_P2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(4),
      O => I_P2_IBUF(4)
    );
\I_P2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(5),
      O => I_P2_IBUF(5)
    );
\I_P2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(6),
      O => I_P2_IBUF(6)
    );
\I_P2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_P2(7),
      O => I_P2_IBUF(7)
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
I_en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_en,
      O => I_en_IBUF
    );
I_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_rst,
      O => I_rst_IBUF
    );
\O_I_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_I_OBUF(0),
      O => O_I(0)
    );
\O_I_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_I_OBUF(1),
      O => O_I(1)
    );
\O_I_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_I_OBUF(2),
      O => O_I(2)
    );
\O_I_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_I_OBUF(3),
      O => O_I(3)
    );
\O_P_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(0),
      O => O_P(0)
    );
\O_P_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(1),
      O => O_P(1)
    );
\O_P_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(2),
      O => O_P(2)
    );
\O_P_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(3),
      O => O_P(3)
    );
\O_P_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(4),
      O => O_P(4)
    );
\O_P_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(5),
      O => O_P(5)
    );
\O_P_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(6),
      O => O_P(6)
    );
\O_P_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_P_OBUF(7),
      O => O_P(7)
    );
O_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => O_done_OBUF,
      O => O_done
    );
O_done_reg: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      CLR => \O_value[7]_i_2_n_0\,
      D => I_en_IBUF,
      Q => O_done_OBUF
    );
\O_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_I1_IBUF(0),
      I1 => I_I2_IBUF(0),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => I_data(0)
    );
\O_value[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(0),
      I1 => I_P2_IBUF(0),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(0)
    );
\O_value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_I1_IBUF(1),
      I1 => I_I2_IBUF(1),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => I_data(1)
    );
\O_value[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(1),
      I1 => I_P2_IBUF(1),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(1)
    );
\O_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_I1_IBUF(2),
      I1 => I_I2_IBUF(2),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => I_data(2)
    );
\O_value[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(2),
      I1 => I_P2_IBUF(2),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(2)
    );
\O_value[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_I1_IBUF(3),
      I1 => I_I2_IBUF(3),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => I_data(3)
    );
\O_value[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(3),
      I1 => I_P2_IBUF(3),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(3)
    );
\O_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(4),
      I1 => I_P2_IBUF(4),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(4)
    );
\O_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(5),
      I1 => I_P2_IBUF(5),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(5)
    );
\O_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(6),
      I1 => I_P2_IBUF(6),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(6)
    );
\O_value[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_P1_IBUF(7),
      I1 => I_P2_IBUF(7),
      I2 => \O_value_reg[7]_i_3_n_0\,
      O => \I_data__0\(7)
    );
\O_value[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => I_P1_IBUF(2),
      I1 => I_P2_IBUF(2),
      I2 => I_P1_IBUF(3),
      I3 => I_P2_IBUF(3),
      O => \O_value[7]_i_10_n_0\
    );
\O_value[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => I_P1_IBUF(0),
      I1 => I_P2_IBUF(0),
      I2 => I_P1_IBUF(1),
      I3 => I_P2_IBUF(1),
      O => \O_value[7]_i_11_n_0\
    );
\O_value[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_IBUF,
      O => \O_value[7]_i_2_n_0\
    );
\O_value[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => I_P1_IBUF(6),
      I1 => I_P2_IBUF(6),
      I2 => I_P1_IBUF(7),
      I3 => I_P2_IBUF(7),
      O => \O_value[7]_i_4_n_0\
    );
\O_value[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => I_P1_IBUF(4),
      I1 => I_P2_IBUF(4),
      I2 => I_P2_IBUF(5),
      I3 => I_P1_IBUF(5),
      O => \O_value[7]_i_5_n_0\
    );
\O_value[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => I_P1_IBUF(2),
      I1 => I_P2_IBUF(2),
      I2 => I_P2_IBUF(3),
      I3 => I_P1_IBUF(3),
      O => \O_value[7]_i_6_n_0\
    );
\O_value[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => I_P1_IBUF(0),
      I1 => I_P2_IBUF(0),
      I2 => I_P2_IBUF(1),
      I3 => I_P1_IBUF(1),
      O => \O_value[7]_i_7_n_0\
    );
\O_value[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => I_P1_IBUF(6),
      I1 => I_P2_IBUF(6),
      I2 => I_P2_IBUF(7),
      I3 => I_P1_IBUF(7),
      O => \O_value[7]_i_8_n_0\
    );
\O_value[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => I_P1_IBUF(4),
      I1 => I_P2_IBUF(4),
      I2 => I_P1_IBUF(5),
      I3 => I_P2_IBUF(5),
      O => \O_value[7]_i_9_n_0\
    );
\O_value_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \O_value_reg[7]_i_3_n_0\,
      CO(2) => \O_value_reg[7]_i_3_n_1\,
      CO(1) => \O_value_reg[7]_i_3_n_2\,
      CO(0) => \O_value_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \O_value[7]_i_4_n_0\,
      DI(2) => \O_value[7]_i_5_n_0\,
      DI(1) => \O_value[7]_i_6_n_0\,
      DI(0) => \O_value[7]_i_7_n_0\,
      O(3 downto 0) => \NLW_O_value_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \O_value[7]_i_8_n_0\,
      S(2) => \O_value[7]_i_9_n_0\,
      S(1) => \O_value[7]_i_10_n_0\,
      S(0) => \O_value[7]_i_11_n_0\
    );
\Reg_I/O_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => I_data(0),
      Q => O_I_OBUF(0)
    );
\Reg_I/O_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => I_data(1),
      Q => O_I_OBUF(1)
    );
\Reg_I/O_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => I_data(2),
      Q => O_I_OBUF(2)
    );
\Reg_I/O_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => I_data(3),
      Q => O_I_OBUF(3)
    );
\Reg_P/O_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(0),
      Q => O_P_OBUF(0)
    );
\Reg_P/O_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(1),
      Q => O_P_OBUF(1)
    );
\Reg_P/O_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(2),
      Q => O_P_OBUF(2)
    );
\Reg_P/O_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(3),
      Q => O_P_OBUF(3)
    );
\Reg_P/O_value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(4),
      Q => O_P_OBUF(4)
    );
\Reg_P/O_value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(5),
      Q => O_P_OBUF(5)
    );
\Reg_P/O_value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(6),
      Q => O_P_OBUF(6)
    );
\Reg_P/O_value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => \O_value[7]_i_2_n_0\,
      D => \I_data__0\(7),
      Q => O_P_OBUF(7)
    );
end STRUCTURE;
