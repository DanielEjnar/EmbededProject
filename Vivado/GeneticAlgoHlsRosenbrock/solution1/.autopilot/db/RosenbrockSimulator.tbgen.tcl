set moduleName RosenbrockSimulator
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {RosenbrockSimulator::RosenbrockSimulator}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ startSimulation int 1 regular {pointer 0 volatile }  }
	{ simulationDone int 1 regular {pointer 1 volatile }  }
	{ a int 32 regular {pointer 0 volatile }  }
	{ b int 32 regular {pointer 0 volatile }  }
	{ chromosome_in int 64 regular {pointer 0 volatile }  }
	{ fitness int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "startSimulation", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.startSimulation.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "simulationDone", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "RosenbrockSimulator.simulationDone.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.a.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.b.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "chromosome_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "RosenbrockSimulator.chromosome_in.m_if.Val.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fitness", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RosenbrockSimulator.fitness.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_low_sync clk } 
	{ startSimulation sc_in sc_logic 1 signal 2 clk } 
	{ simulationDone sc_out sc_logic 1 signal 3 clk } 
	{ a sc_in sc_lv 32 signal 4 clk } 
	{ b sc_in sc_lv 32 signal 5 clk } 
	{ chromosome_in sc_in sc_lv 64 signal 6 clk } 
	{ fitness sc_out sc_lv 32 signal 7 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "startSimulation", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "startSimulation", "role": "default" }} , 
 	{ "name": "simulationDone", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "simulationDone", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "chromosome_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "chromosome_in", "role": "default" }} , 
 	{ "name": "fitness", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fitness", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "RosenbrockSimulator",
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
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "reset"}]},
			{"Name" : "startSimulation", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "startSimulation"}]},
			{"Name" : "simulationDone", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "simulationDone"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "a"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "b"}]},
			{"Name" : "chromosome_in", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "chromosome_in"}]},
			{"Name" : "fitness", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "fitness"}]},
			{"Name" : "RosenbrockSimulator_ssdm_thread_M_simulateRosenbrock", "Type" : "None", "Direction" : "I"},
			{"Name" : "hls_pow_reduce_an_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_20"}]},
			{"Name" : "hls_pow_reduce_an_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_19"}]},
			{"Name" : "hls_pow_reduce_an_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_16"}]},
			{"Name" : "hls_pow_reduce_an_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_17"}]},
			{"Name" : "hls_pow_reduce_an_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_9"}]},
			{"Name" : "hls_pow_reduce_an_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_12"}]},
			{"Name" : "hls_pow_reduce_an_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_13"}]},
			{"Name" : "hls_pow_reduce_an_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_14"}]},
			{"Name" : "hls_pow_reduce_an_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_15"}]},
			{"Name" : "hls_pow_reduce_an_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_18"}]},
			{"Name" : "hls_pow_reduce_an", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an"}]},
			{"Name" : "hls_pow_reduce_an_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Port" : "hls_pow_reduce_an_21"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_20_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_19_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_16_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_17_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_9_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_12_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_13_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_14_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_15_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_18_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.hls_pow_reduce_an_21_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatncg_U0", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatocq_U1", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatpcA_U2", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatqcK_U3", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatrcU_U4", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatrcU_U5", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RosenbrockSimulator_simulateRosenbrock_fu_88.RosenbrockSimulatrcU_U6", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	RosenbrockSimulator {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		startSimulation {Type I LastRead 1 FirstWrite -1}
		simulationDone {Type O LastRead -1 FirstWrite 5}
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 5 FirstWrite -1}
		chromosome_in {Type I LastRead 1 FirstWrite -1}
		fitness {Type O LastRead -1 FirstWrite 94}
		RosenbrockSimulator_ssdm_thread_M_simulateRosenbrock {Type I LastRead -1 FirstWrite -1}
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
		hls_pow_reduce_an_21 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "0", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "97"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	startSimulation { ap_none {  { startSimulation in_data 0 1 } } }
	simulationDone { ap_vld {  { simulationDone out_data 1 1 } } }
	a { ap_none {  { a in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	chromosome_in { ap_none {  { chromosome_in in_data 0 64 } } }
	fitness { ap_vld {  { fitness out_data 1 32 } } }
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
