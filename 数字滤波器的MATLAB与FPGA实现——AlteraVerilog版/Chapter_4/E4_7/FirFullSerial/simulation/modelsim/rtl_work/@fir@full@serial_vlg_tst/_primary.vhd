library verilog;
use verilog.vl_types.all;
entity FirFullSerial_vlg_tst is
    generic(
        clk_period      : integer := 625;
        clk_period_data : vl_notype;
        clk_half_period : vl_notype;
        clk_half_period_data: vl_notype;
        data_num        : integer := 2000;
        time_sim        : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of clk_period_data : constant is 3;
    attribute mti_svvh_generic_type of clk_half_period : constant is 3;
    attribute mti_svvh_generic_type of clk_half_period_data : constant is 3;
    attribute mti_svvh_generic_type of data_num : constant is 1;
    attribute mti_svvh_generic_type of time_sim : constant is 3;
end FirFullSerial_vlg_tst;
