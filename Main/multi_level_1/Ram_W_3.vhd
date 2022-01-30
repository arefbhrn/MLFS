-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Fri Oct  1 21:19:52 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./Ram_W_3_synth.vhd
-- Design      : Ram_W_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ram_W_3 is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    addr_r : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_r : out STD_LOGIC_VECTOR ( 99 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Ram_W_3 : entity is true;
  attribute addr_size : integer;
  attribute addr_size of Ram_W_3 : entity is 4;
  attribute size_w : integer;
  attribute size_w of Ram_W_3 : entity is 100;
end Ram_W_3;

architecture STRUCTURE of Ram_W_3 is
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal addr_r_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_r_OBUF : STD_LOGIC_VECTOR ( 99 downto 0 );
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b0__10_n_0\ : STD_LOGIC;
  signal \g0_b0__11_n_0\ : STD_LOGIC;
  signal \g0_b0__12_n_0\ : STD_LOGIC;
  signal \g0_b0__13_n_0\ : STD_LOGIC;
  signal \g0_b0__14_n_0\ : STD_LOGIC;
  signal \g0_b0__15_n_0\ : STD_LOGIC;
  signal \g0_b0__16_n_0\ : STD_LOGIC;
  signal \g0_b0__17_n_0\ : STD_LOGIC;
  signal \g0_b0__18_n_0\ : STD_LOGIC;
  signal \g0_b0__1_n_0\ : STD_LOGIC;
  signal \g0_b0__2_n_0\ : STD_LOGIC;
  signal \g0_b0__3_n_0\ : STD_LOGIC;
  signal \g0_b0__4_n_0\ : STD_LOGIC;
  signal \g0_b0__5_n_0\ : STD_LOGIC;
  signal \g0_b0__6_n_0\ : STD_LOGIC;
  signal \g0_b0__7_n_0\ : STD_LOGIC;
  signal \g0_b0__8_n_0\ : STD_LOGIC;
  signal \g0_b0__9_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal \g0_b1__10_n_0\ : STD_LOGIC;
  signal \g0_b1__11_n_0\ : STD_LOGIC;
  signal \g0_b1__12_n_0\ : STD_LOGIC;
  signal \g0_b1__13_n_0\ : STD_LOGIC;
  signal \g0_b1__14_n_0\ : STD_LOGIC;
  signal \g0_b1__15_n_0\ : STD_LOGIC;
  signal \g0_b1__16_n_0\ : STD_LOGIC;
  signal \g0_b1__17_n_0\ : STD_LOGIC;
  signal \g0_b1__18_n_0\ : STD_LOGIC;
  signal \g0_b1__1_n_0\ : STD_LOGIC;
  signal \g0_b1__2_n_0\ : STD_LOGIC;
  signal \g0_b1__3_n_0\ : STD_LOGIC;
  signal \g0_b1__4_n_0\ : STD_LOGIC;
  signal \g0_b1__5_n_0\ : STD_LOGIC;
  signal \g0_b1__6_n_0\ : STD_LOGIC;
  signal \g0_b1__7_n_0\ : STD_LOGIC;
  signal \g0_b1__8_n_0\ : STD_LOGIC;
  signal \g0_b1__9_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \g0_b2__10_n_0\ : STD_LOGIC;
  signal \g0_b2__11_n_0\ : STD_LOGIC;
  signal \g0_b2__12_n_0\ : STD_LOGIC;
  signal \g0_b2__13_n_0\ : STD_LOGIC;
  signal \g0_b2__14_n_0\ : STD_LOGIC;
  signal \g0_b2__16_n_0\ : STD_LOGIC;
  signal \g0_b2__1_n_0\ : STD_LOGIC;
  signal \g0_b2__2_n_0\ : STD_LOGIC;
  signal \g0_b2__3_n_0\ : STD_LOGIC;
  signal \g0_b2__4_n_0\ : STD_LOGIC;
  signal \g0_b2__5_n_0\ : STD_LOGIC;
  signal \g0_b2__6_n_0\ : STD_LOGIC;
  signal \g0_b2__7_n_0\ : STD_LOGIC;
  signal \g0_b2__8_n_0\ : STD_LOGIC;
  signal \g0_b2__9_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal \g0_b3__10_n_0\ : STD_LOGIC;
  signal \g0_b3__11_n_0\ : STD_LOGIC;
  signal \g0_b3__12_n_0\ : STD_LOGIC;
  signal \g0_b3__13_n_0\ : STD_LOGIC;
  signal \g0_b3__14_n_0\ : STD_LOGIC;
  signal \g0_b3__15_n_0\ : STD_LOGIC;
  signal \g0_b3__1_n_0\ : STD_LOGIC;
  signal \g0_b3__2_n_0\ : STD_LOGIC;
  signal \g0_b3__3_n_0\ : STD_LOGIC;
  signal \g0_b3__4_n_0\ : STD_LOGIC;
  signal \g0_b3__5_n_0\ : STD_LOGIC;
  signal \g0_b3__6_n_0\ : STD_LOGIC;
  signal \g0_b3__7_n_0\ : STD_LOGIC;
  signal \g0_b3__8_n_0\ : STD_LOGIC;
  signal \g0_b3__9_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal \g0_b4__10_n_0\ : STD_LOGIC;
  signal \g0_b4__11_n_0\ : STD_LOGIC;
  signal \g0_b4__12_n_0\ : STD_LOGIC;
  signal \g0_b4__13_n_0\ : STD_LOGIC;
  signal \g0_b4__1_n_0\ : STD_LOGIC;
  signal \g0_b4__2_n_0\ : STD_LOGIC;
  signal \g0_b4__3_n_0\ : STD_LOGIC;
  signal \g0_b4__4_n_0\ : STD_LOGIC;
  signal \g0_b4__5_n_0\ : STD_LOGIC;
  signal \g0_b4__6_n_0\ : STD_LOGIC;
  signal \g0_b4__7_n_0\ : STD_LOGIC;
  signal \g0_b4__8_n_0\ : STD_LOGIC;
  signal \g0_b4__9_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b0__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b0__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b0__10\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b0__11\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b0__12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b0__13\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \g0_b0__14\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \g0_b0__15\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \g0_b0__16\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \g0_b0__17\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \g0_b0__18\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \g0_b0__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b0__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \g0_b0__4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b0__5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b0__6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \g0_b0__7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \g0_b0__8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \g0_b0__9\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b1__10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b1__11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b1__12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b1__13\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \g0_b1__14\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \g0_b1__15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b1__16\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b1__17\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \g0_b1__18\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \g0_b1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b1__3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b1__5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b1__6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b1__7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \g0_b1__8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b1__9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b2__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b2__10\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \g0_b2__11\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b2__12\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \g0_b2__13\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \g0_b2__14\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \g0_b2__16\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \g0_b2__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \g0_b2__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b2__4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \g0_b2__5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b2__6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b2__7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \g0_b2__8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b2__9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g0_b3__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b3__10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \g0_b3__11\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b3__12\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \g0_b3__13\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \g0_b3__14\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \g0_b3__15\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \g0_b3__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b3__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g0_b3__4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \g0_b3__5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b3__6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b3__7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b3__8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \g0_b3__9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b4__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g0_b4__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b4__10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \g0_b4__11\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b4__12\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \g0_b4__13\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \g0_b4__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b4__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b4__4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g0_b4__5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \g0_b4__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b4__7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b4__8\ : label is "soft_lutpair23";
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
\L1[0].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__16_n_0\,
      Q => data_r_OBUF(95),
      R => '0'
    );
