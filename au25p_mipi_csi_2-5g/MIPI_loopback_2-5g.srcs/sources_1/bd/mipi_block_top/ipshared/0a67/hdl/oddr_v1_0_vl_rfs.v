// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2017 12:44:58 PM
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module oddr_v1_0_3_oddr #(
		parameter C_FAMILY             = "kintex7",
                parameter SIM_DEVICE           = "versal")
		(
    input clk_in,
    output clk_out
    );
    
    
generate
        if    (C_FAMILY == "versal")
            begin
            
       //   ODDRE1    : In order to incorporate this function into the design,
            //   Verilog   : the following instance declaration needs to be placed
            //  instance   : in the body of the design code.  The instance name
            // declaration : (ODDRE1_inst) and/or the port declarations within the
            //    code     : parenthesis may be changed to properly reference and
            //             : connect this function to the design.  All inputs
            //             : and outputs must be connected.
            
            
               // ODDRE1: Dedicated Dual Data Rate (DDR) Output Register
               //         Versal
               // AMD HDL Language Template, version 2017.1
            
               ODDRE1 #(
                  .IS_C_INVERTED(1'b0),  // Optional inversion for clk_in
                  .IS_D1_INVERTED(1'b0), // Optional inversion for D1
                  .IS_D2_INVERTED(1'b0), // Optional inversion for D2
                  .SRVAL(1'b0),           // Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
                  .SIM_DEVICE(SIM_DEVICE)
               )
               ODDRE1_inst (
                  .Q(clk_out),   // 1-bit output: Data output to IOB
                  .C(clk_in),   // 1-bit input: High-speed clock input
                  .D1(1'b1), // 1-bit input: Parallel data input 1
                  .D2(1'b0), // 1-bit input: Parallel data input 2
                  .SR(1'b0)  // 1-bit input: Active High Async Reset
               );    
    
		end
        else begin
        if    (C_FAMILY == "kintexu" || C_FAMILY == "kintexuplus" || C_FAMILY == "virtexu" || C_FAMILY == "virtexuplus" || C_FAMILY == "zynquplus")
            begin
            
       //   ODDRE1    : In order to incorporate this function into the design,
            //   Verilog   : the following instance declaration needs to be placed
            //  instance   : in the body of the design code.  The instance name
            // declaration : (ODDRE1_inst) and/or the port declarations within the
            //    code     : parenthesis may be changed to properly reference and
            //             : connect this function to the design.  All inputs
            //             : and outputs must be connected.
            
            
               // ODDRE1: Dedicated Dual Data Rate (DDR) Output Register
               //         UltraScale / UltraScale+
               // AMD HDL Language Template, version 2017.1
            
               ODDRE1 #(
                  .IS_C_INVERTED(1'b0),  // Optional inversion for clk_in
                  .IS_D1_INVERTED(1'b0), // Optional inversion for D1
                  .IS_D2_INVERTED(1'b0), // Optional inversion for D2
                  .SRVAL(1'b0)           // Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
               )
               ODDRE1_inst (
                  .Q(clk_out),   // 1-bit output: Data output to IOB
                  .C(clk_in),   // 1-bit input: High-speed clock input
                  .D1(1'b1), // 1-bit input: Parallel data input 1
                  .D2(1'b0), // 1-bit input: Parallel data input 2
                  .SR(1'b0)  // 1-bit input: Active High Async Reset
               );    
    
		end
       else
       begin
               
    //      ODDR     : In order to incorporate this function into the design,
       //     Verilog   : the following instance declaration needs to be placed
       //    instance   : in the body of the design code.  The instance name
       //   declaration : (ODDR_inst) and/or the port declarations within the
       //      code     : parenthesis may be changed to properly reference and
       //               : connect this function to the design.  Delete or comment
       //               : out inputs/outs that are not necessary.
           
          // ODDR: Output Double Data Rate Output Register with Set, Reset
          //       and Clock Enable.
          //       Series7
          // AMD HDL Language Template, version 2017.1
       
          ODDR #(
             .DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
             .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
             .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
          ) ODDR_inst (
             .Q(clk_out),   // 1-bit DDR output
             .C(clk_in),   // 1-bit clock input
             .CE(1'b1), // 1-bit clock enable input
             .D1(1'b1), // 1-bit data input (positive edge)
             .D2(1'b0), // 1-bit data input (negative edge)
             .R(1'b0),   // 1-bit reset
             .S(1'b0)    // 1-bit set
          );
	   end
	   end
   endgenerate                    
                                                                                                                                             
endmodule


