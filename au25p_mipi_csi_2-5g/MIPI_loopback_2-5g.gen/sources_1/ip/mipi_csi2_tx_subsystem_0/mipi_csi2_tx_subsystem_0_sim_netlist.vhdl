-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 30 13:04:32 2023
-- Host        : ETSB-153 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/mipi_csi2_tx_subsystem_0_sim_netlist.vhdl
-- Design      : mipi_csi2_tx_subsystem_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mipi_csi2_tx_subsystem_0_bd_6598_0 is
  port (
    clkoutphy_out : out STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    mipi_phy_if_clk_n : out STD_LOGIC;
    mipi_phy_if_clk_p : out STD_LOGIC;
    mipi_phy_if_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_phy_if_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_video_if_mipi_vid_di : in STD_LOGIC_VECTOR ( 5 downto 0 );
    mipi_video_if_mipi_vid_enable : in STD_LOGIC;
    mipi_video_if_mipi_vid_framenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mipi_video_if_mipi_vid_hsync : in STD_LOGIC;
    mipi_video_if_mipi_vid_linenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mipi_video_if_mipi_vid_pixel : in STD_LOGIC_VECTOR ( 41 downto 0 );
    mipi_video_if_mipi_vid_vc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_video_if_mipi_vid_vsync : in STD_LOGIC;
    mipi_video_if_mipi_vid_wc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mmcm_lock_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    txclkesc_out : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mipi_csi2_tx_subsystem_0_bd_6598_0 : entity is "mipi_csi2_tx_subsystem_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mipi_csi2_tx_subsystem_0_bd_6598_0 : entity is "bd_6598_0";
end mipi_csi2_tx_subsystem_0_bd_6598_0;

architecture STRUCTURE of mipi_csi2_tx_subsystem_0_bd_6598_0 is
  component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_csi2_tx_ctrl_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    master_reset_4dphy : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cl_txclkactive : in STD_LOGIC;
    dphy_init_done : in STD_LOGIC;
    dl_tx_stop_st : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_enable : in STD_LOGIC;
    vid_pxl : in STD_LOGIC_VECTOR ( 41 downto 0 );
    vid_vc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_framenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_linenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_wc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_di : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txbyteclkhs : in STD_LOGIC;
    txclkesc : in STD_LOGIC;
    core_clk_in : in STD_LOGIC;
    cl_enable : out STD_LOGIC;
    cl_txrequesths : out STD_LOGIC;
    cl_txulpsclk : out STD_LOGIC;
    cl_txulpsexit : out STD_LOGIC;
    dl0_txdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txrequesths : out STD_LOGIC;
    dl0_forcetxstopmode : out STD_LOGIC;
    dl0_enable : out STD_LOGIC;
    dl0_txskewcalhs : out STD_LOGIC;
    dl0_txreadyhs : in STD_LOGIC;
    dl0_txulpsesc : out STD_LOGIC;
    dl0_txrequestesc : out STD_LOGIC;
    dl0_txulpsexit : out STD_LOGIC;
    dl0_ulpsactivenot : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  end component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_csi2_tx_ctrl_0_0;
  component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_dphy_0_0 is
  port (
    core_clk : in STD_LOGIC;
    core_rst : in STD_LOGIC;
    txclkesc_out : out STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    clkoutphy_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    mmcm_lock_out : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    init_done : out STD_LOGIC;
    cl_txclkactivehs : out STD_LOGIC;
    cl_txrequesths : in STD_LOGIC;
    cl_stopstate : out STD_LOGIC;
    cl_enable : in STD_LOGIC;
    cl_txulpsclk : in STD_LOGIC;
    cl_txulpsexit : in STD_LOGIC;
    cl_ulpsactivenot : out STD_LOGIC;
    dl0_txdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txrequesths : in STD_LOGIC;
    dl0_txreadyhs : out STD_LOGIC;
    dl0_forcetxstopmode : in STD_LOGIC;
    dl0_stopstate : out STD_LOGIC;
    dl0_enable : in STD_LOGIC;
    dl0_txrequestesc : in STD_LOGIC;
    dl0_txlpdtesc : in STD_LOGIC;
    dl0_txulpsexit : in STD_LOGIC;
    dl0_ulpsactivenot : out STD_LOGIC;
    dl0_txulpsesc : in STD_LOGIC;
    dl0_txtriggeresc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dl0_txdataesc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_txvalidesc : in STD_LOGIC;
    dl0_txreadyesc : out STD_LOGIC;
    clk_txp : out STD_LOGIC;
    clk_txn : out STD_LOGIC;
    data_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_txn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_dphy_0_0;
  signal mipi_csi2_tx_ctrl_0_master_reset_4dphy : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT : STD_LOGIC;
  signal mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT : STD_LOGIC;
  signal mipi_dphy_0_cl_txclkactivehs : STD_LOGIC;
  signal mipi_dphy_0_dl0_stopstate : STD_LOGIC;
  signal mipi_dphy_0_init_done : STD_LOGIC;
  signal \^txbyteclkhs\ : STD_LOGIC;
  signal \^txclkesc_out\ : STD_LOGIC;
  signal NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkoutphy_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKOUTPHY_OUT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkoutphy_out : signal is "XIL_INTERFACENAME CLK.CLKOUTPHY_OUT, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_clkoutphy_out, FREQ_HZ 2500000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of dphy_clk_200M : signal is "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK";
  attribute X_INTERFACE_PARAMETER of dphy_clk_200M : signal is "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN bd_6598_0_dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_enable : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_ENABLE";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_hsync : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_HSYNC";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_vsync : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VSYNC";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_ACLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axis_aresetn, CLK_DOMAIN bd_6598_0_s_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of txbyteclkhs : signal is "xilinx.com:signal:clock:1.0 CLK.TXBYTECLKHS CLK";
  attribute X_INTERFACE_PARAMETER of txbyteclkhs : signal is "XIL_INTERFACENAME CLK.TXBYTECLKHS, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of txclkesc_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXCLKESC_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txclkesc_out : signal is "XIL_INTERFACENAME CLK.TXCLKESC_OUT, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txclkesc_out, FREQ_HZ 10000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_di : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_DI";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_framenum : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_FRAMENUM";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_linenum : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_LINENUM";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_pixel : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_PIXEL";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_vc : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VC";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_wc : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_WC";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_6598_0_s_axis_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  txbyteclkhs <= \^txbyteclkhs\;
  txclkesc_out <= \^txclkesc_out\;
mipi_csi2_tx_ctrl_0: component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_csi2_tx_ctrl_0_0
     port map (
      cl_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE,
      cl_txclkactive => mipi_dphy_0_cl_txclkactivehs,
      cl_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS,
      cl_txulpsclk => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK,
      cl_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT,
      core_clk_in => dphy_clk_200M,
      dl0_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE,
      dl0_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE,
      dl0_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS(7 downto 0),
      dl0_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS,
      dl0_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC,
      dl0_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS,
      dl0_txskewcalhs => NLW_mipi_csi2_tx_ctrl_0_dl0_txskewcalhs_UNCONNECTED,
      dl0_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC,
      dl0_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT,
      dl0_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT,
      dl_tx_stop_st => mipi_dphy_0_dl0_stopstate,
      dphy_init_done => mipi_dphy_0_init_done,
      interrupt => interrupt,
      master_reset_4dphy => mipi_csi2_tx_ctrl_0_master_reset_4dphy,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      txbyteclkhs => \^txbyteclkhs\,
      txclkesc => \^txclkesc_out\,
      vid_di(5 downto 0) => mipi_video_if_mipi_vid_di(5 downto 0),
      vid_enable => mipi_video_if_mipi_vid_enable,
      vid_framenum(15 downto 0) => mipi_video_if_mipi_vid_framenum(15 downto 0),
      vid_hsync => mipi_video_if_mipi_vid_hsync,
      vid_linenum(15 downto 0) => mipi_video_if_mipi_vid_linenum(15 downto 0),
      vid_pxl(41 downto 0) => mipi_video_if_mipi_vid_pixel(41 downto 0),
      vid_vc(1 downto 0) => mipi_video_if_mipi_vid_vc(1 downto 0),
      vid_vsync => mipi_video_if_mipi_vid_vsync,
      vid_wc(15 downto 0) => mipi_video_if_mipi_vid_wc(15 downto 0)
    );
mipi_dphy_0: component mipi_csi2_tx_subsystem_0_bd_6598_0_mipi_dphy_0_0
     port map (
      cl_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_ENABLE,
      cl_stopstate => NLW_mipi_dphy_0_cl_stopstate_UNCONNECTED,
      cl_txclkactivehs => mipi_dphy_0_cl_txclkactivehs,
      cl_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXREQUESTHS,
      cl_txulpsclk => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSCLK,
      cl_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_CL_TXULPSEXIT,
      cl_ulpsactivenot => NLW_mipi_dphy_0_cl_ulpsactivenot_UNCONNECTED,
      clk_txn => mipi_phy_if_clk_n,
      clk_txp => mipi_phy_if_clk_p,
      clkoutphy_out => clkoutphy_out,
      core_clk => dphy_clk_200M,
      core_rst => mipi_csi2_tx_ctrl_0_master_reset_4dphy,
      data_txn(0) => mipi_phy_if_data_n(0),
      data_txp(0) => mipi_phy_if_data_p(0),
      dl0_enable => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ENABLE,
      dl0_forcetxstopmode => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_FORCETXSTOPMODE,
      dl0_stopstate => mipi_dphy_0_dl0_stopstate,
      dl0_txdataesc(7 downto 0) => B"00000000",
      dl0_txdatahs(7 downto 0) => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXDATAHS(7 downto 0),
      dl0_txlpdtesc => '0',
      dl0_txreadyesc => NLW_mipi_dphy_0_dl0_txreadyesc_UNCONNECTED,
      dl0_txreadyhs => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREADYHS,
      dl0_txrequestesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTESC,
      dl0_txrequesths => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXREQUESTHS,
      dl0_txtriggeresc(3 downto 0) => B"0000",
      dl0_txulpsesc => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSESC,
      dl0_txulpsexit => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_TXULPSEXIT,
      dl0_txvalidesc => '0',
      dl0_ulpsactivenot => mipi_csi2_tx_ctrl_0_tx_mipi_ppi_if_DL0_ULPSACTIVENOT,
      init_done => mipi_dphy_0_init_done,
      mmcm_lock_out => mmcm_lock_out,
      pll_lock_out => pll_lock_out,
      system_rst_out => system_rst_out,
      txbyteclkhs => \^txbyteclkhs\,
      txclkesc_out => \^txclkesc_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mipi_csi2_tx_subsystem_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    txbyteclkhs : out STD_LOGIC;
    clkoutphy_out : out STD_LOGIC;
    pll_lock_out : out STD_LOGIC;
    txclkesc_out : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    mmcm_lock_out : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    mipi_video_if_mipi_vid_di : in STD_LOGIC_VECTOR ( 5 downto 0 );
    mipi_video_if_mipi_vid_enable : in STD_LOGIC;
    mipi_video_if_mipi_vid_framenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mipi_video_if_mipi_vid_hsync : in STD_LOGIC;
    mipi_video_if_mipi_vid_linenum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mipi_video_if_mipi_vid_pixel : in STD_LOGIC_VECTOR ( 41 downto 0 );
    mipi_video_if_mipi_vid_vc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_video_if_mipi_vid_vsync : in STD_LOGIC;
    mipi_video_if_mipi_vid_wc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mipi_phy_if_clk_n : out STD_LOGIC;
    mipi_phy_if_clk_p : out STD_LOGIC;
    mipi_phy_if_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_phy_if_data_p : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mipi_csi2_tx_subsystem_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mipi_csi2_tx_subsystem_0 : entity is "mipi_csi2_tx_subsystem_0,bd_6598_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mipi_csi2_tx_subsystem_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mipi_csi2_tx_subsystem_0 : entity is "bd_6598_0,Vivado 2023.1";
end mipi_csi2_tx_subsystem_0;

architecture STRUCTURE of mipi_csi2_tx_subsystem_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "mipi_csi2_tx_subsystem_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkoutphy_out : signal is "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkoutphy_out : signal is "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 2500000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_clkoutphy_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dphy_clk_200M : signal is "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK";
  attribute X_INTERFACE_PARAMETER of dphy_clk_200M : signal is "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_dphy_clk_200M, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_enable : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_ENABLE";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_hsync : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_HSYNC";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_vsync : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VSYNC";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_wvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6598_0_s_axis_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txbyteclkhs : signal is "xilinx.com:signal:clock:1.0 CLK.txbyteclkhs CLK";
  attribute X_INTERFACE_PARAMETER of txbyteclkhs : signal is "XIL_INTERFACENAME CLK.txbyteclkhs, FREQ_HZ 312500000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txbyteclkhs, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txclkesc_out : signal is "xilinx.com:signal:clock:1.0 CLK.txclkesc_out CLK";
  attribute X_INTERFACE_PARAMETER of txclkesc_out : signal is "XIL_INTERFACENAME CLK.txclkesc_out, FREQ_HZ 10000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_6598_0_mipi_dphy_0_0_txclkesc_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_di : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_DI";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_framenum : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_FRAMENUM";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_linenum : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_LINENUM";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_pixel : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_PIXEL";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_vc : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_VC";
  attribute X_INTERFACE_INFO of mipi_video_if_mipi_vid_wc : signal is "xilinx.com:interface:mipi_vid:1.0 mipi_video_if MIPI_VID_WC";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.mipi_csi2_tx_subsystem_0_bd_6598_0
     port map (
      clkoutphy_out => clkoutphy_out,
      dphy_clk_200M => dphy_clk_200M,
      interrupt => interrupt,
      mipi_phy_if_clk_n => mipi_phy_if_clk_n,
      mipi_phy_if_clk_p => mipi_phy_if_clk_p,
      mipi_phy_if_data_n(0) => mipi_phy_if_data_n(0),
      mipi_phy_if_data_p(0) => mipi_phy_if_data_p(0),
      mipi_video_if_mipi_vid_di(5 downto 0) => mipi_video_if_mipi_vid_di(5 downto 0),
      mipi_video_if_mipi_vid_enable => mipi_video_if_mipi_vid_enable,
      mipi_video_if_mipi_vid_framenum(15 downto 0) => mipi_video_if_mipi_vid_framenum(15 downto 0),
      mipi_video_if_mipi_vid_hsync => mipi_video_if_mipi_vid_hsync,
      mipi_video_if_mipi_vid_linenum(15 downto 0) => mipi_video_if_mipi_vid_linenum(15 downto 0),
      mipi_video_if_mipi_vid_pixel(41 downto 0) => mipi_video_if_mipi_vid_pixel(41 downto 0),
      mipi_video_if_mipi_vid_vc(1 downto 0) => mipi_video_if_mipi_vid_vc(1 downto 0),
      mipi_video_if_mipi_vid_vsync => mipi_video_if_mipi_vid_vsync,
      mipi_video_if_mipi_vid_wc(15 downto 0) => mipi_video_if_mipi_vid_wc(15 downto 0),
      mmcm_lock_out => mmcm_lock_out,
      pll_lock_out => pll_lock_out,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      system_rst_out => system_rst_out,
      txbyteclkhs => txbyteclkhs,
      txclkesc_out => txclkesc_out
    );
end STRUCTURE;
