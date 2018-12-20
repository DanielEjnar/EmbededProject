// ==============================================================
// File generated on Thu Dec 20 14:36:34 +0100 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps

module AUTOTB_TOP;
//------------------------Parameter----------------------
localparam
    TV_IN   = "GenerationGenerator.hdltvin.dat",
    TV_OUT  = "GenerationGenerator.hdltvout.dat",
    ERR_LOG = "err.log";
//------------------------Local signal-------------------
reg           __aesl__clock0;
reg           reset;
reg           startGenerating;
reg  [63:0]   generation_parent1;
reg  [63:0]   generation_parent2;
reg  [23:0]   mutation_probability;
reg  [23:0]   random;
wire          generatingDone;
wire [63:0]   generation_child1;
wire [63:0]   generation_child2;
reg           __aesl__reset;
reg           __aesl__startGenerating;
reg  [63:0]   __aesl__generation_parent1;
reg  [63:0]   __aesl__generation_parent2;
reg  [23:0]   __aesl__mutation_probability;
reg  [23:0]   __aesl__random;
reg           __aesl__generatingDone;
reg  [63:0]   __aesl__generation_child1;
reg  [63:0]   __aesl__generation_child2;
integer __aesl__err;
//------------------------Instantiation------------------
GenerationGenerator GenerationGenerator_inst (
    .clk                  ( __aesl__clock0 ),
    .reset                ( reset ),
    .startGenerating      ( startGenerating ),
    .generatingDone       ( generatingDone ),
    .generation_parent1   ( generation_parent1 ),
    .generation_parent2   ( generation_parent2 ),
    .generation_child1    ( generation_child1 ),
    .generation_child2    ( generation_child2 ),
    .mutation_probability ( mutation_probability ),
    .random               ( random )
);
//------------------------Task and function--------------
task read_token;
    input integer fp;
    output reg [527:0] token;
    reg [7:0] c;
    reg intoken;
    reg done;
