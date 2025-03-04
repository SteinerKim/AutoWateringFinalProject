-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Feb 12 17:14:25 2025
-- Host        : PDXKSTEINER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/projects/kim/ECE544/projectFinal/projectFinal.gen/sources_1/bd/embsys/ip/embsys_PWM_Analyzer_0_0/embsys_PWM_Analyzer_0_0_sim_netlist.vhdl
-- Design      : embsys_PWM_Analyzer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PWM_Analyzer_0_0_pulseLength is
  port (
    slv_reg2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pw_high_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    pwm_clean : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PWM_Analyzer_0_0_pulseLength : entity is "pulseLength";
end embsys_PWM_Analyzer_0_0_pulseLength;

architecture STRUCTURE of embsys_PWM_Analyzer_0_0_pulseLength is
  signal \^q\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal count_clk0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_clk0[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[13]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[14]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[17]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[18]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[19]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[21]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[22]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[23]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[25]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[26]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[27]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[29]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_10_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_11_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_3_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_4_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_5_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_7_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_8_n_0\ : STD_LOGIC;
  signal \count_clk0[30]_i_9_n_0\ : STD_LOGIC;
  signal \count_clk0[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[30]_i_6_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk0_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk0_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk0_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_clk0_reg_n_0_[9]\ : STD_LOGIC;
  signal count_clk1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_clk1[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[13]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[14]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[17]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[18]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[19]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[21]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[22]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[23]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[25]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[26]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[27]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[29]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_10_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_11_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_3_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_4_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_5_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_7_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_8_n_0\ : STD_LOGIC;
  signal \count_clk1[30]_i_9_n_0\ : STD_LOGIC;
  signal \count_clk1[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[30]_i_6_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_clk1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_clk1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_clk1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_clk1_reg_n_0_[9]\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal in8 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pw_high[30]_i_1_n_0\ : STD_LOGIC;
  signal \^pw_high_reg[30]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \pw_low[30]_i_1_n_0\ : STD_LOGIC;
  signal pwm_prev : STD_LOGIC;
  signal \NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_clk0_reg[30]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_clk0_reg[30]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_clk1_reg[30]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_clk1_reg[30]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_ps[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_ps[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_ps_reg[0]\ : label is "init:00,first:01,high:11,low:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ps_reg[1]\ : label is "init:00,first:01,high:11,low:10";
  attribute SOFT_HLUTNM of \count_clk0[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_clk0[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_clk0[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_clk0[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_clk0[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_clk0[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_clk0[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_clk0[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_clk0[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_clk0[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_clk0[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_clk0[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_clk0[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_clk0[22]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_clk0[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_clk0[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_clk0[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_clk0[26]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_clk0[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_clk0[28]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_clk0[29]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_clk0[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_clk0[30]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_clk0[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_clk0[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_clk0[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_clk0[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_clk0[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_clk0[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_clk0[9]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_clk0_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[30]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk0_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \count_clk1[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_clk1[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_clk1[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_clk1[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_clk1[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_clk1[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_clk1[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_clk1[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_clk1[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_clk1[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_clk1[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_clk1[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_clk1[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_clk1[22]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_clk1[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_clk1[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_clk1[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_clk1[26]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_clk1[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_clk1[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_clk1[29]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_clk1[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_clk1[30]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_clk1[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_clk1[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_clk1[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_clk1[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_clk1[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_clk1[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_clk1[9]_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD of \count_clk1_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[30]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_clk1_reg[8]_i_2\ : label is 35;
begin
  Q(30 downto 0) <= \^q\(30 downto 0);
  SR(0) <= \^sr\(0);
  \pw_high_reg[30]_0\(30 downto 0) <= \^pw_high_reg[30]_0\(30 downto 0);
\FSM_sequential_ps[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F2"
    )
        port map (
      I0 => ps(0),
      I1 => ps(1),
      I2 => pwm_clean,
      I3 => pwm_prev,
      O => ns(0)
    );
\FSM_sequential_ps[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => ps(1),
      I1 => pwm_clean,
      I2 => pwm_prev,
      I3 => ps(0),
      O => ns(1)
    );
\FSM_sequential_ps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ns(0),
      Q => ps(0),
      R => \^sr\(0)
    );
\FSM_sequential_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ns(1),
      Q => ps(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^pw_high_reg[30]_0\(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^pw_high_reg[30]_0\(10),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^pw_high_reg[30]_0\(9),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^pw_high_reg[30]_0\(8),
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^pw_high_reg[30]_0\(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^pw_high_reg[30]_0\(14),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^pw_high_reg[30]_0\(13),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^pw_high_reg[30]_0\(12),
      O => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^pw_high_reg[30]_0\(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^pw_high_reg[30]_0\(18),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^pw_high_reg[30]_0\(17),
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^pw_high_reg[30]_0\(16),
      O => \axi_rdata[19]_i_6_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^pw_high_reg[30]_0\(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^pw_high_reg[30]_0\(22),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^pw_high_reg[30]_0\(21),
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^pw_high_reg[30]_0\(20),
      O => \axi_rdata[23]_i_6_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^pw_high_reg[30]_0\(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^pw_high_reg[30]_0\(26),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^pw_high_reg[30]_0\(25),
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^pw_high_reg[30]_0\(24),
      O => \axi_rdata[27]_i_6_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^pw_high_reg[30]_0\(30),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^pw_high_reg[30]_0\(29),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^pw_high_reg[30]_0\(28),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^pw_high_reg[30]_0\(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^pw_high_reg[30]_0\(2),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^pw_high_reg[30]_0\(1),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^pw_high_reg[30]_0\(0),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^pw_high_reg[30]_0\(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^pw_high_reg[30]_0\(6),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^pw_high_reg[30]_0\(5),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^pw_high_reg[30]_0\(4),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[7]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[11]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[11]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[11]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => slv_reg2(11 downto 8),
      S(3) => \axi_rdata[11]_i_3_n_0\,
      S(2) => \axi_rdata[11]_i_4_n_0\,
      S(1) => \axi_rdata[11]_i_5_n_0\,
      S(0) => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[11]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[15]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[15]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[15]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3 downto 0) => slv_reg2(15 downto 12),
      S(3) => \axi_rdata[15]_i_3_n_0\,
      S(2) => \axi_rdata[15]_i_4_n_0\,
      S(1) => \axi_rdata[15]_i_5_n_0\,
      S(0) => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[15]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[19]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[19]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[19]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(19 downto 16),
      O(3 downto 0) => slv_reg2(19 downto 16),
      S(3) => \axi_rdata[19]_i_3_n_0\,
      S(2) => \axi_rdata[19]_i_4_n_0\,
      S(1) => \axi_rdata[19]_i_5_n_0\,
      S(0) => \axi_rdata[19]_i_6_n_0\
    );
\axi_rdata_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[19]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[23]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[23]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[23]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(23 downto 20),
      O(3 downto 0) => slv_reg2(23 downto 20),
      S(3) => \axi_rdata[23]_i_3_n_0\,
      S(2) => \axi_rdata[23]_i_4_n_0\,
      S(1) => \axi_rdata[23]_i_5_n_0\,
      S(0) => \axi_rdata[23]_i_6_n_0\
    );
\axi_rdata_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[23]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[27]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[27]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[27]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(27 downto 24),
      O(3 downto 0) => slv_reg2(27 downto 24),
      S(3) => \axi_rdata[27]_i_3_n_0\,
      S(2) => \axi_rdata[27]_i_4_n_0\,
      S(1) => \axi_rdata[27]_i_5_n_0\,
      S(0) => \axi_rdata[27]_i_6_n_0\
    );
\axi_rdata_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[27]_i_2_n_0\,
      CO(3) => slv_reg2(31),
      CO(2) => \NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED\(2),
      CO(1) => \axi_rdata_reg[31]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(30 downto 28),
      O(3) => \NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => slv_reg2(30 downto 28),
      S(3) => '1',
      S(2) => \axi_rdata[31]_i_3_n_0\,
      S(1) => \axi_rdata[31]_i_4_n_0\,
      S(0) => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_rdata_reg[3]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[3]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[3]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => slv_reg2(3 downto 0),
      S(3) => \axi_rdata[3]_i_3_n_0\,
      S(2) => \axi_rdata[3]_i_4_n_0\,
      S(1) => \axi_rdata[3]_i_5_n_0\,
      S(0) => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_rdata_reg[3]_i_2_n_0\,
      CO(3) => \axi_rdata_reg[7]_i_2_n_0\,
      CO(2) => \axi_rdata_reg[7]_i_2_n_1\,
      CO(1) => \axi_rdata_reg[7]_i_2_n_2\,
      CO(0) => \axi_rdata_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => slv_reg2(7 downto 4),
      S(3) => \axi_rdata[7]_i_3_n_0\,
      S(2) => \axi_rdata[7]_i_4_n_0\,
      S(1) => \axi_rdata[7]_i_5_n_0\,
      S(0) => \axi_rdata[7]_i_6_n_0\
    );
\count_clk0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => \count_clk0_reg_n_0_[0]\,
      O => count_clk0(0)
    );
\count_clk0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(10),
      O => \count_clk0[10]_i_1_n_0\
    );
\count_clk0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(11),
      O => \count_clk0[11]_i_1_n_0\
    );
\count_clk0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(12),
      O => \count_clk0[12]_i_1_n_0\
    );
\count_clk0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(13),
      O => \count_clk0[13]_i_1_n_0\
    );
\count_clk0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(14),
      O => \count_clk0[14]_i_1_n_0\
    );
\count_clk0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(15),
      O => \count_clk0[15]_i_1_n_0\
    );
\count_clk0[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(16),
      O => \count_clk0[16]_i_1_n_0\
    );
\count_clk0[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(17),
      O => \count_clk0[17]_i_1_n_0\
    );
\count_clk0[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(18),
      O => \count_clk0[18]_i_1_n_0\
    );
\count_clk0[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(19),
      O => \count_clk0[19]_i_1_n_0\
    );
\count_clk0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(1),
      O => \count_clk0[1]_i_1_n_0\
    );
\count_clk0[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(20),
      O => \count_clk0[20]_i_1_n_0\
    );
\count_clk0[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(21),
      O => \count_clk0[21]_i_1_n_0\
    );
\count_clk0[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(22),
      O => \count_clk0[22]_i_1_n_0\
    );
\count_clk0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(23),
      O => \count_clk0[23]_i_1_n_0\
    );
\count_clk0[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(24),
      O => \count_clk0[24]_i_1_n_0\
    );
\count_clk0[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(25),
      O => \count_clk0[25]_i_1_n_0\
    );
\count_clk0[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(26),
      O => \count_clk0[26]_i_1_n_0\
    );
\count_clk0[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(27),
      O => \count_clk0[27]_i_1_n_0\
    );
\count_clk0[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(28),
      O => \count_clk0[28]_i_1_n_0\
    );
\count_clk0[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(29),
      O => \count_clk0[29]_i_1_n_0\
    );
\count_clk0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(2),
      O => \count_clk0[2]_i_1_n_0\
    );
\count_clk0[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD1FFFFFFFF"
    )
        port map (
      I0 => pwm_clean,
      I1 => ps(1),
      I2 => \count_clk0[30]_i_3_n_0\,
      I3 => \count_clk0[30]_i_4_n_0\,
      I4 => \count_clk0[30]_i_5_n_0\,
      I5 => ps(0),
      O => \count_clk0[30]_i_1_n_0\
    );
\count_clk0[30]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[12]\,
      I1 => \count_clk0_reg_n_0_[11]\,
      I2 => \count_clk0_reg_n_0_[14]\,
      I3 => \count_clk0_reg_n_0_[13]\,
      O => \count_clk0[30]_i_10_n_0\
    );
\count_clk0[30]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[8]\,
      I1 => \count_clk0_reg_n_0_[7]\,
      I2 => \count_clk0_reg_n_0_[10]\,
      I3 => \count_clk0_reg_n_0_[9]\,
      O => \count_clk0[30]_i_11_n_0\
    );
\count_clk0[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(30),
      O => \count_clk0[30]_i_2_n_0\
    );
\count_clk0[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[17]\,
      I1 => \count_clk0_reg_n_0_[18]\,
      I2 => \count_clk0_reg_n_0_[15]\,
      I3 => \count_clk0_reg_n_0_[16]\,
      I4 => \count_clk0[30]_i_7_n_0\,
      O => \count_clk0[30]_i_3_n_0\
    );
\count_clk0[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[25]\,
      I1 => \count_clk0_reg_n_0_[26]\,
      I2 => \count_clk0_reg_n_0_[23]\,
      I3 => \count_clk0_reg_n_0_[24]\,
      I4 => \count_clk0[30]_i_8_n_0\,
      O => \count_clk0[30]_i_4_n_0\
    );
\count_clk0[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \count_clk0[30]_i_9_n_0\,
      I1 => \count_clk0_reg_n_0_[0]\,
      I2 => \count_clk0_reg_n_0_[2]\,
      I3 => \count_clk0_reg_n_0_[1]\,
      I4 => \count_clk0[30]_i_10_n_0\,
      I5 => \count_clk0[30]_i_11_n_0\,
      O => \count_clk0[30]_i_5_n_0\
    );
\count_clk0[30]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[20]\,
      I1 => \count_clk0_reg_n_0_[19]\,
      I2 => \count_clk0_reg_n_0_[22]\,
      I3 => \count_clk0_reg_n_0_[21]\,
      O => \count_clk0[30]_i_7_n_0\
    );
\count_clk0[30]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[28]\,
      I1 => \count_clk0_reg_n_0_[27]\,
      I2 => \count_clk0_reg_n_0_[30]\,
      I3 => \count_clk0_reg_n_0_[29]\,
      O => \count_clk0[30]_i_8_n_0\
    );
\count_clk0[30]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk0_reg_n_0_[4]\,
      I1 => \count_clk0_reg_n_0_[3]\,
      I2 => \count_clk0_reg_n_0_[6]\,
      I3 => \count_clk0_reg_n_0_[5]\,
      O => \count_clk0[30]_i_9_n_0\
    );
\count_clk0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(3),
      O => \count_clk0[3]_i_1_n_0\
    );
\count_clk0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(4),
      O => \count_clk0[4]_i_1_n_0\
    );
\count_clk0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(5),
      O => \count_clk0[5]_i_1_n_0\
    );
\count_clk0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(6),
      O => \count_clk0[6]_i_1_n_0\
    );
\count_clk0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(7),
      O => \count_clk0[7]_i_1_n_0\
    );
\count_clk0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(8),
      O => \count_clk0[8]_i_1_n_0\
    );
\count_clk0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => in10(9),
      O => \count_clk0[9]_i_1_n_0\
    );
\count_clk0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => count_clk0(0),
      Q => \count_clk0_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\count_clk0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[10]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\count_clk0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[11]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\count_clk0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[12]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\count_clk0_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[8]_i_2_n_0\,
      CO(3) => \count_clk0_reg[12]_i_2_n_0\,
      CO(2) => \count_clk0_reg[12]_i_2_n_1\,
      CO(1) => \count_clk0_reg[12]_i_2_n_2\,
      CO(0) => \count_clk0_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(12 downto 9),
      S(3) => \count_clk0_reg_n_0_[12]\,
      S(2) => \count_clk0_reg_n_0_[11]\,
      S(1) => \count_clk0_reg_n_0_[10]\,
      S(0) => \count_clk0_reg_n_0_[9]\
    );
\count_clk0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[13]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\count_clk0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[14]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\count_clk0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[15]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\count_clk0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[16]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\count_clk0_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[12]_i_2_n_0\,
      CO(3) => \count_clk0_reg[16]_i_2_n_0\,
      CO(2) => \count_clk0_reg[16]_i_2_n_1\,
      CO(1) => \count_clk0_reg[16]_i_2_n_2\,
      CO(0) => \count_clk0_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(16 downto 13),
      S(3) => \count_clk0_reg_n_0_[16]\,
      S(2) => \count_clk0_reg_n_0_[15]\,
      S(1) => \count_clk0_reg_n_0_[14]\,
      S(0) => \count_clk0_reg_n_0_[13]\
    );
\count_clk0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[17]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\count_clk0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[18]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\count_clk0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[19]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\count_clk0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[1]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\count_clk0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[20]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\count_clk0_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[16]_i_2_n_0\,
      CO(3) => \count_clk0_reg[20]_i_2_n_0\,
      CO(2) => \count_clk0_reg[20]_i_2_n_1\,
      CO(1) => \count_clk0_reg[20]_i_2_n_2\,
      CO(0) => \count_clk0_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(20 downto 17),
      S(3) => \count_clk0_reg_n_0_[20]\,
      S(2) => \count_clk0_reg_n_0_[19]\,
      S(1) => \count_clk0_reg_n_0_[18]\,
      S(0) => \count_clk0_reg_n_0_[17]\
    );
\count_clk0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[21]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\count_clk0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[22]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\count_clk0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[23]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\count_clk0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[24]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\count_clk0_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[20]_i_2_n_0\,
      CO(3) => \count_clk0_reg[24]_i_2_n_0\,
      CO(2) => \count_clk0_reg[24]_i_2_n_1\,
      CO(1) => \count_clk0_reg[24]_i_2_n_2\,
      CO(0) => \count_clk0_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(24 downto 21),
      S(3) => \count_clk0_reg_n_0_[24]\,
      S(2) => \count_clk0_reg_n_0_[23]\,
      S(1) => \count_clk0_reg_n_0_[22]\,
      S(0) => \count_clk0_reg_n_0_[21]\
    );
\count_clk0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[25]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\count_clk0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[26]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\count_clk0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[27]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\count_clk0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[28]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\count_clk0_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[24]_i_2_n_0\,
      CO(3) => \count_clk0_reg[28]_i_2_n_0\,
      CO(2) => \count_clk0_reg[28]_i_2_n_1\,
      CO(1) => \count_clk0_reg[28]_i_2_n_2\,
      CO(0) => \count_clk0_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(28 downto 25),
      S(3) => \count_clk0_reg_n_0_[28]\,
      S(2) => \count_clk0_reg_n_0_[27]\,
      S(1) => \count_clk0_reg_n_0_[26]\,
      S(0) => \count_clk0_reg_n_0_[25]\
    );
\count_clk0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[29]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\count_clk0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[2]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\count_clk0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[30]_i_2_n_0\,
      Q => \count_clk0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\count_clk0_reg[30]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[28]_i_2_n_0\,
      CO(3 downto 1) => \NLW_count_clk0_reg[30]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_clk0_reg[30]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_clk0_reg[30]_i_6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in10(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \count_clk0_reg_n_0_[30]\,
      S(0) => \count_clk0_reg_n_0_[29]\
    );
\count_clk0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[3]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\count_clk0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[4]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\count_clk0_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_clk0_reg[4]_i_2_n_0\,
      CO(2) => \count_clk0_reg[4]_i_2_n_1\,
      CO(1) => \count_clk0_reg[4]_i_2_n_2\,
      CO(0) => \count_clk0_reg[4]_i_2_n_3\,
      CYINIT => \count_clk0_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(4 downto 1),
      S(3) => \count_clk0_reg_n_0_[4]\,
      S(2) => \count_clk0_reg_n_0_[3]\,
      S(1) => \count_clk0_reg_n_0_[2]\,
      S(0) => \count_clk0_reg_n_0_[1]\
    );
\count_clk0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[5]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\count_clk0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[6]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\count_clk0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[7]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\count_clk0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[8]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\count_clk0_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk0_reg[4]_i_2_n_0\,
      CO(3) => \count_clk0_reg[8]_i_2_n_0\,
      CO(2) => \count_clk0_reg[8]_i_2_n_1\,
      CO(1) => \count_clk0_reg[8]_i_2_n_2\,
      CO(0) => \count_clk0_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(8 downto 5),
      S(3) => \count_clk0_reg_n_0_[8]\,
      S(2) => \count_clk0_reg_n_0_[7]\,
      S(1) => \count_clk0_reg_n_0_[6]\,
      S(0) => \count_clk0_reg_n_0_[5]\
    );
\count_clk0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk0[30]_i_1_n_0\,
      D => \count_clk0[9]_i_1_n_0\,
      Q => \count_clk0_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\count_clk1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps(0),
      I1 => \count_clk1_reg_n_0_[0]\,
      O => count_clk1(0)
    );
\count_clk1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(10),
      O => \count_clk1[10]_i_1_n_0\
    );
\count_clk1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(11),
      O => \count_clk1[11]_i_1_n_0\
    );
\count_clk1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(12),
      O => \count_clk1[12]_i_1_n_0\
    );
\count_clk1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(13),
      O => \count_clk1[13]_i_1_n_0\
    );
\count_clk1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(14),
      O => \count_clk1[14]_i_1_n_0\
    );
\count_clk1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(15),
      O => \count_clk1[15]_i_1_n_0\
    );
\count_clk1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(16),
      O => \count_clk1[16]_i_1_n_0\
    );
\count_clk1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(17),
      O => \count_clk1[17]_i_1_n_0\
    );
\count_clk1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(18),
      O => \count_clk1[18]_i_1_n_0\
    );
\count_clk1[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(19),
      O => \count_clk1[19]_i_1_n_0\
    );
\count_clk1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(1),
      O => \count_clk1[1]_i_1_n_0\
    );
\count_clk1[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(20),
      O => \count_clk1[20]_i_1_n_0\
    );
\count_clk1[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(21),
      O => \count_clk1[21]_i_1_n_0\
    );
\count_clk1[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(22),
      O => \count_clk1[22]_i_1_n_0\
    );
\count_clk1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(23),
      O => \count_clk1[23]_i_1_n_0\
    );
\count_clk1[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(24),
      O => \count_clk1[24]_i_1_n_0\
    );
\count_clk1[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(25),
      O => \count_clk1[25]_i_1_n_0\
    );
\count_clk1[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(26),
      O => \count_clk1[26]_i_1_n_0\
    );
\count_clk1[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(27),
      O => \count_clk1[27]_i_1_n_0\
    );
\count_clk1[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(28),
      O => \count_clk1[28]_i_1_n_0\
    );
\count_clk1[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(29),
      O => \count_clk1[29]_i_1_n_0\
    );
\count_clk1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(2),
      O => \count_clk1[2]_i_1_n_0\
    );
\count_clk1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFFFCFFFF"
    )
        port map (
      I0 => pwm_clean,
      I1 => \count_clk1[30]_i_3_n_0\,
      I2 => \count_clk1[30]_i_4_n_0\,
      I3 => \count_clk1[30]_i_5_n_0\,
      I4 => ps(1),
      I5 => ps(0),
      O => \count_clk1[30]_i_1_n_0\
    );
\count_clk1[30]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[12]\,
      I1 => \count_clk1_reg_n_0_[11]\,
      I2 => \count_clk1_reg_n_0_[14]\,
      I3 => \count_clk1_reg_n_0_[13]\,
      O => \count_clk1[30]_i_10_n_0\
    );
\count_clk1[30]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[8]\,
      I1 => \count_clk1_reg_n_0_[7]\,
      I2 => \count_clk1_reg_n_0_[10]\,
      I3 => \count_clk1_reg_n_0_[9]\,
      O => \count_clk1[30]_i_11_n_0\
    );
\count_clk1[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(30),
      O => \count_clk1[30]_i_2_n_0\
    );
\count_clk1[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[17]\,
      I1 => \count_clk1_reg_n_0_[18]\,
      I2 => \count_clk1_reg_n_0_[15]\,
      I3 => \count_clk1_reg_n_0_[16]\,
      I4 => \count_clk1[30]_i_7_n_0\,
      O => \count_clk1[30]_i_3_n_0\
    );
\count_clk1[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[25]\,
      I1 => \count_clk1_reg_n_0_[26]\,
      I2 => \count_clk1_reg_n_0_[23]\,
      I3 => \count_clk1_reg_n_0_[24]\,
      I4 => \count_clk1[30]_i_8_n_0\,
      O => \count_clk1[30]_i_4_n_0\
    );
\count_clk1[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \count_clk1[30]_i_9_n_0\,
      I1 => \count_clk1_reg_n_0_[0]\,
      I2 => \count_clk1_reg_n_0_[2]\,
      I3 => \count_clk1_reg_n_0_[1]\,
      I4 => \count_clk1[30]_i_10_n_0\,
      I5 => \count_clk1[30]_i_11_n_0\,
      O => \count_clk1[30]_i_5_n_0\
    );
\count_clk1[30]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[20]\,
      I1 => \count_clk1_reg_n_0_[19]\,
      I2 => \count_clk1_reg_n_0_[22]\,
      I3 => \count_clk1_reg_n_0_[21]\,
      O => \count_clk1[30]_i_7_n_0\
    );
\count_clk1[30]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[28]\,
      I1 => \count_clk1_reg_n_0_[27]\,
      I2 => \count_clk1_reg_n_0_[30]\,
      I3 => \count_clk1_reg_n_0_[29]\,
      O => \count_clk1[30]_i_8_n_0\
    );
\count_clk1[30]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_clk1_reg_n_0_[4]\,
      I1 => \count_clk1_reg_n_0_[3]\,
      I2 => \count_clk1_reg_n_0_[6]\,
      I3 => \count_clk1_reg_n_0_[5]\,
      O => \count_clk1[30]_i_9_n_0\
    );
\count_clk1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(3),
      O => \count_clk1[3]_i_1_n_0\
    );
\count_clk1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(4),
      O => \count_clk1[4]_i_1_n_0\
    );
\count_clk1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(5),
      O => \count_clk1[5]_i_1_n_0\
    );
\count_clk1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(6),
      O => \count_clk1[6]_i_1_n_0\
    );
\count_clk1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(7),
      O => \count_clk1[7]_i_1_n_0\
    );
\count_clk1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(8),
      O => \count_clk1[8]_i_1_n_0\
    );
\count_clk1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ps(0),
      I1 => in8(9),
      O => \count_clk1[9]_i_1_n_0\
    );
\count_clk1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => count_clk1(0),
      Q => \count_clk1_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\count_clk1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[10]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\count_clk1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[11]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\count_clk1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[12]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\count_clk1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[8]_i_2_n_0\,
      CO(3) => \count_clk1_reg[12]_i_2_n_0\,
      CO(2) => \count_clk1_reg[12]_i_2_n_1\,
      CO(1) => \count_clk1_reg[12]_i_2_n_2\,
      CO(0) => \count_clk1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3) => \count_clk1_reg_n_0_[12]\,
      S(2) => \count_clk1_reg_n_0_[11]\,
      S(1) => \count_clk1_reg_n_0_[10]\,
      S(0) => \count_clk1_reg_n_0_[9]\
    );
\count_clk1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[13]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\count_clk1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[14]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\count_clk1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[15]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\count_clk1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[16]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\count_clk1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[12]_i_2_n_0\,
      CO(3) => \count_clk1_reg[16]_i_2_n_0\,
      CO(2) => \count_clk1_reg[16]_i_2_n_1\,
      CO(1) => \count_clk1_reg[16]_i_2_n_2\,
      CO(0) => \count_clk1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(16 downto 13),
      S(3) => \count_clk1_reg_n_0_[16]\,
      S(2) => \count_clk1_reg_n_0_[15]\,
      S(1) => \count_clk1_reg_n_0_[14]\,
      S(0) => \count_clk1_reg_n_0_[13]\
    );
