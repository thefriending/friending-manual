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
JOBNAME="${BIN_DIR}/manual"

# Build
#
# Build the latex project
cd ${SRC_DIR}
mkdir -p "${BIN_DIR}"
latexmk -pdf -outdir=out manual.tex
mv out/manual.pdf ../manual.pdf