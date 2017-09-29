library verilog;
use verilog.vl_types.all;
entity shifter16_256 is
    port(
        clock           : in     vl_logic;
        shiftin         : in     vl_logic_vector(15 downto 0);
        shiftout        : out    vl_logic_vector(15 downto 0);
        taps            : out    vl_logic_vector(15 downto 0)
    );
end shifter16_256;
