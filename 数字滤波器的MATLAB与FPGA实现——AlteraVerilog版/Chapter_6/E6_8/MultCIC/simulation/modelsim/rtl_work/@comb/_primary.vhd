library verilog;
use verilog.vl_types.all;
entity Comb is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ND              : in     vl_logic;
        Xin             : in     vl_logic_vector(36 downto 0);
        Yout            : out    vl_logic_vector(16 downto 0)
    );
end Comb;
