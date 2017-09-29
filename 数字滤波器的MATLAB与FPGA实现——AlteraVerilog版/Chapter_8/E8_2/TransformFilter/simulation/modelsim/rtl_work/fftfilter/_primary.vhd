library verilog;
use verilog.vl_types.all;
entity fftfilter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(15 downto 0);
        addr            : in     vl_logic_vector(11 downto 0);
        xk_re           : out    vl_logic_vector(15 downto 0);
        xk_im           : out    vl_logic_vector(15 downto 0)
    );
end fftfilter;
