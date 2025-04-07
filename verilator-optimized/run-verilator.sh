#! /usr/bin/zsh -f

rm -rf run-verilator.log

TOP_DIR=$(pwd)/..
ACT_DIR=${TOP_DIR}/libs/ac_types/include
CPP_DIR=${TOP_DIR}/c++-model-optimized
RTL_DIR=${TOP_DIR}/rtl-model-optimized

echo "--------------------------------------------------------------------------------"
echo "Compiling with 'verilator' ..."
echo "--------------------------------------------------------------------------------"

top_module="quadra_top"

verilator \
    --cc \
    -CFLAGS "-std=c++17 -I${ACT_DIR} -I${CPP_DIR}" \
    ${CPP_DIR}/Quadra.cpp \
    sim_main.cpp \
    --exe \
    --build \
    --timing \
    --trace \
    --trace-structs \
    -j 0 \
    -Wall \
   -Wno-VARHIDDEN \
    -Wno-UNUSEDSIGNAL \
   -Wno-UNDRIVEN \
   -Wno-PINCONNECTEMPTY \
   -Wno-GENUNNAMED \
   -Wno-UNUSEDGENVAR \
    -Wno-UNUSEDPARAM \
    -Wno-WIDTHTRUNC \
    -Wno-WIDTHEXPAND \
   -Wno-COMBDLY \
   -Wno-REALCVT \
    \
    --error-limit 20 \
    --timescale 1ps/1ps \
    --timescale-override 1ps/1ps \
    --top-module ${top_module} \
    --clk screuclk \
    \
    +define+NOFLOPDELAY=1 \
    \
    +incdir+${RTL_DIR} \
    +incdir+${CPP_DIR} \
    \
    +1800-2009ext+vs \
    ${RTL_DIR}/quadra_top.sv \
    ${RTL_DIR}/square.sv \
    ${RTL_DIR}/lut.sv \
    ${RTL_DIR}/quadra.sv

echo "--------------------------------------------------------------------------------"
echo "... done with 'verilator'."
echo "--------------------------------------------------------------------------------"