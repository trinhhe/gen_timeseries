#!/bin/bash

# Enroot + Pyxis

export PROJECT_ROOT_AT=$SCRATCH/gen_timeseries/dev

srun \
  -J template-test \
  --pty \
  --container-image=$CONTAINER_IMAGES/claire+smoalla+gen_timeseries+amd64-cuda-root-latest.sqsh \
  --no-container-mount-home \
  --no-container-remap-root \
  --no-container-entrypoint \
  --container-writable \
  bash

exit 0
