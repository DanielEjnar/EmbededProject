-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RosenbrockSimulator is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    startSimulation : IN STD_LOGIC;
    simulationDone : OUT STD_LOGIC;
    a : IN STD_LOGIC_VECTOR (31 downto 0);
    b : IN STD_LOGIC_VECTOR (31 downto 0);
    chromosome_in : IN STD_LOGIC_VECTOR (63 downto 0);
    fitness : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of RosenbrockSimulator is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "RosenbrockSimulator,hls_ip_2018_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=17.377750,HLS_SYN_LAT=25,HLS_SYN_TPT=none,HLS_SYN_MEM=30,HLS_SYN_DSP=226,HLS_SYN_FF=12824,HLS_SYN_LUT=19861,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone : STD_LOGIC;
    signal grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone_ap_vld : STD_LOGIC;
    signal grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness_ap_vld : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";

    component RosenbrockSimulator_simulateRosenbrock IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        startSimulation : IN STD_LOGIC;
        simulationDone : OUT STD_LOGIC;
        simulationDone_ap_vld : OUT STD_LOGIC;
        a : IN STD_LOGIC_VECTOR (31 downto 0);
        b : IN STD_LOGIC_VECTOR (31 downto 0);
        chromosome_in : IN STD_LOGIC_VECTOR (63 downto 0);
        fitness : OUT STD_LOGIC_VECTOR (31 downto 0);
        fitness_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_RosenbrockSimulator_simulateRosenbrock_fu_88 : component RosenbrockSimulator_simulateRosenbrock
    port map (
        ap_clk => clk,
        ap_rst => reset,
        startSimulation => startSimulation,
        simulationDone => grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone,
        simulationDone_ap_vld => grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone_ap_vld,
        a => a,
        b => b,
        chromosome_in => chromosome_in,
        fitness => grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness,
        fitness_ap_vld => grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness_ap_vld);





    fitness_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness_ap_vld = ap_const_logic_1)) then 
                fitness <= grp_RosenbrockSimulator_simulateRosenbrock_fu_88_fitness;
            end if; 
        end if;
    end process;


    simulationDone_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone_ap_vld = ap_const_logic_1)) then 
                simulationDone <= grp_RosenbrockSimulator_simulateRosenbrock_fu_88_simulationDone;
            end if; 
        end if;
    end process;

    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
end behav;
