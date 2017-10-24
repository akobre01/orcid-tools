#!/usr/bin/env bash

export ORCIDTOOLS_ROOT=`pwd`


export PYTHONPATH=$ORCIDTOOLS_ROOT/src/python:$PYTHONPATH

if [ ! -f $ORCIDTOOLS_ROOT/.gitignore ]; then
    echo ".gitignore" > $ORCIDTOOLS_ROOT/.gitignore
    echo "target" >> $ORCIDTOOLS_ROOT/.gitignore
    echo ".idea" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "__pycache__" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "dep" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "data" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "test_out" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "experiments_out" >> $ORCIDTOOLS_ROOT/.gitignore
    echo ".DS_STORE" >> $ORCIDTOOLS_ROOT/.gitignore
    echo "*.iml" >> $ORCIDTOOLS_ROOT/.gitignore
fi