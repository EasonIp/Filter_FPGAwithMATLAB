library verilog;
use verilog.vl_types.all;
entity ZeroParallel is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(11 downto 0);
        Xout            : out    vl_logic_vector(20 downto 0)
    );
end ZeroParallel;
