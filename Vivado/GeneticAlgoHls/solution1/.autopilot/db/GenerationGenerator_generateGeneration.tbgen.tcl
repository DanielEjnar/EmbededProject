set moduleName GenerationGenerator_generateGeneration
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {GenerationGenerator::generateGeneration}
set C_modelType { void 0 }
set C_modelArgList {
	{ startGenerating int 1 regular {pointer 0 volatile }  }
	{ generatingDone int 1 regular {pointer 1 volatile }  }
	{ generation_parent1 int 64 regular {pointer 0 volatile }  }
	{ generation_parent2 int 64 regular {pointer 0 volatile }  }
	{ generation_child1 int 64 regular {pointer 1 volatile }  }
	{ generation_child2 int 64 regular {pointer 1 volatile }  }
	{ mutation_probability int 24 regular {pointer 0 volatile }  }
	{ GenerationGenerator_trueRandomIndex_V int 24 regular {pointer 2}  }
	{ GenerationGenerator_randomNumbers_V int 24 regular {array 160 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "startGenerating", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.startGenerating.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generatingDone", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.generatingDone.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_parent1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_parent1.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_parent2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_parent2.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_child1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_child1.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_child2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_child2.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mutation_probability", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.mutation_probability.m_if.Val.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "GenerationGenerator_trueRandomIndex_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.trueRandomIndex.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "GenerationGenerator_randomNumbers_V", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.randomNumbers.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 159,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_low_sync } 
	{ startGenerating sc_in sc_logic 1 signal 0 } 
	{ generatingDone sc_out sc_logic 1 signal 1 } 
	{ generatingDone_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ generation_parent1 sc_in sc_lv 64 signal 2 } 
	{ generation_parent2 sc_in sc_lv 64 signal 3 } 
	{ generation_child1 sc_out sc_lv 64 signal 4 } 
	{ generation_child1_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ generation_child2 sc_out sc_lv 64 signal 5 } 
	{ generation_child2_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ mutation_probability sc_in sc_lv 24 signal 6 } 
	{ GenerationGenerator_trueRandomIndex_V_i sc_in sc_lv 24 signal 7 } 
	{ GenerationGenerator_trueRandomIndex_V_o sc_out sc_lv 24 signal 7 } 
	{ GenerationGenerator_trueRandomIndex_V_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ GenerationGenerator_randomNumbers_V_address0 sc_out sc_lv 8 signal 8 } 
	{ GenerationGenerator_randomNumbers_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ GenerationGenerator_randomNumbers_V_q0 sc_in sc_lv 24 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "startGenerating", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "startGenerating", "role": "default" }} , 
 	{ "name": "generatingDone", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "generatingDone", "role": "default" }} , 
 	{ "name": "generatingDone_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "generatingDone", "role": "ap_vld" }} , 
 	{ "name": "generation_parent1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_parent1", "role": "default" }} , 
 	{ "name": "generation_parent2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_parent2", "role": "default" }} , 
 	{ "name": "generation_child1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_child1", "role": "default" }} , 
 	{ "name": "generation_child1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "generation_child1", "role": "ap_vld" }} , 
 	{ "name": "generation_child2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_child2", "role": "default" }} , 
 	{ "name": "generation_child2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "generation_child2", "role": "ap_vld" }} , 
 	{ "name": "mutation_probability", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "mutation_probability", "role": "default" }} , 
 	{ "name": "GenerationGenerator_trueRandomIndex_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_trueRandomIndex_V", "role": "i" }} , 
 	{ "name": "GenerationGenerator_trueRandomIndex_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_trueRandomIndex_V", "role": "o" }} , 
 	{ "name": "GenerationGenerator_trueRandomIndex_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "GenerationGenerator_trueRandomIndex_V", "role": "o_ap_vld" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "address0" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "ce0" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "GenerationGenerator_generateGeneration",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "269", "EstimateLatencyMax" : "269",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "startGenerating", "Type" : "None", "Direction" : "I"},
			{"Name" : "generatingDone", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "generation_parent1", "Type" : "None", "Direction" : "I"},
			{"Name" : "generation_parent2", "Type" : "None", "Direction" : "I"},
			{"Name" : "generation_child1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "generation_child2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mutation_probability", "Type" : "None", "Direction" : "I"},
			{"Name" : "random", "Type" : "None", "Direction" : "I"},
			{"Name" : "GenerationGenerator_randomNumberIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "GenerationGenerator_trueRandomIndex_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "GenerationGenerator_randomNumbers_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	GenerationGenerator_generateGeneration {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		startGenerating {Type I LastRead 12 FirstWrite -1}
		generatingDone {Type O LastRead -1 FirstWrite 1}
		generation_parent1 {Type I LastRead 2 FirstWrite -1}
		generation_parent2 {Type I LastRead 3 FirstWrite -1}
		generation_child1 {Type O LastRead -1 FirstWrite 9}
		generation_child2 {Type O LastRead -1 FirstWrite 10}
		mutation_probability {Type I LastRead 4 FirstWrite -1}
		random {Type I LastRead -1 FirstWrite -1}
		GenerationGenerator_randomNumberIndex_V {Type I LastRead -1 FirstWrite -1}
		GenerationGenerator_trueRandomIndex_V {Type IO LastRead 4 FirstWrite 4}
		GenerationGenerator_randomNumbers_V {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "269", "Max" : "269"}
	, {"Name" : "Interval", "Min" : "269", "Max" : "269"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	startGenerating { ap_none {  { startGenerating in_data 0 1 } } }
	generatingDone { ap_vld {  { generatingDone out_data 1 1 }  { generatingDone_ap_vld out_vld 1 1 } } }
	generation_parent1 { ap_none {  { generation_parent1 in_data 0 64 } } }
	generation_parent2 { ap_none {  { generation_parent2 in_data 0 64 } } }
	generation_child1 { ap_vld {  { generation_child1 out_data 1 64 }  { generation_child1_ap_vld out_vld 1 1 } } }
	generation_child2 { ap_vld {  { generation_child2 out_data 1 64 }  { generation_child2_ap_vld out_vld 1 1 } } }
	mutation_probability { ap_none {  { mutation_probability in_data 0 24 } } }
	GenerationGenerator_trueRandomIndex_V { ap_ovld {  { GenerationGenerator_trueRandomIndex_V_i in_data 0 24 }  { GenerationGenerator_trueRandomIndex_V_o out_data 1 24 }  { GenerationGenerator_trueRandomIndex_V_o_ap_vld out_vld 1 1 } } }
	GenerationGenerator_randomNumbers_V { ap_memory {  { GenerationGenerator_randomNumbers_V_address0 mem_address 1 8 }  { GenerationGenerator_randomNumbers_V_ce0 mem_ce 1 1 }  { GenerationGenerator_randomNumbers_V_q0 mem_dout 0 24 } } }
}
