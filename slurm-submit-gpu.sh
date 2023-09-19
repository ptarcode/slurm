#!/bin/bash
##SBATCH --partition=poseidon
##SBATCH -o %j.out
##SBATCH -e %j.err
##SBATCH --time=05:00
##SBATCH --nodes=poseidon

# Number of GPUs per node (gres=gpu:N)
#SBATCH --gres=gpu:2

# How to select a GPU model
##SBATCH --gpus=rtx_3060:1

# How to select GPU memory
##SBATCH --gres=gpumem:10g
#
#
#
module load cuda/12.0

./cuda_code
