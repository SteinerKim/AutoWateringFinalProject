# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Cameron\Documents\ECE544\AutoWateringFinalProject\Vitis_CameronBranch\app_system\_ide\scripts\debugger_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Cameron\Documents\ECE544\AutoWateringFinalProject\Vitis_CameronBranch\app_system\_ide\scripts\debugger_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B0F00CA" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B0F00CA-13631093-0"}
fpga -file C:/Users/Cameron/Documents/ECE544/AutoWateringFinalProject/Vitis_CameronBranch/app/_ide/bitstream/nexysa7fpga.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/Cameron/Documents/ECE544/AutoWateringFinalProject/Vitis_CameronBranch/platform/export/platform/hw/nexysa7fpga.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/Cameron/Documents/ECE544/AutoWateringFinalProject/Vitis_CameronBranch/app/Debug/app.elf
bpadd -addr &main
