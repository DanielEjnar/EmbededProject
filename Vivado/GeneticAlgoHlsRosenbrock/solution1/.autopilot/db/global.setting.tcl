
set TopModule "RosenbrockSimulator"
set ClockPeriod "20.000000"
set ClockList {clk}
set multiClockList {}
set PortClockMap {reset clk startSimulation clk simulationDone clk a clk b clk chromosome_in clk fitness clk}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7z010:clg400:-1"
set SourceFiles {sc ../../../RosenbrockSimulator/RosenbrockSimulator.cpp c ../../../RosenbrockSimulator/ieee754float.cpp}
set SourceFlags {sc {{}} c {{}}}
set DirectiveFile {C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHlsRosenbrock/solution1/solution1.directive}
set TBFiles {verilog {../../../RosenbrockSimulator/main.cpp ../../../RosenbrockSimulator/ieee754float.cpp ../../../RosenbrockSimulator/RosenbrockSimulator.cpp} bc {../../../RosenbrockSimulator/main.cpp ../../../RosenbrockSimulator/ieee754float.cpp ../../../RosenbrockSimulator/RosenbrockSimulator.cpp} vhdl {../../../RosenbrockSimulator/main.cpp ../../../RosenbrockSimulator/ieee754float.cpp ../../../RosenbrockSimulator/RosenbrockSimulator.cpp} sc {../../../RosenbrockSimulator/main.cpp ../../../RosenbrockSimulator/ieee754float.cpp ../../../RosenbrockSimulator/RosenbrockSimulator.cpp} cas {../../../RosenbrockSimulator/main.cpp ../../../RosenbrockSimulator/ieee754float.cpp ../../../RosenbrockSimulator/RosenbrockSimulator.cpp} c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
set HPFPO "0"
