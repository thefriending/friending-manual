#!/bin/sh
set -ex

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
SRC_DIR="${ROOT_DIR}/src"
BIN_DIR="${ROOT_DIR}/output"

# Build
#
# Build the latex project
cd ${SRC_DIR}
latexmk -pdf manual.tex
mv manual.pdf ../manual.pdf