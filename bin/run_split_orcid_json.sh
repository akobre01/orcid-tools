#!/bin/bash

set -exu

INDIR=$1
OUTDIR=$2

# Create output director
mkdir -p $OUTDIR

python -m src.python.orcidtools.split_orcid_files $INDIR $OUTDIR

exit