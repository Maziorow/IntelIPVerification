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
	
   lut lut_1(.x1(x1),
				   .a(a),
					.b(b),
					.c(c));
					
	square square_1(.x2(x2),
						  .sq(sq));
   

	assign x1 = x[23:17];
	assign x2 = x[16:0];
	assign t0 = a;
	assign t1 = b * x2;
	assign t2 = c * sq;
	assign s = t0 + t1 + t2;
	assign y = s[28:4];
endmodule