\L1[0].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__18_n_0\,
      Q => data_r_OBUF(96),
      R => '0'
    );
\L1[0].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__14_n_0\,
      Q => data_r_OBUF(97),
      R => '0'
    );
\L1[0].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__15_n_0\,
      Q => data_r_OBUF(98),
      R => '0'
    );
\L1[0].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__13_n_0\,
      Q => data_r_OBUF(99),
      R => '0'
    );
\L1[10].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__8_n_0\,
      Q => data_r_OBUF(45),
      R => '0'
    );
\L1[10].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__8_n_0\,
      Q => data_r_OBUF(46),
      R => '0'
    );
\L1[10].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__5_n_0\,
      Q => data_r_OBUF(47),
      R => '0'
    );
\L1[10].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__6_n_0\,
      Q => data_r_OBUF(48),
      R => '0'
    );
\L1[10].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__7_n_0\,
      Q => data_r_OBUF(49),
      R => '0'
    );
\L1[11].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__7_n_0\,
      Q => data_r_OBUF(40),
      R => '0'
    );
\L1[11].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__7_n_0\,
      Q => data_r_OBUF(41),
      R => '0'
    );
\L1[11].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__4_n_0\,
      Q => data_r_OBUF(42),
      R => '0'
    );
\L1[12].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__6_n_0\,
      Q => data_r_OBUF(35),
      R => '0'
    );
