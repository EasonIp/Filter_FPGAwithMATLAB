library verilog;
use verilog.vl_types.all;
entity FirstTap is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(11 downto 0);
        Yout            : out    vl_logic_vector(7 downto 0)
    );
end FirstTap;
