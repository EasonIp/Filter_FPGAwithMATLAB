library verilog;
use verilog.vl_types.all;
entity CICIP is
    port(
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        reset_n         : in     vl_logic;
        in_data         : in     vl_logic_vector(9 downto 0);
        in_valid        : in     vl_logic;
        out_ready       : in     vl_logic;
        in_error        : in     vl_logic_vector(1 downto 0);
        out_data        : out    vl_logic_vector(16 downto 0);
        in_ready        : out    vl_logic;
        out_valid       : out    vl_logic;
        out_error       : out    vl_logic_vector(1 downto 0)
    );
end CICIP;
