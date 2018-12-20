-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GenerationGenerator_generateGeneration is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    startGenerating : IN STD_LOGIC;
    generatingDone : OUT STD_LOGIC;
    generatingDone_ap_vld : OUT STD_LOGIC;
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
end;


architecture behav of GenerationGenerator_generateGeneration is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (14 downto 0) := "000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (14 downto 0) := "000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (14 downto 0) := "000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (14 downto 0) := "000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (14 downto 0) := "000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (14 downto 0) := "000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (14 downto 0) := "000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (14 downto 0) := "000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (14 downto 0) := "000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (14 downto 0) := "001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (14 downto 0) := "010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (14 downto 0) := "100000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv24_17 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010111";
    constant ap_const_lv24_1 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal generation_parent1 : STD_LOGIC_VECTOR (63 downto 0);
    signal val_V_3_reg_492 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (14 downto 0) := "000000000000010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal val_V_4_reg_497 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_tmp_8_fu_354_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal p_tmp_8_reg_502 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal val_V_reg_507 : STD_LOGIC_VECTOR (23 downto 0);
    signal j_1_fu_369_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_1_reg_515 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal exitcond1_fu_363_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_tmp_s_fu_396_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal j_2_fu_428_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_2_reg_536 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal exitcond_fu_422_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_tmp_1_fu_451_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal p_tmp_1_reg_546 : STD_LOGIC_VECTOR (23 downto 0);
    signal GenerationGenerator_2_reg_221 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal v_V_reg_231 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_mux_p_0274_1_phi_fu_258_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_reg_242 : STD_LOGIC_VECTOR (6 downto 0);
    signal child1_V_1_fu_415_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_311_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal GenerationGenerator_5_reg_266 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_phi_mux_p_0438_1_phi_fu_303_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal v_V_1_reg_276 : STD_LOGIC_VECTOR (63 downto 0);
    signal j1_reg_287 : STD_LOGIC_VECTOR (6 downto 0);
    signal child2_V_1_fu_473_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_375_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_fu_434_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_read_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal tmp_12_fu_480_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal tmp_4_fu_322_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_328_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal storemerge_i_fu_334_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_7_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_348_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_1_fu_384_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_390_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal j_cast2_fu_380_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal op2_assign_fu_405_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_fu_439_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_445_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal j1_cast1_fu_459_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal op2_assign_1_fu_463_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_18_fu_469_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_fu_480_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (14 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '0') then
                ap_CS_fsm <= ap_ST_fsm_state2;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    GenerationGenerator_2_reg_221_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                GenerationGenerator_2_reg_221 <= p_tmp_s_fu_396_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                GenerationGenerator_2_reg_221 <= p_tmp_8_reg_502;
            end if; 
        end if;
    end process;

    GenerationGenerator_5_reg_266_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                GenerationGenerator_5_reg_266 <= GenerationGenerator_2_reg_221;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                GenerationGenerator_5_reg_266 <= p_tmp_1_reg_546;
            end if; 
        end if;
    end process;

    j1_reg_287_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                j1_reg_287 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                j1_reg_287 <= j_2_reg_536;
            end if; 
        end if;
    end process;

    j_reg_242_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                j_reg_242 <= j_1_reg_515;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                j_reg_242 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    v_V_1_reg_276_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                v_V_1_reg_276 <= val_V_3_reg_492;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                v_V_1_reg_276 <= ap_phi_mux_p_0438_1_phi_fu_303_p4;
            end if; 
        end if;
    end process;

    v_V_reg_231_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                v_V_reg_231 <= ap_phi_mux_p_0274_1_phi_fu_258_p4;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                v_V_reg_231 <= val_V_4_reg_497;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                j_1_reg_515 <= j_1_fu_369_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                j_2_reg_536 <= j_2_fu_428_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_422_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                p_tmp_1_reg_546 <= p_tmp_1_fu_451_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                p_tmp_8_reg_502 <= p_tmp_8_fu_354_p3;
                val_V_reg_507 <= mutation_probability;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                val_V_4_reg_497 <= generation_parent2;
            end if;
        end if;
    end process;
    val_V_3_reg_492(63 downto 0) <= "0000000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state7, exitcond1_fu_363_p2, ap_CS_fsm_state10, exitcond_fu_422_p2, grp_read_fu_140_p2, ap_CS_fsm_state2, ap_CS_fsm_state15, tmp_12_fu_480_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                if ((not((grp_read_fu_140_p2 = ap_const_lv1_0)) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((exitcond1_fu_363_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((exitcond_fu_422_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                if ((not((tmp_12_fu_480_p2 = ap_const_lv1_0)) and (ap_const_logic_1 = ap_CS_fsm_state15))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state15;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXX";
        end case;
    end process;

    GenerationGenerator_randomNumbers_V_address0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state10, tmp_s_fu_375_p1, tmp_14_fu_434_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            GenerationGenerator_randomNumbers_V_address0 <= tmp_14_fu_434_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            GenerationGenerator_randomNumbers_V_address0 <= tmp_s_fu_375_p1(8 - 1 downto 0);
        else 
            GenerationGenerator_randomNumbers_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    GenerationGenerator_randomNumbers_V_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            GenerationGenerator_randomNumbers_V_ce0 <= ap_const_logic_1;
        else 
            GenerationGenerator_randomNumbers_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    GenerationGenerator_trueRandomIndex_V_o_assign_proc : process(p_tmp_8_fu_354_p3, ap_CS_fsm_state5, p_tmp_s_fu_396_p3, ap_CS_fsm_state8, p_tmp_1_reg_546, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            GenerationGenerator_trueRandomIndex_V_o <= p_tmp_1_reg_546;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            GenerationGenerator_trueRandomIndex_V_o <= p_tmp_s_fu_396_p3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            GenerationGenerator_trueRandomIndex_V_o <= p_tmp_8_fu_354_p3;
        else 
            GenerationGenerator_trueRandomIndex_V_o <= "XXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    GenerationGenerator_trueRandomIndex_V_o_ap_vld_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state8, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            GenerationGenerator_trueRandomIndex_V_o_ap_vld <= ap_const_logic_1;
        else 
            GenerationGenerator_trueRandomIndex_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_phi_mux_p_0274_1_phi_fu_258_p4_assign_proc : process(ap_CS_fsm_state8, v_V_reg_231, child1_V_1_fu_415_p2, grp_fu_311_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
            if ((grp_fu_311_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_p_0274_1_phi_fu_258_p4 <= v_V_reg_231;
            elsif ((grp_fu_311_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_p_0274_1_phi_fu_258_p4 <= child1_V_1_fu_415_p2;
            else 
                ap_phi_mux_p_0274_1_phi_fu_258_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_0274_1_phi_fu_258_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_p_0438_1_phi_fu_303_p4_assign_proc : process(grp_fu_311_p2, ap_CS_fsm_state11, v_V_1_reg_276, child2_V_1_fu_473_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
            if ((grp_fu_311_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_p_0438_1_phi_fu_303_p4 <= v_V_1_reg_276;
            elsif ((grp_fu_311_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_p_0438_1_phi_fu_303_p4 <= child2_V_1_fu_473_p2;
            else 
                ap_phi_mux_p_0438_1_phi_fu_303_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_0438_1_phi_fu_303_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    child1_V_1_fu_415_p2 <= (v_V_reg_231 xor tmp_10_fu_411_p1);
    child2_V_1_fu_473_p2 <= (v_V_1_reg_276 xor tmp_18_fu_469_p1);
    exitcond1_fu_363_p2 <= "1" when (j_reg_242 = ap_const_lv7_40) else "0";
    exitcond_fu_422_p2 <= "1" when (j1_reg_287 = ap_const_lv7_40) else "0";

    generatingDone_assign_proc : process(grp_read_fu_140_p2, ap_CS_fsm_state2, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            generatingDone <= ap_const_logic_1;
        elsif ((not((grp_read_fu_140_p2 = ap_const_lv1_0)) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            generatingDone <= ap_const_logic_0;
        else 
            generatingDone <= 'X';
        end if; 
    end process;


    generatingDone_ap_vld_assign_proc : process(grp_read_fu_140_p2, ap_CS_fsm_state2, ap_CS_fsm_state14)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state14) or (not((grp_read_fu_140_p2 = ap_const_lv1_0)) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            generatingDone_ap_vld <= ap_const_logic_1;
        else 
            generatingDone_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    generation_child1 <= v_V_reg_231;

    generation_child1_ap_vld_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            generation_child1_ap_vld <= ap_const_logic_1;
        else 
            generation_child1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    generation_child2 <= v_V_1_reg_276;

    generation_child2_ap_vld_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            generation_child2_ap_vld <= ap_const_logic_1;
        else 
            generation_child2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    generation_parent1 <= ap_const_lv64_0;
    grp_fu_311_p2 <= "1" when (unsigned(GenerationGenerator_randomNumbers_V_q0) < unsigned(val_V_reg_507)) else "0";
    grp_read_fu_140_p2 <= (0=>startGenerating, others=>'-');
    j1_cast1_fu_459_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j1_reg_287),32));
    j_1_fu_369_p2 <= std_logic_vector(unsigned(j_reg_242) + unsigned(ap_const_lv7_1));
    j_2_fu_428_p2 <= std_logic_vector(unsigned(j1_reg_287) + unsigned(ap_const_lv7_1));
    j_cast2_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_242),32));
    op2_assign_1_fu_463_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv32_1),to_integer(unsigned('0' & j1_cast1_fu_459_p1(31-1 downto 0)))));
    op2_assign_fu_405_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv32_1),to_integer(unsigned('0' & j_cast2_fu_380_p1(31-1 downto 0)))));
    p_tmp_1_fu_451_p3 <= 
        ap_const_lv24_0 when (tmp_15_fu_439_p2(0) = '1') else 
        tmp_16_fu_445_p2;
    p_tmp_8_fu_354_p3 <= 
        ap_const_lv24_0 when (tmp_7_fu_342_p2(0) = '1') else 
        tmp_8_fu_348_p2;
    p_tmp_s_fu_396_p3 <= 
        ap_const_lv24_0 when (tmp_1_fu_384_p2(0) = '1') else 
        tmp_2_fu_390_p2;
    storemerge_i_fu_334_p3 <= 
        ap_const_lv24_0 when (tmp_4_fu_322_p2(0) = '1') else 
        tmp_5_fu_328_p2;
        tmp_10_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(op2_assign_fu_405_p2),64));

    tmp_12_fu_480_p0 <= (0=>startGenerating, others=>'-');
    tmp_12_fu_480_p2 <= (tmp_12_fu_480_p0 xor ap_const_lv1_1);
    tmp_14_fu_434_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(GenerationGenerator_5_reg_266),64));
    tmp_15_fu_439_p2 <= "1" when (GenerationGenerator_5_reg_266 = ap_const_lv24_17) else "0";
    tmp_16_fu_445_p2 <= std_logic_vector(unsigned(GenerationGenerator_5_reg_266) + unsigned(ap_const_lv24_1));
        tmp_18_fu_469_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(op2_assign_1_fu_463_p2),64));

    tmp_1_fu_384_p2 <= "1" when (GenerationGenerator_2_reg_221 = ap_const_lv24_17) else "0";
    tmp_2_fu_390_p2 <= std_logic_vector(unsigned(GenerationGenerator_2_reg_221) + unsigned(ap_const_lv24_1));
    tmp_4_fu_322_p2 <= "1" when (GenerationGenerator_trueRandomIndex_V_i = ap_const_lv24_17) else "0";
    tmp_5_fu_328_p2 <= std_logic_vector(unsigned(GenerationGenerator_trueRandomIndex_V_i) + unsigned(ap_const_lv24_1));
    tmp_7_fu_342_p2 <= "1" when (storemerge_i_fu_334_p3 = ap_const_lv24_17) else "0";
    tmp_8_fu_348_p2 <= std_logic_vector(unsigned(storemerge_i_fu_334_p3) + unsigned(ap_const_lv24_1));
    tmp_s_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(GenerationGenerator_2_reg_221),64));
end behav;
