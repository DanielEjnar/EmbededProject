set moduleName RosenbrockSimulator_simulateRosenbrock
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {RosenbrockSimulator::simulateRosenbrock}
set C_modelType { void 0 }
set C_modelArgList {
	{ startSimulation int 1 regular {pointer 0 volatile }  }
	{ simulationDone int 1 regular {pointer 1 volatile }  }
	{ a int 32 regular {pointer 0 volatile }  }
	{ b int 32 regular {pointer 0 volatile }  }
	{ chromosome_in int 64 regular {pointer 0 volatile }  }
	{ fitness int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "startSimulation", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.startSimulation.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "simulationDone", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.simulationDone.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.a.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.b.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "chromosome_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "RosenbrockSimulator.chromosome_in.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fitness", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.fitness.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_low_sync } 
	{ startSimulation sc_in sc_logic 1 signal 0 } 
	{ simulationDone sc_out sc_logic 1 signal 1 } 
	{ simulationDone_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ a sc_in sc_lv 32 signal 2 } 
	{ b sc_in sc_lv 32 signal 3 } 
	{ chromosome_in sc_in sc_lv 64 signal 4 } 
	{ fitness sc_out sc_lv 32 signal 5 } 
	{ fitness_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "startSimulation", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "startSimulation", "role": "default" }} , 
 	{ "name": "simulationDone", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "simulationDone", "role": "default" }} , 
 	{ "name": "simulationDone_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "simulationDone", "role": "ap_vld" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "chromosome_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "chromosome_in", "role": "default" }} , 
 	{ "name": "fitness", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fitness", "role": "default" }} , 
 	{ "name": "fitness_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fitness", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "RosenbrockSimulator_simulateRosenbrock",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "startSimulation", "Type" : "None", "Direction" : "I"},
			{"Name" : "simulationDone", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "chromosome_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "fitness", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hls_pow_reduce_an_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_21", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_20_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_19_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_16_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_17_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_9_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_12_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_13_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_14_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_15_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_18_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_pow_reduce_an_21_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatncg_U0", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatocq_U1", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatpcA_U2", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatqcK_U3", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatrcU_U4", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatrcU_U5", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RosenbrockSimulatrcU_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	RosenbrockSimulator_simulateRosenbrock {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		startSimulation {Type I LastRead 1 FirstWrite -1}
		simulationDone {Type O LastRead -1 FirstWrite 5}
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 5 FirstWrite -1}
		chromosome_in {Type I LastRead 1 FirstWrite -1}
		fitness {Type O LastRead -1 FirstWrite 94}
		hls_pow_reduce_an_20 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_19 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_16 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_17 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_9 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_12 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_13 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_14 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_15 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_18 {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an {Type I LastRead -1 FirstWrite -1}
		hls_pow_reduce_an_21 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46", "Max" : "95"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "95"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	startSimulation { ap_none {  { startSimulation in_data 0 1 } } }
	simulationDone { ap_vld {  { simulationDone out_data 1 1 }  { simulationDone_ap_vld out_vld 1 1 } } }
	a { ap_none {  { a in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	chromosome_in { ap_none {  { chromosome_in in_data 0 64 } } }
	fitness { ap_vld {  { fitness out_data 1 32 }  { fitness_ap_vld out_vld 1 1 } } }
}
