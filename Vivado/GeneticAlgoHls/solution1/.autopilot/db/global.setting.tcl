
set TopModule "GenerationGenerator"
set ClockPeriod 20
set ClockList clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z010:clg400:-1
set SourceFiles {sc ../../../GenerationGenerator/GenerationGenerator.cpp c {}}
set SourceFlags {sc {{}} c {}}
set DirectiveFile C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHls/solution1/solution1.directive
set TBFiles {verilog {../../../GenerationGenerator/GenerationGenerator.cpp ../../../GenerationGenerator/GenerationGenerator.h ../../../GenerationGenerator/Stim.h ../../../GenerationGenerator/main.cpp} bc {../../../GenerationGenerator/GenerationGenerator.cpp ../../../GenerationGenerator/GenerationGenerator.h ../../../GenerationGenerator/Stim.h ../../../GenerationGenerator/main.cpp} sc {../../../GenerationGenerator/GenerationGenerator.cpp ../../../GenerationGenerator/GenerationGenerator.h ../../../GenerationGenerator/Stim.h ../../../GenerationGenerator/main.cpp} vhdl {../../../GenerationGenerator/GenerationGenerator.cpp ../../../GenerationGenerator/GenerationGenerator.h ../../../GenerationGenerator/Stim.h ../../../GenerationGenerator/main.cpp} c {} cas {../../../GenerationGenerator/GenerationGenerator.cpp ../../../GenerationGenerator/GenerationGenerator.h ../../../GenerationGenerator/Stim.h ../../../GenerationGenerator/main.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {reset clk startGenerating clk generatingDone clk generation_parent1 clk generation_parent2 clk generation_child1 clk generation_child2 clk mutation_probability clk random clk}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
