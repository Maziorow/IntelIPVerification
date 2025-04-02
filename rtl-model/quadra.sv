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

	logic signed [32:0] sum;


   lut lut_1(.x1(x1),
				   .a(a),
					.b(b),
					.c(c));
					
	square square_1(.x2(x2),
						  .sq(sq));
   

	assign x1 = x[23:17];
	assign x2 = x[16:0];
	assign t0 = a >>> 1;
	assign Product_mul_temp1 = $signed({1'b0,x2}) * b;
	assign Product_out1 = Product_mul_temp1[48:0];
	assign t1 = {{6{Product_out1[48]}}, Product_out1[48:24]};
	wire signed [56:0] product = c * $signed({1'b0, sq});
  	assign t2 = product[55:25];

	assign sum = t0 + t1 + t2;
  	assign s = sum[28:0];

  	assign y = s[28 : 4]+1;
endmodule
