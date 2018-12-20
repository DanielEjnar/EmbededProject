# ==============================================================
# File generated on Thu Dec 20 14:48:57 +0100 2018
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fpo_v7_0"

set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/opencv"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fft_v9_1"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fir_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/dds_v6_0"

source check_sim.tcl


# --> verilog simulation

::AP::printMsg INFO COSIM 323 COSIM_323_1007

::AP::printMsg INFO COSIM 15 COSIM_15_1011

cd ../verilog

file delete -force ".exit.err"
file delete -force ".aesl_error"
file delete -force "err.log"

if {[file isfile run_xsim.bat]} {
	set ret [catch {eval exec "./run_xsim.bat | tee temp2.log" >&@ stdout} err]
}
