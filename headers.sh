#!/bin/bash -l 

# qudafy headers
echo ""
echo "******************"
echo "* QUDAfy headers *"
echo "******************"

FIND_COMMAND="find ./quda/lib ./quda/include ./quda/tests -path ./quda/include/externals -prune -o -type f -exec"

${FIND_COMMAND} sed -i 's/cuda_profiler_api/quda_profiler_api/g' {} \;
echo "cuda_profiler_api -> quda_profiler_api"

${FIND_COMMAND} sed -i 's/cuComplex\.h/qudaComplex\.h/g' {} \;
echo "cuComplex.h -> qudaComplex.h"

${FIND_COMMAND} sed -i 's/cufft\.h/quda_fft\.h/g' {} \;
echo "cufft.h -> quda_fft.h"

${FIND_COMMAND} sed -i 's/cudarand_kernel/qudarand_kernel/g' {} \;
echo "cudarand_kernel -> qudarand_kernel"

${FIND_COMMAND} sed -i 's/cuda\.h/quda_backend\.h/g' {} \;
echo "cudarand_kernel -> qudarand_kernel"

# replace quda_cuda_api.h with quda_backend_api.h in certain files.
${FIND_COMMAND} sed -i 's/quda_cuda_api\.h/quda_backend_api\.h/g' {} \;
echo "quda_cuda_api.h -> quda_backend_api.h"

${FIND_COMMAND} sed -i 's/cuda\.h/quda_backend\.h/g' {} \;
echo "cuda.h -> quda_backend.h"

${FIND_COMMAND} sed -i 's/cuda_runtime\.h/quda_backend\.h/g' {} \;
echo "cuda_runtime.h -> quda_backend.h"

