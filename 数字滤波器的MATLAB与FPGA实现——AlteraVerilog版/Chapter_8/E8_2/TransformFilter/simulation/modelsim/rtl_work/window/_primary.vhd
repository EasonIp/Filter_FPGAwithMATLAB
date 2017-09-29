library verilog;
use verilog.vl_types.all;
entity window is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(11 downto 0);
        clkdv           : out    vl_logic;
        count16_256     : out    vl_logic_vector(11 downto 0);
        dout_interlaced : out    vl_logic_vector(15 downto 0)
    );
end window;
