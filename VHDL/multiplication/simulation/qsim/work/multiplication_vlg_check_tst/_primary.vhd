library verilog;
use verilog.vl_types.all;
entity multiplication_vlg_check_tst is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplication_vlg_check_tst;