\count_clk1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[17]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\count_clk1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[18]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\count_clk1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[19]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\count_clk1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[1]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\count_clk1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[20]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\count_clk1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[16]_i_2_n_0\,
      CO(3) => \count_clk1_reg[20]_i_2_n_0\,
      CO(2) => \count_clk1_reg[20]_i_2_n_1\,
      CO(1) => \count_clk1_reg[20]_i_2_n_2\,
      CO(0) => \count_clk1_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(20 downto 17),
      S(3) => \count_clk1_reg_n_0_[20]\,
      S(2) => \count_clk1_reg_n_0_[19]\,
      S(1) => \count_clk1_reg_n_0_[18]\,
      S(0) => \count_clk1_reg_n_0_[17]\
    );
\count_clk1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[21]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\count_clk1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[22]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\count_clk1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[23]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\count_clk1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[24]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\count_clk1_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[20]_i_2_n_0\,
      CO(3) => \count_clk1_reg[24]_i_2_n_0\,
      CO(2) => \count_clk1_reg[24]_i_2_n_1\,
      CO(1) => \count_clk1_reg[24]_i_2_n_2\,
      CO(0) => \count_clk1_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(24 downto 21),
      S(3) => \count_clk1_reg_n_0_[24]\,
      S(2) => \count_clk1_reg_n_0_[23]\,
      S(1) => \count_clk1_reg_n_0_[22]\,
      S(0) => \count_clk1_reg_n_0_[21]\
    );
