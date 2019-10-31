#!/bin/bash -l 

echo "Transfer new files..." 
cp quda-cuda/quda_backend.h quda/include/quda_backend.h
cp quda-cuda/quda_backend_api.h quda/include/quda_backend_api.h
cp quda-cuda/quda_cuda_api.h quda/include/quda_cuda_api.h
cp quda-cuda/quda_fft.h quda/include/quda_fft.h
cp quda-cuda/qudaComplex.h quda/include/qudaComplex.h
cp quda-cuda/qudarand_kernel.h quda/include/qudarand_kernel.h
cp quda-cuda/quda_profiler_api.h quda/include/quda_profiler_api.h
cp quda-cuda/quda_cuda_api.cpp quda/lib/quda_cuda_api.cpp
cp quda-cuda/CMakeLists.txt quda/CMakeLists.txt

# changes made 'by hand'
# These are OK, just change the source code.
sed -i "s/DevicePointer(&num_failures_d/DevicePointer((void**)num_failures_d/g" quda/lib/interface_quda.cpp
sed -i "s/qudaHostGetDevicePointer(&hd_reduce/qudaHostGetDevicePointer((void**)hd_reduce/g" quda/lib/reduce_quda.cu

# Possible issue with qudaEventCreate -> qudaEventCreateWithFlags
sed -i "s/qudaEventCreate/qudaEventCreateWithFlags/g" quda/lib/lattice_field.cpp

# Evidently a problem!
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/reduce_quda.cu
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/multi_reduce_quda.cu