\L1[12].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__6_n_0\,
      Q => data_r_OBUF(36),
      R => '0'
    );
\L1[12].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__3_n_0\,
      Q => data_r_OBUF(37),
      R => '0'
    );
\L1[12].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__5_n_0\,
      Q => data_r_OBUF(38),
      R => '0'
    );
\L1[12].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__6_n_0\,
      Q => data_r_OBUF(39),
      R => '0'
    );
\L1[13].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__5_n_0\,
      Q => data_r_OBUF(30),
      R => '0'
    );
\L1[13].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__5_n_0\,
      Q => data_r_OBUF(31),
      R => '0'
    );
\L1[13].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__2_n_0\,
      Q => data_r_OBUF(32),
      R => '0'
    );
\L1[13].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__4_n_0\,
      Q => data_r_OBUF(33),
      R => '0'
    );
\L1[13].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__5_n_0\,
      Q => data_r_OBUF(34),
      R => '0'
    );
\L1[14].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__4_n_0\,
      Q => data_r_OBUF(25),
      R => '0'
    );
\L1[14].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__4_n_0\,
      Q => data_r_OBUF(26),
      R => '0'
    );
\L1[14].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__3_n_0\,
      Q => data_r_OBUF(28),
      R => '0'
    );
\L1[14].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__4_n_0\,
      Q => data_r_OBUF(29),
      R => '0'
    );
\L1[15].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__3_n_0\,
      Q => data_r_OBUF(20),
      R => '0'
    );
\L1[15].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__3_n_0\,
      Q => data_r_OBUF(21),
      R => '0'
    );
\L1[15].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__16_n_0\,
      Q => data_r_OBUF(12),
      R => '0'
    );
\L1[15].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__3_n_0\,
      Q => data_r_OBUF(24),
      R => '0'
    );
\L1[16].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__2_n_0\,
      Q => data_r_OBUF(15),
      R => '0'
    );
\L1[16].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__2_n_0\,
      Q => data_r_OBUF(16),
      R => '0'
    );
\L1[16].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__1_n_0\,
      Q => data_r_OBUF(17),
      R => '0'
    );
\L1[16].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__2_n_0\,
      Q => data_r_OBUF(18),
      R => '0'
    );
\L1[16].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__2_n_0\,
      Q => data_r_OBUF(19),
      R => '0'
    );
\L1[17].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__1_n_0\,
      Q => data_r_OBUF(10),
      R => '0'
    );
\L1[17].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__1_n_0\,
      Q => data_r_OBUF(11),
      R => '0'
    );
\L1[17].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__1_n_0\,
      Q => data_r_OBUF(13),
      R => '0'
    );
\L1[17].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__1_n_0\,
      Q => data_r_OBUF(14),
      R => '0'
    );
\L1[18].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__0_n_0\,
      Q => data_r_OBUF(5),
      R => '0'
    );
\L1[18].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__0_n_0\,
      Q => data_r_OBUF(6),
      R => '0'
    );
\L1[18].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__0_n_0\,
      Q => data_r_OBUF(7),
      R => '0'
    );
\L1[18].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__0_n_0\,
      Q => data_r_OBUF(8),
      R => '0'
    );
\L1[18].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__0_n_0\,
      Q => data_r_OBUF(9),
      R => '0'
    );
\L1[19].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => g0_b0_n_0,
      Q => data_r_OBUF(0),
      R => '0'
    );