\count_clk1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[25]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\count_clk1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[26]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\count_clk1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[27]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\count_clk1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[28]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\count_clk1_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[24]_i_2_n_0\,
      CO(3) => \count_clk1_reg[28]_i_2_n_0\,
      CO(2) => \count_clk1_reg[28]_i_2_n_1\,
      CO(1) => \count_clk1_reg[28]_i_2_n_2\,
      CO(0) => \count_clk1_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(28 downto 25),
      S(3) => \count_clk1_reg_n_0_[28]\,
      S(2) => \count_clk1_reg_n_0_[27]\,
      S(1) => \count_clk1_reg_n_0_[26]\,
      S(0) => \count_clk1_reg_n_0_[25]\
    );
\count_clk1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[29]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\count_clk1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[2]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\count_clk1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[30]_i_2_n_0\,
      Q => \count_clk1_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\count_clk1_reg[30]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[28]_i_2_n_0\,
      CO(3 downto 1) => \NLW_count_clk1_reg[30]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_clk1_reg[30]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_clk1_reg[30]_i_6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in8(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \count_clk1_reg_n_0_[30]\,
      S(0) => \count_clk1_reg_n_0_[29]\
    );
\count_clk1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[3]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\count_clk1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[4]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\count_clk1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_clk1_reg[4]_i_2_n_0\,
      CO(2) => \count_clk1_reg[4]_i_2_n_1\,
      CO(1) => \count_clk1_reg[4]_i_2_n_2\,
      CO(0) => \count_clk1_reg[4]_i_2_n_3\,
      CYINIT => \count_clk1_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(4 downto 1),
      S(3) => \count_clk1_reg_n_0_[4]\,
      S(2) => \count_clk1_reg_n_0_[3]\,
      S(1) => \count_clk1_reg_n_0_[2]\,
      S(0) => \count_clk1_reg_n_0_[1]\
    );
