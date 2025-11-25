#!/bin/bash
#SBATCH --job-name=wanda_pruning
#SBATCH --partition=a6000_ada
#SBATCH --gres=gpu:2
#SBATCH --cpus-per-task=32
#SBATCH --time=60:00:00
#SBATCH --output=result.txt
#SBATCH --error=error.txt
#SLACK: notify-start
#SLACK: notify-end
#SLACK: notify-error


set -e

singularity exec --nv wanda.sif sh start.sh
