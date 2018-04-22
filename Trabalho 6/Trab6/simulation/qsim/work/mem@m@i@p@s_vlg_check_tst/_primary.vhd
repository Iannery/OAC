library verilog;
use verilog.vl_types.all;
entity memMIPS_vlg_check_tst is
    port(
        outbcd1         : in     vl_logic_vector(6 downto 0);
        outbcd2         : in     vl_logic_vector(6 downto 0);
        outputmem       : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end memMIPS_vlg_check_tst;
