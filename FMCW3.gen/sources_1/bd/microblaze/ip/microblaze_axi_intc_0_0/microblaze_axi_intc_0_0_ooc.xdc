
# This constraints file contains default clock frequencies to be used during 
# out-of-context flows such as OOC Synthesis and Hierarchical Designs. 
# This constraints file is not used in normal top-down synthesis (the default
# flow of Vivado).

# List of all the clock needed for AXI Intc v4.1 core

create_clock -name s_axi_aclk -period 10.000 [get_ports s_axi_aclk]
set_property -quiet HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports s_axi_aclk]
