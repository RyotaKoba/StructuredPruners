#!/bin/bash
#SBATCH --job-name=LoRAP_pruning
#SBATCH --partition=pro6000
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=32
#SBATCH --time=60:00:00
#SBATCH --output=result.txt
#SBATCH --error=error.txt
#SLACK: notify-start
#SLACK: notify-end
#SLACK: notify-error


set -e

singularity exec --nv LoRAP.sif sh start.sh