\count_clk1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[5]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\count_clk1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[6]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\count_clk1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[7]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\count_clk1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[8]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\count_clk1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk1_reg[4]_i_2_n_0\,
      CO(3) => \count_clk1_reg[8]_i_2_n_0\,
      CO(2) => \count_clk1_reg[8]_i_2_n_1\,
      CO(1) => \count_clk1_reg[8]_i_2_n_2\,
      CO(0) => \count_clk1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3) => \count_clk1_reg_n_0_[8]\,
      S(2) => \count_clk1_reg_n_0_[7]\,
      S(1) => \count_clk1_reg_n_0_[6]\,
      S(0) => \count_clk1_reg_n_0_[5]\
    );
\count_clk1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \count_clk1[30]_i_1_n_0\,
      D => \count_clk1[9]_i_1_n_0\,
      Q => \count_clk1_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\pw_high[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \count_clk1[30]_i_3_n_0\,
      I1 => \count_clk1[30]_i_4_n_0\,
      I2 => \count_clk1[30]_i_5_n_0\,
      I3 => ps(0),
      O => \pw_high[30]_i_1_n_0\
    );
\pw_high_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[0]\,
      Q => \^pw_high_reg[30]_0\(0),
      R => '0'
    );
\pw_high_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[10]\,
      Q => \^pw_high_reg[30]_0\(10),
      R => '0'
    );
