# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Cameron\Documents\ECE544\AutoWateringFinalProject\Vitis_CameronBranch\platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Cameron\Documents\ECE544\AutoWateringFinalProject\Vitis_CameronBranch\platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platform}\
-hw {C:\Users\Cameron\Documents\ECE544\AutoWateringFinalProject\Vivado\projectFinal\nexysa7fpga.xsa}\
-proc {microblaze_0} -os {freertos10_xilinx} -out {C:/Users/Cameron/Documents/ECE544/AutoWateringFinalProject/Vitis_CameronBranch}

platform write
platform generate -domains 
platform clean
platform generate
bsp reload
bsp reload
platform clean
platform generate
platform clean
platform generate
bsp config total_heap_size "65536"
bsp config total_heap_size "65536"
bsp config total_heap_size "16384"
bsp config stdin "mdm_1"
bsp config stdout "mdm_1"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
bsp config total_heap_size "9000"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config total_heap_size "7000"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config use_port_optimized_task_selection "false"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {platform}
bsp reload
bsp config stdin "mdm_1"
bsp config stdout "mdm_1"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform clean
platform generate
