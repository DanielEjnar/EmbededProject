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
    id 11 \
    name GenerationGenerator_randomNumbers_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename GenerationGenerator_randomNumbers_V \
    op interface \
    ports { GenerationGenerator_randomNumbers_V_address0 { O 8 vector } GenerationGenerator_randomNumbers_V_ce0 { O 1 bit } GenerationGenerator_randomNumbers_V_q0 { I 24 vector } GenerationGenerator_randomNumbers_V_address1 { O 8 vector } GenerationGenerator_randomNumbers_V_ce1 { O 1 bit } GenerationGenerator_randomNumbers_V_q1 { I 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'GenerationGenerator_randomNumbers_V'"
}
}


# Adapter definition:
set corename slv0
set opts {
    {
        id 3
        name startGenerating
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 1
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
    {
        id 4
        name generatingDone
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode SIG_OUT_VLD_ON:SIG_OUT_ACC_OFF
    }
    {
        id 5
        name generation_parent1
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 16
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
    {
        id 6
        name generation_parent2
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 16
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
    {
        id 7
        name generation_child1
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 16
        mode SIG_OUT_VLD_ON:SIG_OUT_ACC_OFF
    }
    {
        id 8
        name generation_child2
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 16
        mode SIG_OUT_VLD_ON:SIG_OUT_ACC_OFF
    }
    {
        id 9
        name mutation_probability
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 24
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
}
set portmap { }
set metadata { -bus_bundle slv0}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
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


