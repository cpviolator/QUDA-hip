# QUDA-hip

Progression and tools used for hipification of QUDA. To execute, simply run

./qudafy.sh

This will delete any existing folder named `quda`, clone the latest develop branch,
create a new repository, and then proceed to swap out CUDA API data types and function
calls with a neutral QUDA version. During this process, commits are made to the git
repository at suitable checkpoints.

## TODO

1. Swap out the CUDA thrust library for the ROCm port: https://github.com/ROCmSoftwarePlatform/Thrust 
2. Deal with the explicit sed lines in replace.sh
3. Make a Jenkins script that will detect CUDA API and data types in forbidden regions.

# Known issues
