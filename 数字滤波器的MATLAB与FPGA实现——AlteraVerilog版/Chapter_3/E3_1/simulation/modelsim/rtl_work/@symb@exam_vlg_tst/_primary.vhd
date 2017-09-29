library verilog;
use verilog.vl_types.all;
entity SymbExam_vlg_tst is
    generic(
        clk_period      : integer := 200;
        clk_half_period : vl_notype;
        data_num        : integer := 800;
        time_sim        : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of clk_half_period : constant is 3;
    attribute mti_svvh_generic_type of data_num : constant is 1;
    attribute mti_svvh_generic_type of time_sim : constant is 3;
end SymbExam_vlg_tst;
