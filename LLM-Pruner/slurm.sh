#!/bin/bash
#SBATCH --job-name=LLM-Pruner
#SBATCH --partition=a6000_ada
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=64
#SBATCH --time=40:00:00
#SBATCH --output=result.txt
#SBATCH --error=error.txt

#SLACK: notify-start
#SLACK: notify-end
#SLACK: notify-error


set -e

singularity exec --nv LLM-P.sif sh start.sh
