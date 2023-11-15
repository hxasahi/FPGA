library verilog;
use verilog.vl_types.all;
entity demo is
    generic(
        max_cnt         : integer := 5000
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        seg             : out    vl_logic_vector(7 downto 0);
        pos             : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of max_cnt : constant is 1;
end demo;
