#!/bin/bash

module load hip
module load cuda/9.2.148

#This file assumes the following:
# 1: You have the QUDA source code in a directory named 'quda' in this directory.
#    This tool will perform IN PLACE conversion to files in 'quda', and compare
#    with files in 'quda_ref', which it creates itself
# 2: You have performed a CMake build in a directory named 'build' in this directory

# Create directory for output statistics, or clean if it exists
mkdir output
rm output/*

# Refresh source directory
(cd quda; git stash)

# Download reference source code
(rm -rf quda_ref; git clone https://github.com/lattice/quda.git quda_ref)

# Convert file by file
for FILE in dirac_coarse.cpp dslash_coarse.cu coarse_op.cu coarsecoarse_op.cu \
    coarse_op_preconditioned.cu \
    eigensolve_quda.cpp quda_arpack_interface.cpp \
    multigrid.cpp transfer.cpp block_orthogonalize.cu inv_bicgstab_quda.cpp \
    prolongator.cu restrictor.cu gauge_phase.cu timer.cpp malloc.cpp \
    solver.cpp inv_bicgstab_quda.cpp inv_cg_quda.cpp inv_bicgstabl_quda.cpp \
    inv_multi_cg_quda.cpp inv_eigcg_quda.cpp gauge_ape.cu \
    gauge_stout.cu gauge_plaq.cu laplace.cu gauge_laplace.cpp \
    inv_cg3_quda.cpp inv_cg3ne_quda.cpp inv_ca_gcr.cpp inv_ca_cg.cpp \
    inv_gcr_quda.cpp inv_mr_quda.cpp inv_sd_quda.cpp inv_xsd_quda.cpp \
    inv_pcg_quda.cpp inv_mre.cpp interface_quda.cpp util_quda.cpp \
    color_spinor_field.cpp color_spinor_util.cu color_spinor_pack.cu \
    color_spinor_wuppertal.cu covDev.cu gauge_covdev.cpp \
    cpu_color_spinor_field.cpp cuda_color_spinor_field.cpp dirac.cpp \
    clover_field.cpp lattice_field.cpp gauge_field.cpp \
    cpu_gauge_field.cpp cuda_gauge_field.cpp extract_gauge_ghost.cu \
    extract_gauge_ghost_mg.cu max_gauge.cu gauge_update_quda.cu \
    max_clover.cu dirac_clover.cpp dirac_wilson.cpp dirac_staggered.cpp \
    dirac_improved_staggered.cpp dirac_domain_wall.cpp \
    dirac_domain_wall_4d.cpp dirac_mobius.cpp dirac_twisted_clover.cpp \
    dirac_twisted_mass.cpp tune.cpp \
    llfat_quda.cu gauge_force.cu gauge_random.cu \
    gauge_field_strength_tensor.cu clover_quda.cu dslash_quda.cu \
    dslash_staggered.cu dslash_improved_staggered.cu \
    dslash_wilson.cu dslash_wilson_clover.cu dslash5_domain_wall.cu \
    dslash_wilson_clover_preconditioned.cu \
    dslash_twisted_mass.cu dslash_twisted_mass_preconditioned.cu \
    dslash_ndeg_twisted_mass.cu dslash_ndeg_twisted_mass_preconditioned.cu \
    dslash_twisted_clover.cu dslash_twisted_clover_preconditioned.cu \
    dslash_domain_wall_4d.cu  dslash_domain_wall_5d.cu \
    dslash_pack2.cu \
    blas_quda.cu multi_blas_quda.cu copy_quda.cu reduce_quda.cu \
    multi_reduce_quda.cu contract.cu \
    comm_common.cpp \
    clover_deriv_quda.cu clover_invert.cu copy_gauge_extended.cu \
    extract_gauge_ghost_extended.cu copy_color_spinor.cu spinor_noise.cu \
    copy_color_spinor_dd.cu copy_color_spinor_ds.cu \
    copy_color_spinor_dh.cu copy_color_spinor_dq.cu \
    copy_color_spinor_ss.cu copy_color_spinor_sd.cu \
    copy_color_spinor_sh.cu copy_color_spinor_sq.cu \
    copy_color_spinor_hd.cu copy_color_spinor_hs.cu \
    copy_color_spinor_hh.cu copy_color_spinor_hq.cu \
    copy_color_spinor_qd.cu copy_color_spinor_qs.cu \
    copy_color_spinor_qh.cu copy_color_spinor_qq.cu \
    copy_color_spinor_mg_dd.cu copy_color_spinor_mg_ds.cu \
    copy_color_spinor_mg_sd.cu copy_color_spinor_mg_ss.cu \
    copy_color_spinor_mg_sh.cu copy_color_spinor_mg_sq.cu \
    copy_color_spinor_mg_hs.cu copy_color_spinor_mg_hh.cu \
    copy_color_spinor_mg_hq.cu copy_color_spinor_mg_qs.cu \
    copy_color_spinor_mg_qh.cu copy_color_spinor_mg_qq.cu \
    copy_gauge_double.cu copy_gauge_single.cu \
    copy_gauge_half.cu copy_gauge_quarter.cu \
    copy_gauge.cu copy_gauge_mg.cu copy_clover.cu \
    staggered_oprod.cu clover_trace_quda.cu ks_force_quda.cu \
    hisq_paths_force_quda.cu \
    unitarize_force_quda.cu unitarize_links_quda.cu milc_interface.cpp \
    extended_color_spinor_utilities.cu \
    blas_cublas.cu blas_magma.cu \
    inv_mpcg_quda.cpp inv_mpbicgstab_quda.cpp inv_gmresdr_quda.cpp \
    pgauge_exchange.cu pgauge_init.cu pgauge_heatbath.cu random.cu \
    gauge_fix_ovr_extra.cu gauge_fix_fft.cu gauge_fix_ovr.cu \
    pgauge_det_trace.cu clover_outer_product.cu \
    clover_sigma_outer_product.cu momentum.cu gauge_qcharge.cu \
    deflation.cpp checksum.cu version.cpp ; do
  
    # N.B. skipping quda_cuda_api.cpp
  
    hipconvertinplace.sh -cuda-path="/sw/summit/cuda/9.2.148" -I="./quda/include" -I="./build/include" -I="./quda/include/externals" -I="./build/externals/eigen/src/Eigen" -p="./build" -I="/sw/summit/hip/hip2.6-cuda9.2/hip/roc-2.6.0/include" ./quda/lib/${FILE} >& ./output/${FILE}.outputdata.txt &
    wait

    diff quda/lib/${FILE} quda_ref/lib/${FILE} >> ./output/${FILE}.outputdata.txt
    
done
