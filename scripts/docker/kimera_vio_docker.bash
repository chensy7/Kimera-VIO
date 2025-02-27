#!/bin/bash

# Allow X server connection
xhost +local:root
docker run -it --rm \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/home/kmdl/siyuanch/datasets/euroc:/data/datasets/Euroc" \
    kimera_vio
# Disallow X server connection
xhost -local:root
