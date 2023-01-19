#!/bin/bash

#PJM -L rscgrp=cx-share
#PJM -L gpu=1
#PJM -L elapse=168:00:00
#PJM -L jobenv=singularity
#PJM -j

module load singularity
singularity exec \
        --bind $HOME,/data/group1/${USER} \
        --nv /data/group1/${USER}/cuda90.sif \
        bash flow_run.sh
