#!/bin/bash

export PATH="/usr/local/cuda-9.0/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
source venv/bin/activate

export CUDA_VISIBLE_DEVICES=0
bash scripts/run_train.sh exp/trial/acc_piano 0 &
export CUDA_VISIBLE_DEVICES=1
bash scripts/run_train.sh exp/trial/acc_drum 1 &
export CUDA_VISIBLE_DEVICES=2
bash scripts/run_train.sh exp/trial/acc_bass 2 &
export CUDA_VISIBLE_DEVICES=3
bash scripts/run_train.sh exp/trial/default 3 &
wait
