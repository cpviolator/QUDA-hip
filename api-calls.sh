#!/bin/bash -l 

#qudafy API calls
echo ""
echo "********************"
echo "* QUDAfy API calls *"
echo "********************"
find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaCreateTextureObject/qudaCreateTextureObject/g' {} \;
echo "cudaCreateTextureObject -> qudaCreateTextureObject"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDestroyTextureObject/qudaDestroyTextureObject/g' {} \;
echo "cudaDestroyTextureObject- > qudaDestroyTextureObject"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceCanAccessPeer/qudaDeviceCanAccessPeer/g' {} \;
echo "cudaDeviceCanAccessPeer -> qudaDeviceCanAccessPeer"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceGetStreamPriorityRange/qudaDeviceGetStreamPriorityRange/g' {} \;
echo "cudaDeviceGetStreamPriorityRange -> qudaDeviceGetStreamPriorityRange"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceReset/qudaDeviceReset/g' {} \;
echo "cudaDeviceReset -> qudaDeviceReset"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceSetCacheConfig/qudaDeviceSetCacheConfig/g' {} \;
echo "cudaDeviceSetCacheConfig -> qudaDeviceSetCacheConfig"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDeviceSynchronize/qudaDeviceSynchronize/g' {} \;
echo "cudaDeviceSynchronize -> qudaDeviceSynchronize"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaGetDeviceCount/qudaGetDeviceCount/g' {} \;
echo "cudaGetDeviceCount -> qudaGetDeviceCount"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaGetDeviceProperties/qudaGetDeviceProperties/g' {} \;
echo "cudaGetDeviceProperties -> qudaGetDeviceProperties"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaHostGetDevicePointer/qudaHostGetDevicePointer/g' {} \;
echo "cudaHostGetDevicePointer -> qudaHostGetDevicePointer"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaSetDevice/qudaSetDevice/g' {} \;
echo "cudaSetDevice -> qudaSetDevice"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaDriverGetVersion/qudaDriverGetVersion/g' {} \;
echo "cudaDriverGetVersion -> qudaDriverGetVersion"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaRuntimeGetVersion/qudaRuntimeGetVersion/g' {} \;
echo "cudaRuntimeGetVersion -> qudaRuntimeGetVersion"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventCreate/qudaEventCreate/g' {} \;
echo "cudaEventCreate -> qudaEventCreate"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventDestroy/qudaEventDestroy/g' {} \;
echo "cudaEventDestroy -> qudaEventDestroy"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventElapsedTime/qudaEventElapsedTime/g' {} \;
echo "cudaEventElapsedTime -> qudaEventElapsedTime"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventRecord/qudaEventRecord/g' {} \;
echo "cudaEventRecord -> qudaEventRecord"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaEventSynchronize/qudaEventSynchronize/g' {} \;
echo "cudaEventSynchronize -> qudaEventSynchronize"

find ./quda/lib ./quda/include ./quda/tests -type f -exec sed -i 's/cudaGetTextureObjectResourceDesc/qudaGetTextureObjectResourceDesc/g' {} \;
echo "cudaGetTextureObjectResourceDesc -> qudaGetTextureObjectResourceDesc"
