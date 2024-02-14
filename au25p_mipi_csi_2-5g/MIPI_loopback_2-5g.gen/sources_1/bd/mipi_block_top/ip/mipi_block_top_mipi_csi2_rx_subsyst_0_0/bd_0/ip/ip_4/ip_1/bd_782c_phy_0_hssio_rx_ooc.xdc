#############################################################
# Clock Period Constraints                                 
#############################################################
create_clock -period 3.200 [get_ports  clk]
create_clock -period 5.000 [get_ports  riu_clk]
create_clock -period 3.200 [get_ports fifo_rd_clk_2]
create_clock -period 3.200 [get_ports fifo_rd_clk_3]
create_clock -period 3.200 [get_ports fifo_rd_clk_13]
create_clock -period 3.200 [get_ports fifo_rd_clk_14]
create_clock -period 3.200 [get_ports fifo_rd_clk_15]
create_clock -period 3.200 [get_ports fifo_rd_clk_16]
create_clock -period 3.200 [get_ports fifo_rd_clk_19]
create_clock -period 3.200 [get_ports fifo_rd_clk_20]
create_clock -period 3.200 [get_ports fifo_rd_clk_26]
create_clock -period 3.200 [get_ports fifo_rd_clk_27]
