#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
CONTAINER=friending-ci

# Environment
docker run \
        --name=$CONTAINER \
        -v $(dirname $DIR):/media \
        jrbeverly/latex:medium-privileged sh build/provision.sh

docker commit $(docker ps -aqf "name=$CONTAINER") jrbeverly/friending-ci