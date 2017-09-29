library verilog;
use verilog.vl_types.all;
entity hf_3 is
    port(
        ast_sink_data   : in     vl_logic_vector(31 downto 0);
        ast_sink_error  : in     vl_logic_vector(1 downto 0);
        ast_sink_ready  : out    vl_logic;
        ast_sink_valid  : in     vl_logic;
        ast_source_data : out    vl_logic_vector(43 downto 0);
        ast_source_error: out    vl_logic_vector(1 downto 0);
        ast_source_ready: in     vl_logic;
        ast_source_valid: out    vl_logic;
        clk             : in     vl_logic;
        reset_n         : in     vl_logic
    );
end hf_3;
