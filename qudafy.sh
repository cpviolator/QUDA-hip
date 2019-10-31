#!/bin/bash -l 

# QUDAfy all CUDA references in the QUDA library
#-----------------------------------------------
    
# Clean directory
echo "Removing any old source code..." 
rm -rf quda

# Get develop branch of QUDA
git clone https://github.com/lattice/quda.git

./data-types.sh
./api-calls.sh
./headers.sh
./replace.sh
