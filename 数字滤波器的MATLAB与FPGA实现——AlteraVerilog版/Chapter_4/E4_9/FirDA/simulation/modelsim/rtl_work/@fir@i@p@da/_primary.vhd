library verilog;
use verilog.vl_types.all;
entity FirIPDa is
    port(
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(11 downto 0);
        Yout            : out    vl_logic_vector(24 downto 0)
    );
end FirIPDa;
