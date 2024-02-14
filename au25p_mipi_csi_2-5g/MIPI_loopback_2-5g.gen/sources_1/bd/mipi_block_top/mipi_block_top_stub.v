// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2_AR000035847 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Feb  6 11:09:25 2024
// Host        : ETSB-153 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Al-YeeTan/Desktop/CSI 2.5G
//               MIPI/au25p_mipi_csi_2-5g/MIPI_loopback_2-5g.gen/sources_1/bd/mipi_block_top/mipi_block_top_stub.v}
// Design      : mipi_block_top
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mipi_block_top(bg0_pin6_nc_0, bg2_pin6_nc_0, clk_out_0, 
  fixed_fabric_100mhz_clk_n, fixed_fabric_100mhz_clk_p, mipi_phy_if_clk_n, 
  mipi_phy_if_clk_p, mipi_phy_if_data_n, mipi_phy_if_data_p)
/* synthesis syn_black_box black_box_pad_pin="bg0_pin6_nc_0,bg2_pin6_nc_0,clk_out_0,fixed_fabric_100mhz_clk_n,fixed_fabric_100mhz_clk_p,mipi_phy_if_clk_n,mipi_phy_if_clk_p,mipi_phy_if_data_n[3:0],mipi_phy_if_data_p[3:0]" */;
  input bg0_pin6_nc_0;
  input bg2_pin6_nc_0;
  output clk_out_0;
  input fixed_fabric_100mhz_clk_n;
  input fixed_fabric_100mhz_clk_p;
  input mipi_phy_if_clk_n;
  input mipi_phy_if_clk_p;
  input [3:0]mipi_phy_if_data_n;
  input [3:0]mipi_phy_if_data_p;
endmodule
