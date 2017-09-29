library IEEE;
use IEEE.std_logic_1164.all;

entity fir_ip_0002 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    coeff_in_clk : in STD_LOGIC;
    coeff_in_areset : in STD_LOGIC;
    ast_sink_data : in STD_LOGIC_VECTOR((0 + 8) * 1 - 1 downto 0);
    ast_sink_valid : in STD_LOGIC;
    ast_sink_error : in STD_LOGIC_VECTOR(1 downto 0);
    ast_source_data : out STD_LOGIC_VECTOR(22 * 1 - 1 downto 0);
    ast_source_valid : out STD_LOGIC;
    ast_source_error : out STD_LOGIC_VECTOR(1 downto 0)
  );
end fir_ip_0002;

architecture syn of fir_ip_0002 is
  component fir_ip_0002_ast
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    bus_clk : in std_logic;
    h_areset :  in std_logic;
    ast_sink_data : in STD_LOGIC_VECTOR((0 + 8) * 1 - 1 downto 0);
    ast_sink_valid : in STD_LOGIC;
    ast_sink_ready : out STD_LOGIC;
    ast_sink_sop : in STD_LOGIC;
    ast_sink_eop : in STD_LOGIC;
    ast_sink_error : in STD_LOGIC_VECTOR(1 downto 0);
    ast_source_data : out STD_LOGIC_VECTOR(22 * 1 - 1 downto 0);
    ast_source_ready : in STD_LOGIC;
    ast_source_valid : out STD_LOGIC;
    ast_source_sop : out STD_LOGIC;
    ast_source_eop : out STD_LOGIC;
    ast_source_channel : out STD_LOGIC_VECTOR(1 - 1 downto 0);
    ast_source_error : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;

begin
  fir_ip_0002_ast_inst : fir_ip_0002_ast
  port map (
    clk => clk,
    reset_n => reset_n,
    bus_clk => coeff_in_clk,
    h_areset => coeff_in_areset,
    ast_sink_data => ast_sink_data,
    ast_source_data => ast_source_data,
    ast_sink_valid => ast_sink_valid,
    ast_sink_ready => open,
    ast_source_ready => '1',
    ast_source_valid => ast_source_valid,
    ast_sink_sop => '0',
    ast_sink_eop => '0',
    ast_sink_error => ast_sink_error,
    ast_source_sop => open,
    ast_source_eop => open,
    ast_source_channel => open,
    ast_source_error => ast_source_error
  );
end syn;
