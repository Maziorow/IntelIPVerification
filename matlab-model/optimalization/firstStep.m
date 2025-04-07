m_start = 0x000000;
m_stop = 0x0f0000;
m_step = 0x001001;
stop = false;
x1F = 0;

for shift = 1:6
    counter = 0;
    lut = lutGenerator(shift);
    for m = m_start:m_step:m_stop
        if(stop)
            break
        end
        x_dbl = double(m)/double(0x00800000);
        in_spec = approxFixedFirstStep(x_dbl,shift,lut);
        if(not(in_spec))
            x_dbl
            stop = true;
            x1F = shift;
            break
        end
    end
end

fprintf("x2 should be of size u1.%d, need to calculate %d LUT", ...
    7-x1F+1, 2^(7-x1F+1));