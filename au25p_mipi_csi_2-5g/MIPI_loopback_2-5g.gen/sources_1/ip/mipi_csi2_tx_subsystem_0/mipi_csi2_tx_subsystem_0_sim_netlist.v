// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 13:04:32 2023
// Host        : ETSB-153 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/mipi_csi2_tx_subsystem_0_sim_netlist.v
// Design      : mipi_csi2_tx_subsystem_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mipi_csi2_tx_subsystem_0,bd_6598_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_6598_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mipi_csi2_tx_subsystem_0
   (s_axis_aclk,
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
    mipi_phy_if_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_dphy_clk_200M, INSERT_VIP 0" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txbyteclkhs CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txbyteclkhs, INSERT_VIP 0" *) output txbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 2500000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_clkoutphy_out, INSERT_VIP 0" *) output clkoutphy_out;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txclkesc_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txclkesc_out, FREQ_HZ 10000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txclkesc_out, INSERT_VIP 0" *) output txclkesc_out;
  output system_rst_out;
  output mmcm_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [7:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [7:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_DI" *) input [5:0]mipi_video_if_mipi_vid_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_ENABLE" *) input mipi_video_if_mipi_vid_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_FRAMENUM" *) input [15:0]mipi_video_if_mipi_vid_framenum;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_HSYNC" *) input mipi_video_if_mipi_vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_LINENUM" *) input [15:0]mipi_video_if_mipi_vid_linenum;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_PIXEL" *) input [41:0]mipi_video_if_mipi_vid_pixel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VC" *) input [1:0]mipi_video_if_mipi_vid_vc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VSYNC" *) input mipi_video_if_mipi_vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_WC" *) input [15:0]mipi_video_if_mipi_vid_wc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) output mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) output mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) output [0:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) output [0:0]mipi_phy_if_data_p;

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

  (* HW_HANDOFF = "mipi_csi2_tx_subsystem_0.hwdef" *) 
  mipi_csi2_tx_subsystem_0_bd_6598_0 inst
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

