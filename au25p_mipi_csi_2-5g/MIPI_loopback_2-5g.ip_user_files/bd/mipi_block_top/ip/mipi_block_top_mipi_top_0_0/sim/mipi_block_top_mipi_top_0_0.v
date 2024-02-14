// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:mipi_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mipi_block_top_mipi_top_0_0 (
  reset_n,
  led,
  start_transfer_n,
  pixel_clk,
  mipi_vid_di_tx,
  mipi_vid_enable_tx,
  mipi_vid_hsync_tx,
  mipi_vid_vsync_tx,
  mipi_vid_framenum_tx,
  mipi_vid_linenum_tx,
  mipi_vid_pixeldata_tx,
  mipi_vid_vc_tx,
  mipi_vid_wc_tx,
  mipi_vid_tdata_rx,
  mipi_vid_tvalid_rx,
  mipi_vid_tready_rx,
  golden_data,
  rx_unpack_data_1P,
  error_cnt
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
output wire [3 : 0] led;
input wire start_transfer_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mipi_block_top_clk_wiz_0_0_dphy, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *)
input wire pixel_clk;
output wire [5 : 0] mipi_vid_di_tx;
output wire mipi_vid_enable_tx;
output wire mipi_vid_hsync_tx;
output wire mipi_vid_vsync_tx;
output wire [15 : 0] mipi_vid_framenum_tx;
output wire [15 : 0] mipi_vid_linenum_tx;
output wire [41 : 0] mipi_vid_pixeldata_tx;
output wire [1 : 0] mipi_vid_vc_tx;
output wire [15 : 0] mipi_vid_wc_tx;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mipi_vid_rx TDATA" *)
input wire [15 : 0] mipi_vid_tdata_rx;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mipi_vid_rx TVALID" *)
input wire mipi_vid_tvalid_rx;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mipi_vid_rx, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mipi_vid_rx TREADY" *)
output wire mipi_vid_tready_rx;
output wire [15 : 0] golden_data;
output wire [15 : 0] rx_unpack_data_1P;
output wire [7 : 0] error_cnt;

  mipi_top #(
    .NUM_DATA_LANE(4),
    .PIXEL_BIT(16),
    .PACK_BIT(48),
    .HSA(1),
    .HBP(1),
    .HFP(1),
    .HACT_CNT(1920),
    .VSA(0),
    .VBP(0),
    .VFP(0),
    .VACT_CNT(1080),
    .DATATYPE(6'B101110)
  ) inst (
    .reset_n(reset_n),
    .led(led),
    .start_transfer_n(start_transfer_n),
    .pixel_clk(pixel_clk),
    .mipi_vid_di_tx(mipi_vid_di_tx),
    .mipi_vid_enable_tx(mipi_vid_enable_tx),
    .mipi_vid_hsync_tx(mipi_vid_hsync_tx),
    .mipi_vid_vsync_tx(mipi_vid_vsync_tx),
    .mipi_vid_framenum_tx(mipi_vid_framenum_tx),
    .mipi_vid_linenum_tx(mipi_vid_linenum_tx),
    .mipi_vid_pixeldata_tx(mipi_vid_pixeldata_tx),
    .mipi_vid_vc_tx(mipi_vid_vc_tx),
    .mipi_vid_wc_tx(mipi_vid_wc_tx),
    .mipi_vid_tdata_rx(mipi_vid_tdata_rx),
    .mipi_vid_tvalid_rx(mipi_vid_tvalid_rx),
    .mipi_vid_tready_rx(mipi_vid_tready_rx),
    .golden_data(golden_data),
    .rx_unpack_data_1P(rx_unpack_data_1P),
    .error_cnt(error_cnt)
  );
endmodule
