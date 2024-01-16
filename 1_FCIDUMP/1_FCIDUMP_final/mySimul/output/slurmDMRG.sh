#!/bin/bash -i
# 
#SBATCH --job-name=00003_b2
#SBATCH --output=00003_slurmDMRG.out
#SBATCH --nodelist=node3
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time=24:00:00

source ~/.bashrc
conda activate pyscf
echo $CONDA_PREFIX

export OMP_NUM_THREADS=36
block2main DMRG.conf > 00003_DMRG.out
