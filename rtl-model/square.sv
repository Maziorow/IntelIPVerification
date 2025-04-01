`include "quadra.vh"

module square
(
    input  x2_t x2,
    output sq_t sq
);
    // Compute x2^2:
    always_comb sq = x2 * x2;

    wire logic [33:0] sq_2;
    assign sq_2 = x2*x2;

endmodule    
