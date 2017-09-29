library verilog;
use verilog.vl_types.all;
entity Antenna is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        x1r             : in     vl_logic_vector(15 downto 0);
        x1i             : in     vl_logic_vector(15 downto 0);
        x2r             : in     vl_logic_vector(15 downto 0);
        x2i             : in     vl_logic_vector(15 downto 0);
        x3r             : in     vl_logic_vector(15 downto 0);
        x3i             : in     vl_logic_vector(15 downto 0);
        x4r             : in     vl_logic_vector(15 downto 0);
        x4i             : in     vl_logic_vector(15 downto 0);
        er              : out    vl_logic_vector(15 downto 0);
        ei              : out    vl_logic_vector(15 downto 0);
        w1r             : out    vl_logic_vector(15 downto 0);
        w1i             : out    vl_logic_vector(15 downto 0);
        w2r             : out    vl_logic_vector(15 downto 0);
        w2i             : out    vl_logic_vector(15 downto 0);
        w3r             : out    vl_logic_vector(15 downto 0);
        w3i             : out    vl_logic_vector(15 downto 0);
        w4r             : out    vl_logic_vector(15 downto 0);
        w4i             : out    vl_logic_vector(15 downto 0);
        rrin            : in     vl_logic_vector(15 downto 0);
        yr              : out    vl_logic_vector(15 downto 0)
    );
end Antenna;
