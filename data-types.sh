#!/bin/bash -l 

# qudafy data types
echo ""
echo "*********************"
echo "* QUDAfy data types *"
echo "*********************"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDA_SUCCESS/QUDA_SUCCESS/g' {} \;
echo "CUDA_SUCCESS -> QUDA_SUCCESS"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDA_MEMORYTYPE_ARRAY/QUDA_MEMORYTYPE_ARRAY/g' {} \;
echo "CUDA_MEMORYTYPE_ARRAY -> QUDA_MEMORYTYPE_ARRAY"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDA_MEMORYTYPE_DEVICE/QUDA_MEMORYTYPE_DEVICE/g' {} \;
echo "CUDA_MEMORYTYPE_DEVICE -> QUDA_MEMORYTYPE_DEVICE"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDA_MEMORYTYPE_UNIFIED/QUDA_MEMORYTYPE_UNIFIED/g' {} \;
echo "CUDA_MEMORYTYPE_UNIFIED -> QUDA_MEMORYTYPE_UNIFIED"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDA_MEMORYTYPE_HOST/QUDA_MEMORYTYPE_HOST/g' {} \;
echo "CUDA_MEMORYTYPE_HOST -> QUDA_MEMORYTYPE_HOST"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDAFFT_C2C/QUDAFFT_C2C/g' {} \;
echo "CUDAFFT_C2C -> QUDAFFT_C2C"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUDAFFT_C2C/QUDAFFT_C2C/g' {} \;
echo "CUDAFFT_C2C -> QUDAFFT_C2C"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUresult/QUresult/g' {} \;
echo "CUresult -> QUresult" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUdeviceptr/QUdeviceptr/g' {} \;
echo "CUdeviceptr -> QUdeviceptr" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/CUresult/QUresult/g' {} \;
echo "CUresult -> QUresult" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaChannelFormatDesc/qudaChannelFormatDesc/g' {} \;
echo "cudaChannelFormatDesc -> qudaChannelFormatDesc"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaChannelFormatKindFloat/qudaChannelFormatKindFloat/g' {} \;
echo "cudaChannelFormatKindFloat -> qudaChannelFormatKindFloat"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaChannelFormatKindSigned/qudaChannelFormatKindSigned/g' {} \;
echo "cudaChannelFormatKindSigned -> qudaChannelFormatKindSigned"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventDisableTiming/qudaEventDisableTiming/g' {} \;
echo "cudaEventDisableTiming -> qudaEventDisableTiming"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventInterprocess/qudaEventInterprocess/g' {} \;
echo "cudaEventInterprocess -> qudaEventInterprocess"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaFuncCache/qudaFuncCache/g' {} \;
echo "cudaFuncCache -> qudaFuncCache"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaFuncCachePreferL1/qudaFuncCachePreferL1/g' {} \;
echo "cudaFuncCachePreferL1 -> qudaFuncCachePreferL1"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudafftComplex/qudafftComplex/g' {} \;
echo "cudafftComplex -> qudafftComplex"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudafftDoubleComplex/qudafftDoubleComplex/g' {} \;
echo "cudafftDoubleComplex -> qudafftDoubleComplex"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudafftHandle/qudafftHandle/g' {} \;
echo "cudafftHandle -> qudafftHandle"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudafftResult/qudafftResult/g' {} \;
echo "cudafftResult -> qudafftResult"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaHostRegisterDefault/qudaHostRegisterDefault/g' {} \;
echo "cudaHostRegisterDefault -> qudaHostRegisterDefault"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaHostRegisterMapped/qudaHostRegisterMapped/g' {} \;
echo "cudaHostRegisterMapped -> qudaHostRegisterMapped"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaHostRegisterPortable/qudaHostRegisterPortable/g' {} \;
echo "cudaHostRegisterPortable -> qudaHostRegisterPortable"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaIpcEventHandle_t/qudaIpcEventHandle_t/g' {} \;
echo "cudaIpcEventHandle_t -> qudaIpcEventHandle_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaIpcMemHandle_t/qudaIpcMemHandle_t/g' {} \;
echo "cudaIpcMemHandle_t -> qudaIpcMemHandle_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaIpcMemLazyEnablePeerAccess/qudaIpcMemLazyEnablePeerAccess/g' {} \;
echo "cudaIpcMemLazyEnablePeerAccess -> qudaIpcMemLazyEnablePeerAccess"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaTextureDesc/qudaTextureDesc/g' {} \;
echo "cudaTextureDesc -> qudaTextureDesc"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaTextureObject_t/qudaTextureObject_t/g' {} \;
echo "cudaTextureObject_t -> qudaTextureObject_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaReadModeElementType/qudaReadModeElementType/g' {} \;
echo "cudaReadModeElementType -> qudaReadModeElementType" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaReadModeNormalizedFloat/qudaReadModeNormalizedFloat/g' {} \;
echo "cudaReadModeNormalizedFloat -> qudaReadModeNormalizedFloat"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaResourceDesc/qudaResourceDesc/g' {} \;
echo "cudaResourceDesc -> qudaResourceDesc"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaResourceTypeLinear/qudaResourceTypeLinear/g' {} \;
echo "cudaResourceTypeLinear -> qudaResourceTypeLinear"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaResourceViewDesc/qudaResourceViewDesc/g' {} \;
echo "cudaResourceViewDesc -> qudaResourceViewDesc"

