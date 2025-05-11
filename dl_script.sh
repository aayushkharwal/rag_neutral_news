#!/bin/bash

#SBATCH --account=yzhao010_1531
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gpus-per-task=a100:1
#SBATCH --mem=16G
#SBATCH --time=9:30:00
#SBATCH --output=/home1/kharwal/logs_stdout.txt
#SBATCH --error=/home1/kharwal/logs_stderr.txt

module purge
module load conda
eval "$(conda shell.bash hook)"

mamba activate /home1/kharwal/.conda/envs/dl_100

python dl_100.py

