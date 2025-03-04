vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/microblaze_v11_0_10
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_12
vlib riviera/lmb_bram_if_cntlr_v4_0_21
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_17
vlib riviera/xlconcat_v2_1_4
vlib riviera/mdm_v3_2_23
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/fit_timer_v2_0_10
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_29
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_31

vmap xpm riviera/xpm
vmap microblaze_v11_0_10 riviera/microblaze_v11_0_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_12 riviera/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 riviera/lmb_bram_if_cntlr_v4_0_21
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 riviera/axi_intc_v4_1_17
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap mdm_v3_2_23 riviera/mdm_v3_2_23
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap fit_timer_v2_0_10 riviera/fit_timer_v2_0_10
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_29 riviera/axi_timer_v2_0_29
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_31 riviera/axi_uartlite_v2_0_31

vlog -work xpm  -sv2k12 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_10 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/1f7b/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_23 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \

vcom -work fit_timer_v2_0_10 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/e81b/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_29 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/22b2/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ipshared/f811/hdl/nexys4io_v3_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/f811/hdl/nexys4io_v3_0.v" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/f811/src/rgbpwm.v" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/f811/src/debounce.v" \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/f811/src/sevensegment.v" \
"../../../bd/embsys/ip/embsys_nexys4io_0_0/sim/embsys_nexys4io_0_0.v" \
"../../../bd/embsys/ipshared/3593/hdl/pulseLength.v" \
"../../../bd/embsys/ipshared/3593/hdl/PWM_Analyzer_v1_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/3593/hdl/PWM_Analyzer_v1_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_0_0/sim/embsys_PWM_Analyzer_0_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_1_0/sim/embsys_PWM_Analyzer_1_0.v" \
"../../../bd/embsys/ip/embsys_PWM_Analyzer_2_0/sim/embsys_PWM_Analyzer_2_0.v" \
"../../../bd/embsys/ip/embsys_rgbPWM_0_0/sim/embsys_rgbPWM_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_proc_sys_reset_0_0/sim/embsys_proc_sys_reset_0_0.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_family.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/embsys_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/embsys_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/embsys_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/7698" "+incdir+../../../../projectFinal.gen/sources_1/bd/embsys/ip/embsys_nexys4io_0_0/drivers/nexys4io_v1_0/src" \
"../../../bd/embsys/ip/embsys_xadc_wiz_0_0/embsys_xadc_wiz_0_0.v" \
"../../../bd/embsys/sim/embsys.v" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_31 -93  \
"../../../../projectFinal.gen/sources_1/bd/embsys/ipshared/67a1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