\pw_high_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[11]\,
      Q => \^pw_high_reg[30]_0\(11),
      R => '0'
    );
\pw_high_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[12]\,
      Q => \^pw_high_reg[30]_0\(12),
      R => '0'
    );
\pw_high_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[13]\,
      Q => \^pw_high_reg[30]_0\(13),
      R => '0'
    );
\pw_high_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[14]\,
      Q => \^pw_high_reg[30]_0\(14),
      R => '0'
    );
\pw_high_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[15]\,
      Q => \^pw_high_reg[30]_0\(15),
      R => '0'
    );
\pw_high_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[16]\,
      Q => \^pw_high_reg[30]_0\(16),
      R => '0'
    );
\pw_high_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[17]\,
      Q => \^pw_high_reg[30]_0\(17),
      R => '0'
    );
\pw_high_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[18]\,
      Q => \^pw_high_reg[30]_0\(18),
      R => '0'
    );
\pw_high_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[19]\,
      Q => \^pw_high_reg[30]_0\(19),
      R => '0'
    );
\pw_high_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[1]\,
      Q => \^pw_high_reg[30]_0\(1),
      R => '0'
    );
\pw_high_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[20]\,
      Q => \^pw_high_reg[30]_0\(20),
      R => '0'
    );
\pw_high_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[21]\,
      Q => \^pw_high_reg[30]_0\(21),
      R => '0'
    );
