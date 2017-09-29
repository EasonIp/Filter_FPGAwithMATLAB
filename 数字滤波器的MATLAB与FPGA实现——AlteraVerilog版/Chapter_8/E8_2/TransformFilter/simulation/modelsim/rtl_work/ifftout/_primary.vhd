library verilog;
use verilog.vl_types.all;
entity ifftout is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        clkdv           : in     vl_logic;
        addr            : in     vl_logic_vector(11 downto 0);
        xk_re           : in     vl_logic_vector(15 downto 0);
        xk_im           : in     vl_logic_vector(15 downto 0);
        dout            : out    vl_logic_vector(15 downto 0)
    );
end ifftout;
