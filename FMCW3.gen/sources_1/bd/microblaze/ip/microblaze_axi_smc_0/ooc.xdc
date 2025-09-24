# aclk {FREQ_HZ 100000000 CLK_DOMAIN microblaze_clk_100MHz PHASE 0.0}
# Clock Domain: microblaze_clk_100MHz
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
