#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

docker run --rm -it \
        -v $(dirname $DIR):/media \
        jrbeverly/latex:full sh build/build.sh