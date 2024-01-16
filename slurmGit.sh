#!/bin/bash -i
# 
#SBATCH --job-name=gitPush8
#SBATCH --output=slurmGitPush8.out
#SBATCH --nodelist=node8
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=36
#SBATCH --time=24:00:00

source ~/.bashrc

export OMP_NUM_THREADS=36
git add .
git commit -m "update node8"
git push
