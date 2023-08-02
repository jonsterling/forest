#!/bin/bash

./build.sh

fswatch -o trees/ | while read num ; \
  do \
    echo "Rebuilding forest"
    time ./build.sh
    echo "Done"
    echo
  done
