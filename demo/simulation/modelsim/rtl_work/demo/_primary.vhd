library verilog;
use verilog.vl_types.all;
entity demo is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        ONE             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        TWO             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key             : in     vl_logic;
        seg             : out    vl_logic_vector(7 downto 0);
        pos             : out    vl_logic_vector(3 downto 0);
        state           : out    vl_logic_vector(2 downto 0);
        flag            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ONE : constant is 1;
    attribute mti_svvh_generic_type of TWO : constant is 1;
end demo;
