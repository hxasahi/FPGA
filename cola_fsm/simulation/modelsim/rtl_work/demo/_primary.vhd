library verilog;
use verilog.vl_types.all;
entity demo is
    generic(
        cnt_5s_max      : integer := 250000000;
        cnt_10s_max     : integer := 500000000;
        led_500ms_max   : integer := 25000000;
        IDLE            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        S0_5            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        S1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        S1_5            : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        S2              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        S2_5            : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        S3              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key             : in     vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of cnt_5s_max : constant is 1;
    attribute mti_svvh_generic_type of cnt_10s_max : constant is 1;
    attribute mti_svvh_generic_type of led_500ms_max : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of S0_5 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S1_5 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S2_5 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
end demo;
