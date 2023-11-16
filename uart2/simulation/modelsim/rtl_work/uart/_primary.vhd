library verilog;
use verilog.vl_types.all;
entity uart is
    generic(
        baud_max        : integer := 20;
        sleep_max       : integer := 300
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        uart_tx         : out    vl_logic;
        cnt_bit         : out    vl_logic_vector(4 downto 0);
        cnt_baud        : out    vl_logic_vector(12 downto 0);
        baud_flag       : out    vl_logic;
        uart_en         : out    vl_logic;
        cnt_sleep       : out    vl_logic_vector(12 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of baud_max : constant is 1;
    attribute mti_svvh_generic_type of sleep_max : constant is 1;
end uart;
