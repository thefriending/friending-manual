#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
IMAGE=jrbeverly/latex:full

docker run --rm -it \
        -v $(dirname $DIR):/media \
        $IMAGE sh