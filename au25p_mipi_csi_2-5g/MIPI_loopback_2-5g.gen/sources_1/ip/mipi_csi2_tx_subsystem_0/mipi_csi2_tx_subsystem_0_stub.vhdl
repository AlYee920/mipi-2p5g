-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 30 13:04:32 2023
-- Host        : ETSB-153 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/mipi_csi2_tx_subsystem_0_stub.vhdl
-- Design      : mipi_csi2_tx_subsystem_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mipi_csi2_tx_subsystem_0 is
  Port ( 
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

end mipi_csi2_tx_subsystem_0;

architecture stub of mipi_csi2_tx_subsystem_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aclk,s_axis_aresetn,dphy_clk_200M,txbyteclkhs,clkoutphy_out,pll_lock_out,txclkesc_out,system_rst_out,mmcm_lock_out,interrupt,s_axi_araddr[7:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[7:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,mipi_video_if_mipi_vid_di[5:0],mipi_video_if_mipi_vid_enable,mipi_video_if_mipi_vid_framenum[15:0],mipi_video_if_mipi_vid_hsync,mipi_video_if_mipi_vid_linenum[15:0],mipi_video_if_mipi_vid_pixel[41:0],mipi_video_if_mipi_vid_vc[1:0],mipi_video_if_mipi_vid_vsync,mipi_video_if_mipi_vid_wc[15:0],mipi_phy_if_clk_n,mipi_phy_if_clk_p,mipi_phy_if_data_n[0:0],mipi_phy_if_data_p[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_6598_0,Vivado 2023.1";
begin
end;
