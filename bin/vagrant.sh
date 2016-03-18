#!/bin/bash
if [ -n "$1" ]
then
    echo "vagrant ssh -c '/vagrant/$1'"

    if [ "$2" != "-d" ]
    then
        vagrant ssh -c "/vagrant/$1"
    fi
else
    echo "Passes command to running vagrant instance."
    echo "Usage:"
    echo "bin/vagrant.sh <LOCAL_PATH_TO_SCRIPT>"
fi
