-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Fri Oct  1 21:45:31 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./NeuronCombinator3_synth.vhd
-- Design      : NeuronCombinator3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity NeuronCombinator3 is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    I_en : in STD_LOGIC;
    I_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I_ouputswitch : in STD_LOGIC;
    O_data : out STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of NeuronCombinator3 : entity is true;
end NeuronCombinator3;

architecture STRUCTURE of NeuronCombinator3 is
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal I_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_en_IBUF : STD_LOGIC;
  signal I_rst_IBUF : STD_LOGIC;
  signal O_data_OBUF : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal \SR_reg_reg_n_0_[72]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[73]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[74]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[75]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[76]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[77]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[78]\ : STD_LOGIC;
  signal \SR_reg_reg_n_0_[79]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 79 downto 8 );
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
\I_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(0),
      O => I_data_IBUF(0)
    );
\I_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(1),
      O => I_data_IBUF(1)
    );
\I_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(2),
      O => I_data_IBUF(2)
    );
\I_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(3),
      O => I_data_IBUF(3)
    );
\I_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(4),
      O => I_data_IBUF(4)
    );
\I_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(5),
      O => I_data_IBUF(5)
    );
\I_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(6),
      O => I_data_IBUF(6)
    );
\I_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => I_data(7),
      O => I_data_IBUF(7)
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
\O_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(0),
      O => O_data(0)
    );
\O_data_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(10),
      O => O_data(10)
    );
\O_data_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(11),
      O => O_data(11)
    );
\O_data_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(12),
      O => O_data(12)
    );
\O_data_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(13),
      O => O_data(13)
    );
\O_data_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(14),
      O => O_data(14)
    );
\O_data_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(15),
      O => O_data(15)
    );
\O_data_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(16),
      O => O_data(16)
    );
\O_data_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(17),
      O => O_data(17)
    );
\O_data_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(18),
      O => O_data(18)
    );
\O_data_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(19),
      O => O_data(19)
    );
\O_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(1),
      O => O_data(1)
    );
\O_data_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(20),
      O => O_data(20)
    );
\O_data_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(21),
      O => O_data(21)
    );
\O_data_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(22),
      O => O_data(22)
    );
\O_data_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(23),
      O => O_data(23)
    );
\O_data_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(24),
      O => O_data(24)
    );
\O_data_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(25),
      O => O_data(25)
    );
\O_data_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(26),
      O => O_data(26)
    );
\O_data_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(27),
      O => O_data(27)
    );
\O_data_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(28),
      O => O_data(28)
    );
\O_data_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(29),
      O => O_data(29)
    );
\O_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(2),
      O => O_data(2)
    );
\O_data_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(30),
      O => O_data(30)
    );
\O_data_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(31),
      O => O_data(31)
    );
\O_data_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(32),
      O => O_data(32)
    );
\O_data_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(33),
      O => O_data(33)
    );
\O_data_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(34),
      O => O_data(34)
    );
\O_data_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(35),
      O => O_data(35)
    );
\O_data_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(36),
      O => O_data(36)
    );
\O_data_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(37),
      O => O_data(37)
    );
\O_data_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(38),
      O => O_data(38)
    );
\O_data_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(39),
      O => O_data(39)
    );
\O_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(3),
      O => O_data(3)
    );
\O_data_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(40),
      O => O_data(40)
    );
\O_data_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(41),
      O => O_data(41)
    );
\O_data_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(42),
      O => O_data(42)
    );
\O_data_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(43),
      O => O_data(43)
    );
\O_data_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(44),
      O => O_data(44)
    );
\O_data_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(45),
      O => O_data(45)
    );
\O_data_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(46),
      O => O_data(46)
    );
\O_data_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(47),
      O => O_data(47)
    );
\O_data_OBUF[48]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(48),
      O => O_data(48)
    );
\O_data_OBUF[49]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(49),
      O => O_data(49)
    );
\O_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(4),
      O => O_data(4)
    );
\O_data_OBUF[50]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(50),
      O => O_data(50)
    );
\O_data_OBUF[51]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(51),
      O => O_data(51)
    );
\O_data_OBUF[52]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(52),
      O => O_data(52)
    );
\O_data_OBUF[53]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(53),
      O => O_data(53)
    );
\O_data_OBUF[54]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(54),
      O => O_data(54)
    );
\O_data_OBUF[55]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(55),
      O => O_data(55)
    );
\O_data_OBUF[56]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(56),
      O => O_data(56)
    );
\O_data_OBUF[57]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(57),
      O => O_data(57)
    );
\O_data_OBUF[58]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(58),
      O => O_data(58)
    );
\O_data_OBUF[59]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(59),
      O => O_data(59)
    );
\O_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(5),
      O => O_data(5)
    );
\O_data_OBUF[60]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(60),
      O => O_data(60)
    );
