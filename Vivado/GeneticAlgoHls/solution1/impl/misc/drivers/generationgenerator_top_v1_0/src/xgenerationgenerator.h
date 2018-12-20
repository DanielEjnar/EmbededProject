// ==============================================================
// File generated on Thu Dec 20 14:51:05 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGENERATIONGENERATOR_H
#define XGENERATIONGENERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgenerationgenerator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Slv0_BaseAddress;
} XGenerationgenerator_Config;
#endif

typedef struct {
    u32 Slv0_BaseAddress;
    u32 IsReady;
} XGenerationgenerator;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGenerationgenerator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGenerationgenerator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGenerationgenerator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGenerationgenerator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGenerationgenerator_Initialize(XGenerationgenerator *InstancePtr, u16 DeviceId);
XGenerationgenerator_Config* XGenerationgenerator_LookupConfig(u16 DeviceId);
int XGenerationgenerator_CfgInitialize(XGenerationgenerator *InstancePtr, XGenerationgenerator_Config *ConfigPtr);
#else
int XGenerationgenerator_Initialize(XGenerationgenerator *InstancePtr, const char* InstanceName);
int XGenerationgenerator_Release(XGenerationgenerator *InstancePtr);
#endif


void XGenerationgenerator_SetStartgenerating(XGenerationgenerator *InstancePtr, u32 Data);
u32 XGenerationgenerator_GetStartgenerating(XGenerationgenerator *InstancePtr);
u32 XGenerationgenerator_GetGeneratingdone(XGenerationgenerator *InstancePtr);
void XGenerationgenerator_SetGeneration_parent1(XGenerationgenerator *InstancePtr, u64 Data);
u64 XGenerationgenerator_GetGeneration_parent1(XGenerationgenerator *InstancePtr);
void XGenerationgenerator_SetGeneration_parent2(XGenerationgenerator *InstancePtr, u64 Data);
u64 XGenerationgenerator_GetGeneration_parent2(XGenerationgenerator *InstancePtr);
u64 XGenerationgenerator_GetGeneration_child1(XGenerationgenerator *InstancePtr);
u64 XGenerationgenerator_GetGeneration_child2(XGenerationgenerator *InstancePtr);
void XGenerationgenerator_SetMutation_probability(XGenerationgenerator *InstancePtr, u32 Data);
u32 XGenerationgenerator_GetMutation_probability(XGenerationgenerator *InstancePtr);
void XGenerationgenerator_SetRandom(XGenerationgenerator *InstancePtr, u32 Data);
u32 XGenerationgenerator_GetRandom(XGenerationgenerator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
