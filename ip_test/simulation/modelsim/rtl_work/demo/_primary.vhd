library verilog;
use verilog.vl_types.all;
entity demo is
    port(
        clk             : in     vl_logic;
        c_locked        : out    vl_logic;
        c0_clk          : out    vl_logic;
        c1_clk          : out    vl_logic;
        c2_clk          : out    vl_logic
    );
end demo;
