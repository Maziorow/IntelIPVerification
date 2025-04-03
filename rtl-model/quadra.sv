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


	logic signed [T1_PRODUCT_W:0] t1_product;

	logic signed [T2_PRODUCT_W:0] t2_product;

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

	assign t1_product = $signed({1'b0, x2}) * b;
	assign t1 = $signed({{(T1_SHIFT){t1_product[T1_KEEP_MSB]}}, 
                     t1_product[T1_KEEP_MSB:T1_KEEP_LSB]});

	assign t2_product = $signed({1'b0, sq}) * c;
  	assign t2 = t2_product[T2_KEEP_MSB:T2_KEEP_LSB];

	assign sum = t0 + t1 + t2;
  	assign s = sum[S_W-1:0];
	assign round_bits = s[Y_ROUND-1:0];
	assign round_bit = (round_bits > Y_ROUND_THRESH) || 
                ((round_bits == Y_ROUND_THRESH) && s[Y_ROUND]); //rounding
	assign y = s[S_W-1:Y_ROUND] + round_bit;
endmodule