\L1[19].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => g0_b1_n_0,
      Q => data_r_OBUF(1),
      R => '0'
    );
\L1[19].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => g0_b2_n_0,
      Q => data_r_OBUF(2),
      R => '0'
    );
\L1[19].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => g0_b3_n_0,
      Q => data_r_OBUF(3),
      R => '0'
    );
\L1[19].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => g0_b4_n_0,
      Q => data_r_OBUF(4),
      R => '0'
    );
\L1[1].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__17_n_0\,
      Q => data_r_OBUF(23),
      R => '0'
    );
\L1[1].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__17_n_0\,
      Q => data_r_OBUF(91),
      R => '0'
    );
\L1[1].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__13_n_0\,
      Q => data_r_OBUF(92),
      R => '0'
    );
\L1[1].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__14_n_0\,
      Q => data_r_OBUF(93),
      R => '0'
    );
\L1[2].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__15_n_0\,
      Q => data_r_OBUF(85),
      R => '0'
    );
\L1[2].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__16_n_0\,
      Q => data_r_OBUF(86),
      R => '0'
    );
\L1[2].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__12_n_0\,
      Q => data_r_OBUF(87),
      R => '0'
    );
\L1[2].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__13_n_0\,
      Q => data_r_OBUF(88),
      R => '0'
    );
\L1[2].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__12_n_0\,
      Q => data_r_OBUF(89),
      R => '0'
    );
\L1[3].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__14_n_0\,
      Q => data_r_OBUF(80),
      R => '0'
    );
\L1[3].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__15_n_0\,
      Q => data_r_OBUF(81),
      R => '0'
    );
\L1[3].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__11_n_0\,
      Q => data_r_OBUF(82),
      R => '0'
    );
\L1[3].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__12_n_0\,
      Q => data_r_OBUF(83),
      R => '0'
    );
\L1[3].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__11_n_0\,
      Q => data_r_OBUF(84),
      R => '0'
    );
\L1[4].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__13_n_0\,
      Q => data_r_OBUF(75),
      R => '0'
    );
\L1[4].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__14_n_0\,
      Q => data_r_OBUF(76),
      R => '0'
    );
\L1[4].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__10_n_0\,
      Q => data_r_OBUF(77),
      R => '0'
    );
\L1[4].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__11_n_0\,
      Q => data_r_OBUF(78),
      R => '0'
    );
\L1[5].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__12_n_0\,
      Q => data_r_OBUF(70),
      R => '0'
    );
\L1[5].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__13_n_0\,
      Q => data_r_OBUF(71),
      R => '0'
    );
\L1[5].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__9_n_0\,
      Q => data_r_OBUF(72),
      R => '0'
    );
\L1[5].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__10_n_0\,
      Q => data_r_OBUF(73),
      R => '0'
    );
\L1[5].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__10_n_0\,
      Q => data_r_OBUF(74),
      R => '0'
    );
\L1[6].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__11_n_0\,
      Q => data_r_OBUF(65),
      R => '0'
    );
\L1[6].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__12_n_0\,
      Q => data_r_OBUF(66),
      R => '0'
    );
\L1[6].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__8_n_0\,
      Q => data_r_OBUF(67),
      R => '0'
    );
\L1[6].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__9_n_0\,
      Q => data_r_OBUF(68),
      R => '0'
    );
\L1[6].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__9_n_0\,
      Q => data_r_OBUF(69),
      R => '0'
    );
\L1[7].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__10_n_0\,
      Q => data_r_OBUF(60),
      R => '0'
    );
\L1[7].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__11_n_0\,
      Q => data_r_OBUF(61),
      R => '0'
    );
\L1[8].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__9_n_0\,
      Q => data_r_OBUF(55),
      R => '0'
    );
\L1[8].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__10_n_0\,
      Q => data_r_OBUF(56),
      R => '0'
    );
\L1[8].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__7_n_0\,
      Q => data_r_OBUF(57),
      R => '0'
    );
\L1[8].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__8_n_0\,
      Q => data_r_OBUF(58),
      R => '0'
    );
\L1[9].lut/R_LUT_cpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b0__18_n_0\,
      Q => data_r_OBUF(27),
      R => '0'
    );
