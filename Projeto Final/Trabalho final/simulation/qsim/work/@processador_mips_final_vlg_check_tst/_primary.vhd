library verilog;
use verilog.vl_types.all;
entity Processador_mips_final_vlg_check_tst is
    port(
        breg_r1_dado    : in     vl_logic_vector(31 downto 0);
        breg_r2_dado    : in     vl_logic_vector(31 downto 0);
        ctr_branch      : in     vl_logic;
        ctr_branchn     : in     vl_logic;
        ctr_escreve_mem : in     vl_logic;
        ctr_escreve_reg : in     vl_logic;
        ctr_jal         : in     vl_logic;
        ctr_jerro       : in     vl_logic;
        ctr_jump        : in     vl_logic;
        ctr_le_mem      : in     vl_logic;
        ctr_lui         : in     vl_logic;
        ctr_mem_para_reg: in     vl_logic;
        ctr_orig_alu    : in     vl_logic;
        ctr_reg_ds      : in     vl_logic;
        ctrl_op_ula     : in     vl_logic_vector(3 downto 0);
        din_breg        : in     vl_logic_vector(31 downto 0);
        HEX0            : in     vl_logic_vector(6 downto 0);
        HEX1            : in     vl_logic_vector(6 downto 0);
        HEX2            : in     vl_logic_vector(6 downto 0);
        HEX3            : in     vl_logic_vector(6 downto 0);
        HEX4            : in     vl_logic_vector(6 downto 0);
        HEX5            : in     vl_logic_vector(6 downto 0);
        HEX6            : in     vl_logic_vector(6 downto 0);
        HEX7            : in     vl_logic_vector(6 downto 0);
        OUTPUT          : in     vl_logic_vector(31 downto 0);
        saida_epc       : in     vl_logic_vector(31 downto 0);
        sinal_overflow  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Processador_mips_final_vlg_check_tst;
