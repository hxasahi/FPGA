library verilog;
use verilog.vl_types.all;
entity uart is
    generic(
        baud            : integer := 52;
        cnt_1s_max      : integer := 4999
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        dat             : out    vl_logic;
        en              : out    vl_logic;
        cnt             : out    vl_logic_vector(31 downto 0);
        o_dat           : out    vl_logic_vector(7 downto 0);
        bit_cnt         : out    vl_logic_vector(3 downto 0);
        bit_flag        : out    vl_logic;
        work_flag       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of baud : constant is 1;
    attribute mti_svvh_generic_type of cnt_1s_max : constant is 1;
end uart;
