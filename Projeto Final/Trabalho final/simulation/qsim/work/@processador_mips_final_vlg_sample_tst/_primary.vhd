library verilog;
use verilog.vl_types.all;
entity Processador_mips_final_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLKM            : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Processador_mips_final_vlg_sample_tst;
