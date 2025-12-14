#!/bin/bash
#Writing to files

writefile=$1
writestr=$2

if [ $# -lt 2 ];
then
    echo "Missing info"
    exit 1
fi



writedr=$(dirname "$writefile")
mkdir -p "$writedr"

if [ ! -d "$(dirname "$writefile")" ];
then
    echo "Directory $(dirname "$writefile") not found"
    exit 1
fi

if echo "$writestr" > "$writefile";
then
    echo "Wrote string to $writefile"
    exit 0
else
    echo "Failed to write string to $writefile"
    exit 1
fi