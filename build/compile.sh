#!/bin/sh
set -ex

docker run --rm -it -v $(pwd):/media jrbeverly/latex:full sh build/build.sh