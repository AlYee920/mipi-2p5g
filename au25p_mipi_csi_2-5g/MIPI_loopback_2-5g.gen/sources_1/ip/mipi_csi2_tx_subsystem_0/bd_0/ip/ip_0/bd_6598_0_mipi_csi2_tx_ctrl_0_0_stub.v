// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 13:03:32 2023
// Host        : ETSB-153 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/bd_0/ip/ip_0/bd_6598_0_mipi_csi2_tx_ctrl_0_0_stub.v
// Design      : bd_6598_0_mipi_csi2_tx_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_6598_0_mipi_csi2_tx_ctrl_0_0(s_axis_aclk, s_axis_aresetn, 
  master_reset_4dphy, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, 
  cl_txclkactive, dphy_init_done, dl_tx_stop_st, vid_vsync, vid_hsync, vid_enable, vid_pxl, 
  vid_vc, vid_framenum, vid_linenum, vid_wc, vid_di, txbyteclkhs, txclkesc, core_clk_in, cl_enable, 
  cl_txrequesths, cl_txulpsclk, cl_txulpsexit, dl0_txdatahs, dl0_txrequesths, 
  dl0_forcetxstopmode, dl0_enable, dl0_txskewcalhs, dl0_txreadyhs, dl0_txulpsesc, 
  dl0_txrequestesc, dl0_txulpsexit, dl0_ulpsactivenot, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aresetn,master_reset_4dphy,s_axi_awaddr[7:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[7:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_txclkactive,dphy_init_done,dl_tx_stop_st,vid_vsync,vid_hsync,vid_enable,vid_pxl[41:0],vid_vc[1:0],vid_framenum[15:0],vid_linenum[15:0],vid_wc[15:0],vid_di[5:0],cl_enable,cl_txrequesths,cl_txulpsclk,cl_txulpsexit,dl0_txdatahs[7:0],dl0_txrequesths,dl0_forcetxstopmode,dl0_enable,dl0_txskewcalhs,dl0_txreadyhs,dl0_txulpsesc,dl0_txrequestesc,dl0_txulpsexit,dl0_ulpsactivenot,interrupt" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */
/* synthesis syn_force_seq_prim="txbyteclkhs" */
/* synthesis syn_force_seq_prim="txclkesc" */
/* synthesis syn_force_seq_prim="core_clk_in" */;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input s_axis_aresetn;
  output master_reset_4dphy;
  input [7:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input cl_txclkactive;
  input dphy_init_done;
  input dl_tx_stop_st;
  input vid_vsync;
  input vid_hsync;
  input vid_enable;
  input [41:0]vid_pxl;
  input [1:0]vid_vc;
  input [15:0]vid_framenum;
  input [15:0]vid_linenum;
  input [15:0]vid_wc;
  input [5:0]vid_di;
  input txbyteclkhs /* synthesis syn_isclock = 1 */;
  input txclkesc /* synthesis syn_isclock = 1 */;
  input core_clk_in /* synthesis syn_isclock = 1 */;
  output cl_enable;
  output cl_txrequesths;
  output cl_txulpsclk;
  output cl_txulpsexit;
  output [7:0]dl0_txdatahs;
  output dl0_txrequesths;
  output dl0_forcetxstopmode;
  output dl0_enable;
  output dl0_txskewcalhs;
  input dl0_txreadyhs;
  output dl0_txulpsesc;
  output dl0_txrequestesc;
  output dl0_txulpsexit;
  input dl0_ulpsactivenot;
  output interrupt;
endmodule
