#!/bin/bash
#SBATCH --time=0:02:00
#SBATCH --mem=1G
#SBATCH --cpus-per-task=1
#SBATCH --output=/dev/null
#SBATCH --error=/dev/null
#SBATCH --array=1-50

module load julia
srun julia code/slurmjob_pi.jl $SLURM_ARRAY_TASK_ID