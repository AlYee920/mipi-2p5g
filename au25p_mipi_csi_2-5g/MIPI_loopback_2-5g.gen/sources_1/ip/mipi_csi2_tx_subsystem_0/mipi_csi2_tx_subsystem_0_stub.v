// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 13:04:32 2023
// Host        : ETSB-153 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/mipi_csi2_tx_subsystem_0_stub.v
// Design      : mipi_csi2_tx_subsystem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_6598_0,Vivado 2023.1" *)
module mipi_csi2_tx_subsystem_0(s_axis_aclk, s_axis_aresetn, dphy_clk_200M, 
  txbyteclkhs, clkoutphy_out, pll_lock_out, txclkesc_out, system_rst_out, mmcm_lock_out, 
  interrupt, s_axi_araddr, s_axi_arready, s_axi_arvalid, s_axi_awaddr, s_axi_awready, 
  s_axi_awvalid, s_axi_bready, s_axi_bresp, s_axi_bvalid, s_axi_rdata, s_axi_rready, 
  s_axi_rresp, s_axi_rvalid, s_axi_wdata, s_axi_wready, s_axi_wstrb, s_axi_wvalid, 
  mipi_video_if_mipi_vid_di, mipi_video_if_mipi_vid_enable, 
  mipi_video_if_mipi_vid_framenum, mipi_video_if_mipi_vid_hsync, 
  mipi_video_if_mipi_vid_linenum, mipi_video_if_mipi_vid_pixel, 
  mipi_video_if_mipi_vid_vc, mipi_video_if_mipi_vid_vsync, mipi_video_if_mipi_vid_wc, 
  mipi_phy_if_clk_n, mipi_phy_if_clk_p, mipi_phy_if_data_n, mipi_phy_if_data_p)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aclk,s_axis_aresetn,dphy_clk_200M,txbyteclkhs,clkoutphy_out,pll_lock_out,txclkesc_out,system_rst_out,mmcm_lock_out,interrupt,s_axi_araddr[7:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[7:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,mipi_video_if_mipi_vid_di[5:0],mipi_video_if_mipi_vid_enable,mipi_video_if_mipi_vid_framenum[15:0],mipi_video_if_mipi_vid_hsync,mipi_video_if_mipi_vid_linenum[15:0],mipi_video_if_mipi_vid_pixel[41:0],mipi_video_if_mipi_vid_vc[1:0],mipi_video_if_mipi_vid_vsync,mipi_video_if_mipi_vid_wc[15:0],mipi_phy_if_clk_n,mipi_phy_if_clk_p,mipi_phy_if_data_n[0:0],mipi_phy_if_data_p[0:0]" */;
  input s_axis_aclk;
  input s_axis_aresetn;
  input dphy_clk_200M;
  output txbyteclkhs;
  output clkoutphy_out;
  output pll_lock_out;
  output txclkesc_out;
  output system_rst_out;
  output mmcm_lock_out;
  output interrupt;
  input [7:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [7:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input [5:0]mipi_video_if_mipi_vid_di;
  input mipi_video_if_mipi_vid_enable;
  input [15:0]mipi_video_if_mipi_vid_framenum;
  input mipi_video_if_mipi_vid_hsync;
  input [15:0]mipi_video_if_mipi_vid_linenum;
  input [41:0]mipi_video_if_mipi_vid_pixel;
  input [1:0]mipi_video_if_mipi_vid_vc;
  input mipi_video_if_mipi_vid_vsync;
  input [15:0]mipi_video_if_mipi_vid_wc;
  output mipi_phy_if_clk_n;
  output mipi_phy_if_clk_p;
  output [0:0]mipi_phy_if_data_n;
  output [0:0]mipi_phy_if_data_p;
endmodule
