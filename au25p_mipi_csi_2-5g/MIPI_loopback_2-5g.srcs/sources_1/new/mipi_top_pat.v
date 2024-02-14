
// synopsys translate_off
`timescale 1 ns / 1 ps													
// synopsys translate_on

module mipi_top #(   //csi2 example design
    parameter NUM_DATA_LANE = 4, //unused
    parameter PIXEL_BIT  = 24, 
    parameter PACK_BIT   = 48,
    parameter HSA		 = 1,  //minimum value is pixel cnt value, eg: RGB888 - 2
    parameter HBP		 = 1,   //minimum value is pixel cnt value, eg: RGB888 - 2
    parameter HFP		 = 1, //1024
    parameter HACT_CNT	 = 1920, //1920
    parameter VSA		 = 0,
    parameter VBP		 = 0,
    parameter VFP       = 0, //100
    parameter VACT_CNT  = 1080, //1080
    parameter DATATYPE  = 6'h24    //24 - RGB888, 2A - RAW8 , 2d - raw14
)(
input 			reset_n,  //sw5
output [3:0]    led,

input           start_transfer_n,
input			pixel_clk,	//300Mhz vid

//TX Video Native
// output [5:0]    mipi_vid_di_tx,
// output          mipi_vid_enable_tx,
// output          mipi_vid_hsync_tx,
// output          mipi_vid_vsync_tx,
// output [15:0]   mipi_vid_framenum_tx,
// output [15:0]   mipi_vid_linenum_tx,
// output [41:0]   mipi_vid_pixeldata_tx,
// output [1:0]    mipi_vid_vc_tx,//virtual channel
// output [15:0]   mipi_vid_wc_tx,//wordcount

//RX Video output
input [PIXEL_BIT-1:0] mipi_vid_tdata_rx,
input        mipi_vid_tvalid_rx,
output       mipi_vid_tready_rx,

output [PIXEL_BIT-1:0] golden_data,
output [PIXEL_BIT-1:0] rx_unpack_data_1P,
output reg [7:0] error_cnt
);

localparam FIFO_WIDTH = 13;

reg i_reset_pixel_n;
reg rx_out_valid_1P, rx_out_hs_1P;
wire reset_pixel_n;
reg [FIFO_WIDTH-1:0] r_x_active_1P, r_y_active_1P;

// assign  mipi_vid_di_tx          = 6'h24;
// assign  mipi_vid_enable_tx      = pg_valid;
// assign  mipi_vid_vsync_tx       = pg_vs;
// assign  mipi_vid_hsync_tx       = pg_hs;
// assign  mipi_vid_framenum_tx    = 0;
// assign  mipi_vid_linenum_tx     = 0;
// assign  mipi_vid_pixeldata_tx   = {pg_data[23:16],6'b000000,pg_data[15:8],6'b000000,pg_data[7:0],6'b0000000};
//assign  mipi_vid_pixeldata_tx   = pg_data[15:0];
//assign  mipi_vid_pixeldata_tx   = {{28{1'b0}},pg_data[13:0]};
// assign  mipi_vid_wc_tx          = HACT_CNT*3; // NUM OF BYTE PER LINE, 1 RGB888 pixel is 3 byte
// assign  mipi_vid_vc_tx          = 2'b00;

assign  rx_unpack_data  =  {mipi_vid_tdata_rx[23:16],mipi_vid_tdata_rx[7:0],mipi_vid_tdata_rx[15:8]};
//assign  rx_unpack_data  =  {mipi_vid_tdata_rx[PIXEL_BIT-1:0]};
assign  rx_unpack_valid = mipi_vid_tvalid_rx;
assign  mipi_vid_tready_rx  = 1'b1;

always @ (posedge pixel_clk or negedge reset_n) begin
    if (~reset_n) begin
        i_reset_pixel_n <= 1'b0;
    end
    else if (~start_transfer_n) begin
        i_reset_pixel_n <= 1'b1;
    end
end





reset
#(
	.IN_RST_ACTIVE	("LOW"),
	.OUT_RST_ACTIVE	("LOW"),
	.CYCLE			(3)
)
inst_pixel_clk_rst
(
	.i_arst	(i_reset_pixel_n),
	.i_clk	(pixel_clk),
	.o_srst	(reset_pixel_n)
);


///////////////////// Start of VGA gen ////////////////
//-----------------------------------------------------------//
// 1280*16 VGA
//-----------------------------------------------------------//


// wire [FIFO_WIDTH-1:0] video_x;
// wire [FIFO_WIDTH-1:0] video_y;
// wire video_valid, video_de, video_hs, video_vs;
// wire tx_out_valid, tx_out_hs, tx_out_vs;
// wire [PACK_BIT-1:0] tx_out_data;
// wire [FIFO_WIDTH-1:0] pg_x;
// wire [FIFO_WIDTH-1:0] pg_y;
// wire pg_valid, pg_de, pg_hs, pg_vs;
// wire [PIXEL_BIT-1:0] pg_data;

// vga_gen
// #(
	// .H_SyncPulse	(HSA		),           
	// .H_BackPorch	(HBP		),  	          
	// .H_ActivePix	(HACT_CNT	),	           
	// .H_FrontPorch	(HFP		),
	// .V_SyncPulse	(VSA		),
	// .V_BackPorch	(VBP		),
	// .V_ActivePix	(VACT_CNT	),
	// .V_FrontPorch	(VFP		),
	// .FIFO_WIDTH	    (FIFO_WIDTH),
	// .P_Cnt			(1		)
// )
// inst_vga_gen
// (
	// .in_pclk	(pixel_clk),
	// .in_rstn	(reset_pixel_n),
	
	// .out_x		(video_x),
	// .out_y		(video_y),
	// .out_valid	(video_valid),
	// .out_de		(video_de),
	// .out_hs		(video_hs),
	// .out_vs		(video_vs)
// );

// pattern_gen
// #(
	// .PIXEL_BIT	(PIXEL_BIT),           
	// .FIFO_WIDTH	(FIFO_WIDTH),  	          
	// .H_ActivePix(HACT_CNT),
	// .V_ActivePix(VACT_CNT)
// )
// inst_tx_pattern_gen
// (
	// .in_pclk	(pixel_clk),
	// .in_rstn	(reset_pixel_n),
	
	// .in_x		(video_x),
	// .in_y		(video_y),
	// .in_valid	(video_valid),
	// .in_de		(video_de),
	// .in_hs		(video_hs),
	// .in_vs		(video_vs),
	// .in_pattern	(0),
	
	// .out_x		(pg_x),
	// .out_y		(pg_y),
	// .out_valid	(pg_valid),
	// .out_de		(pg_de),
	// .out_hs		(pg_hs),
	// .out_vs		(pg_vs),
	// .out_data	(pg_data)
// );

// Horizontal porch value must be multipled by PACK_BIT/PIXEL_BIT
// datatype_gen
// #(
	// .PIXEL_BIT	(PIXEL_BIT),           
	// .PACK_BIT	(PACK_BIT),  	          
	// .FIFO_WIDTH	(FIFO_WIDTH)
// )
// inst_datatype_gen
// (
	// .in_pclk	(pixel_clk),
	// .out_pclk	(pixel_clk),
	// .in_rstn	(reset_pixel_n),
	
	// .in_x		(pg_x),
	// .in_y		(pg_y),
	// .in_valid	(pg_valid),
	// .in_de		(pg_de),
	// .in_hs		(pg_hs),
	// .in_vs		(pg_vs),
	// .in_data	(pg_data),
	
	// .out_x		(),
	// .out_y		(),
	// .out_valid	(tx_out_valid),
	// .out_de		(),
	// .out_hs		(tx_out_hs),
	// .out_vs		(tx_out_vs),
	// .out_data	(tx_out_data)
// );
///////////////////// end of VGA gen ////////////////

////////////////////////MIPI RX//////////////////////
wire rx_out_valid, rx_out_hs, rx_out_vs;
wire [FIFO_WIDTH-1:0] rx_unpack_x;
wire [FIFO_WIDTH-1:0] rx_unpack_y;
wire rx_unpack_valid, rx_unpack_de, rx_unpack_hs, rx_unpack_vs;
wire [PIXEL_BIT-1:0] rx_unpack_data;
reg [PIXEL_BIT-1:0] rx_unpack_data_1P;
wire [FIFO_WIDTH-1:0] golden_x;
wire [FIFO_WIDTH-1:0] golden_y;
wire golden_valid, golden_de, golden_hs, golden_vs;
//wire [PIXEL_BIT-1:0] golden_data;
reg r_pass, r_fail;
reg [12:0] flash_cnt;

//*******************************   
// MIPI-Rx-data comparator 
//*******************************   
pattern_gen
#(
    .PIXEL_BIT    (PIXEL_BIT),           
    .FIFO_WIDTH   (FIFO_WIDTH),                
    .H_ActivePix  (HACT_CNT),
    .V_ActivePix  (VACT_CNT)
)
inst_rx_pattern_gen
(
    .in_pclk    (pixel_clk),
    .in_rstn    (reset_pixel_n),
    
    .in_x        (rx_unpack_x),
    .in_y        (rx_unpack_y),
    .in_valid    (rx_unpack_valid),
    .in_de       (rx_unpack_de),
    .in_hs       (rx_unpack_hs),
    .in_vs       (rx_unpack_vs),
    .in_pattern  (0),
    
    .out_x        (golden_x),
    .out_y        (golden_y),
    .out_valid    (golden_valid),
    .out_de       (golden_de),
    .out_hs       (golden_hs),
    .out_vs       (golden_vs),
    .out_data     (golden_data)
);

always @(posedge pixel_clk or negedge reset_pixel_n) 
begin
    if (~reset_pixel_n) begin
        rx_out_valid_1P <= 1'b0;
        rx_out_hs_1P    <= 1'b0;
    end
	else begin
        rx_out_valid_1P <= rx_out_valid;
        rx_out_hs_1P    <= rx_out_hs;
    end
end

always @ (posedge pixel_clk or negedge reset_pixel_n)
begin
    if(~reset_pixel_n) begin
        rx_unpack_data_1P   <= {PIXEL_BIT{1'b0}};
        r_x_active_1P       <= {FIFO_WIDTH{1'b0}};
        r_y_active_1P       <= {FIFO_WIDTH{1'b0}};
        error_cnt           <= 3'b000;
        r_fail              <= 1'b0;
        r_pass              <= 1'b0;
    end    
    else begin        
        rx_unpack_data_1P    <= rx_unpack_data;
        
        if (rx_out_valid) begin
            r_x_active_1P    <= r_x_active_1P + 1'b1;
        end
        else if (~rx_out_hs) begin
            r_x_active_1P    <= {FIFO_WIDTH{1'b0}};
        end
       
        if (~rx_out_hs && rx_out_hs_1P) begin
            r_y_active_1P    <= r_y_active_1P + 1'b1;
        end
        else if (~rx_out_vs) begin
            r_y_active_1P    <= {FIFO_WIDTH{1'b0}};
        end
        
        if (golden_valid) begin
            if (golden_data !== rx_unpack_data_1P) begin
                error_cnt    <= error_cnt + 1'b1;
                r_pass <= 1'b0;
                //$display("%t - Error: Expecting RX data %h, received wrong data %h", $time, golden_data, rx_unpack_data_1P); 
            end
            else begin
                r_pass <= 1'b1;
                //$display("%t - Correct RX data %h, received", $time, rx_unpack_data_1P);
            end
        end
        
        if (error_cnt > 3'b000) r_fail <= 1'b1;
    end
end

always @(posedge pixel_clk or negedge reset_pixel_n) 
begin
    if (~reset_pixel_n) begin
        flash_cnt <= 13'b0;
    end
	else if (~r_fail && rx_out_hs && ~rx_out_hs_1P) begin
        flash_cnt <= flash_cnt + 1'b1;
    end
end

assign led[0] = rx_out_valid;
assign led[1] = r_fail;
assign led[2] = r_pass;
assign led[3] = flash_cnt[12];

////////////////////////////////


endmodule
