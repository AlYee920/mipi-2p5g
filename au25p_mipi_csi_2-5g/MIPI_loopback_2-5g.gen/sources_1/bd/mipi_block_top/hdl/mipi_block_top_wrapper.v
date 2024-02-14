//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2_AR000035847 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb  6 11:03:12 2024
//Host        : ETSB-153 running 64-bit major release  (build 9200)
//Command     : generate_target mipi_block_top_wrapper.bd
//Design      : mipi_block_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mipi_block_top_wrapper
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
  output clk_out_0;
  input fixed_fabric_100mhz_clk_n;
  input fixed_fabric_100mhz_clk_p;
  input mipi_phy_if_clk_n;
  input mipi_phy_if_clk_p;
  input [3:0]mipi_phy_if_data_n;
  input [3:0]mipi_phy_if_data_p;

  wire bg0_pin6_nc_0;
  wire bg2_pin6_nc_0;
  wire clk_out_0;
  wire fixed_fabric_100mhz_clk_n;
  wire fixed_fabric_100mhz_clk_p;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [3:0]mipi_phy_if_data_n;
  wire [3:0]mipi_phy_if_data_p;

  mipi_block_top mipi_block_top_i
       (.bg0_pin6_nc_0(bg0_pin6_nc_0),
        .bg2_pin6_nc_0(bg2_pin6_nc_0),
        .clk_out_0(clk_out_0),
        .fixed_fabric_100mhz_clk_n(fixed_fabric_100mhz_clk_n),
        .fixed_fabric_100mhz_clk_p(fixed_fabric_100mhz_clk_p),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p));
endmodule
