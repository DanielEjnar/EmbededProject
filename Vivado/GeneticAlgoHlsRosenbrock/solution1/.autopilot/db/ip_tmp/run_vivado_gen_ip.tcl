create_project prj -part xc7z010clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHlsRosenbrock/solution1/syn/verilog/RosenbrockSimulator_ap_dadddsub_2_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips RosenbrockSimulator_ap_dadddsub_2_full_dsp_64]]
}
source "C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHlsRosenbrock/solution1/syn/verilog/RosenbrockSimulator_ap_dmul_2_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips RosenbrockSimulator_ap_dmul_2_max_dsp_64]]
}
source "C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHlsRosenbrock/solution1/syn/verilog/RosenbrockSimulator_ap_fpext_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips RosenbrockSimulator_ap_fpext_0_no_dsp_32]]
}
source "C:/Users/cml/Desktop/EmbededProject/Vivado/GeneticAlgoHlsRosenbrock/solution1/syn/verilog/RosenbrockSimulator_ap_fsub_2_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips RosenbrockSimulator_ap_fsub_2_full_dsp_32]]
}
