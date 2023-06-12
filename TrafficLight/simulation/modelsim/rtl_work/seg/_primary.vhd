library verilog;
use verilog.vl_types.all;
entity seg is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        dat             : in     vl_logic_vector(13 downto 0);
        pos             : in     vl_logic;
        seg_out         : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(3 downto 0);
        seg_num         : out    vl_logic_vector(3 downto 0)
    );
end seg;
