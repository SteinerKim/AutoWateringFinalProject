// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 12 17:13:18 2025
// Host        : PDXKSTEINER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/projects/kim/ECE544/projectFinal/projectFinal.gen/sources_1/bd/embsys/ip/embsys_rgbPWM_0_0/embsys_rgbPWM_0_0_sim_netlist.v
// Design      : embsys_rgbPWM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_rgbPWM_0_0,rgbPWM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rgbPWM,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module embsys_rgbPWM_0_0
   (clk,
    reset,
    controlReg,
    rgbRED,
    rgbGREEN,
    rgbBLUE,
    clkPWM);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]controlReg;
  output rgbRED;
  output rgbGREEN;
  output rgbBLUE;
  output clkPWM;

  wire clk;
  wire clkPWM;
  wire [31:0]controlReg;
  wire reset;
  wire rgbBLUE;
  wire rgbGREEN;
  wire rgbRED;

  embsys_rgbPWM_0_0_rgbPWM inst
       (.CLK(clkPWM),
        .clk(clk),
        .controlReg({controlReg[31],controlReg[29:0]}),
        .reset(reset),
        .rgbBLUE(rgbBLUE),
        .rgbGREEN(rgbGREEN),
        .rgbRED(rgbRED));
endmodule

(* ORIG_REF_NAME = "rgbPWM" *) 
module embsys_rgbPWM_0_0_rgbPWM
   (CLK,
    rgbRED,
    rgbGREEN,
    rgbBLUE,
    reset,
    controlReg,
    clk);
  output CLK;
  output rgbRED;
  output rgbGREEN;
  output rgbBLUE;
  input reset;
  input [30:0]controlReg;
  input clk;

  wire CLK;
  wire [9:0]blueDC;
  wire [9:0]blueDC_latch;
  wire clk;
  wire [30:0]controlReg;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire [11:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \div_count[0]_i_1_n_0 ;
  wire \div_count[0]_i_3_n_0 ;
  wire \div_count[0]_i_4_n_0 ;
  wire [31:1]div_count_reg;
  wire \div_count_reg[0]_i_2_n_0 ;
  wire \div_count_reg[0]_i_2_n_1 ;
  wire \div_count_reg[0]_i_2_n_2 ;
  wire \div_count_reg[0]_i_2_n_3 ;
  wire \div_count_reg[0]_i_2_n_4 ;
  wire \div_count_reg[0]_i_2_n_5 ;
  wire \div_count_reg[0]_i_2_n_6 ;
  wire \div_count_reg[0]_i_2_n_7 ;
  wire \div_count_reg[12]_i_1_n_0 ;
  wire \div_count_reg[12]_i_1_n_1 ;
  wire \div_count_reg[12]_i_1_n_2 ;
  wire \div_count_reg[12]_i_1_n_3 ;
  wire \div_count_reg[12]_i_1_n_4 ;
  wire \div_count_reg[12]_i_1_n_5 ;
  wire \div_count_reg[12]_i_1_n_6 ;
  wire \div_count_reg[12]_i_1_n_7 ;
  wire \div_count_reg[16]_i_1_n_0 ;
  wire \div_count_reg[16]_i_1_n_1 ;
  wire \div_count_reg[16]_i_1_n_2 ;
  wire \div_count_reg[16]_i_1_n_3 ;
  wire \div_count_reg[16]_i_1_n_4 ;
  wire \div_count_reg[16]_i_1_n_5 ;
  wire \div_count_reg[16]_i_1_n_6 ;
  wire \div_count_reg[16]_i_1_n_7 ;
  wire \div_count_reg[20]_i_1_n_0 ;
  wire \div_count_reg[20]_i_1_n_1 ;
  wire \div_count_reg[20]_i_1_n_2 ;
  wire \div_count_reg[20]_i_1_n_3 ;
  wire \div_count_reg[20]_i_1_n_4 ;
  wire \div_count_reg[20]_i_1_n_5 ;
  wire \div_count_reg[20]_i_1_n_6 ;
  wire \div_count_reg[20]_i_1_n_7 ;
  wire \div_count_reg[24]_i_1_n_0 ;
  wire \div_count_reg[24]_i_1_n_1 ;
  wire \div_count_reg[24]_i_1_n_2 ;
  wire \div_count_reg[24]_i_1_n_3 ;
  wire \div_count_reg[24]_i_1_n_4 ;
  wire \div_count_reg[24]_i_1_n_5 ;
  wire \div_count_reg[24]_i_1_n_6 ;
  wire \div_count_reg[24]_i_1_n_7 ;
  wire \div_count_reg[28]_i_1_n_1 ;
  wire \div_count_reg[28]_i_1_n_2 ;
  wire \div_count_reg[28]_i_1_n_3 ;
  wire \div_count_reg[28]_i_1_n_4 ;
  wire \div_count_reg[28]_i_1_n_5 ;
  wire \div_count_reg[28]_i_1_n_6 ;
  wire \div_count_reg[28]_i_1_n_7 ;
  wire \div_count_reg[4]_i_1_n_0 ;
  wire \div_count_reg[4]_i_1_n_1 ;
  wire \div_count_reg[4]_i_1_n_2 ;
  wire \div_count_reg[4]_i_1_n_3 ;
  wire \div_count_reg[4]_i_1_n_4 ;
  wire \div_count_reg[4]_i_1_n_5 ;
  wire \div_count_reg[4]_i_1_n_6 ;
  wire \div_count_reg[4]_i_1_n_7 ;
  wire \div_count_reg[8]_i_1_n_0 ;
  wire \div_count_reg[8]_i_1_n_1 ;
  wire \div_count_reg[8]_i_1_n_2 ;
  wire \div_count_reg[8]_i_1_n_3 ;
  wire \div_count_reg[8]_i_1_n_4 ;
  wire \div_count_reg[8]_i_1_n_5 ;
  wire \div_count_reg[8]_i_1_n_6 ;
  wire \div_count_reg[8]_i_1_n_7 ;
  wire \div_count_reg_n_0_[0] ;
  wire div_out_i_1_n_0;
  wire div_out_i_2_n_0;
  wire div_out_i_3_n_0;
  wire div_out_i_4_n_0;
  wire div_out_i_5_n_0;
  wire div_out_i_6_n_0;
  wire div_out_i_7_n_0;
  wire div_out_i_8_n_0;
  wire div_out_i_9_n_0;
  wire enable;
  wire [9:0]greenDC;
  wire [9:0]greenDC_latch;
  wire p_0_in;
  wire [9:0]redDC;
  wire [9:0]redDC_latch;
  wire \redDC_latch[9]_i_1_n_0 ;
  wire reset;
  wire rgbBLUE;
  wire rgbBLUE0;
  wire rgbBLUE0_carry__0_i_1_n_0;
  wire rgbBLUE0_carry__0_i_2_n_0;
  wire rgbBLUE0_carry__0_i_3_n_0;
  wire rgbBLUE0_carry__0_n_3;
  wire rgbBLUE0_carry_i_1_n_0;
  wire rgbBLUE0_carry_i_2_n_0;
  wire rgbBLUE0_carry_i_3_n_0;
  wire rgbBLUE0_carry_i_4_n_0;
  wire rgbBLUE0_carry_i_5_n_0;
  wire rgbBLUE0_carry_i_6_n_0;
  wire rgbBLUE0_carry_i_7_n_0;
  wire rgbBLUE0_carry_i_8_n_0;
  wire rgbBLUE0_carry_n_0;
  wire rgbBLUE0_carry_n_1;
  wire rgbBLUE0_carry_n_2;
  wire rgbBLUE0_carry_n_3;
  wire rgbGREEN;
  wire rgbGREEN0;
  wire rgbGREEN0_carry__0_i_1_n_0;
  wire rgbGREEN0_carry__0_i_2_n_0;
  wire rgbGREEN0_carry__0_i_3_n_0;
  wire rgbGREEN0_carry__0_n_3;
  wire rgbGREEN0_carry_i_1_n_0;
  wire rgbGREEN0_carry_i_2_n_0;
  wire rgbGREEN0_carry_i_3_n_0;
  wire rgbGREEN0_carry_i_4_n_0;
  wire rgbGREEN0_carry_i_5_n_0;
  wire rgbGREEN0_carry_i_6_n_0;
  wire rgbGREEN0_carry_i_7_n_0;
  wire rgbGREEN0_carry_i_8_n_0;
  wire rgbGREEN0_carry_n_0;
  wire rgbGREEN0_carry_n_1;
  wire rgbGREEN0_carry_n_2;
  wire rgbGREEN0_carry_n_3;
  wire rgbRED;
  wire rgbRED0;
  wire rgbRED0_carry__0_i_1_n_0;
  wire rgbRED0_carry__0_i_2_n_0;
  wire rgbRED0_carry__0_i_3_n_0;
  wire rgbRED0_carry__0_n_3;
  wire rgbRED0_carry_i_1_n_0;
  wire rgbRED0_carry_i_2_n_0;
  wire rgbRED0_carry_i_3_n_0;
  wire rgbRED0_carry_i_4_n_0;
  wire rgbRED0_carry_i_5_n_0;
  wire rgbRED0_carry_i_6_n_0;
  wire rgbRED0_carry_i_7_n_0;
  wire rgbRED0_carry_i_8_n_0;
  wire rgbRED0_carry_n_0;
  wire rgbRED0_carry_n_1;
  wire rgbRED0_carry_n_2;
  wire rgbRED0_carry_n_3;
  wire [3:3]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_div_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_rgbBLUE0_carry_O_UNCONNECTED;
  wire [3:2]NLW_rgbBLUE0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rgbBLUE0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rgbGREEN0_carry_O_UNCONNECTED;
  wire [3:2]NLW_rgbGREEN0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rgbGREEN0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rgbRED0_carry_O_UNCONNECTED;
  wire [3:2]NLW_rgbRED0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rgbRED0_carry__0_O_UNCONNECTED;

  FDRE \blueDC_latch_reg[0] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[0]),
        .Q(blueDC_latch[0]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[1] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[1]),
        .Q(blueDC_latch[1]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[2] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[2]),
        .Q(blueDC_latch[2]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[3] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[3]),
        .Q(blueDC_latch[3]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[4] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[4]),
        .Q(blueDC_latch[4]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[5] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[5]),
        .Q(blueDC_latch[5]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[6] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[6]),
        .Q(blueDC_latch[6]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[7] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[7]),
        .Q(blueDC_latch[7]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[8] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[8]),
        .Q(blueDC_latch[8]),
        .R(p_0_in));
  FDRE \blueDC_latch_reg[9] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(blueDC[9]),
        .Q(blueDC_latch[9]),
        .R(p_0_in));
  FDRE \blueDC_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[0]),
        .Q(blueDC[0]),
        .R(p_0_in));
  FDRE \blueDC_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[1]),
        .Q(blueDC[1]),
        .R(p_0_in));
  FDRE \blueDC_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[2]),
        .Q(blueDC[2]),
        .R(p_0_in));
  FDRE \blueDC_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[3]),
        .Q(blueDC[3]),
        .R(p_0_in));
  FDRE \blueDC_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[4]),
        .Q(blueDC[4]),
        .R(p_0_in));
  FDRE \blueDC_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[5]),
        .Q(blueDC[5]),
        .R(p_0_in));
  FDRE \blueDC_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[6]),
        .Q(blueDC[6]),
        .R(p_0_in));
  FDRE \blueDC_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[7]),
        .Q(blueDC[7]),
        .R(p_0_in));
  FDRE \blueDC_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[8]),
        .Q(blueDC[8]),
        .R(p_0_in));
  FDRE \blueDC_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[9]),
        .Q(blueDC[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hDF)) 
    \count[0]_i_1 
       (.I0(enable),
        .I1(count_reg[11]),
        .I2(reset),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE \count_reg[10] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\NLW_count_reg[8]_i_1_CO_UNCONNECTED [3],\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(CLK),
        .CE(reset),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \div_count[0]_i_1 
       (.I0(div_out_i_3_n_0),
        .I1(div_count_reg[7]),
        .I2(div_count_reg[8]),
        .I3(div_count_reg[6]),
        .I4(\div_count[0]_i_3_n_0 ),
        .I5(reset),
        .O(\div_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \div_count[0]_i_3 
       (.I0(div_count_reg[11]),
        .I1(div_count_reg[12]),
        .I2(div_count_reg[9]),
        .I3(div_count_reg[10]),
        .I4(div_out_i_4_n_0),
        .O(\div_count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \div_count[0]_i_4 
       (.I0(\div_count_reg_n_0_[0] ),
        .O(\div_count[0]_i_4_n_0 ));
  FDRE \div_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[0]_i_2_n_7 ),
        .Q(\div_count_reg_n_0_[0] ),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\div_count_reg[0]_i_2_n_0 ,\div_count_reg[0]_i_2_n_1 ,\div_count_reg[0]_i_2_n_2 ,\div_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\div_count_reg[0]_i_2_n_4 ,\div_count_reg[0]_i_2_n_5 ,\div_count_reg[0]_i_2_n_6 ,\div_count_reg[0]_i_2_n_7 }),
        .S({div_count_reg[3:1],\div_count[0]_i_4_n_0 }));
  FDRE \div_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[8]_i_1_n_5 ),
        .Q(div_count_reg[10]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[8]_i_1_n_4 ),
        .Q(div_count_reg[11]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[12]_i_1_n_7 ),
        .Q(div_count_reg[12]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[12]_i_1 
       (.CI(\div_count_reg[8]_i_1_n_0 ),
        .CO({\div_count_reg[12]_i_1_n_0 ,\div_count_reg[12]_i_1_n_1 ,\div_count_reg[12]_i_1_n_2 ,\div_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[12]_i_1_n_4 ,\div_count_reg[12]_i_1_n_5 ,\div_count_reg[12]_i_1_n_6 ,\div_count_reg[12]_i_1_n_7 }),
        .S(div_count_reg[15:12]));
  FDRE \div_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[12]_i_1_n_6 ),
        .Q(div_count_reg[13]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[12]_i_1_n_5 ),
        .Q(div_count_reg[14]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[12]_i_1_n_4 ),
        .Q(div_count_reg[15]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[16]_i_1_n_7 ),
        .Q(div_count_reg[16]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[16]_i_1 
       (.CI(\div_count_reg[12]_i_1_n_0 ),
        .CO({\div_count_reg[16]_i_1_n_0 ,\div_count_reg[16]_i_1_n_1 ,\div_count_reg[16]_i_1_n_2 ,\div_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[16]_i_1_n_4 ,\div_count_reg[16]_i_1_n_5 ,\div_count_reg[16]_i_1_n_6 ,\div_count_reg[16]_i_1_n_7 }),
        .S(div_count_reg[19:16]));
  FDRE \div_count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[16]_i_1_n_6 ),
        .Q(div_count_reg[17]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[16]_i_1_n_5 ),
        .Q(div_count_reg[18]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[16]_i_1_n_4 ),
        .Q(div_count_reg[19]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[0]_i_2_n_6 ),
        .Q(div_count_reg[1]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[20]_i_1_n_7 ),
        .Q(div_count_reg[20]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[20]_i_1 
       (.CI(\div_count_reg[16]_i_1_n_0 ),
        .CO({\div_count_reg[20]_i_1_n_0 ,\div_count_reg[20]_i_1_n_1 ,\div_count_reg[20]_i_1_n_2 ,\div_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[20]_i_1_n_4 ,\div_count_reg[20]_i_1_n_5 ,\div_count_reg[20]_i_1_n_6 ,\div_count_reg[20]_i_1_n_7 }),
        .S(div_count_reg[23:20]));
  FDRE \div_count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[20]_i_1_n_6 ),
        .Q(div_count_reg[21]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[20]_i_1_n_5 ),
        .Q(div_count_reg[22]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[20]_i_1_n_4 ),
        .Q(div_count_reg[23]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[24]_i_1_n_7 ),
        .Q(div_count_reg[24]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[24]_i_1 
       (.CI(\div_count_reg[20]_i_1_n_0 ),
        .CO({\div_count_reg[24]_i_1_n_0 ,\div_count_reg[24]_i_1_n_1 ,\div_count_reg[24]_i_1_n_2 ,\div_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[24]_i_1_n_4 ,\div_count_reg[24]_i_1_n_5 ,\div_count_reg[24]_i_1_n_6 ,\div_count_reg[24]_i_1_n_7 }),
        .S(div_count_reg[27:24]));
  FDRE \div_count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[24]_i_1_n_6 ),
        .Q(div_count_reg[25]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[24]_i_1_n_5 ),
        .Q(div_count_reg[26]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[24]_i_1_n_4 ),
        .Q(div_count_reg[27]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[28]_i_1_n_7 ),
        .Q(div_count_reg[28]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[28]_i_1 
       (.CI(\div_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_div_count_reg[28]_i_1_CO_UNCONNECTED [3],\div_count_reg[28]_i_1_n_1 ,\div_count_reg[28]_i_1_n_2 ,\div_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[28]_i_1_n_4 ,\div_count_reg[28]_i_1_n_5 ,\div_count_reg[28]_i_1_n_6 ,\div_count_reg[28]_i_1_n_7 }),
        .S(div_count_reg[31:28]));
  FDRE \div_count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[28]_i_1_n_6 ),
        .Q(div_count_reg[29]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[0]_i_2_n_5 ),
        .Q(div_count_reg[2]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[28]_i_1_n_5 ),
        .Q(div_count_reg[30]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[28]_i_1_n_4 ),
        .Q(div_count_reg[31]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[0]_i_2_n_4 ),
        .Q(div_count_reg[3]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[4]_i_1_n_7 ),
        .Q(div_count_reg[4]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[4]_i_1 
       (.CI(\div_count_reg[0]_i_2_n_0 ),
        .CO({\div_count_reg[4]_i_1_n_0 ,\div_count_reg[4]_i_1_n_1 ,\div_count_reg[4]_i_1_n_2 ,\div_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[4]_i_1_n_4 ,\div_count_reg[4]_i_1_n_5 ,\div_count_reg[4]_i_1_n_6 ,\div_count_reg[4]_i_1_n_7 }),
        .S(div_count_reg[7:4]));
  FDRE \div_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[4]_i_1_n_6 ),
        .Q(div_count_reg[5]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[4]_i_1_n_5 ),
        .Q(div_count_reg[6]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[4]_i_1_n_4 ),
        .Q(div_count_reg[7]),
        .R(\div_count[0]_i_1_n_0 ));
  FDRE \div_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[8]_i_1_n_7 ),
        .Q(div_count_reg[8]),
        .R(\div_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \div_count_reg[8]_i_1 
       (.CI(\div_count_reg[4]_i_1_n_0 ),
        .CO({\div_count_reg[8]_i_1_n_0 ,\div_count_reg[8]_i_1_n_1 ,\div_count_reg[8]_i_1_n_2 ,\div_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_count_reg[8]_i_1_n_4 ,\div_count_reg[8]_i_1_n_5 ,\div_count_reg[8]_i_1_n_6 ,\div_count_reg[8]_i_1_n_7 }),
        .S(div_count_reg[11:8]));
  FDRE \div_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\div_count_reg[8]_i_1_n_6 ),
        .Q(div_count_reg[9]),
        .R(\div_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5600)) 
    div_out_i_1
       (.I0(CLK),
        .I1(div_out_i_2_n_0),
        .I2(div_out_i_3_n_0),
        .I3(reset),
        .O(div_out_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    div_out_i_2
       (.I0(div_count_reg[7]),
        .I1(div_count_reg[8]),
        .I2(div_count_reg[6]),
        .I3(div_out_i_4_n_0),
        .I4(div_out_i_5_n_0),
        .O(div_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    div_out_i_3
       (.I0(div_out_i_6_n_0),
        .I1(div_out_i_7_n_0),
        .I2(div_count_reg[30]),
        .I3(div_count_reg[29]),
        .I4(div_out_i_8_n_0),
        .I5(div_out_i_9_n_0),
        .O(div_out_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    div_out_i_4
       (.I0(div_count_reg[14]),
        .I1(div_count_reg[13]),
        .I2(div_count_reg[16]),
        .I3(div_count_reg[15]),
        .O(div_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    div_out_i_5
       (.I0(div_count_reg[10]),
        .I1(div_count_reg[9]),
        .I2(div_count_reg[12]),
        .I3(div_count_reg[11]),
        .O(div_out_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    div_out_i_6
       (.I0(div_count_reg[22]),
        .I1(div_count_reg[21]),
        .I2(div_count_reg[24]),
        .I3(div_count_reg[23]),
        .O(div_out_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    div_out_i_7
       (.I0(div_count_reg[18]),
        .I1(div_count_reg[17]),
        .I2(div_count_reg[20]),
        .I3(div_count_reg[19]),
        .O(div_out_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    div_out_i_8
       (.I0(div_count_reg[31]),
        .I1(div_count_reg[5]),
        .I2(div_count_reg[3]),
        .I3(div_count_reg[1]),
        .I4(div_count_reg[2]),
        .I5(div_count_reg[4]),
        .O(div_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    div_out_i_9
       (.I0(div_count_reg[26]),
        .I1(div_count_reg[25]),
        .I2(div_count_reg[28]),
        .I3(div_count_reg[27]),
        .O(div_out_i_9_n_0));
  FDRE div_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(div_out_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    enable_i_1
       (.I0(reset),
        .O(p_0_in));
  FDRE enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[30]),
        .Q(enable),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[0] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[0]),
        .Q(greenDC_latch[0]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[1] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[1]),
        .Q(greenDC_latch[1]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[2] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[2]),
        .Q(greenDC_latch[2]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[3] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[3]),
        .Q(greenDC_latch[3]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[4] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[4]),
        .Q(greenDC_latch[4]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[5] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[5]),
        .Q(greenDC_latch[5]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[6] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[6]),
        .Q(greenDC_latch[6]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[7] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[7]),
        .Q(greenDC_latch[7]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[8] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[8]),
        .Q(greenDC_latch[8]),
        .R(p_0_in));
  FDRE \greenDC_latch_reg[9] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(greenDC[9]),
        .Q(greenDC_latch[9]),
        .R(p_0_in));
  FDRE \greenDC_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[10]),
        .Q(greenDC[0]),
        .R(p_0_in));
  FDRE \greenDC_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[11]),
        .Q(greenDC[1]),
        .R(p_0_in));
  FDRE \greenDC_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[12]),
        .Q(greenDC[2]),
        .R(p_0_in));
  FDRE \greenDC_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[13]),
        .Q(greenDC[3]),
        .R(p_0_in));
  FDRE \greenDC_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[14]),
        .Q(greenDC[4]),
        .R(p_0_in));
  FDRE \greenDC_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[15]),
        .Q(greenDC[5]),
        .R(p_0_in));
  FDRE \greenDC_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[16]),
        .Q(greenDC[6]),
        .R(p_0_in));
  FDRE \greenDC_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[17]),
        .Q(greenDC[7]),
        .R(p_0_in));
  FDRE \greenDC_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[18]),
        .Q(greenDC[8]),
        .R(p_0_in));
  FDRE \greenDC_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[19]),
        .Q(greenDC[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \redDC_latch[9]_i_1 
       (.I0(count_reg[11]),
        .I1(enable),
        .O(\redDC_latch[9]_i_1_n_0 ));
  FDRE \redDC_latch_reg[0] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[0]),
        .Q(redDC_latch[0]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[1] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[1]),
        .Q(redDC_latch[1]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[2] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[2]),
        .Q(redDC_latch[2]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[3] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[3]),
        .Q(redDC_latch[3]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[4] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[4]),
        .Q(redDC_latch[4]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[5] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[5]),
        .Q(redDC_latch[5]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[6] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[6]),
        .Q(redDC_latch[6]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[7] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[7]),
        .Q(redDC_latch[7]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[8] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[8]),
        .Q(redDC_latch[8]),
        .R(p_0_in));
  FDRE \redDC_latch_reg[9] 
       (.C(CLK),
        .CE(\redDC_latch[9]_i_1_n_0 ),
        .D(redDC[9]),
        .Q(redDC_latch[9]),
        .R(p_0_in));
  FDRE \redDC_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[20]),
        .Q(redDC[0]),
        .R(p_0_in));
  FDRE \redDC_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[21]),
        .Q(redDC[1]),
        .R(p_0_in));
  FDRE \redDC_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[22]),
        .Q(redDC[2]),
        .R(p_0_in));
  FDRE \redDC_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[23]),
        .Q(redDC[3]),
        .R(p_0_in));
  FDRE \redDC_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[24]),
        .Q(redDC[4]),
        .R(p_0_in));
  FDRE \redDC_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[25]),
        .Q(redDC[5]),
        .R(p_0_in));
  FDRE \redDC_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[26]),
        .Q(redDC[6]),
        .R(p_0_in));
  FDRE \redDC_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[27]),
        .Q(redDC[7]),
        .R(p_0_in));
  FDRE \redDC_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[28]),
        .Q(redDC[8]),
        .R(p_0_in));
  FDRE \redDC_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(controlReg[29]),
        .Q(redDC[9]),
        .R(p_0_in));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbBLUE0_carry
       (.CI(1'b0),
        .CO({rgbBLUE0_carry_n_0,rgbBLUE0_carry_n_1,rgbBLUE0_carry_n_2,rgbBLUE0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgbBLUE0_carry_i_1_n_0,rgbBLUE0_carry_i_2_n_0,rgbBLUE0_carry_i_3_n_0,rgbBLUE0_carry_i_4_n_0}),
        .O(NLW_rgbBLUE0_carry_O_UNCONNECTED[3:0]),
        .S({rgbBLUE0_carry_i_5_n_0,rgbBLUE0_carry_i_6_n_0,rgbBLUE0_carry_i_7_n_0,rgbBLUE0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbBLUE0_carry__0
       (.CI(rgbBLUE0_carry_n_0),
        .CO({NLW_rgbBLUE0_carry__0_CO_UNCONNECTED[3:2],rgbBLUE0,rgbBLUE0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgbBLUE0_carry__0_i_1_n_0}),
        .O(NLW_rgbBLUE0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rgbBLUE0_carry__0_i_2_n_0,rgbBLUE0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbBLUE0_carry__0_i_1
       (.I0(blueDC_latch[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(blueDC_latch[9]),
        .O(rgbBLUE0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rgbBLUE0_carry__0_i_2
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(rgbBLUE0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbBLUE0_carry__0_i_3
       (.I0(blueDC_latch[8]),
        .I1(count_reg[8]),
        .I2(blueDC_latch[9]),
        .I3(count_reg[9]),
        .O(rgbBLUE0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbBLUE0_carry_i_1
       (.I0(blueDC_latch[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(blueDC_latch[7]),
        .O(rgbBLUE0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbBLUE0_carry_i_2
       (.I0(blueDC_latch[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(blueDC_latch[5]),
        .O(rgbBLUE0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbBLUE0_carry_i_3
       (.I0(blueDC_latch[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(blueDC_latch[3]),
        .O(rgbBLUE0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbBLUE0_carry_i_4
       (.I0(blueDC_latch[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(blueDC_latch[1]),
        .O(rgbBLUE0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbBLUE0_carry_i_5
       (.I0(blueDC_latch[6]),
        .I1(count_reg[6]),
        .I2(blueDC_latch[7]),
        .I3(count_reg[7]),
        .O(rgbBLUE0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbBLUE0_carry_i_6
       (.I0(blueDC_latch[4]),
        .I1(count_reg[4]),
        .I2(blueDC_latch[5]),
        .I3(count_reg[5]),
        .O(rgbBLUE0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbBLUE0_carry_i_7
       (.I0(blueDC_latch[2]),
        .I1(count_reg[2]),
        .I2(blueDC_latch[3]),
        .I3(count_reg[3]),
        .O(rgbBLUE0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbBLUE0_carry_i_8
       (.I0(blueDC_latch[0]),
        .I1(count_reg[0]),
        .I2(blueDC_latch[1]),
        .I3(count_reg[1]),
        .O(rgbBLUE0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rgbBLUE_INST_0
       (.I0(enable),
        .I1(rgbBLUE0),
        .O(rgbBLUE));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbGREEN0_carry
       (.CI(1'b0),
        .CO({rgbGREEN0_carry_n_0,rgbGREEN0_carry_n_1,rgbGREEN0_carry_n_2,rgbGREEN0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgbGREEN0_carry_i_1_n_0,rgbGREEN0_carry_i_2_n_0,rgbGREEN0_carry_i_3_n_0,rgbGREEN0_carry_i_4_n_0}),
        .O(NLW_rgbGREEN0_carry_O_UNCONNECTED[3:0]),
        .S({rgbGREEN0_carry_i_5_n_0,rgbGREEN0_carry_i_6_n_0,rgbGREEN0_carry_i_7_n_0,rgbGREEN0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbGREEN0_carry__0
       (.CI(rgbGREEN0_carry_n_0),
        .CO({NLW_rgbGREEN0_carry__0_CO_UNCONNECTED[3:2],rgbGREEN0,rgbGREEN0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgbGREEN0_carry__0_i_1_n_0}),
        .O(NLW_rgbGREEN0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rgbGREEN0_carry__0_i_2_n_0,rgbGREEN0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbGREEN0_carry__0_i_1
       (.I0(greenDC_latch[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(greenDC_latch[9]),
        .O(rgbGREEN0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rgbGREEN0_carry__0_i_2
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(rgbGREEN0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbGREEN0_carry__0_i_3
       (.I0(greenDC_latch[8]),
        .I1(count_reg[8]),
        .I2(greenDC_latch[9]),
        .I3(count_reg[9]),
        .O(rgbGREEN0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbGREEN0_carry_i_1
       (.I0(greenDC_latch[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(greenDC_latch[7]),
        .O(rgbGREEN0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbGREEN0_carry_i_2
       (.I0(greenDC_latch[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(greenDC_latch[5]),
        .O(rgbGREEN0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbGREEN0_carry_i_3
       (.I0(greenDC_latch[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(greenDC_latch[3]),
        .O(rgbGREEN0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbGREEN0_carry_i_4
       (.I0(greenDC_latch[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(greenDC_latch[1]),
        .O(rgbGREEN0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbGREEN0_carry_i_5
       (.I0(greenDC_latch[6]),
        .I1(count_reg[6]),
        .I2(greenDC_latch[7]),
        .I3(count_reg[7]),
        .O(rgbGREEN0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbGREEN0_carry_i_6
       (.I0(greenDC_latch[4]),
        .I1(count_reg[4]),
        .I2(greenDC_latch[5]),
        .I3(count_reg[5]),
        .O(rgbGREEN0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbGREEN0_carry_i_7
       (.I0(greenDC_latch[2]),
        .I1(count_reg[2]),
        .I2(greenDC_latch[3]),
        .I3(count_reg[3]),
        .O(rgbGREEN0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbGREEN0_carry_i_8
       (.I0(greenDC_latch[0]),
        .I1(count_reg[0]),
        .I2(greenDC_latch[1]),
        .I3(count_reg[1]),
        .O(rgbGREEN0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rgbGREEN_INST_0
       (.I0(enable),
        .I1(rgbGREEN0),
        .O(rgbGREEN));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbRED0_carry
       (.CI(1'b0),
        .CO({rgbRED0_carry_n_0,rgbRED0_carry_n_1,rgbRED0_carry_n_2,rgbRED0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgbRED0_carry_i_1_n_0,rgbRED0_carry_i_2_n_0,rgbRED0_carry_i_3_n_0,rgbRED0_carry_i_4_n_0}),
        .O(NLW_rgbRED0_carry_O_UNCONNECTED[3:0]),
        .S({rgbRED0_carry_i_5_n_0,rgbRED0_carry_i_6_n_0,rgbRED0_carry_i_7_n_0,rgbRED0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rgbRED0_carry__0
       (.CI(rgbRED0_carry_n_0),
        .CO({NLW_rgbRED0_carry__0_CO_UNCONNECTED[3:2],rgbRED0,rgbRED0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgbRED0_carry__0_i_1_n_0}),
        .O(NLW_rgbRED0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rgbRED0_carry__0_i_2_n_0,rgbRED0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbRED0_carry__0_i_1
       (.I0(redDC_latch[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(redDC_latch[9]),
        .O(rgbRED0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rgbRED0_carry__0_i_2
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(rgbRED0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbRED0_carry__0_i_3
       (.I0(redDC_latch[8]),
        .I1(count_reg[8]),
        .I2(redDC_latch[9]),
        .I3(count_reg[9]),
        .O(rgbRED0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbRED0_carry_i_1
       (.I0(redDC_latch[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(redDC_latch[7]),
        .O(rgbRED0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbRED0_carry_i_2
       (.I0(redDC_latch[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(redDC_latch[5]),
        .O(rgbRED0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbRED0_carry_i_3
       (.I0(redDC_latch[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(redDC_latch[3]),
        .O(rgbRED0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rgbRED0_carry_i_4
       (.I0(redDC_latch[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(redDC_latch[1]),
        .O(rgbRED0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbRED0_carry_i_5
       (.I0(redDC_latch[6]),
        .I1(count_reg[6]),
        .I2(redDC_latch[7]),
        .I3(count_reg[7]),
        .O(rgbRED0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbRED0_carry_i_6
       (.I0(redDC_latch[4]),
        .I1(count_reg[4]),
        .I2(redDC_latch[5]),
        .I3(count_reg[5]),
        .O(rgbRED0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbRED0_carry_i_7
       (.I0(redDC_latch[2]),
        .I1(count_reg[2]),
        .I2(redDC_latch[3]),
        .I3(count_reg[3]),
        .O(rgbRED0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rgbRED0_carry_i_8
       (.I0(redDC_latch[0]),
        .I1(count_reg[0]),
        .I2(redDC_latch[1]),
        .I3(count_reg[1]),
        .O(rgbRED0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rgbRED_INST_0
       (.I0(enable),
        .I1(rgbRED0),
        .O(rgbRED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
