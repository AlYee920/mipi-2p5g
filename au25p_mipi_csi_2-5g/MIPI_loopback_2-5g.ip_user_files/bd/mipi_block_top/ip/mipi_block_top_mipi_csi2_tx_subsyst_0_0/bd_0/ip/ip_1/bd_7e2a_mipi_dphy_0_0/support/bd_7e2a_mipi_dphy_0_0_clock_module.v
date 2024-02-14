// /////////////////////////////////////////////////////////////////
// (c) Copyright 2015 - 2016 Xilinx, Inc. All rights reserved.	
//
// This file contains confidential and proprietary information	
// of Xilinx, Inc. and is protected under U.S. and	
// international copyright and other intellectual property
// laws.							
//
// DISCLAIMER							
// This disclaimer is not a license and does not grant any	
// rights to the materials distributed herewith. Except as	
// otherwise provided in a valid license issued to you by	
// Xilinx, and to the maximum extent permitted by applicable	
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES	
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-	
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	
// (2) Xilinx shall not be liable (whether in contract or tort,	
// including negligence, or under any other theory of		
// liability) for any loss or damage of any kind or nature	
// related to, arising under or in connection with these	
// materials, including for any direct, or any indirect,	
// special, incidental, or consequential loss or damage		
// (including loss of data, profits, goodwill, or any type of	
// loss or damage suffered as a result of any action brought	
// by a third party) even if such damage or loss was		
// reasonably foreseeable or Xilinx had been advised of the	
// possibility of the same.					
//
// CRITICAL APPLICATIONS					
// Xilinx products are not designed or intended to be fail-	
// safe, or for use in any application requiring fail-safe	
// performance, such as life-support or safety devices or	
// systems, Class III medical devices, nuclear facilities,	
// applications related to the deployment of airbags, or any	
// other applications that could lead to death, personal	
// injury, or severe property or environmental damage		
// (individually and collectively, "Critical			
// Applications"). Customer assumes the sole risk and		
// liability of any use of Xilinx products in Critical		
// Applications, subject only to applicable laws and	
// regulations governing limitations on product liability.	
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	
// PART OF THIS FILE AT ALL TIMES.
// ////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------
// bd_7e2a_mipi_dphy_0_0_clock_module.v
//-----------------------------------------------------------------------------
//
// Filename        : bd_7e2a_mipi_dphy_0_0_clock_module.v
// Version         : v1.0
// Description     : MMCM Wrapper
// Verilog-Standard: Verilog'2001
//-----------------------------------------------------------------------------
//-- Structure:
//--            --mipi_dphy_v4_3_dphy_top.v
//--               -- mipi_dphy_v4_3_rx_fab_top.v
//                     -- mipi_dphy_v4_3_rx_clk_lane.v
//                     -- mipi_dphy_v4_3_rx_data_lane.v
//                     -- mipi_dphy_v4_3_rx_dphy_reg.v
//                 -- bd_7e2a_mipi_dphy_0_0_clock_module.v
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      parameters:                             "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_com"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      component instantiations:               "<MODULE>I_<#|FUNC>
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
// Module Declaration
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_7e2a_mipi_dphy_0_0_clock_module
#(
   parameter C_DPHY_LANES = 2,
   parameter MTBF_SYNC_STAGES = 3,
   parameter C_HS_LINE_RATE = 1000,
   parameter C_STABLE_CLK_PERIOD = 10,
   parameter C_TXPLL_CLKIN_PERIOD = 8.0,
   parameter EN_DPHY_IO = 1
   )
   (
       input               mmcm_clk_in,
       output              mmcm_clk_out0,
       output              txbyteclkhs_out,
       output              txclkesc_out,
       output              xiphy_byteclk_out,
       output    ext_mmcm_clk_out,
       output    ext_mmcm_lock_out,
       input               pll_clk_in,
       output              clkoutphy_out,
       output              pll_locked,
       input               pll_reset,
       
       output              mmcm_locked,
       input               mmcm_reset
   );

   wire               pll_clk_in_w;
   wire               pll_locked_w;
   wire               pll_locked_sync;
   reg                clkoutphy_en;
   reg  [7:0]         clkoutphy_en_cntr;
   //TX MMCM Instantiation
  bd_7e2a_mipi_dphy_0_0_clock_module_tx  bd_7e2a_mipi_dphy_0_0_clock_module_tx_i
   (
       .mmcm_clk_in             (mmcm_clk_in),    //input               core_ref_clk,
       .mmcm_clk_out0           (mmcm_clk_out0),  //output              mmcm_clk_out0,
       .mmcm_clk_out1           (txclkesc_out),   //output              mmcm_clk_out1,
       .mmcm_locked             (mmcm_locked),    //output              mmcm_locked,
       .mmcm_reset              (mmcm_reset)      //input               mmcm_reset,
   );



// This below logic will not get generated for Design (i.e. It will be
// generated for Exdes)
// As this module itself will not get generated if support level is 0
// This module is being used for Exdes So below logic has to be there

// ONLY FOR VERSAL 
//
// This below logic will not get generated for Design (i.e. It will be
// generated for Exdes)
// As this module itself will not get generated if support level is 0
// This module is being used for Exdes So below logic has to be there

endmodule
