//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Fri Nov 17 11:17:15 2023
//Host        : ETSB-153 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (fixed_fabric_100mhz_clk_n,
    fixed_fabric_100mhz_clk_p,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p,
    mipi_phy_if_1_clk_n,
    mipi_phy_if_1_clk_p,
    mipi_phy_if_1_data_n,
    mipi_phy_if_1_data_p);
  input fixed_fabric_100mhz_clk_n;
  input fixed_fabric_100mhz_clk_p;
  output mipi_phy_if_0_clk_n;
  output mipi_phy_if_0_clk_p;
  output [0:0]mipi_phy_if_0_data_n;
  output [0:0]mipi_phy_if_0_data_p;
  input mipi_phy_if_1_clk_n;
  input mipi_phy_if_1_clk_p;
  input [0:0]mipi_phy_if_1_data_n;
  input [0:0]mipi_phy_if_1_data_p;

  wire fixed_fabric_100mhz_clk_n;
  wire fixed_fabric_100mhz_clk_p;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [0:0]mipi_phy_if_0_data_n;
  wire [0:0]mipi_phy_if_0_data_p;
  wire mipi_phy_if_1_clk_n;
  wire mipi_phy_if_1_clk_p;
  wire [0:0]mipi_phy_if_1_data_n;
  wire [0:0]mipi_phy_if_1_data_p;

  design_1 design_1_i
       (.fixed_fabric_100mhz_clk_n(fixed_fabric_100mhz_clk_n),
        .fixed_fabric_100mhz_clk_p(fixed_fabric_100mhz_clk_p),
        .mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p),
        .mipi_phy_if_1_clk_n(mipi_phy_if_1_clk_n),
        .mipi_phy_if_1_clk_p(mipi_phy_if_1_clk_p),
        .mipi_phy_if_1_data_n(mipi_phy_if_1_data_n),
        .mipi_phy_if_1_data_p(mipi_phy_if_1_data_p));
endmodule
