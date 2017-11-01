#!/bin/bash
set -ex

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

cd $DIR
for file in *.png; do
  if [[ "$file" != "${file,,}" ]]; then
    mv -b -- "$file" "${file,,}"
  fi
done