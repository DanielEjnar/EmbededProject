-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GenerationGenerator is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    startGenerating : IN STD_LOGIC;
    generatingDone : OUT STD_LOGIC;
    generation_parent1 : IN STD_LOGIC_VECTOR (63 downto 0);
    generation_parent2 : IN STD_LOGIC_VECTOR (63 downto 0);
    generation_child1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    generation_child2 : OUT STD_LOGIC_VECTOR (63 downto 0);
    mutation_probability : IN STD_LOGIC_VECTOR (23 downto 0);
    random : IN STD_LOGIC_VECTOR (23 downto 0) );
end;


architecture behav of GenerationGenerator is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "GenerationGenerator,hls_ip_2018_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.474000,HLS_SYN_LAT=69,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=623,HLS_SYN_LUT=1027,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal GenerationGenerator_randomNumbers_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal GenerationGenerator_randomNumbers_V_ce0 : STD_LOGIC;
    signal GenerationGenerator_randomNumbers_V_q0 : STD_LOGIC_VECTOR (23 downto 0);
    signal GenerationGenerator_s_load_fu_174_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_GenerationGenerator_generateGeneration_fu_114_generatingDone : STD_LOGIC;
    signal grp_GenerationGenerator_generateGeneration_fu_114_generatingDone_ap_vld : STD_LOGIC;
    signal grp_GenerationGenerator_generateGeneration_fu_114_generation_child1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_GenerationGenerator_generateGeneration_fu_114_generation_child1_ap_vld : STD_LOGIC;
    signal grp_GenerationGenerator_generateGeneration_fu_114_generation_child2 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_GenerationGenerator_generateGeneration_fu_114_generation_child2_ap_vld : STD_LOGIC;
    signal grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o_ap_vld : STD_LOGIC;
    signal grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0 : STD_LOGIC;
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o_ap_vld : STD_LOGIC;
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0 : STD_LOGIC;
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_we0 : STD_LOGIC;
    signal grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_d0 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal GenerationGenerator_randomNumberIndex_V : STD_LOGIC_VECTOR (23 downto 0);
    signal GenerationGenerator_trueRandomIndex_V : STD_LOGIC_VECTOR (23 downto 0);
    signal GenerationGenerator_1_load_fu_178_p1 : STD_LOGIC_VECTOR (0 downto 0);

    component GenerationGenerator_generateGeneration IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        startGenerating : IN STD_LOGIC;
        generatingDone : OUT STD_LOGIC;
        generatingDone_ap_vld : OUT STD_LOGIC;
        generation_parent1 : IN STD_LOGIC_VECTOR (63 downto 0);
        generation_parent2 : IN STD_LOGIC_VECTOR (63 downto 0);
        generation_child1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        generation_child1_ap_vld : OUT STD_LOGIC;
        generation_child2 : OUT STD_LOGIC_VECTOR (63 downto 0);
        generation_child2_ap_vld : OUT STD_LOGIC;
        mutation_probability : IN STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_trueRandomIndex_V_i : IN STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_trueRandomIndex_V_o : OUT STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_trueRandomIndex_V_o_ap_vld : OUT STD_LOGIC;
        GenerationGenerator_randomNumbers_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        GenerationGenerator_randomNumbers_V_ce0 : OUT STD_LOGIC;
        GenerationGenerator_randomNumbers_V_q0 : IN STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component GenerationGenerator_produceRandom IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        random : IN STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_randomNumberIndex_V_i : IN STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_randomNumberIndex_V_o : OUT STD_LOGIC_VECTOR (23 downto 0);
        GenerationGenerator_randomNumberIndex_V_o_ap_vld : OUT STD_LOGIC;
        GenerationGenerator_randomNumbers_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        GenerationGenerator_randomNumbers_V_ce0 : OUT STD_LOGIC;
        GenerationGenerator_randomNumbers_V_we0 : OUT STD_LOGIC;
        GenerationGenerator_randomNumbers_V_d0 : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component GenerationGeneratbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (23 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;



begin
    GenerationGenerator_randomNumbers_V_U : component GenerationGeneratbkb
    generic map (
        DataWidth => 24,
        AddressRange => 160,
        AddressWidth => 8)
    port map (
        clk => clk,
        reset => reset,
        address0 => GenerationGenerator_randomNumbers_V_address0,
        ce0 => GenerationGenerator_randomNumbers_V_ce0,
        we0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_we0,
        d0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_d0,
        q0 => GenerationGenerator_randomNumbers_V_q0);

    grp_GenerationGenerator_generateGeneration_fu_114 : component GenerationGenerator_generateGeneration
    port map (
        ap_clk => clk,
        ap_rst => reset,
        startGenerating => startGenerating,
        generatingDone => grp_GenerationGenerator_generateGeneration_fu_114_generatingDone,
        generatingDone_ap_vld => grp_GenerationGenerator_generateGeneration_fu_114_generatingDone_ap_vld,
        generation_parent1 => generation_parent1,
        generation_parent2 => generation_parent2,
        generation_child1 => grp_GenerationGenerator_generateGeneration_fu_114_generation_child1,
        generation_child1_ap_vld => grp_GenerationGenerator_generateGeneration_fu_114_generation_child1_ap_vld,
        generation_child2 => grp_GenerationGenerator_generateGeneration_fu_114_generation_child2,
        generation_child2_ap_vld => grp_GenerationGenerator_generateGeneration_fu_114_generation_child2_ap_vld,
        mutation_probability => mutation_probability,
        GenerationGenerator_trueRandomIndex_V_i => GenerationGenerator_trueRandomIndex_V,
        GenerationGenerator_trueRandomIndex_V_o => grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o,
        GenerationGenerator_trueRandomIndex_V_o_ap_vld => grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o_ap_vld,
        GenerationGenerator_randomNumbers_V_address0 => grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_address0,
        GenerationGenerator_randomNumbers_V_ce0 => grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0,
        GenerationGenerator_randomNumbers_V_q0 => GenerationGenerator_randomNumbers_V_q0);

    grp_GenerationGenerator_produceRandom_fu_144 : component GenerationGenerator_produceRandom
    port map (
        ap_clk => clk,
        ap_rst => reset,
        random => random,
        GenerationGenerator_randomNumberIndex_V_i => GenerationGenerator_randomNumberIndex_V,
        GenerationGenerator_randomNumberIndex_V_o => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o,
        GenerationGenerator_randomNumberIndex_V_o_ap_vld => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o_ap_vld,
        GenerationGenerator_randomNumbers_V_address0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_address0,
        GenerationGenerator_randomNumbers_V_ce0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0,
        GenerationGenerator_randomNumbers_V_we0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_we0,
        GenerationGenerator_randomNumbers_V_d0 => grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_d0);





    GenerationGenerator_randomNumberIndex_V_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (((ap_const_lv1_0 = GenerationGenerator_1_load_fu_178_p1) and (ap_const_lv1_0 = GenerationGenerator_s_load_fu_174_p1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                GenerationGenerator_randomNumberIndex_V <= ap_const_lv24_0;
            elsif ((grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o_ap_vld = ap_const_logic_1)) then 
                GenerationGenerator_randomNumberIndex_V <= grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumberIndex_V_o;
            end if; 
        end if;
    end process;


    GenerationGenerator_trueRandomIndex_V_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (((ap_const_lv1_0 = GenerationGenerator_1_load_fu_178_p1) and (ap_const_lv1_0 = GenerationGenerator_s_load_fu_174_p1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                GenerationGenerator_trueRandomIndex_V <= ap_const_lv24_0;
            elsif ((grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o_ap_vld = ap_const_logic_1)) then 
                GenerationGenerator_trueRandomIndex_V <= grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_trueRandomIndex_V_o;
            end if; 
        end if;
    end process;


    generatingDone_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_GenerationGenerator_generateGeneration_fu_114_generatingDone_ap_vld = ap_const_logic_1)) then 
                generatingDone <= grp_GenerationGenerator_generateGeneration_fu_114_generatingDone;
            end if; 
        end if;
    end process;


    generation_child1_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_GenerationGenerator_generateGeneration_fu_114_generation_child1_ap_vld = ap_const_logic_1)) then 
                generation_child1 <= grp_GenerationGenerator_generateGeneration_fu_114_generation_child1;
            end if; 
        end if;
    end process;


    generation_child2_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_GenerationGenerator_generateGeneration_fu_114_generation_child2_ap_vld = ap_const_logic_1)) then 
                generation_child2 <= grp_GenerationGenerator_generateGeneration_fu_114_generation_child2;
            end if; 
        end if;
    end process;

    GenerationGenerator_1_load_fu_178_p1 <= ap_const_lv1_0;

    GenerationGenerator_randomNumbers_V_address0_assign_proc : process(grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_address0, grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0, grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_address0, grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0)
    begin
        if ((grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0 = ap_const_logic_1)) then 
            GenerationGenerator_randomNumbers_V_address0 <= grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_address0;
        elsif ((grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0 = ap_const_logic_1)) then 
            GenerationGenerator_randomNumbers_V_address0 <= grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_address0;
        else 
            GenerationGenerator_randomNumbers_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    GenerationGenerator_randomNumbers_V_ce0_assign_proc : process(grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0, grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0)
    begin
        if ((grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0 = ap_const_logic_1)) then 
            GenerationGenerator_randomNumbers_V_ce0 <= grp_GenerationGenerator_produceRandom_fu_144_GenerationGenerator_randomNumbers_V_ce0;
        elsif ((grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0 = ap_const_logic_1)) then 
            GenerationGenerator_randomNumbers_V_ce0 <= grp_GenerationGenerator_generateGeneration_fu_114_GenerationGenerator_randomNumbers_V_ce0;
        else 
            GenerationGenerator_randomNumbers_V_ce0 <= 'X';
        end if; 
    end process;

    GenerationGenerator_s_load_fu_174_p1 <= ap_const_lv1_0;
    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
end behav;
