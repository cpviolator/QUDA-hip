# QUDA-hip
Progression and tools used for hipification of QUDA

# Thu Sep 19 2019

I've constructed a simple tool that will give us clues about what issues we will run 
into when hipifying QUDA. It assumes that a built version of QUDA exists, with the 
source in 'quda' and the build in 'build'. It will iterate over the source code in 
'quda/lib', convert the code IN PLACE, then place a report on the conversion in 
'output' with a diff.

This file is intended to be used on SUMMIT, which has a working hip module. If you have
a working ROCm installation and wish to use this code, please file an issue.

## Useful commands (run in this diriectory)

One can query how many lines were changed in a file using

    `grep "CHANGED lines" output*/*.txt`

One can query which CUDA identifiers are unsupported via

    `grep -A 2 "unsupp" output*/*.txt`

and similarly for deprecated

    `grep -A 2 "deprecated" output*/*.txt'

# Thu Oct 31 2019 (Happy Hallowe'en!)

It written a set of tools that will download the latest version of QUDA's develop branch,
replace all CUDA API and data types, with QUDA types, and install a QUDA-CUDA backend in 
the QUDA library.

To execute this, simply run

./qudafy.sh

## TODO

Swap out the CUDA thrust library for the ROCm port: https://github.com/ROCmSoftwarePlatform/Thrust 
