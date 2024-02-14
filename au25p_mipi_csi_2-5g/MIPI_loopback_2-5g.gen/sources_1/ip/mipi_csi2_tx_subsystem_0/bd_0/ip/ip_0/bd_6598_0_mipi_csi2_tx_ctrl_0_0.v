//-----------------------------------------------------------------------------
// (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   : bd_6598_0_mipi_csi2_tx_ctrl_0_0.ttcl
// Description: MIPI CSI2 TX Wrapper file
//---------------------------------------------------------------------------
`timescale 1ps/1ps
`include "mipi_csi2_tx_ctrl_v1_0_4_defines.v"
(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_6598_0_mipi_csi2_tx_ctrl_0_0
#(
  parameter C_S_AXI_ADDR_WIDTH        = 7                       ,
  parameter C_S_AXI_DATA_WIDTH        = 32                      ,
  parameter C_AXIS_TDATA_WIDTH        = 42 ,
  parameter C_AXIS_TUSER_WIDTH        = 96 ,
  parameter C_CSI_LANES               = 1 ,
  parameter C_CSI_DATATYPE            = 'h2A ,        
  parameter C_CSI_LINE_BUFR_DEPTH     = 2048 ,      
  parameter C_CSI_CLK_PRE             = 1 ,      
  parameter C_CSI_PIXEL_MODE          = 1 ,   
  parameter C_CSI_EN_ACTIVELANES      = 0 ,   
  parameter C_EN_REG_BASED_FE_GEN     = 0 ,   
  parameter C_CSI_CRC_ENABLE          = 0 ,   
  parameter C_CSI_VID_INTERFACE       = 1    
) (
// system
 input            s_axis_aclk                     ,
 input            s_axis_aresetn                  ,
 output           master_reset_4dphy              ,
//Slave Interface
 input  [7 :0]    s_axi_awaddr                    ,
 input            s_axi_awvalid                   ,
 output           s_axi_awready                   ,
 input  [31:0]    s_axi_wdata                     ,
 input  [3:0]     s_axi_wstrb                     ,
 input            s_axi_wvalid                    ,
 output           s_axi_wready                    ,
 output [1:0]     s_axi_bresp                     ,
 output           s_axi_bvalid                    ,
 input            s_axi_bready                    ,
 input  [7 :0]    s_axi_araddr                    ,
 input            s_axi_arvalid                   ,
 output           s_axi_arready                   ,
 output [31:0]    s_axi_rdata                     ,
 output [1:0]     s_axi_rresp                     ,
 output           s_axi_rvalid                    ,
 input            s_axi_rready                    ,
 input            cl_txclkactive                  ,
 input            dphy_init_done                  ,
 input            dl_tx_stop_st                  ,


 // Native Video Interface
 input                          vid_vsync   ,
 input                          vid_hsync   ,
 input                          vid_enable  ,
 input [C_AXIS_TDATA_WIDTH-1:0] vid_pxl     ,
 input [1:0]                    vid_vc      ,
 input [15:0]                   vid_framenum,
 input [15:0]                   vid_linenum ,
 input [15:0]                   vid_wc      ,
 input [5:0]                    vid_di      ,
 

 //PPI Interface
 input           txbyteclkhs                      ,
 input           txclkesc                         ,
 input           core_clk_in                      ,
 output          cl_enable                        ,
 output          cl_txrequesths                   ,
 output          cl_txulpsclk                     ,
 output          cl_txulpsexit                    ,
 output    [7:0] dl0_txdatahs                     ,
 output          dl0_txrequesths                  ,
 output          dl0_forcetxstopmode              ,
 output          dl0_enable                       ,
 output          dl0_txskewcalhs                  ,
 input           dl0_txreadyhs                    ,
 output          dl0_txulpsesc                    ,  
 output          dl0_txrequestesc                 ,  
 output          dl0_txulpsexit                   ,  
 input           dl0_ulpsactivenot                ,
 

 
 

 //Interrupt 
 output          interrupt         
);

wire master_reset_4dphy_w;

assign master_reset_4dphy = ~master_reset_4dphy_w;

bd_6598_0_mipi_csi2_tx_ctrl_0_0_core inst 
(
 .s_axis_aclk   (s_axis_aclk      ),
 .s_axis_aresetn(s_axis_aresetn   ),
 .s_axi_awaddr  (s_axi_awaddr     ),
 .s_axi_awvalid (s_axi_awvalid    ),
 .s_axi_awready (s_axi_awready    ),
 .s_axi_wdata   (s_axi_wdata      ),
 .s_axi_wstrb   (s_axi_wstrb      ),
 .s_axi_wvalid  (s_axi_wvalid     ),
 .s_axi_wready  (s_axi_wready     ),
 .s_axi_bresp   (s_axi_bresp      ),
 .s_axi_bvalid  (s_axi_bvalid     ),
 .s_axi_bready  (s_axi_bready     ),
 .s_axi_araddr  (s_axi_araddr     ),
 .s_axi_arvalid (s_axi_arvalid    ),
 .s_axi_arready (s_axi_arready    ),
 .s_axi_rdata   (s_axi_rdata      ),
 .s_axi_rresp   (s_axi_rresp      ),
 .s_axi_rvalid  (s_axi_rvalid     ),
 .s_axi_rready  (s_axi_rready     ),
 .cl_txclkactive(cl_txclkactive   ),
 .dphy_init_done(dphy_init_done   ),
 .dl_tx_stop_st (dl_tx_stop_st    ),
 .vid_vsync   (vid_vsync           ),
 .vid_hsync   (vid_hsync           ),
 .vid_enable  (vid_enable          ),
 .vid_pxl     (vid_pxl             ),
 .vid_vc      (vid_vc              ),
 .vid_framenum(vid_framenum        ),
 .vid_linenum (vid_linenum         ),
 .vid_wc      (vid_wc              ),
 .vid_di      (vid_di              ),    
 
 .txbyteclkhs  (txbyteclkhs        ),       
 .txclkesc  (txclkesc              ),       
 .core_clk_in  (core_clk_in        ),       
 .cl_enable          (cl_enable           ),
 .cl_txrequesths     (cl_txrequesths      ),
 .cl_txulpsclk       (cl_txulpsclk        ),
 .cl_txulpsexit      (cl_txulpsexit       ),
 .dl0_txdatahs       (dl0_txdatahs        ),
 .dl0_txrequesths    (dl0_txrequesths     ),
 .dl0_forcetxstopmode(dl0_forcetxstopmode ),
 .dl0_enable         (dl0_enable          ),
 .dl0_txskewcalhs    (dl0_txskewcalhs      ),  
 .dl0_txreadyhs      (dl0_txreadyhs       ),
 .dl0_txulpsesc      (dl0_txulpsesc       ),
 .dl0_txrequestesc   (dl0_txrequestesc    ),
 .dl0_txulpsexit     (dl0_txulpsexit      ),
 .dl0_ulpsactivenot  (dl0_ulpsactivenot   ),
 
 
 
 //Interrupt 
 .master_reset_4dphy  (master_reset_4dphy_w  ),
 .interrupt           (interrupt           )
);
endmodule
                                   

