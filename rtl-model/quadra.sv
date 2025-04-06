//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
	input ck_t clk,
	input rs_t rst_b,
    input x_t x,
	output y_t y
);
	s_t s;
	a_t a;
	b_t b;
	c_t c;
	sq_t sq;
	stage1_t stage1;
    stage2_t stage2;
    stage3_t stage3;

	logic signed [T1_PRODUCT_W:0] t1_product;
	logic signed [T2_PRODUCT_W:0] t2_product;
	logic signed [S_W+1:0] sum;
	logic [Y_ROUND-1:0] round_bits;
	logic round_bit;


    lut lut_1(.x1(stage1.x1),
				   .a(a),
					.b(b),
					.c(c));
					
	square square_1(.x2(stage1.x2),
						  .sq(sq));

    // Stage 1
    always_ff @(posedge clk) begin
        if (!rst_b) begin
            stage1 <= '0;
        end else begin
            stage1.x1 <= x[23:17];
            stage1.x2 <= x[16:0];
        end
    end

	//Stage 2
	always_ff @(posedge clk) begin
		stage2.x2 <= stage1.x2;
		stage2.a <= a;
		stage2.b <= b;
		stage2.c <= c;
		stage2.sq <= sq;
    end

	//Stage 3
	always_ff @(posedge clk) begin
		stage3.t0 <= stage2.a >>> (A_SHIFT);

		stage3.t1 <= $signed({{(T1_SHIFT){t1_product[T1_KEEP_MSB]}}, 
                    t1_product[T1_KEEP_MSB:T1_KEEP_LSB]});

		stage3.t2 <= t2_product[T2_KEEP_MSB:T2_KEEP_LSB];
    end

	always_comb begin
		t1_product = ($signed({1'b0, stage2.x2}) * stage2.b);
		t2_product = $signed({1'b0, stage2.sq}) * stage2.c;
		sum = stage3.t0 + stage3.t1 + stage3.t2;
  		s = sum[S_W-1:0];
		round_bits = s[Y_ROUND-1:0];
		round_bit = (round_bits > Y_ROUND_THRESH) || 
                ((round_bits == Y_ROUND_THRESH) && s[Y_ROUND]); //rounding
		y = s[S_W-1:Y_ROUND] + round_bit;
	end
endmodule
