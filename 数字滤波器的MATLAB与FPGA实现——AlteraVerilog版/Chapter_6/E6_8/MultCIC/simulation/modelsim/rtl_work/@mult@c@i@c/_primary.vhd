library verilog;
use verilog.vl_types.all;
entity MultCIC is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(9 downto 0);
        Yout            : out    vl_logic_vector(16 downto 0);
        rdy             : out    vl_logic
    );
end MultCIC;