\L1[9].lut/R_LUT_cpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b1__9_n_0\,
      Q => data_r_OBUF(51),
      R => '0'
    );
\L1[9].lut/R_LUT_cpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b2__6_n_0\,
      Q => data_r_OBUF(52),
      R => '0'
    );
\L1[9].lut/R_LUT_cpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b3__7_n_0\,
      Q => data_r_OBUF(53),
      R => '0'
    );
\L1[9].lut/R_LUT_cpx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => '1',
      D => \g0_b4__8_n_0\,
      Q => data_r_OBUF(54),
      R => '0'
    );
\addr_r_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addr_r(0),
      O => addr_r_IBUF(0)
    );
\addr_r_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addr_r(1),
      O => addr_r_IBUF(1)
    );
\addr_r_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addr_r(2),
      O => addr_r_IBUF(2)
    );
\addr_r_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => addr_r(3),
      O => addr_r_IBUF(3)
    );
\data_r_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(0),
      O => data_r(0)
    );
\data_r_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(10),
      O => data_r(10)
    );
\data_r_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(11),
      O => data_r(11)
    );
\data_r_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(12),
      O => data_r(12)
    );
\data_r_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(13),
      O => data_r(13)
    );
\data_r_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(14),
      O => data_r(14)
    );
\data_r_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(15),
      O => data_r(15)
    );
\data_r_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(16),
      O => data_r(16)
    );
\data_r_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(17),
      O => data_r(17)
    );
\data_r_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(18),
      O => data_r(18)
    );
\data_r_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(19),
      O => data_r(19)
    );
\data_r_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(1),
      O => data_r(1)
    );
\data_r_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(20),
      O => data_r(20)
    );
\data_r_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(21),
      O => data_r(21)
    );
\data_r_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(12),
      O => data_r(22)
    );
\data_r_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(23),
      O => data_r(23)
    );
\data_r_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(24),
      O => data_r(24)
    );
\data_r_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(25),
      O => data_r(25)
    );
\data_r_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(26),
      O => data_r(26)
    );
\data_r_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(27),
      O => data_r(27)
    );
\data_r_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(28),
      O => data_r(28)
    );
\data_r_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(29),
      O => data_r(29)
    );
\data_r_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(2),
      O => data_r(2)
    );
\data_r_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(30),
      O => data_r(30)
    );
\data_r_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(31),
      O => data_r(31)
    );
\data_r_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(32),
      O => data_r(32)
    );
\data_r_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(33),
      O => data_r(33)
    );
\data_r_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(34),
      O => data_r(34)
    );
\data_r_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(35),
      O => data_r(35)
    );
\data_r_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(36),
      O => data_r(36)
    );
\data_r_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(37),
      O => data_r(37)
    );
\data_r_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(38),
      O => data_r(38)
    );
\data_r_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(39),
      O => data_r(39)
    );
\data_r_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(3),
      O => data_r(3)
    );
\data_r_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(40),
      O => data_r(40)
    );
\data_r_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(41),
      O => data_r(41)
    );
\data_r_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(42),
      O => data_r(42)
    );
\data_r_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(42),
      O => data_r(43)
    );
\data_r_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(42),
      O => data_r(44)
    );
\data_r_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(45),
      O => data_r(45)
    );
\data_r_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(46),
      O => data_r(46)
    );
\data_r_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(47),
      O => data_r(47)
    );
\data_r_OBUF[48]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(48),
      O => data_r(48)
    );
\data_r_OBUF[49]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(49),
      O => data_r(49)
    );
\data_r_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(4),
      O => data_r(4)
    );
\data_r_OBUF[50]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(27),
      O => data_r(50)
    );
\data_r_OBUF[51]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(51),
      O => data_r(51)
    );
\data_r_OBUF[52]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(52),
      O => data_r(52)
    );
\data_r_OBUF[53]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(53),
      O => data_r(53)
    );
\data_r_OBUF[54]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(54),
      O => data_r(54)
    );
\data_r_OBUF[55]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(55),
      O => data_r(55)
    );
\data_r_OBUF[56]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(56),
      O => data_r(56)
    );
