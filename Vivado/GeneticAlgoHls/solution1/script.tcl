############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project GeneticAlgoHls
set_top GenerationGenerator
add_files ../GenerationGenerator/GenerationGenerator.cpp
add_files ../GenerationGenerator/GenerationGenerator.h
add_files ../GenerationGenerator/Stim.h
add_files -tb ../GenerationGenerator/main.cpp
add_files -tb ../GenerationGenerator/Stim.h
add_files -tb ../GenerationGenerator/GenerationGenerator.h
add_files -tb ../GenerationGenerator/GenerationGenerator.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 20 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -format ip_catalog -rtl verilog
#source "./GeneticAlgoHls/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -tool modelsim
export_design -flow impl -rtl verilog -format ip_catalog
