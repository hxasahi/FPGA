module demo(clk,addr,c_locked,c0_clk,c1_clk,c2_clk,wren,data,data_ram);
input clk;
input wren;
input wire[7:0] addr;
output c_locked;
output c0_clk;
output c1_clk;
output c2_clk;
output wire[7:0] data;
output wire[7:0] data_ram;

ip_pll	ip_pll_one (
	.inclk0 ( clk ),
	.c0 ( c0_clk ),
	.c1 ( c1_clk ),
	.c2 ( c2_clk ),
	.locked ( c_locked )
	);
	
ip_rom	ip_rom_inst (
	.address ( addr ),
	.clock ( c0_clk ),
	.q ( data )
	);
	
ip_ram	ip_ram_inst (
	.address ( data ),
	.clock ( c0_clk ),
	.data ( data ),
	.wren ( wren ),
	.q ( data_ram )
	);

endmodule
