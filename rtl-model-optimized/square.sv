`include "quadra.vh"

module square
(
    input  x2_t x2,
    output sq_t sq
);
    logic [33:0] tmp;

    // Compute x2^2:
    assign tmp = x2*x2;
    always_comb sq = {12'b0, tmp[33:22]};

endmodule    
