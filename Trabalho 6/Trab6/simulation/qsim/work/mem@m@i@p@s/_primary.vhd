library verilog;
use verilog.vl_types.all;
entity memMIPS is
    port(
        clk             : in     vl_logic;
        clk_mem         : in     vl_logic;
        wPC             : in     vl_logic;
        m1              : in     vl_logic;
        initpc8b        : in     vl_logic_vector(7 downto 0);
        outputmem       : out    vl_logic_vector(31 downto 0);
        outbcd1         : out    vl_logic_vector(6 downto 0);
        outbcd2         : out    vl_logic_vector(6 downto 0)
    );
end memMIPS;
