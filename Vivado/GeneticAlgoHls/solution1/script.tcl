############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project GeneticAlgo
set_top GenerationGenerator
add_files EmbededProject/GenerationGenerator/GenerationGenerator.cpp
add_files -tb EmbededProject/GenerationGenerator/Stim.h
add_files -tb main.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 20 -name default
#source "./GeneticAlgo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog
