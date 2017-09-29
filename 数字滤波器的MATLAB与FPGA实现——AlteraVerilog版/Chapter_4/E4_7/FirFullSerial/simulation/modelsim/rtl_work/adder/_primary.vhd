library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        dataa           : in     vl_logic_vector(12 downto 0);
        datab           : in     vl_logic_vector(12 downto 0);
        result          : out    vl_logic_vector(12 downto 0)
    );
end adder;
