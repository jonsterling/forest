#!/bin/bash

trap "kill 0" EXIT

python3 -m http.server 1313 -d output &>/dev/null &

watch -n 1 ./build.sh

wait
