-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jan 30 11:02:36 2024
-- Host        : ETSB-153 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/bd/mipi_block_top/mipi_block_top_stub.vhdl
-- Design      : mipi_block_top
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mipi_block_top is
  Port ( 
    bg0_pin6_nc_0 : in STD_LOGIC;
    bg2_pin6_nc_0 : in STD_LOGIC;
    clk_out_0 : out STD_LOGIC;
    fixed_fabric_100mhz_clk_n : in STD_LOGIC;
    fixed_fabric_100mhz_clk_p : in STD_LOGIC;
    mipi_phy_if_0_clk_n : out STD_LOGIC;
    mipi_phy_if_0_clk_p : out STD_LOGIC;
    mipi_phy_if_0_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_phy_if_0_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_phy_if_clk_n : in STD_LOGIC;
    mipi_phy_if_clk_p : in STD_LOGIC;
    mipi_phy_if_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mipi_phy_if_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end mipi_block_top;

architecture stub of mipi_block_top is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bg0_pin6_nc_0,bg2_pin6_nc_0,clk_out_0,fixed_fabric_100mhz_clk_n,fixed_fabric_100mhz_clk_p,mipi_phy_if_0_clk_n,mipi_phy_if_0_clk_p,mipi_phy_if_0_data_n[0:0],mipi_phy_if_0_data_p[0:0],mipi_phy_if_clk_n,mipi_phy_if_clk_p,mipi_phy_if_data_n[3:0],mipi_phy_if_data_p[3:0]";
begin
end;