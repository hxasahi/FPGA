library verilog;
use verilog.vl_types.all;
entity demo is
    port(
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        c_locked        : out    vl_logic;
        c0_clk          : out    vl_logic;
        c1_clk          : out    vl_logic;
        c2_clk          : out    vl_logic;
        data            : out    vl_logic_vector(7 downto 0)
    );
end demo;
