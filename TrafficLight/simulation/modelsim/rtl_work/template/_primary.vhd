library verilog;
use verilog.vl_types.all;
entity template is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key             : in     vl_logic;
        led             : out    vl_logic;
        seg_out         : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(7 downto 0)
    );
end template;
