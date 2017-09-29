library verilog;
use verilog.vl_types.all;
entity MisMatch is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        rr              : in     vl_logic_vector(15 downto 0);
        ri              : in     vl_logic_vector(15 downto 0);
        xr              : in     vl_logic_vector(15 downto 0);
        xi              : in     vl_logic_vector(15 downto 0);
        clkdv           : out    vl_logic;
        yr              : out    vl_logic_vector(15 downto 0);
        yi              : out    vl_logic_vector(15 downto 0)
    );
end MisMatch;
