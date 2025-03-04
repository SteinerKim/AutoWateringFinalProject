////////////
// Top-level module for ECE 544 Project #1
// May have to be modified for your specific embedded system implementation
///////////
`timescale 1 ps / 1 ps

module nexysa7fpga
   (
	input logic			clk,
	input logic [15:0]	sw,
	input logic		    btnU,
	input logic		    btnR,
	input logic			btnL,
	input logic			btnD,
	input logic			btnC,			// not used in project 1
	input logic			btnCpuReset,
	input logic vaux3n,
	input logic vaux3p,
	input logic vaux10n,
	input logic vaux10p,
	input logic vaux2n,
	input logic vaux2p,
	input logic vaux11n,
	input logic vaux11p,
	output logic [15:0]	led,
    output logic RGB1_Blue, RGB1_Green, RGB1_Red,
	output logic RGB2_Blue,RGB2_Green, RGB2_Red,	
    output logic [7:0]	an,
	output logic [6:0]	seg,
    output logic		dp,
    input logic uart_rtl_rxd,
    output logic uart_rtl_txd
);
    
  wire [31:0] control_reg, gpio_rtl_tri_o;
  wire [4:0] channel_out_0;
  
  // wrap the gpio output to the rgbPWM control register
  assign control_reg = gpio_rtl_tri_o;

  // instantiate the embedded system
  embsys embsys_i
       (.gpio_rtl_0_tri_o(gpio_rtl_tri_o),
        .RGB2_Blue_0(RGB2_Blue),
        .RGB2_Green_0(RGB2_Green),
        .RGB2_Red_0(RGB2_Red),
        .UART_0_rxd(uart_rtl_rxd),
        .UART_0_txd(uart_rtl_txd),
        .Vaux10_0_v_n(vaux10n),
        .Vaux10_0_v_p(vaux10p),
        .Vaux11_0_v_n(vaux11n),
        .Vaux11_0_v_p(vaux11p),
        .Vaux2_0_v_n(vaux2n),
        .Vaux2_0_v_p(vaux2p),
        .Vaux3_0_v_n(vaux3n),
        .Vaux3_0_v_p(vaux3p),
        .an_0(an),
        .btnC_0(btnC),
        .btnD_0(btnD),
        .btnL_0(btnL),
        .btnR_0(btnR),
        .btnU_0(btnU),
        .channel_out_0(channel_out_0),
        .clkPWM_0(),
        .clk_100MHz(clk),
        .controlReg_0(control_reg),
        .dp_0(dp),
        .led_0(led),
        .resetn(btnCpuReset),
        .rgbBLUE_0(RGB1_Blue),
        .rgbGREEN_0(RGB1_Green),
        .rgbRED_0(RGB1_Red),
        .seg_0(seg),
        .sw_0(sw));
        
endmodule
