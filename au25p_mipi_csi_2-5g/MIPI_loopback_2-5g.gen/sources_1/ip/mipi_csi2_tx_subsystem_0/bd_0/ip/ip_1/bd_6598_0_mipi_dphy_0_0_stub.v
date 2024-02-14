// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 13:03:35 2023
// Host        : ETSB-153 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Al-YeeTan/Desktop/MIPI_loopback_2-5g/MIPI_loopback_2-5g.gen/sources_1/ip/mipi_csi2_tx_subsystem_0/bd_0/ip/ip_1/bd_6598_0_mipi_dphy_0_0_stub.v
// Design      : bd_6598_0_mipi_dphy_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module bd_6598_0_mipi_dphy_0_0(core_clk, core_rst, txclkesc_out, txbyteclkhs, 
  clkoutphy_out, pll_lock_out, mmcm_lock_out, system_rst_out, init_done, cl_txclkactivehs, 
  cl_txrequesths, cl_stopstate, cl_enable, cl_txulpsclk, cl_txulpsexit, cl_ulpsactivenot, 
  dl0_txdatahs, dl0_txrequesths, dl0_txreadyhs, dl0_forcetxstopmode, dl0_stopstate, 
  dl0_enable, dl0_txrequestesc, dl0_txlpdtesc, dl0_txulpsexit, dl0_ulpsactivenot, 
  dl0_txulpsesc, dl0_txtriggeresc, dl0_txdataesc, dl0_txvalidesc, dl0_txreadyesc, clk_txp, 
  clk_txn, data_txp, data_txn)
/* synthesis syn_black_box black_box_pad_pin="core_rst,pll_lock_out,mmcm_lock_out,system_rst_out,init_done,cl_txclkactivehs,cl_txrequesths,cl_stopstate,cl_enable,cl_txulpsclk,cl_txulpsexit,cl_ulpsactivenot,dl0_txdatahs[7:0],dl0_txrequesths,dl0_txreadyhs,dl0_forcetxstopmode,dl0_stopstate,dl0_enable,dl0_txrequestesc,dl0_txlpdtesc,dl0_txulpsexit,dl0_ulpsactivenot,dl0_txulpsesc,dl0_txtriggeresc[3:0],dl0_txdataesc[7:0],dl0_txvalidesc,dl0_txreadyesc,clk_txp,clk_txn,data_txp[0:0],data_txn[0:0]" */
/* synthesis syn_force_seq_prim="core_clk" */
/* synthesis syn_force_seq_prim="txclkesc_out" */
/* synthesis syn_force_seq_prim="txbyteclkhs" */
/* synthesis syn_force_seq_prim="clkoutphy_out" */;
  input core_clk /* synthesis syn_isclock = 1 */;
  input core_rst;
  output txclkesc_out /* synthesis syn_isclock = 1 */;
  output txbyteclkhs /* synthesis syn_isclock = 1 */;
  output clkoutphy_out /* synthesis syn_isclock = 1 */;
  output pll_lock_out;
  output mmcm_lock_out;
  output system_rst_out;
  output init_done;
  output cl_txclkactivehs;
  input cl_txrequesths;
  output cl_stopstate;
  input cl_enable;
  input cl_txulpsclk;
  input cl_txulpsexit;
  output cl_ulpsactivenot;
  input [7:0]dl0_txdatahs;
  input dl0_txrequesths;
  output dl0_txreadyhs;
  input dl0_forcetxstopmode;
  output dl0_stopstate;
  input dl0_enable;
  input dl0_txrequestesc;
  input dl0_txlpdtesc;
  input dl0_txulpsexit;
  output dl0_ulpsactivenot;
  input dl0_txulpsesc;
  input [3:0]dl0_txtriggeresc;
  input [7:0]dl0_txdataesc;
  input dl0_txvalidesc;
  output dl0_txreadyesc;
  output clk_txp;
  output clk_txn;
  output [0:0]data_txp;
  output [0:0]data_txn;
endmodule
