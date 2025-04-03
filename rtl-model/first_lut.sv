`include "quadra.vh"

module lut
(
    input  x1_t  x1,
    output a_t   a,
    output b_t   b,
    output c_t   c
);
    // Read coefficients:
    always_comb
    unique casez (x1)
        7'b0000000 :  a = 32'hf4afb0c8;
        7'b0000001 :  a = 32'hf50b997c;
        7'b0000010 :  a = 32'hf56a3f44;
        7'b0000011 :  a = 32'hf5cb8a64;
        7'b0000100 :  a = 32'hf62f6294;
        7'b0000101 :  a = 32'hf695aee4;
        7'b0000110 :  a = 32'hf6fe55b8;
        7'b0000111 :  a = 32'hf7693ce8;
        7'b0001000 :  a = 32'hf7d649c0;
        7'b0001001 :  a = 32'hf8456104;
        7'b0001010 :  a = 32'hf8b666d8;
        7'b0001011 :  a = 32'hf9293f0c;
        7'b0001100 :  a = 32'hf99dccec;
        7'b0001101 :  a = 32'hfa13f34c;
        7'b0001110 :  a = 32'hfa8b94ac;
        7'b0001111 :  a = 32'hfb049320;
        7'b0010000 :  a = 32'hfb7ed060;
        7'b0010001 :  a = 32'hfbfa2de4;
        7'b0010010 :  a = 32'hfc768ce4;
        7'b0010011 :  a = 32'hfcf3ce34;
        7'b0010100 :  a = 32'hfd71d294;
        7'b0010101 :  a = 32'hfdf07a74;
        7'b0010110 :  a = 32'hfe6fa634;
        7'b0010111 :  a = 32'hfeef360c;
        7'b0011000 :  a = 32'hff6f0a10;
        7'b0011001 :  a = 32'hffef0250;
        7'b0011010 :  a = 32'h006efed4;
        7'b0011011 :  a = 32'h00eedf98;
        7'b0011100 :  a = 32'h016e84a0;
        7'b0011101 :  a = 32'h01edce14;
        7'b0011110 :  a = 32'h026c9c08;
        7'b0011111 :  a = 32'h02eacee4;
        7'b0100000 :  a = 32'h0368470c;
        7'b0100001 :  a = 32'h03e4e524;
        7'b0100010 :  a = 32'h04608a10;
        7'b0100011 :  a = 32'h04db16dc;
        7'b0100100 :  a = 32'h05546ce8;
        7'b0100101 :  a = 32'h05cc6ddc;
        7'b0100110 :  a = 32'h0642fbc4;
        7'b0100111 :  a = 32'h06b7f8f0;
        7'b0101000 :  a = 32'h072b4828;
        7'b0101001 :  a = 32'h079ccc94;
        7'b0101010 :  a = 32'h080c69dc;
        7'b0101011 :  a = 32'h087a0414;
        7'b0101100 :  a = 32'h08e57fd4;
        7'b0101101 :  a = 32'h094ec23c;
        7'b0101110 :  a = 32'h09b5b104;
        7'b0101111 :  a = 32'h0a1a3274;
        7'b0110000 :  a = 32'h0a7c2d60;
        7'b0110001 :  a = 32'h0adb8948;
        7'b0110010 :  a = 32'h0b382e60;
        7'b0110011 :  a = 32'h0b92057c;
        7'b0110100 :  a = 32'h0be8f828;
        7'b0110101 :  a = 32'h0c3cf0a0;
        7'b0110110 :  a = 32'h0c8dd9f4;
        7'b0110111 :  a = 32'h0cdb9fe0;
        7'b0111000 :  a = 32'h0d262ef0;
        7'b0111001 :  a = 32'h0d6d748c;
        7'b0111010 :  a = 32'h0db15ed8;
        7'b0111011 :  a = 32'h0df1dce0;
        7'b0111100 :  a = 32'h0e2ede88;
        7'b0111101 :  a = 32'h0e685488;
        7'b0111110 :  a = 32'h0e9e3084;
        7'b0111111 :  a = 32'h0ed06504;
        7'b1000000 :  a = 32'h0efee58c;
        7'b1000001 :  a = 32'h0f29a660;
        7'b1000010 :  a = 32'h0f509ce4;
        7'b1000011 :  a = 32'h0f73bf58;
        7'b1000100 :  a = 32'h0f9304f0;
        7'b1000101 :  a = 32'h0fae65d8;
        7'b1000110 :  a = 32'h0fc5db3c;
        7'b1000111 :  a = 32'h0fd95f40;
        7'b1001000 :  a = 32'h0fe8ed00;
        7'b1001001 :  a = 32'h0ff480a0;
        7'b1001010 :  a = 32'h0ffc1730;
        7'b1001011 :  a = 32'h0fffaed0;
        7'b1001100 :  a = 32'h0fff469c;
        7'b1001101 :  a = 32'h0ffadea8;
        7'b1001110 :  a = 32'h0ff27810;
        7'b1001111 :  a = 32'h0fe614f0;
        7'b1010000 :  a = 32'h0fd5b864;
        7'b1010001 :  a = 32'h0fc1667c;
        7'b1010010 :  a = 32'h0fa92450;
        7'b1010011 :  a = 32'h0f8cf7f0;
        7'b1010100 :  a = 32'h0f6ce868;
        7'b1010101 :  a = 32'h0f48fdbc;
        7'b1010110 :  a = 32'h0f2140e0;
        7'b1010111 :  a = 32'h0ef5bbcc;
        7'b1011000 :  a = 32'h0ec6795c;
        7'b1011001 :  a = 32'h0e938558;
        7'b1011010 :  a = 32'h0e5cec98;
        7'b1011011 :  a = 32'h0e22bca0;
        7'b1011100 :  a = 32'h0de50418;
        7'b1011101 :  a = 32'h0da3d258;
        7'b1011110 :  a = 32'h0d5f37bc;
        7'b1011111 :  a = 32'h0d174560;
        7'b1100000 :  a = 32'h0ccc0d44;
        7'b1100001 :  a = 32'h0c7da234;
        7'b1100010 :  a = 32'h0c2c17d4;
        7'b1100011 :  a = 32'h0bd78278;
        7'b1100100 :  a = 32'h0b7ff74c;
        7'b1100101 :  a = 32'h0b258c30;
        7'b1100110 :  a = 32'h0ac857c8;
        7'b1100111 :  a = 32'h0a687150;
        7'b1101000 :  a = 32'h0a05f0cc;
        7'b1101001 :  a = 32'h09a0eee0;
        7'b1101010 :  a = 32'h093984b4;
        7'b1101011 :  a = 32'h08cfcc40;
        7'b1101100 :  a = 32'h0863dfe0;
        7'b1101101 :  a = 32'h07f5da9c;
        7'b1101110 :  a = 32'h0785d7e4;
        7'b1101111 :  a = 32'h0713f3c0;
        7'b1110000 :  a = 32'h06a04aac;
        7'b1110001 :  a = 32'h062af988;
        7'b1110010 :  a = 32'h05b41db8;
        7'b1110011 :  a = 32'h053bd4e0;
        7'b1110100 :  a = 32'h04c23d18;
        7'b1110101 :  a = 32'h044774cc;
        7'b1110110 :  a = 32'h03cb9aa4;
        7'b1110111 :  a = 32'h034ecda4;
        7'b1111000 :  a = 32'h02d12cec;
        7'b1111001 :  a = 32'h0252d7ec;
        7'b1111010 :  a = 32'h01d3ee40;
        7'b1111011 :  a = 32'h01548f98;
        7'b1111100 :  a = 32'h00d4dbcc;
        7'b1111101 :  a = 32'h0054f2cc;
        7'b1111110 :  a = 32'hffd4f490;
        7'b1111111 :  a = 32'hff550114;
        default    :  a = 'x;
    endcase

    always_comb
    unique casez (x1)
        7'b0000000 :  b = 32'h16a0c000;
        7'b0000001 :  b = 32'h1752f000;
        7'b0000010 :  b = 32'h17ff4000;
        7'b0000011 :  b = 32'h18a59800;
        7'b0000100 :  b = 32'h1945c800;
        7'b0000101 :  b = 32'h19dfa000;
        7'b0000110 :  b = 32'h1a730800;
        7'b0000111 :  b = 32'h1affd000;
        7'b0001000 :  b = 32'h1b85d800;
        7'b0001001 :  b = 32'h1c04f800;
        7'b0001010 :  b = 32'h1c7d2000;
        7'b0001011 :  b = 32'h1cee2800;
        7'b0001100 :  b = 32'h1d57f000;
        7'b0001101 :  b = 32'h1dba6800;
        7'b0001110 :  b = 32'h1e156800;
        7'b0001111 :  b = 32'h1e68e800;
        7'b0010000 :  b = 32'h1eb4d000;
        7'b0010001 :  b = 32'h1ef91000;
        7'b0010010 :  b = 32'h1f358800;
        7'b0010011 :  b = 32'h1f6a3800;
        7'b0010100 :  b = 32'h1f970800;
        7'b0010101 :  b = 32'h1fbbf800;
        7'b0010110 :  b = 32'h1fd8f800;
        7'b0010111 :  b = 32'h1fee0000;
        7'b0011000 :  b = 32'h1ffb1000;
        7'b0011001 :  b = 32'h20002000;
        7'b0011010 :  b = 32'h1ffd3000;
        7'b0011011 :  b = 32'h1ff24000;
        7'b0011100 :  b = 32'h1fdf5800;
        7'b0011101 :  b = 32'h1fc47000;
        7'b0011110 :  b = 32'h1fa1a000;
        7'b0011111 :  b = 32'h1f76e000;
        7'b0100000 :  b = 32'h1f444800;
        7'b0100001 :  b = 32'h1f09e000;
        7'b0100010 :  b = 32'h1ec7b000;
        7'b0100011 :  b = 32'h1e7dd000;
        7'b0100100 :  b = 32'h1e2c5000;
        7'b0100101 :  b = 32'h1dd34800;
        7'b0100110 :  b = 32'h1d72c800;
        7'b0100111 :  b = 32'h1d0af000;
        7'b0101000 :  b = 32'h1c9bd000;
        7'b0101001 :  b = 32'h1c259000;
        7'b0101010 :  b = 32'h1ba84000;
        7'b0101011 :  b = 32'h1b240800;
        7'b0101100 :  b = 32'h1a990800;
        7'b0101101 :  b = 32'h1a076800;
        7'b0101110 :  b = 32'h196f4000;
        7'b0101111 :  b = 32'h18d0b800;
        7'b0110000 :  b = 32'h182c0000;
        7'b0110001 :  b = 32'h17814000;
        7'b0110010 :  b = 32'h16d0a000;
        7'b0110011 :  b = 32'h161a4800;
        7'b0110100 :  b = 32'h155e6800;
        7'b0110101 :  b = 32'h149d3800;
        7'b0110110 :  b = 32'h13d6d800;
        7'b0110111 :  b = 32'h130b8800;
        7'b0111000 :  b = 32'h123b7800;
        7'b0111001 :  b = 32'h1166d000;
        7'b0111010 :  b = 32'h108dd800;
        7'b0111011 :  b = 32'h0fb0b800;
        7'b0111100 :  b = 32'h0ecfa800;
        7'b0111101 :  b = 32'h0deae800;
        7'b0111110 :  b = 32'h0d02b000;
        7'b0111111 :  b = 32'h0c173800;
        7'b1000000 :  b = 32'h0b28b000;
        7'b1000001 :  b = 32'h0a376800;
        7'b1000010 :  b = 32'h09439000;
        7'b1000011 :  b = 32'h084d6800;
        7'b1000100 :  b = 32'h07552800;
        7'b1000101 :  b = 32'h065b1800;
        7'b1000110 :  b = 32'h055f7000;
        7'b1000111 :  b = 32'h04627000;
        7'b1001000 :  b = 32'h03645800;
        7'b1001001 :  b = 32'h02656000;
        7'b1001010 :  b = 32'h0165d800;
        7'b1001011 :  b = 32'h0065f000;
        7'b1001100 :  b = 32'hff65f000;
        7'b1001101 :  b = 32'hfe661800;
        7'b1001110 :  b = 32'hfd66a800;
        7'b1001111 :  b = 32'hfc67e000;
        7'b1010000 :  b = 32'hfb69f800;
        7'b1010001 :  b = 32'hfa6d3800;
        7'b1010010 :  b = 32'hf971e000;
        7'b1010011 :  b = 32'hf8782800;
        7'b1010100 :  b = 32'hf7805000;
        7'b1010101 :  b = 32'hf68a9800;
        7'b1010110 :  b = 32'hf5974000;
        7'b1010111 :  b = 32'hf4a68000;
        7'b1011000 :  b = 32'hf3b89800;
        7'b1011001 :  b = 32'hf2cdc800;
        7'b1011010 :  b = 32'hf1e63800;
        7'b1011011 :  b = 32'hf1023800;
        7'b1011100 :  b = 32'hf021f000;
        7'b1011101 :  b = 32'hef45a800;
        7'b1011110 :  b = 32'hee6d8800;
        7'b1011111 :  b = 32'hed99d000;
        7'b1100000 :  b = 32'heccab000;
        7'b1100001 :  b = 32'hec006000;
        7'b1100010 :  b = 32'heb3b0800;
        7'b1100011 :  b = 32'hea7ae800;
        7'b1100100 :  b = 32'he9c02800;
        7'b1100101 :  b = 32'he90af800;
        7'b1100110 :  b = 32'he85b8000;
        7'b1100111 :  b = 32'he7b1f800;
        7'b1101000 :  b = 32'he70e8000;
        7'b1101001 :  b = 32'he6714000;
        7'b1101010 :  b = 32'he5da7000;
        7'b1101011 :  b = 32'he54a2000;
        7'b1101100 :  b = 32'he4c08000;
        7'b1101101 :  b = 32'he43da800;
        7'b1101110 :  b = 32'he3c1c800;
        7'b1101111 :  b = 32'he34cf800;
        7'b1110000 :  b = 32'he2df5000;
        7'b1110001 :  b = 32'he278f800;
        7'b1110010 :  b = 32'he219f800;
        7'b1110011 :  b = 32'he1c27800;
        7'b1110100 :  b = 32'he1728800;
        7'b1110101 :  b = 32'he12a3800;
        7'b1110110 :  b = 32'he0e9a000;
        7'b1110111 :  b = 32'he0b0c800;
        7'b1111000 :  b = 32'he07fc800;
        7'b1111001 :  b = 32'he056a800;
        7'b1111010 :  b = 32'he0357000;
        7'b1111011 :  b = 32'he01c2800;
        7'b1111100 :  b = 32'he00ae000;
        7'b1111101 :  b = 32'he0019000;
        7'b1111110 :  b = 32'he0004000;
        7'b1111111 :  b = 32'he006f000;
        default    :  b = 'x;
    endcase

    always_comb
    unique casez (x1)
        7'b0000000 :  c = 32'h16730000;
        7'b0000001 :  c = 32'h15ba0000;
        7'b0000010 :  c = 32'h14fb0000;
        7'b0000011 :  c = 32'h14370000;
        7'b0000100 :  c = 32'h136f0000;
        7'b0000101 :  c = 32'h12a10000;
        7'b0000110 :  c = 32'h11ce0000;
        7'b0000111 :  c = 32'h10f70000;
        7'b0001000 :  c = 32'h101c0000;
        7'b0001001 :  c = 32'h0f3d0000;
        7'b0001010 :  c = 32'h0e5a0000;
        7'b0001011 :  c = 32'h0d740000;
        7'b0001100 :  c = 32'h0c8a0000;
        7'b0001101 :  c = 32'h0b9d0000;
        7'b0001110 :  c = 32'h0aad0000;
        7'b0001111 :  c = 32'h09ba0000;
        7'b0010000 :  c = 32'h08c50000;
        7'b0010001 :  c = 32'h07ce0000;
        7'b0010010 :  c = 32'h06d40000;
        7'b0010011 :  c = 32'h05da0000;
        7'b0010100 :  c = 32'h04dd0000;
        7'b0010101 :  c = 32'h03e00000;
        7'b0010110 :  c = 32'h02e10000;
        7'b0010111 :  c = 32'h01e20000;
        7'b0011000 :  c = 32'h00e20000;
        7'b0011001 :  c = 32'hffe20000;
        7'b0011010 :  c = 32'hfee20000;
        7'b0011011 :  c = 32'hfde20000;
        7'b0011100 :  c = 32'hfce30000;
        7'b0011101 :  c = 32'hfbe50000;
        7'b0011110 :  c = 32'hfae80000;
        7'b0011111 :  c = 32'hf9ec0000;
        7'b0100000 :  c = 32'hf8f10000;
        7'b0100001 :  c = 32'hf7f80000;
        7'b0100010 :  c = 32'hf7010000;
        7'b0100011 :  c = 32'hf60d0000;
        7'b0100100 :  c = 32'hf51b0000;
        7'b0100101 :  c = 32'hf42c0000;
        7'b0100110 :  c = 32'hf33f0000;
        7'b0100111 :  c = 32'hf2560000;
        7'b0101000 :  c = 32'hf1700000;
        7'b0101001 :  c = 32'hf08e0000;
        7'b0101010 :  c = 32'hefb00000;
        7'b0101011 :  c = 32'heed60000;
        7'b0101100 :  c = 32'hee000000;
        7'b0101101 :  c = 32'hed2f0000;
        7'b0101110 :  c = 32'hec620000;
        7'b0101111 :  c = 32'heb9a0000;
        7'b0110000 :  c = 32'head70000;
        7'b0110001 :  c = 32'hea1a0000;
        7'b0110010 :  c = 32'he9620000;
        7'b0110011 :  c = 32'he8b00000;
        7'b0110100 :  c = 32'he8040000;
        7'b0110101 :  c = 32'he75d0000;
        7'b0110110 :  c = 32'he6bd0000;
        7'b0110111 :  c = 32'he6230000;
        7'b0111000 :  c = 32'he58f0000;
        7'b0111001 :  c = 32'he5030000;
        7'b0111010 :  c = 32'he47c0000;
        7'b0111011 :  c = 32'he3fd0000;
        7'b0111100 :  c = 32'he3850000;
        7'b0111101 :  c = 32'he3140000;
        7'b0111110 :  c = 32'he2aa0000;
        7'b0111111 :  c = 32'he2470000;
        7'b1000000 :  c = 32'he1ec0000;
        7'b1000001 :  c = 32'he1990000;
        7'b1000010 :  c = 32'he14d0000;
        7'b1000011 :  c = 32'he1080000;
        7'b1000100 :  c = 32'he0cc0000;
        7'b1000101 :  c = 32'he0970000;
        7'b1000110 :  c = 32'he06a0000;
        7'b1000111 :  c = 32'he0450000;
        7'b1001000 :  c = 32'he0280000;
        7'b1001001 :  c = 32'he0120000;
        7'b1001010 :  c = 32'he0050000;
        7'b1001011 :  c = 32'he0000000;
        7'b1001100 :  c = 32'he0030000;
        7'b1001101 :  c = 32'he00e0000;
        7'b1001110 :  c = 32'he0210000;
        7'b1001111 :  c = 32'he03b0000;
        7'b1010000 :  c = 32'he05e0000;
        7'b1010001 :  c = 32'he0890000;
        7'b1010010 :  c = 32'he0bb0000;
        7'b1010011 :  c = 32'he0f50000;
        7'b1010100 :  c = 32'he1370000;
        7'b1010101 :  c = 32'he1810000;
        7'b1010110 :  c = 32'he1d30000;
        7'b1010111 :  c = 32'he22b0000;
        7'b1011000 :  c = 32'he28c0000;
        7'b1011001 :  c = 32'he2f40000;
        7'b1011010 :  c = 32'he3630000;
        7'b1011011 :  c = 32'he3d90000;
        7'b1011100 :  c = 32'he4560000;
        7'b1011101 :  c = 32'he4da0000;
        7'b1011110 :  c = 32'he5650000;
        7'b1011111 :  c = 32'he5f60000;
        7'b1100000 :  c = 32'he68f0000;
        7'b1100001 :  c = 32'he72d0000;
        7'b1100010 :  c = 32'he7d20000;
        7'b1100011 :  c = 32'he87c0000;
        7'b1100100 :  c = 32'he92d0000;
        7'b1100101 :  c = 32'he9e30000;
        7'b1100110 :  c = 32'hea9f0000;
        7'b1100111 :  c = 32'heb600000;
        7'b1101000 :  c = 32'hec260000;
        7'b1101001 :  c = 32'hecf10000;
        7'b1101010 :  c = 32'hedc10000;
        7'b1101011 :  c = 32'hee960000;
        7'b1101100 :  c = 32'hef6f0000;
        7'b1101101 :  c = 32'hf04c0000;
        7'b1101110 :  c = 32'hf12d0000;
        7'b1101111 :  c = 32'hf2120000;
        7'b1110000 :  c = 32'hf2fa0000;
        7'b1110001 :  c = 32'hf3e50000;
        7'b1110010 :  c = 32'hf4d40000;
        7'b1110011 :  c = 32'hf5c50000;
        7'b1110100 :  c = 32'hf6b90000;
        7'b1110101 :  c = 32'hf7af0000;
        7'b1110110 :  c = 32'hf8a70000;
        7'b1110111 :  c = 32'hf9a10000;
        7'b1111000 :  c = 32'hfa9d0000;
        7'b1111001 :  c = 32'hfb9a0000;
        7'b1111010 :  c = 32'hfc980000;
        7'b1111011 :  c = 32'hfd970000;
        7'b1111100 :  c = 32'hfe960000;
        7'b1111101 :  c = 32'hff960000;
        7'b1111110 :  c = 32'h00960000;
        7'b1111111 :  c = 32'h01960000;
        default    :  c = 'x;
    endcase

endmodule
