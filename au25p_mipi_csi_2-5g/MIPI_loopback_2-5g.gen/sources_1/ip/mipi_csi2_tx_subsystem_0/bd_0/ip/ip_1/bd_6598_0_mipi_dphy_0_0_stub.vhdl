-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Oct 30 13:03:35 2023
-- Host        : ETSB-153 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/bd_0/ip/ip_1/bd_6598_0_mipi_dphy_0_0_stub.vhdl
-- Design      : bd_6598_0_mipi_dphy_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_6598_0_mipi_dphy_0_0 is
  Port ( 
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

end bd_6598_0_mipi_dphy_0_0;

architecture stub of bd_6598_0_mipi_dphy_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "core_clk,core_rst,txclkesc_out,txbyteclkhs,clkoutphy_out,pll_lock_out,mmcm_lock_out,system_rst_out,init_done,cl_txclkactivehs,cl_txrequesths,cl_stopstate,cl_enable,cl_txulpsclk,cl_txulpsexit,cl_ulpsactivenot,dl0_txdatahs[7:0],dl0_txrequesths,dl0_txreadyhs,dl0_forcetxstopmode,dl0_stopstate,dl0_enable,dl0_txrequestesc,dl0_txlpdtesc,dl0_txulpsexit,dl0_ulpsactivenot,dl0_txulpsesc,dl0_txtriggeresc[3:0],dl0_txdataesc[7:0],dl0_txvalidesc,dl0_txreadyesc,clk_txp,clk_txn,data_txp[0:0],data_txn[0:0]";
begin
end;
