#! /usr/bin/zsh -f

make DBG_TST=1 clean all run | egrep y_err | cut -d'=' -f2 > err.dat
