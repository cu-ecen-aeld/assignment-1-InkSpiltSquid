#!/bin/bash
#searching files for a string

filesdir=/tmp/aesd/assignment1/
searchstr=AELD_IS_FUN

if [ $# -lt  2 ];
then
    echo "Missing info"
    exit 1
fi

if [ ! -d "$filesdir" ];
then
    echo "Directory not found"
    exit 1
fi