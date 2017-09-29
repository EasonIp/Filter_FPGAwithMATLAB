library verilog;
use verilog.vl_types.all;
entity Decimate is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Iin             : in     vl_logic_vector(36 downto 0);
        dout            : out    vl_logic_vector(36 downto 0);
        rdy             : out    vl_logic
    );
end Decimate;
