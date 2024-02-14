//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_782c_wrapper.bd
//Design : bd_782c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_782c_wrapper
   (bg0_pin6_nc,
    bg2_pin6_nc,
    clkoutphy_out,
    csirxss_csi_irq,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arprot,
    csirxss_s_axi_arready,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awprot,
    csirxss_s_axi_awready,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rready,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wready,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    dphy_clk_200M,
    ext_mmcm_clk_out,
    ext_mmcm_lock_out,
    frame_rcvd_pulse_out,
    lite_aclk,
    lite_aresetn,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    pll_lock_out,
    rxbyteclkhs,
    rxbyteclkhs_cnts_out,
    system_rst_out,
    video_aclk,
    video_aresetn,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
  input bg0_pin6_nc;
  input bg2_pin6_nc;
  output clkoutphy_out;
  output csirxss_csi_irq;
  input [12:0]csirxss_s_axi_araddr;
  input [2:0]csirxss_s_axi_arprot;
  output [0:0]csirxss_s_axi_arready;
  input [0:0]csirxss_s_axi_arvalid;
  input [12:0]csirxss_s_axi_awaddr;
  input [2:0]csirxss_s_axi_awprot;
  output [0:0]csirxss_s_axi_awready;
  input [0:0]csirxss_s_axi_awvalid;
  input [0:0]csirxss_s_axi_bready;
  output [1:0]csirxss_s_axi_bresp;
  output [0:0]csirxss_s_axi_bvalid;
  output [31:0]csirxss_s_axi_rdata;
  input [0:0]csirxss_s_axi_rready;
  output [1:0]csirxss_s_axi_rresp;
  output [0:0]csirxss_s_axi_rvalid;
  input [31:0]csirxss_s_axi_wdata;
  output [0:0]csirxss_s_axi_wready;
  input [3:0]csirxss_s_axi_wstrb;
  input [0:0]csirxss_s_axi_wvalid;
  input dphy_clk_200M;
  output ext_mmcm_clk_out;
  output ext_mmcm_lock_out;
  output frame_rcvd_pulse_out;
  input lite_aclk;
  input lite_aresetn;
  input mipi_phy_if_clk_n;
  input mipi_phy_if_clk_p;
  input [3:0]mipi_phy_if_data_n;
  input [3:0]mipi_phy_if_data_p;
  output pll_lock_out;
  output rxbyteclkhs;
  output rxbyteclkhs_cnts_out;
  output system_rst_out;
  input video_aclk;
  input video_aresetn;
  output [23:0]video_out_tdata;
  output [9:0]video_out_tdest;
  output video_out_tlast;
  input video_out_tready;
  output [95:0]video_out_tuser;
  output video_out_tvalid;

  wire bg0_pin6_nc;
  wire bg2_pin6_nc;
  wire clkoutphy_out;
  wire csirxss_csi_irq;
  wire [12:0]csirxss_s_axi_araddr;
  wire [2:0]csirxss_s_axi_arprot;
  wire [0:0]csirxss_s_axi_arready;
  wire [0:0]csirxss_s_axi_arvalid;
  wire [12:0]csirxss_s_axi_awaddr;
  wire [2:0]csirxss_s_axi_awprot;
  wire [0:0]csirxss_s_axi_awready;
  wire [0:0]csirxss_s_axi_awvalid;
  wire [0:0]csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire [0:0]csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire [0:0]csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire [0:0]csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire [0:0]csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire [0:0]csirxss_s_axi_wvalid;
  wire dphy_clk_200M;
  wire ext_mmcm_clk_out;
  wire ext_mmcm_lock_out;
  wire frame_rcvd_pulse_out;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [3:0]mipi_phy_if_data_n;
  wire [3:0]mipi_phy_if_data_p;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire rxbyteclkhs_cnts_out;
  wire system_rst_out;
  wire video_aclk;
  wire video_aresetn;
  wire [23:0]video_out_tdata;
  wire [9:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [95:0]video_out_tuser;
  wire video_out_tvalid;

  bd_782c bd_782c_i
       (.bg0_pin6_nc(bg0_pin6_nc),
        .bg2_pin6_nc(bg2_pin6_nc),
        .clkoutphy_out(clkoutphy_out),
        .csirxss_csi_irq(csirxss_csi_irq),
        .csirxss_s_axi_araddr(csirxss_s_axi_araddr),
        .csirxss_s_axi_arprot(csirxss_s_axi_arprot),
        .csirxss_s_axi_arready(csirxss_s_axi_arready),
        .csirxss_s_axi_arvalid(csirxss_s_axi_arvalid),
        .csirxss_s_axi_awaddr(csirxss_s_axi_awaddr),
        .csirxss_s_axi_awprot(csirxss_s_axi_awprot),
        .csirxss_s_axi_awready(csirxss_s_axi_awready),
        .csirxss_s_axi_awvalid(csirxss_s_axi_awvalid),
        .csirxss_s_axi_bready(csirxss_s_axi_bready),
        .csirxss_s_axi_bresp(csirxss_s_axi_bresp),
        .csirxss_s_axi_bvalid(csirxss_s_axi_bvalid),
        .csirxss_s_axi_rdata(csirxss_s_axi_rdata),
        .csirxss_s_axi_rready(csirxss_s_axi_rready),
        .csirxss_s_axi_rresp(csirxss_s_axi_rresp),
        .csirxss_s_axi_rvalid(csirxss_s_axi_rvalid),
        .csirxss_s_axi_wdata(csirxss_s_axi_wdata),
        .csirxss_s_axi_wready(csirxss_s_axi_wready),
        .csirxss_s_axi_wstrb(csirxss_s_axi_wstrb),
        .csirxss_s_axi_wvalid(csirxss_s_axi_wvalid),
        .dphy_clk_200M(dphy_clk_200M),
        .ext_mmcm_clk_out(ext_mmcm_clk_out),
        .ext_mmcm_lock_out(ext_mmcm_lock_out),
        .frame_rcvd_pulse_out(frame_rcvd_pulse_out),
        .lite_aclk(lite_aclk),
        .lite_aresetn(lite_aresetn),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .rxbyteclkhs_cnts_out(rxbyteclkhs_cnts_out),
        .system_rst_out(system_rst_out),
        .video_aclk(video_aclk),
        .video_aresetn(video_aresetn),
        .video_out_tdata(video_out_tdata),
        .video_out_tdest(video_out_tdest),
        .video_out_tlast(video_out_tlast),
        .video_out_tready(video_out_tready),
        .video_out_tuser(video_out_tuser),
        .video_out_tvalid(video_out_tvalid));
endmodule
