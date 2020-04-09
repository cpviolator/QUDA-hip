#!/bin/bash -l 

echo "Transfer new files..." 
cp quda-cuda/quda_backend.h quda/include/quda_backend.h
(cd quda; git add include/quda_backend.h; git commit -am "Added quda_backend.h file")

cp quda-cuda/quda_backend_api.h quda/include/quda_backend_api.h
(cd quda; git add include/quda_backend_api.h; git commit -am "Added quda_backend_api.h file")

cp quda-cuda/quda_cuda_api.h quda/include/quda_cuda_api.h
(cd quda; git add include/quda_cuda_api.h; git commit -am "Added quda_cuda_api.h file")

cp quda-cuda/quda_fft.h quda/include/quda_fft.h
(cd quda; git add include/quda_fft.h; git commit -am "Added quda_fft.h file")

cp quda-cuda/qudaComplex.h quda/include/qudaComplex.h
(cd quda; git add include/qudaComplex.h; git commit -am "Added qudaComplex.h file")

cp quda-cuda/qudarand_kernel.h quda/include/qudarand_kernel.h
(cd quda; git add include/qudarand_kernel.h; git commit -am "Added qudarand_kernel.h file")

cp quda-cuda/quda_profiler_api.h quda/include/quda_profiler_api.h
(cd quda; git add include/quda_profiler_api.h; git commit -am "Added quda_profiler_api.h file")

cp quda-cuda/quda_cuda_api.cpp quda/lib/quda_cuda_api.cpp
(cd quda; git add lib/quda_cuda_api.cpp; git commit -am "Added quda_cuda_api.cpp file")

cp quda-cuda/CMakeLists.txt quda/CMakeLists.txt
(cd quda; git add CMakeLists.txt; git commit -am "Added CMakeLists.txt file")

