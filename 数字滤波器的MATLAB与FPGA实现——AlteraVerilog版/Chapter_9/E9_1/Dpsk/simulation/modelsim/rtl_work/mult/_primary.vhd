library verilog;
use verilog.vl_types.all;
entity mult is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(7 downto 0);
        datab           : in     vl_logic_vector(9 downto 0);
        result          : out    vl_logic_vector(17 downto 0)
    );
end mult;
