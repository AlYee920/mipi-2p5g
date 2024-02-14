//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_6598_0_wrapper.bd
//Design : bd_6598_0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_6598_0_wrapper
   (clkoutphy_out,
    dphy_clk_200M,
    interrupt,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    mipi_video_if_mipi_vid_di,
    mipi_video_if_mipi_vid_enable,
    mipi_video_if_mipi_vid_framenum,
    mipi_video_if_mipi_vid_hsync,
    mipi_video_if_mipi_vid_linenum,
    mipi_video_if_mipi_vid_pixel,
    mipi_video_if_mipi_vid_vc,
    mipi_video_if_mipi_vid_vsync,
    mipi_video_if_mipi_vid_wc,
    mmcm_lock_out,
    pll_lock_out,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_aclk,
    s_axis_aresetn,
    system_rst_out,
    txbyteclkhs,
    txclkesc_out);
  output clkoutphy_out;
  input dphy_clk_200M;
  output interrupt;
  output mipi_phy_if_clk_n;
  output mipi_phy_if_clk_p;
  output [0:0]mipi_phy_if_data_n;
  output [0:0]mipi_phy_if_data_p;
  input [5:0]mipi_video_if_mipi_vid_di;
  input mipi_video_if_mipi_vid_enable;
  input [15:0]mipi_video_if_mipi_vid_framenum;
  input mipi_video_if_mipi_vid_hsync;
  input [15:0]mipi_video_if_mipi_vid_linenum;
  input [41:0]mipi_video_if_mipi_vid_pixel;
  input [1:0]mipi_video_if_mipi_vid_vc;
  input mipi_video_if_mipi_vid_vsync;
  input [15:0]mipi_video_if_mipi_vid_wc;
  output mmcm_lock_out;
  output pll_lock_out;
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
  input s_axis_aclk;
  input s_axis_aresetn;
  output system_rst_out;
  output txbyteclkhs;
  output txclkesc_out;

  wire clkoutphy_out;
  wire dphy_clk_200M;
  wire interrupt;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [0:0]mipi_phy_if_data_n;
  wire [0:0]mipi_phy_if_data_p;
  wire [5:0]mipi_video_if_mipi_vid_di;
  wire mipi_video_if_mipi_vid_enable;
  wire [15:0]mipi_video_if_mipi_vid_framenum;
  wire mipi_video_if_mipi_vid_hsync;
  wire [15:0]mipi_video_if_mipi_vid_linenum;
  wire [41:0]mipi_video_if_mipi_vid_pixel;
  wire [1:0]mipi_video_if_mipi_vid_vc;
  wire mipi_video_if_mipi_vid_vsync;
  wire [15:0]mipi_video_if_mipi_vid_wc;
  wire mmcm_lock_out;
  wire pll_lock_out;
  wire [7:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire system_rst_out;
  wire txbyteclkhs;
  wire txclkesc_out;

  bd_6598_0 bd_6598_0_i
       (.clkoutphy_out(clkoutphy_out),
        .dphy_clk_200M(dphy_clk_200M),
        .interrupt(interrupt),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .mipi_video_if_mipi_vid_di(mipi_video_if_mipi_vid_di),
        .mipi_video_if_mipi_vid_enable(mipi_video_if_mipi_vid_enable),
        .mipi_video_if_mipi_vid_framenum(mipi_video_if_mipi_vid_framenum),
        .mipi_video_if_mipi_vid_hsync(mipi_video_if_mipi_vid_hsync),
        .mipi_video_if_mipi_vid_linenum(mipi_video_if_mipi_vid_linenum),
        .mipi_video_if_mipi_vid_pixel(mipi_video_if_mipi_vid_pixel),
        .mipi_video_if_mipi_vid_vc(mipi_video_if_mipi_vid_vc),
        .mipi_video_if_mipi_vid_vsync(mipi_video_if_mipi_vid_vsync),
        .mipi_video_if_mipi_vid_wc(mipi_video_if_mipi_vid_wc),
        .mmcm_lock_out(mmcm_lock_out),
        .pll_lock_out(pll_lock_out),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .system_rst_out(system_rst_out),
        .txbyteclkhs(txbyteclkhs),
        .txclkesc_out(txclkesc_out));
endmodule