\O_data_OBUF[61]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(61),
      O => O_data(61)
    );
\O_data_OBUF[62]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(62),
      O => O_data(62)
    );
\O_data_OBUF[63]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(63),
      O => O_data(63)
    );
\O_data_OBUF[64]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(64),
      O => O_data(64)
    );
\O_data_OBUF[65]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(65),
      O => O_data(65)
    );
\O_data_OBUF[66]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(66),
      O => O_data(66)
    );
\O_data_OBUF[67]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(67),
      O => O_data(67)
    );
\O_data_OBUF[68]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(68),
      O => O_data(68)
    );
\O_data_OBUF[69]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(69),
      O => O_data(69)
    );
\O_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(6),
      O => O_data(6)
    );
\O_data_OBUF[70]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(70),
      O => O_data(70)
    );
\O_data_OBUF[71]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(71),
      O => O_data(71)
    );
\O_data_OBUF[72]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(72),
      O => O_data(72)
    );
\O_data_OBUF[73]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(73),
      O => O_data(73)
    );
\O_data_OBUF[74]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(74),
      O => O_data(74)
    );
\O_data_OBUF[75]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(75),
      O => O_data(75)
    );
\O_data_OBUF[76]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(76),
      O => O_data(76)
    );
\O_data_OBUF[77]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(77),
      O => O_data(77)
    );
\O_data_OBUF[78]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(78),
      O => O_data(78)
    );
\O_data_OBUF[79]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(79),
      O => O_data(79)
    );
\O_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(7),
      O => O_data(7)
    );
\O_data_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(8),
      O => O_data(8)
    );
\O_data_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_data_OBUF(9),
      O => O_data(9)
    );
\O_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(8),
      Q => O_data_OBUF(0),
      R => '0'
    );
\O_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(18),
      Q => O_data_OBUF(10),
      R => '0'
    );
\O_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(19),
      Q => O_data_OBUF(11),
      R => '0'
    );
\O_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(20),
      Q => O_data_OBUF(12),
      R => '0'
    );
\O_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(21),
      Q => O_data_OBUF(13),
      R => '0'
    );
\O_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(22),
      Q => O_data_OBUF(14),
      R => '0'
    );
\O_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(23),
      Q => O_data_OBUF(15),
      R => '0'
    );
\O_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(24),
      Q => O_data_OBUF(16),
      R => '0'
    );
\O_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(25),
      Q => O_data_OBUF(17),
      R => '0'
    );
\O_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(26),
      Q => O_data_OBUF(18),
      R => '0'
    );
\O_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(27),
      Q => O_data_OBUF(19),
      R => '0'
    );
\O_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(9),
      Q => O_data_OBUF(1),
      R => '0'
    );
\O_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(28),
      Q => O_data_OBUF(20),
      R => '0'
    );
\O_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(29),
      Q => O_data_OBUF(21),
      R => '0'
    );
\O_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(30),
      Q => O_data_OBUF(22),
      R => '0'
    );
\O_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(31),
      Q => O_data_OBUF(23),
      R => '0'
    );
\O_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(32),
      Q => O_data_OBUF(24),
      R => '0'
    );
\O_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(33),
      Q => O_data_OBUF(25),
      R => '0'
    );
\O_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(34),
      Q => O_data_OBUF(26),
      R => '0'
    );
\O_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(35),
      Q => O_data_OBUF(27),
      R => '0'
    );
\O_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(36),
      Q => O_data_OBUF(28),
      R => '0'
    );
\O_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(37),
      Q => O_data_OBUF(29),
      R => '0'
    );
\O_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(10),
      Q => O_data_OBUF(2),
      R => '0'
    );
\O_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(38),
      Q => O_data_OBUF(30),
      R => '0'
    );
\O_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(39),
      Q => O_data_OBUF(31),
      R => '0'
    );
\O_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(40),
      Q => O_data_OBUF(32),
      R => '0'
    );
\O_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(41),
      Q => O_data_OBUF(33),
      R => '0'
    );
\O_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(42),
      Q => O_data_OBUF(34),
      R => '0'
    );
\O_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(43),
      Q => O_data_OBUF(35),
      R => '0'
    );
\O_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(44),
      Q => O_data_OBUF(36),
      R => '0'
    );
\O_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(45),
      Q => O_data_OBUF(37),
      R => '0'
    );
\O_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(46),
      Q => O_data_OBUF(38),
      R => '0'
    );
\O_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(47),
      Q => O_data_OBUF(39),
      R => '0'
    );
\O_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(11),
      Q => O_data_OBUF(3),
      R => '0'
    );
\O_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(48),
      Q => O_data_OBUF(40),
      R => '0'
    );
\O_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(49),
      Q => O_data_OBUF(41),
      R => '0'
    );
\O_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(50),
      Q => O_data_OBUF(42),
      R => '0'
    );
