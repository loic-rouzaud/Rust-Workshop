#!/bin/bash

make
node count.js
./count_c
./count_rust
wait

echo "Benchmarking completed."
make fclean
