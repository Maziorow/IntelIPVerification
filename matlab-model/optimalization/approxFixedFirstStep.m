function in_spec = approxFixedFirstStep(x_dbl, x_shift, lut)

    format long g

    ERR_TOL = 2.150e-6;
    M_PI = 3.14159265358979323846; %Same pi approximation as in the C++ code
    PI_OVER_4 = M_PI/4.0;

    rdz = fimath('OverflowAction','Wrap','RoundingMethod','Zero');
    rne = fimath('OverflowAction','Wrap','RoundingMethod','Convergent');
    trn = fimath('OverflowAction','Wrap','RoundingMethod','Floor');

    X_I=1;
    X_F=23;
    X_W=X_I+X_F;
   
    X1_I=1;
    X1_F=6-x_shift;
    X1_W=X1_I+X1_F;

    X2_I=0;
    X2_J=X2_I-X1_F;
    X2_F=X_W-X1_W;
    X2_W=X2_I+X2_F;

    A_I=4;
    A_F=28;
    A_W=A_I+A_F;

    B_I=4;
    B_F=28;
    B_W=B_I+B_F;

    C_I=4;
    C_F=28;
    C_W=C_I+C_F;

    Y_I=2;
    Y_F=23;
    Y_W=Y_I+Y_F;

    R_F=4;

    S_I=Y_I;
    S_F=Y_F+R_F;
    S_W=S_I+S_F;

    SQ_I=X2_I+X2_I;
    SQ_F=24;
    SQ_W=SQ_I+SQ_F;

    T0_I=A_I;
    T0_F=S_F;
    T0_W=T0_I+T0_F;

    T1_I=B_I+X2_I;
    T1_F=S_F;
    T1_W=T1_I+T1_F;

    T2_I=C_I+SQ_I;
    T2_F=S_F;
    T2_W=T2_I+T2_F;

    x_fxd = fi(x_dbl,0,X_W,X_F,trn);
    x_bin = x_fxd.bin;

    x1_fxd = fi(bin2dec(x_bin(1:X1_W)),0,X1_W,X1_F)
    x2_fxd = fi(bin2dec(x_bin(X2_W-1:end)),0,X2_W,X2_F-X2_J)
    hex(x2_fxd)

    lut_address = hex2dec(hex(x1_fxd));

    a_dbl = lut(lut_address+1,2);
    a_fxd = fi(a_dbl,1,A_W,A_F,rdz)
    b_dbl = lut(lut_address+1,3);
    b_fxd = fi(b_dbl,1,B_W,B_F,rdz)
    c_dbl = lut(lut_address+1,4);
    c_fxd = fi(c_dbl,1,C_W,C_F,rdz)

    sq_fxd = fi(x2_fxd*x2_fxd,0,SQ_W,SQ_F,trn)

    b_fxd.fimath = trn;
    x2_fxd.fimath = trn;
    c_fxd.fimath = trn;

    t0_fxd = fi(a_fxd,1,T0_W,T0_F,trn);
    t1_raw = b_fxd*x2_fxd;
    t1_fxd = fi(t1_raw,1,T1_W,T1_F,trn);
    t2_fxd = fi(c_fxd*sq_fxd,1,T2_W,T2_F,trn);

    s_fxd = fi(t0_fxd+t1_fxd+t2_fxd,1,S_W,S_F)

    y_rnd = fi(s_fxd,1,Y_W,Y_F,rne);
    y_fxd = fi(y_rnd,1,Y_W,Y_F,trn);
    
    y_ref = sin((2.0 * x_dbl) - PI_OVER_4);
    y_ref;
    double(y_fxd);
    y_err = abs(double(y_fxd)-y_ref);
    in_spec = (y_err < ERR_TOL);
end