find ./quda/ -type f -exec sed -i "s/cudaSharedmemCarveoutMaxShared/qudaSharedmemCarveoutMaxShared/g" {} \;
echo "cudaSharedmemCarveoutMaxShared -> qudaSharedmemCarveoutMaxShared"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaStreamDefault/qudaStreamDefault/g' {} \;
echo "cudaStreamDefault -> qudaStreamDefault"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaStream_t/qudaStream_t/g' {} \;
echo "cudaStream_t -> qudaStream_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaSuccess/qudaSuccess/g' {} \;
echo "cudaSuccess -> qudaSuccess"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEvent_t/qudaEvent_t/g' {} \;
echo "cudaEvent_t -> qudaEvent_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaError_t/qudaError_t/g' {} \;
echo "cudaError_t -> qudaError_t"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceptr/qudaDeviceptr/g' {} \;
echo "cudaDeviceptr -> qudaDeviceptr" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaMemorytype/qudaMemorytype/g' {} \;
echo "cudaMemorytype -> qudaMemorytype" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaMemcpyKind/qudaMemcpyKind/g' {} \;
echo "cudaMemcpyKind -> qudaMemcpyKind"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaMemcpyDeviceToHost/qudaMemcpyDeviceToHost/g' {} \;
echo "cudaMemcpyDeviceToHost -> qudaMemcpyDeviceToHost"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaMemcpyHostToDevice/qudaMemcpyHostToDevice/g' {} \;
echo "cudaMemcpyHostToDevice -> qudaMemcpyHostToDevice"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaMemcpyDeviceToDevice/qudaMemcpyDeviceToDevice/g' {} \;
echo "cudaMemcpyDeviceToDevice -> qudaMemcpyDeviceToDevice"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaFuncAttribute/qudaFuncAttribute/g' {} \;
echo "cudaFuncAttribute -> qudaFuncAttribute"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceProp/qudaDeviceProp/g' {} \;
echo "cudaDeviceProp -> qudaDeviceProp"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaWarpSize/qudaWarpSize/g' {} \;
echo "cudaWarpSize -> qudaWarpSize" 

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaFuncAttributePreferredSharedMemoryCarveout/qudaFuncAttributePreferredSharedMemoryCarveout/g' {} \;
echo "cudaFuncAttributePreferredSharedMemoryCarveout -> qudaFuncAttributePreferredSharedMemoryCarveout"