\data_r_OBUF[57]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(57),
      O => data_r(57)
    );
\data_r_OBUF[58]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(58),
      O => data_r(58)
    );
\data_r_OBUF[59]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(58),
      O => data_r(59)
    );
\data_r_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(5),
      O => data_r(5)
    );
\data_r_OBUF[60]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(60),
      O => data_r(60)
    );
\data_r_OBUF[61]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(61),
      O => data_r(61)
    );
\data_r_OBUF[62]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(61),
      O => data_r(62)
    );
\data_r_OBUF[63]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(61),
      O => data_r(63)
    );
\data_r_OBUF[64]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(61),
      O => data_r(64)
    );
\data_r_OBUF[65]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(65),
      O => data_r(65)
    );
\data_r_OBUF[66]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(66),
      O => data_r(66)
    );
\data_r_OBUF[67]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(67),
      O => data_r(67)
    );
\data_r_OBUF[68]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(68),
      O => data_r(68)
    );
\data_r_OBUF[69]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(69),
      O => data_r(69)
    );
\data_r_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(6),
      O => data_r(6)
    );
\data_r_OBUF[70]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(70),
      O => data_r(70)
    );
\data_r_OBUF[71]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(71),
      O => data_r(71)
    );
\data_r_OBUF[72]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(72),
      O => data_r(72)
    );
\data_r_OBUF[73]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(73),
      O => data_r(73)
    );
\data_r_OBUF[74]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(74),
      O => data_r(74)
    );
\data_r_OBUF[75]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(75),
      O => data_r(75)
    );
\data_r_OBUF[76]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(76),
      O => data_r(76)
    );
\data_r_OBUF[77]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(77),
      O => data_r(77)
    );
\data_r_OBUF[78]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(78),
      O => data_r(78)
    );
\data_r_OBUF[79]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(78),
      O => data_r(79)
    );
\data_r_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(7),
      O => data_r(7)
    );
\data_r_OBUF[80]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(80),
      O => data_r(80)
    );
\data_r_OBUF[81]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(81),
      O => data_r(81)
    );
\data_r_OBUF[82]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(82),
      O => data_r(82)
    );
\data_r_OBUF[83]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(83),
      O => data_r(83)
    );
\data_r_OBUF[84]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(84),
      O => data_r(84)
    );
\data_r_OBUF[85]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(85),
      O => data_r(85)
    );
\data_r_OBUF[86]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(86),
      O => data_r(86)
    );
\data_r_OBUF[87]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(87),
      O => data_r(87)
    );
\data_r_OBUF[88]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(88),
      O => data_r(88)
    );
\data_r_OBUF[89]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(89),
      O => data_r(89)
    );
\data_r_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(8),
      O => data_r(8)
    );
\data_r_OBUF[90]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(23),
      O => data_r(90)
    );
\data_r_OBUF[91]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(91),
      O => data_r(91)
    );
\data_r_OBUF[92]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(92),
      O => data_r(92)
    );
\data_r_OBUF[93]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(93),
      O => data_r(93)
    );
\data_r_OBUF[94]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(93),
      O => data_r(94)
    );
\data_r_OBUF[95]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(95),
      O => data_r(95)
    );
\data_r_OBUF[96]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(96),
      O => data_r(96)
    );
\data_r_OBUF[97]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(97),
      O => data_r(97)
    );
\data_r_OBUF[98]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(98),
      O => data_r(98)
    );
\data_r_OBUF[99]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(99),
      O => data_r(99)
    );
\data_r_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_r_OBUF(9),
      O => data_r(9)
    );
g0_b0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"030D"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"025A"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__1_n_0\
    );
\g0_b0__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"028A"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__10_n_0\
    );
\g0_b0__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01EC"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__11_n_0\
    );
\g0_b0__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0214"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__12_n_0\
    );
\g0_b0__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => addr_r_IBUF(1),
      I1 => addr_r_IBUF(2),
      I2 => addr_r_IBUF(3),
      O => \g0_b0__13_n_0\
    );
\g0_b0__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02D5"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__14_n_0\
    );
\g0_b0__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"032D"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__15_n_0\
    );
