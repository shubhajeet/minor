--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: vga_test_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 23 18:51:29 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter /media/sujit/Windows/Users/sujit/Projects/minor/vga/iseconfig/filter.filter -intstyle ise -ar Structure -tm vga_test -w -dir netgen/synthesis -ofmt vhdl -sim vga_test.ngc vga_test_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: vga_test.ngc
-- Output file	: /media/sujit/Windows/Users/sujit/Projects/minor/vga/netgen/synthesis/vga_test_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: vga_test
-- Xilinx	: /opt/Xilinx/13.4/ISE_DS/ISE/
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

entity vga_test is
  port (
    clk : in STD_LOGIC := 'X'; 
    vsync : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    hsync : out STD_LOGIC; 
    rgb : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end vga_test;

architecture Structure of vga_test is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal clk_BUFGP_6 : STD_LOGIC; 
  signal reset_IBUF_9 : STD_LOGIC; 
  signal rgb_0_OBUF_13 : STD_LOGIC; 
  signal rgb_1_OBUF_14 : STD_LOGIC; 
  signal rgb_2_OBUF_15 : STD_LOGIC; 
  signal sw_0_IBUF_22 : STD_LOGIC; 
  signal sw_1_IBUF_23 : STD_LOGIC; 
  signal sw_2_IBUF_24 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_rt_27 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_rt_29 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_rt_31 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_rt_33 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_rt_35 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_rt_37 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_rt_39 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_rt_41 : STD_LOGIC; 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_xor_9_rt_43 : STD_LOGIC; 
  signal vga_sync_unit_h_end_cmp_eq000018_84 : STD_LOGIC; 
  signal vga_sync_unit_h_end_cmp_eq00004_85 : STD_LOGIC; 
  signal vga_sync_unit_h_sync_next : STD_LOGIC; 
  signal vga_sync_unit_h_sync_reg_87 : STD_LOGIC; 
  signal vga_sync_unit_mod2_next : STD_LOGIC; 
  signal vga_sync_unit_mod2_reg_89 : STD_LOGIC; 
  signal vga_sync_unit_v_sync_next : STD_LOGIC; 
  signal vga_sync_unit_v_sync_next_and000021_109 : STD_LOGIC; 
  signal vga_sync_unit_v_sync_reg_110 : STD_LOGIC; 
  signal vga_sync_unit_video_on_and000012_111 : STD_LOGIC; 
  signal vga_sync_unit_video_on_and000028_112 : STD_LOGIC; 
  signal rgb_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_sync_unit_Madd_h_count_next_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_sync_unit_h_count_next : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sync_unit_h_count_next_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sync_unit_h_count_next_mux0001 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sync_unit_h_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_sync_unit_v_count_next : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal vga_sync_unit_v_count_reg : STD_LOGIC_VECTOR ( 9 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  rgb_reg_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => sw_0_IBUF_22,
      Q => rgb_reg(0)
    );
  rgb_reg_1 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => sw_1_IBUF_23,
      Q => rgb_reg(1)
    );
  rgb_reg_2 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => sw_2_IBUF_24,
      Q => rgb_reg(2)
    );
  vga_sync_unit_v_count_next_9 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(9),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(9)
    );
  vga_sync_unit_v_count_next_8 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(8),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(8)
    );
  vga_sync_unit_v_count_next_7 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(7),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(7)
    );
  vga_sync_unit_v_count_next_6 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(6),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(6)
    );
  vga_sync_unit_v_count_next_5 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(5),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(5)
    );
  vga_sync_unit_v_count_next_4 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(4),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(4)
    );
  vga_sync_unit_v_count_next_3 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(3),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(3)
    );
  vga_sync_unit_v_count_next_2 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(2),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(2)
    );
  vga_sync_unit_v_count_next_1 : LD_1
    port map (
      D => vga_sync_unit_v_count_reg(1),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_v_count_next(1)
    );
  vga_sync_unit_h_count_next_9 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(0),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(9)
    );
  vga_sync_unit_h_count_next_8 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(1),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(8)
    );
  vga_sync_unit_h_count_next_7 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(2),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(7)
    );
  vga_sync_unit_h_count_next_6 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(3),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(6)
    );
  vga_sync_unit_h_count_next_5 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(4),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(5)
    );
  vga_sync_unit_h_count_next_4 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(5),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(4)
    );
  vga_sync_unit_h_count_next_3 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(6),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(3)
    );
  vga_sync_unit_h_count_next_2 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(7),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(2)
    );
  vga_sync_unit_h_count_next_1 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(8),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(1)
    );
  vga_sync_unit_h_count_next_0 : LD
    port map (
      D => vga_sync_unit_h_count_next_mux0001(9),
      G => vga_sync_unit_mod2_reg_89,
      Q => vga_sync_unit_h_count_next(0)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_9_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(8),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_xor_9_rt_43,
      O => vga_sync_unit_h_count_next_addsub0000(9)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_8_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(7),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_rt_41,
      O => vga_sync_unit_h_count_next_addsub0000(8)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(7),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_rt_41,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(8)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_7_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(6),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_rt_39,
      O => vga_sync_unit_h_count_next_addsub0000(7)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(6),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_rt_39,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(7)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_6_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(5),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_rt_37,
      O => vga_sync_unit_h_count_next_addsub0000(6)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(5),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_rt_37,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(6)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_5_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(4),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_rt_35,
      O => vga_sync_unit_h_count_next_addsub0000(5)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(4),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_rt_35,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(5)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_4_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(3),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_rt_33,
      O => vga_sync_unit_h_count_next_addsub0000(4)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(3),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_rt_33,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(4)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_3_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(2),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_rt_31,
      O => vga_sync_unit_h_count_next_addsub0000(3)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(2),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_rt_31,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(3)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_2_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(1),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_rt_29,
      O => vga_sync_unit_h_count_next_addsub0000(2)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(1),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_rt_29,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(2)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_1_Q : XORCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(0),
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_rt_27,
      O => vga_sync_unit_h_count_next_addsub0000(1)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => vga_sync_unit_Madd_h_count_next_addsub0000_cy(0),
      DI => N0,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_rt_27,
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(1)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_sync_unit_Madd_h_count_next_addsub0000_lut(0),
      O => vga_sync_unit_h_count_next_addsub0000(0)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => vga_sync_unit_Madd_h_count_next_addsub0000_lut(0),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy(0)
    );
  vga_sync_unit_h_count_reg_9 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(9),
      Q => vga_sync_unit_h_count_reg(9)
    );
  vga_sync_unit_h_count_reg_8 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(8),
      Q => vga_sync_unit_h_count_reg(8)
    );
  vga_sync_unit_h_count_reg_7 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(7),
      Q => vga_sync_unit_h_count_reg(7)
    );
  vga_sync_unit_h_count_reg_6 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(6),
      Q => vga_sync_unit_h_count_reg(6)
    );
  vga_sync_unit_h_count_reg_5 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(5),
      Q => vga_sync_unit_h_count_reg(5)
    );
  vga_sync_unit_h_count_reg_4 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(4),
      Q => vga_sync_unit_h_count_reg(4)
    );
  vga_sync_unit_h_count_reg_3 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(3),
      Q => vga_sync_unit_h_count_reg(3)
    );
  vga_sync_unit_h_count_reg_2 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(2),
      Q => vga_sync_unit_h_count_reg(2)
    );
  vga_sync_unit_h_count_reg_1 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(1),
      Q => vga_sync_unit_h_count_reg(1)
    );
  vga_sync_unit_h_count_reg_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_count_next(0),
      Q => vga_sync_unit_h_count_reg(0)
    );
  vga_sync_unit_v_count_reg_9 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(9),
      Q => vga_sync_unit_v_count_reg(9)
    );
  vga_sync_unit_v_count_reg_8 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(8),
      Q => vga_sync_unit_v_count_reg(8)
    );
  vga_sync_unit_v_count_reg_7 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(7),
      Q => vga_sync_unit_v_count_reg(7)
    );
  vga_sync_unit_v_count_reg_6 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(6),
      Q => vga_sync_unit_v_count_reg(6)
    );
  vga_sync_unit_v_count_reg_5 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(5),
      Q => vga_sync_unit_v_count_reg(5)
    );
  vga_sync_unit_v_count_reg_4 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(4),
      Q => vga_sync_unit_v_count_reg(4)
    );
  vga_sync_unit_v_count_reg_3 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(3),
      Q => vga_sync_unit_v_count_reg(3)
    );
  vga_sync_unit_v_count_reg_2 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(2),
      Q => vga_sync_unit_v_count_reg(2)
    );
  vga_sync_unit_v_count_reg_1 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_count_next(1),
      Q => vga_sync_unit_v_count_reg(1)
    );
  vga_sync_unit_h_sync_reg : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_h_sync_next,
      Q => vga_sync_unit_h_sync_reg_87
    );
  vga_sync_unit_v_sync_reg : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_v_sync_next,
      Q => vga_sync_unit_v_sync_reg_110
    );
  vga_sync_unit_mod2_reg : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => reset_IBUF_9,
      D => vga_sync_unit_mod2_next,
      Q => vga_sync_unit_mod2_reg_89
    );
  vga_sync_unit_h_end_cmp_eq00004 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(0),
      I1 => vga_sync_unit_h_count_reg(1),
      I2 => vga_sync_unit_h_count_reg(2),
      I3 => vga_sync_unit_h_count_reg(3),
      O => vga_sync_unit_h_end_cmp_eq00004_85
    );
  vga_sync_unit_h_sync_next_and0000 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(8),
      I1 => vga_sync_unit_h_count_reg(7),
      I2 => vga_sync_unit_h_count_reg(9),
      I3 => N01,
      O => vga_sync_unit_h_sync_next
    );
  vga_sync_unit_v_sync_next_and000021 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => vga_sync_unit_v_count_reg(4),
      I1 => vga_sync_unit_v_count_reg(1),
      I2 => vga_sync_unit_v_count_reg(3),
      I3 => vga_sync_unit_v_count_reg(2),
      O => vga_sync_unit_v_sync_next_and000021_109
    );
  vga_sync_unit_video_on_and000012 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => vga_sync_unit_v_count_reg(5),
      I1 => vga_sync_unit_v_count_reg(6),
      I2 => vga_sync_unit_v_count_reg(7),
      I3 => vga_sync_unit_v_count_reg(8),
      O => vga_sync_unit_video_on_and000012_111
    );
  vga_sync_unit_video_on_and000028 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(9),
      I1 => vga_sync_unit_v_count_reg(9),
      I2 => vga_sync_unit_h_count_reg(7),
      I3 => vga_sync_unit_h_count_reg(8),
      O => vga_sync_unit_video_on_and000028_112
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_9
    );
  sw_2_IBUF : IBUF
    port map (
      I => sw(2),
      O => sw_2_IBUF_24
    );
  sw_1_IBUF : IBUF
    port map (
      I => sw(1),
      O => sw_1_IBUF_23
    );
  sw_0_IBUF : IBUF
    port map (
      I => sw(0),
      O => sw_0_IBUF_22
    );
  vsync_OBUF : OBUF
    port map (
      I => vga_sync_unit_v_sync_reg_110,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => vga_sync_unit_h_sync_reg_87,
      O => hsync
    );
  rgb_2_OBUF : OBUF
    port map (
      I => rgb_2_OBUF_15,
      O => rgb(2)
    );
  rgb_1_OBUF : OBUF
    port map (
      I => rgb_1_OBUF_14,
      O => rgb(1)
    );
  rgb_0_OBUF : OBUF
    port map (
      I => rgb_0_OBUF_13,
      O => rgb(0)
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(8),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_8_rt_41
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(7),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_7_rt_39
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(6),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_6_rt_37
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(5),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_5_rt_35
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(4),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_4_rt_33
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(3),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_3_rt_31
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(2),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_2_rt_29
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(1),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_cy_1_rt_27
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(9),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_xor_9_rt_43
    );
  vga_sync_unit_v_sync_next_and000024 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => vga_sync_unit_v_count_reg(7),
      I1 => vga_sync_unit_v_count_reg(9),
      I2 => vga_sync_unit_v_sync_next_and000021_109,
      I3 => N2,
      O => vga_sync_unit_v_sync_next
    );
  vga_sync_unit_h_end_cmp_eq000018_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(8),
      I1 => vga_sync_unit_h_count_reg(7),
      I2 => vga_sync_unit_h_count_reg(9),
      O => N4
    );
  vga_sync_unit_h_end_cmp_eq000018 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(4),
      I1 => vga_sync_unit_h_count_reg(5),
      I2 => vga_sync_unit_h_count_reg(6),
      I3 => N4,
      O => vga_sync_unit_h_end_cmp_eq000018_84
    );
  vga_sync_unit_h_count_next_mux0001_9_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(0),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(9)
    );
  vga_sync_unit_h_count_next_mux0001_8_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(1),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(8)
    );
  vga_sync_unit_h_count_next_mux0001_7_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(2),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(7)
    );
  vga_sync_unit_h_count_next_mux0001_6_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(3),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(6)
    );
  vga_sync_unit_h_count_next_mux0001_5_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(4),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(5)
    );
  vga_sync_unit_h_count_next_mux0001_4_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(5),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(4)
    );
  vga_sync_unit_h_count_next_mux0001_3_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(6),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(3)
    );
  vga_sync_unit_h_count_next_mux0001_2_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(7),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(2)
    );
  vga_sync_unit_h_count_next_mux0001_1_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(8),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(1)
    );
  vga_sync_unit_h_count_next_mux0001_0_1 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => vga_sync_unit_h_end_cmp_eq00004_85,
      I1 => vga_sync_unit_h_count_next_addsub0000(9),
      I2 => vga_sync_unit_h_end_cmp_eq000018_84,
      O => vga_sync_unit_h_count_next_mux0001(0)
    );
  rgb_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sync_unit_video_on_and000012_111,
      I1 => vga_sync_unit_video_on_and000028_112,
      I2 => rgb_reg(2),
      O => rgb_2_OBUF_15
    );
  rgb_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sync_unit_video_on_and000012_111,
      I1 => vga_sync_unit_video_on_and000028_112,
      I2 => rgb_reg(1),
      O => rgb_1_OBUF_14
    );
  rgb_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sync_unit_video_on_and000012_111,
      I1 => vga_sync_unit_video_on_and000028_112,
      I2 => rgb_reg(0),
      O => rgb_0_OBUF_13
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_6
    );
  vga_sync_unit_Madd_h_count_next_addsub0000_lut_0_INV_0 : INV
    port map (
      I => vga_sync_unit_h_count_reg(0),
      O => vga_sync_unit_Madd_h_count_next_addsub0000_lut(0)
    );
  vga_sync_unit_mod2_next1_INV_0 : INV
    port map (
      I => vga_sync_unit_mod2_reg_89,
      O => vga_sync_unit_mod2_next
    );
  vga_sync_unit_h_sync_next_and0000_SW0 : LUT3_L
    generic map(
      INIT => X"81"
    )
    port map (
      I0 => vga_sync_unit_h_count_reg(6),
      I1 => vga_sync_unit_h_count_reg(5),
      I2 => vga_sync_unit_h_count_reg(4),
      LO => N01
    );
  vga_sync_unit_v_sync_next_and000024_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vga_sync_unit_v_count_reg(6),
      I1 => vga_sync_unit_v_count_reg(5),
      I2 => vga_sync_unit_v_count_reg(8),
      LO => N2
    );

end Structure;

