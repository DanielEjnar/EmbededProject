set moduleName GenerationGenerator_consumeRandom
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {GenerationGenerator::consumeRandom}
set C_modelType { void 0 }
set C_modelArgList {
	{ random int 24 regular {pointer 0 volatile }  }
	{ GenerationGenerator_randomNumberIndex_V int 24 regular {pointer 2}  }
	{ GenerationGenerator_randomNumbers_V int 24 regular {array 160 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "random", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.random.m_if.Val.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "GenerationGenerator_randomNumberIndex_V", "interface" : "wire", "bitwidth" : 24, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.randomNumberIndex.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "GenerationGenerator_randomNumbers_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.randomNumbers.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 159,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_low_sync } 
	{ random sc_in sc_lv 24 signal 0 } 
	{ GenerationGenerator_randomNumberIndex_V_i sc_in sc_lv 24 signal 1 } 
	{ GenerationGenerator_randomNumberIndex_V_o sc_out sc_lv 24 signal 1 } 
	{ GenerationGenerator_randomNumberIndex_V_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ GenerationGenerator_randomNumbers_V_address0 sc_out sc_lv 8 signal 2 } 
	{ GenerationGenerator_randomNumbers_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ GenerationGenerator_randomNumbers_V_we0 sc_out sc_logic 1 signal 2 } 
	{ GenerationGenerator_randomNumbers_V_d0 sc_out sc_lv 24 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "random", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "random", "role": "default" }} , 
 	{ "name": "GenerationGenerator_randomNumberIndex_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumberIndex_V", "role": "i" }} , 
 	{ "name": "GenerationGenerator_randomNumberIndex_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumberIndex_V", "role": "o" }} , 
 	{ "name": "GenerationGenerator_randomNumberIndex_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "GenerationGenerator_randomNumberIndex_V", "role": "o_ap_vld" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "address0" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "ce0" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "we0" }} , 
 	{ "name": "GenerationGenerator_randomNumbers_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "GenerationGenerator_randomNumbers_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "GenerationGenerator_consumeRandom",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
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
			{"Name" : "GenerationGenerator_randomNumberIndex_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "GenerationGenerator_trueRandomIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "GenerationGenerator_randomNumbers_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	GenerationGenerator_consumeRandom {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		startGenerating {Type I LastRead -1 FirstWrite -1}
		generatingDone {Type O LastRead -1 FirstWrite -1}
		generation_parent1 {Type I LastRead -1 FirstWrite -1}
		generation_parent2 {Type I LastRead -1 FirstWrite -1}
		generation_child1 {Type O LastRead -1 FirstWrite -1}
		generation_child2 {Type O LastRead -1 FirstWrite -1}
		mutation_probability {Type I LastRead -1 FirstWrite -1}
		random {Type I LastRead 1 FirstWrite -1}
		GenerationGenerator_randomNumberIndex_V {Type IO LastRead 1 FirstWrite 1}
		GenerationGenerator_trueRandomIndex_V {Type I LastRead -1 FirstWrite -1}
		GenerationGenerator_randomNumbers_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	random { ap_none {  { random in_data 0 24 } } }
	GenerationGenerator_randomNumberIndex_V { ap_ovld {  { GenerationGenerator_randomNumberIndex_V_i in_data 0 24 }  { GenerationGenerator_randomNumberIndex_V_o out_data 1 24 }  { GenerationGenerator_randomNumberIndex_V_o_ap_vld out_vld 1 1 } } }
	GenerationGenerator_randomNumbers_V { ap_memory {  { GenerationGenerator_randomNumbers_V_address0 mem_address 1 8 }  { GenerationGenerator_randomNumbers_V_ce0 mem_ce 1 1 }  { GenerationGenerator_randomNumbers_V_we0 mem_we 1 1 }  { GenerationGenerator_randomNumbers_V_d0 mem_din 1 24 } } }
}
