connect -url tcp:127.0.0.1:3121
source C:/home/proj/xilinx/zyboz7/xilinx_sdk/workspace/zybo_z7_hw/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819DFA"} -index 0
loadhw -hw C:/home/proj/xilinx/zyboz7/xilinx_sdk/workspace/zybo_z7_hw/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819DFA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819DFA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A819DFA"} -index 0
dow C:/home/proj/xilinx/zyboz7/xilinx_sdk/workspace/sample1/Release/sample1.elf
configparams force-mem-access 0
bpadd -addr &main
