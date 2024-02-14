
// file: bd_6598_0_mipi_dphy_0_0_clock_module_tx.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
// 
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// mmcm_clk_out0__312.50000______0.000______50.0_______83.486_____80.662
// mmcm_clk_out1__10.00000______0.000______50.0______164.300_____80.662
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_________200.000____________0.010

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "bd_6598_0_mipi_dphy_0_0_clock_module_tx,clk_wiz_v6_0_12_0_0,{component_name=bd_6598_0_mipi_dphy_0_0_clock_module_tx,use_phase_alignment=false,use_min_o_jitter=true,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=2,clkin1_period=5.000,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *)

module bd_6598_0_mipi_dphy_0_0_clock_module_tx 
 (
  // Clock out ports
  output        mmcm_clk_out0,
  output        mmcm_clk_out1,
  // Status and control signals
  input         mmcm_reset,
  output        mmcm_locked,
 // Clock in ports
  input         mmcm_clk_in
 );

  bd_6598_0_mipi_dphy_0_0_clock_module_tx_clk_wiz inst
  (
  // Clock out ports  
  .mmcm_clk_out0(mmcm_clk_out0),
  .mmcm_clk_out1(mmcm_clk_out1),
  // Status and control signals               
  .mmcm_reset(mmcm_reset), 
  .mmcm_locked(mmcm_locked),
 // Clock in ports
  .mmcm_clk_in(mmcm_clk_in)
  );

endmodule