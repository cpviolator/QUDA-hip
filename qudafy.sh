#!/bin/bash -l 

# QUDAfy all CUDA references in the QUDA library
#-----------------------------------------------
    
# Clean directory
echo "Removing any old source code..." 
rm -rf quda

# Get develop branch of QUDA
git clone https://github.com/lattice/quda.git

(cd quda; git checkout -b feature/cuda-backend-2)

./data-types.sh
(cd quda; git commit -am "Converted CUDA data types to QUDA data types")
./api-calls.sh
(cd quda; git commit -am "Converted CUDA api calls to QUDA api calls types")
./headers.sh
(cd quda; git commit -am "Converted CUDA header names to QUDA header names")
./misc.sh
(cd quda; git commit -am "Some miscellaneous changes")

# Replace files
./replace.sh

(cd build; make -j 128)
