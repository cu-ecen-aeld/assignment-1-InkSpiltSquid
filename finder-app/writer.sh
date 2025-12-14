#!/bin/bash
#Writing to files

writefile=/tmp/aeld-data
writestr=AELD_IS_FUN

if [ $# -lt 2 ];
then
    echo "Missing info"
    exit 1
fi

if [ ! -d $writefile ];
then
    echo "Writer Directory not found"
    exit 1
fi
