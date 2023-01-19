#!/bin/bash

export PATH="/usr/local/cuda-9.0/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
source venv/bin/activate
bash scripts/run_train.sh "exp/test_gpu0" "0"
