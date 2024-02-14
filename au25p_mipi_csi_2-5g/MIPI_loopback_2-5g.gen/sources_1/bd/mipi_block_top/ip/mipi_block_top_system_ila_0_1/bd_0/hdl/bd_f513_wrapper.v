//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f513_wrapper.bd
//Design : bd_f513_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f513_wrapper
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  input clk;
  input [23:0]probe0;
  input [23:0]probe1;
  input [23:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;

  wire clk;
  wire [23:0]probe0;
  wire [23:0]probe1;
  wire [23:0]probe2;
  wire [7:0]probe3;
  wire [0:0]probe4;
  wire [0:0]probe5;

  bd_f513 bd_f513_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5));
endmodule
