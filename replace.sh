#!/bin/bash -l 

# Refresh HIP branch of QUDA
rm -rf quda_HIP
git clone https://github.com/lattice/quda.git quda_HIP
(cd quda_HIP; git checkout feature/hip_backend)

echo "Transfer new files..." 
cp quda_HIP/include/quda_backend.h quda/include/quda_backend.h
cp quda_HIP/include/quda_backend_api.h quda/include/quda_backend_api.h
cp quda_HIP/include/quda_cuda_api.h quda/include/quda_cuda_api.h
cp quda_HIP/include/quda_fft.h quda/include/quda_fft.h
cp quda_HIP/include/qudaComplex.h quda/include/qudaComplex.h
cp quda_HIP/include/qudarand_kernel.h quda/include/qudarand_kernel.h
cp quda_HIP/include/quda_profiler_api.h quda/include/quda_profiler_api.h
cp quda_HIP/lib/quda_cuda_api.cpp quda/lib/quda_cuda_api.cpp
cp quda_HIP/CMakeLists.txt quda/CMakeLists.txt

# changes made 'by hand'
sed -i "s/DevicePointer(&num_failures_d/DevicePointer((void**)num_failures_d/g" quda/lib/interface_quda.cpp
sed -i "s/qudaEventCreate(&/qudaEventCreateWithFlags(&/g" quda/lib/lattice_field.cpp
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/reduce_quda.cu
sed -i "s/qudaHostGetDevicePointer(&hd_reduce/qudaHostGetDevicePointer((void**)hd_reduce/g" quda/lib/reduce_quda.cu
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/multi_reduce_quda.cu

mkdir quda-cuda
cp quda_HIP/include/quda_backend.h quda-cuda/.
cp quda_HIP/include/quda_backend_api.h quda-cuda/.
cp quda_HIP/include/quda_cuda_api.h quda-cuda/.
cp quda_HIP/include/quda_fft.h quda-cuda/.
cp quda_HIP/include/qudaComplex.h quda-cuda/.
cp quda_HIP/include/qudarand_kernel.h quda-cuda/.
cp quda_HIP/include/quda_profiler_api.h quda-cuda/.
cp quda_HIP/lib/quda_cuda_api.cpp quda-cuda/.
cp quda_HIP/CMakeLists.txt quda-cuda/.
