library verilog;
use verilog.vl_types.all;
entity Equalizer is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Xin             : in     vl_logic_vector(15 downto 0);
        Rin             : in     vl_logic_vector(15 downto 0);
        Error           : out    vl_logic_vector(15 downto 0);
        Yout            : out    vl_logic_vector(15 downto 0)
    );
end Equalizer;
