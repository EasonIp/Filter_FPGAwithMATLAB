library verilog;
use verilog.vl_types.all;
entity PD_LoopFilter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        di              : in     vl_logic_vector(27 downto 0);
        dq              : in     vl_logic_vector(27 downto 0);
        frequency_df    : out    vl_logic_vector(33 downto 0)
    );
end PD_LoopFilter;
