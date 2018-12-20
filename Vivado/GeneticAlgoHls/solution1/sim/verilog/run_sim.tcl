# ==============================================================
# File generated on Thu Dec 20 15:08:34 +0100 2018
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


# --> systemc simulation

::AP::printMsg INFO COSIM 11 COSIM_11_1002

cd ../systemc

# remove hdltvin&hdltvout in tv dir
file delete -force [file join "../tv" GenerationGenerator.hdltvin.dat]
file delete -force [file join "../tv" GenerationGenerator.hdltvout.dat]

set ::env(AP_WRITE_TV) "on"

file delete -force  "err.log"

if {![file exists cosim.sc.exe]} {
	::AP::printMsg ERR COSIM 321 COSIM_321_1003
	return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.sc.exe | tee temp1.log >&@ stdout} err]

if {$ret == 1} {
	::AP::printMsg ERR COSIM 344 COSIM_344_1004
	return -code error -errorcode $::errorCode
}

if {[file isfile GenerationGenerator.hdltvin.dat]} {
	file copy -force GenerationGenerator.hdltvin.dat [file join "../tv" GenerationGenerator.hdltvin.dat]
}
if {[file isfile GenerationGenerator.hdltvout.dat]} {
	file copy -force GenerationGenerator.hdltvout.dat [file join "../tv" GenerationGenerator.hdltvout.dat]
}

sc_sim_check $ret $err "temp1.log"

# --> verilog simulation

::AP::printMsg INFO COSIM 323 COSIM_323_1007

::AP::printMsg INFO COSIM 15 COSIM_15_1008

cd ../verilog

if {![file exists [file join "../tv" GenerationGenerator.hdltvin.dat]]} {
	::AP::printMsg ERR COSIM 332 COSIM_332_1014 $::AESL_AUTOSIM::gConstFileHdlTvIn
	return -code error -errorcode $::errorCode
}

file copy -force [file join "../tv" GenerationGenerator.hdltvin.dat] GenerationGenerator.hdltvin.dat

file copy -force [file join "../tv" GenerationGenerator.hdltvout.dat] GenerationGenerator.hdltvout.dat

file delete -force ".exit.err"
file delete -force ".aesl_error"
file delete -force "err.log"

if {[file isfile compile_modelsim.sh]} {
	catch {eval exec sh ./compile_modelsim.sh >&@ stdout} err

	if {$err != ""} {
		::AP::printMsg ERR COSIM 306 COSIM_306_1017 $err
		return -code error -errorcode $::errorCode
	}
}

set ret [catch {eval exec "vsim -c -do cosim.modelsim.scr | tee temp2.log" >@ stdout} err]
