library verilog;
use verilog.vl_types.all;
entity demo is
    generic(
        IDLE            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ONE             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        TWO             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        THREE           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key             : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ONE : constant is 1;
    attribute mti_svvh_generic_type of TWO : constant is 1;
    attribute mti_svvh_generic_type of THREE : constant is 1;
end demo;
