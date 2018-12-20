// ==============================================================
// File generated on Thu Dec 20 14:53:37 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgenerationgenerator.h"

extern XGenerationgenerator_Config XGenerationgenerator_ConfigTable[];

XGenerationgenerator_Config *XGenerationgenerator_LookupConfig(u16 DeviceId) {
	XGenerationgenerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGENERATIONGENERATOR_NUM_INSTANCES; Index++) {
		if (XGenerationgenerator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGenerationgenerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGenerationgenerator_Initialize(XGenerationgenerator *InstancePtr, u16 DeviceId) {
	XGenerationgenerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGenerationgenerator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGenerationgenerator_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

