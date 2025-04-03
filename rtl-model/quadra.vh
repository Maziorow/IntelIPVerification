// quadra.vh

`ifndef QUADRA_VH
`define QUADRA_VH

typedef logic ck_t; // clock
typedef logic rs_t; // reset
typedef logic dv_t; // data valid

// --------------------------------------------------------------------------------
// I/O precision
// --------------------------------------------------------------------------------

// x in [0,2) -> u1.23
localparam int  X_I =  1;          //         =  1
localparam int  X_F = 23;          //         = 23
localparam int  X_W = X_I + X_F;   //  1 + 23 = 24 (u1.23)

typedef logic [X_W-1:0] x_t;

// y [-2,2) -> s2.23
localparam int  Y_I =  2;          //         =  2
localparam int  Y_F = 23;          //         = 23
localparam int  Y_W = Y_I + Y_F;   //  2 + 23 = 25 (s2.23)

typedef logic signed [Y_W-1:0] y_t;

// --------------------------------------------------------------------------------
// Internal precision:
// --------------------------------------------------------------------------------

// <challenge!>

localparam int X1_I = 1;
localparam int X1_F = 6;
localparam int X1_W = X1_I + X1_F;

typedef logic [X1_W-1:0] x1_t;


localparam int X2_I = 0;
localparam int X2_J = -6;
localparam int X2_F = 17;
localparam int X2_W = X2_I + X2_F;

typedef logic [X2_W-1:0] x2_t;


localparam int A_I = 4;
localparam int A_F = 28;
localparam int A_W = A_I + A_F;

typedef logic signed [A_W-1:0] a_t;


localparam int B_I = 4;
localparam int B_F = 28;
localparam int B_W = B_I + B_F;

typedef logic signed [B_W-1:0] b_t;


localparam int C_I = 4;
localparam int C_F = 28;
localparam int C_W = C_I + C_F;

typedef logic signed [C_W-1:0] c_t;


localparam int R_F = 4;

localparam int S_I = Y_I;
localparam int S_F = Y_F + R_F;
localparam int S_W = S_I + S_F;

typedef logic signed [S_W-1:0] s_t;


localparam int SQ_I = X2_I + X2_I;
localparam int SQ_F = 24;
localparam int SQ_W = SQ_I + SQ_F;

typedef logic [SQ_W-1:0] sq_t;


localparam int T0_I = A_I;
localparam int T0_F = S_F;
localparam int T0_W = T0_I + T0_F;

typedef logic signed [T0_W-1:0] t0_t;


localparam int T1_I = B_I + X2_I;
localparam int T1_F = S_F;
localparam int T1_W = T1_I + T1_F;

typedef logic signed [T1_W-1:0] t1_t;


localparam int T2_I = C_I + SQ_I;
localparam int T2_F = S_F;
localparam int T2_W = T2_I + T2_F;

typedef logic signed [T2_W-1:0] t2_t;

localparam A_SHIFT = A_F-T0_F;

localparam int T1_PRODUCT_W = X2_W + B_W;
localparam int T1_PRODUCT_F = X2_F + B_F;
localparam int T1_KEEP_MSB = T1_PRODUCT_W - 1;
localparam int T1_KEEP_LSB = T1_PRODUCT_F - T1_F - X2_J;
localparam int T1_SHIFT = -X2_J;

localparam int T2_PRODUCT_W = T2_W + SQ_W;
localparam int T2_KEEP_MSB = T2_W + SQ_W;
localparam int T2_KEEP_LSB = C_W + SQ_W - T2_W;

localparam int Y_ROUND = S_W-Y_W;
localparam int Y_ROUND_THRESH = 1 << (Y_ROUND-1);

typedef struct packed {
    x1_t x1;
    x2_t x2;
} stage1_t;

typedef struct packed {
    a_t a;
    b_t b;
    c_t c;
    x2_t x2;
    sq_t sq;
} stage2_t;

typedef struct packed {
    t0_t t0;
    t1_t t1;
    t2_t t2;
} stage3_t;

`endif
