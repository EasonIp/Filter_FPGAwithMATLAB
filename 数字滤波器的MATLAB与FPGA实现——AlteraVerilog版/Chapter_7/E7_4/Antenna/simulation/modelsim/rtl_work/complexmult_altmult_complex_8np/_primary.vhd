library verilog;
use verilog.vl_types.all;
entity complexmult_altmult_complex_8np is
    port(
        aclr            : in     vl_logic;
        clock           : in     vl_logic;
        dataa_imag      : in     vl_logic_vector(15 downto 0);
        dataa_real      : in     vl_logic_vector(15 downto 0);
        datab_imag      : in     vl_logic_vector(15 downto 0);
        datab_real      : in     vl_logic_vector(15 downto 0);
        result_imag     : out    vl_logic_vector(32 downto 0);
        result_real     : out    vl_logic_vector(32 downto 0)
    );
end complexmult_altmult_complex_8np;
