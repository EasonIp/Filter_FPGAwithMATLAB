library verilog;
use verilog.vl_types.all;
entity PoleParallel is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Yin             : in     vl_logic_vector(11 downto 0);
        Yout            : out    vl_logic_vector(25 downto 0)
    );
end PoleParallel;