(* HW_HANDOFF = "mipi_csi2_tx_subsystem_0.hwdef" *) (* ORIG_REF_NAME = "bd_6598_0" *) 
module mipi_csi2_tx_subsystem_0_bd_6598_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKOUTPHY_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKOUTPHY_OUT, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_clkoutphy_out, FREQ_HZ 2500000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clkoutphy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN bd_6598_0_dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) output mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) output mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) output [0:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) output [0:0]mipi_phy_if_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_DI" *) input [5:0]mipi_video_if_mipi_vid_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_ENABLE" *) input mipi_video_if_mipi_vid_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_FRAMENUM" *) input [15:0]mipi_video_if_mipi_vid_framenum;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_HSYNC" *) input mipi_video_if_mipi_vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_LINENUM" *) input [15:0]mipi_video_if_mipi_vid_linenum;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_PIXEL" *) input [41:0]mipi_video_if_mipi_vid_pixel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VC" *) input [1:0]mipi_video_if_mipi_vid_vc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VSYNC" *) input mipi_video_if_mipi_vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_WC" *) input [15:0]mipi_video_if_mipi_vid_wc;
  output mmcm_lock_out;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_6598_0_s_axis_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [7:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [7:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN bd_6598_0_s_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn;
  output system_rst_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXBYTECLKHS CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXBYTECLKHS, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output txbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXCLKESC_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXCLKESC_OUT, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txclkesc_out, FREQ_HZ 10000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output txclkesc_out;

  wire clkoutphy_out;
  wire dphy_clk_200M;
  wire interrupt;
  wire mipi_csi2_tx_ctrl_0_master_reset_4dphy;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE;
  wire [7:0]mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT;
  wire mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT;
  wire mipi_dphy_0_cl_txclkactivehs;
  wire mipi_dphy_0_dl0_stopstate;
  wire mipi_dphy_0_init_done;
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
  wire NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED;
  wire NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED;
  wire NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED;
  wire NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED;

  mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_csi2_tx_ctrl_0_0 mipi_csi2_tx_ctrl_0
       (.cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactive(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .core_clk_in(dphy_clk_200M),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txskewcalhs(NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .dl_tx_stop_st(mipi_dphy_0_dl0_stopstate),
        .dphy_init_done(mipi_dphy_0_init_done),
        .interrupt(interrupt),
        .master_reset_4dphy(mipi_csi2_tx_ctrl_0_master_reset_4dphy),
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
        .txbyteclkhs(txbyteclkhs),
        .txclkesc(txclkesc_out),
        .vid_di(mipi_video_if_mipi_vid_di),
        .vid_enable(mipi_video_if_mipi_vid_enable),
        .vid_framenum(mipi_video_if_mipi_vid_framenum),
        .vid_hsync(mipi_video_if_mipi_vid_hsync),
        .vid_linenum(mipi_video_if_mipi_vid_linenum),
        .vid_pxl(mipi_video_if_mipi_vid_pixel),
        .vid_vc(mipi_video_if_mipi_vid_vc),
        .vid_vsync(mipi_video_if_mipi_vid_vsync),
        .vid_wc(mipi_video_if_mipi_vid_wc));
  mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_dphy_0_0 mipi_dphy_0
       (.cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_stopstate(NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED),
        .cl_txclkactivehs(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .cl_ulpsactivenot(NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED),
        .clk_txn(mipi_phy_if_clk_n),
        .clk_txp(mipi_phy_if_clk_p),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(dphy_clk_200M),
        .core_rst(mipi_csi2_tx_ctrl_0_master_reset_4dphy),
        .data_txn(mipi_phy_if_data_n),
        .data_txp(mipi_phy_if_data_p),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_stopstate(mipi_dphy_0_dl0_stopstate),
        .dl0_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txlpdtesc(1'b0),
        .dl0_txreadyesc(NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_txvalidesc(1'b0),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .init_done(mipi_dphy_0_init_done),
        .mmcm_lock_out(mmcm_lock_out),
        .pll_lock_out(pll_lock_out),
        .system_rst_out(system_rst_out),
        .txbyteclkhs(txbyteclkhs),
        .txclkesc_out(txclkesc_out));
endmodule

(* ORIG_REF_NAME = "bd_6598_0_mipi_csi2_tx_ctrl_0_0" *) 
module mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_csi2_tx_ctrl_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    master_reset_4dphy,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    cl_txclkactive,
    dphy_init_done,
    dl_tx_stop_st,
    vid_vsync,
    vid_hsync,
    vid_enable,
    vid_pxl,
    vid_vc,
    vid_framenum,
    vid_linenum,
    vid_wc,
    vid_di,
    txbyteclkhs,
    txclkesc,
    core_clk_in,
    cl_enable,
    cl_txrequesths,
    cl_txulpsclk,
    cl_txulpsexit,
    dl0_txdatahs,
    dl0_txrequesths,
    dl0_forcetxstopmode,
    dl0_enable,
    dl0_txskewcalhs,
    dl0_txreadyhs,
    dl0_txulpsesc,
    dl0_txrequestesc,
    dl0_txulpsexit,
    dl0_ulpsactivenot,
    interrupt);
  (* syn_isclock = "1" *) input s_axis_aclk;
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
  (* syn_isclock = "1" *) input txbyteclkhs;
  (* syn_isclock = "1" *) input txclkesc;
  (* syn_isclock = "1" *) input core_clk_in;
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

(* ORIG_REF_NAME = "bd_6598_0_mipi_dphy_0_0" *) 
module mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_dphy_0_0
   (core_clk,
    core_rst,
    txclkesc_out,
    txbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    mmcm_lock_out,
    system_rst_out,
    init_done,
    cl_txclkactivehs,
    cl_txrequesths,
    cl_stopstate,
    cl_enable,
    cl_txulpsclk,
    cl_txulpsexit,
    cl_ulpsactivenot,
    dl0_txdatahs,
    dl0_txrequesths,
    dl0_txreadyhs,
    dl0_forcetxstopmode,
    dl0_stopstate,
    dl0_enable,
    dl0_txrequestesc,
    dl0_txlpdtesc,
    dl0_txulpsexit,
    dl0_ulpsactivenot,
    dl0_txulpsesc,
    dl0_txtriggeresc,
    dl0_txdataesc,
    dl0_txvalidesc,
    dl0_txreadyesc,
    clk_txp,
    clk_txn,
    data_txp,
    data_txn);
  (* syn_isclock = "1" *) input core_clk;
  input core_rst;
  (* syn_isclock = "1" *) output txclkesc_out;
  (* syn_isclock = "1" *) output txbyteclkhs;
  (* syn_isclock = "1" *) output clkoutphy_out;
  output pll_lock_out;
  output mmcm_lock_out;
  output system_rst_out;
  output init_done;
  output cl_txclkactivehs;
  input cl_txrequesths;
  output cl_stopstate;
  input cl_enable;
  input cl_txulpsclk;
  input cl_txulpsexit;
  output cl_ulpsactivenot;
  input [7:0]dl0_txdatahs;
  input dl0_txrequesths;
  output dl0_txreadyhs;
  input dl0_forcetxstopmode;
  output dl0_stopstate;
  input dl0_enable;
  input dl0_txrequestesc;
  input dl0_txlpdtesc;
  input dl0_txulpsexit;
  output dl0_ulpsactivenot;
  input dl0_txulpsesc;
  input [3:0]dl0_txtriggeresc;
  input [7:0]dl0_txdataesc;
  input dl0_txvalidesc;
  output dl0_txreadyesc;
  output clk_txp;
  output clk_txn;
  output [0:0]data_txp;
  output [0:0]data_txn;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
