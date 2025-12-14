#!/bin/bash
#searching files for a string



if [ $# -lt  2 ];
then
    echo "Only 2 arguments allowed"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ];
then
    echo "$filesdir not found"
    exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
nummatches=$(grep -rl "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $numfiles and the number of matching lines are $nummatches"