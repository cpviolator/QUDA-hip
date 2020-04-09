#!/bin/bash -l 

#qudafy API calls
echo ""
echo "********************"
echo "* QUDAfy API calls *"
echo "********************"

FIND_COMMAND="find ./quda/lib ./quda/include ./quda/tests -path ./quda/include/externals -prune -o -type f -exec"

${FIND_COMMAND} sed -i 's/cudaCreateTextureObject/qudaCreateTextureObject/g' {} \;
echo "cudaCreateTextureObject -> qudaCreateTextureObject"

${FIND_COMMAND} sed -i 's/cudaDestroyTextureObject/qudaDestroyTextureObject/g' {} \;
echo "cudaDestroyTextureObject- > qudaDestroyTextureObject"

${FIND_COMMAND} sed -i 's/cudaDeviceCanAccessPeer/qudaDeviceCanAccessPeer/g' {} \;
echo "cudaDeviceCanAccessPeer -> qudaDeviceCanAccessPeer"

${FIND_COMMAND} sed -i 's/cudaDeviceGetStreamPriorityRange/qudaDeviceGetStreamPriorityRange/g' {} \;
echo "cudaDeviceGetStreamPriorityRange -> qudaDeviceGetStreamPriorityRange"

${FIND_COMMAND} sed -i 's/cudaDeviceReset/qudaDeviceReset/g' {} \;
echo "cudaDeviceReset -> qudaDeviceReset"

${FIND_COMMAND} sed -i 's/cudaDeviceSetCacheConfig/qudaDeviceSetCacheConfig/g' {} \;
echo "cudaDeviceSetCacheConfig -> qudaDeviceSetCacheConfig"

${FIND_COMMAND} sed -i 's/cudaDeviceSynchronize/qudaDeviceSynchronize/g' {} \;
echo "cudaDeviceSynchronize -> qudaDeviceSynchronize"

${FIND_COMMAND} sed -i 's/cudaGetDeviceCount/qudaGetDeviceCount/g' {} \;
echo "cudaGetDeviceCount -> qudaGetDeviceCount"

${FIND_COMMAND} sed -i 's/cudaGetDeviceProperties/qudaGetDeviceProperties/g' {} \;
echo "cudaGetDeviceProperties -> qudaGetDeviceProperties"

${FIND_COMMAND} sed -i 's/cudaHostGetDevicePointer/qudaHostGetDevicePointer/g' {} \;
echo "cudaHostGetDevicePointer -> qudaHostGetDevicePointer"

${FIND_COMMAND} sed -i 's/cudaSetDevice/qudaSetDevice/g' {} \;
echo "cudaSetDevice -> qudaSetDevice"

${FIND_COMMAND} sed -i 's/cudaDriverGetVersion/qudaDriverGetVersion/g' {} \;
echo "cudaDriverGetVersion -> qudaDriverGetVersion"

${FIND_COMMAND} sed -i 's/cudaRuntimeGetVersion/qudaRuntimeGetVersion/g' {} \;
echo "cudaRuntimeGetVersion -> qudaRuntimeGetVersion"

${FIND_COMMAND} sed -i 's/cudaEventCreate/qudaEventCreate/g' {} \;
echo "cudaEventCreate -> qudaEventCreate"

${FIND_COMMAND} sed -i 's/cudaEventDestroy/qudaEventDestroy/g' {} \;
echo "cudaEventDestroy -> qudaEventDestroy"

${FIND_COMMAND} sed -i 's/cudaEventElapsedTime/qudaEventElapsedTime/g' {} \;
echo "cudaEventElapsedTime -> qudaEventElapsedTime"

${FIND_COMMAND} sed -i 's/cudaEventRecord/qudaEventRecord/g' {} \;
echo "cudaEventRecord -> qudaEventRecord"

${FIND_COMMAND} sed -i 's/cudaEventSynchronize/qudaEventSynchronize/g' {} \;
echo "cudaEventSynchronize -> qudaEventSynchronize"

${FIND_COMMAND} sed -i 's/cudaGetTextureObjectResourceDesc/qudaGetTextureObjectResourceDesc/g' {} \;
echo "cudaGetTextureObjectResourceDesc -> qudaGetTextureObjectResourceDesc"

${FIND_COMMAND} sed -i 's/cudaMemcpyToSymbolAsync/qudaMemcpyToSymbolAsync/g' {} \;
echo "cudaMemcpyToSymbolAsync -> qudaMemcpyToSymbolAsync"
