library verilog;
use verilog.vl_types.all;
entity fft256 is
    port(
        clk             : in     vl_logic;
        inverse         : in     vl_logic;
        reset_n         : in     vl_logic;
        sink_eop        : in     vl_logic;
        sink_error      : in     vl_logic_vector(1 downto 0);
        sink_imag       : in     vl_logic_vector(15 downto 0);
        sink_ready      : out    vl_logic;
        sink_real       : in     vl_logic_vector(15 downto 0);
        sink_sop        : in     vl_logic;
        sink_valid      : in     vl_logic;
        source_eop      : out    vl_logic;
        source_error    : out    vl_logic_vector(1 downto 0);
        source_exp      : out    vl_logic_vector(5 downto 0);
        source_imag     : out    vl_logic_vector(15 downto 0);
        source_ready    : in     vl_logic;
        source_real     : out    vl_logic_vector(15 downto 0);
        source_sop      : out    vl_logic;
        source_valid    : out    vl_logic
    );
end fft256;
