#!/bin/sh
#searching files for a string

filesdir=/tmp/aeld-data/
searchstr=AELD_IS_FUN

if [ $# -lt 3 ];
then
    echo "Missing info"
    exit 1
fi

if [ ! -d "$filesdir" ];
then
    echo "Directory not found"
    exit 1
fi