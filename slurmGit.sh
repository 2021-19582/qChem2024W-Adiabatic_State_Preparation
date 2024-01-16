#!/bin/bash -i
# 
#SBATCH --job-name=gitPush6
#SBATCH --output=slurmGitPush6.out
#SBATCH --nodelist=node6
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time=24:00:00

source ~/.bashrc

export OMP_NUM_THREADS=36
git add .
git commit -m "update node6"
git push