\O_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(51),
      Q => O_data_OBUF(43),
      R => '0'
    );
\O_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(52),
      Q => O_data_OBUF(44),
      R => '0'
    );
\O_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(53),
      Q => O_data_OBUF(45),
      R => '0'
    );
\O_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(54),
      Q => O_data_OBUF(46),
      R => '0'
    );
\O_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(55),
      Q => O_data_OBUF(47),
      R => '0'
    );
\O_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(56),
      Q => O_data_OBUF(48),
      R => '0'
    );
\O_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(57),
      Q => O_data_OBUF(49),
      R => '0'
    );
\O_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(12),
      Q => O_data_OBUF(4),
      R => '0'
    );
\O_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(58),
      Q => O_data_OBUF(50),
      R => '0'
    );
\O_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(59),
      Q => O_data_OBUF(51),
      R => '0'
    );
\O_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(60),
      Q => O_data_OBUF(52),
      R => '0'
    );
\O_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(61),
      Q => O_data_OBUF(53),
      R => '0'
    );
\O_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(62),
      Q => O_data_OBUF(54),
      R => '0'
    );
\O_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(63),
      Q => O_data_OBUF(55),
      R => '0'
    );
\O_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(64),
      Q => O_data_OBUF(56),
      R => '0'
    );
\O_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(65),
      Q => O_data_OBUF(57),
      R => '0'
    );
\O_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(66),
      Q => O_data_OBUF(58),
      R => '0'
    );
\O_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(67),
      Q => O_data_OBUF(59),
      R => '0'
    );
\O_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(13),
      Q => O_data_OBUF(5),
      R => '0'
    );
\O_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(68),
      Q => O_data_OBUF(60),
      R => '0'
    );
\O_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(69),
      Q => O_data_OBUF(61),
      R => '0'
    );
\O_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(70),
      Q => O_data_OBUF(62),
      R => '0'
    );
\O_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(71),
      Q => O_data_OBUF(63),
      R => '0'
    );
\O_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(72),
      Q => O_data_OBUF(64),
      R => '0'
    );
\O_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(73),
      Q => O_data_OBUF(65),
      R => '0'
    );
\O_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(74),
      Q => O_data_OBUF(66),
      R => '0'
    );
\O_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(75),
      Q => O_data_OBUF(67),
      R => '0'
    );
\O_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(76),
      Q => O_data_OBUF(68),
      R => '0'
    );
\O_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(77),
      Q => O_data_OBUF(69),
      R => '0'
    );
\O_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(14),
      Q => O_data_OBUF(6),
      R => '0'
    );
\O_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(78),
      Q => O_data_OBUF(70),
      R => '0'
    );
\O_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(79),
      Q => O_data_OBUF(71),
      R => '0'
    );
\O_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[72]\,
      Q => O_data_OBUF(72),
      R => '0'
    );
\O_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[73]\,
      Q => O_data_OBUF(73),
      R => '0'
    );
\O_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[74]\,
      Q => O_data_OBUF(74),
      R => '0'
    );
\O_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[75]\,
      Q => O_data_OBUF(75),
      R => '0'
    );
\O_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[76]\,
      Q => O_data_OBUF(76),
      R => '0'
    );
\O_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[77]\,
      Q => O_data_OBUF(77),
      R => '0'
    );
\O_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[78]\,
      Q => O_data_OBUF(78),
      R => '0'
    );
\O_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => \SR_reg_reg_n_0_[79]\,
      Q => O_data_OBUF(79),
      R => '0'
    );
\O_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(15),
      Q => O_data_OBUF(7),
      R => '0'
    );
\O_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(16),
      Q => O_data_OBUF(8),
      R => '0'
    );
\O_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_rst_IBUF,
      D => p_1_in(17),
      Q => O_data_OBUF(9),
      R => '0'
    );
\SR_reg[79]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_IBUF,
      O => p_0_in
    );
\SR_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(0),
      Q => p_1_in(8)
    );
\SR_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(10),
      Q => p_1_in(18)
    );
\SR_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(11),
      Q => p_1_in(19)
    );
\SR_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(12),
      Q => p_1_in(20)
    );
\SR_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(13),
      Q => p_1_in(21)
    );
\SR_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(14),
      Q => p_1_in(22)
    );
\SR_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(15),
      Q => p_1_in(23)
    );
\SR_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(16),
      Q => p_1_in(24)
    );
\SR_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(17),
      Q => p_1_in(25)
    );
\SR_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(18),
      Q => p_1_in(26)
    );
\SR_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(19),
      Q => p_1_in(27)
    );
\SR_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(1),
      Q => p_1_in(9)
    );
\SR_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(20),
      Q => p_1_in(28)
    );
\SR_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(21),
      Q => p_1_in(29)
    );