\pw_high_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[22]\,
      Q => \^pw_high_reg[30]_0\(22),
      R => '0'
    );
\pw_high_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[23]\,
      Q => \^pw_high_reg[30]_0\(23),
      R => '0'
    );
\pw_high_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[24]\,
      Q => \^pw_high_reg[30]_0\(24),
      R => '0'
    );
\pw_high_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[25]\,
      Q => \^pw_high_reg[30]_0\(25),
      R => '0'
    );
\pw_high_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[26]\,
      Q => \^pw_high_reg[30]_0\(26),
      R => '0'
    );
\pw_high_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[27]\,
      Q => \^pw_high_reg[30]_0\(27),
      R => '0'
    );
\pw_high_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[28]\,
      Q => \^pw_high_reg[30]_0\(28),
      R => '0'
    );
\pw_high_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[29]\,
      Q => \^pw_high_reg[30]_0\(29),
      R => '0'
    );
\pw_high_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[2]\,
      Q => \^pw_high_reg[30]_0\(2),
      R => '0'
    );
\pw_high_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[30]\,
      Q => \^pw_high_reg[30]_0\(30),
      R => '0'
    );
\pw_high_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[3]\,
      Q => \^pw_high_reg[30]_0\(3),
      R => '0'
    );
\pw_high_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[4]\,
      Q => \^pw_high_reg[30]_0\(4),
      R => '0'
    );
