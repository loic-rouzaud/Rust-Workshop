#!/bin/bash

make
node count.js
python3 count.py
julia count.jl
./count_c
./count_hs
./count_rust

echo "Benchmarking completed."
make fclean
