library verilog;
use verilog.vl_types.all;
entity NotchFilter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(15 downto 0);
        dout            : out    vl_logic_vector(15 downto 0)
    );
end NotchFilter;
