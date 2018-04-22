library verilog;
use verilog.vl_types.all;
entity Processador_mips_final is
    port(
        ctr_reg_ds      : out    vl_logic;
        CLK             : in     vl_logic;
        CLKM            : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        ctr_mem_para_reg: out    vl_logic;
        ctr_escreve_reg : out    vl_logic;
        ctr_le_mem      : out    vl_logic;
        ctr_escreve_mem : out    vl_logic;
        ctr_branch      : out    vl_logic;
        ctr_branchn     : out    vl_logic;
        ctr_jump        : out    vl_logic;
        ctr_jal         : out    vl_logic;
        ctr_lui         : out    vl_logic;
        ctr_jerro       : out    vl_logic;
        ctr_orig_alu    : out    vl_logic;
        sinal_overflow  : out    vl_logic;
        breg_r1_dado    : out    vl_logic_vector(31 downto 0);
        breg_r2_dado    : out    vl_logic_vector(31 downto 0);
        ctrl_op_ula     : out    vl_logic_vector(3 downto 0);
        din_breg        : out    vl_logic_vector(31 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        aOUTPUT         : out    vl_logic_vector(31 downto 0);
        saida_epc       : out    vl_logic_vector(31 downto 0)
    );
end Processador_mips_final;
