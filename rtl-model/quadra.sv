//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
    input x_t x,
	output y_t y
);

	 x1_t x1;
	 x2_t x2;
	 sq_t sq;
	 a_t a;
	 b_t b;
	 c_t c;
	 t0_t t0;
	 t1_t t1;
	 t2_t t2;
	 s_t s;


	logic signed [49:0] Product_mul_temp1;  /* sfix50_En51 */
    logic signed [48:0] Product_out1;  /* sfix49_En51 */
	logic signed [T2_PRODUCT_W-1:0] t2_product;

	logic signed [S_W+1:0] sum;
	logic [Y_ROUND-1:0] round_bits;
	logic round_bit;


   lut lut_1(.x1(x1),
				   .a(a),
					.b(b),
					.c(c));
					
	square square_1(.x2(x2),
						  .sq(sq));
   

	assign x1 = x[23:17];
	assign x2 = x[16:0];

	assign t0 = a >>> (A_SHIFT);

	assign Product_mul_temp1 = $signed({1'b0,x2}) * b;
	assign Product_out1 = Product_mul_temp1[48:0];
	assign t1 = {{6{Product_out1[48]}}, Product_out1[48:24]};

	assign t2_product = $signed({1'b0, sq}) * c;
  	assign t2 = t2_product[T2_PRODUCT_TRUNC_W-1:T2_ROUND];

	assign sum = t0 + t1 + t2;
  	assign s = sum[S_W-1:0];
	assign round_bits = s[Y_ROUND-1:0];
	assign round_bit = (round_bits > Y_ROUND_THRESH) || 
                ((round_bits == Y_ROUND_THRESH) && s[Y_ROUND]);
	assign y = s[S_W-1:Y_ROUND] + round_bit;
endmodule
