library verilog;
use verilog.vl_types.all;
entity template is
    generic(
        IDLE            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        M_GREEN         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        M_YELLOW        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        M_RED           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        S_YELLOW        : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        EMG             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        CNT_1S_MAX      : vl_logic_vector(0 to 30) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        key             : in     vl_logic;
        led             : out    vl_logic;
        seg_out         : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(3 downto 0);
        state           : out    vl_logic_vector(3 downto 0);
        sec             : out    vl_logic_vector(7 downto 0);
        sec_max         : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of M_GREEN : constant is 1;
    attribute mti_svvh_generic_type of M_YELLOW : constant is 1;
    attribute mti_svvh_generic_type of M_RED : constant is 1;
    attribute mti_svvh_generic_type of S_YELLOW : constant is 1;
    attribute mti_svvh_generic_type of EMG : constant is 1;
    attribute mti_svvh_generic_type of CNT_1S_MAX : constant is 1;
end template;
