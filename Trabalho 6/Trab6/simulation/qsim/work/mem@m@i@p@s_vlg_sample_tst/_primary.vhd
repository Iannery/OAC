library verilog;
use verilog.vl_types.all;
entity memMIPS_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk_mem         : in     vl_logic;
        initpc8b        : in     vl_logic_vector(7 downto 0);
        m1              : in     vl_logic;
        wPC             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memMIPS_vlg_sample_tst;
