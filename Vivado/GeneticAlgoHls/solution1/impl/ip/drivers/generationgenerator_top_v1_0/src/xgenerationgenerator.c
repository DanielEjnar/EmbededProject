// ==============================================================
// File generated on Thu Dec 20 14:53:37 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgenerationgenerator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGenerationgenerator_CfgInitialize(XGenerationgenerator *InstancePtr, XGenerationgenerator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Slv0_BaseAddress = ConfigPtr->Slv0_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGenerationgenerator_SetStartgenerating(XGenerationgenerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_STARTGENERATING_DATA, Data);
}

u32 XGenerationgenerator_GetStartgenerating(XGenerationgenerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_STARTGENERATING_DATA);
    return Data;
}

u32 XGenerationgenerator_GetGeneratingdone(XGenerationgenerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATINGDONE_DATA);
    return Data;
}

void XGenerationgenerator_SetGeneration_parent1(XGenerationgenerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT1_DATA, (u32)(Data));
    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT1_DATA + 4, (u32)(Data >> 32));
}

u64 XGenerationgenerator_GetGeneration_parent1(XGenerationgenerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT1_DATA);
    Data += (u64)XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT1_DATA + 4) << 32;
    return Data;
}

void XGenerationgenerator_SetGeneration_parent2(XGenerationgenerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT2_DATA, (u32)(Data));
    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT2_DATA + 4, (u32)(Data >> 32));
}

u64 XGenerationgenerator_GetGeneration_parent2(XGenerationgenerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT2_DATA);
    Data += (u64)XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_PARENT2_DATA + 4) << 32;
    return Data;
}

u64 XGenerationgenerator_GetGeneration_child1(XGenerationgenerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD1_DATA);
    Data += (u64)XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD1_DATA + 4) << 32;
    return Data;
}

u64 XGenerationgenerator_GetGeneration_child2(XGenerationgenerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD2_DATA);
    Data += (u64)XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_GENERATION_CHILD2_DATA + 4) << 32;
    return Data;
}

void XGenerationgenerator_SetMutation_probability(XGenerationgenerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_MUTATION_PROBABILITY_DATA, Data);
}

u32 XGenerationgenerator_GetMutation_probability(XGenerationgenerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_MUTATION_PROBABILITY_DATA);
    return Data;
}

void XGenerationgenerator_SetRandom(XGenerationgenerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGenerationgenerator_WriteReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_RANDOM_DATA, Data);
}

u32 XGenerationgenerator_GetRandom(XGenerationgenerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGenerationgenerator_ReadReg(InstancePtr->Slv0_BaseAddress, XGENERATIONGENERATOR_SLV0_ADDR_RANDOM_DATA);
    return Data;
}