begin
    token = "";
    intoken = 0;
    done = 0;
    while (!done) begin
        c = $fgetc(fp);
        if (c == 8'hff) begin   // EOF
            done = 1;
        end
        else if (c == " " || c == "\011" || c == "\012" || c == "\015") begin   // blank
            if (intoken) begin
                done = 1;
            end
        end
        else begin      // valid character
            intoken = 1;
            token = (token << 8) | c;
        end
    end
end
endtask

task rm_quoation;
    inout reg [527:0] token;
    reg [527:0] token_temp;
    integer idx;
begin
    token_temp = token >> 8;
    token = "";
    idx = 0;    while (token_temp[7:0] != 34 && token_temp[7:0] != "") begin
        token = (token_temp[7:0] << 8*idx) | token;
        token_temp = token_temp >> 8;
        idx = idx + 1;
    end
end
endtask

//------------------------Body---------------------------
// clock signals
initial begin : gen___aesl__clock0_process
    __aesl__clock0 = 0;
    # 0.001;
    while(1) begin
      __aesl__clock0 = ~__aesl__clock0;
      # 10.0;
    end
end

// read tv in
initial begin : __aesl__read_process
    integer __aesl__fp;
    integer __aesl__ret;
    reg [527:0] __aesl__token;
    // initialize
    __aesl__err = $fopen(ERR_LOG, "w");
    if (__aesl__err == 0) begin  // failed to create file
        $display("Failed to open file \"%s\"!", ERR_LOG);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    __aesl__fp = $fopen(TV_IN, "r");
    if (__aesl__fp == 0) begin  // failed to open file
        $display("Failed to open file \"%s\"!", TV_IN);
        $display("ERROR: Simulation using HLS TB failed.");
        $fdisplay(__aesl__err,"Failed to open file \"%s\"!", TV_IN);
        $finish;
    end
    read_token(__aesl__fp, __aesl__token);
    if (__aesl__token != "[") begin  // illegal format
        $display("Illegal tv format of file \"%s\"!", TV_IN);
        $display("ERROR: Simulation using HLS TB failed.");
        $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
        $finish;
    end
    read_token(__aesl__fp, __aesl__token);
    if (__aesl__token != "]") begin  // no data
        if (__aesl__token != "{") begin  // illegal format
            $display("Illegal tv format of file \"%s\"!", TV_IN);
            $display("ERROR: Simulation using HLS TB failed.");
            $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
            $finish;
        end
        read_token(__aesl__fp, __aesl__token);
        while (__aesl__token != "}") begin
            if ((__aesl__token[47 : 8] == "reset") && (__aesl__token[55 : 48] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", reset);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else if ((__aesl__token[127 : 8] == "startGenerating") && (__aesl__token[135 : 128] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", startGenerating);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else if ((__aesl__token[151 : 8] == "generation_parent1") && (__aesl__token[159 : 152] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", generation_parent1);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else if ((__aesl__token[151 : 8] == "generation_parent2") && (__aesl__token[159 : 152] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", generation_parent2);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else if ((__aesl__token[167 : 8] == "mutation_probability") && (__aesl__token[175 : 168] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", mutation_probability);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else if ((__aesl__token[55 : 8] == "random") && (__aesl__token[63 : 56] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", random);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
            end
            else begin  // unknown token
                $display("Unknown token \"%s\" in file \"%s\"!", __aesl__token, TV_IN);
                $display("ERROR: Simulation using HLS TB failed.");
                $fdisplay(__aesl__err,"Unknown token \"%s\" in file \"%s\"!", __aesl__token, TV_IN);
                $finish;
            end
            read_token(__aesl__fp, __aesl__token);  // skip ","
            if (__aesl__token == ",") begin
                read_token(__aesl__fp, __aesl__token);
            end
            else if (__aesl__token != "}") begin
                $display("Illegal tv format of file \"%s\"!", TV_IN);
                $display("ERROR: Simulation using HLS TB failed.");
                $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                $finish;
            end
        end
    end
    // drive input
    __aesl__ret = $rewind(__aesl__fp);
    @(posedge __aesl__clock0);
    read_token(__aesl__fp, __aesl__token);
    if (__aesl__token != "[") begin  // illegal format
        $display("Illegal tv format of file \"%s\"!", TV_IN);
        $display("ERROR: Simulation using HLS TB failed.");
        $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
        $finish;
    end
    read_token(__aesl__fp, __aesl__token);
    while (__aesl__token != "]" && __aesl__token != "") begin
        if (__aesl__token != "{") begin  // illegal format
            $display("Illegal tv format of file \"%s\"!", TV_IN);
            $display("ERROR: Simulation using HLS TB failed.");
            $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
            $finish;
        end
        read_token(__aesl__fp, __aesl__token);
        while (__aesl__token != "}") begin
            if ((__aesl__token[47 : 8] == "reset") && (__aesl__token[55 : 48] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__reset);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                reset <= __aesl__reset;
            end
            else if ((__aesl__token[127 : 8] == "startGenerating") && (__aesl__token[135 : 128] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__startGenerating);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                startGenerating <= __aesl__startGenerating;
            end
            else if ((__aesl__token[151 : 8] == "generation_parent1") && (__aesl__token[159 : 152] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__generation_parent1);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                generation_parent1 <= __aesl__generation_parent1;
            end
            else if ((__aesl__token[151 : 8] == "generation_parent2") && (__aesl__token[159 : 152] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__generation_parent2);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                generation_parent2 <= __aesl__generation_parent2;
            end
            else if ((__aesl__token[167 : 8] == "mutation_probability") && (__aesl__token[175 : 168] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__mutation_probability);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                mutation_probability <= __aesl__mutation_probability;
            end
            else if ((__aesl__token[55 : 8] == "random") && (__aesl__token[63 : 56] == 34) && (__aesl__token[7 : 0] == 34)) begin
                read_token(__aesl__fp, __aesl__token);
                if (__aesl__token != ":") begin  // illegal format
                    $display("Illegal tv format of file \"%s\"!", TV_IN);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);
                rm_quoation(__aesl__token);
                __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__random);
                if (__aesl__ret != 1) begin
                    $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err,"Failed to parse token!");
                    $finish;
                end
                random <= __aesl__random;
            end
            else begin  // unknown token
                $display("Unknown token \"%s\" in file \"%s\"!", __aesl__token, TV_IN);
                $display("ERROR: Simulation using HLS TB failed.");
                $fdisplay(__aesl__err,"Unknown token \"%s\" in file \"%s\"!", __aesl__token, TV_IN);
                $finish;
            end
            read_token(__aesl__fp, __aesl__token);  // skip ","
            if (__aesl__token == ",") begin
                read_token(__aesl__fp, __aesl__token);
            end
            else if (__aesl__token != "}") begin
                $display("Illegal tv format of file \"%s\"!", TV_IN);
                $display("ERROR: Simulation using HLS TB failed.");
                $fdisplay(__aesl__err,"Illegal tv format of file \"%s\"!", TV_IN);
                $finish;
            end
        end
        @(posedge __aesl__clock0);
        read_token(__aesl__fp, __aesl__token);  // skip ","
        if (__aesl__token == ",") begin
            read_token(__aesl__fp, __aesl__token);
        end
        else if (__aesl__token != "]") begin
            $display("Expected end ']' in file \"%s\"!", TV_IN);
        end
    end
    $fclose(__aesl__fp);
end

// check tv out
initial begin : __aesl__check_process
    integer __aesl__fp;
    integer __aesl__ret;
    integer __aesl__cid;
    reg __aesl__ig0;
    reg __aesl__ig1;
    reg [527:0] __aesl__token;
    integer __aesl__i;
    reg __aesl__ok;
    // check output
    __aesl__fp = $fopen(TV_OUT, "r");
    if (__aesl__fp == 0) begin  // failed to open file
        $display("Failed to open file \"%s\"!", TV_OUT);
        $display("ERROR: Simulation using HLS TB failed.");
        $fdisplay(__aesl__err,"Failed to open file \"%s\"!", TV_OUT);
        $finish;
    end
    @(posedge __aesl__clock0);
    __aesl__cid = 0;
    read_token(__aesl__fp, __aesl__token);
    if (__aesl__token != "[") begin  // illegal format
        $display("Illegal tv format of file \"%s\"!", TV_OUT);
        $display("ERROR: Simulation using HLS TB failed.");
        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
        $finish;
    end
    read_token(__aesl__fp, __aesl__token);
    while (__aesl__token != "]" && __aesl__token != "") begin
        @(posedge __aesl__clock0);
        __aesl__ig0 = (__aesl__cid < 4);
        __aesl__ig1 = (reset == 1);
        __aesl__cid = __aesl__cid + 1;
        if (__aesl__token != "{") begin  // illegal format
            $display("Illegal tv format of file \"%s\"!", TV_OUT);
            $display("ERROR: Simulation using HLS TB failed.");
            $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
            $finish;
        end
        read_token(__aesl__fp, __aesl__token);
        while (__aesl__token != "}") begin
                if ((__aesl__token[119 : 8] == "generatingDone") && (__aesl__token[127 : 120] == 34) && (__aesl__token[7 : 0] == 34)) begin
                    read_token(__aesl__fp, __aesl__token);
                    if (__aesl__token != ":") begin  // illegal format
                        $display("Illegal tv format of file \"%s\"!", TV_OUT);
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    read_token(__aesl__fp, __aesl__token);
                    rm_quoation(__aesl__token);
                    __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__generatingDone);
                    if (__aesl__ret != 1) begin
                        $display("Failed to parse token!");
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    if (!__aesl__ig0) begin
                        __aesl__ok = 1;
                        if (__aesl__generatingDone === 0 && generatingDone !== 0 ||
                            __aesl__generatingDone === 1 && generatingDone !== 1) begin
                            __aesl__ok = 0;
                        end
                        if (!__aesl__ok) begin
                            $fdisplay(__aesl__err, "Cycle #%0d: signal \"generatingDone\": %0b -- %0b (expected) unmatched.", __aesl__cid, generatingDone, __aesl__generatingDone);
                        end
                    end
                end
                else if ((__aesl__token[143 : 8] == "generation_child1") && (__aesl__token[151 : 144] == 34) && (__aesl__token[7 : 0] == 34)) begin
                    read_token(__aesl__fp, __aesl__token);
                    if (__aesl__token != ":") begin  // illegal format
                        $display("Illegal tv format of file \"%s\"!", TV_OUT);
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    read_token(__aesl__fp, __aesl__token);
                    rm_quoation(__aesl__token);
                    __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__generation_child1);
                    if (__aesl__ret != 1) begin
                        $display("Failed to parse token!");
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    if (!__aesl__ig0 && !__aesl__ig1) begin
                        __aesl__i = 0;
                        __aesl__ok = 1;
                        while (__aesl__i < 64 && __aesl__ok) begin
                            if (__aesl__generation_child1[__aesl__i] === 0 && generation_child1[__aesl__i] !== 0 ||
                                __aesl__generation_child1[__aesl__i] === 1 && generation_child1[__aesl__i] !== 1) begin
                                __aesl__ok = 0;
                            end
                            __aesl__i = __aesl__i + 1;
                        end
                        if (!__aesl__ok) begin
                            $fdisplay(__aesl__err, "Cycle #%0d: signal \"generation_child1\": %0b -- %0b (expected) unmatched.", __aesl__cid, generation_child1, __aesl__generation_child1);
                        end
                    end
                end
                else if ((__aesl__token[143 : 8] == "generation_child2") && (__aesl__token[151 : 144] == 34) && (__aesl__token[7 : 0] == 34)) begin
                    read_token(__aesl__fp, __aesl__token);
                    if (__aesl__token != ":") begin  // illegal format
                        $display("Illegal tv format of file \"%s\"!", TV_OUT);
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    read_token(__aesl__fp, __aesl__token);
                    rm_quoation(__aesl__token);
                    __aesl__ret = $sscanf(__aesl__token, "%b", __aesl__generation_child2);
                    if (__aesl__ret != 1) begin
                        $display("Failed to parse token!");
                        $display("ERROR: Simulation using HLS TB failed.");
                        $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                        $finish;
                    end
                    if (!__aesl__ig0 && !__aesl__ig1) begin
                        __aesl__i = 0;
                        __aesl__ok = 1;
                        while (__aesl__i < 64 && __aesl__ok) begin
                            if (__aesl__generation_child2[__aesl__i] === 0 && generation_child2[__aesl__i] !== 0 ||
                                __aesl__generation_child2[__aesl__i] === 1 && generation_child2[__aesl__i] !== 1) begin
                                __aesl__ok = 0;
                            end
                            __aesl__i = __aesl__i + 1;
                        end
                        if (!__aesl__ok) begin
                            $fdisplay(__aesl__err, "Cycle #%0d: signal \"generation_child2\": %0b -- %0b (expected) unmatched.", __aesl__cid, generation_child2, __aesl__generation_child2);
                        end
                    end
                end
                else begin  // unknown token
                    $display("Unknown token \"%s\" in file \"%s\"!", __aesl__token, TV_OUT);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                    $finish;
                end
                read_token(__aesl__fp, __aesl__token);  // skip ","
                if (__aesl__token == ",") begin
                    read_token(__aesl__fp, __aesl__token);
                end
                else if (__aesl__token != "}") begin
                    $display("Illegal tv format of file \"%s\"!", TV_OUT);
                    $display("ERROR: Simulation using HLS TB failed.");
                    $fdisplay(__aesl__err, "Cycle #%0d: Failed to open file \"%s\"!", __aesl__cid, TV_OUT);
                    $finish;
                end
            end
            read_token(__aesl__fp, __aesl__token);  // skip ","
            if (__aesl__token == ",") begin
                read_token(__aesl__fp, __aesl__token);
            end
            else if (__aesl__token != "]") begin
                $display("Expected end ']' in file \"%s\"!", TV_OUT);
            end
        end
        $fclose(__aesl__fp);
        $fclose(__aesl__err);
        $display("Simulation done!");
        $finish;
    end

    endmodule

