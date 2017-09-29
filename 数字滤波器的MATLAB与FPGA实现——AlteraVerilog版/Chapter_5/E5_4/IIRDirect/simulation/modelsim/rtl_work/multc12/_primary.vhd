library verilog;
use verilog.vl_types.all;
entity multc12 is
    port(
        dataa           : in     vl_logic_vector(11 downto 0);
        datab           : in     vl_logic_vector(11 downto 0);
        result          : out    vl_logic_vector(22 downto 0)
    );
end multc12;
