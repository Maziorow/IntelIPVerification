%% Convert CoeffTable.hpp to lut.sv format
%% Reads data directly from the C++ header file

1;

function lut = write_lut_sv()
  % Fixed-point format (same as print_coeffs.m)
  A_I = 1;  A_F = 23;  A_W = A_I + A_F;  % s4.28
  B_I = 3;  B_F = 16;  B_W = B_I + B_F;  % s4.28
  C_I = 2;  C_F = 11;  C_W = C_I + C_F;  % s4.28

  % Read CoeffTable.hpp
  fid = fopen('../c++-model/CoeffTable.hpp', 'r');
  if fid == -1
    error('Could not open CoeffTable.hpp');
  end

  % Parse the file to extract coefficients
  coeffs = [];
  while ~feof(fid)
    line = fgetl(fid);

    % Match lines with coefficient data (e.g., "{   0,   -0.7071067988872528076171875000,    1.4142456054687500000000000000,    1.4030761718750000000000000000 },")
    match = regexp(line, '\{\s*(\d+),\s*([\d.-]+),\s*([\d.-]+),\s*([\d.-]+)\s*\}', 'tokens');

    if ~isempty(match)
      k = str2double(match{1}{1});
      a = str2double(match{1}{2});
      b = str2double(match{1}{3});
      c = str2double(match{1}{4});
      coeffs = [coeffs; k, a, b, c];
      lut = [k, a, b, c];
    end
  end
  fclose(fid);

  if isempty(coeffs)
    error('No coefficients found in CoeffTable.hpp');
  end

  % Sort by index (k) just in case
  coeffs = sortrows(coeffs, 1);

  % Open output file
  fid = fopen('lut.sv', 'w');
  if fid == -1
    error('Could not open lut.sv for writing');
  end

  % Write header
  fprintf(fid, '`include "quadra.vh"\n\n');
  fprintf(fid, 'module lut\n');
  fprintf(fid, '(\n');
  fprintf(fid, '    input  x1_t  x1,\n');
  fprintf(fid, '    output a_t   a,\n');
  fprintf(fid, '    output b_t   b,\n');
  fprintf(fid, '    output c_t   c\n');
  fprintf(fid, ');\n');
  fprintf(fid, '    // Read coefficients:\n');

  % Write a coefficients
  fprintf(fid, '    always_comb\n');
  fprintf(fid, '    unique casez (x1)\n');
  for i = 1:size(coeffs, 1)
    k = coeffs(i, 1);
    a_q = fix(coeffs(i, 2) * (2^A_F));
    if (a_q < 0)
      a_val = a_q + (2^A_W);
    else
      a_val = a_q;
    end
    fprintf(fid, '        7''b%s :  a = %d''h%06x;\n', dec2bin(k,7), A_W, a_val);
  end
  fprintf(fid, '        default    :  a = ''x;\n');
  fprintf(fid, '    endcase\n\n');

  % Write b coefficients
  fprintf(fid, '    always_comb\n');
  fprintf(fid, '    unique casez (x1)\n');
  for i = 1:size(coeffs, 1)
    k = coeffs(i, 1);
    b_q = fix(coeffs(i, 3) * (2^B_F));
    if (b_q < 0)
      b_val = b_q + (2^B_W);
    else
      b_val = b_q;
    end
    fprintf(fid, '        7''b%s :  b = %d''h%05x;\n', dec2bin(k,7), B_W, b_val);
  end
  fprintf(fid, '        default    :  b = ''x;\n');
  fprintf(fid, '    endcase\n\n');

  % Write c coefficients
  fprintf(fid, '    always_comb\n');
  fprintf(fid, '    unique casez (x1)\n');
  for i = 1:size(coeffs, 1)
    k = coeffs(i, 1);
    c_q = fix(coeffs(i, 4) * (2^C_F));
    if (c_q < 0)
      c_val = c_q + (2^C_W);
    else
      c_val = c_q;
    end
    fprintf(fid, '        7''b%s :  c = %d''h%04x;\n', dec2bin(k,7), C_W, c_val);
  end
  fprintf(fid, '        default    :  c = ''x;\n');
  fprintf(fid, '    endcase\n\n');

  fprintf(fid, 'endmodule\n');
  fclose(fid);

  fprintf('Successfully generated lut.sv with %d coefficients\n', size(coeffs, 1));
end

% Run the conversion
write_lut_sv();
