# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name GenerationGenerator_randomNumbers_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename GenerationGenerator_randomNumbers_V \
    op interface \
    ports { GenerationGenerator_randomNumbers_V_address0 { O 8 vector } GenerationGenerator_randomNumbers_V_ce0 { O 1 bit } GenerationGenerator_randomNumbers_V_q0 { I 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'GenerationGenerator_randomNumbers_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 0 \
    name startGenerating \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_startGenerating \
    op interface \
    ports { startGenerating { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name generatingDone \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_generatingDone \
    op interface \
    ports { generatingDone { O 1 bit } generatingDone_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name generation_parent1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_generation_parent1 \
    op interface \
    ports { generation_parent1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name generation_parent2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_generation_parent2 \
    op interface \
    ports { generation_parent2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name generation_child1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_generation_child1 \
    op interface \
    ports { generation_child1 { O 64 vector } generation_child1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name generation_child2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_generation_child2 \
    op interface \
    ports { generation_child2 { O 64 vector } generation_child2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name mutation_probability \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mutation_probability \
    op interface \
    ports { mutation_probability { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name GenerationGenerator_trueRandomIndex_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_GenerationGenerator_trueRandomIndex_V \
    op interface \
    ports { GenerationGenerator_trueRandomIndex_V_i { I 24 vector } GenerationGenerator_trueRandomIndex_V_o { O 24 vector } GenerationGenerator_trueRandomIndex_V_o_ap_vld { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


