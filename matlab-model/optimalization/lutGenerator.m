function lut = lutGenerator(shift)
    if(shift~=0)
        N = 2^(7-shift);
        n = [0:N-1]';
        x = 2*(n/N);
    
        a =    sin((2*x)-(pi/4));  % f(x)/0!
        b =  2*cos((2*x)-(pi/4));  % f'(x)/1!
        c = -2*sin((2*x)-(pi/4));  % f''(x)/2!
    
        lut = [n a b c];
    else
        lut = lut7Generator();
    end
end

