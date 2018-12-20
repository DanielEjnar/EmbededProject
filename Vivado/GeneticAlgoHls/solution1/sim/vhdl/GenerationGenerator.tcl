
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set generation_child2_group [add_wave_group generation_child2(wire) -into $coutputgroup]
add_wave /AUTOTB_TOP/DUT_INST/generation_child2 -into $generation_child2_group -radix hex
set generation_child1_group [add_wave_group generation_child1(wire) -into $coutputgroup]
add_wave /AUTOTB_TOP/DUT_INST/generation_child1 -into $generation_child1_group -radix hex
set generatingDone_group [add_wave_group generatingDone(wire) -into $coutputgroup]
add_wave /AUTOTB_TOP/DUT_INST/generatingDone -into $generatingDone_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set random_group [add_wave_group random(wire) -into $cinputgroup]
add_wave /AUTOTB_TOP/DUT_INST/random -into $random_group -radix hex
set mutation_probability_group [add_wave_group mutation_probability(wire) -into $cinputgroup]
add_wave /AUTOTB_TOP/DUT_INST/mutation_probability -into $mutation_probability_group -radix hex
set generation_parent2_group [add_wave_group generation_parent2(wire) -into $cinputgroup]
add_wave /AUTOTB_TOP/DUT_INST/generation_parent2 -into $generation_parent2_group -radix hex
set generation_parent1_group [add_wave_group generation_parent1(wire) -into $cinputgroup]
add_wave /AUTOTB_TOP/DUT_INST/generation_parent1 -into $generation_parent1_group -radix hex
set startGenerating_group [add_wave_group startGenerating(wire) -into $cinputgroup]
add_wave /AUTOTB_TOP/DUT_INST/startGenerating -into $startGenerating_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /AUTOTB_TOP/DUT_INST/reset -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /AUTOTB_TOP/DUT_INST/clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_generation_child2_group [add_wave_group generation_child2(wire) -into $tbcoutputgroup]
add_wave /AUTOTB_TOP/generation_child2 -into $tb_generation_child2_group -radix hex
set tb_generation_child1_group [add_wave_group generation_child1(wire) -into $tbcoutputgroup]
add_wave /AUTOTB_TOP/generation_child1 -into $tb_generation_child1_group -radix hex
set tb_generatingDone_group [add_wave_group generatingDone(wire) -into $tbcoutputgroup]
add_wave /AUTOTB_TOP/generatingDone -into $tb_generatingDone_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_random_group [add_wave_group random(wire) -into $tbcinputgroup]
add_wave /AUTOTB_TOP/random -into $tb_random_group -radix hex
set tb_mutation_probability_group [add_wave_group mutation_probability(wire) -into $tbcinputgroup]
add_wave /AUTOTB_TOP/mutation_probability -into $tb_mutation_probability_group -radix hex
set tb_generation_parent2_group [add_wave_group generation_parent2(wire) -into $tbcinputgroup]
add_wave /AUTOTB_TOP/generation_parent2 -into $tb_generation_parent2_group -radix hex
set tb_generation_parent1_group [add_wave_group generation_parent1(wire) -into $tbcinputgroup]
add_wave /AUTOTB_TOP/generation_parent1 -into $tb_generation_parent1_group -radix hex
set tb_startGenerating_group [add_wave_group startGenerating(wire) -into $tbcinputgroup]
add_wave /AUTOTB_TOP/startGenerating -into $tb_startGenerating_group -radix hex
save_wave_config GenerationGenerator.wcfg
run all
quit

