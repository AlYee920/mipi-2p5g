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
// bd_7e2a_mipi_dphy_0_0.v  bd_7e2a_mipi_dphy_0_0.v 
//-----------------------------------------------------------------------------
//
// Filename        : bd_7e2a_mipi_dphy_0_0.v
// Version         : v1.0
// Description     : D-PHY top module. This module consists logic for one
//                   clock lane and configured number of data lanes
// Verilog-Standard: Verilog'2001
//-----------------------------------------------------------------------------
//-- Structure: SWAP
//--               -- top.v (MASTER/TX)
//                     -- tx_fab_top.v
//                     -- tx_ioi.v
//                     -- tx_dphy_reg.v
//--               -- top.v (SLAVE/TX)
//                     -- rx_fab_top.v
//                     -- rx_ioi.v
//                     -- rx_dphy_reg.v
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
module bd_7e2a_mipi_dphy_0_0
#( 
   // DPHY Function Mode
   // Valid values are MASTER (TX) and SLAVE (RX)
   parameter C_DPHY_MODE = "MASTER", 
   // DPHY Data Lanes
   // Valid values are from 1 to 4	   
   parameter C_DPHY_LANES = 1, 
   // DPHY Line Rate in Mbps
   // Valid values are from 80 to 1500 in the order of 1 Mbps for D-PHY v1.1 Spec
   // Valid values are from 80 to 2500 in the order of 1 Mbps for D-PHY v1.2 Spec
   // No real values are allowed in Line Rate	   
   parameter C_HS_LINE_RATE = 2500,
   // Transmit first deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_FIRST_DESKEW_SEQ  =  "false",  
   // Transmit periodic deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_PERIODIC_DESKEW_SEQ  =  "false",  
   // First deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_FIRST_TIME  =  4096,  
   // Periodic deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_PERIODIC_TIME  =  128,
   // Enable deskew sequence detection logic in D-PHY RX for line rates above 1.5 Gbps
   parameter C_RCVE_DESKEW_SEQ  =  "false",  
   // T_LPX protocol timing parameter in ns
   // Default : 50 ns
   // Valid values are from 50 to 100 	   
   parameter C_LPX_PERIOD = 50,
   // Stable clock period in ns
   parameter C_STABLE_CLK_PERIOD = 5.000,
   // Escape mode clock period in ns
   // Valid range is from 50 to 100 ns (10 MHz to 20 MHz)
   // Usually equals to T_LPX timing parameter	   
   parameter C_ESC_CLK_PERIOD = 100.000,
   // T_WAKEUP timing parameter
   // Valid value is 1 ms for MASTER (TX) and SLAVE (RX)  
   parameter C_WAKEUP = 1100,
   // HS [T/R]X Timeout in bytes
   // Valid range is from 1000 to 65541	   
   parameter C_HS_TIMEOUT = 65541,
   // Escape mode timeout in ns
   // TX DPHY use this param as Escape Mode Silence Timeout for LPDT
   // RX DPHY use this param as Escape Mode Timeout for LPDT
   // 32 Bytes x T_LPX(50) x 16  = 25600
   parameter C_ESC_TIMEOUT = 25600,
   // Synchronizer flip-flop stages and arrived using device 
   // characterization metrics
   // Valid range is from 3 to 7	   
   parameter MTBF_SYNC_STAGES = 3,
   parameter C_EN_TIMEOUT_REGS = 0,
   parameter DPHY_PRESET = "None",
   parameter SUPPORT_LEVEL = 1,
   // AXI-Lite Register Interface Enable	   
   parameter C_EN_REG_IF = 1,
   // Additional debug registers	   
   parameter C_EN_DEBUG_REGS = 0,
   // Simulation control
   parameter C_EXAMPLE_SIMULATION = "true",
   // TXPLL input clock frequency in ns
   parameter C_TXPLL_CLKIN_PERIOD = 3.200,
   // byteclkhs clock period derived from line rate  
   parameter C_DIV4_CLK_PERIOD = 3.200,     
   // Calibration Mode for IDELAY in Slave mode of IP
   parameter C_CAL_MODE = "FIXED",
   parameter C_EN_EXT_TAP = "0",
   parameter C_EN_SSC = "0",
   parameter C_EN_DEBUG_TX_CALIB = "0",
   // IDELAY Tap value when calibration mode is Fixed
   parameter C_IDLY_TAP = 0
   )
   (
       input                core_clk,






       input                core_rst,
       output               txclkesc_out,
       output               txbyteclkhs,
       output               clkoutphy_out,
       output               pll_lock_out,
       output               mmcm_lock_out,
       output               system_rst_out,
       output               init_done,

       output               cl_txclkactivehs,

       //Clock lane PPI TX interface
       input                cl_txrequesths,
       
       //Clock lane TX control siganls
       output               cl_stopstate,
       input                cl_enable,
       input                cl_txulpsclk,

       //Clock lane TX escape mode signals
       input                cl_txulpsexit,
       output               cl_ulpsactivenot,


       //Data lane0 PPI TX high speed signals
       input    [7:0]       dl0_txdatahs,
       input                dl0_txrequesths,
       output               dl0_txreadyhs,

       //Data lane0 TX control siganls
       input                dl0_forcetxstopmode,
       output               dl0_stopstate,
       input                dl0_enable,

       //Data lane0 TX escape mode signals
       input                dl0_txrequestesc,
       input                dl0_txlpdtesc,
       input                dl0_txulpsexit,
       output               dl0_ulpsactivenot,
       input                dl0_txulpsesc,
       input    [3:0]       dl0_txtriggeresc,
       input    [7:0]       dl0_txdataesc,
       input                dl0_txvalidesc,
       output               dl0_txreadyesc,






       //AXI4-Lite slave signals for register access
       input                s_axi_aclk,
       input                s_axi_aresetn,
       input    [6:0]       s_axi_awaddr,
       output               s_axi_awready,
       input                s_axi_awvalid,
       input    [6:0]       s_axi_araddr,
       output               s_axi_arready,
       input                s_axi_arvalid,
       input    [31:0]      s_axi_wdata,
       input    [3:0]       s_axi_wstrb,
       output               s_axi_wready,
       input                s_axi_wvalid,
       output   [31:0]      s_axi_rdata,
       output   [1:0]       s_axi_rresp,
       input                s_axi_rready,
       output               s_axi_rvalid,
       output   [1:0]       s_axi_bresp,
       input                s_axi_bready,
       output               s_axi_bvalid,

       //IO I/F signals for MASTER(TX)
       output               clk_txp,
       output               clk_txn,
       output    [C_DPHY_LANES -1:0] data_txp,
       output    [C_DPHY_LANES -1:0] data_txn
   );
