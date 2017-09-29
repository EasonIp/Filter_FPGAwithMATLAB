library verilog;
use verilog.vl_types.all;
entity mult is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(11 downto 0);
        datab           : in     vl_logic_vector(12 downto 0);
        result          : out    vl_logic_vector(24 downto 0)
    );
end mult;
