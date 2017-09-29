library verilog;
use verilog.vl_types.all;
entity mult12_12 is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(11 downto 0);
        datab           : in     vl_logic_vector(11 downto 0);
        result          : out    vl_logic_vector(23 downto 0)
    );
end mult12_12;