\pw_high_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[5]\,
      Q => \^pw_high_reg[30]_0\(5),
      R => '0'
    );
\pw_high_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[6]\,
      Q => \^pw_high_reg[30]_0\(6),
      R => '0'
    );
\pw_high_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[7]\,
      Q => \^pw_high_reg[30]_0\(7),
      R => '0'
    );
\pw_high_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[8]\,
      Q => \^pw_high_reg[30]_0\(8),
      R => '0'
    );
\pw_high_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_high[30]_i_1_n_0\,
      D => \count_clk1_reg_n_0_[9]\,
      Q => \^pw_high_reg[30]_0\(9),
      R => '0'
    );
\pw_low[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => ps(1),
      I1 => ps(0),
      I2 => \count_clk0[30]_i_5_n_0\,
      I3 => \count_clk0[30]_i_4_n_0\,
      I4 => \count_clk0[30]_i_3_n_0\,
      O => \pw_low[30]_i_1_n_0\
    );
\pw_low_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[0]\,
      Q => \^q\(0),
      R => '0'
    );
\pw_low_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[10]\,
      Q => \^q\(10),
      R => '0'
    );
\pw_low_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[11]\,
      Q => \^q\(11),
      R => '0'
    );
\pw_low_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[12]\,
      Q => \^q\(12),
      R => '0'
    );
\pw_low_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[13]\,
      Q => \^q\(13),
      R => '0'
    );
\pw_low_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[14]\,
      Q => \^q\(14),
      R => '0'
    );
\pw_low_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[15]\,
      Q => \^q\(15),
      R => '0'
    );
\pw_low_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[16]\,
      Q => \^q\(16),
      R => '0'
    );
\pw_low_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[17]\,
      Q => \^q\(17),
      R => '0'
    );
\pw_low_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[18]\,
      Q => \^q\(18),
      R => '0'
    );
\pw_low_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[19]\,
      Q => \^q\(19),
      R => '0'
    );
\pw_low_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[1]\,
      Q => \^q\(1),
      R => '0'
    );
\pw_low_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[20]\,
      Q => \^q\(20),
      R => '0'
    );
\pw_low_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[21]\,
      Q => \^q\(21),
      R => '0'
    );
\pw_low_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[22]\,
      Q => \^q\(22),
      R => '0'
    );
\pw_low_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[23]\,
      Q => \^q\(23),
      R => '0'
    );
\pw_low_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[24]\,
      Q => \^q\(24),
      R => '0'
    );
\pw_low_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[25]\,
      Q => \^q\(25),
      R => '0'
    );
\pw_low_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[26]\,
      Q => \^q\(26),
      R => '0'
    );
\pw_low_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[27]\,
      Q => \^q\(27),
      R => '0'
    );
\pw_low_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[28]\,
      Q => \^q\(28),
      R => '0'
    );
\pw_low_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[29]\,
      Q => \^q\(29),
      R => '0'
    );
\pw_low_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[2]\,
      Q => \^q\(2),
      R => '0'
    );
\pw_low_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[30]\,
      Q => \^q\(30),
      R => '0'
    );
\pw_low_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[3]\,
      Q => \^q\(3),
      R => '0'
    );
\pw_low_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[4]\,
      Q => \^q\(4),
      R => '0'
    );
\pw_low_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[5]\,
      Q => \^q\(5),
      R => '0'
    );
\pw_low_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[6]\,
      Q => \^q\(6),
      R => '0'
    );
\pw_low_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[7]\,
      Q => \^q\(7),
      R => '0'
    );
\pw_low_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[8]\,
      Q => \^q\(8),
      R => '0'
    );
\pw_low_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \pw_low[30]_i_1_n_0\,
      D => \count_clk0_reg_n_0_[9]\,
      Q => \^q\(9),
      R => '0'
    );
pwm_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pwm_clean,
      Q => pwm_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0_S00_AXI : entity is "PWM_Analyzer_v1_0_S00_AXI";
end embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0_S00_AXI;

