library verilog;
use verilog.vl_types.all;
entity ThirdTap is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(8 downto 0);
        Yout            : out    vl_logic_vector(10 downto 0)
    );
end ThirdTap;