bd_7e2a_mipi_dphy_0_0_core inst (
                                                       ////Data lane - 0 IOB signals
.                      txclkesc_out(                      txclkesc_out),
.                      txbyteclkhs(                      txbyteclkhs),
.clkoutphy_out(clkoutphy_out),
.pll_lock_out(pll_lock_out),
.mmcm_lock_out(mmcm_lock_out),
.system_rst_out(system_rst_out),
.init_done(init_done),

.cl_txclkactivehs(cl_txclkactivehs),
.cl_txrequesths(cl_txrequesths),
.cl_stopstate(cl_stopstate),
.cl_enable(cl_enable),
.cl_txulpsclk(cl_txulpsclk),
.cl_txulpsexit(cl_txulpsexit),
.cl_ulpsactivenot(cl_ulpsactivenot),

.dl0_txdatahs(dl0_txdatahs),
.dl0_txrequesths(dl0_txrequesths),
.dl0_txreadyhs(dl0_txreadyhs),
.dl0_forcetxstopmode(dl0_forcetxstopmode),
.dl0_stopstate(dl0_stopstate),
.dl0_enable(dl0_enable),
.dl0_txrequestesc(dl0_txrequestesc),
.dl0_txlpdtesc(dl0_txlpdtesc),
.dl0_txulpsexit(dl0_txulpsexit),
.dl0_ulpsactivenot(dl0_ulpsactivenot),
.dl0_txulpsesc(dl0_txulpsesc),
.dl0_txtriggeresc(dl0_txtriggeresc),
.dl0_txdataesc(dl0_txdataesc),
.dl0_txvalidesc(dl0_txvalidesc),
.dl0_txreadyesc(dl0_txreadyesc),
.s_axi_aclk(s_axi_aclk),
.s_axi_aresetn(s_axi_aresetn),
.s_axi_awaddr(s_axi_awaddr),
.s_axi_awready(s_axi_awready),
.s_axi_awvalid(s_axi_awvalid),
.s_axi_araddr(s_axi_araddr),
.s_axi_arready(s_axi_arready),
.s_axi_arvalid(s_axi_arvalid),
.s_axi_wdata(s_axi_wdata),
.s_axi_wstrb(s_axi_wstrb),
.s_axi_wready(s_axi_wready),
.s_axi_wvalid(s_axi_wvalid),
.s_axi_rdata(s_axi_rdata),
.s_axi_rresp(s_axi_rresp),
.s_axi_rready(s_axi_rready),
.s_axi_rvalid(s_axi_rvalid),
.s_axi_bresp(s_axi_bresp),
.s_axi_bready(s_axi_bready),
.s_axi_bvalid(s_axi_bvalid),
.clk_txp(clk_txp),
.clk_txn(clk_txn),
.data_txp(data_txp),
.data_txn(data_txn),


.core_clk(core_clk),
.core_rst(core_rst) 
);
endmodule