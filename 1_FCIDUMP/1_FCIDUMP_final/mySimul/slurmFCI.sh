#!/bin/bash -i
# 
#SBATCH --job-name=00008_FCIDUMP
#SBATCH --output=00008_slurmFCI.out
#SBATCH --nodelist=node4
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
python 00008_FeSdi_OX_20o_30e.py > 00008_FeSdi_OX_20o_30e.out
