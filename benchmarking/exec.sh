#!/bin/bash

make
node count.js
./count_c
./count_rust

echo "Benchmarking completed."
make fclean
