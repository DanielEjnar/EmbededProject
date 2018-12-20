############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project GeneticAlgoHlsRosenbrock
set_top RosenbrockSimulator
add_files ../RosenbrockSimulator/RosenbrockSimulator.cpp
add_files ../RosenbrockSimulator/RosenbrockSimulator.h
add_files ../RosenbrockSimulator/Stim.h
add_files ../RosenbrockSimulator/ieee754float.cpp
add_files ../RosenbrockSimulator/ieee754float.h
add_files -tb ../RosenbrockSimulator/RosenbrockSimulator.cpp
add_files -tb ../RosenbrockSimulator/ieee754float.cpp
add_files -tb ../RosenbrockSimulator/main.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 20 -name default
#source "./GeneticAlgoHlsRosenbrock/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
