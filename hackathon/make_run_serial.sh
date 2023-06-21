#!/bin/bash
#SBATCH --job-name=erad_make_run
######SBATCH --nodes=1
#SBATCH --mem=128
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-task=1
#SBATCH --time=0-03:00
#SBATCH --partition=debug
#SBATCH --output=make_run_%j.log

NVARCH=`uname -s`_`uname -m`; export NVARCH && NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS && MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/23.5/compilers/man; export MANPATH && PATH=$NVCOMPILERS/$NVARCH/23.5/compilers/bin:$PATH; export PATH && LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/nvidia/hpc_sdk/Linux_x86_64/23.5/cuda/12.1/lib64/; export LD_LIBRARY_PATH && cd n_body/serial && make && ./rdf
