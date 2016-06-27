--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: lcd_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jun 27 12:09:34 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter C:/Users/sujit/Projects/minor/lcd/iseconfig/filter.filter -intstyle ise -ar Structure -tm lcd -w -dir netgen/synthesis -ofmt vhdl -sim lcd.ngc lcd_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: lcd.ngc
-- Output file	: C:\Users\sujit\Projects\minor\lcd\netgen\synthesis\lcd_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: lcd
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity lcd is
  port (
    clk : in STD_LOGIC := 'X'; 
    LCD_E : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    LCD_RS : out STD_LOGIC; 
    LCD_RW : out STD_LOGIC; 
    SF_CE0 : out STD_LOGIC; 
    SF_D : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end lcd;

architecture Structure of lcd is
  signal LCD_E0_1 : STD_LOGIC; 
  signal LCD_E1_2 : STD_LOGIC; 
  signal LCD_E1_mux0000 : STD_LOGIC; 
  signal LCD_E1_mux00001_4 : STD_LOGIC; 
  signal LCD_E_OBUF_5 : STD_LOGIC; 
  signal LCD_RS_OBUF_7 : STD_LOGIC; 
  signal LCD_RW_OBUF_9 : STD_LOGIC; 
  signal LED_0_OBUF_18 : STD_LOGIC; 
  signal LED_1_OBUF_19 : STD_LOGIC; 
  signal LED_2_OBUF_20 : STD_LOGIC; 
  signal LED_3_OBUF_21 : STD_LOGIC; 
  signal LED_6_OBUF_22 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_1_rt_25 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_2_rt_27 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_3_rt_29 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_4_rt_31 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_5_rt_33 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_6_rt_35 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_7_rt_37 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_8_rt_39 : STD_LOGIC; 
  signal Madd_i2_share0000_cy_9_rt_41 : STD_LOGIC; 
  signal Madd_i2_share0000_xor_10_rt_43 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_10_rt_46 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_11_rt_48 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_12_rt_50 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_13_rt_52 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_14_rt_54 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_15_rt_56 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_1_rt_58 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_2_rt_60 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_3_rt_62 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_4_rt_64 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_5_rt_66 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_6_rt_68 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_7_rt_70 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_8_rt_72 : STD_LOGIC; 
  signal Madd_i3_addsub0000_cy_9_rt_74 : STD_LOGIC; 
  signal Madd_i3_addsub0000_xor_16_rt_76 : STD_LOGIC; 
  signal Madd_i_share0000_cy_10_rt_79 : STD_LOGIC; 
  signal Madd_i_share0000_cy_11_rt_81 : STD_LOGIC; 
  signal Madd_i_share0000_cy_12_rt_83 : STD_LOGIC; 
  signal Madd_i_share0000_cy_13_rt_85 : STD_LOGIC; 
  signal Madd_i_share0000_cy_14_rt_87 : STD_LOGIC; 
  signal Madd_i_share0000_cy_15_rt_89 : STD_LOGIC; 
  signal Madd_i_share0000_cy_16_rt_91 : STD_LOGIC; 
  signal Madd_i_share0000_cy_17_rt_93 : STD_LOGIC; 
  signal Madd_i_share0000_cy_18_rt_95 : STD_LOGIC; 
  signal Madd_i_share0000_cy_1_rt_97 : STD_LOGIC; 
  signal Madd_i_share0000_cy_2_rt_99 : STD_LOGIC; 
  signal Madd_i_share0000_cy_3_rt_101 : STD_LOGIC; 
  signal Madd_i_share0000_cy_4_rt_103 : STD_LOGIC; 
  signal Madd_i_share0000_cy_5_rt_105 : STD_LOGIC; 
  signal Madd_i_share0000_cy_6_rt_107 : STD_LOGIC; 
  signal Madd_i_share0000_cy_7_rt_109 : STD_LOGIC; 
  signal Madd_i_share0000_cy_8_rt_111 : STD_LOGIC; 
  signal Madd_i_share0000_cy_9_rt_113 : STD_LOGIC; 
  signal Madd_i_share0000_xor_19_rt_115 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal SF_CE0_OBUF_167 : STD_LOGIC; 
  signal SF_D_0_OBUF_184 : STD_LOGIC; 
  signal SF_D_1_OBUF_185 : STD_LOGIC; 
  signal SF_D_2_OBUF_186 : STD_LOGIC; 
  signal SF_D_3_OBUF_187 : STD_LOGIC; 
  signal clk_BUFGP_189 : STD_LOGIC; 
  signal cur_state_FSM_FFd1_190 : STD_LOGIC; 
  signal cur_state_FSM_FFd1_In : STD_LOGIC; 
  signal cur_state_FSM_FFd10_192 : STD_LOGIC; 
  signal cur_state_FSM_FFd11_193 : STD_LOGIC; 
  signal cur_state_FSM_FFd11_In : STD_LOGIC; 
  signal cur_state_FSM_FFd12_195 : STD_LOGIC; 
  signal cur_state_FSM_FFd2_196 : STD_LOGIC; 
  signal cur_state_FSM_FFd3_197 : STD_LOGIC; 
  signal cur_state_FSM_FFd4_198 : STD_LOGIC; 
  signal cur_state_FSM_FFd5_199 : STD_LOGIC; 
  signal cur_state_FSM_FFd6_200 : STD_LOGIC; 
  signal cur_state_FSM_FFd6_In : STD_LOGIC; 
  signal cur_state_FSM_FFd7_202 : STD_LOGIC; 
  signal cur_state_FSM_FFd7_In : STD_LOGIC; 
  signal cur_state_FSM_FFd8_204 : STD_LOGIC; 
  signal cur_state_FSM_FFd9_205 : STD_LOGIC; 
  signal cur_state_FSM_Out13 : STD_LOGIC; 
  signal cur_state_cmp_eq0000 : STD_LOGIC; 
  signal cur_state_cmp_eq000011_208 : STD_LOGIC; 
  signal cur_state_cmp_eq000019_209 : STD_LOGIC; 
  signal cur_state_cmp_eq000024_210 : STD_LOGIC; 
  signal cur_state_cmp_eq0001 : STD_LOGIC; 
  signal cur_state_cmp_eq0001_wg_cy_0_rt_213 : STD_LOGIC; 
  signal i2_mux0002_0_110_233 : STD_LOGIC; 
  signal i2_mux0002_0_111_234 : STD_LOGIC; 
  signal i2_mux0002_0_116_235 : STD_LOGIC; 
  signal i2_mux0002_0_146_236 : STD_LOGIC; 
  signal i2_or0001 : STD_LOGIC; 
  signal i_mux0001_0_110_331 : STD_LOGIC; 
  signal i_mux0001_0_121_332 : STD_LOGIC; 
  signal i_mux0001_0_136_333 : STD_LOGIC; 
  signal i_mux0001_0_145_334 : STD_LOGIC; 
  signal i_or0000 : STD_LOGIC; 
  signal init_done_375 : STD_LOGIC; 
  signal init_state_FSM_FFd1_376 : STD_LOGIC; 
  signal init_state_FSM_FFd1_In : STD_LOGIC; 
  signal init_state_FSM_FFd10_378 : STD_LOGIC; 
  signal init_state_FSM_FFd10_In : STD_LOGIC; 
  signal init_state_FSM_FFd11_380 : STD_LOGIC; 
  signal init_state_FSM_FFd2_381 : STD_LOGIC; 
  signal init_state_FSM_FFd2_In : STD_LOGIC; 
  signal init_state_FSM_FFd3_383 : STD_LOGIC; 
  signal init_state_FSM_FFd3_In : STD_LOGIC; 
  signal init_state_FSM_FFd4_385 : STD_LOGIC; 
  signal init_state_FSM_FFd4_In : STD_LOGIC; 
  signal init_state_FSM_FFd5_387 : STD_LOGIC; 
  signal init_state_FSM_FFd5_In : STD_LOGIC; 
  signal init_state_FSM_FFd6_389 : STD_LOGIC; 
  signal init_state_FSM_FFd6_In : STD_LOGIC; 
  signal init_state_FSM_FFd7_391 : STD_LOGIC; 
  signal init_state_FSM_FFd7_In : STD_LOGIC; 
  signal init_state_FSM_FFd8_393 : STD_LOGIC; 
  signal init_state_FSM_FFd8_In : STD_LOGIC; 
  signal init_state_FSM_FFd9_395 : STD_LOGIC; 
  signal init_state_FSM_FFd9_In : STD_LOGIC; 
  signal init_state_cmp_eq0000 : STD_LOGIC; 
  signal init_state_cmp_eq000015_398 : STD_LOGIC; 
  signal init_state_cmp_eq00007_399 : STD_LOGIC; 
  signal init_state_cmp_eq0001 : STD_LOGIC; 
  signal init_state_cmp_eq000117_401 : STD_LOGIC; 
  signal init_state_cmp_eq0002_402 : STD_LOGIC; 
  signal init_state_cmp_eq0003_403 : STD_LOGIC; 
  signal init_state_cmp_eq0004_404 : STD_LOGIC; 
  signal reset_IBUF_406 : STD_LOGIC; 
  signal reset_inv : STD_LOGIC; 
  signal tx_init : STD_LOGIC; 
  signal tx_state_FSM_FFd1_409 : STD_LOGIC; 
  signal tx_state_FSM_FFd1_In : STD_LOGIC; 
  signal tx_state_FSM_FFd2_411 : STD_LOGIC; 
  signal tx_state_FSM_FFd2_In : STD_LOGIC; 
  signal tx_state_FSM_FFd3_413 : STD_LOGIC; 
  signal tx_state_FSM_FFd3_In : STD_LOGIC; 
  signal tx_state_FSM_FFd4_415 : STD_LOGIC; 
  signal tx_state_FSM_FFd4_In : STD_LOGIC; 
  signal tx_state_FSM_FFd5_417 : STD_LOGIC; 
  signal tx_state_FSM_FFd5_In : STD_LOGIC; 
  signal tx_state_FSM_FFd6_419 : STD_LOGIC; 
  signal tx_state_FSM_FFd6_In : STD_LOGIC; 
  signal tx_state_FSM_FFd7_421 : STD_LOGIC; 
  signal tx_state_FSM_FFd7_In : STD_LOGIC; 
  signal tx_state_cmp_eq0000 : STD_LOGIC; 
  signal tx_state_cmp_eq0001_424 : STD_LOGIC; 
  signal tx_state_cmp_eq0002 : STD_LOGIC; 
  signal Madd_i2_share0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Madd_i2_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_i3_addsub0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Madd_i3_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_i_share0000_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal Madd_i_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SF_D0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SF_D0_mux0000 : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal SF_D1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal SF_D1_mux0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal cur_state_cmp_eq0001_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cur_state_cmp_eq0001_wg_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal i2 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal i2_mux0002 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal i2_share0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal i3 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal i3_addsub0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal i3_mux0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal i : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal i_mux0001 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal i_share0000 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => LCD_RW_OBUF_9
    );
  XST_VCC : VCC
    port map (
      P => SF_CE0_OBUF_167
    );
  SF_D0_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D0_mux0000(4),
      Q => SF_D0(0)
    );
  SF_D0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D0_mux0000(5),
      Q => SF_D0(1)
    );
  SF_D0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D0_mux0000(6),
      Q => SF_D0(2)
    );
  SF_D0_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D0_mux0000(7),
      Q => SF_D0(3)
    );
  i_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(19),
      Q => i(0)
    );
  i_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(18),
      Q => i(1)
    );
  i_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(17),
      Q => i(2)
    );
  i_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(16),
      Q => i(3)
    );
  i_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(15),
      Q => i(4)
    );
  i_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(14),
      Q => i(5)
    );
  i_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(13),
      Q => i(6)
    );
  i_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(12),
      Q => i(7)
    );
  i_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(11),
      Q => i(8)
    );
  i_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(10),
      Q => i(9)
    );
  i_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(9),
      Q => i(10)
    );
  i_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(8),
      Q => i(11)
    );
  i_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(7),
      Q => i(12)
    );
  i_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(6),
      Q => i(13)
    );
  i_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(5),
      Q => i(14)
    );
  i_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(4),
      Q => i(15)
    );
  i_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(3),
      Q => i(16)
    );
  i_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(2),
      Q => i(17)
    );
  i_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(1),
      Q => i(18)
    );
  i_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i_mux0001(0),
      Q => i(19)
    );
  SF_D1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D1_mux0000(0),
      Q => SF_D1(0)
    );
  SF_D1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => SF_D1_mux0000(1),
      Q => SF_D1(1)
    );
  init_done : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd1_376,
      Q => init_done_375
    );
  LCD_E1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => LCD_E1_mux0000,
      Q => LCD_E1_2
    );
  i2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(10),
      Q => i2(0)
    );
  i2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(9),
      Q => i2(1)
    );
  i2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(8),
      Q => i2(2)
    );
  i2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(7),
      Q => i2(3)
    );
  i2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(6),
      Q => i2(4)
    );
  i2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(5),
      Q => i2(5)
    );
  i2_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(4),
      Q => i2(6)
    );
  i2_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(3),
      Q => i2(7)
    );
  i2_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(2),
      Q => i2(8)
    );
  i2_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(1),
      Q => i2(9)
    );
  i2_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_mux0002(0),
      Q => i2(10)
    );
  i3_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(0),
      Q => i3(0)
    );
  i3_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(1),
      Q => i3(1)
    );
  i3_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(2),
      Q => i3(2)
    );
  i3_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(3),
      Q => i3(3)
    );
  i3_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(4),
      Q => i3(4)
    );
  i3_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(5),
      Q => i3(5)
    );
  i3_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(6),
      Q => i3(6)
    );
  i3_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(7),
      Q => i3(7)
    );
  i3_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(8),
      Q => i3(8)
    );
  i3_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(9),
      Q => i3(9)
    );
  i3_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(10),
      Q => i3(10)
    );
  i3_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(11),
      Q => i3(11)
    );
  i3_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(12),
      Q => i3(12)
    );
  i3_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(13),
      Q => i3(13)
    );
  i3_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(14),
      Q => i3(14)
    );
  i3_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(15),
      Q => i3(15)
    );
  i3_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i3_mux0000(16),
      Q => i3(16)
    );
  LCD_E0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => reset_inv,
      D => i2_or0001,
      Q => LCD_E0_1
    );
  Madd_i3_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => LCD_RW_OBUF_9,
      DI => SF_CE0_OBUF_167,
      S => Madd_i3_addsub0000_lut(0),
      O => Madd_i3_addsub0000_cy(0)
    );
  Madd_i3_addsub0000_xor_0_Q : XORCY
    port map (
      CI => LCD_RW_OBUF_9,
      LI => Madd_i3_addsub0000_lut(0),
      O => i3_addsub0000(0)
    );
  Madd_i3_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(0),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_1_rt_58,
      O => Madd_i3_addsub0000_cy(1)
    );
  Madd_i3_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(0),
      LI => Madd_i3_addsub0000_cy_1_rt_58,
      O => i3_addsub0000(1)
    );
  Madd_i3_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(1),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_2_rt_60,
      O => Madd_i3_addsub0000_cy(2)
    );
  Madd_i3_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(1),
      LI => Madd_i3_addsub0000_cy_2_rt_60,
      O => i3_addsub0000(2)
    );
  Madd_i3_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(2),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_3_rt_62,
      O => Madd_i3_addsub0000_cy(3)
    );
  Madd_i3_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(2),
      LI => Madd_i3_addsub0000_cy_3_rt_62,
      O => i3_addsub0000(3)
    );
  Madd_i3_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(3),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_4_rt_64,
      O => Madd_i3_addsub0000_cy(4)
    );
  Madd_i3_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(3),
      LI => Madd_i3_addsub0000_cy_4_rt_64,
      O => i3_addsub0000(4)
    );
  Madd_i3_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(4),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_5_rt_66,
      O => Madd_i3_addsub0000_cy(5)
    );
  Madd_i3_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(4),
      LI => Madd_i3_addsub0000_cy_5_rt_66,
      O => i3_addsub0000(5)
    );
  Madd_i3_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(5),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_6_rt_68,
      O => Madd_i3_addsub0000_cy(6)
    );
  Madd_i3_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(5),
      LI => Madd_i3_addsub0000_cy_6_rt_68,
      O => i3_addsub0000(6)
    );
  Madd_i3_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(6),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_7_rt_70,
      O => Madd_i3_addsub0000_cy(7)
    );
  Madd_i3_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(6),
      LI => Madd_i3_addsub0000_cy_7_rt_70,
      O => i3_addsub0000(7)
    );
  Madd_i3_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(7),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_8_rt_72,
      O => Madd_i3_addsub0000_cy(8)
    );
  Madd_i3_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(7),
      LI => Madd_i3_addsub0000_cy_8_rt_72,
      O => i3_addsub0000(8)
    );
  Madd_i3_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(8),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_9_rt_74,
      O => Madd_i3_addsub0000_cy(9)
    );
  Madd_i3_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(8),
      LI => Madd_i3_addsub0000_cy_9_rt_74,
      O => i3_addsub0000(9)
    );
  Madd_i3_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(9),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_10_rt_46,
      O => Madd_i3_addsub0000_cy(10)
    );
  Madd_i3_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(9),
      LI => Madd_i3_addsub0000_cy_10_rt_46,
      O => i3_addsub0000(10)
    );
  Madd_i3_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(10),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_11_rt_48,
      O => Madd_i3_addsub0000_cy(11)
    );
  Madd_i3_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(10),
      LI => Madd_i3_addsub0000_cy_11_rt_48,
      O => i3_addsub0000(11)
    );
  Madd_i3_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(11),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_12_rt_50,
      O => Madd_i3_addsub0000_cy(12)
    );
  Madd_i3_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(11),
      LI => Madd_i3_addsub0000_cy_12_rt_50,
      O => i3_addsub0000(12)
    );
  Madd_i3_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(12),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_13_rt_52,
      O => Madd_i3_addsub0000_cy(13)
    );
  Madd_i3_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(12),
      LI => Madd_i3_addsub0000_cy_13_rt_52,
      O => i3_addsub0000(13)
    );
  Madd_i3_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(13),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_14_rt_54,
      O => Madd_i3_addsub0000_cy(14)
    );
  Madd_i3_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(13),
      LI => Madd_i3_addsub0000_cy_14_rt_54,
      O => i3_addsub0000(14)
    );
  Madd_i3_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_i3_addsub0000_cy(14),
      DI => LCD_RW_OBUF_9,
      S => Madd_i3_addsub0000_cy_15_rt_56,
      O => Madd_i3_addsub0000_cy(15)
    );
  Madd_i3_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(14),
      LI => Madd_i3_addsub0000_cy_15_rt_56,
      O => i3_addsub0000(15)
    );
  Madd_i3_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_i3_addsub0000_cy(15),
      LI => Madd_i3_addsub0000_xor_16_rt_76,
      O => i3_addsub0000(16)
    );
  Madd_i_share0000_cy_0_Q : MUXCY
    port map (
      CI => LCD_RW_OBUF_9,
      DI => SF_CE0_OBUF_167,
      S => Madd_i_share0000_lut(0),
      O => Madd_i_share0000_cy(0)
    );
  Madd_i_share0000_xor_0_Q : XORCY
    port map (
      CI => LCD_RW_OBUF_9,
      LI => Madd_i_share0000_lut(0),
      O => i_share0000(0)
    );
  Madd_i_share0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(0),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_1_rt_97,
      O => Madd_i_share0000_cy(1)
    );
  Madd_i_share0000_xor_1_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(0),
      LI => Madd_i_share0000_cy_1_rt_97,
      O => i_share0000(1)
    );
  Madd_i_share0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(1),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_2_rt_99,
      O => Madd_i_share0000_cy(2)
    );
  Madd_i_share0000_xor_2_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(1),
      LI => Madd_i_share0000_cy_2_rt_99,
      O => i_share0000(2)
    );
  Madd_i_share0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(2),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_3_rt_101,
      O => Madd_i_share0000_cy(3)
    );
  Madd_i_share0000_xor_3_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(2),
      LI => Madd_i_share0000_cy_3_rt_101,
      O => i_share0000(3)
    );
  Madd_i_share0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(3),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_4_rt_103,
      O => Madd_i_share0000_cy(4)
    );
  Madd_i_share0000_xor_4_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(3),
      LI => Madd_i_share0000_cy_4_rt_103,
      O => i_share0000(4)
    );
  Madd_i_share0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(4),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_5_rt_105,
      O => Madd_i_share0000_cy(5)
    );
  Madd_i_share0000_xor_5_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(4),
      LI => Madd_i_share0000_cy_5_rt_105,
      O => i_share0000(5)
    );
  Madd_i_share0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(5),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_6_rt_107,
      O => Madd_i_share0000_cy(6)
    );
  Madd_i_share0000_xor_6_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(5),
      LI => Madd_i_share0000_cy_6_rt_107,
      O => i_share0000(6)
    );
  Madd_i_share0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(6),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_7_rt_109,
      O => Madd_i_share0000_cy(7)
    );
  Madd_i_share0000_xor_7_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(6),
      LI => Madd_i_share0000_cy_7_rt_109,
      O => i_share0000(7)
    );
  Madd_i_share0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(7),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_8_rt_111,
      O => Madd_i_share0000_cy(8)
    );
  Madd_i_share0000_xor_8_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(7),
      LI => Madd_i_share0000_cy_8_rt_111,
      O => i_share0000(8)
    );
  Madd_i_share0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(8),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_9_rt_113,
      O => Madd_i_share0000_cy(9)
    );
  Madd_i_share0000_xor_9_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(8),
      LI => Madd_i_share0000_cy_9_rt_113,
      O => i_share0000(9)
    );
  Madd_i_share0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(9),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_10_rt_79,
      O => Madd_i_share0000_cy(10)
    );
  Madd_i_share0000_xor_10_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(9),
      LI => Madd_i_share0000_cy_10_rt_79,
      O => i_share0000(10)
    );
  Madd_i_share0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(10),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_11_rt_81,
      O => Madd_i_share0000_cy(11)
    );
  Madd_i_share0000_xor_11_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(10),
      LI => Madd_i_share0000_cy_11_rt_81,
      O => i_share0000(11)
    );
  Madd_i_share0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(11),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_12_rt_83,
      O => Madd_i_share0000_cy(12)
    );
  Madd_i_share0000_xor_12_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(11),
      LI => Madd_i_share0000_cy_12_rt_83,
      O => i_share0000(12)
    );
  Madd_i_share0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(12),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_13_rt_85,
      O => Madd_i_share0000_cy(13)
    );
  Madd_i_share0000_xor_13_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(12),
      LI => Madd_i_share0000_cy_13_rt_85,
      O => i_share0000(13)
    );
  Madd_i_share0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(13),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_14_rt_87,
      O => Madd_i_share0000_cy(14)
    );
  Madd_i_share0000_xor_14_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(13),
      LI => Madd_i_share0000_cy_14_rt_87,
      O => i_share0000(14)
    );
  Madd_i_share0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(14),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_15_rt_89,
      O => Madd_i_share0000_cy(15)
    );
  Madd_i_share0000_xor_15_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(14),
      LI => Madd_i_share0000_cy_15_rt_89,
      O => i_share0000(15)
    );
  Madd_i_share0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(15),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_16_rt_91,
      O => Madd_i_share0000_cy(16)
    );
  Madd_i_share0000_xor_16_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(15),
      LI => Madd_i_share0000_cy_16_rt_91,
      O => i_share0000(16)
    );
  Madd_i_share0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(16),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_17_rt_93,
      O => Madd_i_share0000_cy(17)
    );
  Madd_i_share0000_xor_17_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(16),
      LI => Madd_i_share0000_cy_17_rt_93,
      O => i_share0000(17)
    );
  Madd_i_share0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_i_share0000_cy(17),
      DI => LCD_RW_OBUF_9,
      S => Madd_i_share0000_cy_18_rt_95,
      O => Madd_i_share0000_cy(18)
    );
  Madd_i_share0000_xor_18_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(17),
      LI => Madd_i_share0000_cy_18_rt_95,
      O => i_share0000(18)
    );
  Madd_i_share0000_xor_19_Q : XORCY
    port map (
      CI => Madd_i_share0000_cy(18),
      LI => Madd_i_share0000_xor_19_rt_115,
      O => i_share0000(19)
    );
  Madd_i2_share0000_cy_0_Q : MUXCY
    port map (
      CI => LCD_RW_OBUF_9,
      DI => SF_CE0_OBUF_167,
      S => Madd_i2_share0000_lut(0),
      O => Madd_i2_share0000_cy(0)
    );
  Madd_i2_share0000_xor_0_Q : XORCY
    port map (
      CI => LCD_RW_OBUF_9,
      LI => Madd_i2_share0000_lut(0),
      O => i2_share0000(0)
    );
  Madd_i2_share0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(0),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_1_rt_25,
      O => Madd_i2_share0000_cy(1)
    );
  Madd_i2_share0000_xor_1_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(0),
      LI => Madd_i2_share0000_cy_1_rt_25,
      O => i2_share0000(1)
    );
  Madd_i2_share0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(1),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_2_rt_27,
      O => Madd_i2_share0000_cy(2)
    );
  Madd_i2_share0000_xor_2_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(1),
      LI => Madd_i2_share0000_cy_2_rt_27,
      O => i2_share0000(2)
    );
  Madd_i2_share0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(2),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_3_rt_29,
      O => Madd_i2_share0000_cy(3)
    );
  Madd_i2_share0000_xor_3_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(2),
      LI => Madd_i2_share0000_cy_3_rt_29,
      O => i2_share0000(3)
    );
  Madd_i2_share0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(3),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_4_rt_31,
      O => Madd_i2_share0000_cy(4)
    );
  Madd_i2_share0000_xor_4_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(3),
      LI => Madd_i2_share0000_cy_4_rt_31,
      O => i2_share0000(4)
    );
  Madd_i2_share0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(4),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_5_rt_33,
      O => Madd_i2_share0000_cy(5)
    );
  Madd_i2_share0000_xor_5_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(4),
      LI => Madd_i2_share0000_cy_5_rt_33,
      O => i2_share0000(5)
    );
  Madd_i2_share0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(5),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_6_rt_35,
      O => Madd_i2_share0000_cy(6)
    );
  Madd_i2_share0000_xor_6_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(5),
      LI => Madd_i2_share0000_cy_6_rt_35,
      O => i2_share0000(6)
    );
  Madd_i2_share0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(6),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_7_rt_37,
      O => Madd_i2_share0000_cy(7)
    );
  Madd_i2_share0000_xor_7_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(6),
      LI => Madd_i2_share0000_cy_7_rt_37,
      O => i2_share0000(7)
    );
  Madd_i2_share0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(7),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_8_rt_39,
      O => Madd_i2_share0000_cy(8)
    );
  Madd_i2_share0000_xor_8_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(7),
      LI => Madd_i2_share0000_cy_8_rt_39,
      O => i2_share0000(8)
    );
  Madd_i2_share0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_i2_share0000_cy(8),
      DI => LCD_RW_OBUF_9,
      S => Madd_i2_share0000_cy_9_rt_41,
      O => Madd_i2_share0000_cy(9)
    );
  Madd_i2_share0000_xor_9_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(8),
      LI => Madd_i2_share0000_cy_9_rt_41,
      O => i2_share0000(9)
    );
  Madd_i2_share0000_xor_10_Q : XORCY
    port map (
      CI => Madd_i2_share0000_cy(9),
      LI => Madd_i2_share0000_xor_10_rt_43,
      O => i2_share0000(10)
    );
  tx_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd1_In,
      Q => tx_state_FSM_FFd1_409
    );
  tx_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd2_In,
      Q => tx_state_FSM_FFd2_411
    );
  tx_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd3_In,
      Q => tx_state_FSM_FFd3_413
    );
  tx_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd4_In,
      Q => tx_state_FSM_FFd4_415
    );
  tx_state_FSM_FFd7 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_189,
      D => tx_state_FSM_FFd7_In,
      PRE => reset_IBUF_406,
      Q => tx_state_FSM_FFd7_421
    );
  tx_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd5_In,
      Q => tx_state_FSM_FFd5_417
    );
  tx_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => tx_state_FSM_FFd6_In,
      Q => tx_state_FSM_FFd6_419
    );
  cur_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd1_In,
      Q => cur_state_FSM_FFd1_190
    );
  cur_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd6_In,
      Q => cur_state_FSM_FFd6_200
    );
  cur_state_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd7_In,
      Q => cur_state_FSM_FFd7_202
    );
  cur_state_FSM_FFd11 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      D => cur_state_FSM_FFd11_In,
      PRE => reset_IBUF_406,
      Q => cur_state_FSM_FFd11_193
    );
  init_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd3_In,
      Q => init_state_FSM_FFd3_383
    );
  init_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd1_In,
      Q => init_state_FSM_FFd1_376
    );
  init_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd2_In,
      Q => init_state_FSM_FFd2_381
    );
  init_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd6_In,
      Q => init_state_FSM_FFd6_389
    );
  init_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd4_In,
      Q => init_state_FSM_FFd4_385
    );
  init_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd5_In,
      Q => init_state_FSM_FFd5_387
    );
  init_state_FSM_FFd9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd9_In,
      Q => init_state_FSM_FFd9_395
    );
  init_state_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd7_In,
      Q => init_state_FSM_FFd7_391
    );
  init_state_FSM_FFd8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd8_In,
      Q => init_state_FSM_FFd8_393
    );
  init_state_FSM_FFd10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CLR => reset_IBUF_406,
      D => init_state_FSM_FFd10_In,
      Q => init_state_FSM_FFd10_378
    );
  cur_state_cmp_eq0001_wg_cy_0_Q : MUXCY
    port map (
      CI => SF_CE0_OBUF_167,
      DI => LCD_RW_OBUF_9,
      S => cur_state_cmp_eq0001_wg_cy_0_rt_213,
      O => cur_state_cmp_eq0001_wg_cy(0)
    );
  cur_state_cmp_eq0001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => i3(5),
      I1 => i3(6),
      I2 => i3(3),
      I3 => i3(7),
      O => cur_state_cmp_eq0001_wg_lut(1)
    );
  cur_state_cmp_eq0001_wg_cy_1_Q : MUXCY
    port map (
      CI => cur_state_cmp_eq0001_wg_cy(0),
      DI => LCD_RW_OBUF_9,
      S => cur_state_cmp_eq0001_wg_lut(1),
      O => cur_state_cmp_eq0001_wg_cy(1)
    );
  cur_state_cmp_eq0001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => i3(8),
      I1 => i3(9),
      I2 => i3(1),
      I3 => i3(10),
      O => cur_state_cmp_eq0001_wg_lut(2)
    );
  cur_state_cmp_eq0001_wg_cy_2_Q : MUXCY
    port map (
      CI => cur_state_cmp_eq0001_wg_cy(1),
      DI => LCD_RW_OBUF_9,
      S => cur_state_cmp_eq0001_wg_lut(2),
      O => cur_state_cmp_eq0001_wg_cy(2)
    );
  cur_state_cmp_eq0001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => i3(11),
      I1 => i3(12),
      I2 => i3(0),
      I3 => i3(13),
      O => cur_state_cmp_eq0001_wg_lut(3)
    );
  cur_state_cmp_eq0001_wg_cy_3_Q : MUXCY
    port map (
      CI => cur_state_cmp_eq0001_wg_cy(2),
      DI => LCD_RW_OBUF_9,
      S => cur_state_cmp_eq0001_wg_lut(3),
      O => cur_state_cmp_eq0001_wg_cy(3)
    );
  cur_state_cmp_eq0001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => i3(14),
      I1 => i3(15),
      I2 => i3(2),
      I3 => i3(16),
      O => cur_state_cmp_eq0001_wg_lut(4)
    );
  cur_state_cmp_eq0001_wg_cy_4_Q : MUXCY
    port map (
      CI => cur_state_cmp_eq0001_wg_cy(3),
      DI => LCD_RW_OBUF_9,
      S => cur_state_cmp_eq0001_wg_lut(4),
      O => cur_state_cmp_eq0001
    );
  SF_D_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => SF_D0(3),
      O => SF_D_3_OBUF_187
    );
  SF_D_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => SF_D0(2),
      O => SF_D_2_OBUF_186
    );
  SF_D_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => SF_D1(1),
      I2 => SF_D0(1),
      O => SF_D_1_OBUF_185
    );
  SF_D_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => SF_D1(0),
      I2 => SF_D0(0),
      O => SF_D_0_OBUF_184
    );
  LCD_E2 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => LCD_E1_2,
      I2 => LCD_E0_1,
      O => LCD_E_OBUF_5
    );
  cur_state_FSM_Out151 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => cur_state_FSM_FFd9_205,
      I1 => cur_state_FSM_FFd11_193,
      O => LED_3_OBUF_21
    );
  cur_state_FSM_Out181 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => cur_state_FSM_FFd8_204,
      I1 => cur_state_FSM_FFd2_196,
      I2 => cur_state_FSM_FFd3_197,
      O => LED_0_OBUF_18
    );
  cur_state_FSM_Out171 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => cur_state_FSM_FFd10_192,
      I1 => cur_state_FSM_FFd3_197,
      I2 => cur_state_FSM_FFd5_199,
      O => LED_1_OBUF_19
    );
  cur_state_FSM_Out121 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => cur_state_FSM_FFd1_190,
      I1 => cur_state_FSM_FFd7_202,
      I2 => cur_state_FSM_FFd12_195,
      O => tx_init
    );
  cur_state_FSM_Out161 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => cur_state_FSM_FFd10_192,
      I1 => cur_state_FSM_FFd3_197,
      I2 => cur_state_FSM_FFd5_199,
      I3 => cur_state_FSM_FFd9_205,
      O => LED_2_OBUF_20
    );
  SF_D0_mux0000_4_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tx_state_FSM_FFd5_417,
      I1 => tx_state_FSM_FFd6_419,
      O => N6
    );
  SF_D1_mux0000_1_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => N3,
      I1 => SF_D1(1),
      I2 => i_or0000,
      O => SF_D1_mux0000(1)
    );
  SF_D0_mux0000_4_11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => tx_state_FSM_FFd7_421,
      I1 => tx_state_FSM_FFd1_409,
      I2 => tx_state_FSM_FFd4_415,
      O => N4
    );
  cur_state_FSM_Out141 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => cur_state_FSM_FFd5_199,
      I1 => cur_state_FSM_FFd2_196,
      I2 => cur_state_FSM_FFd3_197,
      I3 => cur_state_FSM_FFd4_198,
      O => LED_6_OBUF_22
    );
  SF_D1_mux0000_0_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => init_state_FSM_FFd7_391,
      I1 => init_state_FSM_FFd9_395,
      O => N41
    );
  SF_D1_mux0000_0_Q : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => N3,
      I1 => SF_D1(0),
      I2 => init_state_FSM_FFd5_387,
      I3 => N41,
      O => SF_D1_mux0000(0)
    );
  SF_D1_mux0000_1_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => init_state_FSM_FFd10_378,
      I1 => init_state_FSM_FFd11_380,
      I2 => init_state_FSM_FFd1_376,
      I3 => init_state_FSM_FFd6_389,
      O => N61
    );
  SF_D1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => init_state_FSM_FFd2_381,
      I1 => init_state_FSM_FFd4_385,
      I2 => init_state_FSM_FFd8_393,
      I3 => N61,
      O => N3
    );
  SF_D0_mux0000_7_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => cur_state_FSM_FFd6_200,
      I1 => N6,
      I2 => SF_D0(3),
      I3 => N4,
      O => N81
    );
  SF_D0_mux0000_7_Q : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_411,
      I1 => LED_3_OBUF_21,
      I2 => tx_state_FSM_FFd3_413,
      I3 => N81,
      O => SF_D0_mux0000(7)
    );
  SF_D0_mux0000_6_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SF_D0(2),
      I1 => N4,
      I2 => N6,
      I3 => LED_6_OBUF_22,
      O => N101
    );
  SF_D0_mux0000_6_Q : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_411,
      I1 => LED_2_OBUF_20,
      I2 => tx_state_FSM_FFd3_413,
      I3 => N101,
      O => SF_D0_mux0000(6)
    );
  SF_D0_mux0000_5_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => cur_state_FSM_FFd11_193,
      I1 => N6,
      I2 => SF_D0(1),
      I3 => N4,
      O => N12
    );
  SF_D0_mux0000_5_Q : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_411,
      I1 => LED_1_OBUF_19,
      I2 => tx_state_FSM_FFd3_413,
      I3 => N12,
      O => SF_D0_mux0000(5)
    );
  SF_D0_mux0000_4_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => cur_state_FSM_FFd4_198,
      I1 => N6,
      I2 => SF_D0(0),
      I3 => N4,
      O => N141
    );
  SF_D0_mux0000_4_Q : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_411,
      I1 => LED_0_OBUF_18,
      I2 => tx_state_FSM_FFd3_413,
      I3 => N141,
      O => SF_D0_mux0000(4)
    );
  cur_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => cur_state_cmp_eq0000,
      I1 => cur_state_FSM_FFd2_196,
      I2 => cur_state_FSM_FFd1_190,
      O => cur_state_FSM_FFd1_In
    );
  tx_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => tx_init,
      I1 => tx_state_FSM_FFd7_421,
      I2 => cur_state_cmp_eq0000,
      I3 => tx_state_FSM_FFd1_409,
      O => tx_state_FSM_FFd7_In
    );
  tx_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => cur_state_cmp_eq0000,
      I1 => tx_state_FSM_FFd1_409,
      I2 => tx_state_cmp_eq0001_424,
      I3 => tx_state_FSM_FFd2_411,
      O => tx_state_FSM_FFd1_In
    );
  cur_state_FSM_FFd11_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => cur_state_cmp_eq0000,
      I1 => cur_state_FSM_FFd11_193,
      I2 => init_done_375,
      I3 => cur_state_FSM_FFd12_195,
      O => cur_state_FSM_FFd11_In
    );
  init_state_FSM_FFd9_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0001,
      I1 => init_state_FSM_FFd9_395,
      I2 => init_state_cmp_eq0000,
      I3 => init_state_FSM_FFd10_378,
      O => init_state_FSM_FFd9_In
    );
  init_state_FSM_FFd8_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => N59,
      I1 => init_state_FSM_FFd8_393,
      I2 => init_state_cmp_eq0001,
      I3 => init_state_FSM_FFd9_395,
      O => init_state_FSM_FFd8_In
    );
  init_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0001,
      I1 => init_state_FSM_FFd7_391,
      I2 => init_state_cmp_eq0002_402,
      I3 => init_state_FSM_FFd8_393,
      O => init_state_FSM_FFd7_In
    );
  init_state_FSM_FFd10_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0000,
      I1 => init_state_FSM_FFd10_378,
      I2 => cur_state_FSM_FFd12_195,
      I3 => init_state_FSM_FFd11_380,
      O => init_state_FSM_FFd10_In
    );
  cur_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => cur_state_cmp_eq0000,
      I1 => cur_state_FSM_FFd6_200,
      I2 => cur_state_cmp_eq0001,
      I3 => cur_state_FSM_FFd7_202,
      O => cur_state_FSM_FFd6_In
    );
  i2_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tx_state_FSM_FFd6_419,
      I1 => tx_state_FSM_FFd2_411,
      O => i2_or0001
    );
  i_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => init_state_FSM_FFd7_391,
      I1 => init_state_FSM_FFd9_395,
      I2 => init_state_FSM_FFd3_383,
      I3 => init_state_FSM_FFd5_387,
      O => i_or0000
    );
  init_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => init_state_cmp_eq0004_404,
      I1 => init_state_FSM_FFd2_381,
      I2 => init_state_FSM_FFd1_376,
      O => init_state_FSM_FFd1_In
    );
  tx_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => tx_state_cmp_eq0001_424,
      I1 => tx_state_FSM_FFd6_419,
      I2 => tx_state_cmp_eq0000,
      I3 => tx_state_FSM_FFd5_417,
      O => tx_state_FSM_FFd6_In
    );
  tx_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => N56,
      I1 => tx_state_FSM_FFd5_417,
      I2 => tx_init,
      I3 => tx_state_FSM_FFd7_421,
      O => tx_state_FSM_FFd5_In
    );
  tx_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => N55,
      I1 => tx_state_FSM_FFd4_415,
      I2 => tx_state_cmp_eq0001_424,
      I3 => tx_state_FSM_FFd6_419,
      O => tx_state_FSM_FFd4_In
    );
  tx_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => tx_state_cmp_eq0000,
      I1 => tx_state_FSM_FFd3_413,
      I2 => tx_state_cmp_eq0002,
      I3 => tx_state_FSM_FFd4_415,
      O => tx_state_FSM_FFd3_In
    );
  tx_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => tx_state_cmp_eq0001_424,
      I1 => tx_state_FSM_FFd2_411,
      I2 => tx_state_cmp_eq0000,
      I3 => tx_state_FSM_FFd3_413,
      O => tx_state_FSM_FFd2_In
    );
  init_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0003_403,
      I1 => init_state_FSM_FFd6_389,
      I2 => init_state_cmp_eq0001,
      I3 => init_state_FSM_FFd7_391,
      O => init_state_FSM_FFd6_In
    );
  init_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0001,
      I1 => init_state_FSM_FFd5_387,
      I2 => init_state_cmp_eq0003_403,
      I3 => init_state_FSM_FFd6_389,
      O => init_state_FSM_FFd5_In
    );
  init_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0004_404,
      I1 => init_state_FSM_FFd4_385,
      I2 => init_state_cmp_eq0001,
      I3 => init_state_FSM_FFd5_387,
      O => init_state_FSM_FFd4_In
    );
  init_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0001,
      I1 => init_state_FSM_FFd3_383,
      I2 => init_state_cmp_eq0004_404,
      I3 => init_state_FSM_FFd4_385,
      O => init_state_FSM_FFd3_In
    );
  init_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => init_state_cmp_eq0004_404,
      I1 => init_state_FSM_FFd2_381,
      I2 => init_state_cmp_eq0001,
      I3 => init_state_FSM_FFd3_383,
      O => init_state_FSM_FFd2_In
    );
  i3_mux0000_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(9),
      I1 => N1,
      I2 => i3_addsub0000(9),
      I3 => N57,
      O => i3_mux0000(9)
    );
  i3_mux0000_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(8),
      I1 => N68,
      I2 => i3_addsub0000(8),
      I3 => N10,
      O => i3_mux0000(8)
    );
  i3_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(7),
      I1 => N1,
      I2 => i3_addsub0000(7),
      I3 => N10,
      O => i3_mux0000(7)
    );
  i3_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(6),
      I1 => N1,
      I2 => i3_addsub0000(6),
      I3 => N10,
      O => i3_mux0000(6)
    );
  i3_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(5),
      I1 => N1,
      I2 => i3_addsub0000(5),
      I3 => N10,
      O => i3_mux0000(5)
    );
  i3_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(4),
      I1 => N1,
      I2 => i3_addsub0000(4),
      I3 => N10,
      O => i3_mux0000(4)
    );
  i3_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(3),
      I1 => N1,
      I2 => i3_addsub0000(3),
      I3 => N10,
      O => i3_mux0000(3)
    );
  i3_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(2),
      I1 => N1,
      I2 => i3_addsub0000(2),
      I3 => N10,
      O => i3_mux0000(2)
    );
  i3_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(1),
      I1 => N1,
      I2 => i3_addsub0000(1),
      I3 => N10,
      O => i3_mux0000(1)
    );
  i3_mux0000_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(15),
      I1 => N1,
      I2 => i3_addsub0000(15),
      I3 => N10,
      O => i3_mux0000(15)
    );
  i3_mux0000_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(14),
      I1 => N1,
      I2 => i3_addsub0000(14),
      I3 => N10,
      O => i3_mux0000(14)
    );
  i3_mux0000_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(13),
      I1 => N1,
      I2 => i3_addsub0000(13),
      I3 => N10,
      O => i3_mux0000(13)
    );
  i3_mux0000_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(12),
      I1 => N1,
      I2 => i3_addsub0000(12),
      I3 => N10,
      O => i3_mux0000(12)
    );
  i3_mux0000_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(11),
      I1 => N1,
      I2 => i3_addsub0000(11),
      I3 => N10,
      O => i3_mux0000(11)
    );
  i3_mux0000_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(10),
      I1 => N1,
      I2 => i3_addsub0000(10),
      I3 => N10,
      O => i3_mux0000(10)
    );
  i3_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(0),
      I1 => N1,
      I2 => i3_addsub0000(0),
      I3 => N10,
      O => i3_mux0000(0)
    );
  i3_mux0000_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i3(16),
      I1 => N1,
      I2 => i3_addsub0000(16),
      I3 => N10,
      O => i3_mux0000(16)
    );
  tx_state_cmp_eq0001_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => i2(1),
      I1 => i2(2),
      I2 => i2(5),
      O => N161
    );
  cur_state_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => i2(0),
      I1 => i2(3),
      I2 => i2(5),
      I3 => i2(4),
      O => cur_state_cmp_eq000011_208
    );
  cur_state_cmp_eq000024 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => i2(9),
      I1 => i2(2),
      I2 => i2(8),
      O => cur_state_cmp_eq000024_210
    );
  cur_state_cmp_eq000034 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cur_state_cmp_eq000019_209,
      I1 => cur_state_cmp_eq000011_208,
      I2 => cur_state_cmp_eq000024_210,
      O => cur_state_cmp_eq0000
    );
  i2_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(1),
      I1 => N60,
      O => i2_mux0002(9)
    );
  i2_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(2),
      I1 => N2,
      O => i2_mux0002(8)
    );
  i2_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(3),
      I1 => N2,
      O => i2_mux0002(7)
    );
  i2_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(4),
      I1 => N2,
      O => i2_mux0002(6)
    );
  i2_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(5),
      I1 => N2,
      O => i2_mux0002(5)
    );
  i2_mux0002_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(6),
      I1 => N2,
      O => i2_mux0002(4)
    );
  i2_mux0002_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(7),
      I1 => N2,
      O => i2_mux0002(3)
    );
  i2_mux0002_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(8),
      I1 => N2,
      O => i2_mux0002(2)
    );
  i2_mux0002_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(9),
      I1 => N2,
      O => i2_mux0002(1)
    );
  i2_mux0002_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(0),
      I1 => N2,
      O => i2_mux0002(10)
    );
  i2_mux0002_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => i2_share0000(10),
      I1 => N2,
      O => i2_mux0002(0)
    );
  init_state_cmp_eq0000121 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => i(7),
      I1 => i(1),
      I2 => i(0),
      O => N18
    );
  tx_state_cmp_eq00001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => i2(6),
      I1 => i2(10),
      I2 => i2(0),
      O => N181
    );
  init_state_cmp_eq0002_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => i(14),
      I1 => i(6),
      I2 => N58,
      O => N20
    );
  init_state_cmp_eq000117 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => i(7),
      I1 => i(1),
      I2 => i(9),
      I3 => i(6),
      O => init_state_cmp_eq000117_401
    );
  init_state_cmp_eq00007 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => i(14),
      I1 => i(3),
      I2 => i(19),
      I3 => i(12),
      O => init_state_cmp_eq00007_399
    );
  init_state_cmp_eq000015 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => i(4),
      I1 => i(8),
      I2 => i(6),
      I3 => i(5),
      O => init_state_cmp_eq000015_398
    );
  init_state_cmp_eq000026 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => init_state_cmp_eq00007_399,
      I1 => init_state_cmp_eq000015_398,
      I2 => N63,
      O => init_state_cmp_eq0000
    );
  i2_mux0002_0_110 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => i2_or0001,
      I1 => N65,
      I2 => tx_state_FSM_FFd1_409,
      I3 => cur_state_cmp_eq0000,
      O => i2_mux0002_0_110_233
    );
  i2_mux0002_0_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tx_state_FSM_FFd5_417,
      I1 => tx_state_FSM_FFd3_413,
      O => i2_mux0002_0_111_234
    );
  i2_mux0002_0_116 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => i2(4),
      I1 => i2(5),
      I2 => N15,
      O => i2_mux0002_0_116_235
    );
  i2_mux0002_0_146 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => tx_state_FSM_FFd4_415,
      I1 => i2(4),
      I2 => i2(5),
      I3 => N66,
      O => i2_mux0002_0_146_236
    );
  i_mux0001_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(10),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(10),
      I3 => N62,
      O => i_mux0001(9)
    );
  i_mux0001_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(11),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(11),
      I3 => N0,
      O => i_mux0001(8)
    );
  i_mux0001_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(12),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(12),
      I3 => N0,
      O => i_mux0001(7)
    );
  i_mux0001_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(13),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(13),
      I3 => N0,
      O => i_mux0001(6)
    );
  i_mux0001_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(14),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(14),
      I3 => N0,
      O => i_mux0001(5)
    );
  i_mux0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(15),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(15),
      I3 => N0,
      O => i_mux0001(4)
    );
  i_mux0001_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(16),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(16),
      I3 => N0,
      O => i_mux0001(3)
    );
  i_mux0001_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(17),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(17),
      I3 => N0,
      O => i_mux0001(2)
    );
  i_mux0001_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(18),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(18),
      I3 => N0,
      O => i_mux0001(1)
    );
  i_mux0001_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(0),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(0),
      I3 => N0,
      O => i_mux0001(19)
    );
  i_mux0001_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(1),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(1),
      I3 => N0,
      O => i_mux0001(18)
    );
  i_mux0001_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(2),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(2),
      I3 => N0,
      O => i_mux0001(17)
    );
  i_mux0001_16_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(3),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(3),
      I3 => N0,
      O => i_mux0001(16)
    );
  i_mux0001_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(4),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(4),
      I3 => N0,
      O => i_mux0001(15)
    );
  i_mux0001_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(5),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(5),
      I3 => N0,
      O => i_mux0001(14)
    );
  i_mux0001_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(6),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(6),
      I3 => N0,
      O => i_mux0001(13)
    );
  i_mux0001_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(7),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(7),
      I3 => N0,
      O => i_mux0001(12)
    );
  i_mux0001_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(8),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(8),
      I3 => N0,
      O => i_mux0001(11)
    );
  i_mux0001_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(9),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(9),
      I3 => N0,
      O => i_mux0001(10)
    );
  i_mux0001_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => i(19),
      I1 => init_state_FSM_FFd1_376,
      I2 => i_share0000(19),
      I3 => N0,
      O => i_mux0001(0)
    );
  i_mux0001_0_110 : LUT4
    generic map(
      INIT => X"0ACE"
    )
    port map (
      I0 => init_state_FSM_FFd10_378,
      I1 => i_or0000,
      I2 => init_state_cmp_eq0000,
      I3 => N67,
      O => i_mux0001_0_110_331
    );
  i_mux0001_0_136 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => init_state_FSM_FFd4_385,
      I1 => init_state_FSM_FFd2_381,
      O => i_mux0001_0_136_333
    );
  i_mux0001_0_145 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => init_state_FSM_FFd6_389,
      I1 => init_state_cmp_eq0003_403,
      I2 => i_mux0001_0_136_333,
      I3 => N64,
      O => i_mux0001_0_145_334
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_406
    );
  LCD_E_OBUF : OBUF
    port map (
      I => LCD_E_OBUF_5,
      O => LCD_E
    );
  LCD_RS_OBUF : OBUF
    port map (
      I => LCD_RS_OBUF_7,
      O => LCD_RS
    );
  LCD_RW_OBUF : OBUF
    port map (
      I => LCD_RW_OBUF_9,
      O => LCD_RW
    );
  SF_CE0_OBUF : OBUF
    port map (
      I => SF_CE0_OBUF_167,
      O => SF_CE0
    );
  SF_D_3_OBUF : OBUF
    port map (
      I => SF_D_3_OBUF_187,
      O => SF_D(3)
    );
  SF_D_2_OBUF : OBUF
    port map (
      I => SF_D_2_OBUF_186,
      O => SF_D(2)
    );
  SF_D_1_OBUF : OBUF
    port map (
      I => SF_D_1_OBUF_185,
      O => SF_D(1)
    );
  SF_D_0_OBUF : OBUF
    port map (
      I => SF_D_0_OBUF_184,
      O => SF_D(0)
    );
  LED_7_OBUF : OBUF
    port map (
      I => cur_state_FSM_FFd6_200,
      O => LED(7)
    );
  LED_6_OBUF : OBUF
    port map (
      I => LED_6_OBUF_22,
      O => LED(6)
    );
  LED_5_OBUF : OBUF
    port map (
      I => cur_state_FSM_FFd11_193,
      O => LED(5)
    );
  LED_4_OBUF : OBUF
    port map (
      I => cur_state_FSM_FFd4_198,
      O => LED(4)
    );
  LED_3_OBUF : OBUF
    port map (
      I => LED_3_OBUF_21,
      O => LED(3)
    );
  LED_2_OBUF : OBUF
    port map (
      I => LED_2_OBUF_20,
      O => LED(2)
    );
  LED_1_OBUF : OBUF
    port map (
      I => LED_1_OBUF_19,
      O => LED(1)
    );
  LED_0_OBUF : OBUF
    port map (
      I => LED_0_OBUF_18,
      O => LED(0)
    );
  cur_state_FSM_FFd3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd4_198,
      Q => cur_state_FSM_FFd3_197
    );
  cur_state_FSM_FFd2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd3_197,
      Q => cur_state_FSM_FFd2_196
    );
  cur_state_FSM_FFd4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd5_199,
      Q => cur_state_FSM_FFd4_198
    );
  cur_state_FSM_FFd5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd6_200,
      Q => cur_state_FSM_FFd5_199
    );
  cur_state_FSM_FFd9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd10_192,
      Q => cur_state_FSM_FFd9_205
    );
  cur_state_FSM_FFd8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd9_205,
      Q => cur_state_FSM_FFd8_204
    );
  cur_state_FSM_FFd12 : FDCE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_189,
      CE => init_done_375,
      CLR => reset_IBUF_406,
      D => LCD_RW_OBUF_9,
      Q => cur_state_FSM_FFd12_195
    );
  cur_state_FSM_FFd10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_cmp_eq0000,
      CLR => reset_IBUF_406,
      D => cur_state_FSM_FFd11_193,
      Q => cur_state_FSM_FFd10_192
    );
  init_state_FSM_FFd11 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_189,
      CE => cur_state_FSM_FFd12_195,
      D => LCD_RW_OBUF_9,
      PRE => reset_IBUF_406,
      Q => init_state_FSM_FFd11_380
    );
  Madd_i3_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(1),
      O => Madd_i3_addsub0000_cy_1_rt_58
    );
  Madd_i3_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(2),
      O => Madd_i3_addsub0000_cy_2_rt_60
    );
  Madd_i3_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(3),
      O => Madd_i3_addsub0000_cy_3_rt_62
    );
  Madd_i3_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(4),
      O => Madd_i3_addsub0000_cy_4_rt_64
    );
  Madd_i3_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(5),
      O => Madd_i3_addsub0000_cy_5_rt_66
    );
  Madd_i3_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(6),
      O => Madd_i3_addsub0000_cy_6_rt_68
    );
  Madd_i3_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(7),
      O => Madd_i3_addsub0000_cy_7_rt_70
    );
  Madd_i3_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(8),
      O => Madd_i3_addsub0000_cy_8_rt_72
    );
  Madd_i3_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(9),
      O => Madd_i3_addsub0000_cy_9_rt_74
    );
  Madd_i3_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(10),
      O => Madd_i3_addsub0000_cy_10_rt_46
    );
  Madd_i3_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(11),
      O => Madd_i3_addsub0000_cy_11_rt_48
    );
  Madd_i3_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(12),
      O => Madd_i3_addsub0000_cy_12_rt_50
    );
  Madd_i3_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(13),
      O => Madd_i3_addsub0000_cy_13_rt_52
    );
  Madd_i3_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(14),
      O => Madd_i3_addsub0000_cy_14_rt_54
    );
  Madd_i3_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(15),
      O => Madd_i3_addsub0000_cy_15_rt_56
    );
  Madd_i_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(1),
      O => Madd_i_share0000_cy_1_rt_97
    );
  Madd_i_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(2),
      O => Madd_i_share0000_cy_2_rt_99
    );
  Madd_i_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(3),
      O => Madd_i_share0000_cy_3_rt_101
    );
  Madd_i_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(4),
      O => Madd_i_share0000_cy_4_rt_103
    );
  Madd_i_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(5),
      O => Madd_i_share0000_cy_5_rt_105
    );
  Madd_i_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(6),
      O => Madd_i_share0000_cy_6_rt_107
    );
  Madd_i_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(7),
      O => Madd_i_share0000_cy_7_rt_109
    );
  Madd_i_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(8),
      O => Madd_i_share0000_cy_8_rt_111
    );
  Madd_i_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(9),
      O => Madd_i_share0000_cy_9_rt_113
    );
  Madd_i_share0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(10),
      O => Madd_i_share0000_cy_10_rt_79
    );
  Madd_i_share0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(11),
      O => Madd_i_share0000_cy_11_rt_81
    );
  Madd_i_share0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(12),
      O => Madd_i_share0000_cy_12_rt_83
    );
  Madd_i_share0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(13),
      O => Madd_i_share0000_cy_13_rt_85
    );
  Madd_i_share0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(14),
      O => Madd_i_share0000_cy_14_rt_87
    );
  Madd_i_share0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(15),
      O => Madd_i_share0000_cy_15_rt_89
    );
  Madd_i_share0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(16),
      O => Madd_i_share0000_cy_16_rt_91
    );
  Madd_i_share0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(17),
      O => Madd_i_share0000_cy_17_rt_93
    );
  Madd_i_share0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(18),
      O => Madd_i_share0000_cy_18_rt_95
    );
  Madd_i2_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(1),
      O => Madd_i2_share0000_cy_1_rt_25
    );
  Madd_i2_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(2),
      O => Madd_i2_share0000_cy_2_rt_27
    );
  Madd_i2_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(3),
      O => Madd_i2_share0000_cy_3_rt_29
    );
  Madd_i2_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(4),
      O => Madd_i2_share0000_cy_4_rt_31
    );
  Madd_i2_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(5),
      O => Madd_i2_share0000_cy_5_rt_33
    );
  Madd_i2_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(6),
      O => Madd_i2_share0000_cy_6_rt_35
    );
  Madd_i2_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(7),
      O => Madd_i2_share0000_cy_7_rt_37
    );
  Madd_i2_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(8),
      O => Madd_i2_share0000_cy_8_rt_39
    );
  Madd_i2_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(9),
      O => Madd_i2_share0000_cy_9_rt_41
    );
  cur_state_cmp_eq0001_wg_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(4),
      O => cur_state_cmp_eq0001_wg_cy_0_rt_213
    );
  Madd_i3_addsub0000_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i3(16),
      O => Madd_i3_addsub0000_xor_16_rt_76
    );
  Madd_i_share0000_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i(19),
      O => Madd_i_share0000_xor_19_rt_115
    );
  Madd_i2_share0000_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => i2(10),
      O => Madd_i2_share0000_xor_10_rt_43
    );
  init_state_cmp_eq0004_SW0_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => i(10),
      I1 => i(6),
      I2 => i(12),
      O => N30
    );
  init_state_cmp_eq0003_SW0_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => i(10),
      I1 => i(12),
      I2 => i(6),
      O => N32
    );
  init_state_cmp_eq00011_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => i(17),
      I1 => i(13),
      I2 => i(19),
      I3 => i(5),
      O => N34
    );
  init_state_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => i(16),
      I1 => i(14),
      I2 => N611,
      I3 => N34,
      O => N7
    );
  init_state_cmp_eq00001_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => i(17),
      I1 => i(13),
      I2 => i(10),
      I3 => i(9),
      O => N36
    );
  init_state_cmp_eq000311_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => i(9),
      I1 => i(8),
      I2 => i(3),
      I3 => i(4),
      O => N38
    );
  init_state_cmp_eq0003 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => N40,
      I1 => N32,
      I2 => N18,
      I3 => N7,
      O => init_state_cmp_eq0003_403
    );
  tx_state_cmp_eq00001_SW1 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => i2(8),
      I1 => i2(3),
      I2 => i2(7),
      I3 => i2(4),
      O => N42
    );
  tx_state_cmp_eq00001_SW2 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => i2(2),
      I1 => i2(3),
      I2 => i2(1),
      I3 => i2(7),
      O => N44
    );
  i_mux0001_0_121 : LUT4
    generic map(
      INIT => X"ACAA"
    )
    port map (
      I0 => N46,
      I1 => N47,
      I2 => N20,
      I3 => N8,
      O => i_mux0001_0_121_332
    );
  init_state_cmp_eq00015_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => i(0),
      I1 => i(10),
      O => N49
    );
  init_state_cmp_eq0002_SW2 : MUXF5
    port map (
      I0 => N51,
      I1 => N52,
      S => init_state_FSM_FFd11_380,
      O => N47
    );
  init_state_cmp_eq0002_SW2_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => init_state_FSM_FFd8_393,
      I1 => i(5),
      I2 => i(19),
      O => N51
    );
  init_state_cmp_eq0002_SW2_G : LUT4
    generic map(
      INIT => X"DDD5"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => init_state_FSM_FFd8_393,
      I2 => i(5),
      I3 => i(19),
      O => N52
    );
  i3_mux0000_0_117_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => cur_state_FSM_FFd12_195,
      I1 => cur_state_FSM_FFd2_196,
      I2 => cur_state_FSM_FFd4_198,
      I3 => cur_state_FSM_FFd6_200,
      O => N53
    );
  cur_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => cur_state_cmp_eq0001,
      I1 => cur_state_FSM_FFd7_202,
      I2 => cur_state_FSM_FFd8_204,
      I3 => cur_state_cmp_eq0000,
      O => cur_state_FSM_FFd7_In
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_189
    );
  Madd_i3_addsub0000_lut_0_INV_0 : INV
    port map (
      I => i3(0),
      O => Madd_i3_addsub0000_lut(0)
    );
  Madd_i_share0000_lut_0_INV_0 : INV
    port map (
      I => i(0),
      O => Madd_i_share0000_lut(0)
    );
  Madd_i2_share0000_lut_0_INV_0 : INV
    port map (
      I => i2(0),
      O => Madd_i2_share0000_lut(0)
    );
  reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_406,
      O => reset_inv
    );
  cur_state_FSM_Out131 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => cur_state_FSM_FFd10_192,
      I1 => cur_state_FSM_FFd6_200,
      I2 => cur_state_FSM_FFd11_193,
      I3 => cur_state_FSM_FFd8_204,
      O => cur_state_FSM_Out13
    );
  cur_state_FSM_Out13_f5 : MUXF5
    port map (
      I0 => cur_state_FSM_Out13,
      I1 => LCD_RW_OBUF_9,
      S => cur_state_FSM_FFd9_205,
      O => LCD_RS_OBUF_7
    );
  LCD_E1_mux00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => init_state_FSM_FFd10_378,
      I1 => init_state_FSM_FFd11_380,
      I2 => init_state_FSM_FFd1_376,
      I3 => i_or0000,
      O => LCD_E1_mux00001_4
    );
  LCD_E1_mux0000_f5 : MUXF5
    port map (
      I0 => i_or0000,
      I1 => LCD_E1_mux00001_4,
      S => LCD_E1_2,
      O => LCD_E1_mux0000
    );
  tx_state_cmp_eq00021 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N15,
      I1 => i2(5),
      I2 => i2(4),
      LO => N55,
      O => tx_state_cmp_eq0002
    );
  tx_state_cmp_eq00003 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N15,
      I1 => i2(5),
      I2 => i2(4),
      LO => N56,
      O => tx_state_cmp_eq0000
    );
  i3_mux0000_0_21 : LUT2_D
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cur_state_cmp_eq0001,
      I1 => cur_state_FSM_FFd7_202,
      LO => N57,
      O => N10
    );
  cur_state_cmp_eq000019 : LUT4_L
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => i2(6),
      I1 => i2(10),
      I2 => i2(1),
      I3 => i2(7),
      LO => cur_state_cmp_eq000019_209
    );
  init_state_cmp_eq000121 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => i(12),
      I1 => i(3),
      I2 => i(8),
      I3 => i(4),
      LO => N58,
      O => N14
    );
  init_state_cmp_eq0002 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => i(5),
      I1 => N8,
      I2 => i(19),
      I3 => N20,
      LO => N59,
      O => init_state_cmp_eq0002_402
    );
  i2_mux0002_0_149 : LUT4_D
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => i2_mux0002_0_111_234,
      I1 => i2_mux0002_0_146_236,
      I2 => i2_mux0002_0_116_235,
      I3 => i2_mux0002_0_110_233,
      LO => N60,
      O => N2
    );
  init_state_cmp_eq0000112 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => i(18),
      I1 => i(15),
      I2 => i(11),
      I3 => i(2),
      LO => N611,
      O => N16
    );
  i_mux0001_0_147 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => i_mux0001_0_121_332,
      I1 => i_mux0001_0_145_334,
      I2 => i_mux0001_0_110_331,
      LO => N62,
      O => N0
    );
  init_state_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => i(16),
      I1 => N16,
      I2 => N36,
      I3 => N18,
      LO => N63,
      O => N8
    );
  init_state_cmp_eq0004 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => N38,
      I1 => N30,
      I2 => N18,
      I3 => N7,
      LO => N64,
      O => init_state_cmp_eq0004_404
    );
  init_state_cmp_eq000311_SW1 : LUT4_L
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => i(9),
      I1 => i(8),
      I2 => i(4),
      I3 => i(3),
      LO => N40
    );
  tx_state_cmp_eq0001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => i2(9),
      I1 => N181,
      I2 => N42,
      I3 => N161,
      LO => N65,
      O => tx_state_cmp_eq0001_424
    );
  tx_state_cmp_eq000021 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => i2(8),
      I1 => i2(9),
      I2 => N181,
      I3 => N44,
      LO => N66,
      O => N15
    );
  init_state_cmp_eq0002_SW1 : LUT3_L
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => init_state_FSM_FFd8_393,
      I1 => init_state_FSM_FFd11_380,
      I2 => cur_state_FSM_FFd12_195,
      LO => N46
    );
  init_state_cmp_eq000128 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N14,
      I1 => N49,
      I2 => init_state_cmp_eq000117_401,
      I3 => N7,
      LO => N67,
      O => init_state_cmp_eq0001
    );
  i3_mux0000_0_117 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => LED_2_OBUF_20,
      I1 => cur_state_FSM_FFd1_190,
      I2 => cur_state_FSM_FFd11_193,
      I3 => N53,
      LO => N68,
      O => N1
    );

end Structure;

