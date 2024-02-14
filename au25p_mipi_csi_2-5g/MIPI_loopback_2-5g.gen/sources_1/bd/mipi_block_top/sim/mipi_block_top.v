//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2_AR000035847 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb  6 11:03:12 2024
//Host        : ETSB-153 running 64-bit major release  (build 9200)
//Command     : generate_target mipi_block_top.bd
//Design      : mipi_block_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mipi_block_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mipi_block_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,synth_mode=Singular}" *) (* HW_HANDOFF = "mipi_block_top.hwdef" *) 
module mipi_block_top
   (bg0_pin6_nc_0,
    bg2_pin6_nc_0,
    clk_out_0,
    fixed_fabric_100mhz_clk_n,
    fixed_fabric_100mhz_clk_p,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p);
  input bg0_pin6_nc_0;
  input bg2_pin6_nc_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_0, CLK_DOMAIN bd_782c_phy_0_rxbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output clk_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 fixed_fabric_100mhz CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fixed_fabric_100mhz, CAN_DEBUG false, FREQ_HZ 100000000" *) input fixed_fabric_100mhz_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 fixed_fabric_100mhz CLK_P" *) input fixed_fabric_100mhz_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) input mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) input mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) input [3:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) input [3:0]mipi_phy_if_data_p;

  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR;
  wire [2:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY;
  wire [1:0]axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  wire [3:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID;
  wire bg0_pin6_nc_0_1;
  wire bg2_pin6_nc_0_1;
  wire clk_wiz_0_axi_clk;
  wire clk_wiz_0_dbg_clk;
  wire clk_wiz_0_dphy;
  wire [0:0]clk_wiz_0_locked;
  wire clk_wiz_0_vid_clk;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]error_cnt;
  wire fixed_fabric_100mhz_1_CLK_N;
  wire fixed_fabric_100mhz_1_CLK_P;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]golden_data;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire [2:0]jtag_axi_0_M_AXI_ARPROT;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire [2:0]jtag_axi_0_M_AXI_AWPROT;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire mipi_csi2_rx_subsyst_0_csirxss_csi_irq;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire mipi_csi2_rx_subsyst_0_frame_rcvd_pulse_out;
  wire mipi_csi2_rx_subsyst_0_rxbyteclkhs;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]mipi_csi2_rx_subsyst_0_video_out_tdata1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire mipi_csi2_rx_subsyst_0_video_out_tvalid;
  wire mipi_phy_if_1_CLK_N;
  wire mipi_phy_if_1_CLK_P;
  wire [3:0]mipi_phy_if_1_DATA_N;
  wire [3:0]mipi_phy_if_1_DATA_P;
  wire mipi_top_0_mipi_vid_tready_rx;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]mipi_top_0_rx_unpack_data;
  wire oddr_0_clk_out;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [12:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [0:0]smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [12:0]smartconnect_0_M00_AXI_AWADDR;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [0:0]smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire [0:0]smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire [0:0]smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire [0:0]smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [0:0]xlconstant_1_dout;

  assign bg0_pin6_nc_0_1 = bg0_pin6_nc_0;
  assign bg2_pin6_nc_0_1 = bg2_pin6_nc_0;
  assign clk_out_0 = oddr_0_clk_out;
  assign fixed_fabric_100mhz_1_CLK_N = fixed_fabric_100mhz_clk_n;
  assign fixed_fabric_100mhz_1_CLK_P = fixed_fabric_100mhz_clk_p;
  assign mipi_phy_if_1_CLK_N = mipi_phy_if_clk_n;
  assign mipi_phy_if_1_CLK_P = mipi_phy_if_clk_p;
  assign mipi_phy_if_1_DATA_N = mipi_phy_if_data_n[3:0];
  assign mipi_phy_if_1_DATA_P = mipi_phy_if_data_p[3:0];
  mipi_block_top_axi_traffic_gen_0_0 axi_traffic_gen_0
       (.m_axi_lite_ch1_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .m_axi_lite_ch1_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .m_axi_lite_ch1_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .m_axi_lite_ch1_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .m_axi_lite_ch1_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .m_axi_lite_ch1_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .m_axi_lite_ch1_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .m_axi_lite_ch1_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .m_axi_lite_ch1_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .m_axi_lite_ch1_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .m_axi_lite_ch1_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .s_axi_aclk(clk_wiz_0_axi_clk),
        .s_axi_aresetn(xlconstant_1_dout));
  mipi_block_top_clk_wiz_0_0 clk_wiz_0
       (.axi_clk(clk_wiz_0_axi_clk),
        .clk_in1_n(fixed_fabric_100mhz_1_CLK_N),
        .clk_in1_p(fixed_fabric_100mhz_1_CLK_P),
        .dbg_clk(clk_wiz_0_dbg_clk),
        .dphy(clk_wiz_0_dphy),
        .vid_clk(clk_wiz_0_vid_clk));
  mipi_block_top_jtag_axi_0_0 jtag_axi_0
       (.aclk(clk_wiz_0_axi_clk),
        .aresetn(xlconstant_1_dout),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arprot(jtag_axi_0_M_AXI_ARPROT),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awprot(jtag_axi_0_M_AXI_AWPROT),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  mipi_block_top_mipi_csi2_rx_subsyst_0_0 mipi_csi2_rx_subsyst_0
       (.bg0_pin6_nc(bg0_pin6_nc_0_1),
        .bg2_pin6_nc(bg2_pin6_nc_0_1),
        .csirxss_csi_irq(mipi_csi2_rx_subsyst_0_csirxss_csi_irq),
        .csirxss_s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .csirxss_s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .csirxss_s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .csirxss_s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .csirxss_s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .csirxss_s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .csirxss_s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .csirxss_s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .csirxss_s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .csirxss_s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .csirxss_s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .csirxss_s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .csirxss_s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .csirxss_s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .csirxss_s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .csirxss_s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .csirxss_s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .csirxss_s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .csirxss_s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .dphy_clk_200M(clk_wiz_0_dphy),
        .frame_rcvd_pulse_out(mipi_csi2_rx_subsyst_0_frame_rcvd_pulse_out),
        .lite_aclk(clk_wiz_0_axi_clk),
        .lite_aresetn(xlconstant_1_dout),
        .mipi_phy_if_clk_n(mipi_phy_if_1_CLK_N),
        .mipi_phy_if_clk_p(mipi_phy_if_1_CLK_P),
        .mipi_phy_if_data_n(mipi_phy_if_1_DATA_N),
        .mipi_phy_if_data_p(mipi_phy_if_1_DATA_P),
        .rxbyteclkhs(mipi_csi2_rx_subsyst_0_rxbyteclkhs),
        .video_aclk(clk_wiz_0_vid_clk),
        .video_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .video_out_tdata(mipi_csi2_rx_subsyst_0_video_out_tdata1),
        .video_out_tready(mipi_top_0_mipi_vid_tready_rx),
        .video_out_tvalid(mipi_csi2_rx_subsyst_0_video_out_tvalid));
  mipi_block_top_mipi_top_0_0 mipi_top_0
       (.error_cnt(error_cnt),
        .golden_data(golden_data),
        .mipi_vid_tdata_rx(mipi_csi2_rx_subsyst_0_video_out_tdata1),
        .mipi_vid_tready_rx(mipi_top_0_mipi_vid_tready_rx),
        .mipi_vid_tvalid_rx(mipi_csi2_rx_subsyst_0_video_out_tvalid),
        .pixel_clk(clk_wiz_0_vid_clk),
        .reset_n(xlconstant_1_dout),
        .rx_unpack_data_1P(mipi_top_0_rx_unpack_data),
        .start_transfer_n(mipi_csi2_rx_subsyst_0_csirxss_csi_irq));
  mipi_block_top_oddr_0_0 oddr_0
       (.clk_in(mipi_csi2_rx_subsyst_0_rxbyteclkhs),
        .clk_out(oddr_0_clk_out));
  mipi_block_top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(clk_wiz_0_locked),
        .dcm_locked(1'b1),
        .ext_reset_in(clk_wiz_0_locked),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(xlconstant_1_dout),
        .slowest_sync_clk(clk_wiz_0_axi_clk));
  mipi_block_top_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(clk_wiz_0_locked),
        .dcm_locked(1'b1),
        .ext_reset_in(clk_wiz_0_locked),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_vid_clk));
  mipi_block_top_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(jtag_axi_0_M_AXI_ARADDR),
        .S00_AXI_arprot(jtag_axi_0_M_AXI_ARPROT),
        .S00_AXI_arready(jtag_axi_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .S00_AXI_awprot(jtag_axi_0_M_AXI_AWPROT),
        .S00_AXI_awready(jtag_axi_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .S00_AXI_bready(jtag_axi_0_M_AXI_BREADY),
        .S00_AXI_bresp(jtag_axi_0_M_AXI_BRESP),
        .S00_AXI_bvalid(jtag_axi_0_M_AXI_BVALID),
        .S00_AXI_rdata(jtag_axi_0_M_AXI_RDATA),
        .S00_AXI_rready(jtag_axi_0_M_AXI_RREADY),
        .S00_AXI_rresp(jtag_axi_0_M_AXI_RRESP),
        .S00_AXI_rvalid(jtag_axi_0_M_AXI_RVALID),
        .S00_AXI_wdata(jtag_axi_0_M_AXI_WDATA),
        .S00_AXI_wready(jtag_axi_0_M_AXI_WREADY),
        .S00_AXI_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(jtag_axi_0_M_AXI_WVALID),
        .S01_AXI_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .S01_AXI_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .S01_AXI_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .S01_AXI_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .S01_AXI_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .S01_AXI_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .S01_AXI_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .S01_AXI_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .S01_AXI_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .S01_AXI_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .S01_AXI_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .aclk(clk_wiz_0_axi_clk),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  mipi_block_top_system_ila_0_1 system_ila_0
       (.clk(clk_wiz_0_dbg_clk),
        .probe0(mipi_csi2_rx_subsyst_0_video_out_tdata1),
        .probe1(golden_data),
        .probe2(mipi_top_0_rx_unpack_data),
        .probe3(error_cnt),
        .probe4(mipi_csi2_rx_subsyst_0_video_out_tvalid),
        .probe5(mipi_csi2_rx_subsyst_0_frame_rcvd_pulse_out));
  mipi_block_top_vio_0_1 vio_0
       (.clk(clk_wiz_0_axi_clk),
        .probe_out0(clk_wiz_0_locked));
endmodule
