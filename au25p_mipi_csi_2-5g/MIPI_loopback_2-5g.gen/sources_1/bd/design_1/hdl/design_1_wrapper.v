//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Wed Nov 22 16:27:22 2023
//Host        : ETSB-153 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (fixed_fabric_100mhz_clk_n,
    fixed_fabric_100mhz_clk_p,
    probe0_0,
    probe1_0,
    probe2_0,
    probe3_0);
  input fixed_fabric_100mhz_clk_n;
  input fixed_fabric_100mhz_clk_p;
  input [0:0]probe0_0;
  input [0:0]probe1_0;
  input [0:0]probe2_0;
  input [0:0]probe3_0;

  wire fixed_fabric_100mhz_clk_n;
  wire fixed_fabric_100mhz_clk_p;
  wire [0:0]probe0_0;
  wire [0:0]probe1_0;
  wire [0:0]probe2_0;
  wire [0:0]probe3_0;

  design_1 design_1_i
       (.fixed_fabric_100mhz_clk_n(fixed_fabric_100mhz_clk_n),
        .fixed_fabric_100mhz_clk_p(fixed_fabric_100mhz_clk_p),
        .probe0_0(probe0_0),
        .probe1_0(probe1_0),
        .probe2_0(probe2_0),
        .probe3_0(probe3_0));
endmodule
