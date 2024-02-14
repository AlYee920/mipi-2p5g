//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_6598_0.bd
//Design : bd_6598_0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_6598_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_6598_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mipi_csi2_tx_subsystem_0.hwdef" *) 
module bd_6598_0
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

  wire dphy_clk_200M_1;
  wire mipi_csi2_tx_ctrl_0_interrupt;
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
  wire mipi_dphy_0_clkoutphy_out;
  wire mipi_dphy_0_dl0_stopstate;
  wire mipi_dphy_0_init_done;
  wire mipi_dphy_0_mmcm_lock_out;
  wire mipi_dphy_0_pll_lock_out;
  wire mipi_dphy_0_system_rst_out;
  wire mipi_dphy_0_tx_mipi_phy_if_CLK_N;
  wire mipi_dphy_0_tx_mipi_phy_if_CLK_P;
  wire [0:0]mipi_dphy_0_tx_mipi_phy_if_DATA_N;
  wire [0:0]mipi_dphy_0_tx_mipi_phy_if_DATA_P;
  wire mipi_dphy_0_txbyteclkhs;
  wire mipi_dphy_0_txclkesc_out;
  wire [5:0]mipi_video_if_1_MIPI_VID_DI;
  wire mipi_video_if_1_MIPI_VID_ENABLE;
  wire [15:0]mipi_video_if_1_MIPI_VID_FRAMENUM;
  wire mipi_video_if_1_MIPI_VID_HSYNC;
  wire [15:0]mipi_video_if_1_MIPI_VID_LINENUM;
  wire [41:0]mipi_video_if_1_MIPI_VID_PIXEL;
  wire [1:0]mipi_video_if_1_MIPI_VID_VC;
  wire mipi_video_if_1_MIPI_VID_VSYNC;
  wire [15:0]mipi_video_if_1_MIPI_VID_WC;
  wire [7:0]s_axi_1_ARADDR;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [7:0]s_axi_1_AWADDR;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;
  wire s_axis_aclk_1;
  wire s_axis_aresetn_1;

  assign clkoutphy_out = mipi_dphy_0_clkoutphy_out;
  assign dphy_clk_200M_1 = dphy_clk_200M;
  assign interrupt = mipi_csi2_tx_ctrl_0_interrupt;
  assign mipi_phy_if_clk_n = mipi_dphy_0_tx_mipi_phy_if_CLK_N;
  assign mipi_phy_if_clk_p = mipi_dphy_0_tx_mipi_phy_if_CLK_P;
  assign mipi_phy_if_data_n[0] = mipi_dphy_0_tx_mipi_phy_if_DATA_N;
  assign mipi_phy_if_data_p[0] = mipi_dphy_0_tx_mipi_phy_if_DATA_P;
  assign mipi_video_if_1_MIPI_VID_DI = mipi_video_if_mipi_vid_di[5:0];
  assign mipi_video_if_1_MIPI_VID_ENABLE = mipi_video_if_mipi_vid_enable;
  assign mipi_video_if_1_MIPI_VID_FRAMENUM = mipi_video_if_mipi_vid_framenum[15:0];
  assign mipi_video_if_1_MIPI_VID_HSYNC = mipi_video_if_mipi_vid_hsync;
  assign mipi_video_if_1_MIPI_VID_LINENUM = mipi_video_if_mipi_vid_linenum[15:0];
  assign mipi_video_if_1_MIPI_VID_PIXEL = mipi_video_if_mipi_vid_pixel[41:0];
  assign mipi_video_if_1_MIPI_VID_VC = mipi_video_if_mipi_vid_vc[1:0];
  assign mipi_video_if_1_MIPI_VID_VSYNC = mipi_video_if_mipi_vid_vsync;
  assign mipi_video_if_1_MIPI_VID_WC = mipi_video_if_mipi_vid_wc[15:0];
  assign mmcm_lock_out = mipi_dphy_0_mmcm_lock_out;
  assign pll_lock_out = mipi_dphy_0_pll_lock_out;
  assign s_axi_1_ARADDR = s_axi_araddr[7:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[7:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  assign s_axis_aclk_1 = s_axis_aclk;
  assign s_axis_aresetn_1 = s_axis_aresetn;
  assign system_rst_out = mipi_dphy_0_system_rst_out;
  assign txbyteclkhs = mipi_dphy_0_txbyteclkhs;
  assign txclkesc_out = mipi_dphy_0_txclkesc_out;
  bd_6598_0_mipi_csi2_tx_ctrl_0_0 mipi_csi2_tx_ctrl_0
       (.cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactive(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .core_clk_in(dphy_clk_200M_1),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .dl_tx_stop_st(mipi_dphy_0_dl0_stopstate),
        .dphy_init_done(mipi_dphy_0_init_done),
        .interrupt(mipi_csi2_tx_ctrl_0_interrupt),
        .master_reset_4dphy(mipi_csi2_tx_ctrl_0_master_reset_4dphy),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID),
        .s_axis_aclk(s_axis_aclk_1),
        .s_axis_aresetn(s_axis_aresetn_1),
        .txbyteclkhs(mipi_dphy_0_txbyteclkhs),
        .txclkesc(mipi_dphy_0_txclkesc_out),
        .vid_di(mipi_video_if_1_MIPI_VID_DI),
        .vid_enable(mipi_video_if_1_MIPI_VID_ENABLE),
        .vid_framenum(mipi_video_if_1_MIPI_VID_FRAMENUM),
        .vid_hsync(mipi_video_if_1_MIPI_VID_HSYNC),
        .vid_linenum(mipi_video_if_1_MIPI_VID_LINENUM),
        .vid_pxl(mipi_video_if_1_MIPI_VID_PIXEL),
        .vid_vc(mipi_video_if_1_MIPI_VID_VC),
        .vid_vsync(mipi_video_if_1_MIPI_VID_VSYNC),
        .vid_wc(mipi_video_if_1_MIPI_VID_WC));
  bd_6598_0_mipi_dphy_0_0 mipi_dphy_0
       (.cl_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE),
        .cl_txclkactivehs(mipi_dphy_0_cl_txclkactivehs),
        .cl_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS),
        .cl_txulpsclk(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK),
        .cl_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT),
        .clk_txn(mipi_dphy_0_tx_mipi_phy_if_CLK_N),
        .clk_txp(mipi_dphy_0_tx_mipi_phy_if_CLK_P),
        .clkoutphy_out(mipi_dphy_0_clkoutphy_out),
        .core_clk(dphy_clk_200M_1),
        .core_rst(mipi_csi2_tx_ctrl_0_master_reset_4dphy),
        .data_txn(mipi_dphy_0_tx_mipi_phy_if_DATA_N),
        .data_txp(mipi_dphy_0_tx_mipi_phy_if_DATA_P),
        .dl0_enable(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE),
        .dl0_forcetxstopmode(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE),
        .dl0_stopstate(mipi_dphy_0_dl0_stopstate),
        .dl0_txdataesc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dl0_txdatahs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS),
        .dl0_txlpdtesc(1'b0),
        .dl0_txreadyhs(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS),
        .dl0_txrequestesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC),
        .dl0_txrequesths(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS),
        .dl0_txtriggeresc({1'b0,1'b0,1'b0,1'b0}),
        .dl0_txulpsesc(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC),
        .dl0_txulpsexit(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT),
        .dl0_txvalidesc(1'b0),
        .dl0_ulpsactivenot(mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT),
        .init_done(mipi_dphy_0_init_done),
        .mmcm_lock_out(mipi_dphy_0_mmcm_lock_out),
        .pll_lock_out(mipi_dphy_0_pll_lock_out),
        .system_rst_out(mipi_dphy_0_system_rst_out),
        .txbyteclkhs(mipi_dphy_0_txbyteclkhs),
        .txclkesc_out(mipi_dphy_0_txclkesc_out));
endmodule
