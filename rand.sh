#!/bin/bash -l

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/curand_kernel/qudarand_kernel/g' {} \;
echo "curand_kernel -> qudarand_kernel"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/curand/qurand/g' {} \;
echo "curand -> qurand"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cuRNGState/quRNGState/g' {} \;
echo "cuRNGState -> quRNGState"
