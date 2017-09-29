library verilog;
use verilog.vl_types.all;
entity SymbExam is
    port(
        d1              : in     vl_logic_vector(3 downto 0);
        d2              : in     vl_logic_vector(3 downto 0);
        signed_out      : out    vl_logic_vector(3 downto 0);
        unsigned_out    : out    vl_logic_vector(3 downto 0)
    );
end SymbExam;
