// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 12 17:14:25 2025
// Host        : PDXKSTEINER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_PWM_Analyzer_0_0_sim_netlist.v
// Design      : embsys_PWM_Analyzer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    pwm,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input pwm;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire pwm;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0_S00_AXI PWM_Analyzer_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    pwm,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input pwm;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:7]p_0_in;
  wire pwm;
  wire pwm_clean;
  wire pwm_delay;
  wire [31:0]reg_data_out;
  wire reset;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [30:0]slv_reg0;
  wire [30:0]slv_reg1;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(reset));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(reset));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg1[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(slv_reg1[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[10]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(slv_reg1[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg1[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[12]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg1[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[13]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(slv_reg1[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[14]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(slv_reg1[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[15]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(slv_reg1[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(slv_reg1[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[17]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(slv_reg1[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(slv_reg1[19]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg1[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(slv_reg1[20]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[20]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(slv_reg1[21]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[21]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(slv_reg1[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[22]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(slv_reg1[23]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[23]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(slv_reg1[24]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[24]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(slv_reg1[25]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[25]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(slv_reg1[26]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[26]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(slv_reg1[27]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[27]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(slv_reg1[28]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[28]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(slv_reg1[29]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[29]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(slv_reg1[2]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(slv_reg1[30]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[30]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[31]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(slv_reg1[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[3]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg1[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[4]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg1[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[5]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(slv_reg1[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[6]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg1[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[7]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg1[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[8]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg1[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[9]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(reset));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(reset));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(reset));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(reset));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(reset));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(reset));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(reset));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(reset));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(reset));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(reset));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(reset));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(reset));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(reset));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(reset));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(reset));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(reset));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(reset));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(reset));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(reset));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(reset));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(reset));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(reset));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(reset));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(reset));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(reset));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(reset));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(reset));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(reset));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(reset));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(reset));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(reset));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulseLength pulse_length
       (.Q(slv_reg0),
        .SR(reset),
        .\pw_high_reg[30]_0 (slv_reg1),
        .pwm_clean(pwm_clean),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg2(slv_reg2));
  FDRE pwm_clean_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm_delay),
        .Q(pwm_clean),
        .R(1'b0));
  FDRE pwm_delay_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm),
        .Q(pwm_delay),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(reset));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(reset));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(reset));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(reset));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(reset));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(reset));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(reset));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(reset));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(reset));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(reset));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(reset));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(reset));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(reset));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(reset));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(reset));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(reset));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(reset));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(reset));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(reset));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(reset));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(reset));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(reset));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(reset));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(reset));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(reset));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(reset));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(reset));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(reset));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(reset));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(reset));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(reset));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "embsys_PWM_Analyzer_0_0,PWM_Analyzer_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PWM_Analyzer_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pwm,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input pwm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF S00_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire pwm;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulseLength
   (slv_reg2,
    Q,
    SR,
    \pw_high_reg[30]_0 ,
    pwm_clean,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]slv_reg2;
  output [30:0]Q;
  output [0:0]SR;
  output [30:0]\pw_high_reg[30]_0 ;
  input pwm_clean;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire [30:0]Q;
  wire [0:0]SR;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_1 ;
  wire \axi_rdata_reg[11]_i_2_n_2 ;
  wire \axi_rdata_reg[11]_i_2_n_3 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_1 ;
  wire \axi_rdata_reg[15]_i_2_n_2 ;
  wire \axi_rdata_reg[15]_i_2_n_3 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_1 ;
  wire \axi_rdata_reg[19]_i_2_n_2 ;
  wire \axi_rdata_reg[19]_i_2_n_3 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_1 ;
  wire \axi_rdata_reg[23]_i_2_n_2 ;
  wire \axi_rdata_reg[23]_i_2_n_3 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_1 ;
  wire \axi_rdata_reg[27]_i_2_n_2 ;
  wire \axi_rdata_reg[27]_i_2_n_3 ;
  wire \axi_rdata_reg[31]_i_2_n_2 ;
  wire \axi_rdata_reg[31]_i_2_n_3 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_1 ;
  wire \axi_rdata_reg[3]_i_2_n_2 ;
  wire \axi_rdata_reg[3]_i_2_n_3 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_1 ;
  wire \axi_rdata_reg[7]_i_2_n_2 ;
  wire \axi_rdata_reg[7]_i_2_n_3 ;
  wire [0:0]count_clk0;
  wire \count_clk0[10]_i_1_n_0 ;
  wire \count_clk0[11]_i_1_n_0 ;
  wire \count_clk0[12]_i_1_n_0 ;
  wire \count_clk0[13]_i_1_n_0 ;
  wire \count_clk0[14]_i_1_n_0 ;
  wire \count_clk0[15]_i_1_n_0 ;
  wire \count_clk0[16]_i_1_n_0 ;
  wire \count_clk0[17]_i_1_n_0 ;
  wire \count_clk0[18]_i_1_n_0 ;
  wire \count_clk0[19]_i_1_n_0 ;
  wire \count_clk0[1]_i_1_n_0 ;
  wire \count_clk0[20]_i_1_n_0 ;
  wire \count_clk0[21]_i_1_n_0 ;
  wire \count_clk0[22]_i_1_n_0 ;
  wire \count_clk0[23]_i_1_n_0 ;
  wire \count_clk0[24]_i_1_n_0 ;
  wire \count_clk0[25]_i_1_n_0 ;
  wire \count_clk0[26]_i_1_n_0 ;
  wire \count_clk0[27]_i_1_n_0 ;
  wire \count_clk0[28]_i_1_n_0 ;
  wire \count_clk0[29]_i_1_n_0 ;
  wire \count_clk0[2]_i_1_n_0 ;
  wire \count_clk0[30]_i_10_n_0 ;
  wire \count_clk0[30]_i_11_n_0 ;
  wire \count_clk0[30]_i_1_n_0 ;
  wire \count_clk0[30]_i_2_n_0 ;
  wire \count_clk0[30]_i_3_n_0 ;
  wire \count_clk0[30]_i_4_n_0 ;
  wire \count_clk0[30]_i_5_n_0 ;
  wire \count_clk0[30]_i_7_n_0 ;
  wire \count_clk0[30]_i_8_n_0 ;
  wire \count_clk0[30]_i_9_n_0 ;
  wire \count_clk0[3]_i_1_n_0 ;
  wire \count_clk0[4]_i_1_n_0 ;
  wire \count_clk0[5]_i_1_n_0 ;
  wire \count_clk0[6]_i_1_n_0 ;
  wire \count_clk0[7]_i_1_n_0 ;
  wire \count_clk0[8]_i_1_n_0 ;
  wire \count_clk0[9]_i_1_n_0 ;
  wire \count_clk0_reg[12]_i_2_n_0 ;
  wire \count_clk0_reg[12]_i_2_n_1 ;
  wire \count_clk0_reg[12]_i_2_n_2 ;
  wire \count_clk0_reg[12]_i_2_n_3 ;
  wire \count_clk0_reg[16]_i_2_n_0 ;
  wire \count_clk0_reg[16]_i_2_n_1 ;
  wire \count_clk0_reg[16]_i_2_n_2 ;
  wire \count_clk0_reg[16]_i_2_n_3 ;
  wire \count_clk0_reg[20]_i_2_n_0 ;
  wire \count_clk0_reg[20]_i_2_n_1 ;
  wire \count_clk0_reg[20]_i_2_n_2 ;
  wire \count_clk0_reg[20]_i_2_n_3 ;
  wire \count_clk0_reg[24]_i_2_n_0 ;
  wire \count_clk0_reg[24]_i_2_n_1 ;
  wire \count_clk0_reg[24]_i_2_n_2 ;
  wire \count_clk0_reg[24]_i_2_n_3 ;
  wire \count_clk0_reg[28]_i_2_n_0 ;
  wire \count_clk0_reg[28]_i_2_n_1 ;
  wire \count_clk0_reg[28]_i_2_n_2 ;
  wire \count_clk0_reg[28]_i_2_n_3 ;
  wire \count_clk0_reg[30]_i_6_n_3 ;
  wire \count_clk0_reg[4]_i_2_n_0 ;
  wire \count_clk0_reg[4]_i_2_n_1 ;
  wire \count_clk0_reg[4]_i_2_n_2 ;
  wire \count_clk0_reg[4]_i_2_n_3 ;
  wire \count_clk0_reg[8]_i_2_n_0 ;
  wire \count_clk0_reg[8]_i_2_n_1 ;
  wire \count_clk0_reg[8]_i_2_n_2 ;
  wire \count_clk0_reg[8]_i_2_n_3 ;
  wire \count_clk0_reg_n_0_[0] ;
  wire \count_clk0_reg_n_0_[10] ;
  wire \count_clk0_reg_n_0_[11] ;
  wire \count_clk0_reg_n_0_[12] ;
  wire \count_clk0_reg_n_0_[13] ;
  wire \count_clk0_reg_n_0_[14] ;
  wire \count_clk0_reg_n_0_[15] ;
  wire \count_clk0_reg_n_0_[16] ;
  wire \count_clk0_reg_n_0_[17] ;
  wire \count_clk0_reg_n_0_[18] ;
  wire \count_clk0_reg_n_0_[19] ;
  wire \count_clk0_reg_n_0_[1] ;
  wire \count_clk0_reg_n_0_[20] ;
  wire \count_clk0_reg_n_0_[21] ;
  wire \count_clk0_reg_n_0_[22] ;
  wire \count_clk0_reg_n_0_[23] ;
  wire \count_clk0_reg_n_0_[24] ;
  wire \count_clk0_reg_n_0_[25] ;
  wire \count_clk0_reg_n_0_[26] ;
  wire \count_clk0_reg_n_0_[27] ;
  wire \count_clk0_reg_n_0_[28] ;
  wire \count_clk0_reg_n_0_[29] ;
  wire \count_clk0_reg_n_0_[2] ;
  wire \count_clk0_reg_n_0_[30] ;
  wire \count_clk0_reg_n_0_[3] ;
  wire \count_clk0_reg_n_0_[4] ;
  wire \count_clk0_reg_n_0_[5] ;
  wire \count_clk0_reg_n_0_[6] ;
  wire \count_clk0_reg_n_0_[7] ;
  wire \count_clk0_reg_n_0_[8] ;
  wire \count_clk0_reg_n_0_[9] ;
  wire [0:0]count_clk1;
  wire \count_clk1[10]_i_1_n_0 ;
  wire \count_clk1[11]_i_1_n_0 ;
  wire \count_clk1[12]_i_1_n_0 ;
  wire \count_clk1[13]_i_1_n_0 ;
  wire \count_clk1[14]_i_1_n_0 ;
  wire \count_clk1[15]_i_1_n_0 ;
  wire \count_clk1[16]_i_1_n_0 ;
  wire \count_clk1[17]_i_1_n_0 ;
  wire \count_clk1[18]_i_1_n_0 ;
  wire \count_clk1[19]_i_1_n_0 ;
  wire \count_clk1[1]_i_1_n_0 ;
  wire \count_clk1[20]_i_1_n_0 ;
  wire \count_clk1[21]_i_1_n_0 ;
  wire \count_clk1[22]_i_1_n_0 ;
  wire \count_clk1[23]_i_1_n_0 ;
  wire \count_clk1[24]_i_1_n_0 ;
  wire \count_clk1[25]_i_1_n_0 ;
  wire \count_clk1[26]_i_1_n_0 ;
  wire \count_clk1[27]_i_1_n_0 ;
  wire \count_clk1[28]_i_1_n_0 ;
  wire \count_clk1[29]_i_1_n_0 ;
  wire \count_clk1[2]_i_1_n_0 ;
  wire \count_clk1[30]_i_10_n_0 ;
  wire \count_clk1[30]_i_11_n_0 ;
  wire \count_clk1[30]_i_1_n_0 ;
  wire \count_clk1[30]_i_2_n_0 ;
  wire \count_clk1[30]_i_3_n_0 ;
  wire \count_clk1[30]_i_4_n_0 ;
  wire \count_clk1[30]_i_5_n_0 ;
  wire \count_clk1[30]_i_7_n_0 ;
  wire \count_clk1[30]_i_8_n_0 ;
  wire \count_clk1[30]_i_9_n_0 ;
  wire \count_clk1[3]_i_1_n_0 ;
  wire \count_clk1[4]_i_1_n_0 ;
  wire \count_clk1[5]_i_1_n_0 ;
  wire \count_clk1[6]_i_1_n_0 ;
  wire \count_clk1[7]_i_1_n_0 ;
  wire \count_clk1[8]_i_1_n_0 ;
  wire \count_clk1[9]_i_1_n_0 ;
  wire \count_clk1_reg[12]_i_2_n_0 ;
  wire \count_clk1_reg[12]_i_2_n_1 ;
  wire \count_clk1_reg[12]_i_2_n_2 ;
  wire \count_clk1_reg[12]_i_2_n_3 ;
  wire \count_clk1_reg[16]_i_2_n_0 ;
  wire \count_clk1_reg[16]_i_2_n_1 ;
  wire \count_clk1_reg[16]_i_2_n_2 ;
  wire \count_clk1_reg[16]_i_2_n_3 ;
  wire \count_clk1_reg[20]_i_2_n_0 ;
  wire \count_clk1_reg[20]_i_2_n_1 ;
  wire \count_clk1_reg[20]_i_2_n_2 ;
  wire \count_clk1_reg[20]_i_2_n_3 ;
  wire \count_clk1_reg[24]_i_2_n_0 ;
  wire \count_clk1_reg[24]_i_2_n_1 ;
  wire \count_clk1_reg[24]_i_2_n_2 ;
  wire \count_clk1_reg[24]_i_2_n_3 ;
  wire \count_clk1_reg[28]_i_2_n_0 ;
  wire \count_clk1_reg[28]_i_2_n_1 ;
  wire \count_clk1_reg[28]_i_2_n_2 ;
  wire \count_clk1_reg[28]_i_2_n_3 ;
  wire \count_clk1_reg[30]_i_6_n_3 ;
  wire \count_clk1_reg[4]_i_2_n_0 ;
  wire \count_clk1_reg[4]_i_2_n_1 ;
  wire \count_clk1_reg[4]_i_2_n_2 ;
  wire \count_clk1_reg[4]_i_2_n_3 ;
  wire \count_clk1_reg[8]_i_2_n_0 ;
  wire \count_clk1_reg[8]_i_2_n_1 ;
  wire \count_clk1_reg[8]_i_2_n_2 ;
  wire \count_clk1_reg[8]_i_2_n_3 ;
  wire \count_clk1_reg_n_0_[0] ;
  wire \count_clk1_reg_n_0_[10] ;
  wire \count_clk1_reg_n_0_[11] ;
  wire \count_clk1_reg_n_0_[12] ;
  wire \count_clk1_reg_n_0_[13] ;
  wire \count_clk1_reg_n_0_[14] ;
  wire \count_clk1_reg_n_0_[15] ;
  wire \count_clk1_reg_n_0_[16] ;
  wire \count_clk1_reg_n_0_[17] ;
  wire \count_clk1_reg_n_0_[18] ;
  wire \count_clk1_reg_n_0_[19] ;
  wire \count_clk1_reg_n_0_[1] ;
  wire \count_clk1_reg_n_0_[20] ;
  wire \count_clk1_reg_n_0_[21] ;
  wire \count_clk1_reg_n_0_[22] ;
  wire \count_clk1_reg_n_0_[23] ;
  wire \count_clk1_reg_n_0_[24] ;
  wire \count_clk1_reg_n_0_[25] ;
  wire \count_clk1_reg_n_0_[26] ;
  wire \count_clk1_reg_n_0_[27] ;
  wire \count_clk1_reg_n_0_[28] ;
  wire \count_clk1_reg_n_0_[29] ;
  wire \count_clk1_reg_n_0_[2] ;
  wire \count_clk1_reg_n_0_[30] ;
  wire \count_clk1_reg_n_0_[3] ;
  wire \count_clk1_reg_n_0_[4] ;
  wire \count_clk1_reg_n_0_[5] ;
  wire \count_clk1_reg_n_0_[6] ;
  wire \count_clk1_reg_n_0_[7] ;
  wire \count_clk1_reg_n_0_[8] ;
  wire \count_clk1_reg_n_0_[9] ;
  wire [30:1]in10;
  wire [30:1]in8;
  wire [1:0]ns;
  wire [1:0]ps;
  wire \pw_high[30]_i_1_n_0 ;
  wire [30:0]\pw_high_reg[30]_0 ;
  wire \pw_low[30]_i_1_n_0 ;
  wire pwm_clean;
  wire pwm_prev;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]slv_reg2;
  wire [2:2]\NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_count_clk0_reg[30]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_clk0_reg[30]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_count_clk1_reg[30]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_clk1_reg[30]_i_6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE1F2)) 
    \FSM_sequential_ps[0]_i_1 
       (.I0(ps[0]),
        .I1(ps[1]),
        .I2(pwm_clean),
        .I3(pwm_prev),
        .O(ns[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBEAA)) 
    \FSM_sequential_ps[1]_i_1 
       (.I0(ps[1]),
        .I1(pwm_clean),
        .I2(pwm_prev),
        .I3(ps[0]),
        .O(ns[1]));
  (* FSM_ENCODED_STATES = "init:00,first:01,high:11,low:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ns[0]),
        .Q(ps[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "init:00,first:01,high:11,low:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ns[1]),
        .Q(ps[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_3 
       (.I0(Q[11]),
        .I1(\pw_high_reg[30]_0 [11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_4 
       (.I0(Q[10]),
        .I1(\pw_high_reg[30]_0 [10]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_5 
       (.I0(Q[9]),
        .I1(\pw_high_reg[30]_0 [9]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_6 
       (.I0(Q[8]),
        .I1(\pw_high_reg[30]_0 [8]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_3 
       (.I0(Q[15]),
        .I1(\pw_high_reg[30]_0 [15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_4 
       (.I0(Q[14]),
        .I1(\pw_high_reg[30]_0 [14]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_5 
       (.I0(Q[13]),
        .I1(\pw_high_reg[30]_0 [13]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_6 
       (.I0(Q[12]),
        .I1(\pw_high_reg[30]_0 [12]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_3 
       (.I0(Q[19]),
        .I1(\pw_high_reg[30]_0 [19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_4 
       (.I0(Q[18]),
        .I1(\pw_high_reg[30]_0 [18]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_5 
       (.I0(Q[17]),
        .I1(\pw_high_reg[30]_0 [17]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_6 
       (.I0(Q[16]),
        .I1(\pw_high_reg[30]_0 [16]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_3 
       (.I0(Q[23]),
        .I1(\pw_high_reg[30]_0 [23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_4 
       (.I0(Q[22]),
        .I1(\pw_high_reg[30]_0 [22]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_5 
       (.I0(Q[21]),
        .I1(\pw_high_reg[30]_0 [21]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_6 
       (.I0(Q[20]),
        .I1(\pw_high_reg[30]_0 [20]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_3 
       (.I0(Q[27]),
        .I1(\pw_high_reg[30]_0 [27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_4 
       (.I0(Q[26]),
        .I1(\pw_high_reg[30]_0 [26]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_5 
       (.I0(Q[25]),
        .I1(\pw_high_reg[30]_0 [25]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_6 
       (.I0(Q[24]),
        .I1(\pw_high_reg[30]_0 [24]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_3 
       (.I0(Q[30]),
        .I1(\pw_high_reg[30]_0 [30]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_4 
       (.I0(Q[29]),
        .I1(\pw_high_reg[30]_0 [29]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_5 
       (.I0(Q[28]),
        .I1(\pw_high_reg[30]_0 [28]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_3 
       (.I0(Q[3]),
        .I1(\pw_high_reg[30]_0 [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_4 
       (.I0(Q[2]),
        .I1(\pw_high_reg[30]_0 [2]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_5 
       (.I0(Q[1]),
        .I1(\pw_high_reg[30]_0 [1]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_6 
       (.I0(Q[0]),
        .I1(\pw_high_reg[30]_0 [0]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_3 
       (.I0(Q[7]),
        .I1(\pw_high_reg[30]_0 [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_4 
       (.I0(Q[6]),
        .I1(\pw_high_reg[30]_0 [6]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_5 
       (.I0(Q[5]),
        .I1(\pw_high_reg[30]_0 [5]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_6 
       (.I0(Q[4]),
        .I1(\pw_high_reg[30]_0 [4]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  CARRY4 \axi_rdata_reg[11]_i_2 
       (.CI(\axi_rdata_reg[7]_i_2_n_0 ),
        .CO({\axi_rdata_reg[11]_i_2_n_0 ,\axi_rdata_reg[11]_i_2_n_1 ,\axi_rdata_reg[11]_i_2_n_2 ,\axi_rdata_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(slv_reg2[11:8]),
        .S({\axi_rdata[11]_i_3_n_0 ,\axi_rdata[11]_i_4_n_0 ,\axi_rdata[11]_i_5_n_0 ,\axi_rdata[11]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[15]_i_2 
       (.CI(\axi_rdata_reg[11]_i_2_n_0 ),
        .CO({\axi_rdata_reg[15]_i_2_n_0 ,\axi_rdata_reg[15]_i_2_n_1 ,\axi_rdata_reg[15]_i_2_n_2 ,\axi_rdata_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(slv_reg2[15:12]),
        .S({\axi_rdata[15]_i_3_n_0 ,\axi_rdata[15]_i_4_n_0 ,\axi_rdata[15]_i_5_n_0 ,\axi_rdata[15]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[19]_i_2 
       (.CI(\axi_rdata_reg[15]_i_2_n_0 ),
        .CO({\axi_rdata_reg[19]_i_2_n_0 ,\axi_rdata_reg[19]_i_2_n_1 ,\axi_rdata_reg[19]_i_2_n_2 ,\axi_rdata_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(slv_reg2[19:16]),
        .S({\axi_rdata[19]_i_3_n_0 ,\axi_rdata[19]_i_4_n_0 ,\axi_rdata[19]_i_5_n_0 ,\axi_rdata[19]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[23]_i_2 
       (.CI(\axi_rdata_reg[19]_i_2_n_0 ),
        .CO({\axi_rdata_reg[23]_i_2_n_0 ,\axi_rdata_reg[23]_i_2_n_1 ,\axi_rdata_reg[23]_i_2_n_2 ,\axi_rdata_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(slv_reg2[23:20]),
        .S({\axi_rdata[23]_i_3_n_0 ,\axi_rdata[23]_i_4_n_0 ,\axi_rdata[23]_i_5_n_0 ,\axi_rdata[23]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[27]_i_2 
       (.CI(\axi_rdata_reg[23]_i_2_n_0 ),
        .CO({\axi_rdata_reg[27]_i_2_n_0 ,\axi_rdata_reg[27]_i_2_n_1 ,\axi_rdata_reg[27]_i_2_n_2 ,\axi_rdata_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(slv_reg2[27:24]),
        .S({\axi_rdata[27]_i_3_n_0 ,\axi_rdata[27]_i_4_n_0 ,\axi_rdata[27]_i_5_n_0 ,\axi_rdata[27]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[31]_i_2 
       (.CI(\axi_rdata_reg[27]_i_2_n_0 ),
        .CO({slv_reg2[31],\NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED [2],\axi_rdata_reg[31]_i_2_n_2 ,\axi_rdata_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O({\NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED [3],slv_reg2[30:28]}),
        .S({1'b1,\axi_rdata[31]_i_3_n_0 ,\axi_rdata[31]_i_4_n_0 ,\axi_rdata[31]_i_5_n_0 }));
  CARRY4 \axi_rdata_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axi_rdata_reg[3]_i_2_n_0 ,\axi_rdata_reg[3]_i_2_n_1 ,\axi_rdata_reg[3]_i_2_n_2 ,\axi_rdata_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(slv_reg2[3:0]),
        .S({\axi_rdata[3]_i_3_n_0 ,\axi_rdata[3]_i_4_n_0 ,\axi_rdata[3]_i_5_n_0 ,\axi_rdata[3]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[7]_i_2 
       (.CI(\axi_rdata_reg[3]_i_2_n_0 ),
        .CO({\axi_rdata_reg[7]_i_2_n_0 ,\axi_rdata_reg[7]_i_2_n_1 ,\axi_rdata_reg[7]_i_2_n_2 ,\axi_rdata_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(slv_reg2[7:4]),
        .S({\axi_rdata[7]_i_3_n_0 ,\axi_rdata[7]_i_4_n_0 ,\axi_rdata[7]_i_5_n_0 ,\axi_rdata[7]_i_6_n_0 }));
  LUT3 #(
    .INIT(8'h06)) 
    \count_clk0[0]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(\count_clk0_reg_n_0_[0] ),
        .O(count_clk0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[10]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[10]),
        .O(\count_clk0[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[11]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[11]),
        .O(\count_clk0[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[12]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[12]),
        .O(\count_clk0[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[13]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[13]),
        .O(\count_clk0[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[14]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[14]),
        .O(\count_clk0[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[15]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[15]),
        .O(\count_clk0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[16]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[16]),
        .O(\count_clk0[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[17]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[17]),
        .O(\count_clk0[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[18]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[18]),
        .O(\count_clk0[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[19]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[19]),
        .O(\count_clk0[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[1]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[1]),
        .O(\count_clk0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[20]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[20]),
        .O(\count_clk0[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[21]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[21]),
        .O(\count_clk0[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[22]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[22]),
        .O(\count_clk0[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[23]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[23]),
        .O(\count_clk0[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[24]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[24]),
        .O(\count_clk0[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[25]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[25]),
        .O(\count_clk0[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[26]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[26]),
        .O(\count_clk0[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[27]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[27]),
        .O(\count_clk0[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[28]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[28]),
        .O(\count_clk0[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[29]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[29]),
        .O(\count_clk0[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[2]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[2]),
        .O(\count_clk0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD1FFFFFFFF)) 
    \count_clk0[30]_i_1 
       (.I0(pwm_clean),
        .I1(ps[1]),
        .I2(\count_clk0[30]_i_3_n_0 ),
        .I3(\count_clk0[30]_i_4_n_0 ),
        .I4(\count_clk0[30]_i_5_n_0 ),
        .I5(ps[0]),
        .O(\count_clk0[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_10 
       (.I0(\count_clk0_reg_n_0_[12] ),
        .I1(\count_clk0_reg_n_0_[11] ),
        .I2(\count_clk0_reg_n_0_[14] ),
        .I3(\count_clk0_reg_n_0_[13] ),
        .O(\count_clk0[30]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_11 
       (.I0(\count_clk0_reg_n_0_[8] ),
        .I1(\count_clk0_reg_n_0_[7] ),
        .I2(\count_clk0_reg_n_0_[10] ),
        .I3(\count_clk0_reg_n_0_[9] ),
        .O(\count_clk0[30]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[30]_i_2 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[30]),
        .O(\count_clk0[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk0[30]_i_3 
       (.I0(\count_clk0_reg_n_0_[17] ),
        .I1(\count_clk0_reg_n_0_[18] ),
        .I2(\count_clk0_reg_n_0_[15] ),
        .I3(\count_clk0_reg_n_0_[16] ),
        .I4(\count_clk0[30]_i_7_n_0 ),
        .O(\count_clk0[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk0[30]_i_4 
       (.I0(\count_clk0_reg_n_0_[25] ),
        .I1(\count_clk0_reg_n_0_[26] ),
        .I2(\count_clk0_reg_n_0_[23] ),
        .I3(\count_clk0_reg_n_0_[24] ),
        .I4(\count_clk0[30]_i_8_n_0 ),
        .O(\count_clk0[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_clk0[30]_i_5 
       (.I0(\count_clk0[30]_i_9_n_0 ),
        .I1(\count_clk0_reg_n_0_[0] ),
        .I2(\count_clk0_reg_n_0_[2] ),
        .I3(\count_clk0_reg_n_0_[1] ),
        .I4(\count_clk0[30]_i_10_n_0 ),
        .I5(\count_clk0[30]_i_11_n_0 ),
        .O(\count_clk0[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_7 
       (.I0(\count_clk0_reg_n_0_[20] ),
        .I1(\count_clk0_reg_n_0_[19] ),
        .I2(\count_clk0_reg_n_0_[22] ),
        .I3(\count_clk0_reg_n_0_[21] ),
        .O(\count_clk0[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_8 
       (.I0(\count_clk0_reg_n_0_[28] ),
        .I1(\count_clk0_reg_n_0_[27] ),
        .I2(\count_clk0_reg_n_0_[30] ),
        .I3(\count_clk0_reg_n_0_[29] ),
        .O(\count_clk0[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_9 
       (.I0(\count_clk0_reg_n_0_[4] ),
        .I1(\count_clk0_reg_n_0_[3] ),
        .I2(\count_clk0_reg_n_0_[6] ),
        .I3(\count_clk0_reg_n_0_[5] ),
        .O(\count_clk0[30]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[3]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[3]),
        .O(\count_clk0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[4]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[4]),
        .O(\count_clk0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[5]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[5]),
        .O(\count_clk0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[6]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[6]),
        .O(\count_clk0[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[7]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[7]),
        .O(\count_clk0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[8]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[8]),
        .O(\count_clk0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[9]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[9]),
        .O(\count_clk0[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(count_clk0),
        .Q(\count_clk0_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[10]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[11]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[12]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[12] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[12]_i_2 
       (.CI(\count_clk0_reg[8]_i_2_n_0 ),
        .CO({\count_clk0_reg[12]_i_2_n_0 ,\count_clk0_reg[12]_i_2_n_1 ,\count_clk0_reg[12]_i_2_n_2 ,\count_clk0_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\count_clk0_reg_n_0_[12] ,\count_clk0_reg_n_0_[11] ,\count_clk0_reg_n_0_[10] ,\count_clk0_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[13]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[14]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[15]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[16]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[16] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[16]_i_2 
       (.CI(\count_clk0_reg[12]_i_2_n_0 ),
        .CO({\count_clk0_reg[16]_i_2_n_0 ,\count_clk0_reg[16]_i_2_n_1 ,\count_clk0_reg[16]_i_2_n_2 ,\count_clk0_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\count_clk0_reg_n_0_[16] ,\count_clk0_reg_n_0_[15] ,\count_clk0_reg_n_0_[14] ,\count_clk0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[17]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[18]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[19]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[1]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[20]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[20] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[20]_i_2 
       (.CI(\count_clk0_reg[16]_i_2_n_0 ),
        .CO({\count_clk0_reg[20]_i_2_n_0 ,\count_clk0_reg[20]_i_2_n_1 ,\count_clk0_reg[20]_i_2_n_2 ,\count_clk0_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\count_clk0_reg_n_0_[20] ,\count_clk0_reg_n_0_[19] ,\count_clk0_reg_n_0_[18] ,\count_clk0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[21]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[22]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[23]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[24]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[24] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[24]_i_2 
       (.CI(\count_clk0_reg[20]_i_2_n_0 ),
        .CO({\count_clk0_reg[24]_i_2_n_0 ,\count_clk0_reg[24]_i_2_n_1 ,\count_clk0_reg[24]_i_2_n_2 ,\count_clk0_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S({\count_clk0_reg_n_0_[24] ,\count_clk0_reg_n_0_[23] ,\count_clk0_reg_n_0_[22] ,\count_clk0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[25]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[26]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[27]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[28]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[28] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[28]_i_2 
       (.CI(\count_clk0_reg[24]_i_2_n_0 ),
        .CO({\count_clk0_reg[28]_i_2_n_0 ,\count_clk0_reg[28]_i_2_n_1 ,\count_clk0_reg[28]_i_2_n_2 ,\count_clk0_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S({\count_clk0_reg_n_0_[28] ,\count_clk0_reg_n_0_[27] ,\count_clk0_reg_n_0_[26] ,\count_clk0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[29]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[2]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[30]_i_2_n_0 ),
        .Q(\count_clk0_reg_n_0_[30] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[30]_i_6 
       (.CI(\count_clk0_reg[28]_i_2_n_0 ),
        .CO({\NLW_count_clk0_reg[30]_i_6_CO_UNCONNECTED [3:1],\count_clk0_reg[30]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_clk0_reg[30]_i_6_O_UNCONNECTED [3:2],in10[30:29]}),
        .S({1'b0,1'b0,\count_clk0_reg_n_0_[30] ,\count_clk0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[3]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[4]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[4] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_clk0_reg[4]_i_2_n_0 ,\count_clk0_reg[4]_i_2_n_1 ,\count_clk0_reg[4]_i_2_n_2 ,\count_clk0_reg[4]_i_2_n_3 }),
        .CYINIT(\count_clk0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\count_clk0_reg_n_0_[4] ,\count_clk0_reg_n_0_[3] ,\count_clk0_reg_n_0_[2] ,\count_clk0_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[5]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[6]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[7]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[8]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[8] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk0_reg[8]_i_2 
       (.CI(\count_clk0_reg[4]_i_2_n_0 ),
        .CO({\count_clk0_reg[8]_i_2_n_0 ,\count_clk0_reg[8]_i_2_n_1 ,\count_clk0_reg[8]_i_2_n_2 ,\count_clk0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\count_clk0_reg_n_0_[8] ,\count_clk0_reg_n_0_[7] ,\count_clk0_reg_n_0_[6] ,\count_clk0_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[9]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \count_clk1[0]_i_1 
       (.I0(ps[0]),
        .I1(\count_clk1_reg_n_0_[0] ),
        .O(count_clk1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[10]_i_1 
       (.I0(ps[0]),
        .I1(in8[10]),
        .O(\count_clk1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[11]_i_1 
       (.I0(ps[0]),
        .I1(in8[11]),
        .O(\count_clk1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[12]_i_1 
       (.I0(ps[0]),
        .I1(in8[12]),
        .O(\count_clk1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[13]_i_1 
       (.I0(ps[0]),
        .I1(in8[13]),
        .O(\count_clk1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[14]_i_1 
       (.I0(ps[0]),
        .I1(in8[14]),
        .O(\count_clk1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[15]_i_1 
       (.I0(ps[0]),
        .I1(in8[15]),
        .O(\count_clk1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[16]_i_1 
       (.I0(ps[0]),
        .I1(in8[16]),
        .O(\count_clk1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[17]_i_1 
       (.I0(ps[0]),
        .I1(in8[17]),
        .O(\count_clk1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[18]_i_1 
       (.I0(ps[0]),
        .I1(in8[18]),
        .O(\count_clk1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[19]_i_1 
       (.I0(ps[0]),
        .I1(in8[19]),
        .O(\count_clk1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[1]_i_1 
       (.I0(ps[0]),
        .I1(in8[1]),
        .O(\count_clk1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[20]_i_1 
       (.I0(ps[0]),
        .I1(in8[20]),
        .O(\count_clk1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[21]_i_1 
       (.I0(ps[0]),
        .I1(in8[21]),
        .O(\count_clk1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[22]_i_1 
       (.I0(ps[0]),
        .I1(in8[22]),
        .O(\count_clk1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[23]_i_1 
       (.I0(ps[0]),
        .I1(in8[23]),
        .O(\count_clk1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[24]_i_1 
       (.I0(ps[0]),
        .I1(in8[24]),
        .O(\count_clk1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[25]_i_1 
       (.I0(ps[0]),
        .I1(in8[25]),
        .O(\count_clk1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[26]_i_1 
       (.I0(ps[0]),
        .I1(in8[26]),
        .O(\count_clk1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[27]_i_1 
       (.I0(ps[0]),
        .I1(in8[27]),
        .O(\count_clk1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[28]_i_1 
       (.I0(ps[0]),
        .I1(in8[28]),
        .O(\count_clk1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[29]_i_1 
       (.I0(ps[0]),
        .I1(in8[29]),
        .O(\count_clk1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[2]_i_1 
       (.I0(ps[0]),
        .I1(in8[2]),
        .O(\count_clk1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFFFCFFFF)) 
    \count_clk1[30]_i_1 
       (.I0(pwm_clean),
        .I1(\count_clk1[30]_i_3_n_0 ),
        .I2(\count_clk1[30]_i_4_n_0 ),
        .I3(\count_clk1[30]_i_5_n_0 ),
        .I4(ps[1]),
        .I5(ps[0]),
        .O(\count_clk1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_10 
       (.I0(\count_clk1_reg_n_0_[12] ),
        .I1(\count_clk1_reg_n_0_[11] ),
        .I2(\count_clk1_reg_n_0_[14] ),
        .I3(\count_clk1_reg_n_0_[13] ),
        .O(\count_clk1[30]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_11 
       (.I0(\count_clk1_reg_n_0_[8] ),
        .I1(\count_clk1_reg_n_0_[7] ),
        .I2(\count_clk1_reg_n_0_[10] ),
        .I3(\count_clk1_reg_n_0_[9] ),
        .O(\count_clk1[30]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[30]_i_2 
       (.I0(ps[0]),
        .I1(in8[30]),
        .O(\count_clk1[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk1[30]_i_3 
       (.I0(\count_clk1_reg_n_0_[17] ),
        .I1(\count_clk1_reg_n_0_[18] ),
        .I2(\count_clk1_reg_n_0_[15] ),
        .I3(\count_clk1_reg_n_0_[16] ),
        .I4(\count_clk1[30]_i_7_n_0 ),
        .O(\count_clk1[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk1[30]_i_4 
       (.I0(\count_clk1_reg_n_0_[25] ),
        .I1(\count_clk1_reg_n_0_[26] ),
        .I2(\count_clk1_reg_n_0_[23] ),
        .I3(\count_clk1_reg_n_0_[24] ),
        .I4(\count_clk1[30]_i_8_n_0 ),
        .O(\count_clk1[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_clk1[30]_i_5 
       (.I0(\count_clk1[30]_i_9_n_0 ),
        .I1(\count_clk1_reg_n_0_[0] ),
        .I2(\count_clk1_reg_n_0_[2] ),
        .I3(\count_clk1_reg_n_0_[1] ),
        .I4(\count_clk1[30]_i_10_n_0 ),
        .I5(\count_clk1[30]_i_11_n_0 ),
        .O(\count_clk1[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_7 
       (.I0(\count_clk1_reg_n_0_[20] ),
        .I1(\count_clk1_reg_n_0_[19] ),
        .I2(\count_clk1_reg_n_0_[22] ),
        .I3(\count_clk1_reg_n_0_[21] ),
        .O(\count_clk1[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_8 
       (.I0(\count_clk1_reg_n_0_[28] ),
        .I1(\count_clk1_reg_n_0_[27] ),
        .I2(\count_clk1_reg_n_0_[30] ),
        .I3(\count_clk1_reg_n_0_[29] ),
        .O(\count_clk1[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_9 
       (.I0(\count_clk1_reg_n_0_[4] ),
        .I1(\count_clk1_reg_n_0_[3] ),
        .I2(\count_clk1_reg_n_0_[6] ),
        .I3(\count_clk1_reg_n_0_[5] ),
        .O(\count_clk1[30]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[3]_i_1 
       (.I0(ps[0]),
        .I1(in8[3]),
        .O(\count_clk1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[4]_i_1 
       (.I0(ps[0]),
        .I1(in8[4]),
        .O(\count_clk1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[5]_i_1 
       (.I0(ps[0]),
        .I1(in8[5]),
        .O(\count_clk1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[6]_i_1 
       (.I0(ps[0]),
        .I1(in8[6]),
        .O(\count_clk1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[7]_i_1 
       (.I0(ps[0]),
        .I1(in8[7]),
        .O(\count_clk1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[8]_i_1 
       (.I0(ps[0]),
        .I1(in8[8]),
        .O(\count_clk1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[9]_i_1 
       (.I0(ps[0]),
        .I1(in8[9]),
        .O(\count_clk1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(count_clk1),
        .Q(\count_clk1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[10]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[11]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[12]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[12] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[12]_i_2 
       (.CI(\count_clk1_reg[8]_i_2_n_0 ),
        .CO({\count_clk1_reg[12]_i_2_n_0 ,\count_clk1_reg[12]_i_2_n_1 ,\count_clk1_reg[12]_i_2_n_2 ,\count_clk1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S({\count_clk1_reg_n_0_[12] ,\count_clk1_reg_n_0_[11] ,\count_clk1_reg_n_0_[10] ,\count_clk1_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[13]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[14]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[15]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[16]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[16] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[16]_i_2 
       (.CI(\count_clk1_reg[12]_i_2_n_0 ),
        .CO({\count_clk1_reg[16]_i_2_n_0 ,\count_clk1_reg[16]_i_2_n_1 ,\count_clk1_reg[16]_i_2_n_2 ,\count_clk1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S({\count_clk1_reg_n_0_[16] ,\count_clk1_reg_n_0_[15] ,\count_clk1_reg_n_0_[14] ,\count_clk1_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[17]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[18]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[19]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[1]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[20]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[20] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[20]_i_2 
       (.CI(\count_clk1_reg[16]_i_2_n_0 ),
        .CO({\count_clk1_reg[20]_i_2_n_0 ,\count_clk1_reg[20]_i_2_n_1 ,\count_clk1_reg[20]_i_2_n_2 ,\count_clk1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S({\count_clk1_reg_n_0_[20] ,\count_clk1_reg_n_0_[19] ,\count_clk1_reg_n_0_[18] ,\count_clk1_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[21]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[22]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[23]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[24]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[24] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[24]_i_2 
       (.CI(\count_clk1_reg[20]_i_2_n_0 ),
        .CO({\count_clk1_reg[24]_i_2_n_0 ,\count_clk1_reg[24]_i_2_n_1 ,\count_clk1_reg[24]_i_2_n_2 ,\count_clk1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S({\count_clk1_reg_n_0_[24] ,\count_clk1_reg_n_0_[23] ,\count_clk1_reg_n_0_[22] ,\count_clk1_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[25]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[26]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[27]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[28]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[28] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[28]_i_2 
       (.CI(\count_clk1_reg[24]_i_2_n_0 ),
        .CO({\count_clk1_reg[28]_i_2_n_0 ,\count_clk1_reg[28]_i_2_n_1 ,\count_clk1_reg[28]_i_2_n_2 ,\count_clk1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S({\count_clk1_reg_n_0_[28] ,\count_clk1_reg_n_0_[27] ,\count_clk1_reg_n_0_[26] ,\count_clk1_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[29]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[2]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[30]_i_2_n_0 ),
        .Q(\count_clk1_reg_n_0_[30] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[30]_i_6 
       (.CI(\count_clk1_reg[28]_i_2_n_0 ),
        .CO({\NLW_count_clk1_reg[30]_i_6_CO_UNCONNECTED [3:1],\count_clk1_reg[30]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_clk1_reg[30]_i_6_O_UNCONNECTED [3:2],in8[30:29]}),
        .S({1'b0,1'b0,\count_clk1_reg_n_0_[30] ,\count_clk1_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[3]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[4]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[4] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_clk1_reg[4]_i_2_n_0 ,\count_clk1_reg[4]_i_2_n_1 ,\count_clk1_reg[4]_i_2_n_2 ,\count_clk1_reg[4]_i_2_n_3 }),
        .CYINIT(\count_clk1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S({\count_clk1_reg_n_0_[4] ,\count_clk1_reg_n_0_[3] ,\count_clk1_reg_n_0_[2] ,\count_clk1_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[5]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[6]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[7]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[8]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[8] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_clk1_reg[8]_i_2 
       (.CI(\count_clk1_reg[4]_i_2_n_0 ),
        .CO({\count_clk1_reg[8]_i_2_n_0 ,\count_clk1_reg[8]_i_2_n_1 ,\count_clk1_reg[8]_i_2_n_2 ,\count_clk1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S({\count_clk1_reg_n_0_[8] ,\count_clk1_reg_n_0_[7] ,\count_clk1_reg_n_0_[6] ,\count_clk1_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[9]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h00FE)) 
    \pw_high[30]_i_1 
       (.I0(\count_clk1[30]_i_3_n_0 ),
        .I1(\count_clk1[30]_i_4_n_0 ),
        .I2(\count_clk1[30]_i_5_n_0 ),
        .I3(ps[0]),
        .O(\pw_high[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[0] ),
        .Q(\pw_high_reg[30]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[10] ),
        .Q(\pw_high_reg[30]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[11] ),
        .Q(\pw_high_reg[30]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[12] ),
        .Q(\pw_high_reg[30]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[13] ),
        .Q(\pw_high_reg[30]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[14] ),
        .Q(\pw_high_reg[30]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[15] ),
        .Q(\pw_high_reg[30]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[16] ),
        .Q(\pw_high_reg[30]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[17] ),
        .Q(\pw_high_reg[30]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[18] ),
        .Q(\pw_high_reg[30]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[19] ),
        .Q(\pw_high_reg[30]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[1] ),
        .Q(\pw_high_reg[30]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[20] ),
        .Q(\pw_high_reg[30]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[21] ),
        .Q(\pw_high_reg[30]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[22] ),
        .Q(\pw_high_reg[30]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[23] ),
        .Q(\pw_high_reg[30]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[24] ),
        .Q(\pw_high_reg[30]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[25] ),
        .Q(\pw_high_reg[30]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[26] ),
        .Q(\pw_high_reg[30]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[27] ),
        .Q(\pw_high_reg[30]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[28] ),
        .Q(\pw_high_reg[30]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[29] ),
        .Q(\pw_high_reg[30]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[2] ),
        .Q(\pw_high_reg[30]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[30] ),
        .Q(\pw_high_reg[30]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[3] ),
        .Q(\pw_high_reg[30]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[4] ),
        .Q(\pw_high_reg[30]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[5] ),
        .Q(\pw_high_reg[30]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[6] ),
        .Q(\pw_high_reg[30]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[7] ),
        .Q(\pw_high_reg[30]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[8] ),
        .Q(\pw_high_reg[30]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[9] ),
        .Q(\pw_high_reg[30]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88888880)) 
    \pw_low[30]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(\count_clk0[30]_i_5_n_0 ),
        .I3(\count_clk0[30]_i_4_n_0 ),
        .I4(\count_clk0[30]_i_3_n_0 ),
        .O(\pw_low[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[23] ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[24] ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[25] ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[26] ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[27] ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[28] ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[29] ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[30] ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pwm_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm_clean),
        .Q(pwm_prev),
        .R(1'b0));
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
