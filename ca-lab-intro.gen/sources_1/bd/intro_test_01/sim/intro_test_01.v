//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Oct 19 14:58:21 2026
//Host        : DESKTOP-GMQQFUO running 64-bit major release  (build 9200)
//Command     : generate_target intro_test_01.bd
//Design      : intro_test_01
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "intro_test_01,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=intro_test_01,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "intro_test_01.hwdef" *) 
module intro_test_01
   (clk,
    key1,
    key2,
    led1,
    led2);
  input clk;
  input [0:0]key1;
  input [0:0]key2;
  output led1;
  output led2;

  wire CLK_I_0_1;
  wire [0:0]SIGNAL_I_0_1;
  wire [0:0]SIGNAL_I_1_1;
  wire [0:0]debouncer_0_SIGNAL_O;
  wire [0:0]debouncer_1_SIGNAL_O;
  wire toggle_0_led1;
  wire toggle_0_led2;

  assign CLK_I_0_1 = clk;
  assign SIGNAL_I_0_1 = key1[0];
  assign SIGNAL_I_1_1 = key2[0];
  assign led1 = toggle_0_led1;
  assign led2 = toggle_0_led2;
  intro_test_01_debouncer_0_0 debouncer_0
       (.CLK_I(CLK_I_0_1),
        .SIGNAL_I(SIGNAL_I_0_1),
        .SIGNAL_O(debouncer_0_SIGNAL_O));
  intro_test_01_debouncer_0_1 debouncer_1
       (.CLK_I(CLK_I_0_1),
        .SIGNAL_I(SIGNAL_I_1_1),
        .SIGNAL_O(debouncer_1_SIGNAL_O));
  intro_test_01_toggle_0_0 toggle_0
       (.key1(debouncer_0_SIGNAL_O),
        .key2(debouncer_1_SIGNAL_O),
        .led1(toggle_0_led1),
        .led2(toggle_0_led2));
endmodule
