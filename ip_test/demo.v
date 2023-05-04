module demo(clk,c_locked,c0_clk,c1_clk,c2_clk);
input clk;
output c_locked;
output c0_clk;
output c1_clk;
output c2_clk;

ip_pll	ip_pll_one (
	.inclk0 ( clk ),
	.c0 ( c0_clk ),
	.c1 ( c1_clk ),
	.c2 ( c2_clk ),
	.locked ( c_locked )
	);
endmodule
