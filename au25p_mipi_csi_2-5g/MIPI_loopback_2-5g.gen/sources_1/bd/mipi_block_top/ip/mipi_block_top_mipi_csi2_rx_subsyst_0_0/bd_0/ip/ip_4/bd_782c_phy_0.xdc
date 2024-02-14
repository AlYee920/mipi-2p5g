################################################################################
## (c) Copyright 2014 - 2023 Advanced Micro Devices, Inc. All rights reserved.	 
##   	                                						 
## This file contains confidential and proprietary information	 
## of Advanced Micro Devices, Inc. and is protected under U.S. and	        	 
## international copyright and other intellectual property    	 
## laws.							                             
##   							                                 
## DISCLAIMER							                         
## This disclaimer is not a license and does not grant any	     
## rights to the materials distributed herewith. Except as	     
## otherwise provided in a valid license issued to you by	     
## AMD, and to the maximum extent permitted by applicable	
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	     
## WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES	 
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	 
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-	     
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	     
## (2) AMD shall not be liable (whether in contract or tort,	 
## including negligence, or under any other theory of		     
## liability) for any loss or damage of any kind or nature	     
## related to, arising under or in connection with these	     
## materials, including for any direct, or any indirect,	    
## special, incidental, or consequential loss or damage		     
## (including loss of data, profits, goodwill, or any type of	 
## loss or damage suffered as a result of any action brought	 
## by a third party) even if such damage or loss was		     
## reasonably foreseeable or AMD had been advised of the	     
## possibility of the same.					                     
##   							                                 
## CRITICAL APPLICATIONS					                     
## AMD products are not designed or intended to be fail-	     
## safe, or for use in any application requiring fail-safe	     
## performance, such as life-support or safety devices or	     
## systems, Class III medical devices, nuclear facilities,	     
## applications related to the deployment of airbags, or any	  
## other applications that could lead to death, personal	      
## injury, or severe property or environmental damage		     
## (individually and collectively, "Critical			          
## Applications"). Customer assumes the sole risk and		     
## liability of any use of AMD products in Critical		     
## Applications, subject only to applicable laws and	  	     
## regulations governing limitations on product liability.	     
##   							                                 
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	     
## PART OF THIS FILE AT ALL TIMES. 				                 
################################################################################
## XDC generated for artixuplus-xcau25p-ffvb676-2 device
#For xpm_cdc_single
# False path constraint for synchronizer
set_false_path -to [get_pins -hier *cdc_to*/D]

########################################################################
########################################################################

### Start of versal check

##### IO Bank 67  ##### 
#constraint for Custom
set_property PACKAGE_PIN F20 [get_ports clk_rxp]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports clk_rxp]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports clk_rxn]

set_property PACKAGE_PIN H18 [get_ports data_rxp[0]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxp[0]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxn[0]]
set_property PACKAGE_PIN C18 [get_ports data_rxp[1]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxp[1]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxn[1]]
set_property PACKAGE_PIN H17 [get_ports data_rxp[2]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxp[2]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxn[2]]
set_property PACKAGE_PIN F18 [get_ports data_rxp[3]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxp[3]]
set_property IOSTANDARD MIPI_DPHY_DCI [get_ports data_rxn[3]]

#startgroup
#create_pblock pblock_inst
#resize_pblock pblock_inst -add [get_property FULL_NAME [get_clock_regions -of_objects [get_iobanks 67]]]:[get_property FULL_NAME [get_clock_regions -of_objects [get_iobanks 67]]]
#add_cells_to_pblock pblock_inst [get_cells [list bd_782c_phy_0_rx_support_i]]
#endgroup



### End of versal check
########################################################################
########################################################################

