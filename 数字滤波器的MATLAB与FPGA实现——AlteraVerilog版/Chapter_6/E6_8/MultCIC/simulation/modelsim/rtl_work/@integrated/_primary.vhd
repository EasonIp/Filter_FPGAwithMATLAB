library verilog;
use verilog.vl_types.all;
entity Integrated is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(9 downto 0);
        Intout          : out    vl_logic_vector(36 downto 0)
    );
end Integrated;
