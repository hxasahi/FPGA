library verilog;
use verilog.vl_types.all;
entity adjust_shift is
    port(
        idata           : in     vl_logic_vector(19 downto 0);
        odata           : out    vl_logic_vector(19 downto 0)
    );
end adjust_shift;
