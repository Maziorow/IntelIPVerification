##
## Convert signed coeffs to hex:
##

load coeffs.txt

f_a = fopen("coeffs/a.txt","w");
f_b = fopen("coeffs/b.txt","w");
f_c = fopen("coeffs/c.txt","w");

k = coeffs(:,1);
a = coeffs(:,2);
b = coeffs(:,3);
c = coeffs(:,4);

K = length(k);

# coeff a:
A_I =  4;
A_F = 28;
A_W = A_I + A_F; # (s4.28)

# coeff b:
B_I =  4;
B_F = 28;
B_W = B_I + B_F; # (s4.28)

# coeff c:
C_I =  4;
C_F = 28;
C_W = C_I + C_F; # (s4.28)

a_q = round(a * (2^A_F));
b_q = round(b * (2^B_F));
c_q = round(b * (2^C_F));

A = zeros(K,1);
B = zeros(K,1);
C = zeros(K,1);

# Print out the coefficients:
for k = 0 : K-1
    i = k+1; # array indexing starts at 1
    if (a_q(i) < 0)
        A(i) = a_q(i) + (2^A_W);
    else
        A(i) = a_q(i);
    end
    fprintf(f_a,"   7'b%7s :  a = %d'h%08x;\n",dec2bin(k,7),A_W,A(i));
    if (b_q(i) < 0)
        B(i) = b_q(i) + (2^B_W);
    else
        B(i) = b_q(i);
    end
    fprintf(f_b,"   7'b%7s :  b = %d'h%08x;\n",dec2bin(k,7),B_W,B(i));
    if (c_q(i) < 0)
        C(i) = c_q(i) + (2^C_W);
    else
        C(i) = c_q(i);
    end
    fprintf(f_c,"   7'b%7s :  c = %d'h%08x;\n",dec2bin(k,7),C_W,C(i));
    printf("%8d  0x%08x  0x%08x  0x%08x\n", k, A(i), B(i), C(i));
endfor

fclose(f_a);
fclose(f_b);
fclose(f_c);
