library verilog;
use verilog.vl_types.all;
entity seg is
    generic(
        cnt1ms          : integer := 50
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        dat1            : in     vl_logic_vector(7 downto 0);
        dat2            : in     vl_logic_vector(7 downto 0);
        seg_out         : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of cnt1ms : constant is 1;
end seg;
