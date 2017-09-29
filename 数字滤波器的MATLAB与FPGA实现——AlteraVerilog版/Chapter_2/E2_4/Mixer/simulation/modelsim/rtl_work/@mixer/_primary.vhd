library verilog;
use verilog.vl_types.all;
entity Mixer is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(9 downto 0);
        s_oc            : out    vl_logic_vector(9 downto 0);
        dout            : out    vl_logic_vector(19 downto 0);
        ldoc            : out    vl_logic;
        ldmix           : out    vl_logic
    );
end Mixer;
