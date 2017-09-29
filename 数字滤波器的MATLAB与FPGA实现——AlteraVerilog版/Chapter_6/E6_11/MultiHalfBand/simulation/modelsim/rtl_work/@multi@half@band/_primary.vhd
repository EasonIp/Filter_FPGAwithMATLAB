library verilog;
use verilog.vl_types.all;
entity MultiHalfBand is
    port(
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(7 downto 0);
        Yout            : out    vl_logic_vector(19 downto 0);
        rdy             : out    vl_logic
    );
end MultiHalfBand;
