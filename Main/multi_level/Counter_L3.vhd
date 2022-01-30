-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
-- Date        : Wed Oct  6 17:51:12 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force ./Counter_L3_synth.vhd
-- Design      : Counter_L3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_L3 is
  port (
    I_clk : in STD_LOGIC;
    I_rst : in STD_LOGIC;
    I_N_3_en : in STD_LOGIC;
    I_clean_N : in STD_LOGIC;
    O_N_3 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Counter_L3 : entity is true;
end Counter_L3;

architecture STRUCTURE of Counter_L3 is
  signal \Counter_10/temp_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_10/temp_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_10/temp_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_10/temp_value[3]_i_2_n_0\ : STD_LOGIC;
  signal \Counter_10/temp_value[3]_i_3_n_0\ : STD_LOGIC;
  signal I_N_3_en_IBUF : STD_LOGIC;
  signal I_clean_N_IBUF : STD_LOGIC;
  signal I_clk_IBUF : STD_LOGIC;
  signal I_clk_IBUF_BUFG : STD_LOGIC;
  signal I_rst_IBUF : STD_LOGIC;
  signal O_N_3_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_value[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Counter_10/temp_value[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Counter_10/temp_value[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Counter_10/temp_value[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Counter_10/temp_value[3]_i_2\ : label is "soft_lutpair0";
begin
\Counter_10/temp_value[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => O_N_3_OBUF(0),
      I1 => O_N_3_OBUF(2),
      I2 => O_N_3_OBUF(3),
      I3 => I_clean_N_IBUF,
      O => \Counter_10/temp_value[0]_i_1_n_0\
    );
\Counter_10/temp_value[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000770"
    )
        port map (
      I0 => O_N_3_OBUF(2),
      I1 => O_N_3_OBUF(3),
      I2 => O_N_3_OBUF(0),
      I3 => O_N_3_OBUF(1),
      I4 => I_clean_N_IBUF,
      O => \Counter_10/temp_value[1]_i_1_n_0\
    );
\Counter_10/temp_value[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005222"
    )
        port map (
      I0 => O_N_3_OBUF(2),
      I1 => O_N_3_OBUF(3),
      I2 => O_N_3_OBUF(0),
      I3 => O_N_3_OBUF(1),
      I4 => I_clean_N_IBUF,
      O => \Counter_10/temp_value[2]_i_1_n_0\
    );
\Counter_10/temp_value[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006444"
    )
        port map (
      I0 => O_N_3_OBUF(2),
      I1 => O_N_3_OBUF(3),
      I2 => O_N_3_OBUF(1),
      I3 => O_N_3_OBUF(0),
      I4 => I_clean_N_IBUF,
      O => \Counter_10/temp_value[3]_i_2_n_0\
    );
\Counter_10/temp_value[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_rst_IBUF,
      O => \Counter_10/temp_value[3]_i_3_n_0\
    );
\Counter_10/temp_value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[3]_i_1_n_0\,
      CLR => \Counter_10/temp_value[3]_i_3_n_0\,
      D => \Counter_10/temp_value[0]_i_1_n_0\,
      Q => O_N_3_OBUF(0)
    );
\Counter_10/temp_value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[3]_i_1_n_0\,
      CLR => \Counter_10/temp_value[3]_i_3_n_0\,
      D => \Counter_10/temp_value[1]_i_1_n_0\,
      Q => O_N_3_OBUF(1)
    );
\Counter_10/temp_value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[3]_i_1_n_0\,
      CLR => \Counter_10/temp_value[3]_i_3_n_0\,
      D => \Counter_10/temp_value[2]_i_1_n_0\,
      Q => O_N_3_OBUF(2)
    );
\Counter_10/temp_value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I_clk_IBUF_BUFG,
      CE => \temp_value[3]_i_1_n_0\,
      CLR => \Counter_10/temp_value[3]_i_3_n_0\,
      D => \Counter_10/temp_value[3]_i_2_n_0\,
      Q => O_N_3_OBUF(3)
    );
I_N_3_en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_N_3_en,
      O => I_N_3_en_IBUF
    );
I_clean_N_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I_clean_N,
      O => I_clean_N_IBUF
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
\O_N_3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_3_OBUF(0),
      O => O_N_3(0)
    );
\O_N_3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_3_OBUF(1),
      O => O_N_3(1)
    );
\O_N_3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_3_OBUF(2),
      O => O_N_3(2)
    );
\O_N_3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => O_N_3_OBUF(3),
      O => O_N_3(3)
    );
\temp_value[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I_clean_N_IBUF,
      I1 => I_N_3_en_IBUF,
      O => \temp_value[3]_i_1_n_0\
    );
end STRUCTURE;
