

module top (

//`default_nettype none
    ////////////////////////    CLOCK & PLL     ////////////////////////
    // input wire axi_clk,
    // input wire mipi_dphy_tx_pclk,
    // input wire i_sysclk_div_2,
    // input wire i_mipi_rx_pclk,
    // input wire i_pll_locked,

    // input wire i_mipi_clk,
    // input wire i_mipi_txc_sclk,
    // input wire i_mipi_txd_sclk,
    // input wire i_mipi_tx_pclk,
    // input wire i_mipi_tx_pll_locked,

    // output wire o_lcd_rstn,
    // output wire o_pll_rstn,
    // output wire o_mipi_pll_rstn,
    //input       dbg_clk,
    input       axi_aclk, //axi 25MHz
    input       i_sysclk_125mhz, // 125 MHz
    //input       dphy_byte_clk, //312.5MHz
    // input       dsi_pclk,   //160Mhz
    // input       i_sys_clk,  //20MHz
    // input       i_mipi_pclk,    //62.5MHz
    output      pll_rstn, //connect to that 200mhz reset

    input       pll_locked,
    ////////////////////////    USER CONTROL    ///////////////////

    output[5:0] led,
    input       i_arstn,
        

    output  [7:0]   axi_awaddr ,
    output          axi_awvalid,
    input           axi_awready,
    output  [31:0]  axi_wdata  ,
    output          axi_wvalid ,
    input           axi_wready ,
    input           axi_bvalid ,
    output          axi_bready ,
    output  [7:0]   axi_araddr ,
    output          axi_arvalid,
    input           axi_arready,
    output  [31:0]  axi_rdata  ,
    output          axi_rvalid ,
    input           axi_rready ,

    output  vid_hsync, vid_vsync,
    output [1:0] vid_vc,
    output [5:0] vid_datatype,
    output [83:0] vid_pixeldata,
    output [15:0] vid_wc,    
    output vid_enable //valid
);
localparam WORD_COUNT = 270*3;
wire      o_lcd_rstn;

wire        rst_release;
wire        w_global_rstn;
wire        w_lcd_rstn;
wire        w_pixel_rstn;
wire [8:0]  w_frame_cnt;
assign pll_rstn             = i_arstn;
assign o_lcd_rstn           = w_lcd_rstn;
assign led                  = {2'b00,w_frame_cnt[4 +: 4]};

// assign rst_release = pll_locked;
////////////////////////////////////////////////////////////////
// DSI Tx AXI
wire [31:0] w_axi_rdata;
wire        w_axi_awready;
wire        w_axi_wready;
wire        w_axi_arready;
wire        w_axi_rvalid;
wire        w_axi_bvalid;

wire [ 6:0] w_axi_awaddr;
wire        w_axi_awvalid;
wire [31:0] w_axi_wdata;
wire        w_axi_wvalid;
wire        w_axi_bready;
wire [ 6:0] w_axi_araddr;
wire        w_axi_arvalid;
wire        w_axi_rready;

wire              w_vs;
wire              w_hs;
wire              w_valid;
wire [15:0]       w_r;
wire [15:0]       w_g;
wire [15:0]       w_b;

color_bar inst_color_bar (
    .i_arstn        (i_arstn & pll_locked),
    .pll_locked     (pll_locked),
    .o_pixel_rstn   (w_pixel_rstn),
    .o_lcd_rstn     (w_lcd_rstn),
    .o_global_rstn  (w_global_rstn),
    .o_frame_cnt    (w_frame_cnt),
    
    .axi_clk(axi_aclk),
    .i_sysclk(i_sysclk_125mhz),
    
    .o_vs(w_vs),
    .o_hs(w_hs),
    .o_valid(w_valid),
    .o_r(w_r),
    .o_g(w_g),
    .o_b(w_b),
    
    .i_axi_awready(w_axi_awready),
    .i_axi_wready(w_axi_wready),
    .i_axi_bvalid(w_axi_bvalid),
    .o_axi_awaddr(w_axi_awaddr),
    .o_axi_awvalid(w_axi_awvalid),
    .o_axi_wdata(w_axi_wdata),
    .o_axi_wvalid(w_axi_wvalid),
    .o_axi_bready(w_axi_bready),
    
    .i_axi_arready(w_axi_arready),
    .i_axi_rdata(w_axi_rdata),
    .i_axi_rvalid(w_axi_rvalid),
    .o_axi_araddr(w_axi_araddr),
    .o_axi_arvalid(w_axi_arvalid),
    .o_axi_rready(w_axi_rready)
);

assign vid_hsync        = ~w_hs;
assign vid_vsync        = ~w_vs;
assign vid_vc           = 2'b0;
assign vid_datatype     = 6'h24;
assign vid_pixeldata    = {6'b0,w_b[15:8],
                           6'b0,w_g[15:8],
                           6'b0,w_r[15:8],
                           6'b0,w_b[7:0],
                           6'b0,w_g[7:0],
                           6'b0,w_r[7:0]};
assign vid_wc           = WORD_COUNT;                           
assign vid_enable       = w_valid;//valid
assign axi_awaddr       = w_axi_awaddr;  //Write Address. byte address.
assign axi_awvalid      = w_axi_awvalid;  //Write address valid.
assign axi_awready      = w_axi_awready;  //Write address ready.
assign axi_wdata        = w_axi_wdata; //Write data bus.
assign axi_wvalid       = w_axi_wvalid;  //Write valid.
assign axi_wready       = w_axi_wready;  //Write ready.
assign axi_bvalid       = w_axi_bvalid;  //Write response valid.
assign axi_bready       = w_axi_bready;  //Response ready.      
assign axi_araddr       = w_axi_araddr;  //Read address. byte address.
assign axi_arvalid      = w_axi_arvalid;  //Read address valid.
assign axi_arready      = w_axi_arready;  //Read address ready.
assign axi_rdata        = w_axi_rdata;  //Read data.
assign axi_rvalid       = w_axi_rvalid;  //Read valid.
assign axi_rready       = w_axi_rready;  //Read ready.


wire       w_fb_clk_arstn;
wire       w_fb_clk_arst;
wire       w_dphy_byte_clk_arstn;
wire       w_dphy_byte_clk_arst;
wire       w_esc_clk_arstn;
wire       w_esc_clk_arst;


// reg dbg_reg;

// always @(posedge dbg_clk or negedge w_lcd_rstn)
// begin
    // if (!w_lcd_rstn) begin
        // dbg_reg <= 1'b0;
    // end
    // else begin
        // dbg_reg <= w_lcd_rstn;
    // end
// end

endmodule
