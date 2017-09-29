library verilog;
use verilog.vl_types.all;
entity SigCIC is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(9 downto 0);
        rdy             : out    vl_logic;
        dout            : out    vl_logic_vector(12 downto 0)
    );
end SigCIC;
