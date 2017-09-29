library verilog;
use verilog.vl_types.all;
entity IIRCas is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(11 downto 0);
        dout            : out    vl_logic_vector(11 downto 0)
    );
end IIRCas;
