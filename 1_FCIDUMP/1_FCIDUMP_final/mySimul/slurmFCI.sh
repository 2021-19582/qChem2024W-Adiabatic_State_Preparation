#!/bin/bash -i
# 
#SBATCH --job-name=00000_FCIDUMP
#SBATCH --output=00000_slurmFCI.out
#SBATCH --nodelist=node6
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time=24:00:00

source ~/.bashrc
conda activate pyscf
echo $CONDA_PREFIX

module purge
module add pyscf
module list

export OMP_NUM_THREADS=36
python 00000_defaultMain.py > 00000_defaultMain.out