\SR_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(22),
      Q => p_1_in(30)
    );
\SR_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(23),
      Q => p_1_in(31)
    );
\SR_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(24),
      Q => p_1_in(32)
    );
\SR_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(25),
      Q => p_1_in(33)
    );
\SR_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(26),
      Q => p_1_in(34)
    );
\SR_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(27),
      Q => p_1_in(35)
    );
\SR_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(28),
      Q => p_1_in(36)
    );
\SR_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(29),
      Q => p_1_in(37)
    );
\SR_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(2),
      Q => p_1_in(10)
    );
\SR_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(30),
      Q => p_1_in(38)
    );
\SR_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(31),
      Q => p_1_in(39)
    );
\SR_reg_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(32),
      Q => p_1_in(40)
    );
\SR_reg_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(33),
      Q => p_1_in(41)
    );
\SR_reg_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(34),
      Q => p_1_in(42)
    );
\SR_reg_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(35),
      Q => p_1_in(43)
    );
\SR_reg_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(36),
      Q => p_1_in(44)
    );
\SR_reg_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(37),
      Q => p_1_in(45)
    );
\SR_reg_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(38),
      Q => p_1_in(46)
    );
\SR_reg_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(39),
      Q => p_1_in(47)
    );
\SR_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(3),
      Q => p_1_in(11)
    );
\SR_reg_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(40),
      Q => p_1_in(48)
    );
\SR_reg_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(41),
      Q => p_1_in(49)
    );
\SR_reg_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(42),
      Q => p_1_in(50)
    );
\SR_reg_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(43),
      Q => p_1_in(51)
    );
\SR_reg_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(44),
      Q => p_1_in(52)
    );
\SR_reg_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(45),
      Q => p_1_in(53)
    );
\SR_reg_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(46),
      Q => p_1_in(54)
    );
\SR_reg_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(47),
      Q => p_1_in(55)
    );
\SR_reg_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(48),
      Q => p_1_in(56)
    );
\SR_reg_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(49),
      Q => p_1_in(57)
    );
\SR_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(4),
      Q => p_1_in(12)
    );
\SR_reg_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(50),
      Q => p_1_in(58)
    );
\SR_reg_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(51),
      Q => p_1_in(59)
    );
\SR_reg_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(52),
      Q => p_1_in(60)
    );
\SR_reg_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(53),
      Q => p_1_in(61)
    );
\SR_reg_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(54),
      Q => p_1_in(62)
    );
\SR_reg_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(55),
      Q => p_1_in(63)
    );
\SR_reg_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(56),
      Q => p_1_in(64)
    );
\SR_reg_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(57),
      Q => p_1_in(65)
    );
\SR_reg_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(58),
      Q => p_1_in(66)
    );
\SR_reg_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(59),
      Q => p_1_in(67)
    );
\SR_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(5),
      Q => p_1_in(13)
    );
\SR_reg_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(60),
      Q => p_1_in(68)
    );
\SR_reg_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(61),
      Q => p_1_in(69)
    );
\SR_reg_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(62),
      Q => p_1_in(70)
    );
\SR_reg_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(63),
      Q => p_1_in(71)
    );
\SR_reg_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(64),
      Q => p_1_in(72)
    );
\SR_reg_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(65),
      Q => p_1_in(73)
    );
\SR_reg_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(66),
      Q => p_1_in(74)
    );
\SR_reg_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(67),
      Q => p_1_in(75)
    );
\SR_reg_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(68),
      Q => p_1_in(76)
    );
\SR_reg_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(69),
      Q => p_1_in(77)
    );
\SR_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(6),
      Q => p_1_in(14)
    );
\SR_reg_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(70),
      Q => p_1_in(78)
    );
\SR_reg_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(71),
      Q => p_1_in(79)
    );
\SR_reg_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(72),
      Q => \SR_reg_reg_n_0_[72]\
    );
\SR_reg_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(73),
      Q => \SR_reg_reg_n_0_[73]\
    );
\SR_reg_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(74),
      Q => \SR_reg_reg_n_0_[74]\
    );
\SR_reg_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(75),
      Q => \SR_reg_reg_n_0_[75]\
    );
\SR_reg_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(76),
      Q => \SR_reg_reg_n_0_[76]\
    );
\SR_reg_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(77),
      Q => \SR_reg_reg_n_0_[77]\
    );
\SR_reg_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(78),
      Q => \SR_reg_reg_n_0_[78]\
    );
\SR_reg_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(79),
      Q => \SR_reg_reg_n_0_[79]\
    );
\SR_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => I_data_IBUF(7),
      Q => p_1_in(15)
    );
\SR_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(8),
      Q => p_1_in(16)
    );
\SR_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => I_en_IBUF,
      CLR => p_0_in,
      D => p_1_in(9),
      Q => p_1_in(17)
    );
end STRUCTURE;
