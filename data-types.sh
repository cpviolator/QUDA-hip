#!/bin/bash -l 

# qudafy data types
echo ""
echo "*********************"
echo "* QUDAfy data types *"
echo "*********************"

FIND_COMMAND="find ./quda/lib ./quda/include ./quda/tests -path ./quda/include/externals -prune -o -type f -exec"

${FIND_COMMAND} sed -i 's/CUDA_SUCCESS/QUDA_SUCCESS/g' {} \;
echo "CUDA_SUCCESS -> QUDA_SUCCESS"

${FIND_COMMAND} sed -i 's/CUDA_MEMORYTYPE_ARRAY/QUDA_MEMORYTYPE_ARRAY/g' {} \;
echo "CUDA_MEMORYTYPE_ARRAY -> QUDA_MEMORYTYPE_ARRAY"

${FIND_COMMAND} sed -i 's/CUDA_MEMORYTYPE_DEVICE/QUDA_MEMORYTYPE_DEVICE/g' {} \;
echo "CUDA_MEMORYTYPE_DEVICE -> QUDA_MEMORYTYPE_DEVICE"

${FIND_COMMAND} sed -i 's/CUDA_MEMORYTYPE_UNIFIED/QUDA_MEMORYTYPE_UNIFIED/g' {} \;
echo "CUDA_MEMORYTYPE_UNIFIED -> QUDA_MEMORYTYPE_UNIFIED"

${FIND_COMMAND} sed -i 's/CUDA_MEMORYTYPE_HOST/QUDA_MEMORYTYPE_HOST/g' {} \;
echo "CUDA_MEMORYTYPE_HOST -> QUDA_MEMORYTYPE_HOST"

${FIND_COMMAND} sed -i 's/CUDAFFT_C2C/QUDAFFT_C2C/g' {} \;
echo "CUDAFFT_C2C -> QUDAFFT_C2C"

${FIND_COMMAND} sed -i 's/CUDAFFT_C2C/QUDAFFT_C2C/g' {} \;
echo "CUDAFFT_C2C -> QUDAFFT_C2C"

${FIND_COMMAND} sed -i 's/CUresult/QUresult/g' {} \;
echo "CUresult -> QUresult" 

${FIND_COMMAND} sed -i 's/CUdeviceptr/QUdeviceptr/g' {} \;
echo "CUdeviceptr -> QUdeviceptr" 

${FIND_COMMAND} sed -i 's/CUresult/QUresult/g' {} \;
echo "CUresult -> QUresult" 

${FIND_COMMAND} sed -i 's/cudaChannelFormatDesc/qudaChannelFormatDesc/g' {} \;
echo "cudaChannelFormatDesc -> qudaChannelFormatDesc"

${FIND_COMMAND} sed -i 's/cudaChannelFormatKindFloat/qudaChannelFormatKindFloat/g' {} \;
echo "cudaChannelFormatKindFloat -> qudaChannelFormatKindFloat"

${FIND_COMMAND} sed -i 's/cudaChannelFormatKindSigned/qudaChannelFormatKindSigned/g' {} \;
echo "cudaChannelFormatKindSigned -> qudaChannelFormatKindSigned"

${FIND_COMMAND} sed -i 's/cudaEventDisableTiming/qudaEventDisableTiming/g' {} \;
echo "cudaEventDisableTiming -> qudaEventDisableTiming"

${FIND_COMMAND} sed -i 's/cudaEventInterprocess/qudaEventInterprocess/g' {} \;
echo "cudaEventInterprocess -> qudaEventInterprocess"

${FIND_COMMAND} sed -i 's/cudaFuncCache/qudaFuncCache/g' {} \;
echo "cudaFuncCache -> qudaFuncCache"

${FIND_COMMAND} sed -i 's/cudaFuncCachePreferL1/qudaFuncCachePreferL1/g' {} \;
echo "cudaFuncCachePreferL1 -> qudaFuncCachePreferL1"

${FIND_COMMAND} sed -i 's/cudafftComplex/qudafftComplex/g' {} \;
echo "cudafftComplex -> qudafftComplex"

${FIND_COMMAND} sed -i 's/cudafftDoubleComplex/qudafftDoubleComplex/g' {} \;
echo "cudafftDoubleComplex -> qudafftDoubleComplex"

${FIND_COMMAND} sed -i 's/cudafftHandle/qudafftHandle/g' {} \;
echo "cudafftHandle -> qudafftHandle"

${FIND_COMMAND} sed -i 's/cudafftResult/qudafftResult/g' {} \;
echo "cudafftResult -> qudafftResult"

${FIND_COMMAND} sed -i 's/cudaHostRegisterDefault/qudaHostRegisterDefault/g' {} \;
echo "cudaHostRegisterDefault -> qudaHostRegisterDefault"

${FIND_COMMAND} sed -i 's/cudaHostRegisterMapped/qudaHostRegisterMapped/g' {} \;
echo "cudaHostRegisterMapped -> qudaHostRegisterMapped"

${FIND_COMMAND} sed -i 's/cudaHostRegisterPortable/qudaHostRegisterPortable/g' {} \;
echo "cudaHostRegisterPortable -> qudaHostRegisterPortable"

