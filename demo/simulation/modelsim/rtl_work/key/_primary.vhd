library verilog;
use verilog.vl_types.all;
entity key is
    generic(
        cnt_max         : vl_logic_vector(0 to 19) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key_in          : in     vl_logic;
        key_flag        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of cnt_max : constant is 1;
end key;
