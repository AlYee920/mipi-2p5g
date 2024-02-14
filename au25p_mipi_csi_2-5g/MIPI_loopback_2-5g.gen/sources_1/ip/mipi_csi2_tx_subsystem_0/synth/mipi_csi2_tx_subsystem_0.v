// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:mipi_csi2_tx_subsystem:2.2
// IP Revision: 6

(* X_CORE_INFO = "bd_6598_0,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "mipi_csi2_tx_subsystem_0,bd_6598_0,{}" *)
(* CORE_GENERATION_INFO = "mipi_csi2_tx_subsystem_0,bd_6598_0,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mipi_csi2_tx_subsystem,x_ipVersion=2.2,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_OOC_VID_CLK=6.666,C_EN_CTS_TX=false,C_EN_DBG_TX=false,DPHY_PRESET=None,C_EN_SSC=false,C_CSI_MAX_BPC=14,C_CSI_XMIT_INITIAL_DESKEW=true,C_CSI_XMIT_PERIODIC_DESKEW=false,C_CSI_XMIT_ALT_DESKEW_SEQ=false,C_CSI_INIT_DESKEW_PATRN_LEN=4096,C_CSI_PERIODIC_PATRN_LEN=1024,C_CSI_PERIODIC_CNTR_WIDTH=3\
2,C_CSI_PERIODIC_TIME=5000,C_CLK_IO_SWAP=false,C_DL0_IO_SWAP=false,C_DL1_IO_SWAP=false,C_DL2_IO_SWAP=false,C_DL3_IO_SWAP=false,C_CLK_LP_IO_SWAP=false,C_DL0_LP_IO_SWAP=false,C_DL1_LP_IO_SWAP=false,C_DL2_LP_IO_SWAP=false,C_DL3_LP_IO_SWAP=false,C_EN_DEBUG_REGS=false,C_CSI_CLK_PRE=1,C_CSI_LANES=1,C_EN_7S_LINERATE_CHECK=false,C_EXDES_CONFIG=1Lane_RGB888_1Pixel_Mode,C_EN_REG_BASED_FE_GEN=false,C_DPHY_LANES=1,C_CSI_DATATYPE=RAW8,C_CSI_PIXEL_MODE=1,C_CSI_AXIS_TDATA_WIDTH=42,C_CSI_LINE_BUFR_DEPTH=2048,C_\
CSI_VID_INTERFACE=Native,C_CSI_CRC_ENABLE=false,C_CSI_EN_ACTIVELANES=false,C_STRETCH_LINE_RATE=2500,C_HS_LINE_RATE=2500,C_DPHY_MODE=MASTER,DPHY_LPX_PERIOD=50,DPHY_ESC_CLK_PERIOD=20.000,DPHY_HS_TIMEOUT=65541,DPHY_ESC_TIMEOUT=25600,C_DPHY_EN_REG_IF=false,Component_Name=mipi_csi2_tx_subsystem_0,HP_IO_BANK_SELECTION=66,CLK_LANE_IO_LOC=L18,DATA_LANE0_IO_LOC=M20,DATA_LANE1_IO_LOC=None,DATA_LANE2_IO_LOC=None,DATA_LANE3_IO_LOC=None,DATA_LANE0_BYTE=Same_Byte,DATA_LANE1_BYTE=Same_Byte,DATA_LANE2_BYTE=Same\
_Byte,DATA_LANE3_BYTE=Same_Byte,CLK_LANE_IO_LOC_NAME=IO_L1P_T0L_N0_DBC_66,DATA_LANE0_IO_LOC_NAME=IO_L2P_T0L_N2_66,DATA_LANE1_IO_LOC_NAME=None,DATA_LANE2_IO_LOC_NAME=None,DATA_LANE3_IO_LOC_NAME=None,SupportLevel=1,C_CLK_LANE_IO_POSITION=0,C_DATA_LANE0_IO_POSITION=2,C_DATA_LANE1_IO_POSITION=4,C_DATA_LANE2_IO_POSITION=6,C_DATA_LANE3_IO_POSITION=8,CMN_PROJ_FAMILY=1,C_IS_7SERIES=false,C_IS_VERSAL=false,C_EN_HS_OBUFTDS=false}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mipi_csi2_tx_subsystem_0 (
  s_axis_aclk,
  s_axis_aresetn,
  dphy_clk_200M,
  txbyteclkhs,
  clkoutphy_out,
  pll_lock_out,
  txclkesc_out,
  system_rst_out,
  mmcm_lock_out,
  interrupt,
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
  mipi_video_if_mipi_vid_di,
  mipi_video_if_mipi_vid_enable,
  mipi_video_if_mipi_vid_framenum,
  mipi_video_if_mipi_vid_hsync,
  mipi_video_if_mipi_vid_linenum,
  mipi_video_if_mipi_vid_pixel,
  mipi_video_if_mipi_vid_vc,
  mipi_video_if_mipi_vid_vsync,
  mipi_video_if_mipi_vid_wc,
  mipi_phy_if_clk_n,
  mipi_phy_if_clk_p,
  mipi_phy_if_data_n,
  mipi_phy_if_data_p
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk CLK" *)
input wire s_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn RST" *)
input wire s_axis_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_dphy_clk_200M, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK" *)
input wire dphy_clk_200M;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txbyteclkhs, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txbyteclkhs CLK" *)
output wire txbyteclkhs;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 2500000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_clkoutphy_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK" *)
output wire clkoutphy_out;
output wire pll_lock_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txclkesc_out, FREQ_HZ 10000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txclkesc_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txclkesc_out CLK" *)
output wire txclkesc_out;
output wire system_rst_out;
output wire mmcm_lock_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [7 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [7 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_DI" *)
input wire [5 : 0] mipi_video_if_mipi_vid_di;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_ENABLE" *)
input wire mipi_video_if_mipi_vid_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_FRAMENUM" *)
input wire [15 : 0] mipi_video_if_mipi_vid_framenum;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_HSYNC" *)
input wire mipi_video_if_mipi_vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_LINENUM" *)
input wire [15 : 0] mipi_video_if_mipi_vid_linenum;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_PIXEL" *)
input wire [41 : 0] mipi_video_if_mipi_vid_pixel;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VC" *)
input wire [1 : 0] mipi_video_if_mipi_vid_vc;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VSYNC" *)
input wire mipi_video_if_mipi_vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_WC" *)
input wire [15 : 0] mipi_video_if_mipi_vid_wc;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *)
output wire mipi_phy_if_clk_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *)
output wire mipi_phy_if_clk_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *)
output wire [0 : 0] mipi_phy_if_data_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *)
output wire [0 : 0] mipi_phy_if_data_p;

  bd_6598_0 inst (
    .s_axis_aclk(s_axis_aclk),
    .s_axis_aresetn(s_axis_aresetn),
    .dphy_clk_200M(dphy_clk_200M),
    .txbyteclkhs(txbyteclkhs),
    .clkoutphy_out(clkoutphy_out),
    .pll_lock_out(pll_lock_out),
    .txclkesc_out(txclkesc_out),
    .system_rst_out(system_rst_out),
    .mmcm_lock_out(mmcm_lock_out),
    .interrupt(interrupt),
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
    .mipi_video_if_mipi_vid_di(mipi_video_if_mipi_vid_di),
    .mipi_video_if_mipi_vid_enable(mipi_video_if_mipi_vid_enable),
    .mipi_video_if_mipi_vid_framenum(mipi_video_if_mipi_vid_framenum),
    .mipi_video_if_mipi_vid_hsync(mipi_video_if_mipi_vid_hsync),
    .mipi_video_if_mipi_vid_linenum(mipi_video_if_mipi_vid_linenum),
    .mipi_video_if_mipi_vid_pixel(mipi_video_if_mipi_vid_pixel),
    .mipi_video_if_mipi_vid_vc(mipi_video_if_mipi_vid_vc),
    .mipi_video_if_mipi_vid_vsync(mipi_video_if_mipi_vid_vsync),
    .mipi_video_if_mipi_vid_wc(mipi_video_if_mipi_vid_wc),
    .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
    .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
    .mipi_phy_if_data_n(mipi_phy_if_data_n),
    .mipi_phy_if_data_p(mipi_phy_if_data_p)
  );
endmodule
