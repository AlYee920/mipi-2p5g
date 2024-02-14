`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 08:37:33 AM
// Design Name: 
// Module Name: mipi_sim
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


module mipi_sim();

wire clk_channel_n, clk_channel_p, data_channel_n, data_channel_p;

reg fixed_fabric_clk;

reg reset = 1'b0;

initial begin
    fixed_fabric_clk = 1'b0;
    forever begin
        #5;
        fixed_fabric_clk = ~fixed_fabric_clk;
    end
end

initial begin
    #20 reset = 1'b1;
    //forever begin
     //   #30000 reset = 1'b0;
     //   #10 reset = 1'b1;
   // end
end

mipi_block_top_wrapper dut
   (
    .fixed_fabric_100mhz_clk_n   (~fixed_fabric_clk),
    .fixed_fabric_100mhz_clk_p   (fixed_fabric_clk),
    .mipi_phy_if_0_clk_n         (clk_channel_n),
    .mipi_phy_if_0_clk_p         (clk_channel_p),
    .mipi_phy_if_0_data_n        (data_channel_n),
    .mipi_phy_if_0_data_p        (data_channel_p),
    .mipi_phy_if_1_clk_n         (clk_channel_n),
    .mipi_phy_if_1_clk_p         (clk_channel_p),
    .mipi_phy_if_1_data_n        (data_channel_n),
    .mipi_phy_if_1_data_p        (data_channel_p)
    );
endmodule
