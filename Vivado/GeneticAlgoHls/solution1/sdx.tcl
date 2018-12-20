# ==============================================================
# File generated on Thu Dec 20 15:06:58 +0100 2018
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../../GenerationGenerator/GenerationGenerator.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../../GenerationGenerator/GenerationGenerator.h -cflags { -Wno-unknown-pragmas}
add_files -tb ../../../GenerationGenerator/Stim.h -cflags { -Wno-unknown-pragmas}
add_files -tb ../../../GenerationGenerator/main.cpp -cflags { -Wno-unknown-pragmas}
add_files ../GenerationGenerator/Stim.h
add_files ../GenerationGenerator/GenerationGenerator.h
add_files ../GenerationGenerator/GenerationGenerator.cpp
set_part xc7z010clg400-1
create_clock -name default -period 20
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_export -format=ip_catalog
config_export -rtl=verilog