\g0_b0__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0238"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__16_n_0\
    );
\g0_b0__17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0148"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__17_n_0\
    );
\g0_b0__18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0267"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__18_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__2_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(2),
      I2 => addr_r_IBUF(3),
      O => \g0_b0__3_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0064"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__4_n_0\
    );
\g0_b0__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__5_n_0\
    );
\g0_b0__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C7"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__6_n_0\
    );
\g0_b0__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B3"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__7_n_0\
    );
\g0_b0__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"031C"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__8_n_0\
    );
\g0_b0__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0289"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b0__9_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03A3"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => g0_b1_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0217"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"034F"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__1_n_0\
    );
\g0_b1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01B3"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__10_n_0\
    );
\g0_b1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C8"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__11_n_0\
    );
\g0_b1__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A7"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__12_n_0\
    );
\g0_b1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__13_n_0\
    );
\g0_b1__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"037C"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__14_n_0\
    );
\g0_b1__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"031A"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__15_n_0\
    );
\g0_b1__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0130"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__16_n_0\
    );
\g0_b1__17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02EF"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__17_n_0\
    );
\g0_b1__18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0035"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__18_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0025"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__2_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"013C"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__3_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"026E"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__4_n_0\
    );
\g0_b1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0170"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__5_n_0\
    );
\g0_b1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"037A"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__6_n_0\
    );
\g0_b1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02B9"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__7_n_0\
    );
\g0_b1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A4"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__8_n_0\
    );
\g0_b1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"032C"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b1__9_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03EC"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01AD"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__1_n_0\
    );
\g0_b2__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"028D"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__10_n_0\
    );
\g0_b2__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0122"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__11_n_0\
    );
\g0_b2__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"013F"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__12_n_0\
    );
\g0_b2__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02DC"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__13_n_0\
    );
\g0_b2__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"028E"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__14_n_0\
    );
\g0_b2__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03D3"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__16_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0337"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__2_n_0\
    );
\g0_b2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0236"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__3_n_0\
    );
\g0_b2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02B1"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__4_n_0\
    );
\g0_b2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02E8"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__5_n_0\
    );
\g0_b2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02D0"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__6_n_0\
    );
\g0_b2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0196"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__7_n_0\
    );
\g0_b2__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01D0"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__8_n_0\
    );
\g0_b2__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A5"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b2__9_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"017B"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C1"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0119"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__1_n_0\
    );
\g0_b3__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0345"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__10_n_0\
    );
\g0_b3__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0272"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__11_n_0\
    );
\g0_b3__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FB"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__12_n_0\
    );
\g0_b3__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0323"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__13_n_0\
    );
\g0_b3__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0370"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__14_n_0\
    );
\g0_b3__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"039E"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__15_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005C"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__2_n_0\
    );
\g0_b3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C1"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__3_n_0\
    );
\g0_b3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"027B"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__4_n_0\
    );
\g0_b3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0142"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__5_n_0\
    );
\g0_b3__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0104"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__6_n_0\
    );
\g0_b3__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02F6"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__7_n_0\
    );
\g0_b3__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01B1"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__8_n_0\
    );
\g0_b3__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022A"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b3__9_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"016B"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03C1"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0319"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__1_n_0\
    );
\g0_b4__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0265"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__10_n_0\
    );
\g0_b4__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02BA"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__11_n_0\
    );
\g0_b4__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0127"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__12_n_0\
    );
\g0_b4__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"029E"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__13_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004D"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__2_n_0\
    );
\g0_b4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0158"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__3_n_0\
    );
\g0_b4__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C5"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__4_n_0\
    );
\g0_b4__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0273"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__5_n_0\
    );
\g0_b4__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0152"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__6_n_0\
    );
\g0_b4__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0304"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__7_n_0\
    );
\g0_b4__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02D6"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(1),
      I2 => addr_r_IBUF(2),
      I3 => addr_r_IBUF(3),
      O => \g0_b4__8_n_0\
    );
\g0_b4__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addr_r_IBUF(0),
      I1 => addr_r_IBUF(3),
      O => \g0_b4__9_n_0\
    );
end STRUCTURE;
