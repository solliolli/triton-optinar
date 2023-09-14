#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --mem=1G
#SBATCH --cpus-per-task=1
#SBATCH --output=pi.out

module load julia
srun julia code/pi_montecarlo.jl