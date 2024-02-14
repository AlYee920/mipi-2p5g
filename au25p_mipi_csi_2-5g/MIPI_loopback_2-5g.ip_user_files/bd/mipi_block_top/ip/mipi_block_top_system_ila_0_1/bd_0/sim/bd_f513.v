//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f513.bd
//Design : bd_f513
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f513,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f513,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "mipi_block_top_system_ila_0_1.hwdef" *) 
module bd_f513
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN mipi_block_top_clk_wiz_0_0_dphy, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [15:0]probe0;
  input [0:0]probe1;
  input [41:0]probe2;
  input [0:0]probe3;
  input [7:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [0:0]probe7;

  wire clk_1;
  wire [15:0]probe0_1;
  wire [0:0]probe1_1;
  wire [41:0]probe2_1;
  wire [0:0]probe3_1;
  wire [7:0]probe4_1;
  wire [15:0]probe5_1;
  wire [15:0]probe6_1;
  wire [0:0]probe7_1;

  assign clk_1 = clk;
  assign probe0_1 = probe0[15:0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[41:0];
  assign probe3_1 = probe3[0];
  assign probe4_1 = probe4[7:0];
  assign probe5_1 = probe5[15:0];
  assign probe6_1 = probe6[15:0];
  assign probe7_1 = probe7[0];
  bd_f513_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(probe5_1),
        .probe6(probe6_1),
        .probe7(probe7_1));
endmodule
