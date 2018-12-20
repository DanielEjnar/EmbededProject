# ==============================================================
# File generated on Thu Dec 20 14:43:55 +0100 2018
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../../RosenbrockSimulator/main.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../../RosenbrockSimulator/ieee754float.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../../RosenbrockSimulator/RosenbrockSimulator.cpp -cflags { -Wno-unknown-pragmas}
add_files ../RosenbrockSimulator/ieee754float.h
add_files ../RosenbrockSimulator/ieee754float.cpp
add_files ../RosenbrockSimulator/Stim.h
add_files ../RosenbrockSimulator/RosenbrockSimulator.h
add_files ../RosenbrockSimulator/RosenbrockSimulator.cpp
set_part xc7z010clg400-1
create_clock -name default -period 20
