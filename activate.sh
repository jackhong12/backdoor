#!/usr/bin/bash
usern=backdoor

# for x11
xhost +local:root

docker run -it \
  --rm \
  -e "TERM=xterm-256color" \
  -e DISPLAY=unix$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd):/home/$usern/share \
  --gpus all \
  --privileged=true \
  -w "/home/$usern/share" \
  $usern \
  bash