architecture STRUCTURE of embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal pwm_clean : STD_LOGIC;
  signal pwm_delay : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair33";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => reset
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => reset
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => reset
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => reset
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => reset
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => reset
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg1(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg1(10),
      I2 => axi_araddr(2),
      I3 => slv_reg2(10),
      I4 => axi_araddr(3),
      I5 => slv_reg0(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg1(11),
      I2 => axi_araddr(2),
      I3 => slv_reg2(11),
      I4 => axi_araddr(3),
      I5 => slv_reg0(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg1(12),
      I2 => axi_araddr(2),
      I3 => slv_reg2(12),
      I4 => axi_araddr(3),
      I5 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg1(13),
      I2 => axi_araddr(2),
      I3 => slv_reg2(13),
      I4 => axi_araddr(3),
      I5 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg1(14),
      I2 => axi_araddr(2),
      I3 => slv_reg2(14),
      I4 => axi_araddr(3),
      I5 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg1(15),
      I2 => axi_araddr(2),
      I3 => slv_reg2(15),
      I4 => axi_araddr(3),
      I5 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg1(16),
      I2 => axi_araddr(2),
      I3 => slv_reg2(16),
      I4 => axi_araddr(3),
      I5 => slv_reg0(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg1(17),
      I2 => axi_araddr(2),
      I3 => slv_reg2(17),
      I4 => axi_araddr(3),
      I5 => slv_reg0(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg1(18),
      I2 => axi_araddr(2),
      I3 => slv_reg2(18),
      I4 => axi_araddr(3),
      I5 => slv_reg0(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg1(19),
      I2 => axi_araddr(2),
      I3 => slv_reg2(19),
      I4 => axi_araddr(3),
      I5 => slv_reg0(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg1(1),
      I2 => axi_araddr(2),
      I3 => slv_reg2(1),
      I4 => axi_araddr(3),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg1(20),
      I2 => axi_araddr(2),
      I3 => slv_reg2(20),
      I4 => axi_araddr(3),
      I5 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg1(21),
      I2 => axi_araddr(2),
      I3 => slv_reg2(21),
      I4 => axi_araddr(3),
      I5 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg1(22),
      I2 => axi_araddr(2),
      I3 => slv_reg2(22),
      I4 => axi_araddr(3),
      I5 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg1(23),
      I2 => axi_araddr(2),
      I3 => slv_reg2(23),
      I4 => axi_araddr(3),
      I5 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg1(24),
      I2 => axi_araddr(2),
      I3 => slv_reg2(24),
      I4 => axi_araddr(3),
      I5 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg1(25),
      I2 => axi_araddr(2),
      I3 => slv_reg2(25),
      I4 => axi_araddr(3),
      I5 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg1(26),
      I2 => axi_araddr(2),
      I3 => slv_reg2(26),
      I4 => axi_araddr(3),
      I5 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg1(27),
      I2 => axi_araddr(2),
      I3 => slv_reg2(27),
      I4 => axi_araddr(3),
      I5 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg1(28),
      I2 => axi_araddr(2),
      I3 => slv_reg2(28),
      I4 => axi_araddr(3),
      I5 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg1(29),
      I2 => axi_araddr(2),
      I3 => slv_reg2(29),
      I4 => axi_araddr(3),
      I5 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg1(2),
      I2 => axi_araddr(2),
      I3 => slv_reg2(2),
      I4 => axi_araddr(3),
      I5 => slv_reg0(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg1(30),
      I2 => axi_araddr(2),
      I3 => slv_reg2(30),
      I4 => axi_araddr(3),
      I5 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => slv_reg2(31),
      I2 => axi_araddr(2),
      I3 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg1(3),
      I2 => axi_araddr(2),
      I3 => slv_reg2(3),
      I4 => axi_araddr(3),
      I5 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg1(4),
      I2 => axi_araddr(2),
      I3 => slv_reg2(4),
      I4 => axi_araddr(3),
      I5 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg1(5),
      I2 => axi_araddr(2),
      I3 => slv_reg2(5),
      I4 => axi_araddr(3),
      I5 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg1(6),
      I2 => axi_araddr(2),
      I3 => slv_reg2(6),
      I4 => axi_araddr(3),
      I5 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg1(7),
      I2 => axi_araddr(2),
      I3 => slv_reg2(7),
      I4 => axi_araddr(3),
      I5 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg1(8),
      I2 => axi_araddr(2),
      I3 => slv_reg2(8),
      I4 => axi_araddr(3),
      I5 => slv_reg0(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg1(9),
      I2 => axi_araddr(2),
      I3 => slv_reg2(9),
      I4 => axi_araddr(3),
      I5 => slv_reg0(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => reset
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => reset
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => reset
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => reset
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => reset
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => reset
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => reset
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => reset
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => reset
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => reset
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => reset
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => reset
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => reset
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => reset
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => reset
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => reset
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => reset
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => reset
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => reset
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => reset
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => reset
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => reset
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => reset
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => reset
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => reset
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => reset
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => reset
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => reset
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => reset
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => reset
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => reset
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => reset
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => reset
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => reset
    );
pulse_length: entity work.embsys_PWM_Analyzer_0_0_pulseLength
     port map (
      Q(30 downto 0) => slv_reg0(30 downto 0),
      SR(0) => reset,
      \pw_high_reg[30]_0\(30 downto 0) => slv_reg1(30 downto 0),
      pwm_clean => pwm_clean,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      slv_reg2(31 downto 0) => slv_reg2(31 downto 0)
    );
pwm_clean_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pwm_delay,
      Q => pwm_clean,
      R => '0'
    );
pwm_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pwm,
      Q => pwm_delay,
      R => '0'
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_0_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_0_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_0_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_0_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => reset
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => reset
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => reset
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => reset
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => reset
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => reset
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => reset
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => reset
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => reset
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => reset
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => reset
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => reset
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => reset
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => reset
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => reset
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => reset
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => reset
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => reset
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => reset
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => reset
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => reset
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => reset
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => reset
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => reset
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => reset
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => reset
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => reset
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => reset
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => reset
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => reset
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => reset
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => reset
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0 : entity is "PWM_Analyzer_v1_0";
end embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0;

architecture STRUCTURE of embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0 is
begin
PWM_Analyzer_v1_0_S00_AXI_inst: entity work.embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PWM_Analyzer_0_0 is
  port (
    pwm : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_PWM_Analyzer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_PWM_Analyzer_0_0 : entity is "embsys_PWM_Analyzer_0_0,PWM_Analyzer_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of embsys_PWM_Analyzer_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of embsys_PWM_Analyzer_0_0 : entity is "PWM_Analyzer_v1_0,Vivado 2022.2";
end embsys_PWM_Analyzer_0_0;

architecture STRUCTURE of embsys_PWM_Analyzer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF S00_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.embsys_PWM_Analyzer_0_0_PWM_Analyzer_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
