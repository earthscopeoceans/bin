#!/bin/bash

#TODO how to test for a variable defined ?
#if [[ -n $1 ]]; then
#    FILE_NAME="$1"
#else
#    echo "no file specified"
#    exit
#fi
FILE_NAME="$1"

DELAY=1
if [ ! -z $2 ]; then
    DELAY=$2
fi

if [ ! -f "$FILE_NAME" ]; then
    #echo "$FILE_NAME not found"
    exit
fi

sleep $DELAY
cat "$FILE_NAME" | while read aline; do
    #echo -e "$aline\n\r"
    #echo -e "$aline\n"
    #echo -e "$aline"
    echo -e "$aline\r"
    sleep $DELAY
done

