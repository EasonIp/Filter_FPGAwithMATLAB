library verilog;
use verilog.vl_types.all;
entity dds is
    port(
        clk             : in     vl_logic;
        clken           : in     vl_logic;
        fcos_o          : out    vl_logic_vector(9 downto 0);
        freq_mod_i      : in     vl_logic_vector(33 downto 0);
        fsin_o          : out    vl_logic_vector(9 downto 0);
        out_valid       : out    vl_logic;
        phi_inc_i       : in     vl_logic_vector(33 downto 0);
        reset_n         : in     vl_logic
    );
end dds;
