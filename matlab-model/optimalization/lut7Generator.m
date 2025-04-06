function lut = lut7Generator()
  % Fixed-point format (same as print_coeffs.m)
  A_I = 4;  A_F = 28;  A_W = A_I + A_F;  % s4.28
  B_I = 4;  B_F = 28;  B_W = B_I + B_F;  % s4.28
  C_I = 4;  C_F = 28;  C_W = C_I + B_F;  % s4.28

  % Read CoeffTable.hpp
  fid = fopen('../../c++-model/CoeffTable.hpp', 'r');
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
    end
  end
  fclose(fid);

  if isempty(coeffs)
    error('No coefficients found in CoeffTable.hpp');
  end
  lut = coeffs;