${FIND_COMMAND} sed -i 's/cudaIpcEventHandle_t/qudaIpcEventHandle_t/g' {} \;
echo "cudaIpcEventHandle_t -> qudaIpcEventHandle_t"

${FIND_COMMAND} sed -i 's/cudaIpcMemHandle_t/qudaIpcMemHandle_t/g' {} \;
echo "cudaIpcMemHandle_t -> qudaIpcMemHandle_t"

${FIND_COMMAND} sed -i 's/cudaIpcMemLazyEnablePeerAccess/qudaIpcMemLazyEnablePeerAccess/g' {} \;
echo "cudaIpcMemLazyEnablePeerAccess -> qudaIpcMemLazyEnablePeerAccess"

${FIND_COMMAND} sed -i 's/cudaTextureDesc/qudaTextureDesc/g' {} \;
echo "cudaTextureDesc -> qudaTextureDesc"

${FIND_COMMAND} sed -i 's/cudaTextureObject_t/qudaTextureObject_t/g' {} \;
echo "cudaTextureObject_t -> qudaTextureObject_t"

${FIND_COMMAND} sed -i 's/cudaReadModeElementType/qudaReadModeElementType/g' {} \;
echo "cudaReadModeElementType -> qudaReadModeElementType" 

${FIND_COMMAND} sed -i 's/cudaReadModeNormalizedFloat/qudaReadModeNormalizedFloat/g' {} \;
echo "cudaReadModeNormalizedFloat -> qudaReadModeNormalizedFloat"

${FIND_COMMAND} sed -i 's/cudaResourceDesc/qudaResourceDesc/g' {} \;
echo "cudaResourceDesc -> qudaResourceDesc"

${FIND_COMMAND} sed -i 's/cudaResourceTypeLinear/qudaResourceTypeLinear/g' {} \;
echo "cudaResourceTypeLinear -> qudaResourceTypeLinear"

${FIND_COMMAND} sed -i 's/cudaResourceViewDesc/qudaResourceViewDesc/g' {} \;
echo "cudaResourceViewDesc -> qudaResourceViewDesc"

find ./quda/ -type f -exec sed -i "s/cudaSharedmemCarveoutMaxShared/qudaSharedmemCarveoutMaxShared/g" {} \;
echo "cudaSharedmemCarveoutMaxShared -> qudaSharedmemCarveoutMaxShared"

${FIND_COMMAND} sed -i 's/cudaStreamDefault/qudaStreamDefault/g' {} \;
echo "cudaStreamDefault -> qudaStreamDefault"

${FIND_COMMAND} sed -i 's/cudaStream_t/qudaStream_t/g' {} \;
echo "cudaStream_t -> qudaStream_t"

${FIND_COMMAND} sed -i 's/cudaSuccess/qudaSuccess/g' {} \;
echo "cudaSuccess -> qudaSuccess"

${FIND_COMMAND} sed -i 's/cudaEvent_t/qudaEvent_t/g' {} \;
echo "cudaEvent_t -> qudaEvent_t"

${FIND_COMMAND} sed -i 's/cudaError_t/qudaError_t/g' {} \;
echo "cudaError_t -> qudaError_t"

${FIND_COMMAND} sed -i 's/cudaDeviceptr/qudaDeviceptr/g' {} \;
echo "cudaDeviceptr -> qudaDeviceptr" 

${FIND_COMMAND} sed -i 's/cudaMemorytype/qudaMemorytype/g' {} \;
echo "cudaMemorytype -> qudaMemorytype" 

${FIND_COMMAND} sed -i 's/cudaMemcpyKind/qudaMemcpyKind/g' {} \;
echo "cudaMemcpyKind -> qudaMemcpyKind"

${FIND_COMMAND} sed -i 's/cudaMemcpyDeviceToHost/qudaMemcpyDeviceToHost/g' {} \;
echo "cudaMemcpyDeviceToHost -> qudaMemcpyDeviceToHost"

${FIND_COMMAND} sed -i 's/cudaMemcpyHostToDevice/qudaMemcpyHostToDevice/g' {} \;
echo "cudaMemcpyHostToDevice -> qudaMemcpyHostToDevice"

${FIND_COMMAND} sed -i 's/cudaMemcpyDeviceToDevice/qudaMemcpyDeviceToDevice/g' {} \;
echo "cudaMemcpyDeviceToDevice -> qudaMemcpyDeviceToDevice"

${FIND_COMMAND} sed -i 's/cudaFuncAttribute/qudaFuncAttribute/g' {} \;
echo "cudaFuncAttribute -> qudaFuncAttribute"

${FIND_COMMAND} sed -i 's/cudaDeviceProp/qudaDeviceProp/g' {} \;
echo "cudaDeviceProp -> qudaDeviceProp"

${FIND_COMMAND} sed -i 's/cudaWarpSize/qudaWarpSize/g' {} \;
echo "cudaWarpSize -> qudaWarpSize" 

${FIND_COMMAND} sed -i 's/cudaFuncAttributePreferredSharedMemoryCarveout/qudaFuncAttributePreferredSharedMemoryCarveout/g' {} \;
echo "cudaFuncAttributePreferredSharedMemoryCarveout -> qudaFuncAttributePreferredSharedMemoryCarveout"
