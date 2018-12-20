set moduleName GenerationGenerator
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {GenerationGenerator::GenerationGenerator}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ startGenerating int 1 regular {pointer 0 volatile }  }
	{ generatingDone int 1 regular {pointer 1 volatile }  }
	{ generation_parent1 int 64 regular {pointer 0 volatile }  }
	{ generation_parent2 int 64 regular {pointer 0 volatile }  }
	{ generation_child1 int 64 regular {pointer 1 volatile }  }
	{ generation_child2 int 64 regular {pointer 1 volatile }  }
	{ mutation_probability int 24 regular {pointer 0 volatile }  }
	{ random int 24 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "startGenerating", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.startGenerating.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generatingDone", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "GenerationGenerator.generatingDone.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_parent1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_parent1.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_parent2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_parent2.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_child1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_child1.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "generation_child2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "GenerationGenerator.generation_child2.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mutation_probability", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.mutation_probability.m_if.Val.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "random", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "GenerationGenerator.random.m_if.Val.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_low_sync clk } 
	{ startGenerating sc_in sc_logic 1 signal 2 clk } 
	{ generatingDone sc_out sc_logic 1 signal 3 clk } 
	{ generation_parent1 sc_in sc_lv 64 signal 4 clk } 
	{ generation_parent2 sc_in sc_lv 64 signal 5 clk } 
	{ generation_child1 sc_out sc_lv 64 signal 6 clk } 
	{ generation_child2 sc_out sc_lv 64 signal 7 clk } 
	{ mutation_probability sc_in sc_lv 24 signal 8 clk } 
	{ random sc_in sc_lv 24 signal 9 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "startGenerating", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "startGenerating", "role": "default" }} , 
 	{ "name": "generatingDone", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "generatingDone", "role": "default" }} , 
 	{ "name": "generation_parent1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_parent1", "role": "default" }} , 
 	{ "name": "generation_parent2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_parent2", "role": "default" }} , 
 	{ "name": "generation_child1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_child1", "role": "default" }} , 
 	{ "name": "generation_child2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "generation_child2", "role": "default" }} , 
 	{ "name": "mutation_probability", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "mutation_probability", "role": "default" }} , 
 	{ "name": "random", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "random", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "GenerationGenerator",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "clk"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "reset"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "reset"}]},
			{"Name" : "startGenerating", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "startGenerating"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "startGenerating"}]},
			{"Name" : "generatingDone", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "generatingDone"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "generatingDone"}]},
			{"Name" : "generation_parent1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "generation_parent1"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "generation_parent1"}]},
			{"Name" : "generation_parent2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "generation_parent2"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "generation_parent2"}]},
			{"Name" : "generation_child1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "generation_child1"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "generation_child1"}]},
			{"Name" : "generation_child2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "generation_child2"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "generation_child2"}]},
			{"Name" : "mutation_probability", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "mutation_probability"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "mutation_probability"}]},
			{"Name" : "random", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "random"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "random"}]},
			{"Name" : "GenerationGenerator_randomNumberIndex_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "GenerationGenerator_randomNumberIndex_V"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "GenerationGenerator_randomNumberIndex_V"}]},
			{"Name" : "GenerationGenerator_trueRandomIndex_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "GenerationGenerator_trueRandomIndex_V"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "GenerationGenerator_trueRandomIndex_V"}]},
			{"Name" : "GenerationGenerator_randomNumbers_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_GenerationGenerator_generateGeneration_fu_104", "Port" : "GenerationGenerator_randomNumbers_V"},
					{"ID" : "3", "SubInstance" : "grp_GenerationGenerator_produceRandom_fu_134", "Port" : "GenerationGenerator_randomNumbers_V"}]},
			{"Name" : "GenerationGenerator_ssdm_thread_M_produceRandom", "Type" : "None", "Direction" : "I"},
			{"Name" : "GenerationGenerator_ssdm_thread_M_generateGeneration", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GenerationGenerator_randomNumbers_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GenerationGenerator_generateGeneration_fu_104", "Parent" : "0",
		"CDFG" : "GenerationGenerator_generateGeneration",
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
			{"Name" : "GenerationGenerator_randomNumberIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "GenerationGenerator_trueRandomIndex_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "GenerationGenerator_randomNumbers_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GenerationGenerator_produceRandom_fu_134", "Parent" : "0",
		"CDFG" : "GenerationGenerator_produceRandom",
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
	GenerationGenerator {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		startGenerating {Type I LastRead 12 FirstWrite -1}
		generatingDone {Type O LastRead -1 FirstWrite -1}
		generation_parent1 {Type I LastRead 2 FirstWrite -1}
		generation_parent2 {Type I LastRead 3 FirstWrite -1}
		generation_child1 {Type O LastRead -1 FirstWrite -1}
		generation_child2 {Type O LastRead -1 FirstWrite -1}
		mutation_probability {Type I LastRead 4 FirstWrite -1}
		random {Type I LastRead 1 FirstWrite -1}
		GenerationGenerator_randomNumberIndex_V {Type IO LastRead -1 FirstWrite -1}
		GenerationGenerator_trueRandomIndex_V {Type IO LastRead -1 FirstWrite -1}
		GenerationGenerator_randomNumbers_V {Type IO LastRead -1 FirstWrite -1}
		GenerationGenerator_ssdm_thread_M_produceRandom {Type I LastRead -1 FirstWrite -1}
		GenerationGenerator_ssdm_thread_M_generateGeneration {Type I LastRead -1 FirstWrite -1}}
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
		GenerationGenerator_randomNumbers_V {Type I LastRead 8 FirstWrite -1}}
	GenerationGenerator_produceRandom {
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
		GenerationGenerator_randomNumberIndex_V {Type IO LastRead 2 FirstWrite 2}
		GenerationGenerator_trueRandomIndex_V {Type I LastRead -1 FirstWrite -1}
		GenerationGenerator_randomNumbers_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "270"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "271"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	startGenerating { ap_none {  { startGenerating in_data 0 1 } } }
	generatingDone { ap_vld {  { generatingDone out_data 1 1 } } }
	generation_parent1 { ap_none {  { generation_parent1 in_data 0 64 } } }
	generation_parent2 { ap_none {  { generation_parent2 in_data 0 64 } } }
	generation_child1 { ap_vld {  { generation_child1 out_data 1 64 } } }
	generation_child2 { ap_vld {  { generation_child2 out_data 1 64 } } }
	mutation_probability { ap_none {  { mutation_probability in_data 0 24 } } }
	random { ap_none {  { random in_data 0 24 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
