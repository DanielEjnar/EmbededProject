// ==============================================================
// File generated on Thu Dec 20 14:53:37 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// slv0
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : reserved
// 0x14 : Data signal of startGenerating
//        bit 0  - startGenerating[0] (Read/Write)
//        others - reserved
// 0x18 : reserved
// 0x1c : Data signal of generatingDone
//        bit 0  - generatingDone[0] (Read)
//        others - reserved
// 0x20 : reserved
// 0x24 : Data signal of generation_parent1
//        bit 31~0 - generation_parent1[31:0] (Read/Write)
// 0x28 : Data signal of generation_parent1
//        bit 31~0 - generation_parent1[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of generation_parent2
//        bit 31~0 - generation_parent2[31:0] (Read/Write)
// 0x34 : Data signal of generation_parent2
//        bit 31~0 - generation_parent2[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of generation_child1
//        bit 31~0 - generation_child1[31:0] (Read)
// 0x40 : Data signal of generation_child1
//        bit 31~0 - generation_child1[63:32] (Read)
// 0x44 : reserved
// 0x48 : Data signal of generation_child2
//        bit 31~0 - generation_child2[31:0] (Read)
// 0x4c : Data signal of generation_child2
//        bit 31~0 - generation_child2[63:32] (Read)
// 0x50 : reserved
// 0x54 : Data signal of mutation_probability
//        bit 23~0 - mutation_probability[23:0] (Read/Write)
//        others   - reserved
// 0x58 : reserved
// 0x5c : Data signal of random
//        bit 23~0 - random[23:0] (Read/Write)
//        others   - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XGENERATIONGENERATOR_SLV0_ADDR_STARTGENERATING_DATA      0x14
#define XGENERATIONGENERATOR_SLV0_BITS_STARTGENERATING_DATA      1
#define XGENERATIONGENERATOR_SLV0_ADDR_GENERATINGDONE_DATA       0x1c
#define XGENERATIONGENERATOR_SLV0_BITS_GENERATINGDONE_DATA       1
#define XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT1_DATA   0x24
#define XGENERATIONGENERATOR_SLV0_BITS_GENERATION_PARENT1_DATA   64
#define XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT2_DATA   0x30
#define XGENERATIONGENERATOR_SLV0_BITS_GENERATION_PARENT2_DATA   64
#define XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD1_DATA    0x3c
#define XGENERATIONGENERATOR_SLV0_BITS_GENERATION_CHILD1_DATA    64
#define XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD2_DATA    0x48
#define XGENERATIONGENERATOR_SLV0_BITS_GENERATION_CHILD2_DATA    64
#define XGENERATIONGENERATOR_SLV0_ADDR_MUTATION_PROBABILITY_DATA 0x54
#define XGENERATIONGENERATOR_SLV0_BITS_MUTATION_PROBABILITY_DATA 24
#define XGENERATIONGENERATOR_SLV0_ADDR_RANDOM_DATA               0x5c
#define XGENERATIONGENERATOR_SLV0_BITS_RANDOM_DATA               24

