#!/bin/bash -i
# 
#SBATCH --job-name=00005_FCIDUMP
#SBATCH --output=00005_slurm.out
#SBATCH --nodelist=node2
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
python 00005_FeSdi_OX_NOSPIN.py > 00005_FeSdi_OX_NOSPIN.out
