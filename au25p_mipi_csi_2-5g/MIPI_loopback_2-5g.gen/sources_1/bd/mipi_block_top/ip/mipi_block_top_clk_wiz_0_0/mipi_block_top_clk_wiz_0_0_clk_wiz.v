
// file: mipi_block_top_clk_wiz_0_0.v
// (c) Copyright 2017-2018, 2023 Advanced Micro Devices, Inc. All rights reserved.
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
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
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
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// ____dphy__200.00000______0.000______50.0_______85.182_____76.967
// _axi_clk__300.00000______0.000______50.0_______79.341_____76.967
// _vid_clk__500.00000______0.000______50.0_______72.605_____76.967
// _dbg_clk__500.00000______0.000______50.0_______72.605_____76.967
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_________100.000____________0.010

`timescale 1ps/1ps

module mipi_block_top_clk_wiz_0_0_clk_wiz 

 (// Clock in ports
  // Clock out ports
  output        dphy,
  output        axi_clk,
  output        vid_clk,
  output        dbg_clk,
  input         clk_in1_p,
  input         clk_in1_n
 );
  // Input buffering
  //------------------------------------
wire clk_in1_mipi_block_top_clk_wiz_0_0;
wire clk_in2_mipi_block_top_clk_wiz_0_0;
  IBUFDS clkin1_ibufds
   (.O  (clk_in1_mipi_block_top_clk_wiz_0_0),
    .I  (clk_in1_p),
    .IB (clk_in1_n));




  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        dphy_mipi_block_top_clk_wiz_0_0;
  wire        axi_clk_mipi_block_top_clk_wiz_0_0;
  wire        vid_clk_mipi_block_top_clk_wiz_0_0;
  wire        dbg_clk_mipi_block_top_clk_wiz_0_0;
  wire        clk_out5_mipi_block_top_clk_wiz_0_0;
  wire        clk_out6_mipi_block_top_clk_wiz_0_0;
  wire        clk_out7_mipi_block_top_clk_wiz_0_0;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_mipi_block_top_clk_wiz_0_0;
  wire        clkfboutb_unused;
    wire clkout0b_unused;
   wire clkout1b_unused;
   wire clkout2b_unused;
   wire clkout3b_unused;
   wire clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;


  
    MMCME4_ADV

  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("AUTO"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (15.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (7.500),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (5),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKOUT2_DIVIDE       (3),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT2_USE_FINE_PS  ("FALSE"),
    .CLKOUT3_DIVIDE       (3),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKOUT3_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (10.000))
  
  mmcme4_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_mipi_block_top_clk_wiz_0_0),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (dphy_mipi_block_top_clk_wiz_0_0),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (axi_clk_mipi_block_top_clk_wiz_0_0),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (vid_clk_mipi_block_top_clk_wiz_0_0),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (dbg_clk_mipi_block_top_clk_wiz_0_0),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_mipi_block_top_clk_wiz_0_0),
    .CLKIN1              (clk_in1_mipi_block_top_clk_wiz_0_0),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    .CDDCDONE            (),
    .CDDCREQ             (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (1'b0));

// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------






  BUFG clkout1_buf
   (.O   (dphy),
    .I   (dphy_mipi_block_top_clk_wiz_0_0));


  BUFG clkout2_buf
   (.O   (axi_clk),
    .I   (axi_clk_mipi_block_top_clk_wiz_0_0));

  BUFG clkout3_buf
   (.O   (vid_clk),
    .I   (vid_clk_mipi_block_top_clk_wiz_0_0));

  BUFG clkout4_buf
   (.O   (dbg_clk),
    .I   (dbg_clk_mipi_block_top_clk_wiz_0_0));



endmodule
