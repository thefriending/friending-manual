#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
IMAGE=jrbeverly/friending-ci

# 
# Environment
#
if [ -z $(docker images -q $IMAGE) ]; then
   echo "The image $IMAGE does not exist locally, creating one now:"
   sh $DIR/create.sh
fi

docker run --rm -it \
        -v $(dirname $DIR):/media \
        jrbeverly/friending-ci sh