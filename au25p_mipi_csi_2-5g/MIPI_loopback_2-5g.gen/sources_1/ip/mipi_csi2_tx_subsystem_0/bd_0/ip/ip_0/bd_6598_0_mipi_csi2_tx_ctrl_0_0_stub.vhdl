-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 30 13:03:32 2023
-- Host        : ETSB-153 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/bd_0/ip/ip_0/bd_6598_0_mipi_csi2_tx_ctrl_0_0_stub.vhdl
-- Design      : bd_6598_0_mipi_csi2_tx_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_6598_0_mipi_csi2_tx_ctrl_0_0 is
  Port ( 
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

end bd_6598_0_mipi_csi2_tx_ctrl_0_0;

architecture stub of bd_6598_0_mipi_csi2_tx_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aclk,s_axis_aresetn,master_reset_4dphy,s_axi_awaddr[7:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[7:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_txclkactive,dphy_init_done,dl_tx_stop_st,vid_vsync,vid_hsync,vid_enable,vid_pxl[41:0],vid_vc[1:0],vid_framenum[15:0],vid_linenum[15:0],vid_wc[15:0],vid_di[5:0],txbyteclkhs,txclkesc,core_clk_in,cl_enable,cl_txrequesths,cl_txulpsclk,cl_txulpsexit,dl0_txdatahs[7:0],dl0_txrequesths,dl0_forcetxstopmode,dl0_enable,dl0_txskewcalhs,dl0_txreadyhs,dl0_txulpsesc,dl0_txrequestesc,dl0_txulpsexit,dl0_ulpsactivenot,interrupt";
begin
end;
