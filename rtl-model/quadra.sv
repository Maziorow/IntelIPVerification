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
	 sq_t sq_well;

	logic signed [49:0] Product_mul_temp;  /* sfix50_En51 */
    logic signed [48:0] Product_out1;  /* sfix49_En51 */

	logic signed [24:0] Product_cast;  /* sfix25_En24 */
  logic signed [56:0] Product_mul_temp1;  /* sfix57_En52 */
  logic signed [55:0] Product_out2;  /* sfix56_En52 */
  logic signed [30:0] Cast_out1;  /* sfix31_En27 */

	
   lut lut_1(.x1(x1),
				   .a(a),
					.b(b),
					.c(c));
					
	square square_1(.x2(x2),
						  .sq(sq));
   

	assign sq_well = sq >> 12;
	assign x1 = x[23:17];
	assign x2 = x[16:0];
	assign t0 = a >>> 1;
	assign Product_mul_temp = $signed({1'b0,x2}) * b;
	assign Product_out1 = Product_mul_temp[48:0];
	assign t1 = {{6{Product_out1[48]}}, Product_out1[48:24]};
  	assign Product_cast = {1'b0, sq_well};
  	assign Product_mul_temp1 = Product_cast * c;
  	assign Product_out2 = Product_mul_temp1[55:0];
	assign Cast_out1 = Product_out2[55:25];
	assign t2 = Cast_out1;
	assign s = (t0 + t1 + t2);
	assign y = s[28:4];
endmodule
