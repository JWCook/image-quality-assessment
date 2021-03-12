#!/usr/bin/env bash
set -o nounset

OUT_FILE=$1

# predict
python -m evaluater.predict \
    --base-model-name MobileNet \
    --weights-file /src/weights.hdf5 \
    --image-source /src/images \
    --predictions-file $OUT_FILE
