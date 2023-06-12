library verilog;
use verilog.vl_types.all;
entity demo is
    port(
        clk             : in     vl_logic;
        key             : in     vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end demo;
