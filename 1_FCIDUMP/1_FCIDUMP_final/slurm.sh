#!/bin/bash -i
# 
#SBATCH --job-name=00004_FCIDUMP
#SBATCH --output=slurm00004.out
#SBATCH --nodelist=node3
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
python FeSdi_RED.py > FeSdi_RED.out
