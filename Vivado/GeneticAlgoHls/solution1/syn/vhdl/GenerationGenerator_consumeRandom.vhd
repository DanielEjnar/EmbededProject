-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GenerationGenerator_consumeRandom is
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
    GenerationGenerator_randomNumbers_V_d0 : OUT STD_LOGIC_VECTOR (23 downto 0);
    GenerationGenerator_randomNumbers_V_q0 : IN STD_LOGIC_VECTOR (23 downto 0) );
end;


architecture behav of GenerationGenerator_consumeRandom is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_17 : STD_LOGIC_VECTOR (8 downto 0) := "000010111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv25_1FFFFFF : STD_LOGIC_VECTOR (24 downto 0) := "1111111111111111111111111";
    constant ap_const_lv25_18 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000011000";
    constant ap_const_lv9_1FF : STD_LOGIC_VECTOR (8 downto 0) := "111111111";
    constant ap_const_lv24_17 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010111";
    constant ap_const_lv24_1 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal val_V_reg_223 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal GenerationGenerator_s_reg_229 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_s_fu_183_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_21_phi_fu_156_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_29_cast_fu_190_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_fu_200_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_22_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal lhs_V_cast_fu_163_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal r_V_fu_167_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_13_fu_179_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_24_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_25_fu_209_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


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

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                GenerationGenerator_s_reg_229 <= GenerationGenerator_randomNumberIndex_V_i;
                val_V_reg_223 <= random;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    GenerationGenerator_randomNumberIndex_V_o <= 
        ap_const_lv24_0 when (tmp_24_fu_204_p2(0) = '1') else 
        tmp_25_fu_209_p2;

    GenerationGenerator_randomNumberIndex_V_o_ap_vld_assign_proc : process(ap_CS_fsm_state3, tmp_22_fu_195_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_1 = tmp_22_fu_195_p2))) then 
            GenerationGenerator_randomNumberIndex_V_o_ap_vld <= ap_const_logic_1;
        else 
            GenerationGenerator_randomNumberIndex_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    GenerationGenerator_randomNumbers_V_address0_assign_proc : process(ap_CS_fsm_state2, tmp_29_cast_fu_190_p1, tmp_23_fu_200_p1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            GenerationGenerator_randomNumbers_V_address0 <= tmp_23_fu_200_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            GenerationGenerator_randomNumbers_V_address0 <= tmp_29_cast_fu_190_p1(8 - 1 downto 0);
        else 
            GenerationGenerator_randomNumbers_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    GenerationGenerator_randomNumbers_V_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            GenerationGenerator_randomNumbers_V_ce0 <= ap_const_logic_1;
        else 
            GenerationGenerator_randomNumbers_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    GenerationGenerator_randomNumbers_V_d0 <= val_V_reg_223;

    GenerationGenerator_randomNumbers_V_we0_assign_proc : process(ap_CS_fsm_state3, tmp_22_fu_195_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_1 = tmp_22_fu_195_p2))) then 
            GenerationGenerator_randomNumbers_V_we0 <= ap_const_logic_1;
        else 
            GenerationGenerator_randomNumbers_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    lhs_V_cast_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(GenerationGenerator_randomNumberIndex_V_i),25));
    r_V_fu_167_p2 <= std_logic_vector(unsigned(lhs_V_cast_fu_163_p1) + unsigned(ap_const_lv25_1FFFFFF));
    tmp_13_fu_179_p1 <= GenerationGenerator_randomNumberIndex_V_i(9 - 1 downto 0);

    tmp_21_phi_fu_156_p4_assign_proc : process(ap_CS_fsm_state2, tmp_s_fu_183_p2, tmp_fu_173_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
            if ((tmp_fu_173_p2 = ap_const_lv1_1)) then 
                tmp_21_phi_fu_156_p4 <= ap_const_lv9_17;
            elsif ((tmp_fu_173_p2 = ap_const_lv1_0)) then 
                tmp_21_phi_fu_156_p4 <= tmp_s_fu_183_p2;
            else 
                tmp_21_phi_fu_156_p4 <= "XXXXXXXXX";
            end if;
        else 
            tmp_21_phi_fu_156_p4 <= "XXXXXXXXX";
        end if; 
    end process;

    tmp_22_fu_195_p2 <= "1" when (val_V_reg_223 = GenerationGenerator_randomNumbers_V_q0) else "0";
    tmp_23_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(GenerationGenerator_s_reg_229),32));
    tmp_24_fu_204_p2 <= "1" when (GenerationGenerator_s_reg_229 = ap_const_lv24_17) else "0";
    tmp_25_fu_209_p2 <= std_logic_vector(unsigned(GenerationGenerator_s_reg_229) + unsigned(ap_const_lv24_1));
        tmp_29_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_21_phi_fu_156_p4),32));

    tmp_fu_173_p2 <= "1" when (signed(r_V_fu_167_p2) > signed(ap_const_lv25_18)) else "0";
    tmp_s_fu_183_p2 <= std_logic_vector(signed(ap_const_lv9_1FF) + signed(tmp_13_fu_179_p1));
end behav;