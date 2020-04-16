#!/bin/bash -l

# changes made 'by hand'
# These are OK, just change the source code.
sed -i "s/\&num_failures_d/(void\*\*)\&num_failures_d/g" quda/lib/interface_quda.cpp
sed -i "s/qudaHostGetDevicePointer(&hd_reduce/qudaHostGetDevicePointer((void**)hd_reduce/g" quda/lib/reduce_quda.cu
sed -i "s/DevicePointer(&num_failures_d/DevicePointer((void**)num_failures_d/g" quda/lib/gauge_observable.cpp
sed -i "s/int\ \*num_failures_d/int\ \*num_failures_d\ =\ 0/g" quda/lib/gauge_observable.cpp
# Possible issue with qudaEventCreate -> qudaEventCreateWithFlags
sed -i "s/qudaEventCreate/qudaEventCreateWithFlags/g" quda/lib/lattice_field.cpp
sed -i "s/qudaEventCreate/qudaEventCreateWithFlags/g" quda/lib/extended_color_spinor_utilities.cu
sed -i "s/qudaEventCreate/qudaEventCreateWithFlags/g" quda/lib/clover_outer_product.cu

sed -i "s/(void**)hd_reduce,\ h_reduce/(void**)&hd_reduce,\ (void*)h_reduce/g" quda/lib/reduce_quda.cu

# Evidently a problem!
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/reduce_quda.cu
sed -i "s/qudaEventQuery/cudaEventQuery/g" quda/lib/multi_reduce_quda.cu
